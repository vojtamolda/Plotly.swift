import Foundation


/// Swift struct corresponding to Plotly `layout`.
struct Layout: Definable {
    var layoutAttributes: Swift.Object

    var documentation: [String] = []
    var definition: [String] { layoutAttributes.definition }

    init(schema: Schema.Layout) {
        layoutAttributes = Swift.Object(named: "layout", schema: schema.layoutAttributes)!
        
        let sectionMark = Mark(label: "General")
        layoutAttributes.members.insert(sectionMark, at: 0)

        workarounds()
    }

    /// Post-processing hacks to remove obsolete members.
    private func workarounds() {
        let obsolete: Set = ["radialAxis", "angularAxis", "orientation", "direction"]
        layoutAttributes.members = layoutAttributes.members.removedInstances(named: obsolete)
    }
}
