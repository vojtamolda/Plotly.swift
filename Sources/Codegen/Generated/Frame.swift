
/// Generated struct corresponding to Plotly `frames`.
/// - Note: Removed plural -s ending to better match conventions in Swift.
struct Frame: Definable {
    let attributes: Generated.Object

    var documentation: Markup {
        Markup(summary: "TODO.")
    }

    var definition: [String] { attributes.definition }

    init(schema: Schema.Frames) {
        let (_, itemsEntry) = schema.entries.first!
        guard case let Schema.Entry.object(itemsSchema) = itemsEntry else {
            fatalError("TODO")
        }
        let (_, frameEntry) = itemsSchema.entries.first!
        guard case let Schema.Entry.object(frameSchema) = frameEntry else {
            fatalError("TODO")
        }

        attributes = Generated.Object(named: "frame", schema: frameSchema)!
    }
}
