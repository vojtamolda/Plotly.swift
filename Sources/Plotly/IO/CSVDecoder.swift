import Foundation


/// Simple in-memory CSV data representation decoder.
///
/// Compared to other formats, CSV representation is very limited. It doesn't support decoding of nested values or direct decoding
/// of primitive values. Unless the type to be decoded has a dedicated `init(from: Decoder)` method, it is only possible to
/// decode an array of the type.
///
/// Here's an example that decodes an array of simple structures:
/// ```
/// struct Person: Decodable {
///   var id: Int
///   var name: String
/// }
///
/// let csv = """
/// id,name
/// 1,"Thomas"
/// "2",Gina
/// """.data(encoding: .utf8)
///
/// let decoder = CSVDecoder()
/// let people = try? decoder.decode([Person].self, from: csv, encoding: .utf8)
/// ```
///
/// - Bug:
///   - Only the comma `,` separator character is supported.
///   - First line is always assumed to be the header consisting of column names.
public struct CSVDecoder {
    /// Initializes the decoder.
    public init() { }

    /// Decodes a top-level value of the given type from the provided CSV representation.
    ///
    /// CSV format doesn't support decoding of nested values or direct decoding of primitive values. Using the compiler synthesized
    /// conformance to `Decodable` protocol, it is only possible to decode an array of this type from the CSV data.
    ///
    /// - Parameters:
    ///   - type: Type of the value to decode.
    ///   - data: CSV data to decode from.
    ///   - encoding: Encoding used to convert raw CSV data to strings.
    ///
    /// - Returns: A value of the requested type.
    ///
    /// - Throws:
    ///   A member of the `CSVDecodingError` if values requested from the payload are corrupted, or if the given data is not
    ///    valid CSV.
    public func decode<T>(_ type: T.Type, from data: Foundation.Data, encoding: String.Encoding)
    throws -> T where T : Decodable {
        let decoding = try Decoder(from: data, encoding: encoding)
        return try type.init(from: decoding)
    }
}


/// An error that occurs during the decoding of a value from the CSV representation.
public enum CSVDecodingError: Swift.Error {
    /// An indication that a a non-terminated quote was found on the specified `line`.
    case unmatchedQuotes(line: String)

    /// An indication that a column with the given `name` exists more than once in the CSV data.
    case duplicatedColumn(name: String)
    
    /// An indication that a value of the given type could not be decoded because it did not match the type found in the cell content.
    case typeMismatch(expectedType: Any.Type, codingPath: [CodingKey], content: Substring)
    
    /// An indication that the row with index represented by `key` doesn't exist in the CSV data.
    case rowNotFound(index: Int)
    
    /// An indication that column matching the `key` doesn't exist in row with the specified index.
    case columnNotFound(rowIndex: Int, key: CodingKey)

    /// An indication that the requested decoding operation isn't supported by CSV data format.
    case unsupportedOperation(codingPath: [CodingKey])
    
    /// An indication that the requested nested decoding operation isn't supported by CSV data format.
    case unsupportedNestingOperation(codingPath: [CodingKey])

    /// An indication that the requested decoding of a simple type isn't supported by CSV data format.
    case unsupportedSingleValueDecoding(codingPath: [CodingKey])
}


// MARK: - Decoding Infrastructure & Containers

