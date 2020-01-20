
protocol Instantiable: Definable {
    var name: String { get }
    var array: Bool { get }
    var schemaName: String { get }
    var constant: String? { get set }
    var optional: Bool { get set }
    var access: Swift.Access { get set }

    var path: String { get }
    var argument: String { get }
}


/// Instantiation of a variable or property with an associated Swift data type and Plotly schema type.
class Instance<Type>: Instantiable where Type: SwiftType {
    var type: Type
    let schema: Type.Origin
    let parent: Swift.Object?

    let name: String
    var array: Bool
    var schemaName: String { schema.name }
    var constant: String? =  nil
    var optional: Bool = true
    var access: Swift.Access = .public

    var path: String { (parent?.path ?? "") + "." + name }
    var argument: String {
        var dataType = (type.parent?.name == self.parent?.name) ? type.name : "Shared.\(type.name)"
        dataType = self.array ? "[\(dataType)]" : dataType
        dataType = self.optional ? "\(dataType)?" : dataType
        return "\(name): \(dataType)"
    }
    var documentation: [String] {
        var link = schema.path
        link = link.replacingOccurrences(of: "/", with: "-")
        link = link.replacingOccurrences(of: "traces-", with: "")
        link = link.replacingOccurrences(of: "attributes-", with: "")
        link = link.replacingOccurrences(of: "layoutAttributes-", with: "")
        let reference = [
            "///",
            "/// # Plotly Reference",
            "/// [JavaScript](https://plot.ly/javascript/reference/#\(link)) |",
            "/// [Python](https://plot.ly/python/reference/#\(link)) |",
            "/// [R](https://plot.ly/r/reference/#\(link))",

        ]
        let documentation = schema.description?.documentation() ?? []
        return documentation + reference
    }
    var definition: [String] {
        if let const = self.constant {
            return ["\(access)let \(argument) = \(const)"]
        } else {
            return ["\(access)var \(argument)"]
        }
    }

    init(of type: Type, named name: String, array: Bool = false) {
        self.type = type
        self.schema = type.schema
        self.parent = type.parent

        self.name = Swift.name!.camelCased(name)
        self.array = array
    }

    func define(as context: Swift.Context) -> [String] {
        if let definable = type as? Definable {
            return definable.define(as: .inlined) + documentation + definition
        } else {
            return documentation + definition
        }
    }
}


/// Formated comment that creates a section that is useful for navigating around larger files.
struct Mark: Definable {
    var label: String
    var separator = true

    var documentation: [String] = []
    var definition: [String] { ["", "// MARK: \(separator ? "-" : "") \(label)"] }
}
