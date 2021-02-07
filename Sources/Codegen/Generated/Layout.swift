
/// Generated struct corresponding to Plotly `layout`.
struct Layout: Definable {
    var layoutAttributes: Generated.Object

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

    init(schema: Schema.Layout) {
        layoutAttributes = Generated.Object(named: "layout", schema: schema.layoutAttributes)!
        workarounds()
    }

    /// Post-processing to remove obsolete members and add navigation marks.
    private func workarounds() {
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
            layoutAttributes.members.transformToSubplotArray(named: subplot)
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

    /// Transforms the element with the specified name to a subplot array.
    mutating func transformToSubplotArray(named name: String) {
        if let instance = self.firstInstance(named: name) {
            instance.array = true
            instance.optional = false
            instance.initialization = "[]"

            if let instanceType = (instance.type as? Generated.Object) {
                instanceType.semantics = .reference

                let predefinedInteger = Predefined.Integer(codingPath: [Schema.Keys("uid")],
                    valType: "integer", description: nil, editType: nil, role: nil, dflt: nil, min: nil, max: nil, arrayOk: nil)
                let generatedInteger = Generated.Integer(parent: instanceType, schema: predefinedInteger)

                let idType = Generated.Override(of: generatedInteger, as: "UInt")
                let idInstance = Instance(of: idType, named: "uid")
                idInstance.constant = false
                idInstance.optional = false
                idInstance.exclude = true
                idInstance.initialization = "UInt.random(in: 2...UInt.max)"
                instanceType.members.insert(idInstance, at: 0)
            }
        }
    }
}
