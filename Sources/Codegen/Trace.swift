import Foundation


/// Swift struct corresponding to a Plotly `trace`.
struct Trace {
    var attributes: Swift.Struct

    init(identifier: String, schema: Schema.Trace, layout: inout Layout) {
        attributes = Swift.Struct(identifier: identifier, entries: schema.attributes)
        if let description = schema.meta["description"] {
            attributes.documentation = description.documentation()
        }
        attributes.protocols = ["Trace"]

        let typeConst = Instance(identifier: "type", dataType: Swift.String_(schema: nil),
                const: schema.type.escaped(), optional: false)
        attributes.members.insert(typeConst, at: 0)

        let animatableConst = Instance(identifier: "animatable", dataType: Swift.Boolean(schema: nil),
                const: String(schema.animatable), optional: false)
        attributes.members.insert(animatableConst, at: 1)

        if let entries = schema.layoutAttributes {
            let sectionMark = Mark(label: "\(attributes.type) Trace")
            layout.layoutAttributes.members.insert(sectionMark, at: 0)

            let layoutAttributes = Swift.Struct(identifier: "layout", entries: entries)
            layout.layoutAttributes.members.insert(contentsOf: layoutAttributes.members, at: 1)
        }
    }

    /// Returns lines of Swift code that fully define the Trace struct and all of it's nested members.
    func definition() -> [String] {
        return attributes.definition()
    }

    /// Writes Swift code that defines the Trace struct to a URL.
    func write(to url: URL)  {
        let contents = self.definition().joined(separator: "\n")
        try! contents.write(to: url, atomically: true, encoding: .utf8)
    }
}
