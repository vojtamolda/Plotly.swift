import Foundation


/// Swift struct corresponding to Plotly `config`.
struct Config {
    let attributes: Swift.Struct

    init(schema: Schema.Entries) {
        attributes = Swift.Struct(named: "config", schema: schema)
    }

    /// Returns lines of Swift code that fully define the Config struct and all of it's nested members.
    func definition() -> [String] {
        return attributes.definition()
    }

    /// Writes Swift code that defines the Config struct to a URL.
    func write(to url: URL)  {
        let contents = self.definition().joined(separator: "\n")
        try! contents.write(to: url, atomically: true, encoding: .utf8)
    }
}
