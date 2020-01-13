/// Determines which trace information appear on hover. 
///
/// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
/// click and hover events are still fired.
///
/// # Used By
/// `Scatter.hoverInfo` |
/// `Bar.hoverInfo` |
/// `Box.hoverInfo` |
/// `Heatmap.hoverInfo` |
/// `Histogram.hoverInfo` |
/// `Histogram2D.hoverInfo` |
/// `Histogram2DContour.hoverInfo` |
/// `Contour.hoverInfo` |
/// `Violin.hoverInfo` |
/// `Scatter3D.hoverInfo` |
/// `Surface.hoverInfo` |
/// `Isosurface.hoverInfo` |
/// `Volume.hoverInfo` |
/// `Mesh3D.hoverInfo` |
/// `ScatterGL.hoverInfo` |
/// `ScatterPlotMatrix.hoverInfo` |
/// `PointCloud.hoverInfo` |
/// `HeatmapGL.hoverInfo` |
/// `Table.hoverInfo` |
/// `OHLC.hoverInfo` |
/// `Candlestick.hoverInfo` |
/// `Area.hoverInfo` |
public struct HoverInfo0: OptionSet, Encodable {
    public let rawValue: Int

    public static let x = HoverInfo0(rawValue: 1 << 0)
    public static let y = HoverInfo0(rawValue: 1 << 1)
    public static let z = HoverInfo0(rawValue: 1 << 2)
    public static let text = HoverInfo0(rawValue: 1 << 3)
    public static let name = HoverInfo0(rawValue: 1 << 4)
    public static let all = HoverInfo0(rawValue: 1 << 5)
    public static let none = HoverInfo0(rawValue: 1 << 6)
    public static let skip = HoverInfo0(rawValue: 1 << 7)

    public init(rawValue: Int) { self.rawValue = rawValue }

    public func encode(to encoder: Encoder) throws {
        var options = [String]()
        if (self.rawValue & 1 << 0) != 0 { options += ["x"] }
        if (self.rawValue & 1 << 1) != 0 { options += ["y"] }
        if (self.rawValue & 1 << 2) != 0 { options += ["z"] }
        if (self.rawValue & 1 << 3) != 0 { options += ["text"] }
        if (self.rawValue & 1 << 4) != 0 { options += ["name"] }
        if (self.rawValue & 1 << 5) != 0 { options += ["all"] }
        if (self.rawValue & 1 << 6) != 0 { options += ["none"] }
        if (self.rawValue & 1 << 7) != 0 { options += ["skip"] }
        var container = encoder.singleValueContainer()
        try container.encode(options.joined(separator: "+"))
    }
}

/// Determines the drawing mode for this scatter trace. 
///
/// If the provided `mode` includes *text* then the `text` elements appear at the coordinates.
/// Otherwise, the `text` elements appear on hover. If there are less than 20 points and the trace
/// is not stacked then the default is *lines+markers*. Otherwise, *lines*.
///
/// # Used By
/// `Scatter.mode` |
/// `ScatterTernary.mode` |
/// `Scatter3D.mode` |
/// `ScatterGeo.mode` |
/// `ScatterGL.mode` |
/// `ScatterMapbox.mode` |
/// `ScatterCarpet.mode` |
/// `ScatterPolar.mode` |
/// `ScatterPolarGL.mode` |
public struct Mode0: OptionSet, Encodable {
    public let rawValue: Int

    public static let lines = Mode0(rawValue: 1 << 0)
    public static let markers = Mode0(rawValue: 1 << 1)
    public static let text = Mode0(rawValue: 1 << 2)
    public static let none = Mode0(rawValue: 1 << 3)

    public init(rawValue: Int) { self.rawValue = rawValue }

    public func encode(to encoder: Encoder) throws {
        var options = [String]()
        if (self.rawValue & 1 << 0) != 0 { options += ["lines"] }
        if (self.rawValue & 1 << 1) != 0 { options += ["markers"] }
        if (self.rawValue & 1 << 2) != 0 { options += ["text"] }
        if (self.rawValue & 1 << 3) != 0 { options += ["none"] }
        var container = encoder.singleValueContainer()
        try container.encode(options.joined(separator: "+"))
    }
}
