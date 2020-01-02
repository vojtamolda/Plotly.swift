
protocol Instantiable: Definable {
    var name: String { get }
    var codingName: String { get }
    var constant: String? { get }
    var optional: Bool { get }
    var access: Swift.Access { get }

    var argument: String { get }
}


/// Instantiation of a variable or property with an associated Swift data type.
struct Instance<Type>: Instantiable where Type: SwiftType {
    var type: Type
    let name: String
    let codingName: String
    let constant: String?
    let optional: Bool
    var access: Swift.Access = .public

    /// Lines of Swift code that define the `Instance`.
    var definition: [String] {
        var lines = [String]()
        if let sharedType = type as? Definable {
            lines += sharedType.define(as: .inlined)
        } else {
            lines += type.documentation
        }
        if let const = self.constant {
            lines += ["\(access)let \(argument) = \(const)"]
        } else {
            lines += ["\(access)var \(argument)"]
        }
        return lines
    }
    /// Chunk of Swift code that use the instance as a function argument.
    var argument: String { "\(name): \(type.name)\(optional ? "?" : "")" }


    /// Creates instance of the specified data type accessible by identifier.
    init(named name: String, of type: Type, constant: String? = nil, optional: Bool = true) {
        self.name = Swift.name!.camelCased(name)
        self.codingName = name
        self.type = type
        self.constant = constant
        self.optional = optional
    }
}


/// Formated comment that creates a section that is useful for navigating around larger files.
struct Mark: Definable {
    var label: String
    var separator = true
    var definition: [String] { ["", "// MARK: \(separator ? "-" : "") \(label)"] }
}
