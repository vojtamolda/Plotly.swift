
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

    /// Compares two string by checking whether one contains the other lowercased or vice versa.
    func almostEqual(to other: String) -> Bool {
        let (lowerSelf, lowerOther) = (self.lowercased(), other.lowercased())
        return lowerSelf.contains(lowerOther) || lowerOther.contains(lowerSelf)
    }
}


extension Array where Element == String {
    /// Prepends each element with `indentation` repeated `count`-times.
    func indented(_ count: Int = 1, indentation: String = "    ") -> [Self.Element] {
        return map { $0.indented(count, indentation: indentation) }
    }

    /// Prepends all but the first line with `indentation` repeated `count`-times.
    func hanginglyIndented(_ count: Int = 1, indentation: String = "    ") -> [Self.Element] {
        if count <= 1 { return self }
        return self.prefix(1) + self.suffix(from: 1).map { $0.indented(count, indentation: indentation) }
    }
}


extension Array where Element == Definable {
    /// Finds and returns the first `Instance` object with the specified name.
    func firstInstance(named name: String) -> Instance? {
        let instances = compactMap { $0 as? Instance }
        return instances.first { $0.name == name }
    }

    /// Removes `Instance`s matching the specified names from the collection.
    mutating func removeAllInstances(named names: [String]) {
        removeAll { element in
            if let instance = element as? Instance { return names.contains(instance.name) }
            return false
        }
    }
}


extension KeyedDecodingContainer: CustomDebugStringConvertible {
    /// Visualization of the container as a sequence of coding path keys separated with slashes.
    public var debugDescription: String {
        let keys = codingPath.map { $0.stringValue }
        return keys.joined(separator: "/")
    }
}
