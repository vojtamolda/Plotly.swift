import Foundation


/// Decodes  Plotly JSON schema from `schemaFile` and writes files with correspoding Swift structures to `outputDirectory`.
func generateSwiftCode(from schemaFile: URL, to outputDirectory: URL) {
    let data = try! Data(contentsOf: schemaFile)
    let schema = try! JSONDecoder().decode(Schema.self, from: data)

    let tracesDirectory = outputDirectory.appendingPathComponent("Trace")
    for (identifier, schema) in schema.traces {
        let trace = Trace(identifier: identifier, schema: schema)
        trace.write(to: tracesDirectory.appendingPathComponent("\(identifier.capitalized).swift"))
    }

    let layout = Layout(schema: schema.layout)
    layout.write(to: outputDirectory.appendingPathComponent("Layout.swift"))

    let config = Config(schema: schema.config)
    config.write(to: outputDirectory.appendingPathComponent("Config.swift"))
}


var schemaFile: URL
var outputDirectory: URL

if CommandLine.argc > 1 {
    schemaFile = URL(fileURLWithPath: CommandLine.arguments[1])
} else {
    schemaFile = URL(fileURLWithPath: "Sources/Codegen/Plotly.json")
}
if CommandLine.argc > 2 {
    outputDirectory = URL(fileURLWithPath: CommandLine.arguments[2], isDirectory: true)
} else {
    outputDirectory = URL(fileURLWithPath: "Sources/Plotly/Schema/", isDirectory: true)
}

generateSwiftCode(from: schemaFile, to: outputDirectory)
