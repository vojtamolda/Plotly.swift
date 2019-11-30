
struct Traces {

    class Trace: Swift.Struct {
        let schema: Schema.Trace?

        init(from trace: Schema.Trace) {
            schema = trace
            super.init(withIdentifier: trace.type, from: trace.attributes)
        }

        required init(withIdentifier identifier: String, from entries: [String : Schema.Entry]) {
            schema = nil
            super.init(withIdentifier: identifier, from: entries)
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
