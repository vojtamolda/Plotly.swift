import Foundation


/// Functions for converting `Trace` objects to JavaScript Object Notation (JSON) compatible with _Plotly.js_ library.
struct JSON {

    /// Constructs JSON representation from provided data `Trace` objects.
    static func create(from data: [Scatter], formatting: JSONEncoder.OutputFormatting = []) throws
        -> String {
        let encoder = JSONEncoder()
        encoder.outputFormatting = formatting

        let encodedData = try encoder.encode(data)
        let jsonData = String(data: encodedData, encoding: .utf8)!
        return jsonData
    }
    
    /// Decodes `Figure` object from provided JSON representation.
    static func decode(from json: Data) throws -> Figure {
        let decoder = JSONDecoder()
        let figure = try decoder.decode(Figure.self, from: json)
        return figure
    }
}
