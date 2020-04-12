
/// Generated struct corresponding to Plotly `animation`.
struct Animation: Definable {
    let attributes: Generated.Object

    var documentation: Markup {
        Markup(summary: "TODO.")
    }

    var definition: [String] { attributes.definition }

    init(schema: Schema.Animation) {
        attributes = Generated.Object(named: "animation", schema: schema)!
    }
}
