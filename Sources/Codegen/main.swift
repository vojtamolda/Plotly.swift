import Foundation


/// Decodes Plotly JSON schema from `schemaFile` and writes files with corresponding Swift structures to `outputDirectory`.
func generateSwiftCode(from schemaFile: URL, to outputDirectory: URL, ordering orderFile: URL, naming nameFile: URL) {
    let orderData = try! Data(contentsOf: orderFile)
    Schema.order = try! JSONDecoder().decode(Order.self, from: orderData)

    let nameData = try! Data(contentsOf: nameFile)
    Schema.name = try! JSONDecoder().decode(Name.self, from: nameData)

    // Read and decode schema
    let schemaData = try! Data(contentsOf: schemaFile)
    let schema = try! JSONDecoder().decode(Schema.self, from: schemaData)

    // Generate types from the schema
    var layout = Layout(schema: schema.layout)
    let traces = schema.traces.all.compactMap { (identifier, schema) in
        Trace(identifier: identifier, schema: schema, layout: &layout)
    }
    let transforms = schema.transforms.all.map { (identifier, schema) in
        Transform(identifier: identifier, schema: schema)
    }
    let frame = Frame(schema: schema.frames)
    let animation = Animation(schema: schema.animation)
    let config = Config(schema: schema.config)

    // Detect shared data types
    let shared = Shared()

    // Write the generated data types
    layout.write(to: outputDirectory.appendingPathComponent("Layout.swift"))
    for trace in traces {
        let tracesDirectory = outputDirectory.appendingPathComponent("Traces")
        trace.write(to: tracesDirectory.appendingPathComponent("\(trace.attributes.base).swift"))
    }
    for transform in transforms {
        let transformsDirectory = outputDirectory.appendingPathComponent("Transforms")
        transform.write(to: transformsDirectory.appendingPathComponent("\(transform.attributes.base).swift"))
    }
    frame.write(to: outputDirectory.appendingPathComponent("Frame.swift"))
    animation.write(to: outputDirectory.appendingPathComponent("Animation.swift"))
    config.write(to: outputDirectory.appendingPathComponent("Config.swift"))

    shared.write(to: outputDirectory.appendingPathComponent("Shared.swift"))
}


let (argc, args) = (CommandLine.argc, CommandLine.arguments)
let schemaFile = URL(fileURLWithPath: (argc > 1) ? args[1] : "./Assets/Plotly.json")
let orderFile = URL(fileURLWithPath: (argc > 2) ? args[2] : "./Assets/Order.json")
let nameFile = URL(fileURLWithPath: (argc > 3) ? args[3] : "./Assets/Name.json")
let outputDirectory = URL(fileURLWithPath: (argc > 4) ? args[4] : "../Plotly/", isDirectory: true)

generateSwiftCode(from: schemaFile, to: outputDirectory, ordering: orderFile, naming: nameFile)
