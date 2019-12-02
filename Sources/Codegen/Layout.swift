
struct Layout {
    let layoutAttributes: Swift.Struct

    init(schema: Schema.Layout) {
        layoutAttributes = Swift.Struct(identifier: "Layout", entries: schema.layoutAttributes)
    }

    func definition() -> [String] {
        return layoutAttributes.definition()
    }
}
