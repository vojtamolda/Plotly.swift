
/// An enum functioning as a container for generated Swift data types.
///
/// Each generated Swift type corresponds to a predefined Plotly schema type. Generated types
/// are constructed from a schema type and implement additional functionality on top. Purpose
/// is to ultimately generate source code with Swift data structures capable of outputting
/// encoded representation. The encoded representation needs to map to a hierarchy that is
/// valid according to the Plotly schema definition to make the entire pipeline work.
enum Generated {

    /// Data type that maps hierarchical Plotly `object` to a Swift `struct`.
    final class Object: SharedGeneratedType {
        var name: String
        var shared: Bool = false
        var parent: Generated.Object?
        let schema: Predefined.Object
        var origin: PredefinedType { schema as PredefinedType }
        var access: Access = .public
        var priority: Int { members.count }
        var protocols: [String] = ["Encodable"]
        var generics: [Generated.Generic] = []

        var instances: [Instance] = []
        static var existing: [Generated.Object] = []

        var members: [Definable]
        var primitives: [String: Schema.Primitive]

        var frequentProperties: [String] = []
        var properties: [Instance] { members.compactMap { $0 as? Instance } }

        static private let ignored: [String] = ["_deprecated", "src", "impliedEdits"]
        private var shareable = true

        var definition: [String] {
            var lines = [String]()

            var protocols = self.protocols.joined(separator: ", ")
            if !protocols.isEmpty { protocols = ": \(protocols)" }

            var generics = self.generics.map { $0.name }.joined(separator: ", ")
            if !generics.isEmpty { generics = "<\(generics)>" }
            var constraints = self.generics.compactMap { $0.constraint }.joined(separator: ", ")
            if !constraints.isEmpty { constraints = " where \(constraints)" }

            lines += ["\(access)struct \(name)\(generics)\(protocols)\(constraints) {"]

            for member in members {
                lines += member.define(as: .inlined).indented()
                lines += [""]
            }

            lines += codingKeys.indented()
            lines += frequentInitFunction.indented()
            lines += fullInitFunction.indented()
            lines += encodeFunction.indented()

            lines += ["}"]
            return lines
        }

