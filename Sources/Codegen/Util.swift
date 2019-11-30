
extension String {
    func camelCased() -> String {
        return prefix(1).capitalized + dropFirst()
    }
}


extension KeyedDecodingContainer: CustomDebugStringConvertible {
    public var debugDescription: String {
        let keys = codingPath.map { $0.stringValue }
        return keys.joined(separator: "/")
    }
}
