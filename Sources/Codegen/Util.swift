
extension Collection where Iterator.Element == CodingKey {
    func joined(separator: String) -> String {
        let keys = self.map { $0.stringValue }
        return keys.joined(separator: separator)
    }
}
