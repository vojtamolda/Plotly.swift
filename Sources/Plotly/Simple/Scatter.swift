/// Scatter plot.
/// Here is a simple example of a Plotly chart JSON created in Swift:
///
/// ```
/// let data = [
///     Scatter(x: [1, 2, 3], y: [3, 1, 6]), marker: Marker(color: RGB())),
///     Bar(x: [1, 2, 3], y: [3, 1, 6], name: "bar chart example"),
/// ]
/// let layout = Layout(title: "Simple example", xaxis:)
/// let figure = Figure(data: data, layout: layout)
/// figure.write(toFile: "figure.json", format: .JSON)
/// ```
struct Scatter: Codable {
    let type = "scatter"

    // The trace name appear as the legend item and on hover.
    var name: String?

    /// Specify whether the `Trace` is  drawn or not. It's also possible to only display the
    /// `Trace` in the legend.
    enum Visible: String, Codable {
        case yes = "true"
        case no = "false"
        case legendOnly = "legendonly"
    }
    /// Determines whether or not this trace is visible.
    var visible: Visible?

    /// Determines whether or not an item corresponding to this trace is shown in the legend.
    var showLegend: Bool?
    
    /// Sets the legend group for this trace. Traces part of the same legend group hide/show
    /// at the same time when toggling legend items.
    var legendGroup: String?

    /// Opacity of the trace between 0(fully transparent) and 1 (no transparency).
    var opacity: Float?

    /// Determines the drawing mode for the `Scatter` trace.
    enum Mode: String, Codable {
        case none = "none"
        case lines = "lines"
        case markers = "markers"
        case linesMarkers = "lines+markers"
        case linesMarkersText = "lines+markers+text"
    }
    /// Drawing mode option.
    var mode: Mode?

    /// Assigns id labels to each datum. These ids for object constancy of data points
    /// during animation. Should be an array of strings, not numbers or any other type.
    var ids: [String]?

    /// X coordinates data.
    var x: Array<Double>
    
    /// Y coordinates data.
    var y: Array<Double>
    
    /// Text elements associated with each (x, y) pair.
    var text: Array<String>?
    
    /// Specification of text position relative to (x,y) coordinates.
    enum TextPosition: String, Codable {
        case topLeft = "top left"
        case topCenter = "top center"
        case topRight = "top right"
        case middleLeft = "middle left"
        case middleCenter = "middle center"
        case middleRight = "middle right"
        case bottomLeft = "bottom left"
        case bottomCenter = "bottom center"
        case bottomRight = "bottom right"
    }
    /// Sets the positions of the `text` elements with respects to the (x,y) coordinates.
    var textPosition: TextPosition?
    
    /// TODO: Implementation
    var textTemplate: String?
    
    
    var hoverText: String?
}
