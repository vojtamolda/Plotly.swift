
/// Protocol shared by all chart types that can appear in a _Plotly_ `Figure`.
public protocol Trace: Encodable {
    var type: String { get }
    var animatable: Bool { get }

    var visible: Shared.Visible? { get set }
    var name: String? { get set }
    var uid: String? { get set }
}


public extension Trace {
    /// Shows interactive figure containing the traces in the default browser.
    ///
    /// This method is useful for quickly previewing a trace without explicitly constructing
    /// the `Figure` object. Optionally it also accepts configuration and layout options
    /// to fine-tune the appearance.
    ///
    /// Here's a one-liner that shows a scatter trace:
    /// ```swift
    /// Scatter(x: [1, 2, 3], y: [4, 6, 5]).show()
    /// ```
    @discardableResult
    @available(iOS 10.0, *)
    func show(config: Config? = nil, layout: Layout? = nil) -> Figure {
        let figure = Figure(data: [self], layout: layout, config: config)
        figure.show()
        return figure
    }
}


#if canImport(PythonKit)
import PythonKit

public extension Trace {
    /// Displays interactive figure containing the trace in Jupyter notebook.
    ///
    /// This method is useful for quickly previewing a trace without explicitly constructing
    /// the `Figure` object. Optionally it also accepts configuration and layout options
    /// to fine-tune the appearance.
    ///
    /// Here's a one-liner displaying a scatter trace:
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
    ///   Google Colab seems to be a bit broken. I wasn't able to figure out a Swift-only
    ///   communication with the Jupyter kernel. There's more details in the `Workaround.ipynb`
    ///   notebook. A Swift only solution that works locally in Jupyter breaks in the Colab
    ///   environment. For the time being, to make the display method work, the communication
    ///   with the kernel has to be routed via the Python bridge.
    @discardableResult
    func display(layout: Layout? = nil, config: Config? = nil) -> Figure {
        let figure = Figure(data: [self], layout: layout, config: config)
        figure.display()
        return figure
    }
}
#endif


/// Protocol that allows sub-plots constructed from traces with cartesian (i.e. perpendicular x and y) coordinates.
protocol XYSubplot: Trace {
    var xAxis: Layout.XAxis { get }
    var yAxis: Layout.YAxis { get }
}

/// Protocol that allows sub-plots constructed from traces that don't have a clear origin or axis system.
protocol DomainSubplot: Trace {
    var domain: Shared.Domain? { get }
}

/// Protocol that allows sub-plots constructed from traces with ternary (i.e. triangle/simplex) axes.
protocol TernarySubplot: Trace {
    var subplot: Layout.Ternary { get }
}

/// Protocol that allows sub-plots constructed from traces with 3D (i.e. x, y and z) coordinate system.
protocol SceneSubplot: Trace {
    var scene: Layout.Scene { get }
}

/// Protocol that allows sub-plots constructed from traces with map-based (i.e. latitude and longitude) axes.
protocol GeoSubplot: Trace {
    var geo: Layout.Geo { get }
}

/// Protocol that allows sub-plots constructed from traces that use Mapbox maps.
protocol MapboxSubplot: Trace {
    var subplot: Layout.Mapbox { get }
}

/// Protocol that allows sub-plots constructed from traces with polar (i.e. distance ρ and angle θ) coordinates.
protocol PolarSubplot: Trace {
    var subplot: Layout.Polar { get }
}
