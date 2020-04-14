import Foundation


/// Protocol shared by all chart types that can appear in a _Plotly_ `Figure`.
public protocol Trace: Encodable {
    var type: String { get }
    var animatable: Bool { get }

    var visible: Shared.Visible? { get set }
    var name: String? { get set }
    var uid: String? { get set }
}


public protocol Transform: Encodable {
    var enabled: Bool? { get }
}


protocol XYSubplot {
    var xAxis: Layout.XAxis { get }
    var yAxis: Layout.YAxis { get }
}

protocol DomainSubplot {
    var domain: Shared.Domain? { get }
}

protocol TernarySubplot {
    var subplot: Layout.Ternary { get }
}

protocol SceneSubplot {
    var scene: Layout.Scene { get }
}

protocol GeoSubplot {
    var geo: Layout.Geo { get }
}

protocol MapboxSubplot {
    var subplot: Layout.Mapbox { get }
}

protocol PolarSubplot {
    var subplot: Layout.Polar { get }
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
/// ```swift
/// let data = [
///     Scatter(
///         name: "Example scatter plot",
///         x: [1, 2, 3],
///         y: [3, 1, 6],
///         mode: [.lines, .markers])
/// ]
/// ```
/// Here is the equivalent _Plotly.js_ JSON serialization:
/// ```javascript
/// var data = [
///    {
///        type: 'scatter',
///        name: 'Example scatter plot',
///        x: [1, 2, 3],
///        y: [3, 1, 6],
///        mode: 'lines+markers'
///    }
/// ];
/// ```
public struct Figure {
    /// Collection of `Scatter`, `Bar`, `Heatmap` ... objects that are displayed in the figure.
    public var data: [Trace]

    /// Structure containing layout of the figure.
    public var layout: Layout?

    /// Structure containing Plotly configuration.
    public var config: Config?
    
    /// Collection of animation frames.
    public var frames: [Frame] = []
    
    /// `Figure` output format specification.
    public enum Format {
        case HTML
        case JSON
    }

    /// Creates a `Figure` displaying the `data` traces with styling and configuration specified by `layout` and `config`.
    public init(data: [Trace], layout: Layout? = nil, frames: [Frame] = [], config: Config? = nil) {
        self.data = data

        self.layout = layout
        if self.layout != nil {
            for trace in data {
                switch trace {
                case let xySubplot as XYSubplot:
                    self.layout!.xAxis.append(xySubplot.xAxis)
                    self.layout!.yAxis.append(xySubplot.yAxis)
                case is DomainSubplot:
                    break
                case let ternarySubplot as TernarySubplot:
                    self.layout!.ternary.append(ternarySubplot.subplot)
                case let sceneSubplot as SceneSubplot:
                    self.layout!.scene.append(sceneSubplot.scene)
                case let geoSubplot as GeoSubplot:
                    self.layout!.geo.append(geoSubplot.geo)
                case let mapboxSubplot as MapboxSubplot:
                    self.layout!.mapbox.append(mapboxSubplot.subplot)
                case let polarSubplot as PolarSubplot:
                    self.layout!.polar.append(polarSubplot.subplot)
                default:
                    fatalError("Unsupported subplot protocol")
                }
            }
        }
        
        self.frames = frames

        self.config = config
    }

    /// Shows the `Figure` in the default browser available on your OS.
    public func show(javaScript bundle: HTML.JavaScriptBundleOption = .online) {
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
    public func write<T>(toFile path: T, as format: Format = .HTML,
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
        case frames
        case config
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        var dataContainer = container.nestedUnkeyedContainer(forKey: .data)
        for trace in data {
            try trace.encode(to: dataContainer.superEncoder())
        }
        try container.encode(layout, forKey: .layout)

        var framesContainer = container.nestedUnkeyedContainer(forKey: .frames)
        for frame in frames {
            try frame.encode(to: framesContainer.superEncoder())
        }
        try container.encode(config, forKey: .config)
    }
}


#if os(Linux) && canImport(Python)
import Python

extension Figure {
    /// Displays interactive figure in Jupyter notebook.
    ///
    /// Prior to calling this method, the following Jupyter notebook magic
    /// has to be executed:
    /// ```
    /// %include "EnableIPythonDisplay.swift"
    /// ```
    ///
    /// - Bug: Google Colab seems to be a bit broken. I wasn't able to figure out
    /// a Swift-only communication with the Jupyter kernel. There's more details
    /// in the `Workaround.ipynb` notebook. A Swift only solution that works
    /// locally in Jupyter breaks in the Colab environment. To make the displaying
    /// work, the communication with the kernel has to be routed via the Python
    /// bridge.
    public func display() {
        let htmlContent = try! HTML.create(from: self, plotly: .online, mathJax: .online, document: false)
        let iPythonDisplay = Python.import("IPython.display")
        iPythonDisplay[dynamicMember: "display"](iPythonDisplay.HTML(htmlContent))
    }
}
#endif
