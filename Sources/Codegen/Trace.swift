import Foundation


/// Swift struct corresponding to a Plotly `trace`.
struct Trace {
    var attributes: Swift.Struct

    init(identifier: String, schema: Schema.Trace) {
        attributes = Swift.Struct(identifier: identifier, entries: schema.attributes)
        attributes.description = schema.meta["description"] ?? ""
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
