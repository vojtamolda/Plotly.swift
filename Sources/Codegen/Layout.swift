import Foundation


/// Swift struct corresponding to Plotly `layout`.
struct Layout: Definable {
    var layoutAttributes: Swift.Object

    var documentation: Markup {
        var markup = Markup(summary: "Specification of element arrangement on a `Figure` that applies to all traces.")
        markup.addCallout(seeAlso: layoutAttributes.path)
        return markup
    }
    var definition: [String] { layoutAttributes.definition }

    init(schema: Schema.Layout) {
        layoutAttributes = Swift.Object(named: "layout", schema: schema.layoutAttributes)!
        
        let sectionMark = Mark(label: "General")
        layoutAttributes.members.insert(sectionMark, at: 0)

        workarounds()
    }

    /// Post-processing hacks to remove obsolete members.
    private func workarounds() {
        let obsolete = ["radialAxis", "angularAxis", "orientation", "direction"]
        layoutAttributes.members.removeAllInstances(named: obsolete)
    }
}
