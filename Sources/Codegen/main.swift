import Foundation


/// Decodes Plotly JSON schema from `schemaFile` and writes files with corresponding Swift structures to `outputDirectory`.
func generateSwiftCode(from schemaFile: URL, to outputDirectory: URL, ordering orderFile: URL, naming nameFile: URL) {
    let orderData = try! Data(contentsOf: orderFile)
    Schema.order = try! JSONDecoder().decode(Order.self, from: orderData)

    let nameData = try! Data(contentsOf: nameFile)
    Schema.name = try! JSONDecoder().decode(Name.self, from: nameData)

    let schemaData = try! Data(contentsOf: schemaFile)
    let schema = try! JSONDecoder().decode(Schema.self, from: schemaData)

    let config = Config(schema: schema.config)
    var layout = Layout(schema: schema.layout)
    var traces = [Trace]()
    for (identifier, schema) in schema.traces.all {
        if let trace = Trace(identifier: identifier, schema: schema, layout: &layout) { traces += [trace] }
    }
    let shared = Shared()

    config.write(to: outputDirectory.appendingPathComponent("Config.swift"))
    layout.write(to: outputDirectory.appendingPathComponent("Layout.swift"))
    let tracesDirectory = outputDirectory.appendingPathComponent("Traces")
    for trace in traces {
        trace.write(to: tracesDirectory.appendingPathComponent("\(trace.attributes.base).swift"))
    }
    shared.write(to: outputDirectory.appendingPathComponent("Shared.swift"))
}


let (argc, args) = (CommandLine.argc, CommandLine.arguments)
let schemaFile = URL(fileURLWithPath: (argc > 1) ? args[1] : "./Assets/Plotly.json")
let orderFile = URL(fileURLWithPath: (argc > 2) ? args[2] : "./Assets/Order.json")
let nameFile = URL(fileURLWithPath: (argc > 3) ? args[3] : "./Assets/Name.json")
let outputDirectory = URL(fileURLWithPath: (argc > 4) ? args[4] : "../Plotly/", isDirectory: true)

generateSwiftCode(from: schemaFile, to: outputDirectory, ordering: orderFile, naming: nameFile)
