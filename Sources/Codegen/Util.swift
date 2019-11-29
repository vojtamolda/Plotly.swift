
extension KeyedDecodingContainer: CustomDebugStringConvertible {
    public var debugDescription: String {
        let keys = codingPath.map { $0.stringValue }
        return keys.joined(separator: "/")
    }
}
