
/// Instantiation of a Swift variable with an associated data type.
struct Instance: Definable {
    let identifier: String
    let dataType: SwiftDataType
    let const: String?
    let optional: Bool
    var description: [String] { dataType.documentation }
    var access: String? = "public"

    /// Creates instance of the specified data type accessible by identifier.
    init(identifier: String, dataType: SwiftDataType, const: String? = nil, optional: Bool = true) {
        self.identifier = Swift.name!.camelCased(identifier)
        self.dataType = dataType
        self.const = const
        self.optional = optional
    }

    /// Returns a chunk of Swift code that use the instance as a function argument.
    func argument() -> String {
        return "\(identifier): \(dataType.type)\(optional ? "?" : "")"
    }

    /// Returns lines of Swift code that define the instance.
    func definition() -> [String] {
        var lines = [String]()
        lines += dataType.definition()
        lines += description
        let access = (self.access != nil) ? (self.access! + " ") : ""
        if let const = self.const {
            lines += ["\(access)let \(argument()) = \(const)"]
        } else {
            lines += ["\(access)var \(argument())"]
        }
        return lines
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
