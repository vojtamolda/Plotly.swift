
/// Arrays containing entry ordering for each level of the Plotly schema hierarchy
typealias Order = [String: [String]]

extension Order {
    /// Sorts entries in the same order as Plotly schema.
    func sorted<T>(entries: inout [(identifier: String, entry: T)], at codingPath: [CodingKey]) {
        let decodingPath = codingPath.map { $0.stringValue }.joined(separator: "/")
        if let order = self[decodingPath] {
            entries.sort { (item1, item2) in
                order.firstIndex(of: item1.identifier)! < order.firstIndex(of: item2.identifier)!
            }
        }
    }
}
