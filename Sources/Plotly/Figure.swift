import Foundation


/// Representation of a _Plotly_ chart.
///
/// _Plotly_'s graphs are built from two main types of building blocks - traces and layout. Trace describes a single series of data
/// visible in a graph. Traces can be constructed from a wide variety of predefined types, e.g. scatter, heatmap, bar or polar. Layout
/// applies to the entire chart and affect properties like the title, axis annotations and many more.
public struct Figure {
    /// Collection of traces that are displayed on the figure, e.g. `Scatter`, `Bar` `Polar` or  `Heatmap`.
    public var data: [Trace]
    /// Structure containing layout of the figure.
    public var layout: Layout
    /// Structure storing _Plotly_ configuration.
    public var config: Config
    /// Collection of animation frames.
    public var frames: [Frame] = []

    /// Output format specification.
    public enum Format {
        /// Generate hypertext markup language.
        case HTML
        /// Generate JavaScript object notation.
        case JSON
    }

    /// Creates a chart displaying the data series from  `traces` with style and configuration from `layout` and `config`.
    ///
    /// # Traces to Layout Subplot Axis Association
    /// Constructors collects subplot axis properties , i.e. `Trace.xAxis`, `Trace.yAxis`, `Trace.polar` and so on, of
    /// each trace, checks for uniqueness and assigns them to the corresponding `Layout` container, i. e. `Layout.xAxis`,
    /// `Layout.yAxis`, `Layout.polar` and so on.
    ///
    /// The check for uniqueness is a little bit tricky and requires comparison against the `.preset` static property. The `.preset`
    /// represents the default value implicitly used by _Plotly_ when the subplot axis property isn't set.
    ///
    /// If a pair of colliding subplot axis is found, the constructor issues  an assertion to alert the user about the `uid` collision.
    /// This error means that traces or layout have independent subplot axis with the same `uid`. This is a serious and hard to
    /// find error in _Plotly.js_ because figures with duplicated axis `uid`s don't look as expected.
    ///
    /// - Note:
    /// The duplicate `uid` assertion is excluded from release builds.
    ///
    /// - Parameters:
    ///   - traces: Array of traces that represent the data series displayed on the figure.
    ///   - layout: Settings affecting layout of the figure, i.e. subplots, axis, title, scale, margin, ticks and more.
    ///   - frames: If the figure isn't animated, an empty array, or animation frames otherwise.
    ///   - config: Configuration of the _Plotly_  library, i.e. toolbar, watermark, scrolling, locale and more.
    public init(data traces: [Trace], layout: Layout = Layout(),
                frames: [Frame] = [], config: Config = Config()) {
        self.data = traces
        self.frames = frames
        self.config = config
        self.layout = layout

        assignSubplotAxis(from: traces)
    }
    
    /// Aggregates and uniquely assigns subplot axis referenced by each trace to the corresponding layout subplot axis.
    private mutating func assignSubplotAxis(from traces: [Trace]) {
        let layoutXAxis = layout.xAxis.map { ($0.uid, $0) }
        let traceXAxis = traces.compactMap { ($0 as? XYSubplot)?.xAxis }.map { ($0.uid, $0) }
        let uniqueXAxis = Dictionary(layoutXAxis + traceXAxis, uniquingKeysWith: Self.ignorePreset)
        layout.xAxis = Array(uniqueXAxis.values)

        let layoutYAxis = layout.yAxis.map { ($0.uid, $0) }
        let traceYAxis = traces.compactMap { ($0 as? XYSubplot)?.yAxis }.map { ($0.uid, $0) }
        let uniqueYAxis = Dictionary(layoutYAxis + traceYAxis, uniquingKeysWith: Self.ignorePreset)
        layout.yAxis = Array(uniqueYAxis.values)
                
        let layoutTernary = layout.ternary.map { ($0.uid, $0) }
        let traceTernary = traces.compactMap { ($0 as? TernarySubplot)?.subplot }.map { ($0.uid, $0) }
        let uniqueTernary = Dictionary(layoutTernary + traceTernary, uniquingKeysWith: Self.ignorePreset)
        layout.ternary = Array(uniqueTernary.values)

        let layoutScene = layout.scene.map { ($0.uid, $0) }
        let traceScene = traces.compactMap { ($0 as? SceneSubplot)?.scene }.map { ($0.uid, $0) }
        let uniqueScene = Dictionary(layoutScene + traceScene, uniquingKeysWith: Self.ignorePreset)
        layout.scene = Array(uniqueScene.values)

        let layoutGeo = layout.geo.map { ($0.uid, $0) }
        let traceGeo = traces.compactMap { ($0 as? GeoSubplot)?.geo }.map { ($0.uid, $0) }
        let uniqueGeo = Dictionary(layoutGeo + traceGeo, uniquingKeysWith: Self.ignorePreset)
        layout.geo = Array(uniqueGeo.values)
        
        let layoutMapbox = layout.mapbox.map { ($0.uid, $0) }
        let traceMapbox = traces.compactMap { ($0 as? MapboxSubplot)?.subplot }.map { ($0.uid, $0) }
        let uniqueMapbox = Dictionary(layoutMapbox + traceMapbox, uniquingKeysWith: Self.ignorePreset)
        layout.mapbox = Array(uniqueMapbox.values)
        
        let layoutPolar = layout.polar.map { ($0.uid, $0) }
        let tracePolar = traces.compactMap { ($0 as? PolarSubplot)?.subplot }.map { ($0.uid, $0) }
        let uniquePolar = Dictionary(layoutPolar + tracePolar, uniquingKeysWith: Self.ignorePreset)
        layout.polar = Array(uniquePolar.values)
    }
    
