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
    }
}
