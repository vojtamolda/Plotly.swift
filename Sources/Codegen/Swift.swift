
/// Container for Swift data types that map to corresponding values in the Plotly JSON schema hierarchy.
struct Swift {
    /// Storage of Plotly mangledtogethernames translated to Swift camelCaseNames for each identifier in the schema.
    static var name: Name? = nil

    // MARK: - Swift Data Types

    /// Data type that maps Plotly `data_array` to a numerical array in Swift.
    struct DataArray: SwiftDataType {
        let type: String = "[Double]"
        let identifier: String = "[Double]"
        let schema: SchemaDataType?
    }

    /// Data type that maps Plotly `enumerated` to Swift `enum`.
    struct Enumerated: SwiftComplexDataType {
        let type: String
        let schema: SchemaDataType?

        let access: String = "public"
        var protocols: [String] = ["String", "Encodable"]
        var references: [String] = []
        static var existing: [Enumerated] = []

        struct Case: Equatable {
            let label: String
            let rawValue: String?
        }
        var cases: [Case] = []

        init(type: String, schema: SchemaDataType) {
            let schema = schema as! Schema.Attribute.Enumerated
            self.schema = schema
            // Workaround for enum called Type that collides with Swift built-in Type
            self.type = Swift.name!.pascalCased(type)

            // Workaround for numerical values of Marker Symbols
            if schema.decodingPath.hasSuffix("marker/symbol") {
                let onlyStrings = schema.values.filter {
                    if case Schema.Primitive.string = $0 { return true } else { return false }
                }
                cases = onlyStrings.map { sanitized($0) }
                return
            }
            // Workaround for numerical values of Geo Resolution
            if schema.decodingPath.hasSuffix("geo/resolution") {
                protocols[0] = "Int"
                cases = schema.values.map { primitive -> Case in
                    guard case let Schema.Primitive.int(int) = primitive else {
                        fatalError("Unsupported Geo Resolution value in '\(schema.decodingPath)'")
                    }
                    return Case(label: "oneOver\(int)M", rawValue: "\(int)")
                }
                return
            }
            // Improvement of meaningless numerical values of SurfaceAxis
            if schema.decodingPath.hasSuffix("surfaceaxis") {
                protocols[0] = "Int"
                cases = [Case(label: "none", rawValue: "-1"), Case(label: "x", rawValue: "0"),
                         Case(label: "y", rawValue: "1"), Case(label: "z", rawValue: "2")]
                return
            }

            cases = schema.values.map { sanitized($0) }
        }

        /// Transforms Plotly schema primitives to valid Swift cases.
        func sanitized(_ primitive: Schema.Primitive) -> Case {
            switch primitive {
            case .bool(let bool):
                let string = "\(bool)"
                let sanitized = Swift.name!.enumerated[string]!
                return Case(label: sanitized, rawValue: string.escaped())
            case .string(let string):
                let sanitized = Swift.name!.enumerated[string]!
                let rawValue = (sanitized == string) ? nil : string.escaped()
                return Case(label: sanitized, rawValue: rawValue)
            default:
                fatalError("Invalid enum case in '\(self.schema!.decodingPath)'")
            }
        }

        /// Returns lines of Swift code that fully define the enum.
        func definition() -> [String] {
            var lines = [String]()
            let protocols = (!self.protocols.isEmpty) ? (": " + self.protocols.joined(separator: ", ")) : ""
            lines += documentation
            for reference in references {
                lines += ["/// - \(reference)"]
            }

            lines += ["\(access) enum \(type)\(protocols) {"]
            for cas in cases {
                let rawValue = (cas.rawValue != nil) ? " = \(cas.rawValue!)" : ""
                lines += ["case \(cas.label)\(rawValue)"].indented()
            }
            lines += ["}"]
            return lines
        }

