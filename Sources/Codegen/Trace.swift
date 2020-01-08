import Foundation


/// Swift struct corresponding to a Plotly `trace`.
struct Trace: Definable {
    let schema: Schema.Trace
    let attributes: Swift.Object

    var documentation: [String] {  schema.meta["description"]?.documentation() ?? [] }
    var definition: [String] { attributes.definition }

    init(identifier: String, schema: Schema.Trace, layout: inout Layout) {
        self.schema = schema

        attributes = Swift.Object(named: identifier, schema: schema.attributes)
        attributes.protocols = ["Trace"]

        let stringDummy = Schema.String_(codingPath: [], valType: "string", description: nil,
                                         editType: nil, role: nil, dflt: nil, noBlank: nil,
                                         strict: nil, values: nil, arrayOk: nil)
        let typeConst = Instance(of: Swift.String_(schema: stringDummy), named: "type")
        typeConst.constant = schema.type.escaped()
        typeConst.optional = false
        attributes.members.insert(typeConst, at: 0)

        let boolDummy = Schema.Boolean(codingPath: [], valType: "bool", description: nil,
                                       editType: nil, role: nil)
        let animatableConst = Instance(of: Swift.Boolean(schema: boolDummy), named: "animatable")
        animatableConst.constant = String(schema.animatable)
        animatableConst.optional = false
        attributes.members.insert(animatableConst, at: 1)

        if let entries = schema.layoutAttributes {
            let sectionMark = Mark(label: "\(attributes.name) Trace")
            layout.layoutAttributes.members.insert(sectionMark, at: 0)

            let layoutAttributes = Swift.Object(named: "layout", schema: entries)
            //layout.layoutAttributes.members.insert(contentsOf: layoutAttributes.members, at: 1)
        }
    }
}
