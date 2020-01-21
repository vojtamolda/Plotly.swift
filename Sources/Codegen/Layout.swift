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
        layoutAttributes.members = layoutAttributes.members.filter { ($0 as? Instantiable)?.name != "radialAxis" }
        layoutAttributes.members = layoutAttributes.members.filter { ($0 as? Instantiable)?.name != "angularAxis" }
        layoutAttributes.members = layoutAttributes.members.filter { ($0 as? Instantiable)?.name != "orientation" }
        layoutAttributes.members = layoutAttributes.members.filter { ($0 as? Instantiable)?.name != "direction" }
    }
}