/// In-memory decoder of CSV data representation.
///
/// Table container can return either keyed or unkeyed nested containers. The nested containers can be then used to decode the
/// individual cells. Other operations, i.e. decoding of simple values, are not supported by the CSV data representation.
fileprivate struct Decoder: Swift.Decoder {
    /// Mapping of column names to cell indices within a row.
    let header: [String: Int]
    /// Content of the decoded data separated into 2D grid of table cells.
    let cells: ArraySlice<[Substring]>

    var codingPath: [CodingKey] = []
    var userInfo: [CodingUserInfoKey: Any] = [:]

    /// Character used to separates cells from a line.
    static let separator: Character = ","
    
    func container<Key>(keyedBy type: Key.Type) throws -> KeyedDecodingContainer<Key>
    where Key: CodingKey {
        switch codingPath.count {
        case 1:
            return KeyedDecodingContainer(RowKeyedContainer<Key>(decoder: self))
        default:
            throw CSVDecodingError.unsupportedNestingOperation(codingPath: codingPath)
        }
    }

    func unkeyedContainer() throws -> UnkeyedDecodingContainer {
        switch codingPath.count {
        case 0:
            return TableContainer(decoder: self, currentIndex: cells.startIndex)
        case 1:
            return RowUnkeyedContainer(decoder: self)
        default:
            throw CSVDecodingError.unsupportedNestingOperation(codingPath: codingPath)
        }
    }
    
    func singleValueContainer() throws -> SingleValueDecodingContainer {
        throw CSVDecodingError.unsupportedSingleValueDecoding(codingPath: codingPath)
    }
    
    /// Creates CSV decoder for parsing of `data` using the specified string encoding.
    init(from data: Foundation.Data, encoding: String.Encoding) throws {
        let content = String(data: data, encoding: encoding)!
        let lines = content.split(whereSeparator: \.isNewline)
        
        let table = try lines.map { line throws -> [Substring] in
            let chunks = line.split(separator: Self.separator,
                                    omittingEmptySubsequences: false)
            
            var quotedCell = [Substring]()
            let row = try chunks.reduce([]) { (rowSoFar, chunk) throws -> [Substring] in
                let (startingQuote, endingQuote) = (chunk.hasPrefix("\""), chunk.hasSuffix("\""))
                if startingQuote && endingQuote {
                    return rowSoFar + [chunk.dropFirst().dropLast()]
                } else if startingQuote {
                    if !quotedCell.isEmpty {
                        throw CSVDecodingError.unmatchedQuotes(line: String(line))
                    }
                    quotedCell.append(chunk.dropFirst())
                    return rowSoFar
                } else if endingQuote {
                    if quotedCell.isEmpty {
                        throw CSVDecodingError.unmatchedQuotes(line: String(line))
                    }
                    quotedCell.append(chunk.dropFirst())
                    let cell = quotedCell.joined(separator: String(Self.separator))
                    defer { quotedCell.removeAll() }
                    return rowSoFar + [Substring(cell)]
                } else {
                    if !quotedCell.isEmpty {
                        quotedCell.append(chunk)
                        return rowSoFar
                    }
                    return rowSoFar + [chunk]
                }
            }
            if !quotedCell.isEmpty {
                throw CSVDecodingError.unmatchedQuotes(line: String(line))
            }
            
            return row
        }

        let columnNames = table.first!.map(String.init)
        header = try Dictionary(
            zip(columnNames, columnNames.indices),
            uniquingKeysWith: { (idx0, idx1) in
                throw CSVDecodingError.duplicatedColumn(name: columnNames[idx0])
            }
        )
        cells = table.dropFirst()
        codingPath = []
        userInfo = [:]
    }

}


