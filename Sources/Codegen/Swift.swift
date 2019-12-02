
/// Container for Swift data types that map to corresponding values in the Plotly JSON schema hierarchy.
struct Swift {

    // MARK: - Swift Data Types

    /// Data type that maps Plotly `data_array` to a numerical array in Swift.
    struct DataArray: SwiftDataType {
        let type: String = "[Double]"
        let identifier: String
        let schema: SchemaDataType?
    }

    /// Data type that maps Plotly `enumerated` to Swift `enum`.
    struct Enumerated: SwiftDataType {
        let type: String
        let identifier: String
        let schema: SchemaDataType?
        var associatedType = "String"
        var values: [String]

        init(identifier: String, schema: Schema.Attribute.Enumerated) {
            self.identifier = identifier
            self.schema = schema
            values = []

            // Workaround for enum called Type that collides with Swift built-in Type
            type = identifier != "type" ? identifier.capitalized : "AxisType"

            // Workaround for numerical values of Marker Symbols
            if schema.path.hasSuffix("marker/symbol") && !schema.path.contains("scatter3d") {
                associatedType = "Int"
                let even = stride(from: 0, to: schema.values.endIndex, by: 2)
                let pairs = even.map { (schema.values[$0], schema.values[$0.advanced(by: 1)]) }
                values = pairs.map { (intPrimitive, stringPrimitive) -> String in
                    guard case let Schema.Primitive.int(int) = intPrimitive else {
                        fatalError("Unsupported Marker Symbol value in '\(schema.path)'")
                    }
                    guard case let Schema.Primitive.string(string) = stringPrimitive else {
                        fatalError("Unsupported Marker Symbol string in '\(schema.path)'")
                    }
                    return "\(sanitize(string)) = \(int)"
                }
                return
            }
            // Workaround for numerical values of Geo Resolution
            if schema.path.hasSuffix("geo/resolution") {
                associatedType = "Int"
                values = schema.values.map { primitive -> String in
                    guard case let Schema.Primitive.int(int) = primitive else {
                        fatalError("Unsupported Geo Resolution value in '\(schema.path)'")
                    }
                    return "oneOver\(int)M = \(int)"
                }
                return
            }
            // Workaround for meaningless numerical values of SurfaceAxis
            if schema.path.hasSuffix("surfaceaxis") {
                associatedType = "Int"
                values = ["none = -1", "x = 0", "y = 1", "z = 2"]
                return
            }

            values = schema.values.map { sanitize($0) }
        }

        /// Transforms Plotly schema primitives to valid Swift case labels.
        func sanitize(_ primitive: Schema.Primitive) -> String {
            switch primitive {
            case .bool(let bool):
                return bool ? "yes" : "no"
            case .string(let string):
                switch string {
                case "":
                    return "none"
                case " ":
                    return "none"
                case "-":
                    return "auto"
                case "/^x([2-9]|[1-9][0-9]+)?$/":
                    // FIXME: Figure out what to do with this mess.
                    return "xxx"
                case "/^y([2-9]|[1-9][0-9]+)?$/":
                    // FIXME: Figure out what to do with this mess.
                    return "yyy"
                default:
                    return sanitize(string)
                }
            default:
                fatalError("Invalid enum case in '\(self.schema!.path)'")
            }
        }

        /// Removes characters that are illegal in Swift case labels.
        func sanitize(_ string: String) -> String {
            var retval = string.replacingOccurrences(of: "+", with: "")
            retval = retval.replacingOccurrences(of: "-", with: "")
            retval = retval.replacingOccurrences(of: " ", with: "")
            return retval
        }

        /// Returns lines of Swift code that fully define the enum.
        func definition() -> [String] {
            var lines = [String]()
            lines += ["/// \(description)"]
            lines += ["enum \(type): \(associatedType), Encodable {"]
            for value in values {
                lines += ["case \(value)"].indented()
            }
            lines += ["}"]
            return lines
        }
    }

