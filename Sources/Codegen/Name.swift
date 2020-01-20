
/// Dictionary containing a translated identifier for each object of the Plotly schema hierarchy
struct Name: Decodable {
    var object: [String: String]
    let attribute: [String: String]
    let primitive: [String: String]

    let enumerated: [String: String]
    let flaglist: [String: String]

    /// Returns `identifier` translated from Plotly schema mangledtogether to Swift camelCased convention.
    func camelCased(_ identifier: String) -> String {
        if let camelCased = self.primitive[identifier] {
            return camelCased
        } else if let camelCased = self.attribute[identifier] {
            return camelCased
        } else if let pascalCased = self.object[identifier] {
            let camelCased = pascalCased.prefix(1).lowercased() + pascalCased.dropFirst()
            return camelCased
        } else {
            print("Warning: No camelCased name found for '\(identifier)'.")
            return identifier
        }
    }

    /// Returns `identifier` translated from Plotly schema mangledtogether to Swift PascalCased convention.
    func pascalCased(_ identifier: String) -> String {
        if let pascalCased = self.object[identifier] {
            return pascalCased
        } else {
            print("Warning: No PascalCased name found for '\(identifier)'.")
            return identifier
        }
    }
}