/// Container representing rows of CSV data.
///
/// Table container can return either keyed or unkeyed nested containers. The nested containers can be then used to decode the
/// individual cells. Other operations, i.e. decoding of simple values, are not supported by the CSV data representation.
fileprivate struct TableContainer: UnkeyedDecodingContainer {
    /// Top level decoder of the CSV data assumed to have empty `codingPath`.
    let decoder: Decoder
    
    var codingPath: [CodingKey] { decoder.codingPath }
    var currentIndex: Int
    var count: Int? { decoder.cells.count }
    var isAtEnd: Bool { !decoder.cells.indices.contains(currentIndex) }
    
    mutating func nestedContainer<NestedKey>(keyedBy type: NestedKey.Type) throws
    -> KeyedDecodingContainer<NestedKey> where NestedKey : CodingKey {
        defer { currentIndex += 1 }
        var nestedDecoder = decoder
        nestedDecoder.codingPath.append(IndexKey(intValue: currentIndex))
        return KeyedDecodingContainer(RowKeyedContainer<NestedKey>(decoder: nestedDecoder))
    }
    
    mutating func nestedUnkeyedContainer() throws -> UnkeyedDecodingContainer {
        defer { currentIndex += 1 }
        var nestedDecoder = decoder
        nestedDecoder.codingPath.append(IndexKey(intValue: currentIndex))
        return RowUnkeyedContainer(decoder: nestedDecoder)
    }
    
    mutating func superDecoder() throws -> Swift.Decoder {
        return decoder
    }
            
    mutating func decodeNil() throws -> Bool {
        throw CSVDecodingError.unsupportedSingleValueDecoding(codingPath: codingPath)
    }
    
    mutating func decode(_ type: Bool.Type) throws -> Bool {
        throw CSVDecodingError.unsupportedSingleValueDecoding(codingPath: codingPath)
    }
    
    mutating func decode(_ type: String.Type) throws -> String {
        throw CSVDecodingError.unsupportedSingleValueDecoding(codingPath: codingPath)
    }
    
    mutating func decode(_ type: Double.Type) throws -> Double {
        throw CSVDecodingError.unsupportedSingleValueDecoding(codingPath: codingPath)
    }
    
    mutating func decode(_ type: Float.Type) throws -> Float {
        throw CSVDecodingError.unsupportedSingleValueDecoding(codingPath: codingPath)
    }
    
    mutating func decode(_ type: Int.Type) throws -> Int {
        throw CSVDecodingError.unsupportedSingleValueDecoding(codingPath: codingPath)
    }
    
    mutating func decode(_ type: Int8.Type) throws -> Int8 {
        throw CSVDecodingError.unsupportedSingleValueDecoding(codingPath: codingPath)
    }
    
    mutating func decode(_ type: Int16.Type) throws -> Int16 {
        throw CSVDecodingError.unsupportedSingleValueDecoding(codingPath: codingPath)
    }
    
    mutating func decode(_ type: Int32.Type) throws -> Int32 {
        throw CSVDecodingError.unsupportedSingleValueDecoding(codingPath: codingPath)
    }
    
    mutating func decode(_ type: Int64.Type) throws -> Int64 {
        throw CSVDecodingError.unsupportedSingleValueDecoding(codingPath: codingPath)
    }
    
    mutating func decode(_ type: UInt.Type) throws -> UInt {
        throw CSVDecodingError.unsupportedSingleValueDecoding(codingPath: codingPath)
    }
    
    mutating func decode(_ type: UInt8.Type) throws -> UInt8 {
        throw CSVDecodingError.unsupportedSingleValueDecoding(codingPath: codingPath)
    }
    
    mutating func decode(_ type: UInt16.Type) throws -> UInt16 {
        throw CSVDecodingError.unsupportedSingleValueDecoding(codingPath: codingPath)
    }
    
    mutating func decode(_ type: UInt32.Type) throws -> UInt32 {
        throw CSVDecodingError.unsupportedSingleValueDecoding(codingPath: codingPath)
    }
    
    mutating func decode(_ type: UInt64.Type) throws -> UInt64 {
        throw CSVDecodingError.unsupportedSingleValueDecoding(codingPath: codingPath)
    }
    
    mutating func decode<T>(_ type: T.Type) throws -> T where T : Decodable {
        defer { currentIndex += 1 }
        var nestedDecoder = decoder
        nestedDecoder.codingPath.append(IndexKey(intValue: currentIndex))
        return try T.init(from: nestedDecoder)
    }
}


