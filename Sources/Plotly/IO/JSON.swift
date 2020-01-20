import Foundation


/// Functions for serializing `Figure` object to JavaScript Object Notation (JSON) compatible with _Plotly.js_ library.
struct JSON {

    /// Constructs _Plotly.js_ JSON serialization from provided `Figure` object.
    static func create(from figure: Figure, formatting: JSONEncoder.OutputFormatting = [])
        throws -> String {
        let encoder = JSONEncoder()
        encoder.outputFormatting = formatting
        encoder.nonConformingFloatEncodingStrategy = .convertToString(
            positiveInfinity: "null", negativeInfinity: "null", nan: "null")

        let figureEncoded = try encoder.encode(figure)
        let figureJson = String(data: figureEncoded, encoding: .utf8)!

        return figureJson
    }

}
