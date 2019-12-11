
extension String {
    /// Prepends the string with `indentation` repeated `count`-times.
    func indented(_ count: Int = 1, indentation: String = "    ") -> String {
        let prefix = String(repeating: indentation, count: count)
        return prefix + self
    }

    /// Places the string in double qoutes and escapes the `\` character.
    func escaped() -> String {
        let escaped = self.replacingOccurrences(of: "\\", with: "\\\\")
        return "\"\(escaped)\""
    }
}


extension Collection where Iterator.Element == String {
    /// Prepends each element with `indentation` repeated `count`-times.
    func indented(_ count: Int = 1, indentation: String = "    ") -> [Self.Element] {
        return self.map { $0.indented(count, indentation: indentation) }
    }
}


extension KeyedDecodingContainer: CustomDebugStringConvertible {
    /// Visualization of the container as a sequence of coding path keys separated with slashes.
    public var debugDescription: String {
        let keys = codingPath.map { $0.stringValue }
        return keys.joined(separator: "/")
    }
}
