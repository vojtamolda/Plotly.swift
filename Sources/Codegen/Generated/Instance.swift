
/// Instantiation of a generated variable or property.
///
/// It keeps a reference to the associated Swift data type and also the Plotly schema type
/// it originates from.
class Instance: Definable {
    /// Name of the instance.
    var name: String
    /// Flag indicating whether instance is an array of `type`s.
    var array: Bool
    /// Access level of the instance.
    var access: Access = .public
    /// Flag expressing whether the instance is an optional of `type`.
    var optional: Bool = true
    /// Flag signaling if the instance is static.
    var stationary: Bool = false
    /// Switch between `var` and `let`.
    var constant: Bool = false
    /// Value the instance is initialized to.
    var initialization: Initialization = "nil"

    /// Additional description specific to this instance. Appended to `origin.description`.
    var description: String = ""
    /// Indication whether this instance is excluded from initializers and coding keys.
    var exclude = false

    /// Swift type of this instance.
    var type: GeneratedType
    /// Source data type decoded from the schema.
    let origin: PredefinedType
    /// Object where this instance is contained in.
    var parent: Generated.Object?

    /// Globally unique identifier if the instance (i.e. XAxis.Title.text).
    var identifier: String {
        (parent == nil) ? "\(name)" : "\(parent!.identifier).\(name)"
    }

    var documentation: Markup {
        return Markup(parse: (origin.description ?? "") + description)
    }

    var definition: [String] {
        let stat = self.stationary ? "static " : ""
        let varlet = self.constant ? "let " : "var "
        return ["\(access)\(stat)\(varlet)\(argument(inContextOf: parent))"]
    }

    /// Creates an instance of a `type` accessible under the specified `name`.
    init(of type: GeneratedType, named name: String, array: Bool = false, origin: PredefinedType? = nil) {
        self.name = Schema.name!.camelCased(name)
        self.array = array

        self.type = type
        self.origin = origin ?? type.origin
        self.parent = type.parent

        workarounds()
    }

    /// Post-processing doing some ad-hoc improvements.
    private func workarounds() {
        switch name {
        case "color":
            if type.name == "Coloring" { name = "coloring" }
        default:
            break
        }
    }
    
    /// Generates chunk of the Swift code representing the instance passed as an argument to a function.
    func argument(inContextOf object: Generated.Object? = nil) -> String {
        let inParentContext = (type.parent?.identifier == object?.identifier)
        
        var dataType = inParentContext ? type.name : type.identifier
        dataType = self.array ? "[\(dataType)]" : dataType
        dataType = self.optional ? "\(dataType)?" : dataType
        return "\(name): \(dataType)\(initialization)"
    }

    /// Checks for share-ability by comparing the key fields to `other` instance.
    func shareable(as other: Instance) -> Bool {
        let nameEqual = self.name == other.name
        let constantEqual = self.constant == other.constant
        let optionalEqual = self.optional == other.optional
        let accessEqual = self.access == other.access
        return nameEqual && constantEqual && optionalEqual && accessEqual
    }

    /// Outputs the definition of the instance in the specified context.
    func define(as denotation: Denotation) -> [String] {
        if let definable = type as? Definable {
            return definable.define(as: .inlined) + documentation.text() + definition
        } else {
            return documentation.text() + definition
        }
    }
}


/// Formatted comment that creates a section in IDEs like XCode or VS Code.
///
/// Marks are  particularly useful for navigating around very long files.
struct Mark: Definable {
    var label: String
    var separator = true

    var documentation = Markup()
    var definition: [String] { ["", "// MARK: \(separator ? "- " : "")\(label)"] }
}


/// Initialization of a variable instance.
enum Initialization: CustomStringConvertible, ExpressibleByStringLiteral {
    case constant(_ value: String)
    case computed(_ code: String)

    init(stringLiteral: String) {
        self = .constant(stringLiteral)
    }
    
    var description: String {
        switch self {
        case .constant(let value):
            return " = \(value)"
        case .computed(let code):
            return " { \(code) }"
        }
    }
}
