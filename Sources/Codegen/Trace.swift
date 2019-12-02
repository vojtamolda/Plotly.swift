
struct Trace {
    let description: String
    let attributes: Swift.Struct

    init(identifier: String, schema: Schema.Trace) {
        description = schema.meta["description"] ?? ""
        attributes = Swift.Struct(identifier: identifier, entries: schema.attributes)
    }

    func definition() -> [String] {
        return attributes.definition()
    }

    static func initialize(schema: [String: Schema.Trace]) -> [String: Trace] {
        var retval: [String: Trace] = [:]
        for (identifier, schema) in schema {
            retval[identifier] = Trace(identifier: identifier, schema: schema)
        }
        return retval
    }
}