        /// Checks for equality by comparing types and cases of the two `Enumerated` types.
        static func == (lhs: Enumerated, rhs: Enumerated) -> Bool {
            let typeEqual = lhs.type == rhs.type
            let casesEqual = lhs.cases == rhs.cases
            return typeEqual && casesEqual
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
    struct FlagList: SwiftComplexDataType {
        let type: String
        let schema: SchemaDataType?

        let access: String = "public"
        var references: [String] = []
        let protocols: [String] = []
        static var existing: [FlagList] = []

        struct Option: Equatable {
            let label: String
            let rawValue: String
        }
        var options: [Option] = []

        init(type: String, schema: SchemaDataType) {
            let schema = schema as! Schema.Attribute.FlagList
            self.type = Swift.name!.pascalCased(type)
            self.schema = schema

            options = schema.flags.map { sanitized($0) }
            if let extras = schema.extras {
                options += extras.map { sanitized(String(describing: $0)) }
            }
        }

        /// Transforms Plotly schema flag values to valid Swift options.
        func sanitized(_ string: String) -> Option {
            let sanitized = Swift.name!.flaglist[string]!
            return Option(label: sanitized, rawValue: string.escaped())
        }

        /// Returns lines of Swift code that fully define the OptionSet struct.
        func definition() -> [String] {
            var lines = [String]()
            lines += documentation
            for reference in references {
                lines += ["/// - \(reference)"]
            }

            lines += ["\(access) struct \(type): OptionSet, Encodable {"]
            lines += ["\(access) let rawValue: Int"].indented()
            lines += [""]
            for (i, option) in options.enumerated() {
                let label = option.label
                lines += ["\(access) static let \(label) = \(type)(rawValue: 1 << \(i))"].indented()
            }
            lines += [""]
            lines += ["\(access) init(rawValue: Int) { self.rawValue = rawValue }"].indented()
            lines += [""]
            lines += ["\(access) func encode(to encoder: Encoder) throws {"].indented()
            lines += ["var options = [String]()"].indented(2)
            for (i, option) in options.enumerated() {
                let rawValue = option.rawValue
                lines += ["if (self.rawValue & 1 << \(i)) != 0 { options += [\(rawValue)] }"].indented(2)
            }
            lines += ["var container = encoder.singleValueContainer()"].indented(2)
            lines += ["try container.encode(options.joined(separator: \"+\"))"].indented(2)
            lines += ["}"].indented()
            lines += ["}"]
            return lines
        }

        /// Checks for equality by comparing types and options of the two `FlagList` types.
        static func == (lhs: FlagList, rhs: FlagList) -> Bool {
            let typeEqual = lhs.type == rhs.type
            let optionsEqual = lhs.options == rhs.options
            return typeEqual && optionsEqual
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
        var documentation: [String] = []
        let schema: SchemaDataType? = nil

        var access: String = "public"
        var protocols: [String] = ["Encodable"]

        var members: [Definable]
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

            if let description = primitives["description"],
                case Schema.Primitive.string(let descriptionString) = description {
                documentation = descriptionString.documentation()
            }
        }

        /// Returns lines of Swift code that fully define the struct and all of it's nested members.
        func definition() -> [String] {
            var lines = [String]()
            lines += documentation

            let protocols = (!self.protocols.isEmpty) ? (": " + self.protocols.joined(separator: ", ")) : ""
            lines += ["\(access) struct \(type)\(protocols) {"]

            for member in members {
                lines += member.definition().indented()
                lines += [""]
            }

            let variables = members.compactMap { $0 as? Instance }.filter { $0.const == nil }
            let arguments = variables.map { $0.argument() + " = nil" }.joined(separator: ", ")
            lines += ["\(access) init(\(arguments)) {"].indented()
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
            return Enumerated.create(type: identifier, schema: enumerated)
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
            return FlagList.create(type: identifier, schema: flagList)
        case .anything(let anything):
            return Anything(schema: anything)
        case .infoArray(let infoArray):
            return InfoArray(schema: infoArray)
        }
    }
}

// MARK: - Swift Data Type Protocol


/// A data type that can return lines of Swift code with it's own definition.
protocol Definable {
    /// Returns lines of Swift code that fully define the data type including the nested members.
    func definition() -> [String]
}
// TODO: Documentation
extension Definable {
    /// Returns empty lines which is useful for Swift built-in types like Int, String or [Double].
    func definition() -> [String] {
        return []
    }
}

/// A data type that can be used as an argument when generating Swift code from Plotly schema.
protocol SwiftDataType: Definable {
    var type: String { get }
    var schema: SchemaDataType? { get }
    var documentation: [String] { get }
}
/// Extension with default implementations of commonly shared functionality.
extension SwiftDataType {
    /// Documentation of the data type extracted from Plotly schema.
    var documentation: [String] {
        (schema?.description != nil) ? schema!.description!.documentation() : [String]()
    }
}

/// TODO: Documentation
protocol SwiftComplexDataType: SwiftDataType, Equatable {
    var access: String { get }
    var protocols: [String] { get }
    var references: [String] { get set }
    static var existing: [Self] { get set }

    init(type: String, schema: SchemaDataType)
    static func create(type: String, schema: SchemaDataType) -> Self
}
/// TODO: Documentation
extension SwiftComplexDataType {
    /// TODO: Documentation
    static func create(type: String, schema: SchemaDataType) -> Self {
        var new = Self.init(type: type, schema: schema)
        if let index = Self.existing.firstIndex(where: { $0 == new }) {
            Self.existing[index].references.append(schema.decodingPath)
            return Self.existing[index]
        } else {
            new.references.append(schema.decodingPath)
            Self.existing.append(new)
            return new
        }
    }
}
