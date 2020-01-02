import Foundation


// MARK: Swift Data Type Protocols

/// A Swift data type that originates from some Plotly schema data type.
protocol SwiftType where OriginType: SchemaType {
    associatedtype OriginType
    var name: String { get }
    var schema: OriginType { get }
    var documentation: [String] { get }
}
extension SwiftType {
    /// Default implementation that extracts documentation text from the originating Plotly schema data type.
    var documentation: [String] { schema.description?.documentation() ?? [] }
}

/// A data type that can return lines of Swift code with it's own definition.
protocol Definable {
    /// Lines of Swift code that fully define the data type including the nested inline structs.
    var definition: [String] { get }

    /// Definition of the data type within a specific context.
    func define(as context: Swift.Context) -> [String]
}
extension Definable {
    /// Default implementation for non-shared types.
    func define(as context: Swift.Context) -> [String] {
        return definition
    }

    /// Default implementation that writes Swift code that defines the data type to a URL.
    func write(to url: URL) {
        let lines = define(as: .shared)
        let contents = lines.joined(separator: "\n")
        try! contents.write(to: url, atomically: true, encoding: .utf8)
    }
}

/// A shared Swift type that tracks it's references to allow re-use and prevent duplicate definitions of identical objects.
protocol SwiftSharedType: SwiftType, Definable, Equatable, AnyObject {
    var name: String { get set }
    var access: Swift.Access { get }
    var protocols: [String] { get }
    var references: [String] { get set }
    static var existing: [Self] { get set }

    init(named: String, schema: OriginType)
    /// Checks for duplicates and if there is one returns a previously existing instance the the type.
    static func createShared(named: String, schema: OriginType) -> Self
    /// Writes Swift code that defines the data type to a URL and avoids identifier collisions thanks to shared `existing` dict.
    static func write(to url: URL, _ existing: inout [String: Int])
}
extension SwiftSharedType {
    var singleInstance: Bool { references.count == 1 }

    /// Default implementation that avoids duplication of identical shared types.
    static func createShared(named: String, schema: OriginType) -> Self {
        var type = Self.init(named: named, schema: schema)
        if let index = Self.existing.firstIndex(where: { $0 == type }) {
            type = Self.existing[index]
        } else {
            Self.existing.append(type)
        }
        type.references.append(schema.decodingPath)
        return type
    }

    /// Default implementation for shared types that is empty for inlined, non single-instance cases and avoids duplication.
    func define(as context: Swift.Context) -> [String] {
        switch context {
        case .inlined:
            return singleInstance ? definition : []
        case .shared:
            return singleInstance ? [] : definition
        }
    }

    /// Writes Swift code that defines the data type to a URL and avoids identifier collisions thanks to shared `existing` dict.
    static func write(to url: URL, _ existing: inout [String: Int])  {
        var lines = [String]()

        for type in Self.existing.filter({ !$0.singleInstance }) {
            if existing.contains(where: { $0.key == type.name }) {
                existing[type.name]! += 1
            } else {
                existing[type.name] = 0
            }
            type.name = "\(type.name)\(existing[type.name]!)"
            lines += type.define(as: .shared)
            lines += [""]
        }

        let contents = lines.joined(separator: "\n")
        try! contents.write(to: url, atomically: true, encoding: .utf8)
    }
}


// MARK: - Swift Plotly Schema Equivalents

/// Container for Swift data types that map to corresponding values in the Plotly JSON schema hierarchy.
class Swift {
    /// Storage of Plotly mangledtogethernames translated to Swift camelCaseNames for each identifier in the schema.
    static var name: Name? = nil

    /// Data type that maps hierarchical Plotly `object` to a Swift `struct`.
    final class Object: SwiftSharedType {
        var name: String
        var documentation: [String] = []
        var schema: Schema.Object

        let access: Swift.Access = .public
        var protocols: [String] = ["Encodable"]
        var references: [String] = []
        static var existing: [Swift.Object] = []

        var members: [Definable]
        var primitives: [String: Schema.Primitive]

        static private let ignoredIdentifiers: Set = ["_deprecated"]

        var definition: [String] {
            var lines = [String]()
            lines += documentation
            for reference in references {
                lines += ["/// - \(reference)"]
            }

            let protocols = (!self.protocols.isEmpty) ? (": " + self.protocols.joined(separator: ", ")) : ""
            lines += ["\(access)struct \(name)\(protocols) {"]

            for member in members {
                lines += member.define(as: .inlined).indented()
                lines += [""]
            }
            lines += codingKeys.indented()

            let variables = members.compactMap { $0 as? Instantiable }.filter { $0.constant == nil }
            let arguments = variables.map { $0.argument + " = nil" }.joined(separator: ", ")
            lines += ["\(access)init(\(arguments)) {"].indented()
            lines += variables.map { "self.\($0.name) = \($0.name)" }.indented(2)
            lines += ["}"].indented()

            lines += ["}"]
            return lines
        }

