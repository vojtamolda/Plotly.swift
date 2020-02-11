
/// Instantiation of a variable or property with an associated Swift data type and origin Plotly schema type.
class Instance: Definable {
    let name: String
    var array: Bool
    var constant: String? =  nil
    var optional: Bool = true
    var access: Swift.Access = .public

    var type: SwiftType
    let origin: SchemaType
    let parent: Swift.Object?

    var path: String { (parent?.path ?? "") + "." + name }

    var argument: String {
        var dataType = (type.parent?.name == self.parent?.name) ? type.name : "Shared.\(type.name)"
        dataType = self.array ? "[\(dataType)]" : dataType
        dataType = self.optional ? "\(dataType)?" : dataType
        return "\(name): \(dataType)"
    }

    var documentation: Markup { Markup(parse: origin.description) }

    var definition: [String] {
        if let const = self.constant {
            return ["\(access)let \(argument) = \(const)"]
        } else {
            return ["\(access)var \(argument)"]
        }
    }

    init(of type: SwiftType, named name: String, array: Bool = false, origin: SchemaType? = nil) {
        self.name = Swift.name!.camelCased(name)
        self.array = array

        self.type = type
        self.origin = origin ?? type.origin
        self.parent = type.parent
    }

    func shareable(as other: Instance) -> Bool {
        let nameEqual = self.name == other.name
        let constantEqual = self.constant == other.constant
        let optionalEqual = self.optional == other.optional
        let accessEqual = self.access == other.access
        return nameEqual && constantEqual && optionalEqual && accessEqual
    }

    func define(as context: Swift.Context) -> [String] {
        if let definable = type as? Definable {
            return definable.define(as: .inlined) + documentation.text() + definition
        } else {
            return documentation.text() + definition
        }
    }
}


/// Formated comment that creates a section that is useful for navigating around larger files.
struct Mark: Definable {
    var label: String
    var separator = true

    var documentation = Markup()
    var definition: [String] { ["", "// MARK: \(separator ? "-" : "") \(label)"] }
}
