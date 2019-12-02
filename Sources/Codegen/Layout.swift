import Foundation


struct Layout {
    let layoutAttributes: Swift.Struct

    init(schema: Schema.Layout) {
        layoutAttributes = Swift.Struct(identifier: "Layout", entries: schema.layoutAttributes)
    }

    func definition() -> [String] {
        return layoutAttributes.definition()
    }

    func write(to url: URL)  {
        let contents = self.definition().joined(separator: "\n")
        try! contents.write(to: url, atomically: true, encoding: .utf8)
    }

}
