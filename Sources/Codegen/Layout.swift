import Foundation


/// Swift struct corresponding to Plotly `layout`.
struct Layout {
    var layoutAttributes: Swift.Struct

    init(schema: Schema.Layout) {
        layoutAttributes = Swift.Struct(named: "layout", schema: schema.layoutAttributes)

        let sectionMark = Mark(label: "General")
        layoutAttributes.members.insert(sectionMark, at: 0)
    }

    /// Returns lines of Swift code that fully define the Layout struct and all of it's nested members.
    func definition() -> [String] {
        return layoutAttributes.definition()
    }

    /// Writes Swift code that defines the Layout struct to a URL.
    func write(to url: URL)  {
        let contents = self.definition().joined(separator: "\n")
        try! contents.write(to: url, atomically: true, encoding: .utf8)
    }
}