        private var codingKeys: [String] {
            let properties = members.compactMap { $0 as? Instantiable }
            if properties.filter({ $0.name != $0.codingName }).isEmpty { return [] }

            var lines = [String]()
            lines += ["/// Plotly compatible property encoding"]
            lines += ["enum CodingKeys: String, CodingKey {"]
            for property in properties {
                if property.name != property.codingName {
                    lines += ["case \(property.name) = \(property.codingName.escaped())"].indented()
                } else {
                    lines += ["case \(property.name)"].indented()
                }
            }
            lines += ["}", ""]
            return lines
        }

        init(named name: String, schema object: Schema.Object) {
            self.name = Swift.name!.pascalCased(name)
            self.schema = object

            members = []
            primitives = [:]
            for (identifier, entry) in object.entries {
                if Self.ignoredIdentifiers.contains(identifier) { continue }

                switch entry {
                case .primitive(let primitive):
                    self.primitives[identifier] = primitive
                case .attribute(let attribute):
                    switch attribute {
                    case .dataArray(let dataArray):
                        let dataArrayType = Swift.DataArray(schema: dataArray)
                        members += [Instance(named: identifier, of: dataArrayType)]
                    case .enumerated(let enumerated):
                        let enumeratedType = Swift.Enumerated.createShared(named: identifier, schema: enumerated)
                        members += [Instance(named: identifier, of: enumeratedType)]
                    case .boolean(let boolean):
                        let booleanType = Swift.Boolean(schema: boolean)
                        members += [Instance(named: identifier, of: booleanType)]
                    case .number(let number):
                        let numberType = Swift.Number(schema: number)
                        members += [Instance(named: identifier, of: numberType)]
                    case .integer(let integer):
                        let integerType = Swift.Integer(schema: integer)
                        members += [Instance(named: identifier, of: integerType)]
                    case .string(let string):
                        let stringType = Swift.String_(schema: string)
                        members += [Instance(named: identifier, of: stringType)]
                    case .color(let color):
                        let colorType = Swift.Color(schema: color)
                        members += [Instance(named: identifier, of: colorType)]
                    case .colorList(let colorList):
                        let colorListType = Swift.ColorList.init(schema: colorList)
                        members += [Instance(named: identifier, of: colorListType)]
                    case .colorScale(let colorScale):
                        let colorScaleType = Swift.ColorScale(schema: colorScale)
                        members += [Instance(named: identifier, of: colorScaleType)]
                    case .angle(let angle):
                        let angleType = Swift.Angle(schema: angle)
                        members += [Instance(named: identifier, of: angleType)]
                    case .subPlotId(let subPlotId):
                        let subPlotIdType = Swift.SubPlotID(schema: subPlotId)
                        members += [Instance(named: identifier, of: subPlotIdType)]
                    case .flagList(let flagList):
                        let flagListType = Swift.FlagList.createShared(named: identifier, schema: flagList)
                        members += [Instance(named: identifier, of: flagListType)]
                    case .any(let any):
                        let anyType = Swift.Any_(schema: any)
                        members += [Instance(named: identifier, of: anyType)]
                    case .infoArray(let infoArray):
                        let infoArrayType = Swift.InfoArray(schema: infoArray)
                        members += [Instance(named: identifier, of: infoArrayType)]
                    }
                case .object(let object):
                    let nestedObject = Swift.Object.createShared(named: identifier, schema: object)
                    members += [Instance(named: identifier, of: nestedObject)]
                }

                if let description = primitives["description"],
                    case Schema.Primitive.string(let string) = description {
                        documentation = string.documentation()
                }
            }
        }

        /// Recursively compares objects by checking member equivalence.
        static func == (lhs: Swift.Object, rhs: Swift.Object) -> Bool {
            return lhs.members.elementsEqual(rhs.members) { l, r in
                if let lObject = l as? Object, let rObject = r as? Object {
                    if lObject.name != rObject.name { return false }
                    if lObject.documentation != rObject.documentation { return false }
                    return lObject == rObject
                } else if let lInstance = l as? Instantiable, let rInstance = r as? Instantiable {
                    if lInstance.name != rInstance.name { return false }
                    if lInstance.constant != rInstance.constant { return false }
                    if lInstance.optional != rInstance.optional { return false }
                    if lInstance.access != rInstance.access { return false }
                    return true
                } else {
                    return false
                }
            }
        }
    }


    // MARK: - Data Types

    /// Data type that maps Plotly `data_array` to a numerical array in Swift.
    struct DataArray: SwiftType {
        let name: String = "[Double]"
        var schema: Schema.DataArray
    }

    /// Data type that maps Plotly `enumerated` to Swift `enum`.
    final class Enumerated: SwiftSharedType {
        var name: String
        var schema: Schema.Enumerated

        let access: Swift.Access = .public
        var protocols: [String] = ["String", "Encodable"]
        var references: [String] = []
        static var existing: [Enumerated] = []

        struct Case: Equatable {
            let label: String
            let rawValue: String?
        }
        var cases: [Case] = []

