
extension String {
    func camelCased() -> String {
        return prefix(1).capitalized + dropFirst()
    }

    func indented(_ count: Int = 1, indentation: String = "    ") -> String {
        let prefix = String(repeating: indentation, count: count)
        return prefix + self
    }
}


extension Collection where Iterator.Element == String {
    func indented(_ count: Int = 1, indentation: String = "    ") -> [Self.Element] {
        return self.map { $0.indented(count, indentation: indentation) }
    }
}


extension KeyedDecodingContainer: CustomDebugStringConvertible {
    public var debugDescription: String {
        let keys = codingPath.map { $0.stringValue }
        return keys.joined(separator: "/")
    }
}


