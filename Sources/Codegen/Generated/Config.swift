
/// Generated struct corresponding to Plotly `config`.
struct Config: Definable {
    let attributes: Generated.Object

    var documentation: Markup {
        var markup = Markup(summary: "Set of choices that affect user interface, toolbar and backend interactions.")
        markup.addCallout(seeAlso: attributes.path)
        return markup
    }
    var definition: [String] { attributes.definition }

    init(schema: Schema.Config) {
        attributes = Generated.Object(named: "config", schema: schema)!
    }
}
