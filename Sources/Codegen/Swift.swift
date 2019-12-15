
/// Container for Swift data types that map to corresponding values in the Plotly JSON schema hierarchy.
struct Swift {

    /// Storage of Plotly mangledtogethernames translated to Swift camelCaseNames for each identifier in the schema.
    static var name: Name? = nil

    /// Instantioation of a Swift variable with an associated data type.
    struct Instance {
        let identifier: String
        let dataType: SwiftDataType
        let const: String?
        let optional: Bool
        var description: String { dataType.description }
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
            if description != "" {
                lines += ["/// \(description)"]
            }
            let access = (self.access != nil) ? (self.access! + " ") : ""
            if let const = self.const {
                lines += ["\(access)let \(argument()) = \(const)"]
            } else {
                lines += ["\(access)var \(argument())"]
            }
            return lines
        }
    }

    // MARK: - Swift Data Types

    /// Data type that maps Plotly `data_array` to a numerical array in Swift.
    struct DataArray: SwiftDataType {
        let type: String = "[Double]"
        let identifier: String = "[Double]"
        let schema: SchemaDataType?
    }

    /// Data type that maps Plotly `enumerated` to Swift `enum`.
    struct Enumerated: SwiftDataType {
        let type: String
        let schema: SchemaDataType?

        var access: String? = "public"
        var protocols: [String] = ["String", "Encodable"]

        var values: [(String, String?)] = []

        init(type: String, schema: Schema.Attribute.Enumerated) {
            self.schema = schema
            // Workaround for enum called Type that collides with Swift built-in Type
            self.type = Swift.name!.pascalCased(type)

            // Workaround for numerical values of Marker Symbols
            if schema.decodingPath.hasSuffix("marker/symbol") {
                let onlyStrings = schema.values.filter {
                    if case Schema.Primitive.string = $0 { return true } else { return false }
                }
                values = onlyStrings.map { sanitized($0) }
                return
            }
            // Workaround for numerical values of Geo Resolution
            if schema.decodingPath.hasSuffix("geo/resolution") {
                protocols[0] = "Int"
                values = schema.values.map { primitive -> (String, String?) in
                    guard case let Schema.Primitive.int(int) = primitive else {
                        fatalError("Unsupported Geo Resolution value in '\(schema.decodingPath)'")
                    }
                    return ("oneOver\(int)M", "\(int)")
                }
                return
            }
            // Workaround for meaningless numerical values of SurfaceAxis
            if schema.decodingPath.hasSuffix("surfaceaxis") {
                protocols[0] = "Int"
                values = [("none", "-1"), ("x", "0"), ("y", "1"), ("z", "2")]
                return
            }

            values = schema.values.map { sanitized($0) }
        }

        /// Transforms Plotly schema primitives to valid Swift case labels and raw values.
        func sanitized(_ primitive: Schema.Primitive) -> (String, String?) {
            switch primitive {
            case .bool(let bool):
                let string = "\(bool)"
                let sanitized = Swift.name!.enumerated[string]!
                return (sanitized, string.escaped())
            case .string(let string):
                let sanitized = Swift.name!.enumerated[string]!
                return (sanitized == string) ? (sanitized, nil) : (sanitized, string.escaped())
            default:
                fatalError("Invalid enum case in '\(self.schema!.decodingPath)'")
            }
        }

        /// Returns lines of Swift code that fully define the enum.
        func definition() -> [String] {
            var lines = [String]()
            let access = (self.access != nil) ? (self.access! + " ") : ""
            let protocols = (!self.protocols.isEmpty) ? (": " + self.protocols.joined(separator: ", ")) : ""
            lines += ["/// \(description)"]
            lines += ["\(access)enum \(type)\(protocols) {"]
            for (sanitized, dirty) in values {
                let rawValue = (dirty != nil) ? " = \(dirty!)" : ""
                lines += ["case \(sanitized)\(rawValue)"].indented()
            }
            lines += ["}"]
            return lines
        }
    }

    /// Plotly `boolean` data type represented as a Swift `Bool`.
    struct Boolean: SwiftDataType {
        let type: String = "Bool"
        let schema: SchemaDataType?
    }

    /// Plotly `number` data type represented as a Swift `Double`.
    struct Number: SwiftDataType {
        let type: String = "Double"
        let schema: SchemaDataType?
    }

    /// Plotly `integer` data type represented as a Swift `Int`.
    struct Integer: SwiftDataType {
        let type: String = "Int"
        let schema: SchemaDataType?
    }

    /// Plotly `string` data type represented as a Swift `String`.
    /// - Note: Appended underscore prevents collision with the Swift built-in type.
    struct String_: SwiftDataType {
        let type: String = "String"
        let schema: SchemaDataType?
    }

    /// Plotly `color` data type is manually re-implemented in Swift.
    struct Color: SwiftDataType {
        let type: String = "Color"
        let schema: SchemaDataType?
    }

    /// Plotly `colorlist` data type is manually re-implemented in Swift.
    struct ColorList: SwiftDataType {
        let type: String = "ColorList"
        let schema: SchemaDataType?
    }

    /// Plotly `colorscale` data type is manually re-implemented in Swift.
    /// - Note: `Layout.ColorScale` is renamed to `Layout.ColorMap` to prevent conflicts.
    struct ColorScale: SwiftDataType {
        let type: String = "ColorScale"
        let schema: SchemaDataType?
    }

    /// Plotly `Angle` data type represented as a Swift `Double`.
    struct Angle: SwiftDataType {
        let type: String = "Angle"
        let schema: SchemaDataType?
    }

    /// Plotly `subplotid` data type is manually re-implemented in Swift.
    struct SubPlotID: SwiftDataType {
        let type: String = "SubPlotID"
        let schema: SchemaDataType?
    }

    /// Data type that maps Plotly `flaglist` to `OptionSet` from the Swift standard library.
    struct FlagList: SwiftDataType {
        let type: String
        let schema: SchemaDataType?

        var access: String? = "public"
        var flags: [(String, String)] = []

        init(type: String, schema: Schema.Attribute.FlagList) {
            self.type = Swift.name!.pascalCased(type)
            self.schema = schema

            flags = schema.flags.map { sanitized($0) }
            if let extras = schema.extras {
                flags += extras.map { sanitized(String(describing: $0)) }
            }
        }

        /// Transforms Plotly schema flag values to valid Swift identifiers and corresponding raw values.
        func sanitized(_ string: String) -> (String, String) {
            let sanitized = Swift.name!.flaglist[string]!
            return (sanitized, string)
        }

        /// Returns lines of Swift code that fully define the OptionSet struct.
        func definition() -> [String] {
            let access = (self.access != nil) ? (self.access! + " ") : ""
            var lines = [String]()
            lines += ["/// \(description)"]
            lines += ["\(access)struct \(type): OptionSet, Encodable {"]
            lines += ["\(access)let rawValue: Int"].indented()
            lines += [""]
            for (i, (san, _) ) in flags.enumerated() {
                lines += ["\(access)static let \(san) = \(type)(rawValue: 1 << \(i))"].indented()
            }
            lines += [""]
            lines += ["\(access)init(rawValue: Int) { self.rawValue = rawValue }"].indented()
            lines += [""]
            lines += ["\(access)func encode(to encoder: Encoder) throws {"].indented()
            lines += ["var options = [String]()"].indented(2)
            for (i, (_, str)) in flags.enumerated() {
                let str = str.escaped()
                lines += ["if (self.rawValue & 1 << \(i)) != 0 { options += [\(str)] }"].indented(2)
            }
            lines += ["var container = encoder.singleValueContainer()"].indented(2)
            lines += ["try container.encode(options.joined(separator: \"+\"))"].indented(2)
            lines += ["}"].indented()
            lines += ["}"]
            return lines
        }
    }

    struct Anything: SwiftDataType {
        let type: String = "Anything"
        let schema: SchemaDataType?
    }

    struct InfoArray: SwiftDataType {
        let type: String = "InfoArray"
        let schema: SchemaDataType?
    }

    /// Data type that maps hierarchical Plotly `object` to Swift `struct`.
    struct Struct: SwiftDataType {
        let type: String
        var description: String = ""
        let schema: SchemaDataType? = nil

        var access: String? = "public"
        var protocols: [String] = ["Encodable"]

        var members: [Instance]
        var primitives: [String: Schema.Primitive]

        init(identifier: String, entries: Schema.Entries) {
            self.type = Swift.name!.pascalCased(identifier)

            members = []
            primitives = [:]
            for (identifier, entry) in entries.entries {
                switch entry {
                case .primitive(let primitive):
                    self.primitives[identifier] = primitive
                case .attribute(let attribute):
                    let attributeType = createDataType(identifier: identifier, from: attribute)
                    members += [Instance(identifier: identifier, dataType: attributeType)]
                case .entries(let entries):
                    let nestedStruct = Self(identifier: identifier, entries: entries)
                    members += [Instance(identifier: identifier, dataType: nestedStruct)]
                }
            }

            if let description = primitives["description"] {
                self.description = String(describing: description)
            }
        }

        /// Returns lines of Swift code that fully define the struct and all of it's nested members.
        func definition() -> [String] {
            var lines = [String]()
            if description != "" {
                lines += ["/// \(description)"]
            }
            let access = (self.access != nil) ? (self.access! + " ") : ""
            let protocols = (!self.protocols.isEmpty) ? (": " + self.protocols.joined(separator: ", ")) : ""
            lines += ["\(access)struct \(type)\(protocols) {"]
            for instance in members {
                lines += instance.dataType.definition().indented()
                lines += instance.definition().indented()
                lines += [""]
            }
            let variables = members.filter { $0.const == nil}
            let arguments = variables.map { $0.argument() + " = nil" }.joined(separator: ", ")
            lines += ["\(access)init(\(arguments)) {"].indented()
            lines += variables.map { "self.\($0.identifier) = \($0.identifier)" }.indented(2)
            lines += ["}"].indented()
            lines += ["}"]
            return lines
        }
    }

    /// Constructs a Swift data type corresponding to an `attribute` from the Plotly schema.
    static func createDataType(identifier: String, from attribute: Schema.Attribute) -> SwiftDataType {
        switch attribute {
        case .dataArray(let dataArray):
            return DataArray(schema: dataArray)
        case .enumerated(let enumerated):
            return Enumerated(type: identifier, schema: enumerated)
        case .boolean(let boolean):
            return Boolean(schema: boolean)
        case .number(let number):
            return Number(schema: number)
        case .integer(let integer):
            return Integer(schema: integer)
        case .string(let string):
            return String_(schema: string)
        case .color(let color):
            return Color(schema: color)
        case .colorList(let colorList):
            return ColorList(schema: colorList)
        case .colorScale(let colorScale):
            return ColorScale(schema: colorScale)
        case .angle(let angle):
            return Angle(schema: angle)
        case .subPlotID(let subPlotID):
            return SubPlotID(schema: subPlotID)
        case .flagList(let flagList):
            return FlagList(type: identifier, schema: flagList)
        case .anything(let anything):
            return Anything(schema: anything)
        case .infoArray(let infoArray):
            return InfoArray(schema: infoArray)
        }
    }
}

// MARK: - Swift Data Type Protocol

/// A data type that can be used as an argument when generating Swift code from Plotly schema.
protocol SwiftDataType {
    var type: String { get }
    var schema: SchemaDataType? { get }
    var description: String { get }

    /// Returns lines of Swift code that fully define the data type including the nested members.
    func definition() -> [String]
}

/// Extension with default implementations of commonly shared functionality.
extension SwiftDataType {
    /// Documentation of the data type extracted from Plotly schema.
    var description: String { schema?.description ?? "" }

    /// Returns empty lines which is useful for Swift built-in types like Int, String or [Double].
    func definition() -> [String] {
        return []
    }
}
