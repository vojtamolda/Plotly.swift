import Foundation


/// Decodes Plotly JSON schema from `schemaFile` and writes files with corresponding Swift structures to `outputDirectory`.
func generateSwiftCode(from schemaFile: URL, to outputDirectory: URL, ordering orderFile: URL) {
    let orderData = try! Data(contentsOf: orderFile)
    Schema.order = try! JSONDecoder().decode(Order.self, from: orderData)

    let schemaData = try! Data(contentsOf: schemaFile)
    let schema = try! JSONDecoder().decode(Schema.self, from: schemaData)

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
var orderFile: URL
var outputDirectory: URL

if CommandLine.argc > 1 {
    schemaFile = URL(fileURLWithPath: CommandLine.arguments[1])
} else {
    schemaFile = URL(fileURLWithPath: "./Assets/Plotly.json")
}
if CommandLine.argc > 2 {
    orderFile = URL(fileURLWithPath: CommandLine.arguments[2])
} else {
    orderFile = URL(fileURLWithPath: "./Assets/Order.json")
}
if CommandLine.argc > 3 {
    outputDirectory = URL(fileURLWithPath: CommandLine.arguments[3], isDirectory: true)
} else {
    outputDirectory = URL(fileURLWithPath: "../Plotly/Schema/", isDirectory: true)
}

generateSwiftCode(from: schemaFile, to: outputDirectory, ordering: orderFile)
