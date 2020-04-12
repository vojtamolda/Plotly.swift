
/// Generated struct corresponding to one of Plotly `transforms`.
struct Transform: Definable {
    let schema: Schema.Transform
    let attributes: Generated.Object

    var documentation: Markup {
        var markup = Markup(
            summary: "Specification of \(attributes.base.lowercased()) operation on trace data."
        )
        markup.addCallout(seeAlso: schema.attributes.path)
        return markup
    }

    var definition: [String] { attributes.definition }

    init(identifier: String, schema: Schema.Transform) {
        self.schema = schema

        attributes = Generated.Object(named: identifier, schema: schema.attributes)!
        attributes.protocols = ["Transform"]
    }
}
