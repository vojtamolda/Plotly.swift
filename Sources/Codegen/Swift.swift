import Foundation


// MARK: Swift Data Type Protocols

/// A Swift data type that originates from some Plotly schema origin data type.
protocol SwiftType where Origin: SchemaType {
    associatedtype Origin
    var name: String { get }
    var schema: Origin { get }

    /// Creates instance of the Swift data type with the specified name.
    func instance(named: String) -> Instance<Self>
}
extension SwiftType {
    /// Default implementation for non-shared types.
    func instance(named: String) -> Instance<Self> {
        return Instance(of: self, named: named)
    }
}

/// Object that can return lines of Swift code with it's own documentation and definition.
protocol Definable {
    var documentation: [String] { get }
    var definition: [String] { get }

    /// Definition of the data type (including the nested inline structs) within a specific context.
    func define(as context: Swift.Context) -> [String]
}
extension Definable {
    /// Default implementation that ignores context and is useful for simple non-shared objects.
    func define(as context: Swift.Context) -> [String] {
        return documentation + definition
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
    var access: Swift.Access { get set }
    var instances: [Instance<Self>] { get set }
    static var existing: [Self] { get set }

    /// Writes Swift code that defines the data type to a URL and avoids identifier collisions thanks to shared `existing` dict.
    static func write(to url: URL, _ existing: inout [String: Int])
}
extension SwiftSharedType {
    var shared: Bool { instances.count > 1 }
    var documentation: [String] { schema.description?.documentation() ?? [] }

    /// Default implementation for shared types that keeps track of instances.
    func instance(named: String) -> Instance<Self> {
        let instance = Instance(of: self, named: named)
        instances.append(instance)
        return instance
    }

    /// Default implementation for shared types that is empty for inlined, non single-instance cases and avoids duplication.
    func define(as context: Swift.Context) -> [String] {
        switch context {
        case .inlined:
            return shared ? [] : documentation + definition
        case .shared:
            return shared ? documentation + definition : []
        }
    }

    /// Identifies shared data types and re-associate instances of duplicates.
    static func share() {
        var identicalGroups = [[Self]]()
        var remainingTypes = Self.existing

        for type in Self.existing {
            let identicalTypes = remainingTypes.filter { $0 == type }
            if !identicalTypes.isEmpty { identicalGroups.append(identicalTypes) }
            remainingTypes.removeAll { $0 == type }
        }

        for identicalTypes in identicalGroups {
            if identicalTypes.count < 5 { continue }
            let sharedType = identicalTypes[0]
            for type in identicalTypes {
                let instance = type.instances.popLast()!
                instance.type = sharedType
                sharedType.instances.append(instance)
            }
        }
    }

