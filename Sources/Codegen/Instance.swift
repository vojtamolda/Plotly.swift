
protocol Instantiable: Definable {
    var name: String { get }
    var constant: String? { get }

    func argument() -> String
}


/// Instantiation of a variable or property with an associated Swift data type.
struct Instance<Type>: Instantiable, Equatable where Type: SwiftType {
    let name: String
    var type: Type
    let constant: String?
    let optional: Bool
    var access: String? = "public"
    var documentation: [String] { type.documentation }

    /// Creates instance of the specified data type accessible by identifier.
    init(named name: String, of type: Type, constant: String? = nil, optional: Bool = true) {
        self.name = Swift.name!.camelCased(name)
        self.type = type
        self.constant = constant
        self.optional = optional
    }

    /// Returns a chunk of Swift code that use the instance as a function argument.
    func argument() -> String {
        return "\(name): \(type.name)\(optional ? "?" : "")"
    }

    /// Returns lines of Swift code that define the instance.
    func definition() -> [String] {
        var lines = [String]()
        lines += type.definition()
        lines += documentation
        let access = (self.access != nil) ? (self.access! + " ") : ""
        if let const = self.constant {
            lines += ["\(access)let \(argument()) = \(const)"]
        } else {
            lines += ["\(access)var \(argument())"]
        }
        return lines
    }

    /// Checks for equality by comparing identifiers and data types of the two `Instance`s.
    static func == (lhs: Instance, rhs: Instance) -> Bool {
        let identifierEqual = lhs.name == rhs.name
        // FIXME: Compare dataTypes
        // let dataTypeEqual = lhs.dataType == rhs.dataType
        return identifierEqual
    }
}


/// Formated comment that creates a section that is useful for navigating around larger files.
struct Mark: Definable {
    var label: String
    var separator = true

    /// Returns lines of Swift code that define the instance.
    func definition() -> [String] {
        ["", "// MARK: \(separator ? "-" : "") \(label)"]
    }
}
