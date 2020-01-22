import Foundation


// MARK: Swift Data Type Protocols

/// A Swift data type that originates from some Plotly schema data type.
protocol SwiftType {
    var name: String { get }
    var parent: Swift.Object? { get }
    var origin: SchemaType { get }

    /// Creates instance of the Swift data type with the specified name.
    func instance(named: String, array: Bool) -> Instance
}
extension SwiftType {
    var path: String {
        var ancestors = [name]
        var ancestor = self.parent
        while ancestor != nil {
            ancestors.append(ancestor!.name)
            ancestor = ancestor!.parent
        }
        let path = ancestors.reversed().joined(separator: ".")
        return path
    }

    /// Default implementation for non-shared types.
    func instance(named: String, array: Bool = false) -> Instance {
        return Instance(of: self, named: named, array: array)
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
protocol SwiftSharedType: SwiftType, Definable, AnyObject {
    var name: String { get set }
    var shared: Bool { get set }
    var parent: Swift.Object? { get set }
    var access: Swift.Access { get set }
    var priority: Int { get }
    var instances: [Instance] { get set }
    static var existing: [Self] { get }

    /// Checks whether the data type can by represented by `other` without loss of functionality and therefore shared.
    func shareable(as other: Self) -> Bool
}
extension SwiftSharedType {
    var documentation: [String] {
        var lines = origin.description?.documentation() ?? []
        if !lines.isEmpty { lines += ["///"] }
        lines += ["/// # Used By"]
        for instance in instances {
            lines += ["/// `\(instance.path)` |"]
        }
        return lines
    }

    /// Default implementation for shared types that keeps track of instances.
    @discardableResult
    func instance(named: String, array: Bool = false, origin: SchemaType? = nil) -> Instance {
        let instance = Instance(of: self, named: named, array: array, origin: origin)
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
}


// MARK: - Swift Plotly Schema Equivalents

/// Container for Swift data types that map to corresponding values in the Plotly JSON schema hierarchy.
struct Swift {
    /// Storage of Plotly mangledtogethernames translated to Swift camelCaseNames for each identifier in the schema.
    static var name: Name? = nil

    /// Data type that maps hierarchical Plotly `object` to a Swift `struct`.
    final class Object: SwiftSharedType {
        var name: String
        var shared: Bool = false
        var parent: Swift.Object?
        let schema: Schema.Object
        var origin: SchemaType { schema as SchemaType }
        var access: Swift.Access = .public
        var priority: Int { members.count }
        var protocols: [String] = ["Encodable"]
        var generics: [String] = []
        var constraints: [String] = []

        var instances: [Instance] = []
        static var existing: [Swift.Object] = []

        var members: [Definable]
        var properties: [Instance] { members.compactMap { $0 as? Instance } }
        var primitives: [String: Schema.Primitive]

        static private let ignored: [String] = ["_deprecated", "src", "impliedEdits"]

        var definition: [String] {
            var lines = [String]()
            let generics = self.generics.isEmpty ? "" : "<\(self.generics.joined(separator: ", "))>"
            let protocols = self.protocols.isEmpty ? "" : ": \(self.protocols.joined(separator: ", "))"
            let constraints = self.constraints.isEmpty ? "" : " where \(self.constraints.joined(separator: ", "))"
            lines += ["\(access)struct \(name)\(generics)\(protocols)\(constraints) {"]

            for member in members {
                lines += member.define(as: .inlined).indented()
                lines += [""]
            }
            lines += codingKeys.indented()

            let variables = properties.filter { $0.constant == nil }
            let arguments = variables.map { $0.argument + " = nil" }.joined(separator: ", ")
            lines += ["\(access)init(\(arguments)) {"].indented()
            lines += variables.map { "self.\($0.name) = \($0.name)" }.indented(2)
            lines += ["}"].indented()

            lines += ["}"]
            return lines
        }

        private var codingKeys: [String] {
            if properties.filter({ $0.name != $0.origin.name }).isEmpty { return [] }

            var lines = [String]()
            lines += ["/// Plotly compatible property encoding"]
            lines += ["enum CodingKeys: String, CodingKey {"]
            for prop in properties {
                if prop.name == prop.origin.name {
                    lines += ["case \(prop.name)"].indented()
                } else {
                    lines += ["case \(prop.name) = \(prop.origin.name.escaped())"].indented()
                }
            }
            lines += ["}", ""]
            return lines
        }

        init?(named name: String, parent: Swift.Object? = nil, schema object: Schema.Object) {
            self.name = Swift.name!.pascalCased(name)
            self.parent = parent
            self.schema = object
            self.members = []
            self.primitives = [:]

            // Workaround for arrays of objects represented as `items` entry.
            if let itemsEntry = object.entries.first(where: { $0.identifier == "items" }) {
                guard case let parent = parent!,
                    case let Schema.Entry.object(itemsSchema) = itemsEntry.entry,
                    case let Schema.Entry.object(itemSchema) = itemsSchema.entries[0].entry else {
                    fatalError()
                }
                let itemType = Swift.Object(named: itemSchema.name, parent: parent, schema: itemSchema)!
                let itemsArray = itemType.instance(named: name, array: true, origin: object)
                parent.members.append(itemsArray)
                return nil
            }
            Self.existing.append(self)

            for (identifier, entry) in object.entries {
                if Self.ignored.contains(where: { identifier.contains($0) }) { continue }

                switch entry {
                case .primitive(let primitive):
                    self.primitives[identifier] = primitive
                case .attribute(let attribute):
                    switch attribute {
                    case .dataArray(let dataArray):
                        let dataArrayType = Swift.DataArray(parent: self, schema: dataArray)
                        members += [dataArrayType.instance(named: identifier)]
                    case .enumerated(let enumerated):
                        let enumeratedType = Swift.Enumerated(named: identifier, parent: self, schema: enumerated)
                        members += [enumeratedType.instance(named: identifier)]
                    case .boolean(let boolean):
                        let booleanType = Swift.Boolean(parent: self, schema: boolean)
                        members += [booleanType.instance(named: identifier)]
                    case .number(let number):
                        let numberType = Swift.Number(parent: self, schema: number)
                        members += [numberType.instance(named: identifier)]
                    case .integer(let integer):
                        let integerType = Swift.Integer(parent: self, schema: integer)
                        members += [integerType.instance(named: identifier)]
                    case .string(let string):
                        let stringType = Swift.String_(parent: self, schema: string)
                        members += [stringType.instance(named: identifier)]
                    case .color(let color):
                        let colorType = Swift.Color(parent: self, schema: color)
                        members += [colorType.instance(named: identifier)]
                    case .colorList(let colorList):
                        let colorListType = Swift.ColorList.init(parent: self, schema: colorList)
                        members += [colorListType.instance(named: identifier)]
                    case .colorScale(let colorScale):
                        let colorScaleType = Swift.ColorScale(parent: self, schema: colorScale)
                        members += [colorScaleType.instance(named: identifier)]
                    case .angle(let angle):
                        let angleType = Swift.Angle(parent: self, schema: angle)
                        members += [angleType.instance(named: identifier)]
                    case .subPlotId(let subPlotId):
                        let subPlotIdType = Swift.SubPlotID(parent: self, schema: subPlotId)
                        members += [subPlotIdType.instance(named: identifier)]
                    case .flagList(let flagList):
                        let flagListType = Swift.FlagList(named: identifier, parent: self, schema: flagList)
                        members += [flagListType.instance(named: identifier)]
                    case .any(let any):
                        let anyType = Swift.Any_(parent: self, schema: any)
                        members += [anyType.instance(named: identifier)]
                    case .infoArray(let infoArray):
                        let infoArrayType = Swift.InfoArray(parent: self, schema: infoArray)
                        members += [infoArrayType.instance(named: identifier)]
                    }
                case .object(let object):
                    if let nestedObjectType = Swift.Object(named: identifier, parent: self, schema: object) {
                        members += [nestedObjectType.instance(named: identifier)]
                    }
                }
            }
            workarounds()
        }

        /// Post-processing hacks that avoid name collisions.
        private func workarounds() {
            switch name {
            case "Line":
                if properties.contains(where: { $0.name == "colorScale" }) { name = "Colored" + name }
                if properties.contains(where: { $0.name == "dash" }) { name = "Dashed" + name }
                if properties.contains(where: { $0.name == "smoothing" }) { name = "Smoothed" + name }
                if properties.contains(where: { $0.name == "shape" }) { name = "Spline" + name }
            case "Marker":
                if properties.contains(where: { $0.name == "symbol" }) { name = "SymbolicMarker" }
                if properties.contains(where: { $0.name == "gradient" }) { name = "GradientMarker" }
            case "Contour":
                if properties.count == 3 { name = "ContourHover"}
            case "XBins":
                fallthrough
            case "YBins":
                name = "Bins"
            case "XError":
                fallthrough
            case "YError":
                fallthrough
            case "ZError":
                name = "Error"
                let useless: Set = ["yCopyStyle", "zCopyStyle"]
                members = members.removedInstances(named: useless)
            default:
                return
            }
        }

        /// Recursively compares objects and checks whether `other` consist of a superset of members.
        func shareable(as other: Swift.Object) -> Bool {
            if !self.name.almostEqual(to: other.name) { return false }
            if other.members.count != self.members.count { return false }
            if self.name == "Unselected" || self.name == "Selected" { return false }
            if self.parent?.name == "Selected" || self.parent?.name == "Unselected" { return false }
            if self.parent?.name == "Increasing" || self.parent?.name == "Decreasing" { return false }

            return self.members.allSatisfy { selfMember in
                other.members.contains { otherMember in
                    if let selfNestedObject = selfMember as? Swift.Object,
                        let otherNestedObject = otherMember as? Swift.Object {
                        return selfNestedObject.shareable(as: otherNestedObject)
                    } else if let selfEnumerated = selfMember as? Swift.Enumerated,
                        let otherEnumerated = otherMember as? Swift.Enumerated {
                        return selfEnumerated.shareable(as: otherEnumerated)
                    } else if let selfFlagList = selfMember as? Swift.FlagList,
                        let otherFlagList = otherMember as? Swift.FlagList {
                        return selfFlagList.shareable(as: otherFlagList)
                    } else if let selfInstance = selfMember as? Instance,
                        let otherInstance = otherMember as? Instance {
                        return selfInstance.shareable(as: otherInstance)
                    }
                    return false
                }
            }
        }
    }


    // MARK: - Data Types

    /// Data type that maps Plotly `data_array` to a numerical array in Swift.
    struct DataArray: SwiftType {
        let name: String = "[Double]"
        let parent: Swift.Object?
        let schema: Schema.DataArray
        var origin: SchemaType { schema as SchemaType }
    }

    /// Data type that maps Plotly `enumerated` to Swift `enum`.
    final class Enumerated: SwiftSharedType {
        var name: String
        var shared: Bool = false
        var parent: Swift.Object?
        let schema: Schema.Enumerated
        var origin: SchemaType { schema as SchemaType }
        var access: Swift.Access = .public
        var priority: Int { cases.count }
        var protocols: [String] = ["String", "Encodable"]

        var instances: [Instance] = []
        static var existing: [Swift.Enumerated] = []

        struct Case: Equatable {
            let label: String
            let rawValue: String?
        }
        var cases: [Case] = []

        var definition: [String] {
            var lines = [String]()

            let protocols = (!self.protocols.isEmpty) ? (": " + self.protocols.joined(separator: ", ")) : ""
            lines += ["\(access)enum \(name)\(protocols) {"]
            for `case` in cases {
                let rawValue = (`case`.rawValue != nil) ? " = \(`case`.rawValue!)" : ""
                lines += ["case \(`case`.label)\(rawValue)"].indented()
            }
            lines += ["}"]
            return lines
        }

        init(named name: String, parent: Swift.Object, schema enumerated: Schema.Enumerated) {
            self.name = Swift.name!.pascalCased(name)
            self.parent = parent
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
            workarounds()
        }

        /// Transforms Plotly schema primitives to valid Swift cases.
        private func sanitized(_ primitive: Schema.Primitive) -> Case {
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

        /// Post-processing hacks that avoid name collisions.
        private func workarounds() {
            switch name {
            case "Align":
                if cases.contains(where: { $0.label == "auto" }) { name = "AutoAlign"}
                if cases.contains(where: { $0.label == "center" }) { name = "HorizontalAlign"}
            case "XAnchor":
                if cases.contains(where: { $0.label == "auto" }) { name = "XAutoAnchor"}
            case "YAnchor":
                if cases.contains(where: { $0.label == "auto" }) { name = "YAutoAnchor"}
            case "TextPosition":
                if cases.contains(where: { $0.label == "auto" }) { name = "AdjacentPosition"}
            case "CategoryOrder":
                if cases.count == 4 { name = "CarpetCategoryOrder"}
            case "Fill":
                if cases.count == 3 { name = "AreaFill"}
            case "XReference":
                name = "XAxisReference"
            case "YReference":
                name = "YAxisReference"
            case "XType":
                fallthrough
            case "YType":
                name = "AxisType"
            default:
                return
            }
        }

        /// Checks for shareability by comparing names and cases of the two `Enumerated` types.
        func shareable(as other: Swift.Enumerated) -> Bool {
            if name == "`Type`" { return false }
            let nameAlmostEqual = self.name.almostEqual(to: other.name)
            let casesEqual = self.cases == other.cases
            return nameAlmostEqual && casesEqual
        }
    }

    /// Plotly `boolean` data type represented as a Swift `Bool`.
    struct Boolean: SwiftType {
        let name: String = "Bool"
        let parent: Swift.Object?
        let schema: Schema.Boolean
        var origin: SchemaType { schema as SchemaType }
    }

    /// Plotly `number` data type represented as a Swift `Double`.
    struct Number: SwiftType {
        var name: String { (schema.arrayOk ?? false) ? "ArrayOrDouble" : "Double" }
        let parent: Swift.Object?
        let schema: Schema.Number
        var origin: SchemaType { schema as SchemaType }
    }

    /// Plotly `integer` data type represented as a Swift `Int`.
    struct Integer: SwiftType {
        var name: String { (schema.arrayOk ?? false) ? "ArrayOrInt" : "Int" }
        let parent: Swift.Object?
        let schema: Schema.Integer
        var origin: SchemaType { schema as SchemaType }
    }

    /// Plotly `string` data type represented as a Swift `String`.
    /// - Note: Appended underscore prevents collision with the Swift built-in type.
    struct String_: SwiftType {
        var name: String { (schema.arrayOk ?? false) ? "ArrayOrString" : "String" }
        let parent: Swift.Object?
        let schema: Schema.String_
        var origin: SchemaType { schema as SchemaType }
    }

    /// Plotly `color` data type is manually re-implemented in Swift.
    struct Color: SwiftType {
        var name: String { (schema.arrayOk ?? false) ? "ArrayOrColor" : "Color" }
        let parent: Swift.Object?
        let schema: Schema.Color
        var origin: SchemaType { schema as SchemaType }
    }

    /// Plotly `colorlist` data type is manually re-implemented in Swift.
    struct ColorList: SwiftType {
        let name: String = "ColorList"
        let parent: Swift.Object?
        let schema: Schema.ColorList
        var origin: SchemaType { schema as SchemaType }
    }

    /// Plotly `colorscale` data type is manually re-implemented in Swift.
    /// - Note: `Layout.ColorScale` is renamed to `Layout.ColorMap` to prevent conflicts.
    struct ColorScale: SwiftType {
        let name: String = "ColorScale"
        let parent: Swift.Object?
        let schema: Schema.ColorScale
        var origin: SchemaType { schema as SchemaType }
    }

    /// Plotly `Angle` data type represented as a Swift `Double`.
    struct Angle: SwiftType {
        let name: String = "Angle"
        let parent: Swift.Object?
        let schema: Schema.Angle
        var origin: SchemaType { schema as SchemaType }
    }

    /// Plotly `subplotid` data type is manually re-implemented in Swift.
    struct SubPlotID: SwiftType {
        let name: String = "SubPlotID"
        let parent: Swift.Object?
        let schema: Schema.SubPlotID
        var origin: SchemaType { schema as SchemaType }
    }

    /// Data type that maps Plotly `flaglist` to `OptionSet` from the Swift standard library.
    final class FlagList: SwiftSharedType {
        var name: String
        var shared: Bool = false
        var parent: Swift.Object?
        let schema: Schema.FlagList
        var origin: SchemaType { schema as SchemaType }
        var access: Swift.Access = .public
        var priority: Int { options.count }
        let protocols: [String] = []

        var instances: [Instance] = []
        static var existing: [Swift.FlagList] = []

        struct Option: Equatable {
            let label: String
            let rawValue: String
        }
        var options: [Option] = []

        var definition: [String] {
            var lines = [String]()

            lines += ["\(access)struct \(name): OptionSet, Encodable {"]
            lines += ["\(access)let rawValue: Int"].indented()
            lines += [""]
            for (i, option) in options.enumerated() {
                let property = "\(access)static var \(option.label): \(name)"
                let calculated = "\(name)(rawValue: 1 << \(i))"
                lines += ["\(property) { \(calculated) }"].indented()
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

        init(named name: String, parent: Swift.Object, schema flagList: Schema.FlagList) {
            self.name = Swift.name!.pascalCased(name)
            self.parent = parent
            self.schema = flagList
            Self.existing.append(self)

            options = schema.flags.map { sanitized($0) }
            if let extras = schema.extras {
                options += extras.map { sanitized(String(describing: $0)) }
            }
            workarounds()
        }

        /// Transforms Plotly schema flag values to valid Swift options.
        private func sanitized(_ string: String) -> Option {
            let sanitized = Swift.name!.flaglist[string]!
            return Option(label: sanitized, rawValue: string.escaped())
        }

        /// Post-processing hacks that avoid name collisions.
        private func workarounds() {
            switch name {
            case "HoverInfo":
                if options.contains(where: { $0.label == "theta" }) { name = "PolarHoverInfo" }
            default:
                return
            }
        }

        /// Checks for shareability by comparing names and options of the two `FlagList` types.
        func shareable(as other: Swift.FlagList) -> Bool {
            let nameAlmostEqual = self.name.almostEqual(to: other.name)
            let optionsEqual = self.options == other.options
            return nameAlmostEqual && optionsEqual
        }
    }

    /// Plotly `any` data type is manually re-implemented in Swift.
    /// - Note: Appended underscore prevents collision with the Swift built-in type.
    /// - Note: Name `Anything` prevents collision with the Swift built-in type `Any`.
    struct Any_: SwiftType {
        let name: String = "Anything"
        let parent: Swift.Object?
        let schema: Schema.Any_
        var origin: SchemaType { schema as SchemaType }
    }

    /// Plotly `any` data type is manually re-implemented in Swift.
    struct InfoArray: SwiftType {
        let name: String = "InfoArray"
        let parent: Swift.Object?
        var schema: Schema.InfoArray
        var origin: SchemaType { schema as SchemaType }
    }

    // TODO: Docs
    struct Generic: SwiftType {
        let name: String
        let parent: Swift.Object?
        let origin: SchemaType

        init(name: String, parent: Swift.Object, origin: SchemaType, constraint: String? = nil) {
            self.name = name
            self.parent = parent
            self.origin = origin

            parent.generics.append(name)
            if constraint != nil { parent.constraints.append("\(name): \(constraint!)") }
        }
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
