import Foundation


/// Swift representation of a _Plotly.js_ chart.
///
/// _Plotly.js_ charts are described declaratively as JSON objects. Every aspect of a plotly chart
/// (the colors, the grids, the data, and so on) has a corresponding JSON attribute. Exhaustive
/// list of the attributes can be found in the
/// [documentation](https://plot.ly/javascript/reference/page)
///
/// Plotly's graph description places attributes into two categories: traces (objects that describe
/// a single series of data in a graph) and layout (attributes that apply to the rest of the chart,
/// like the title, xaxis, or annotations). Traces are categorized by chart type (e.g. scatter,
/// heatmap, ...).
///
/// Here is a simple example of a Scatter plot chart:
/// ```
/// let data = [
///     Scatter(
///         name: "Example scatter plot",
///         mode: .linesMarkers)
///         x: [1, 2, 3],
///         y: [3, 1, 6])
/// ]
/// ```
/// Here is the equivalent _Plotly.js_ JSON serialization:
/// ```javascript
/// data = [
///    {
///        type: 'scatter',
///        x: [1, 2, 3],
///        y: [3, 1, 6],
///        mode: 'lines+markers',
///        name: 'Example scatter plot',
///    }
///];
///```
struct Figure: Codable {
    
    //// Array of `Trace` objects that are displayed on the  same figure.
    var data: [Scatter]
    
    let layout = ""
    let config = ""

    //// `Figure` output format specification.
    public enum Format {
        case HTML
        case JSON
    }

    //// Shows  the `Figure` in the default browser available on your OS.
    func show() {
        try! Browser.show(figure: self)
    }
     
    //// Writes representation of the `Figure` object to a URL using the specified format.
    //// - Parameter toFile: File where to save the `Figure` object.
    //// - Parameter as: Output format (HTML, JSON, ...)
    //// - Parameter javaScript: Bundling option (include, online, exclude, ...) for _MathJax_ and
    //// _Plotly_ JavaScript libraries. Used only for HTML format.
    ////
    //// - Warning: Calling may take a few seconds because the function needs internet access.
    //// Current implementation of `.included` option downloads the library from the CDN
    //// server and returns `<script>` tag with the file content.
    func write<T>(toFile path: T, as format: Format = .HTML,
                  javaScript bundle: HTML.JavaScriptBundleOption = .online)
        where T : StringProtocol {

        switch format {
        case .HTML:
            let html = try! HTML.create(from: self, plotly: bundle, mathJax: bundle, document: true)
            try! html.write(toFile: path, atomically: true, encoding: .utf8)
        case .JSON:
            let json = try! JSON.create(from: self, formatting: [.prettyPrinted, .sortedKeys]).data
            try! json.write(toFile: path, atomically: true, encoding: .utf8)
        }
    }
}
