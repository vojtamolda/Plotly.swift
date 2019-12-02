
struct Config {
    let attributes: Swift.Struct

    init(schema: [String: Schema.Entry]) {
        attributes = Swift.Struct(identifier: "Config", entries: schema)
    }

    func definition() -> [String] {
        return attributes.definition()
    }
}