        private var codingKeys: [String] {
            if properties.filter({ $0.name != $0.origin.name }).isEmpty { return [] }

            var lines = [String]()
            lines += ["/// Decoding and encoding keys compatible with Plotly schema."]
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

        private var frequentInitFunction: [String] {
            if members.count < 10 { return [] }
            let frequentVariables = properties.filter { property in
                if property.type is Generated.Generic { return true }
                if frequentProperties.contains(property.name) { return true }
                return false
            }
            if frequentVariables.count < 2 { return [] }

            var markup = Markup(summary: "Creates `\(name)` object from the most frequently used properties.")
            markup.addCallout(parameters: frequentVariables)

            var lines = markup.text()
            let frequentArguments = frequentVariables.map { $0.argument + " = nil" }.joined(separator: ", ")
            lines += "\(access)init(\(frequentArguments)) {".wrapped(at: Markup.width).hanginglyIndented(2)
            lines += frequentVariables.map { "self.\($0.name) = \($0.name)" }.indented()
            lines += ["}", ""]
            return lines
        }

        private var fullInitFunction: [String] {
            let variables = properties.filter { $0.constant == nil }

            var markup = Markup(summary: "Creates `\(name)` object with specified properties.")
            markup.addCallout(parameters: variables)

            var lines = markup.text()
            let arguments = variables.map { $0.argument + " = nil" }.joined(separator: ", ")
            lines += "\(access)init(\(arguments)) {".wrapped(at: Markup.width).hanginglyIndented(2)
            lines += variables.map { "self.\($0.name) = \($0.name)" }.indented()
            lines += ["}", ""]
            return lines
        }

        private var encodeFunction: [String] {
            if generics.isEmpty { return [] }

            var lines = [String]()
            lines += ["/// Encodes the object in a format compatible with Plotly."]
            lines += ["\(access)func encode(to encoder: Encoder) throws {"]
            lines += ["var container = encoder.container(keyedBy: CodingKeys.self)"].indented()
            for prop in properties where !(prop.type is Generated.Generic) {
                lines += ["try container.encodeIfPresent(\(prop.name), forKey: .\(prop.name))"].indented()
            }
            for prop in properties where (prop.type is Generated.Generic) {
                lines += [""]
                lines += ["if let \(prop.name) = self.\(prop.name) {"].indented()
                lines += ["let \(prop.name)Encoder = container.superEncoder(forKey: .\(prop.name))"].indented(2)
                lines += ["try \(prop.name).encode(toPlotly: \(prop.name)Encoder)"].indented(2)
                lines += ["}"].indented()
            }
            lines += ["}", ""]
            return lines
        }

        init?(named name: String, parent: Generated.Object? = nil, schema object: Predefined.Object) {
            self.name = Schema.name!.pascalCased(name)
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
                let itemType = Generated.Object(named: itemSchema.name, parent: parent, schema: itemSchema)!
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
                        let dataArrayType = Generated.DataArray(parent: self, schema: dataArray)
                        members += [dataArrayType.instance(named: identifier)]
                    case .enumerated(let enumerated):
                        let enumeratedType = Generated.Enumerated(named: identifier, parent: self, schema: enumerated)
                        members += [enumeratedType.instance(named: identifier)]
                    case .boolean(let boolean):
                        let booleanType = Generated.Boolean(parent: self, schema: boolean)
                        members += [booleanType.instance(named: identifier)]
                    case .number(let number):
                        let numberType = Generated.Number(parent: self, schema: number)
                        members += [numberType.instance(named: identifier)]
                    case .integer(let integer):
                        let integerType = Generated.Integer(parent: self, schema: integer)
                        members += [integerType.instance(named: identifier)]
                    case .string(let string):
                        let stringType = Generated.String_(parent: self, schema: string)
                        members += [stringType.instance(named: identifier)]
                    case .color(let color):
                        let colorType = Generated.Color(parent: self, schema: color)
                        members += [colorType.instance(named: identifier)]
                    case .colorList(let colorList):
                        let colorListType = Generated.ColorList.init(parent: self, schema: colorList)
                        members += [colorListType.instance(named: identifier)]
                    case .colorScale(let colorScale):
                        let colorScaleType = Generated.ColorScale(parent: self, schema: colorScale)
                        members += [colorScaleType.instance(named: identifier)]
                    case .angle(let angle):
                        let angleType = Generated.Angle(parent: self, schema: angle)
                        members += [angleType.instance(named: identifier)]
                    case .subPlotId(let subPlotId):
                        let subPlotIdType = Generated.SubPlotID(parent: self, schema: subPlotId)
                        members += [subPlotIdType.instance(named: identifier)]
                    case .flagList(let flagList):
                        let flagListType = Generated.FlagList(named: identifier, parent: self, schema: flagList)
                        members += [flagListType.instance(named: identifier)]
                    case .any(let any):
                        let anyType = Generated.Any_(parent: self, schema: any)
                        members += [anyType.instance(named: identifier)]
                    case .infoArray(let infoArray):
                        let infoArrayType = Generated.InfoArray(parent: self, schema: infoArray)
                        members += [infoArrayType.instance(named: identifier)]
                    }
                case .object(let object):
                    if let nestedObjectType = Generated.Object(named: identifier, parent: self, schema: object) {
                        members += [nestedObjectType.instance(named: identifier)]
                    }
                }
            }
            workarounds()
        }

        /// Post-processing to avoid name collisions and disable sharing of some types where it's not desirable.
        private func workarounds() {
            switch name {
            case "Line":
                if members.containsInstance(named: "colorScale") { name = "Colored\(name)" }
                if members.containsInstance(named: "dash") { name = "Dashed\(name)" }
                if members.containsInstance(named: "smoothing") { name = "Smoothed\(name)" }
                if members.containsInstance(named: "shape") { name = "Spline\(name)" }

            case "Marker":
                if members.containsInstance(named: "symbol") { name = "SymbolicMarker" }
                if members.containsInstance(named: "gradient") { name = "GradientMarker" }

            case "Contour":
                if members.count == 3 { name = "ContourHover"}

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
                let useless = ["yCopyStyle", "zCopyStyle"]
                members.removeAllInstances(named: useless)

            default:
                break
            }

            let disabledSharing = ["Selected", "Unselected", "Increasing", "Decreasing"]
            if disabledSharing.contains(self.name) || disabledSharing.contains(self.parent?.name ?? "") {
                shareable = false
            }
        }

        /// Recursively compares objects and checks whether `other` consist of a superset of members.
        ///
        /// - Complexity: Worst case complexity is O(N * M) where N and M is the respective member
        /// count of each struct. A typical case, however, is much better because the first members
        /// of two non-identical structs are very likely to be different.
        func shareable(as other: Generated.Object) -> Bool {
            if !self.shareable || !other.shareable { return false }
            if !self.name.almostEqual(to: other.name) { return false }
            if self.members.count != other.members.count { return false }

            return self.members.allSatisfy { selfMember in
                other.members.contains { otherMember in
                    if let selfNestedObject = selfMember as? Object, let otherNestedObject = otherMember as? Object {
                        return selfNestedObject.shareable(as: otherNestedObject)
                    }
                    if let selfEnum = selfMember as? Enumerated, let otherEnum = otherMember as? Enumerated {
                        return selfEnum.shareable(as: otherEnum)
                    }
                    if let selfFlagList = selfMember as? FlagList, let otherFlagList = otherMember as? FlagList {
                        return selfFlagList.shareable(as: otherFlagList)
                    }
                    if let selfInstance = selfMember as? Instance, let otherInstance = otherMember as? Instance {
                        return selfInstance.shareable(as: otherInstance)
                    }
                    return false
                }
            }
        }
    }

    /// Data type that maps Plotly `data_array` to a numerical array in Swift.
    struct DataArray: GeneratedType {
        let name: String = "[Double]"
        let parent: Generated.Object?
        let schema: Predefined.DataArray
        var origin: PredefinedType { schema as PredefinedType }
    }

    /// Data type that maps Plotly `enumerated` to Swift `enum`.
    final class Enumerated: SharedGeneratedType {
        var name: String
        var shared: Bool = false
        var parent: Generated.Object?
        let schema: Predefined.Enumerated
        var origin: PredefinedType { schema as PredefinedType }
        var access: Access = .public
        var priority: Int { cases.count }
        var protocols: [String] = ["Encodable"]

        var instances: [Instance] = []
        static var existing: [Generated.Enumerated] = []

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
                let rawValue = (hasRawType && (`case`.rawValue != nil)) ? " = \(`case`.rawValue!)" : ""    
                lines += ["case \(`case`.label)\(rawValue)"].indented()
            }

            lines += customEncoding.indented()
            lines += ["}"]
            return lines
        }

        private var hasRawType: Bool {
            !schema.values.contains { if case Schema.Primitive.bool = $0 { return true } else { return false } }
        }

        private var customEncoding: [String] {
            if hasRawType { return [] }

            var lines = [String]()
            lines += [""]
            lines += ["\(access)func encode(to encoder: Encoder) throws {"]

            lines += ["var container = encoder.singleValueContainer()"].indented()
            lines += ["switch self {"].indented()

            for `case` in cases {
                let value = `case`.rawValue ?? `case`.label.escaped()
                lines += ["case .\(`case`.label):"].indented()
                lines += ["try container.encode(\(value))"].indented(2)
            }

            lines += ["}"].indented()
            lines += ["}"]
            return lines
        }

        init(named name: String, parent: Generated.Object, schema enumerated: Predefined.Enumerated) {
            self.name = Schema.name!.pascalCased(name)
            self.parent = parent
            self.schema = enumerated
            Self.existing.append(self)

            // Workaround for numerical values of `*Marker.Symbol`
            if schema.path.hasSuffix("marker/symbol") {
                protocols.insert("String", at: 0)
                let onlyStrings = schema.values.filter {
                    if case Schema.Primitive.string = $0 { return true } else { return false }
                }
                cases = onlyStrings.map { sanitized($0) }
                return
            }
            // Workaround for numerical values of `Geo.Resolution`
            if schema.path.hasSuffix("geo/resolution") {
                protocols.insert("Int", at: 0)
                cases = schema.values.map { primitive -> Case in
                    guard case let Schema.Primitive.int(int) = primitive else {
                        fatalError("Unsupported Geo Resolution value in '\(schema.path)'")
                    }
                    return Case(label: "oneOver\(int)M", rawValue: "\(int)")
                }
                return
            }
            // Improvement of meaningless numerical values of `SurfaceAxis`
            if schema.path.hasSuffix("surfaceaxis") {
                protocols.insert("Int", at: 0)
                cases = [Case(label: "none", rawValue: "-1"), Case(label: "x", rawValue: "0"),
                         Case(label: "y", rawValue: "1"), Case(label: "z", rawValue: "2")]
                return
            }

            if hasRawType { protocols.insert("String", at: 0) }
            cases = schema.values.map { sanitized($0) }
            workarounds()
        }

        /// Transforms Plotly schema primitive to a valid Swift case.
        private func sanitized(_ primitive: Schema.Primitive) -> Case {
            switch primitive {
            case .bool(let bool):
                let string = "\(bool)"
                let sanitized = Schema.name!.enumerated[string]!
                return Case(label: sanitized, rawValue: string)
            case .string(let string):
                let sanitized = Schema.name!.enumerated[string]!
                let rawValue = (sanitized == string) ? nil : string.escaped()
                return Case(label: sanitized, rawValue: rawValue)
            default:
                fatalError("Invalid enum case in '\(self.schema.path)'")
            }
        }

        /// Post-processing to avoid name collisions.
        private func workarounds() {
            switch name {
            case "Align":
                if cases.containsCase(labeled: "auto") { name = "AutoAlign" }
                if cases.containsCase(labeled: "center") { name = "HorizontalAlign" }
            case "XAnchor":
                if cases.containsCase(labeled: "auto") { name = "XAutoAnchor" }
            case "YAnchor":
                if cases.containsCase(labeled: "auto") { name = "YAutoAnchor" }
            case "TextPosition":
                if cases.containsCase(labeled: "auto") { name = "AdjacentPosition" }
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
                break
            }
        }

        /// Checks for share-ability by comparing names and cases of the two `Enumerated` types.
        func shareable(as other: Generated.Enumerated) -> Bool {
            if name == "`Type`" { return false }
            let nameAlmostEqual = self.name.almostEqual(to: other.name)
            let casesEqual = self.cases == other.cases
            return nameAlmostEqual && casesEqual
        }
    }

    /// Plotly `boolean` data type represented as a Swift `Bool`.
    struct Boolean: GeneratedType {
        let name: String = "Bool"
        let parent: Generated.Object?
        let schema: Predefined.Boolean
        var origin: PredefinedType { schema as PredefinedType }
    }

    /// Plotly `number` data type represented as a Swift `Double`.
    struct Number: GeneratedType {
        var name: String { (schema.arrayOk ?? false) ? "ArrayOrDouble" : "Double" }
        let parent: Generated.Object?
        let schema: Predefined.Number
        var origin: PredefinedType { schema as PredefinedType }
    }

    /// Plotly `integer` data type represented as a Swift `Int`.
    struct Integer: GeneratedType {
        var name: String { (schema.arrayOk ?? false) ? "ArrayOrInt" : "Int" }
        let parent: Generated.Object?
        let schema: Predefined.Integer
        var origin: PredefinedType { schema as PredefinedType }
    }

    /// Plotly `string` data type represented as a Swift `String`.
    ///
    /// - Note: Appended underscore prevents collision with the Swift built-in type.
    struct String_: GeneratedType {
        var name: String { (schema.arrayOk ?? false) ? "ArrayOrString" : "String" }
        let parent: Generated.Object?
        let schema: Predefined.String_
        var origin: PredefinedType { schema as PredefinedType }
    }

    /// Plotly `color` data type equivalent generated in Swift.
    struct Color: GeneratedType {
        var name: String { (schema.arrayOk ?? false) ? "ArrayOrColor" : "Color" }
        let parent: Generated.Object?
        let schema: Predefined.Color
        var origin: PredefinedType { schema as PredefinedType }
    }

    /// Plotly `colorlist` data type equivalent generated in Swift.
    struct ColorList: GeneratedType {
        let name: String = "ColorList"
        let parent: Generated.Object?
        let schema: Predefined.ColorList
        var origin: PredefinedType { schema as PredefinedType }
    }

    /// Plotly `colorscale` data type equivalent generated in Swift.
    ///
    /// - Note: `Layout.ColorScale` is renamed to `Layout.ColorMap` to prevent conflicts.
    struct ColorScale: GeneratedType {
        let name: String = "ColorScale"
        let parent: Generated.Object?
        let schema: Predefined.ColorScale
        var origin: PredefinedType { schema as PredefinedType }
    }

    /// Plotly `Angle` data type equivalent generated in Swift.
    struct Angle: GeneratedType {
        let name: String = "Angle"
        let parent: Generated.Object?
        let schema: Predefined.Angle
        var origin: PredefinedType { schema as PredefinedType }
    }

    /// Plotly `subplotid` data type equivalent generated in Swift.
    struct SubPlotID: GeneratedType {
        let name: String = "SubPlotID"
        let parent: Generated.Object?
        let schema: Predefined.SubPlotID
        var origin: PredefinedType { schema as PredefinedType }
    }

    /// Data type that maps Plotly `flaglist` to `OptionSet` from the Swift standard library.
    final class FlagList: SharedGeneratedType {
        var name: String
        var shared: Bool = false
        var parent: Generated.Object?
        let schema: Predefined.FlagList
        var origin: PredefinedType { schema as PredefinedType }
        var access: Access = .public
        var priority: Int { options.count }
        let protocols: [String] = []

        var instances: [Instance] = []
        static var existing: [Generated.FlagList] = []

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

        init(named name: String, parent: Generated.Object, schema flagList: Predefined.FlagList) {
            self.name = Schema.name!.pascalCased(name)
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
            let sanitized = Schema.name!.flaglist[string]!
            return Option(label: sanitized, rawValue: string.escaped())
        }

        /// Post-processing to avoid name collisions.
        private func workarounds() {
            switch name {
            case "HoverInfo":
                if options.containsOption(labeled: "theta") { name = "PolarHoverInfo" }
            default:
                break
            }
        }

        /// Checks for shareability by comparing names and options of the two `FlagList` types.
        func shareable(as other: Generated.FlagList) -> Bool {
            let nameAlmostEqual = self.name.almostEqual(to: other.name)
            let optionsEqual = self.options == other.options
            return nameAlmostEqual && optionsEqual
        }
    }

    /// Plotly `any` data type equivalent generated in Swift.
    ///
    /// - Note: Appended underscore and renaming to `Anything` prevents collision with
    /// the Swift built-in type.
    struct Any_: GeneratedType {
        var name: String { (schema.arrayOk ?? false) ? "ArrayOrAnything" : "Anything" }
        let parent: Generated.Object?
        let schema: Predefined.Any_
        var origin: PredefinedType { schema as PredefinedType }
    }

    /// Plotly `info_array` data type equivalent generated in Swift.
    struct InfoArray: GeneratedType {
        let name: String = "InfoArray"
        let parent: Generated.Object?
        var schema: Predefined.InfoArray
        var origin: PredefinedType { schema as PredefinedType }
    }
}