/// Container representing cells of the CSV data keyed by the column name.
///
/// Row container can decode simple values associated with each column name. Nested containers deeper than this level are not
/// supported by the CSV data representation.
fileprivate struct RowKeyedContainer<Key: CodingKey> : KeyedDecodingContainerProtocol {
    /// Top level decoder of the CSV data with last component of the `codingPath` assumed to be the row index.
    let decoder: Decoder
    /// Index of the row the container is decoding.
    var rowIndex: Int { codingPath.last!.intValue! }
    /// Content of the cells the container is decoding.
    var row: [Substring] { decoder.cells[rowIndex] }


    var codingPath: [CodingKey] { decoder.codingPath }
    var allKeys: [Key] { decoder.header.keys.map { Key.init(stringValue: String($0))! } }
    
    /// Returns content of the cell associated with `key`.
    private func cell(for key: Key) throws -> Substring {
        guard decoder.cells.indices.contains(rowIndex) else {
            throw CSVDecodingError.rowNotFound(index: rowIndex)
        }
        guard let cellIndex = decoder.header[key.stringValue] else {
            throw CSVDecodingError.columnNotFound(rowIndex: rowIndex, key: key)
        }
        guard row.indices.contains(cellIndex) else {
            throw CSVDecodingError.columnNotFound(rowIndex: rowIndex, key: key)
        }
        return decoder.cells[rowIndex][cellIndex]
    }
    
    func contains(_ key: Key) -> Bool {
        let cellIndex = decoder.header[key.stringValue]
        let headerContainsKey = cellIndex != nil
        if !headerContainsKey { return false }

        let rowLongEnough = row.indices.contains(cellIndex!)
        if !rowLongEnough { return false }

        return true
    }
    
    func decodeNil(forKey key: Key) throws -> Bool {
        let content = try cell(for: key)
        return ["null", "nil", ""].contains(content.lowercased())
    }
    
    func decode(_ type: Bool.Type, forKey key: Key) throws -> Bool {
        let content = try cell(for: key)
        guard let decoded = Bool(String(content)) else {
            throw CSVDecodingError.typeMismatch(expectedType: Bool.self,
                                                codingPath: codingPath, content: content)
        }
        return decoded
    }
    
    func decode(_ type: String.Type, forKey key: Key) throws -> String {
        let content = try cell(for: key)
        return String(content)
    }
    
    func decode(_ type: Double.Type, forKey key: Key) throws -> Double {
        let content = try cell(for: key)
        guard let decoded = Double(content) else {
            throw CSVDecodingError.typeMismatch(expectedType: Double.self,
                                                codingPath: codingPath, content: content)
        }
        return decoded
    }
    
    func decode(_ type: Float.Type, forKey key: Key) throws -> Float {
        let content = try cell(for: key)
        guard let decoded = Float(content) else {
            throw CSVDecodingError.typeMismatch(expectedType: Float.self,
                                                codingPath: codingPath, content: content)

        }
        return decoded
    }
    
    func decode(_ type: Int.Type, forKey key: Key) throws -> Int {
        let content = try cell(for: key)
        guard let decoded = Int(content) else {
            throw CSVDecodingError.typeMismatch(expectedType: Int.self,
                                                codingPath: codingPath, content: content)
        }
        return decoded
    }
    
    func decode(_ type: Int8.Type, forKey key: Key) throws -> Int8 {
        let content = try cell(for: key)
        guard let decoded = Int8(content) else {
            throw CSVDecodingError.typeMismatch(expectedType: Int8.self,
                                                codingPath: codingPath, content: content)
        }
        return decoded
    }
    
    func decode(_ type: Int16.Type, forKey key: Key) throws -> Int16 {
        let content = try cell(for: key)
        guard let decoded = Int16(content) else {
            throw CSVDecodingError.typeMismatch(expectedType: Int16.self,
                                                codingPath: codingPath, content: content)
        }
        return decoded
    }
    
    func decode(_ type: Int32.Type, forKey key: Key) throws -> Int32 {
        let content = try cell(for: key)
        guard let decoded = Int32(content) else {
            throw CSVDecodingError.typeMismatch(expectedType: Int32.self,
                                                codingPath: codingPath, content: content)
        }
        return decoded
    }
    
    func decode(_ type: Int64.Type, forKey key: Key) throws -> Int64 {
        let content = try cell(for: key)
        guard let decoded = Int64(content) else {
            throw CSVDecodingError.typeMismatch(expectedType: Int64.self,
                                                codingPath: codingPath, content: content)
        }
        return decoded
    }
    
    func decode(_ type: UInt.Type, forKey key: Key) throws -> UInt {
        let content = try cell(for: key)
        guard let decoded = UInt(content) else {
            throw CSVDecodingError.typeMismatch(expectedType: UInt.self,
                                                codingPath: codingPath, content: content)
        }
        return decoded
    }
    
    func decode(_ type: UInt8.Type, forKey key: Key) throws -> UInt8 {
        let content = try cell(for: key)
        guard let decoded = UInt8(content) else {
            throw CSVDecodingError.typeMismatch(expectedType: UInt8.self,
                                                codingPath: codingPath, content: content)
        }
        return decoded
    }
    
    func decode(_ type: UInt16.Type, forKey key: Key) throws -> UInt16 {
        let content = try cell(for: key)
        guard let decoded = UInt16(content) else {
            throw CSVDecodingError.typeMismatch(expectedType: UInt16.self,
                                                codingPath: codingPath, content: content)
        }
        return decoded
    }
    
    func decode(_ type: UInt32.Type, forKey key: Key) throws -> UInt32 {
        let content = try cell(for: key)
        guard let decoded = UInt32(content) else {
            throw CSVDecodingError.typeMismatch(expectedType: UInt32.self,
                                                codingPath: codingPath, content: content)
        }
        return decoded
    }
    
    func decode(_ type: UInt64.Type, forKey key: Key) throws -> UInt64 {
        let content = try cell(for: key)
        guard let decoded = UInt64(content) else {
            throw CSVDecodingError.typeMismatch(expectedType: UInt64.self,
                                                codingPath: codingPath, content: content)
        }
        return decoded
    }
    
    func decode<T>(_ type: T.Type, forKey key: Key) throws -> T where T : Decodable {
        throw CSVDecodingError.unsupportedNestingOperation(codingPath: codingPath)
    }

    func nestedContainer<NestedKey>(keyedBy type: NestedKey.Type, forKey key: Key)
    throws -> KeyedDecodingContainer<NestedKey> {
         throw CSVDecodingError.unsupportedNestingOperation(codingPath: codingPath)
    }
    
    func nestedUnkeyedContainer(forKey key: Key) throws -> UnkeyedDecodingContainer {
        throw CSVDecodingError.unsupportedNestingOperation(codingPath: codingPath)
    }
    
    func superDecoder() throws -> Swift.Decoder {
        return decoder
    }
    
    func superDecoder(forKey key: Key) throws -> Swift.Decoder {
        var superDecoder = decoder
        superDecoder.codingPath.append(key)
        return superDecoder
    }
}


