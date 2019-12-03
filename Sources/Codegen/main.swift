import Foundation


func generateSwiftCode(from schemaFile: URL, to outputDirectory: URL) {
    let data = try! Data(contentsOf: schemaFile)
    let decoder = JSONDecoder()

    let schema = try! decoder.decode(Schema.self, from: data)
    print(schema)
}


var schemaFile: URL
var outputDirectory: URL

if CommandLine.argc > 1 {
    schemaFile = URL(fileURLWithPath: CommandLine.arguments[1])
} else {
    schemaFile = URL(fileURLWithPath: "./Plotly.json")
}
if CommandLine.argc > 2 {
    outputDirectory = URL(fileURLWithPath: CommandLine.arguments[2], isDirectory: true)
} else {
    outputDirectory = URL(fileURLWithPath: "../Plotly/Schema/", isDirectory: true)
}

generateSwiftCode(from: schemaFile, to: outputDirectory)
