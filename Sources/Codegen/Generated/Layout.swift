
/// Generated struct corresponding to Plotly `layout`.
struct Layout: Definable {
    var layoutAttributes: Generated.Object

    var documentation: Markup {
        var markup = Markup(summary: "Specification of element arrangement on a `Figure` that applies to all traces.")
        markup.addCallout(seeAlso: layoutAttributes.path)
        return markup
    }
    var definition: [String] { layoutAttributes.definition }

    init(schema: Schema.Layout) {
        layoutAttributes = Generated.Object(named: "layout", schema: schema.layoutAttributes)!
        workarounds()
    }

    /// Post-processing to remove obsolete members and add navigation marks.
    private func workarounds() {
        let obsolete = ["radialAxis", "angularAxis", "orientation", "direction"]
        layoutAttributes.members.removeAllInstances(named: obsolete)

        layoutAttributes.members.insert(Mark(label: "Design, Look and Feel"), at: 0)
        layoutAttributes.members.insert(Mark(label: "Templating and Events"), before: "dataRevision")
        layoutAttributes.members.insert(Mark(label: "User Interface"), before: "modeBar")
        layoutAttributes.members.insert(Mark(label: "User Interaction"), before: "clickMode")
        layoutAttributes.members.insert(Mark(label: "Subplots and Axes"), before: "grid")
        layoutAttributes.members.insert(Mark(label: "Labels and Shapes"), before: "shapes")
        layoutAttributes.members.insert(Mark(label: "Color Visualization"), before: "colorScale")
    }
}


fileprivate extension Array where Element == Definable {
    /// Inserts element before the `Instance` that matches the specified name.
    mutating func insert(_ element: Element, before instanceName: String) {
        if let instanceIndex = firstIndex(where: { ($0 as? Instance)?.name == instanceName }) {
            self.insert(element, at: index(before: instanceIndex))
        }
    }
}
