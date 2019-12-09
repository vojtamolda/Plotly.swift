import Foundation


/// Decodes Plotly JSON schema from `schemaFile` and writes files with corresponding Swift structures to `outputDirectory`.
func generateSwiftCode(from schemaFile: URL, to outputDirectory: URL, ordering orderFile: URL, naming nameFile: URL) {
    let orderData = try! Data(contentsOf: orderFile)
    Schema.order = try! JSONDecoder().decode(Order.self, from: orderData)

    let nameData = try! Data(contentsOf: nameFile)
    Swift.name = try! JSONDecoder().decode(Name.self, from: nameData)

    let schemaData = try! Data(contentsOf: schemaFile)
    let schema = try! JSONDecoder().decode(Schema.self, from: schemaData)

    let tracesDirectory = outputDirectory.appendingPathComponent("Traces")
    for (identifier, schema) in schema.traces {
        let trace = Trace(identifier: identifier, schema: schema)
        trace.write(to: tracesDirectory.appendingPathComponent("\(trace.attributes.type).swift"))
    }

    let layout = Layout(schema: schema.layout)
    layout.write(to: outputDirectory.appendingPathComponent("Layout.swift"))

    let config = Config(schema: schema.config)
    config.write(to: outputDirectory.appendingPathComponent("Config.swift"))
}


let (argc, args) = (CommandLine.argc, CommandLine.arguments)
let schemaFile = URL(fileURLWithPath: (argc > 1) ? args[1] : "./Assets/Plotly.json")
let orderFile = URL(fileURLWithPath: (argc > 2) ? args[2] : "./Assets/Order.json")
let nameFile = URL(fileURLWithPath: (argc > 3) ? args[3] : "./Assets/Name.json")
let outputDirectory = URL(fileURLWithPath: (argc > 4) ? args[4] : "../Plotly/Schema/", isDirectory: true)

generateSwiftCode(from: schemaFile, to: outputDirectory, ordering: orderFile, naming: nameFile)