extension Generated {
    /// Generated data type that implements Swift generics (i.e. the `T` in `var a: Something<T>`)
    struct Generic: GeneratedType {
        let name: String
        let parent: Generated.Object?
        let origin: PredefinedType
        let `protocol`: String?

        var constraint: String? { (`protocol` != nil) ? "\(name): \(`protocol`!)" : nil }

        init(name: String, parent: Generated.Object, origin: PredefinedType, protocol: String? = nil) {
            self.name = name
            self.parent = parent
            self.origin = origin
            self.protocol = `protocol`

            parent.generics.append(self)
        }
    }

    /// Generated data type that manually overrides the `servant` data type with a string.
    struct Override: GeneratedType {
        let name: String
        let servant: GeneratedType

        var parent: Generated.Object? { servant.parent }
        var origin: PredefinedType { servant.origin }

        init(of servant: GeneratedType, as name: String) {
            self.name = name
            self.servant = servant
        }
    }
}


fileprivate extension Array where Iterator.Element == Definable {
    /// Checks whether the collection contains an `Instance` object with the specified name.
    func containsInstance(named name: String) -> Bool {
        firstInstance(named: name) != nil
    }
}

fileprivate extension Array where Iterator.Element == Generated.Enumerated.Case {
    /// Checks whether the collection contains a `Case` object with the specified label.
    func containsCase(labeled label: String) -> Bool {
        contains { $0.label == label }
    }
}

fileprivate extension Array where Iterator.Element == Generated.FlagList.Option {
    /// Checks whether the collection contains an `Option` object with the specified label.
    func containsOption(labeled label: String) -> Bool {
        contains { $0.label == label }
    }
}
