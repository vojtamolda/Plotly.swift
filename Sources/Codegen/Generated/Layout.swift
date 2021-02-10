
/// Generated struct corresponding to Plotly `layout`.
struct Layout: Definable {
    var layoutAttributes: Generated.Object
    var subplotTypes: [Generated.Object]

    var documentation: Markup {
        var markup = Markup(summary: "Specification of element arrangement on a `Figure` that applies to all traces.")
        markup.addCallout(seeAlso: layoutAttributes.identifier)
        return markup
    }
    var definition: [String] {
        var lines = [String]()
        lines += layoutAttributes.definition.dropLast()
        lines += encodeFunction.indented()
        lines += ["}"]
        lines += subplotPresetExtensions
        return lines
    }

    private static var subplots = [
        "xAxis", "yAxis", "ternary", "scene", "geo", "mapbox", "polar", "colorAxis"
    ]

    private var encodeFunction: [String] {
        var lines = """
        /// Encodes the object in a format compatible with Plotly.
        \(layoutAttributes.access)func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            var axisContainer = encoder.container(keyedBy: AxisKeys.self)

        """.lines()

        for property in layoutAttributes.properties {
            if Self.subplots.contains(property.name) {
                lines += """
                for axis in self.\(property.name) {
                    try axisContainer.encode(axis, forKey: AxisKeys(.\(property.name), axis.uid))
                }
                """.lines().indented()
            } else {
                lines += property.type.encode(property, to: "container").indented()
            }
        }

        lines += """

            /// Convenience type that appends integer UID to a coding key.
            struct AxisKeys: CodingKey {
                var intValue: Int?
                var stringValue: String
            
                init(intValue: Int) {
                    self.intValue = intValue
                    self.stringValue = String(intValue)
                }
            
                init(stringValue: String) {
                    self.stringValue = stringValue
                }
            
                init(_ key: CodingKeys, _ uid: UInt) {
                    self.init(stringValue: key.rawValue + String(uid))
                }
            }
        }
        """.lines()
        return lines
    }
    
    private var subplotPresetExtensions: [String] {
        var lines = Mark(label: "Subplot Array Extensions").definition
        for subplotType in subplotTypes {
            lines.append(contentsOf: subplotType.arrayPresetExtension)
        }
        lines += [""]
        return lines
    }
    


    init(schema: Schema.Layout) {
        layoutAttributes = Generated.Object(named: "layout", schema: schema.layoutAttributes)!
        subplotTypes = []
        workarounds()
    }

    /// Post-processing to remove obsolete members and add navigation marks.
    private mutating func workarounds() {
        let obsolete = ["radialAxis", "angularAxis", "orientation", "direction"]
        layoutAttributes.members.removeAllInstances(named: obsolete)

        layoutAttributes.members.insert(Mark(label: "Design, Look and Feel"), before: "font")
        layoutAttributes.members.insert(Mark(label: "Templating and Events"), before: "dataRevision")
        layoutAttributes.members.insert(Mark(label: "User Interface"), before: "modeBar")
        layoutAttributes.members.insert(Mark(label: "User Interaction"), before: "clickMode")
        layoutAttributes.members.insert(Mark(label: "Subplots and Axes"), before: "grid")
        layoutAttributes.members.insert(Mark(label: "Legend, Labels and Shapes"), before: "legend")
        layoutAttributes.members.insert(Mark(label: "Color Visualization"), before: "colorScale")

        for subplot in Self.subplots {
            let subplotType = layoutAttributes.members.transformToSubplotArray(named: subplot)
            subplotTypes.append(subplotType!)
        }
    }
}


