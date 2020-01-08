/// Determines which trace information appear on hover. 
///
/// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
/// click and hover events are still fired.
/// - traces/scatter/attributes/hoverinfo
/// - traces/bar/attributes/hoverinfo
/// - traces/box/attributes/hoverinfo
/// - traces/heatmap/attributes/hoverinfo
/// - traces/histogram/attributes/hoverinfo
/// - traces/histogram2d/attributes/hoverinfo
/// - traces/histogram2dcontour/attributes/hoverinfo
/// - traces/contour/attributes/hoverinfo
/// - traces/violin/attributes/hoverinfo
/// - traces/scatter3d/attributes/hoverinfo
/// - traces/surface/attributes/hoverinfo
/// - traces/isosurface/attributes/hoverinfo
/// - traces/volume/attributes/hoverinfo
/// - traces/mesh3d/attributes/hoverinfo
/// - traces/scattergl/attributes/hoverinfo
/// - traces/splom/attributes/hoverinfo
/// - traces/pointcloud/attributes/hoverinfo
/// - traces/heatmapgl/attributes/hoverinfo
/// - traces/table/attributes/hoverinfo
/// - traces/ohlc/attributes/hoverinfo
/// - traces/candlestick/attributes/hoverinfo
/// - traces/area/attributes/hoverinfo
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
/// - traces/scatter/attributes/mode
/// - traces/scatterternary/attributes/mode
/// - traces/scatter3d/attributes/mode
/// - traces/scattergeo/attributes/mode
/// - traces/scattergl/attributes/mode
/// - traces/scattermapbox/attributes/mode
/// - traces/scattercarpet/attributes/mode
/// - traces/scatterpolar/attributes/mode
/// - traces/scatterpolargl/attributes/mode
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