    /// Plotly `boolean` data type represented as a Swift `Bool`.
    struct Boolean: SwiftDataType {
        let type: String = "Bool"
        let identifier: String
        let schema: SchemaDataType?
    }

    /// Plotly `number` data type represented as a Swift `Double`.
    struct Number: SwiftDataType {
        let type: String = "Double"
        let identifier: String
        let schema: SchemaDataType?
    }

    /// Plotly `integer` data type represented as a Swift `Int`.
    struct Integer: SwiftDataType {
        let type: String = "Int"
        let identifier: String
        let schema: SchemaDataType?
    }

    /// Plotly `string` data type represented as a Swift `String`.
    /// - Note: Appended underscore prevents collision with the Swift built-in type.
    struct String_: SwiftDataType {
        let type: String = "String"
        let identifier: String
        let schema: SchemaDataType?
    }

    struct Color: SwiftDataType {
        let type: String = "Color"
        let identifier: String
        let schema: SchemaDataType?
    }

    struct ColorList: SwiftDataType {
        let type: String = "ColorList"
        let identifier: String
        let schema: SchemaDataType?
    }

    struct ColorScale: SwiftDataType {
        let type: String = "ColorScale"
        let identifier: String
        let schema: SchemaDataType?
    }

    /// Plotly `Angle` data type represented as a Swift `Double`.
    struct Angle: SwiftDataType {
        let type: String = "Angle"
        let identifier: String
        let schema: SchemaDataType?
    }

    struct SubplotID: SwiftDataType {
        let type: String = "SubplotID"
        let identifier: String
        let schema: SchemaDataType?
    }

    /// Data type that maps Plotly `flaglist` to `OptionSet` from the Swift standard library.
    struct FlagList: SwiftDataType {
        let type: String
        let identifier: String
        let schema: SchemaDataType?

        init(identifier: String, schema: Schema.Attribute.FlagList) {
            self.type = identifier.capitalized
            self.identifier = identifier
            self.schema = schema
        }

        /// Returns lines of Swift code that fully define the OptionSet struct.
        func definition() -> [String] {
            var lines = [String]()
            lines += ["/// \(description)"]
            lines += ["struct \(type): OptionSet, Encodable {"]
            lines += ["let rawValue: Int"].indented()
            lines += [""]
            for (i, flag) in (schema as! Schema.Attribute.FlagList).flags.enumerated() {
                lines += ["static let \(flag) = \(type)(rawValue: 1 << \(i))"].indented()
            }
            lines += [""]
            lines += ["init(rawValue: Int) { self.rawValue = rawValue }"].indented()
            lines += [""]
            lines += ["func encode(to encoder: Encoder) throws {"].indented()
            lines += ["var options = [String]()"].indented(2)
            for (i, flag) in (schema as! Schema.Attribute.FlagList).flags.enumerated() {
                lines += ["if (self.rawValue & 1 << \(i)) != 0 { options += [\"\(flag)\"] }"].indented(2)
            }
            lines += ["var container = encoder.singleValueContainer()"].indented(2)
            lines += ["try container.encode(options.joined(separator: \"+\"))"].indented(2)
            lines += ["}"].indented()
            lines += ["}"]
            return lines
        }
    }

    /// - Note: Appended underscore prevents collision with the Swift built-in type.
    struct Any_: SwiftDataType {
        let type: String = "Anything"
        let identifier: String
        let schema: SchemaDataType?
    }

    struct InfoArray: SwiftDataType {
        let type: String = "InfoArray"
        let identifier: String
        let schema: SchemaDataType?
    }

    /// Data type that maps hierarchical Plotly `object` to Swift `struct`.
    struct Struct: SwiftDataType {
        let type: String
        let identifier: String
        var description: String = ""
        let schema: SchemaDataType? = nil

        let entries: [String: Schema.Entry]
        var members: [String: SwiftDataType]
        var primitives: [String: Schema.Primitive]

