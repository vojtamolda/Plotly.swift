import Foundation


/// Swift struct corresponding to Plotly `layout`.
struct Layout {
    let layoutAttributes: Swift.Struct

    init(schema: Schema.Layout) {
        layoutAttributes = Swift.Struct(identifier: "Layout", entries: schema.layoutAttributes)
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
