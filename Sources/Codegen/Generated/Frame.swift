
/// Generated struct corresponding to Plotly `frames`.
/// - Note: Removed plural -s ending to better match conventions in Swift.
struct Frame: Definable {
    let attributes: Generated.Object

    var documentation: Markup {
        Markup(summary: "TODO.")
    }

    var definition: [String] { attributes.definition }

    init(schema: Schema.Frames) {
        let (_, itemsEntry) = schema.entries.first { $0.identifier == "items" }!
        guard case let Schema.Entry.object(itemsSchema) = itemsEntry else {
            fatalError("Unable to locate frame/items entry.")
        }
        let (_, frameEntry) = itemsSchema.entries.first { $0.identifier == "frames_entry" }!
        guard case let Schema.Entry.object(frameSchema) = frameEntry else {
            fatalError("Unable to locate 'frame/items/frames_entry'")
        }

        attributes = Generated.Object(named: "frame", schema: frameSchema)!
        
        workarounds()
    }
    
    private func workarounds() {
        let data = attributes.members.firstInstance(named: "data")!
        let dataCustomEncoding = """
            var dataContainer = container.nestedUnkeyedContainer(forKey: .data)
            for trace in data { try trace.encode(to: dataContainer.superEncoder()) }
            """.lines()
        data.type = Generated.Override(of: data.type, as: "Trace",
                                       encoding: dataCustomEncoding)
        data.initialization = "[]"
        data.optional = false
        data.array = true
        
        let layout = attributes.members.firstInstance(named: "layout")!
        layout.type = Generated.Override(of: data.type, as: "Layout")
    }
}
