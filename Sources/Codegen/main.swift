import Foundation


func generateSwiftCode(from schemaFile: URL, to outputDirectory: URL) {
    let data = try! Data(contentsOf: schemaFile)
    let decoder = JSONDecoder()

    let schema = try! decoder.decode(Schema.self, from: data)

    //print(schema)
    print(schema.traces["scatter"]!.attributes["marker"])
//    let types = Swift.initializeTypes(schema.defs)
//    let traces = Traces(schema.traces, types)
//    let layout = Layout(schema.layout, types)
//    let config = Config(shecma.layout, types)
//
//    types.write(to: outputDirectory.appendingPathComponent("Types/"))
//    traces.write(to: outputDirectory.appendingPathComponent("Traces/"))
//    layout.write(to: outputDirectory.appendingPathComponent("Layout.swift"))
//    config.write(to: outputDirectory.appendingPathComponent("Config.swift"))
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
    outputDirectory = URL(fileURLWithPath: "Sorces/Plotly/Schema/", isDirectory: true)
}

generateSwiftCode(from: schemaFile, to: outputDirectory)
