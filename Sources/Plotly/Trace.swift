
/// Data series that for displaying in a _Plotly_ chart.
public protocol Trace: Encodable {
    /// One of the supported _Plotly.js_ trace types, i.e. "scatter", "bar", "pie" and so on.
    ///
    /// - TODO:
    ///   This should be a static variable always encoded to JSON.
    var type: String { get }
    /// Switch indicating whether the trace supports animation of its data.
    static var animatable: Bool { get }

    /// Unique identifier used to track traces between animation frames.
    var uid: String? { get set }
    /// Name of the trace. Displayed in legend by default.
    var name: String? { get set }
    /// Flag indicating whether the trace is hidden.
    var visible: Visible? { get set }
}

public extension Trace {
    /// Shows interactive figure containing the trace in the default browser on your OS.
    ///
    /// This method is useful for quickly previewing a trace. It saves a few line of code because it avoids explicitly constructing
    /// the `Figure` object. Optionally, it also accepts configuration and layout options to fine-tune the appearance.
    ///
    /// Here's a one-liner that shows a scatter trace:
    /// ```swift
    /// Scatter(x: [1, 2, 3], y: [4, 6, 5]).show()
    /// ```
    ///
    /// - Parameters:
    ///   - layout: Settings affecting layout of the figure, i.e. subplots, axis, title and more.
    ///   - config: Configuration of the figure, i.e. toolbar, watermark, scrolling, locale and more.
    @discardableResult
    @available(iOS 10.0, *)
    func show(layout: Layout = Layout(), config: Config = Config()) -> Figure {
        let figure = Figure(data: [self], layout: layout, config: config)
        figure.show()
        return figure
    }
}

#if canImport(PythonKit)
import PythonKit

public extension Trace {
    /// Displays interactive figure containing the trace Jupyter notebook.
    ///
    /// This method is useful for quickly previewing a trace without explicitly constructing the `Figure` object. Optionally, it also
    /// accepts configuration and layout options to fine-tune the appearance.
    ///
    /// Here's a example that displays a scatter trace:
    /// ```swift
    /// Scatter(x: [1, 2, 3], y: [4, 6, 5]).display()
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
    ///   There's more details in the `Workaround.ipynb` example notebook. A Swift only solution that works locally in Jupyter
    ///   breaks in the Colab environment. For the time being, to make the display method work, the communication with the kernel
    ///   has to be routed via the Python bridge.
    ///
    /// - Parameters:
    ///   - layout: Settings affecting layout of the figure, i.e. subplots, axis, title and more.
    ///   - config: Configuration of the figure, i.e. toolbar, watermark, scrolling, locale and more.
    @discardableResult
    func display(layout: Layout = Layout(), config: Config = Config()) -> Figure {
        let figure = Figure(data: [self], layout: layout, config: config)
        figure.display()
        return figure
    }
}
#endif


/// Protocol that allows sub-plots constructed from traces with cartesian (i.e. perpendicular x and y) coordinates.
protocol XYSubplot: Trace {
    var xAxis: Layout.XAxis { get set }
    var yAxis: Layout.YAxis { get set }
}

/// Protocol that allows sub-plots constructed from traces that don't have a clear origin or axis system.
protocol DomainSubplot: Trace {
    var domain: Shared.Domain? { get set }
}

/// Protocol that allows sub-plots constructed from traces with ternary (i.e. triangle/simplex) axes.
protocol TernarySubplot: Trace {
    var subplot: Layout.Ternary { get set }
}

/// Protocol that allows sub-plots constructed from traces with 3D (i.e. x, y and z) coordinate system.
protocol SceneSubplot: Trace {
    var scene: Layout.Scene { get set }
}

/// Protocol that allows sub-plots constructed from traces with map-based (i.e. latitude and longitude) axes.
protocol GeoSubplot: Trace {
    var geo: Layout.Geo { get set }
}

/// Protocol that allows sub-plots constructed from traces that use Mapbox maps.
protocol MapboxSubplot: Trace {
    var subplot: Layout.Mapbox { get set }
}

/// Protocol that allows sub-plots constructed from traces with polar (i.e. distance ρ and angle θ) coordinates.
protocol PolarSubplot: Trace {
    var subplot: Layout.Polar { get set }
}
