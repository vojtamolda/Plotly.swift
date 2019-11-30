
struct Traces {

    struct Trace: SwiftDataType {
        let type: String = ""
        let identifier: String
        let schema: SchemaDataType?
        let attributes: Swift.Struct

        init(from trace: Schema.Trace) {
            identifier = type
            schema = trace
            attributes = Swift.Struct(identifier: identifier, entries: trace.attributes)
        }

        func definition() -> [String] {
            return attributes.definition()
        }
    }

    static func initialize(from traces: [String: Schema.Trace]) -> [String: Trace] {
        var retval: [String: Trace] = [:]
        for (identifier, traceSchema) in traces {
            retval[identifier] = Trace(from: traceSchema)
        }
        return retval
    }

}
