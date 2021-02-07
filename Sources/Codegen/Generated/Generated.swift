
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
        var name: String {
            generics.isEmpty ? base : "\(base)<\(generics.map(\.name).joined(separator: ", "))>"
        }
        var shared: Bool = false
        var parent: Generated.Object?
        var origin: PredefinedType { schema as PredefinedType }
        var access: Access = .public
        var priority: Int { members.count }
        static var existing: [Generated.Object] = []
        var instances: [Instance] = []

        /// Stub of the object name without generics and parents (i.e. Scatter, XAxis, Font).
        var base: String
        /// Origin object decoded from the schema.
        let schema: Predefined.Object
        /// Switch indicating value (i.e struct) or reference (i.e. class) semantics.
        var semantics: Semantics = .value
        /// List of protocols the generated object conforms to.
        var protocols: [String] = ["Encodable"]
        /// List of types over which the generated object is generic.
        var generics: [Generated.Generic] = []
        
        /// Primitives from which the members are generated.
        var primitives: [String: Schema.Primitive]
        /// Members of the generated object. Besides `Instance` this includes `Markers` or other objects.
        var members: [Definable]

        /// List of the most frequently used properties for generating smaller, easier to understand initializer.
        var frequentProperties: [String] = []
        /// List of all properties of the generated object.
        var properties: [Instance] { members.compactMap { $0 as? Instance } }

        /// List of ignored primitives keys.
        static private let ignored: [String] = ["_deprecated", "src", "impliedEdits"]
        /// Flag indicating whether the object can be places in the `Shared` namespace.
        private var shareable = true

        var definition: [String] {
            var lines = [String]()

            var protocols = self.protocols.joined(separator: ", ")
            if !protocols.isEmpty { protocols = ": \(protocols)" }
            
            var constraints = self.generics.compactMap { $0.constraint }.joined(separator: ", ")
            if !constraints.isEmpty { constraints = " where \(constraints)" }

            lines += ["\(access)\(extensibility)\(semantics)\(name)\(protocols)\(constraints) {"]

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
            if properties.filter({ $0.name != $0.origin.name }).isEmpty && generics.isEmpty { return [] }

            var lines = [String]()
            lines += ["/// Decoding and encoding keys compatible with Plotly schema."]
            lines += ["enum CodingKeys: String, CodingKey {"]
            for property in properties where !property.exclude {
                if property.name == property.origin.name {
                    lines += ["case \(property.name)"].indented()
                } else {
                    lines += ["case \(property.name) = \(property.origin.name.escaped())"].indented()
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

            var markup = Markup(summary: "Creates `\(base)` object from the most frequently used properties.")
            markup.addCallout(parameters: frequentVariables)

            var lines = markup.text()
            let frequentArguments = frequentVariables.map { $0.argument(inContextOf: self) }.joined(separator: ", ")
            lines += "\(access)init(\(frequentArguments)) {"
                .wrapped(at: Markup.width).hanginglyIndented(2)
            lines += frequentVariables.map { "self.\($0.name) = \($0.name)" }.indented()
            lines += ["}", ""]
            return lines
        }

        private var fullInitFunction: [String] {
            let variables = properties.filter { !$0.constant && !$0.stationary }

            var markup = Markup(summary: "Creates `\(base)` object with specified properties.")
            markup.addCallout(parameters: variables)

            var lines = markup.text()
            let arguments = variables.map { $0.argument(inContextOf: self) }.joined(separator: ", ")
            lines += "\(access)init(\(arguments)) {"
                .wrapped(at: Markup.width).hanginglyIndented(2)
            lines += variables.map { "self.\($0.name) = \($0.name)" }.indented()
            lines += ["}", ""]
            return lines
        }

        private var encodeFunction: [String] {
            let encodeOverrides = properties.compactMap { $0.type as? Generated.Override }.filter { $0.encoding != nil }
            if generics.isEmpty && encodeOverrides.isEmpty {
                return []
            }
            var lines = """
            /// Encodes the object in a format compatible with Plotly.
            \(access)func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
            """.lines()

            for property in properties where !property.exclude {
                lines += property.type.encode(property, to: "container").indented()
            }

            lines += """
            }
            """.lines()
            return lines
        }

        init?(named name: String, parent: Generated.Object? = nil, schema object: Predefined.Object) {
            self.base = Schema.name!.pascalCased(name)
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
                        members += [dataArrayType.instantiate(name: identifier)]
                    case .enumerated(let enumerated):
                        let enumeratedType = Generated.Enumerated(named: identifier, parent: self, schema: enumerated)
                        members += [enumeratedType.instance(named: identifier)]
                    case .boolean(let boolean):
                        let booleanType = Generated.Boolean(parent: self, schema: boolean)
                        members += [booleanType.instantiate(name: identifier)]
                    case .number(let number):
                        let numberType = Generated.Number(parent: self, schema: number)
                        members += [numberType.instantiate(name: identifier)]
                    case .integer(let integer):
                        let integerType = Generated.Integer(parent: self, schema: integer)
                        members += [integerType.instantiate(name: identifier)]
                    case .string(let string):
                        let stringType = Generated.String_(parent: self, schema: string)
                        members += [stringType.instantiate(name: identifier)]
                    case .color(let color):
                        let colorType = Generated.Color(parent: self, schema: color)
                        members += [colorType.instantiate(name: identifier)]
                    case .colorList(let colorList):
                        let colorListType = Generated.ColorList.init(parent: self, schema: colorList)
                        members += [colorListType.instantiate(name: identifier)]
                    case .colorScale(let colorScale):
                        let colorScaleType = Generated.ColorScale(parent: self, schema: colorScale)
                        members += [colorScaleType.instantiate(name: identifier)]
                    case .angle(let angle):
                        let angleType = Generated.Angle(parent: self, schema: angle)
                        members += [angleType.instantiate(name: identifier)]
                    case .subplotID(let subplotID):
                        let subplotIDType = Generated.SubplotID(parent: self, schema: subplotID)
                        members += [subplotIDType.instantiate(name: identifier)]
                    case .flagList(let flagList):
                        let flagListType = Generated.FlagList(named: identifier, parent: self, schema: flagList)
                        members += [flagListType.instance(named: identifier)]
                    case .any(let any):
                        let anyType = Generated.Any_(parent: self, schema: any)
                        members += [anyType.instantiate(name: identifier)]
                    case .infoArray(let infoArray):
                        let infoArrayType = Generated.InfoArray(parent: self, schema: infoArray)
                        members += [infoArrayType.instantiate(name: identifier)]
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
            case "Font":
                fallthrough
            case "TextFont":
                fallthrough
            case "InsideTextFont":
                fallthrough
            case "OutSideTextFont":
                if members.containsInstance(named: "coloring") { base = "VariableFont" }

            case "Line":
                if members.containsInstance(named: "colorScale") {
                    base = "MarkerLine"
                } else if members.containsInstance(named: "coloring") {
                    base = "VariableLine"
                }
                if members.containsInstance(named: "dash") { base = "Dashed\(name)" }
                if members.containsInstance(named: "smoothing") { base = "Smooth\(name)" }
                if members.containsInstance(named: "shape") { base = "Shaped\(name)" }

            case "Marker":
                if members.containsInstance(named: "symbol") { base = "SymbolicMarker" }
                if members.containsInstance(named: "gradient") { base = "GradientMarker" }

            case "Contour":
                if members.count == 3 { base = "ContourHover"}

            case "XBins":
                fallthrough
            case "YBins":
                base = "Bins"

            case "XError":
                fallthrough
            case "YError":
                fallthrough
            case "ZError":
                base = "Error"
                let useless = ["yCopyStyle", "zCopyStyle"]
                members.removeAllInstances(named: useless)

            case "Title":
                if members.containsInstance(named: "side") { base = "LegendTitle" }

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
            if !self.base.almostEqual(to: other.base) { return false }
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

        enum Case: Equatable {
            case regular(label: String, rawValue: String?)
            case axis(xy: String)

            var label: String {
                switch self {
                case .regular(let label, _):
                    return label
                case .axis(let xy):
                    return xy
                }
            }

            init(label: String, rawValue: String? = nil) {
                self = .regular(label: label, rawValue: rawValue)
            }
        }
        var cases: [Case] = []

        enum RawType: String, CustomStringConvertible {
            case none = "", int = "Int, ", string = "String, "
            var description: String { self.rawValue }
        }
        private var rawType: RawType = .string

        var definition: [String] {
            let protocols = self.protocols.joined(separator: ", ")
            var lines = ["\(access)enum \(name): \(rawType)\(protocols) {"]

            for `case` in cases {
                switch `case` {
                case .regular(let label, let rawValue):
                    let equalTo = (rawType != .none && (rawValue != nil)) ? " = \(rawValue!)" : ""
                    lines += ["case \(label)\(equalTo)"].indented()
                case .axis(let xy):
                    lines += ["case \(xy)Axis(\(xy.capitalized)Axis)"].indented()
                }
            }

            lines += customEncoding.indented()
            lines += ["}"]
            return lines
        }

        private var customEncoding: [String] {
            if rawType != .none { return [] }

            var lines = """

            \(access)func encode(to encoder: Encoder) throws {
                var container = encoder.singleValueContainer()
                switch self {
            """.lines()

            for `case` in cases {
                switch `case` {
                case .regular(let label, let rawValue):
                    lines += """
                    case .\(label):
                        try container.encode(\(rawValue ?? label.escaped()))
                    """.lines().indented()
                case .axis(let xy):
                    lines += """
                    case .\(xy)Axis(let axis):
                        try container.encode("\(xy)\\(axis.uid)")
                    """.lines().indented()
                }
            }

            lines += """
                }
            }
            """.lines()
            return lines
        }

        init(named name: String, parent: Generated.Object, schema enumerated: Predefined.Enumerated) {
            self.name = Schema.name!.pascalCased(name)
            self.parent = parent
            self.schema = enumerated
            Self.existing.append(self)

            cases = schema.values.compactMap { sanitized($0) }
            workarounds()
        }

        /// Transforms Plotly schema primitive to a valid Swift case.
        private func sanitized(_ primitive: Schema.Primitive) -> Case? {
            switch primitive {
            case .bool(let bool):
                rawType = .none
                let string = "\(bool)"
                let sanitized = Schema.name!.enumerated[string]!
                return Case(label: sanitized, rawValue: string)
            case .int(let int):
                rawType = .none
                let string = "\(int)"
                return Case(label: string, rawValue: string)
            case .string(let string):
                if Int(string) != nil { return nil }
                let sanitized = Schema.name!.enumerated[string]!
                let rawValue = (sanitized == string) ? nil : string.escaped()
                return Case(label: sanitized, rawValue: rawValue)
            default:
                fatalError("Invalid enum case in '\(self.schema.path)'")
            }
        }

        /// Post-processing to avoid name collisions and fix weird corner cases.
        private func workarounds() {
            switch name {
            case "Align":
                if cases.containsCase(labeled: "auto") { name = "AutoAlign" }
                if cases.containsCase(labeled: "center") { name = "HorizontalAlign" }
            case "Layer":
                if cases.containsCase(labeled: "above") { name = "ShapeLayer" }
                if cases.containsCase(labeled: "aboveTraces") { name = "AxisLayer" }
            case "XAnchor":
                if cases.containsCase(labeled: "auto") { name = "XAutoAnchor" }
            case "YAnchor":
                if cases.containsCase(labeled: "auto") { name = "YAutoAnchor" }
            case "TextPosition":
                if cases.containsCase(labeled: "auto") { name = "AdjacentPosition" }
            case "CategoryOrder":
                if cases.count == 4 { name = "CarpetCategoryOrder"}
            case "Side":
                if parent?.base == "Title" && !cases.containsCase(labeled: "right") {
                    cases.append(Case(label: "right"))
                }
            case "Resolution":
                rawType = .int
                cases = schema.values.map { primitive -> Case in
                    guard case let Schema.Primitive.int(int) = primitive else {
                        fatalError("Unsupported Geo Resolution value in '\(schema.path)'")
                    }
                    return Case(label: "oneOver\(int)M", rawValue: "\(int)")
                }
            case "SurfaceAxis":
                rawType = .int
                cases = [
                    Case(label: "off", rawValue: "-1"), Case(label: "x", rawValue: "0"),
                    Case(label: "y", rawValue: "1"), Case(label: "z", rawValue: "2")
                ]
            case "Symbol":
                rawType = .string
                let onlyStrings = schema.values.filter {
                    if case Schema.Primitive.string = $0 { return true } else { return false }
                }
                cases = onlyStrings.compactMap { sanitized($0) }
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

            if cases.containsCase(labeled: "xSubplotID") {
                let index = cases.firstIndex { $0.label == "xSubplotID" }!
                cases[index] = .axis(xy: "x")
                rawType = .none
            }
            if cases.containsCase(labeled: "ySubplotID") {
                let index = cases.firstIndex { $0.label == "ySubplotID" }!
                cases[index] = .axis(xy: "y")
                rawType = .none
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
        var name: String { (schema.arrayOk ?? false) ? "Data<Double>" : "Double" }
        let parent: Generated.Object?
        let schema: Predefined.Number
        var origin: PredefinedType { schema as PredefinedType }
    }

    /// Plotly `integer` data type represented as a Swift `Int`.
    struct Integer: GeneratedType {
        var name: String { (schema.arrayOk ?? false) ? "Data<Int>" : "Int" }
        let parent: Generated.Object?
        let schema: Predefined.Integer
        var origin: PredefinedType { schema as PredefinedType }
    }

    /// Plotly `string` data type represented as a Swift `String`.
    ///
    /// - Note: Appended underscore prevents collision with the Swift built-in type.
    struct String_: GeneratedType {
        var name: String { (schema.arrayOk ?? false) ? "Data<String>" : "String" }
        let parent: Generated.Object?
        let schema: Predefined.String_
        var origin: PredefinedType { schema as PredefinedType }
    }

    /// Plotly `color` data type equivalent generated in Swift.
    struct Color: GeneratedType {
        var name: String { (schema.arrayOk ?? false) ? "Coloring" : "Color" }
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
    /// - Note: `ColorScale` is renamed to `ColorMap` to prevent conflicts.
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
    ///
    /// Swift implementation of subplots holds a weak reference to a corresponding type
    /// from the `Layout` struct. Encoding outputs a unique string reference instead of
    /// the actual data structure. The reference is used by JavaScript to pair traces
    /// with their subplots.
    struct SubplotID: GeneratedType {
        var name: String {
            switch kind {
            case .xAxis:
                return "XAxis"
            case .yAxis:
                return "YAxis"
            case .ternary:
                return "Ternary"
            case .scene:
                return "Scene"
            case .geo:
                return "Geo"
            case .mapbox:
                return "Mapbox"
            case .polar:
                return "Polar"
            case .colorAxis:
                return "ColorAxis"
            }
        }
        let parent: Generated.Object?
        let schema: Predefined.SubplotID
        var origin: PredefinedType { schema as PredefinedType }

        enum Kind {
            case xAxis, yAxis, ternary, scene, geo, mapbox, polar, colorAxis
        }
        private let kind: Kind

        init(parent: Generated.Object, schema: Predefined.SubplotID) {
            self.parent = parent
            self.schema = schema

            switch schema.dflt {
            case "x":
                kind = .xAxis
            case "y":
                kind = .yAxis
            case "ternary":
                kind = .ternary
            case "scene":
                kind = .scene
            case "geo":
                kind = .geo
            case "mapbox":
                kind = .mapbox
            case "polar":
                kind = .polar
            default:
                if schema.regex == "/^coloraxis([2-9]|[1-9][0-9]+)?$/" {
                    kind = .colorAxis
                } else {
                    fatalError("Unsupported subplot type in '\(schema.path)'")
                }
            }
        }

        /// Creates instance initialized to the default `preset` subplot.
        func instantiate(name: String, array: Bool = false) -> Instance {
            let instance = Instance(of: self, named: name, array: array)
            instance.optional = false
            instance.initialization = ".preset"
            return instance
        }

        /// Generates a chunk of Swift code that encodes only a reference to the corresponding axis/subplot.
        func encode(_ instance: Instance, to container: String = "container") -> [String] {
            var prefix: String = ""
            switch kind {
            case .xAxis:
                prefix = "x"
            case .yAxis:
                prefix = "y"
            case .ternary:
                prefix = "ternary"
            case .scene:
                prefix = "scene"
            case .geo:
                prefix = "geo"
            case .mapbox:
                prefix = "mapbox"
            case .polar:
                prefix = "polar"
            case .colorAxis:
                prefix = "coloraxis"
            }
            let reference = "\"\(prefix)\\(\(instance.name).uid)\""
            return ["try \(container).encode(\(reference), forKey: .\(instance.name))"]
        }
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
            var lines = """
            \(access)struct \(name): OptionSet, Encodable {
                \(access)let rawValue: Int

            """.lines()

            for (i, option) in options.enumerated() {
                let property = "\(access)static var \(option.label): \(name)"
                let calculated = "\(name)(rawValue: 1 << \(i))"
                lines += ["\(property) { \(calculated) }"].indented()
            }

            lines += """
                
                \(access)init(rawValue: Int) {
                    self.rawValue = rawValue
                }
                
                \(access)func encode(to encoder: Encoder) throws {
                    var options = [String]()
            """.lines()

            for (i, option) in options.enumerated() {
                lines += ["if (self.rawValue & 1 << \(i)) != 0 { options += [\(option.rawValue)] }"].indented(2)
            }

            lines += """
                    var container = encoder.singleValueContainer()
                    try container.encode(options.joined(separator: \"+\"))
                }
            }

            """.lines()
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
        var name: String { (schema.arrayOk ?? false) ? "Data<Anything>" : "Anything" }
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

        /// Generates a chunk of Swift code that encodes an instance of all Swift types that conform to `Plotable`.
        func encode(_ instance: Instance, to container: String = "container") -> [String] {
            let superEncoder = "\(container).superEncoder(forKey: .\(instance.name))"
            return """
            if let \(instance.name) = self.\(instance.name) {
                try \(instance.name).encode(toPlotly: \(superEncoder))
            }
            """.lines()
        }
    }

    /// Generated data type that manually overrides the `servant` data type with a string.
    struct Override: GeneratedType {
        let name: String
        let servant: GeneratedType
        let encoding: [String]?

        var parent: Generated.Object? { servant.parent }
        var origin: PredefinedType { servant.origin }

        init(of servant: GeneratedType, as name: String, encoding: [String]? = nil) {
            self.name = name
            self.servant = servant
            self.encoding = encoding
        }
        
        /// Generates a chunk of Swift code that encodes an instance of all Swift types that conform to `Encodable`.
        func encode(_ instance: Instance, to container: String = "container") -> [String] {
            if encoding != nil { return encoding! }
            if instance.optional {
                return ["try \(container).encodeIfPresent(\(instance.name), forKey: .\(instance.name))"]
            } else {
                return ["try \(container).encode(\(instance.name), forKey: .\(instance.name))"]
            }
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
