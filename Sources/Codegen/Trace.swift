import Foundation


/// Swift struct corresponding to a Plotly `trace`.
struct Trace: Definable {
    var definition: [String] { attributes.definition }
    var attributes: Swift.Object

    init(identifier: String, schema: Schema.Trace, layout: inout Layout) {
        attributes = Swift.Object(named: identifier, schema: schema.attributes)
        if let description = schema.meta["description"] {
            attributes.documentation = description.documentation()
        }
        attributes.protocols = ["Trace"]

        let stringDummy = Schema.String_(codingPath: [], valType: "string", description: nil,
                                         editType: nil, role: nil, dflt: nil, noBlank: nil,
                                         strict: nil, values: nil, arrayOk: nil)
        let typeConst = Instance(named: "type", of: Swift.String_(schema: stringDummy),
                                 constant: schema.type.escaped(), optional: false)
        attributes.members.insert(typeConst, at: 0)

        let boolDummy = Schema.Boolean(codingPath: [], valType: "bool", description: nil,
                                       editType: nil, role: nil)
        let animatableConst = Instance(named: "animatable", of: Swift.Boolean(schema: boolDummy),
                                       constant: String(schema.animatable), optional: false)
        attributes.members.insert(animatableConst, at: 1)

        if let entries = schema.layoutAttributes {
            let sectionMark = Mark(label: "\(attributes.name) Trace")
            layout.layoutAttributes.members.insert(sectionMark, at: 0)

            let layoutAttributes = Swift.Object(named: "layout", schema: entries)
            //layout.layoutAttributes.members.insert(contentsOf: layoutAttributes.members, at: 1)
        }
    }
}
