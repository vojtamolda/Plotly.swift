
protocol Instantiable: Definable {
    var name: String { get }
    var schemaName: String { get }
    var constant: String? { get set }
    var optional: Bool { get set }
    var access: Swift.Access { get set }
    var argument: String { get }
}


/// Instantiation of a variable or property with an associated Swift data type and Plotly schema type.
class Instance<Type>: Instantiable where Type: SwiftType {
    var type: Type
    let schema: Type.Origin

    let name: String
    var schemaName: String { schema.name }
    var constant: String? =  nil
    var optional: Bool = true
    var access: Swift.Access = .public

    var argument: String { "\(name): \(type.name)\(optional ? "?" : "")" }
    var documentation: [String] { schema.description?.documentation() ?? [] }
    var definition: [String] {
        if let const = self.constant {
            return ["\(access)let \(argument) = \(const)"]
        } else {
            return ["\(access)var \(argument)"]
        }
    }

    init(of type: Type, named name: String) {
        self.type = type
        self.schema = type.schema

        self.name = Swift.name!.camelCased(name)
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
