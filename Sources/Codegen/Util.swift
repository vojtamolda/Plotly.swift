import Foundation


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

    /// Wraps the string with newlines so to not exceed the `width` characters  and formats the text as documentation markup.
    public func documentation(columns: Int = 100) -> [String] {
        if self == "" { return [] }

        var text = [String]()
        let scanner = Scanner(string: self)

        if var firstSentence = scanner.scanUpToString(". ") {
            if let dot = scanner.scanString(". ") { firstSentence += dot }
            text += ["/// \(firstSentence)"]
        }
        if scanner.isAtEnd { return text }
        text += ["///"]

        var line = "///"
        while let word = scanner.scanUpToCharacters(from: CharacterSet.whitespacesAndNewlines) {
            if line.count + word.count + 1 > columns {
                text += [line]
                line = "///"
            }
            line += " \(word)"
        }
        text += [line + scanner.string.suffix(from: scanner.currentIndex)]

        return text
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
