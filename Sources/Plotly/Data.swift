
struct Scatter: Codable {
    enum Mode: String, Codable {
      case lines
      case markers
      case linesMarkers
    }

    let type = "scatter"
    var mode: Mode?

    var x: Array<Double>
    var y:  Array<Double>
    var text: Array<String>?
}
