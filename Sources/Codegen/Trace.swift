import Foundation


struct Trace {
    var attributes: Swift.Struct

    init(identifier: String, schema: Schema.Trace) {
        attributes = Swift.Struct(identifier: identifier, entries: schema.attributes)
        attributes.description = schema.meta["description"] ?? ""
    }

    func definition() -> [String] {
        return attributes.definition()
    }

    func write(to url: URL)  {
        let contents = self.definition().joined(separator: "\n")
        try! contents.write(to: url, atomically: true, encoding: .utf8)
    }
}