        init(identifier: String, entries: [String: Schema.Entry]) {
            self.type = identifier.capitalized
            self.identifier = identifier
            if let entry = entries["description"] {
                if case let Schema.Entry.primitive(primitive) = entry {
                    description = String(describing: primitive)
                }
            }

            self.entries = entries
            self.primitives = [:]
            self.members = [:]

            for (identifier, entry) in entries {
                switch entry {
                case .primitive(let primitive):
                    self.primitives[identifier] = primitive
                case .attribute(let attribute):
                    let datatype = createDataType(identifier: identifier, from: attribute)
                    members[identifier] = datatype
                case .entries(let entries):
                    let datatype = Self(identifier: identifier, entries: entries)
                    members[identifier] = datatype
                }
            }
        }

        /// Returns lines of Swift code that fully define the struct and all of it's nested members.
        func definition() -> [String] {
            var lines = [String]()
            lines += ["/// \(description)"]
            lines += ["struct \(self.type): Encodable {"]
            for (identifier, datatype) in members {
                lines += datatype.definition().indented()
                lines += datatype.instance(withIdentifier: identifier).indented()
                lines += [""]
            }
            lines += ["}"]
            return lines
        }
    }

    /// Constructs a Swift data type corresponding to an `attribute` from the Plotly schema.
    static func createDataType(identifier: String, from attribute: Schema.Attribute) -> SwiftDataType {
        switch attribute {
        case .dataArray(let dataArray):
            return DataArray(identifier: identifier, schema: dataArray)
        case .enumerated(let enumerated):
            return Enumerated(identifier: identifier, schema: enumerated)
        case .boolean(let boolean):
            return Boolean(identifier: identifier, schema: boolean)
        case .number(let number):
            return Number(identifier: identifier, schema: number)
        case .integer(let integer):
            return Integer(identifier: identifier, schema: integer)
        case .string(let string):
            return String_(identifier: identifier, schema: string)
        case .color(let color):
            return Color(identifier: identifier, schema: color)
        case .colorList(let colorList):
            return ColorList(identifier: identifier, schema: colorList)
        case .colorScale(let colorScale):
            return ColorScale(identifier: identifier, schema: colorScale)
        case .angle(let angle):
            return Angle(identifier: identifier, schema: angle)
        case .subplotID(let subplotID):
            return SubplotID(identifier: identifier, schema: subplotID)
        case .flagList(let flagList):
            return FlagList(identifier: identifier, schema: flagList)
        case .any(let any):
            return Any_(identifier: identifier, schema: any)
        case .infoArray(let infoArray):
            return InfoArray(identifier: identifier, schema: infoArray)
        }
    }

}

// MARK: - Swift Data Type Protocol

/// A data type that can be used as an argument when generating Swift code from Plotly schema.
protocol SwiftDataType {
    var type: String { get }
    var schema: SchemaDataType? { get }
    var identifier: String { get }
    var description: String { get }

    /// Returns a chunk of Swift code that use the data type as a function argument.
    func argument(withIdentifier: String) -> String

    /// Returns lines of Swift code that create an instance of the data type.
    func instance(withIdentifier: String) -> [String]

    /// Returns lines of Swift code that fully define the data type including the nested members.
    func definition() -> [String]
}

/// Extension with default implementations of commonly shared functionality.
extension SwiftDataType {
    /// Documentation of the data type extracted from Plotly schema.
    var description: String { schema?.description ?? "" }

    /// Returns a chunk of Swift code that use the data type as a function argument.
    func argument(withIdentifier identifier: String) -> String {
        return "\(identifier): \(type)"
    }

    /// Returns lines of Swift code that create an instance of the data type.
    func instance(withIdentifier identifier: String) -> [String] {
        var lines = [String]()
        lines += ["/// \(description)"]
        lines += ["var \(argument(withIdentifier: identifier))?"]
        return lines
    }

    /// Returns lines of Swift code that fully define the data type.
    func definition() -> [String] {
        return []
    }
}