/// Container representing cells of the CSV data keyed by the column indices.
///
/// Row container can decode simple values associated with each column index. Nested containers deeper than this level are not
/// supported by the CSV data representation.
fileprivate struct RowUnkeyedContainer: UnkeyedDecodingContainer {
    /// Top level decoder of the CSV data with last component of the `codingPath` assumed to be the row index.
    let decoder: Decoder
    /// Index of the row the container is decoding.
    var rowIndex: Int { codingPath.last!.intValue! }
    /// Content of the cells the container is decoding.
    var row: [Substring] { decoder.cells[rowIndex] }

    var codingPath: [CodingKey] { decoder.codingPath}
    var currentIndex: Int = 0
    var count: Int? { row.count }
    var isAtEnd: Bool { row.indices.contains(currentIndex) }
    
    /// Returns content of the `cellIndex`-th cell.
    func cell(for cellIndex: Int) throws -> Substring  {
        guard decoder.cells.indices.contains(rowIndex) else {
            throw CSVDecodingError.rowNotFound(index: rowIndex)
        }
        guard row.indices.contains(cellIndex) else {
            throw CSVDecodingError.columnNotFound(rowIndex: rowIndex, key: IndexKey(intValue: cellIndex))
        }
        return row[cellIndex]
    }
    
    mutating func nestedContainer<NestedKey>(keyedBy type: NestedKey.Type) throws
    -> KeyedDecodingContainer<NestedKey> where NestedKey : CodingKey {
        throw CSVDecodingError.unsupportedNestingOperation(codingPath: codingPath)
    }
    
    mutating func nestedUnkeyedContainer() throws -> UnkeyedDecodingContainer {
        throw CSVDecodingError.unsupportedNestingOperation(codingPath: codingPath)
    }
    
    mutating func superDecoder() throws -> Swift.Decoder {
        return decoder
    }
            
    mutating func decodeNil() throws -> Bool {
        defer { currentIndex += 1 }
        let content = try cell(for: currentIndex)
        return ["nil", "null", ""].contains(content.lowercased())
    }
    
    mutating func decode(_ type: Bool.Type) throws -> Bool {
        defer { currentIndex += 1 }
        let content = try cell(for: currentIndex)
        guard let decoded = Bool(String(content)) else {
            throw CSVDecodingError.typeMismatch(expectedType: Bool.self,
                                                codingPath: codingPath, content: content)
        }
        return decoded
    }
    
    mutating func decode(_ type: String.Type) throws -> String {
        defer { currentIndex += 1 }
        let content = try cell(for: currentIndex)
        return String(content)
    }
    
    mutating func decode(_ type: Double.Type) throws -> Double {
        defer { currentIndex += 1 }
        let content = try cell(for: currentIndex)
        guard let decoded = Double(content) else {
            throw CSVDecodingError.typeMismatch(expectedType: Double.self,
                                                codingPath: codingPath, content: content)
        }
        return decoded
    }
    
    mutating func decode(_ type: Float.Type) throws -> Float {
        defer { currentIndex += 1 }
        let content = try cell(for: currentIndex)
        guard let decoded = Float(content) else {
            throw CSVDecodingError.typeMismatch(expectedType: Float.self,
                                                codingPath: codingPath, content: content)
        }
        return decoded
    }
    
    mutating func decode(_ type: Int.Type) throws -> Int {
        defer { currentIndex += 1 }
        let content = try cell(for: currentIndex)
        guard let decoded = Int(content) else {
            throw CSVDecodingError.typeMismatch(expectedType: Int.self,
                                                codingPath: codingPath, content: content)
        }
        return decoded
    }
    
    mutating func decode(_ type: Int8.Type) throws -> Int8 {
        defer { currentIndex += 1 }
        let content = try cell(for: currentIndex)
        guard let decoded = Int8(content) else {
            throw CSVDecodingError.typeMismatch(expectedType: Int8.self,
                                                codingPath: codingPath, content: content)
        }
        return decoded
    }
    
    mutating func decode(_ type: Int16.Type) throws -> Int16 {
        defer { currentIndex += 1 }
        let content = try cell(for: currentIndex)
        guard let decoded = Int16(content) else {
            throw CSVDecodingError.typeMismatch(expectedType: Int16.self,
                                                codingPath: codingPath, content: content)
        }
        return decoded
    }
    
    mutating func decode(_ type: Int32.Type) throws -> Int32 {
        defer { currentIndex += 1 }
        let content = try cell(for: currentIndex)
        guard let decoded = Int32(content) else {
            throw CSVDecodingError.typeMismatch(expectedType: Int32.self,
                                                codingPath: codingPath, content: content)
        }
        return decoded
    }
    
    mutating func decode(_ type: Int64.Type) throws -> Int64 {
        defer { currentIndex += 1 }
        let content = try cell(for: currentIndex)
        guard let decoded = Int64(content) else {
            throw CSVDecodingError.typeMismatch(expectedType: Int64.self,
                                                codingPath: codingPath, content: content)
        }
        return decoded
    }
    
    mutating func decode(_ type: UInt.Type) throws -> UInt {
        defer { currentIndex += 1 }
        let content = try cell(for: currentIndex)
        guard let decoded = UInt(content) else {
            throw CSVDecodingError.typeMismatch(expectedType: UInt.self,
                                                codingPath: codingPath, content: content)
        }
        return decoded
    }
    
    mutating func decode(_ type: UInt8.Type) throws -> UInt8 {
        defer { currentIndex += 1 }
        let content = try cell(for: currentIndex)
        guard let decoded = UInt8(content) else {
            throw CSVDecodingError.typeMismatch(expectedType: UInt8.self,
                                                codingPath: codingPath, content: content)
        }
        return decoded
    }
    
    mutating func decode(_ type: UInt16.Type) throws -> UInt16 {
        defer { currentIndex += 1 }
        let content = try cell(for: currentIndex)
        guard let decoded = UInt16(content) else {
            throw CSVDecodingError.typeMismatch(expectedType: UInt16.self,
                                                codingPath: codingPath, content: content)
        }
        return decoded
    }
    
    mutating func decode(_ type: UInt32.Type) throws -> UInt32 {
        defer { currentIndex += 1 }
        let content = try cell(for: currentIndex)
        guard let decoded = UInt32(content) else {
            throw CSVDecodingError.typeMismatch(expectedType: UInt32.self,
                                                codingPath: codingPath, content: content)
        }
        return decoded
    }
    
    mutating func decode(_ type: UInt64.Type) throws -> UInt64 {
        defer { currentIndex += 1 }
        let content = try cell(for: currentIndex)
        guard let decoded = UInt64(content) else {
            throw CSVDecodingError.typeMismatch(expectedType: UInt64.self,
                                                codingPath: codingPath, content: content)
        }
        return decoded
    }
    
    mutating func decode<T>(_ type: T.Type) throws -> T where T : Decodable {
        throw CSVDecodingError.unsupportedNestingOperation(codingPath: codingPath)
    }
}


// MARK: - Utilities

/// Coding key representing an integer index.
struct IndexKey: CodingKey {
    let intValue: Int?
    let stringValue: String

    init(intValue int: Int) {
        intValue = int
        stringValue = ""
    }

    init?(stringValue: String) {
        return nil
    }
}