        var definition: [String] {
            var lines = [String]()
            let protocols = (!self.protocols.isEmpty) ? (": " + self.protocols.joined(separator: ", ")) : ""
            lines += documentation
            for reference in references {
                lines += ["/// - \(reference)"]
            }

            lines += ["\(access)enum \(name)\(protocols) {"]
            for `case` in cases {
                let rawValue = (`case`.rawValue != nil) ? " = \(`case`.rawValue!)" : ""
                lines += ["case \(`case`.label)\(rawValue)"].indented()
            }
            lines += ["}"]
            return lines
        }

        init(named name: String, schema enumerated: Schema.Enumerated) {
            self.name = Swift.name!.pascalCased(name)
            self.schema = enumerated

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
                fatalError("Invalid enum case in '\(self.schema.decodingPath)'")
            }
        }

        /// Checks for equality by comparing types and cases of the two `Enumerated` types.
        static func == (lhs: Enumerated, rhs: Enumerated) -> Bool {
            return lhs.cases == rhs.cases
        }
    }

    /// Plotly `boolean` data type represented as a Swift `Bool`.
    struct Boolean: SwiftType {
        let name: String = "Bool"
        var schema: Schema.Boolean
    }

    /// Plotly `number` data type represented as a Swift `Double`.
    struct Number: SwiftType {
        let name: String = "Double"
        var schema: Schema.Number
    }

    /// Plotly `integer` data type represented as a Swift `Int`.
    struct Integer: SwiftType {
        let name: String = "Int"
        var schema: Schema.Integer
    }

    /// Plotly `string` data type represented as a Swift `String`.
    /// - Note: Appended underscore prevents collision with the Swift built-in type.
    struct String_: SwiftType {
        let name: String = "String"
        var schema: Schema.String_
    }

    /// Plotly `color` data type is manually re-implemented in Swift.
    struct Color: SwiftType {
        let name: String = "Color"
        var schema: Schema.Color
    }

    /// Plotly `colorlist` data type is manually re-implemented in Swift.
    struct ColorList: SwiftType {
        let name: String = "ColorList"
        var schema: Schema.ColorList
    }

    /// Plotly `colorscale` data type is manually re-implemented in Swift.
    /// - Note: `Layout.ColorScale` is renamed to `Layout.ColorMap` to prevent conflicts.
    struct ColorScale: SwiftType {
        let name: String = "ColorScale"
        var schema: Schema.ColorScale
    }

    /// Plotly `Angle` data type represented as a Swift `Double`.
    struct Angle: SwiftType {
        let name: String = "Angle"
        var schema: Schema.Angle
    }

    /// Plotly `subplotid` data type is manually re-implemented in Swift.
    struct SubPlotID: SwiftType {
        let name: String = "SubPlotID"
        var schema: Schema.SubPlotID
    }

    /// Data type that maps Plotly `flaglist` to `OptionSet` from the Swift standard library.
    final class FlagList: SwiftSharedType {
        var name: String
        var schema: Schema.FlagList

        let access: Swift.Access = .public
        var references: [String] = []
        let protocols: [String] = []
        static var existing: [FlagList] = []

        struct Option: Equatable {
            let label: String
            let rawValue: String
        }
        var options: [Option] = []

        var definition: [String] {
            var lines = [String]()
            lines += documentation
            for reference in references {
                lines += ["/// - \(reference)"]
            }

            lines += ["\(access)struct \(name): OptionSet, Encodable {"]
            lines += ["\(access)let rawValue: Int"].indented()
            lines += [""]
            for (i, option) in options.enumerated() {
                let label = option.label
                lines += ["\(access)static let \(label) = \(name)(rawValue: 1 << \(i))"].indented()
            }
            lines += [""]
            lines += ["\(access)init(rawValue: Int) { self.rawValue = rawValue }"].indented()
            lines += [""]
            lines += ["\(access)func encode(to encoder: Encoder) throws {"].indented()
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

        init(named name: String, schema flagList: Schema.FlagList) {
            self.name = Swift.name!.pascalCased(name)
            self.schema = flagList

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

        /// Checks for equality by comparing types and options of the two `FlagList` types.
        static func == (lhs: FlagList, rhs: FlagList) -> Bool {
            return lhs.options == rhs.options
        }
    }

    /// Plotly `any` data type is manually re-implemented in Swift.
    /// - Note: Appended underscore prevents collision with the Swift built-in type.
    /// - Note: Name `Anything` prevents collision with the Swift built-in type `Any`.
    struct Any_: SwiftType {
        let name: String = "Anything"
        var schema: Schema.Any_
    }

    /// Plotly `any` data type is manually re-implemented in Swift.
    struct InfoArray: SwiftType {
        let name: String = "InfoArray"
        var schema: Schema.InfoArray
    }


    // MARK: - Utilities

    /// Definition context of a Swift type.
    enum Context {
        case inlined, shared
    }

    /// Access level of a Swift property or a struct.
    enum Access: String, CustomStringConvertible {
        var description: String { self.rawValue }

        case `private` = "private "
        case `public` = "public "
        case `default` = ""
    }
}
