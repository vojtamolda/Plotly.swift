import Foundation


/// Requirements for a plot or, sub-plot or a line in a _Plotly_ `Figure`.
protocol Trace: Encodable {
    /// Trace type (i.e. scatter, bar, heatmap, ...)
    var type: String { get }

    /// Indication whether the trace can be animated.
    var animatable: Bool { get }
}


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
///         mode: [.lines, .markers]),
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
/// ];
/// ```
struct Figure {
    /// Collection of `Scatter`, `Bar`, `Heatmap` ... objects that are displayed in the figure.
    var data: [Any]

    /// Structure containing layout of the figure.
    var layout: Layout?

    /// Structure containing Plotly configuration.
    var config: Config?
    
    /// `Figure` output format specification.
    enum Format {
        case HTML
        case JSON
    }

    /// Shows  the `Figure` in the default browser available on your OS.
    func show(javaScript bundle: HTML.JavaScriptBundleOption = .online) {
        try! Browser.show(figure: self, javaScript: bundle)
    }

    /// Writes representation of the `Figure` object to a URL using the specified format.
    /// - Parameter toFile: File where to save the `Figure` object.
    /// - Parameter as: Output format (HTML, JSON, ...)
    /// - Parameter javaScript: Bundling option (include, online, exclude, ...) for _MathJax_ and
    /// _Plotly_ JavaScript libraries. Used only for HTML format.
    ///
    /// - Warning: Calling may take a few seconds because the function needs internet access.
    /// Current implementation of `.included` option downloads the library from the CDN
    /// server and returns `<script>` tag with the file content.
    func write<T>(toFile path: T, as format: Format = .HTML,
                  javaScript bundle: HTML.JavaScriptBundleOption = .online)
        where T : StringProtocol {

        switch format {
        case .HTML:
            let html = try! HTML.create(from: self, plotly: bundle, mathJax: bundle, document: true)
            try! html.write(toFile: path, atomically: true, encoding: .utf8)
        case .JSON:
            let json = try! JSON.create(from: self, formatting: [.prettyPrinted, .sortedKeys])
            try! json.write(toFile: path, atomically: true, encoding: .utf8)
        }
    }
}

extension Figure: Encodable {
    enum CodingKeys: String, CodingKey {
        case data
        case layout
        case config
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        var dataContainer = container.nestedUnkeyedContainer(forKey: .data)
        for item in data {
            if let trace = item as? Encodable {
                try trace.encode(to: dataContainer.superEncoder())
            }
        }
        try container.encode(layout, forKey: .layout)
        try container.encode(config, forKey: .config)
    }
}
