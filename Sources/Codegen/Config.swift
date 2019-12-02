import Foundation


struct Config {
    let attributes: Swift.Struct

    init(schema: [String: Schema.Entry]) {
        attributes = Swift.Struct(identifier: "Config", entries: schema)
    }

    func definition() -> [String] {
        return attributes.definition()
    }

    func write(to url: URL)  {
        let contents = self.definition().joined(separator: "\n")
        try! contents.write(to: url, atomically: true, encoding: .utf8)
    }
}
