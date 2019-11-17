import Foundation


/// Functions for serializing `Figure` object to JavaScript Object Notation (JSON) compatible with _Plotly.js_ library.
struct JSON {

    /// Constructs _Plotly.js_ JSON serialization from provided `Figure` object.
    static func create(from figure: Figure, formatting: JSONEncoder.OutputFormatting = [])
        throws -> (data: String, layout: String, config: String) {

        let encoder = JSONEncoder()
        encoder.outputFormatting = formatting
        
        let dataEncoded = try encoder.encode(figure.data)
        let dataJSON = String(data: dataEncoded, encoding: .utf8)!
        
        let layoutEncoded = try encoder.encode(figure.layout)
        let layoutJSON = String(data: layoutEncoded, encoding: .utf8)!
            
        let configEncoded = try encoder.encode(figure.config)
        let configJSON = String(data: configEncoded, encoding: .utf8)!
            
        return (data: dataJSON, layout: layoutJSON, config: configJSON)
    }

    /// Decodes `Figure` object from provided _Plotly.js_ JSON serialization.
    static func decode(from json: Data) throws -> Figure {
        let decoder = JSONDecoder()
        let figure = try decoder.decode(Figure.self, from: json)
        return figure
    }
}