    /// If the provided `axis0`, `axis1` pair isn't the same instance, the function returns the one that isn't equal to the preset.
    ///
    /// If the pair is not identical, i.e not the same instance, and neither of the axis is equal to the preset, the function issues an
    /// assertion to alert the user about duplication. This error means that the trace to layout association contains different objects
    /// with the same `uid`. Figure with duplicated subplot axis `uid`s won't look and work as expected.
    ///
    /// - Note:
    ///   The error assertion is triggered only in debug builds.
    static private func ignorePreset<T: SubplotAxis & Encodable>(axis0: T, axis1: T) -> T {
        if axis0 === T.preset { return axis1 }
        if axis1 === T.preset { return axis0 }
        
        let axis1Address = Unmanaged.passUnretained(axis0).toOpaque()
        let axis2Address = Unmanaged.passUnretained(axis1).toOpaque()
        let encoder = JSONEncoder()
        encoder.outputFormatting = [.prettyPrinted]
        let axis1Json = String(data: try! encoder.encode(axis0), encoding: .utf8) ?? ""
        let axis2Json = String(data: try! encoder.encode(axis1), encoding: .utf8) ?? ""
        
        assert(axis0 === axis1,
               "Two axis/subplot instances have identical, non-unique UIDs:\n" +
               "\(axis0)@\(axis1Address) with uid = \(axis0.uid):\n" +
               "\(axis1Json)\n" +
               "\(axis1)@\(axis2Address) with uid = \(axis1.uid):\n" +
               "\(axis2Json)\n"
        )
        return axis0
    }
//    
//    private func assignSubplots(to layout: &inout Layout, traces: [Trace]) {
//        for trace in traces {
//            switch trace {
//            case let xySubplot as XYSubplot:
//                self.layout!.xAxis.append(xySubplot.xAxis)
//                self.layout!.yAxis.append(xySubplot.yAxis)
//            case is DomainSubplot:
//                break
//            case let ternarySubplot as TernarySubplot:
//                self.layout!.ternary.append(ternarySubplot.subplot)
//            case let sceneSubplot as SceneSubplot:
//                self.layout!.scene.append(sceneSubplot.scene)
//            case let geoSubplot as GeoSubplot:
//                self.layout!.geo.append(geoSubplot.geo)
//            case let mapboxSubplot as MapboxSubplot:
//                self.layout!.mapbox.append(mapboxSubplot.subplot)
//            case let polarSubplot as PolarSubplot:
//                self.layout!.polar.append(polarSubplot.subplot)
//            default:
//                fatalError("Unsupported subplot protocol")
//            }
//        }
//        
//    }

    /// Shows the chart in the default browser.
    ///
    /// Here's an example that shows figure with a scatter trace:
    /// ```swift
    /// let scatterTrace = Scatter(x: [1, 2, 3], y: [4, 6, 5])
    /// let figure = Figure(data: [scatterTrace])
    /// figure.show()
    /// ```
    @available(iOS 10.0, *)
    public func show(javaScript bundle: HTML.JavaScriptBundleOption = .online) {
        try! Browser.show(figure: self, javaScript: bundle)
    }

    /// Writes chart to a URL using the specified format.
    ///
    /// - Parameters:
    ///   - path: File where to save the `Figure` object.
    ///   - format: Output format (HTML, JSON, ...)
    ///   - bundle: JavaScript bundling option (i.e. include, online, exclude) for _MathJax_ and _Plotly_ libraries.
    ///    Used only for HTML format.
    ///
    /// - Warning: Execution may take a few seconds because the function needs internet access.
    ///   Current implementation of `.included` option downloads the library from the CDN
    ///   server and returns `<script>` tag with the file content.
    @available(iOS 11.0, *)
    public func write<T: StringProtocol>(toFile path: T, as format: Format = .HTML,
                                         javaScript bundle: HTML.JavaScriptBundleOption = .online) {
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

#if canImport(PythonKit)
import PythonKit

public extension Figure {
    /// Displays interactive figure in Jupyter notebook.
    ///
    /// Here's an example displaying a figure with a scatter and a bar trace:
    /// ```swift
    /// let barTrace = Scatter(x: [1, 2, 3], y: [4, 6, 5])
    /// let scatterTrace = Scatter(x: [1, 2, 3], y: [4, 6, 5])
    /// Figure(data: [barTrace, scatterTrace]).display()
    /// ```
    ///
    /// - Important:
    ///   Prior to calling this method, the following Jupyter notebook magic has to be executed:
    ///   ```
    ///   %include "EnableIPythonDisplay.swift"
    ///   ```
    ///
    /// - Bug:
    ///   Google Colab seems to be a bit broken. I wasn't able to figure out a Swift-only communication with the Jupyter kernel.
    ///   There's more details in the `Workaround.ipynb` notebook. A Swift only solution that works locally in Jupyter breaks in
    ///   the Colab environment. For the time being, to make the display method work, the communication with the kernel has to
    ///   be routed via the Python bridge.
    func display() {
        let htmlContent = try! HTML.create(from: self, plotly: .online, mathJax: .online, document: false)
        let iPythonDisplay = Python.import("IPython.display")
        iPythonDisplay[dynamicMember: "display"](iPythonDisplay.HTML(htmlContent))
    }
}
#endif