    /// Writes Swift code that defines the data type to a URL and avoids identifier collisions thanks to shared `existing` dict.
    static func write(to url: URL, _ existing: inout [String: Int])  {
        var lines = [String]()

        for type in Self.existing.filter({ $0.shared }) {
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
        var schema: Schema.Object
        var access: Swift.Access = .public
        var protocols: [String] = ["Encodable"]

        var instances: [Instance<Object>] = []
        static var existing: [Object] = []

        var members: [Definable]
        var primitives: [String: Schema.Primitive]

        static private let ignored: Set = ["_deprecated"]

        var definition: [String] {
            var lines = [String]()
            for instance in instances {
                lines += ["/// - \(instance.schema.path)"]
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
            if properties.filter({ $0.name != $0.schemaName }).isEmpty { return [] }

            var lines = [String]()
            lines += ["/// Plotly compatible property encoding"]
            lines += ["enum CodingKeys: String, CodingKey {"]
            for prop in properties {
                if prop.name == prop.schemaName {
                    lines += ["case \(prop.name)"].indented()
                } else {
                    lines += ["case \(prop.name) = \(prop.schemaName.escaped())"].indented()
                }
            }
            lines += ["}", ""]
            return lines
        }

        init(named name: String, schema object: Schema.Object) {
            self.name = Swift.name!.pascalCased(name)
            self.schema = object
            self.members = []
            self.primitives = [:]
            Self.existing.append(self)

            for (identifier, entry) in object.entries {
                if Self.ignored.contains(identifier) { continue }

                switch entry {
                case .primitive(let primitive):
                    self.primitives[identifier] = primitive
                case .attribute(let attribute):
                    switch attribute {
                    case .dataArray(let dataArray):
                        let dataArrayType = Swift.DataArray(schema: dataArray)
                        members += [dataArrayType.instance(named: identifier)]
                    case .enumerated(let enumerated):
                        let enumeratedType = Swift.Enumerated(named: identifier, schema: enumerated)
                        members += [enumeratedType.instance(named: identifier)]
                    case .boolean(let boolean):
                        let booleanType = Swift.Boolean(schema: boolean)
                        members += [booleanType.instance(named: identifier)]
                    case .number(let number):
                        let numberType = Swift.Number(schema: number)
                        members += [numberType.instance(named: identifier)]
                    case .integer(let integer):
                        let integerType = Swift.Integer(schema: integer)
                        members += [integerType.instance(named: identifier)]
                    case .string(let string):
                        let stringType = Swift.String_(schema: string)
                        members += [stringType.instance(named: identifier)]
                    case .color(let color):
                        let colorType = Swift.Color(schema: color)
                        members += [colorType.instance(named: identifier)]
                    case .colorList(let colorList):
                        let colorListType = Swift.ColorList.init(schema: colorList)
                        members += [colorListType.instance(named: identifier)]
                    case .colorScale(let colorScale):
                        let colorScaleType = Swift.ColorScale(schema: colorScale)
                        members += [colorScaleType.instance(named: identifier)]
                    case .angle(let angle):
                        let angleType = Swift.Angle(schema: angle)
                        members += [angleType.instance(named: identifier)]
                    case .subPlotId(let subPlotId):
                        let subPlotIdType = Swift.SubPlotID(schema: subPlotId)
                        members += [subPlotIdType.instance(named: identifier)]
                    case .flagList(let flagList):
                        let flagListType = Swift.FlagList(named: identifier, schema: flagList)
                        members += [flagListType.instance(named: identifier)]
                    case .any(let any):
                        let anyType = Swift.Any_(schema: any)
                        members += [anyType.instance(named: identifier)]
                    case .infoArray(let infoArray):
                        let infoArrayType = Swift.InfoArray(schema: infoArray)
                        members += [infoArrayType.instance(named: identifier)]
                    }
                case .object(let object):
                    let nestedObject = Swift.Object(named: identifier, schema: object)
                    members += [nestedObject.instance(named: identifier)]
                }
            }
        }

        /// Recursively compares objects by checking member equivalence.
        static func == (lhs: Swift.Object, rhs: Swift.Object) -> Bool {
            return lhs.members.elementsEqual(rhs.members) { l, r in
                if let lObject = l as? Object, let rObject = r as? Object {
                    let nameAlmostEqual = lhs.name.contains(rhs.name) || rhs.name.contains(lhs.name)
                    if !nameAlmostEqual { return false }
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
        var access: Swift.Access = .public
        var protocols: [String] = ["String", "Encodable"]

        var instances: [Instance<Enumerated>] = []
        static var existing: [Enumerated] = []

        struct Case: Equatable {
            let label: String
            let rawValue: String?
        }
        var cases: [Case] = []

        var definition: [String] {
            var lines = [String]()
            let protocols = (!self.protocols.isEmpty) ? (": " + self.protocols.joined(separator: ", ")) : ""
            for instance in instances {
                lines += ["/// - \(instance.schema.path)"]
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
            Self.existing.append(self)

            // Workaround for numerical values of Marker Symbols
            if schema.path.hasSuffix("marker/symbol") {
                let onlyStrings = schema.values.filter {
                    if case Schema.Primitive.string = $0 { return true } else { return false }
                }
                cases = onlyStrings.map { sanitized($0) }
                return
            }
            // Workaround for numerical values of Geo Resolution
            if schema.path.hasSuffix("geo/resolution") {
                protocols[0] = "Int"
                cases = schema.values.map { primitive -> Case in
                    guard case let Schema.Primitive.int(int) = primitive else {
                        fatalError("Unsupported Geo Resolution value in '\(schema.path)'")
                    }
                    return Case(label: "oneOver\(int)M", rawValue: "\(int)")
                }
                return
            }
            // Improvement of meaningless numerical values of SurfaceAxis
            if schema.path.hasSuffix("surfaceaxis") {
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
                fatalError("Invalid enum case in '\(self.schema.path)'")
            }
        }

        /// Checks for equality by comparing types and cases of the two `Enumerated` types.
        static func == (lhs: Enumerated, rhs: Enumerated) -> Bool {
            let nameAlmostEqual = lhs.name.contains(rhs.name) || rhs.name.contains(lhs.name)
            let casesEqual = lhs.cases == rhs.cases
            return nameAlmostEqual && casesEqual
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
        var access: Swift.Access = .public
        let protocols: [String] = []

        var instances: [Instance<FlagList>] = []
        static var existing: [FlagList] = []

        struct Option: Equatable {
            let label: String
            let rawValue: String
        }
        var options: [Option] = []

        var definition: [String] {
            var lines = [String]()
            for instance in instances {
                lines += ["/// - \(instance.schema.path)"]
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
            Self.existing.append(self)

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
            let nameAlmostEqual = lhs.name.contains(rhs.name) || rhs.name.contains(lhs.name)
            let optionsEqual = lhs.options == rhs.options
            return nameAlmostEqual && optionsEqual
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
