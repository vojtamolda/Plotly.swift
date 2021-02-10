/// Specialized trace that can be rendered as a subplot with cartesian, i.e. perpendicular x and y, coordinates.
protocol XYSubplot: Trace {
    /// Reference to the setting how the horizontal axis is rendered.
    var xAxis: XAxis { get set }
    /// Reference to the setting how the vertical axis is rendered.
    var yAxis: YAxis { get set }
}

/// Specialized trace that can be rendered as a subplot which doesn't have a clear origin or axis system.
protocol DomainSubplot: Trace {
    /// Reference to the domain where the trace is rendered.
    var domain: Domain? { get set }
}

/// Specialized trace that can be rendered as a subplot with ternary, i.e. triangle/simplex, axes.
protocol TernarySubplot: Trace {
    /// Reference to the setting how the ternary axis system is rendered.
    var subplot: Ternary { get set }
}

/// Specialized trace that can be rendered as a subplot with 3D, i.e. x, y and z, coordinate system.
protocol SceneSubplot: Trace {
    /// Reference to the setting how the scene of the 3D axis system is rendered.
    var scene: Scene { get set }
}

/// Specialized trace that can be rendered as a subplot with map-based, i.e. latitude and longitude, axes.
protocol GeoSubplot: Trace {
    /// Reference to the setting how the map grid is rendered.
    var geo: Geo { get set }
}

/// Specialized trace that can be rendered as a subplot that holds a Mapbox map.
protocol MapboxSubplot: Trace {
    /// Reference to the setting how the map grid is rendered.
    var subplot: Mapbox { get set }
}

/// Specialized trace that can be rendered as a subplot with polar, i.e. radial distance ρ and angle θ, coordinates.
protocol PolarSubplot: Trace {
    /// Reference to the setting how the polar axis system is rendered.
    var subplot: Polar { get set }
}


/// Reference to an axis of a subplot shared between layout and one or more traces in the same figure.
protocol SubplotAxis: AnyObject {
    /// Unique axis identifier within the figure used to match the axis of a trace to the subplot axis of the layout.
    var uid: UInt { get }
    /// Preconfigured value every axis instance is assumed to be initialized with.
    static var preset: Self { get }
}


public protocol Transform: Encodable {
    var enabled: Bool? { get }
}