fileprivate extension Array where Element == Definable {
    /// Inserts element before the `Instance` that matches the specified name.
    mutating func insert(_ element: Element, before instanceName: String) {
        if let instanceIndex = firstIndex(where: { ($0 as? Instance)?.name == instanceName }) {
            self.insert(element, at: instanceIndex)
        }
    }

    /// Transforms the element with the specified name to a subplot array and returns the type.
    mutating func transformToSubplotArray(named name: String) -> Generated.Object?  {
        guard let instance = self.firstInstance(named: name) else { return nil }
        instance.initialization = "[]"
        instance.array = true
        instance.optional = false

        guard let instanceType = (instance.type as? Generated.Object) else { return nil }
        instanceType.shared = true
        instanceType.parent = nil
        instanceType.semantics = .reference
        instanceType.extensibility = .final
        instanceType.protocols.append("SubplotAxis")
        instanceType.frequentProperties = ["name", "title", "showGrid", "domain", "achor",
                                           "range", "ticks", "tickAngle"]

        // Add uid member with default random initialization
        let predefinedInt = Predefined.Integer(codingPath: [Schema.Keys("uid")],
            valType: "integer", description: nil, editType: nil, role: nil, dflt: nil,
            min: nil, max: nil, arrayOk: nil)
        let generatedInt = Generated.Integer(parent: instanceType, schema: predefinedInt)

        let idType = Generated.Override(of: generatedInt, as: "UInt")
        let idInstance = Instance(of: idType, named: "uid")
        idInstance.description = "Unique identifier of the axis."
        idInstance.initialization = "UInt.random(in: 2...UInt.max)"
        idInstance.constant = false
        idInstance.optional = false
        idInstance.exclude = true
        instanceType.members.insert(idInstance, at: 0)

        // Add preset static member
        let instanceTypeOverride = Generated.Override(of: instanceType, as: instanceType.name)
        
        let presetStaticInstance = Instance(of: instanceTypeOverride, named: "preset")
        presetStaticInstance.description = "Shared and preset default axis reference used to initialize layout and all traces."
        presetStaticInstance.initialization = .constant("\(instanceType.name)(uid: 1)")
        presetStaticInstance.stationary = true
        presetStaticInstance.constant = true
        presetStaticInstance.optional = false
        presetStaticInstance.exclude = true
        instanceType.members.append(presetStaticInstance)
        
        return instanceType
    }
}


fileprivate extension Generated.Object {
    var arrayPresetExtension: [String] {
        var lines = [String]()
        lines += ["extension Array where Element == \(identifier) {"]
        lines += frequentPresetFunction.indented()
        lines += [""]
        lines += fullPresetFunction.indented()
        lines += ["}", ""]
        return lines
    }

    private var frequentPresetFunction: [String] {
        if members.count < 10 { return [] }
        let frequentVariables = properties.filter { property in
            if property.type is Generated.Generic { return true }
            if frequentProperties.contains(property.name) { return true }
            return false
        }
        if frequentVariables.count < 2 { return [] }

        var markup = Markup(summary: "Preset default axis' customized with the most frequently used properties.")
        markup.addCallout(parameters: frequentVariables)

        var lines = markup.text()
        let frequentArguments = frequentVariables.map { $0.argument() }.joined(separator: ", ")
        lines += "\(access)static func preset(\(frequentArguments)) -> [\(identifier)] {"
            .wrapped(at: Markup.width).hanginglyIndented(2)

        lines += ["let axis = \(identifier)(uid: 1)"].indented()
        lines += frequentVariables.map { "axis.\($0.name) = \($0.name)" }.indented()
        lines += ["return [axis]"].indented()
        lines += ["}"]
        return lines
    }
    
    private var fullPresetFunction: [String] {
        let variables = properties.filter { !$0.constant && !$0.exclude }

        var markup = Markup(summary: "Preset default axis' customized with the specified properties.")
        markup.addCallout(parameters: variables)

        var lines = markup.text()
        let arguments = variables.map { $0.argument() }.joined(separator: ", ")
        lines += "\(access)static func preset(\(arguments)) -> [\(identifier)] {"
            .wrapped(at: Markup.width).hanginglyIndented(2)
        
        lines += ["let axis = \(identifier)(uid: 1)"].indented()
        lines += variables.map { "axis.\($0.name) = \($0.name)" }.indented()
        lines += ["return [axis]"].indented()
        lines += ["}"]
        return lines
    }
}
