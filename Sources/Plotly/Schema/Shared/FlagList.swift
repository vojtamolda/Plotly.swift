/// Determines the drawing mode for the spike line If *toaxis*, the line is drawn from the data point to the axis the  series is plotted on. 
///
/// If *across*, the line is drawn across the entire plot area, and supercedes *toaxis*. If
/// *marker*, then a marker dot is drawn on the axis the series is plotted on
/// - layout/layoutAttributes/xaxis/spikemode
/// - layout/layoutAttributes/yaxis/spikemode
public struct SpikeMode0: OptionSet, Encodable {
    public let rawValue: Int

    public static let toAxis = SpikeMode0(rawValue: 1 << 0)
    public static let across = SpikeMode0(rawValue: 1 << 1)
    public static let marker = SpikeMode0(rawValue: 1 << 2)

    public init(rawValue: Int) { self.rawValue = rawValue }

    public func encode(to encoder: Encoder) throws {
        var options = [String]()
        if (self.rawValue & 1 << 0) != 0 { options += ["toaxis"] }
        if (self.rawValue & 1 << 1) != 0 { options += ["across"] }
        if (self.rawValue & 1 << 2) != 0 { options += ["marker"] }
        var container = encoder.singleValueContainer()
        try container.encode(options.joined(separator: "+"))
    }
}

/// Sets the annotation arrow head position.
/// - layout/layoutAttributes/scene/annotations/items/annotation/arrowside
/// - layout/layoutAttributes/annotations/items/annotation/arrowside
public struct ArrowSide0: OptionSet, Encodable {
    public let rawValue: Int

    public static let end = ArrowSide0(rawValue: 1 << 0)
    public static let start = ArrowSide0(rawValue: 1 << 1)
    public static let none = ArrowSide0(rawValue: 1 << 2)

    public init(rawValue: Int) { self.rawValue = rawValue }

    public func encode(to encoder: Encoder) throws {
        var options = [String]()
        if (self.rawValue & 1 << 0) != 0 { options += ["end"] }
        if (self.rawValue & 1 << 1) != 0 { options += ["start"] }
        if (self.rawValue & 1 << 2) != 0 { options += ["none"] }
        var container = encoder.singleValueContainer()
        try container.encode(options.joined(separator: "+"))
    }
}

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
public struct HoverInfo1: OptionSet, Encodable {
    public let rawValue: Int

    public static let x = HoverInfo1(rawValue: 1 << 0)
    public static let y = HoverInfo1(rawValue: 1 << 1)
    public static let z = HoverInfo1(rawValue: 1 << 2)
    public static let text = HoverInfo1(rawValue: 1 << 3)
    public static let name = HoverInfo1(rawValue: 1 << 4)
    public static let all = HoverInfo1(rawValue: 1 << 5)
    public static let none = HoverInfo1(rawValue: 1 << 6)
    public static let skip = HoverInfo1(rawValue: 1 << 7)

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

/// Do the hover effects highlight individual points (markers or line points) or do they highlight filled regions? If the fill is *toself* or *tonext* and there are no markers or text, then the default is *fills*, otherwise it is *points*.
/// - traces/scatter/attributes/hoveron
/// - traces/scatterternary/attributes/hoveron
/// - traces/scattercarpet/attributes/hoveron
/// - traces/scatterpolar/attributes/hoveron
public struct HoverOn0: OptionSet, Encodable {
    public let rawValue: Int

    public static let points = HoverOn0(rawValue: 1 << 0)
    public static let fills = HoverOn0(rawValue: 1 << 1)

    public init(rawValue: Int) { self.rawValue = rawValue }

    public func encode(to encoder: Encoder) throws {
        var options = [String]()
        if (self.rawValue & 1 << 0) != 0 { options += ["points"] }
        if (self.rawValue & 1 << 1) != 0 { options += ["fills"] }
        var container = encoder.singleValueContainer()
        try container.encode(options.joined(separator: "+"))
    }
}

/// Determines which trace information appear on the graph.
/// - traces/pie/attributes/textinfo
/// - traces/funnelarea/attributes/textinfo
public struct TextInfo0: OptionSet, Encodable {
    public let rawValue: Int

    public static let label = TextInfo0(rawValue: 1 << 0)
    public static let text = TextInfo0(rawValue: 1 << 1)
    public static let value = TextInfo0(rawValue: 1 << 2)
    public static let percent = TextInfo0(rawValue: 1 << 3)
    public static let none = TextInfo0(rawValue: 1 << 4)

    public init(rawValue: Int) { self.rawValue = rawValue }

    public func encode(to encoder: Encoder) throws {
        var options = [String]()
        if (self.rawValue & 1 << 0) != 0 { options += ["label"] }
        if (self.rawValue & 1 << 1) != 0 { options += ["text"] }
        if (self.rawValue & 1 << 2) != 0 { options += ["value"] }
        if (self.rawValue & 1 << 3) != 0 { options += ["percent"] }
        if (self.rawValue & 1 << 4) != 0 { options += ["none"] }
        var container = encoder.singleValueContainer()
        try container.encode(options.joined(separator: "+"))
    }
}

/// Determines which trace information appear on hover. 
///
/// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
/// click and hover events are still fired.
/// - traces/pie/attributes/hoverinfo
/// - traces/funnelarea/attributes/hoverinfo
public struct HoverInfo2: OptionSet, Encodable {
    public let rawValue: Int

    public static let label = HoverInfo2(rawValue: 1 << 0)
    public static let text = HoverInfo2(rawValue: 1 << 1)
    public static let value = HoverInfo2(rawValue: 1 << 2)
    public static let percent = HoverInfo2(rawValue: 1 << 3)
    public static let name = HoverInfo2(rawValue: 1 << 4)
    public static let all = HoverInfo2(rawValue: 1 << 5)
    public static let none = HoverInfo2(rawValue: 1 << 6)
    public static let skip = HoverInfo2(rawValue: 1 << 7)

    public init(rawValue: Int) { self.rawValue = rawValue }

    public func encode(to encoder: Encoder) throws {
        var options = [String]()
        if (self.rawValue & 1 << 0) != 0 { options += ["label"] }
        if (self.rawValue & 1 << 1) != 0 { options += ["text"] }
        if (self.rawValue & 1 << 2) != 0 { options += ["value"] }
        if (self.rawValue & 1 << 3) != 0 { options += ["percent"] }
        if (self.rawValue & 1 << 4) != 0 { options += ["name"] }
        if (self.rawValue & 1 << 5) != 0 { options += ["all"] }
        if (self.rawValue & 1 << 6) != 0 { options += ["none"] }
        if (self.rawValue & 1 << 7) != 0 { options += ["skip"] }
        var container = encoder.singleValueContainer()
        try container.encode(options.joined(separator: "+"))
    }
}

/// Determines default for `values` when it is not provided, by inferring a 1 for each of the *leaves* and/or *branches*, otherwise 0.
/// - traces/sunburst/attributes/count
/// - traces/treemap/attributes/count
public struct Count0: OptionSet, Encodable {
    public let rawValue: Int

    public static let branches = Count0(rawValue: 1 << 0)
    public static let leaves = Count0(rawValue: 1 << 1)

    public init(rawValue: Int) { self.rawValue = rawValue }

    public func encode(to encoder: Encoder) throws {
        var options = [String]()
        if (self.rawValue & 1 << 0) != 0 { options += ["branches"] }
        if (self.rawValue & 1 << 1) != 0 { options += ["leaves"] }
        var container = encoder.singleValueContainer()
        try container.encode(options.joined(separator: "+"))
    }
}

/// Determines which trace information appear on the graph.
/// - traces/sunburst/attributes/textinfo
/// - traces/treemap/attributes/textinfo
public struct TextInfo1: OptionSet, Encodable {
    public let rawValue: Int

    public static let label = TextInfo1(rawValue: 1 << 0)
    public static let text = TextInfo1(rawValue: 1 << 1)
    public static let value = TextInfo1(rawValue: 1 << 2)
    public static let currentPath = TextInfo1(rawValue: 1 << 3)
    public static let percentRoot = TextInfo1(rawValue: 1 << 4)
    public static let percentEntry = TextInfo1(rawValue: 1 << 5)
    public static let percentParent = TextInfo1(rawValue: 1 << 6)
    public static let none = TextInfo1(rawValue: 1 << 7)

    public init(rawValue: Int) { self.rawValue = rawValue }

    public func encode(to encoder: Encoder) throws {
        var options = [String]()
        if (self.rawValue & 1 << 0) != 0 { options += ["label"] }
        if (self.rawValue & 1 << 1) != 0 { options += ["text"] }
        if (self.rawValue & 1 << 2) != 0 { options += ["value"] }
        if (self.rawValue & 1 << 3) != 0 { options += ["current path"] }
        if (self.rawValue & 1 << 4) != 0 { options += ["percent root"] }
        if (self.rawValue & 1 << 5) != 0 { options += ["percent entry"] }
        if (self.rawValue & 1 << 6) != 0 { options += ["percent parent"] }
        if (self.rawValue & 1 << 7) != 0 { options += ["none"] }
        var container = encoder.singleValueContainer()
        try container.encode(options.joined(separator: "+"))
    }
}

/// Determines which trace information appear on hover. 
///
/// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
/// click and hover events are still fired.
/// - traces/sunburst/attributes/hoverinfo
/// - traces/treemap/attributes/hoverinfo
public struct HoverInfo3: OptionSet, Encodable {
    public let rawValue: Int

    public static let label = HoverInfo3(rawValue: 1 << 0)
    public static let text = HoverInfo3(rawValue: 1 << 1)
    public static let value = HoverInfo3(rawValue: 1 << 2)
    public static let name = HoverInfo3(rawValue: 1 << 3)
    public static let currentPath = HoverInfo3(rawValue: 1 << 4)
    public static let percentRoot = HoverInfo3(rawValue: 1 << 5)
    public static let percentEntry = HoverInfo3(rawValue: 1 << 6)
    public static let percentParent = HoverInfo3(rawValue: 1 << 7)
    public static let all = HoverInfo3(rawValue: 1 << 8)
    public static let none = HoverInfo3(rawValue: 1 << 9)
    public static let skip = HoverInfo3(rawValue: 1 << 10)

    public init(rawValue: Int) { self.rawValue = rawValue }

    public func encode(to encoder: Encoder) throws {
        var options = [String]()
        if (self.rawValue & 1 << 0) != 0 { options += ["label"] }
        if (self.rawValue & 1 << 1) != 0 { options += ["text"] }
        if (self.rawValue & 1 << 2) != 0 { options += ["value"] }
        if (self.rawValue & 1 << 3) != 0 { options += ["name"] }
        if (self.rawValue & 1 << 4) != 0 { options += ["current path"] }
        if (self.rawValue & 1 << 5) != 0 { options += ["percent root"] }
        if (self.rawValue & 1 << 6) != 0 { options += ["percent entry"] }
        if (self.rawValue & 1 << 7) != 0 { options += ["percent parent"] }
        if (self.rawValue & 1 << 8) != 0 { options += ["all"] }
        if (self.rawValue & 1 << 9) != 0 { options += ["none"] }
        if (self.rawValue & 1 << 10) != 0 { options += ["skip"] }
        var container = encoder.singleValueContainer()
        try container.encode(options.joined(separator: "+"))
    }
}

/// Sets the surface pattern of the iso-surface 3-D sections. 
///
/// The default pattern of the surface is `all` meaning that the rest of surface elements would be
/// shaded. The check options (either 1 or 2) could be used to draw half of the squares on the
/// surface. Using various combinations of capital `A`, `B`, `C`, `D` and `E` may also be used to
/// reduce the number of triangles on the iso-surfaces and creating other patterns of interest.
/// - traces/isosurface/attributes/surface/pattern
/// - traces/volume/attributes/surface/pattern
public struct Pattern0: OptionSet, Encodable {
    public let rawValue: Int

    public static let a = Pattern0(rawValue: 1 << 0)
    public static let b = Pattern0(rawValue: 1 << 1)
    public static let c = Pattern0(rawValue: 1 << 2)
    public static let d = Pattern0(rawValue: 1 << 3)
    public static let e = Pattern0(rawValue: 1 << 4)
    public static let all = Pattern0(rawValue: 1 << 5)
    public static let odd = Pattern0(rawValue: 1 << 6)
    public static let even = Pattern0(rawValue: 1 << 7)

    public init(rawValue: Int) { self.rawValue = rawValue }

    public func encode(to encoder: Encoder) throws {
        var options = [String]()
        if (self.rawValue & 1 << 0) != 0 { options += ["A"] }
        if (self.rawValue & 1 << 1) != 0 { options += ["B"] }
        if (self.rawValue & 1 << 2) != 0 { options += ["C"] }
        if (self.rawValue & 1 << 3) != 0 { options += ["D"] }
        if (self.rawValue & 1 << 4) != 0 { options += ["E"] }
        if (self.rawValue & 1 << 5) != 0 { options += ["all"] }
        if (self.rawValue & 1 << 6) != 0 { options += ["odd"] }
        if (self.rawValue & 1 << 7) != 0 { options += ["even"] }
        var container = encoder.singleValueContainer()
        try container.encode(options.joined(separator: "+"))
    }
}

/// Determines which trace information appear on hover. 
///
/// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
/// click and hover events are still fired.
/// - traces/choropleth/attributes/hoverinfo
/// - traces/choroplethmapbox/attributes/hoverinfo
public struct HoverInfo4: OptionSet, Encodable {
    public let rawValue: Int

    public static let location = HoverInfo4(rawValue: 1 << 0)
    public static let z = HoverInfo4(rawValue: 1 << 1)
    public static let text = HoverInfo4(rawValue: 1 << 2)
    public static let name = HoverInfo4(rawValue: 1 << 3)
    public static let all = HoverInfo4(rawValue: 1 << 4)
    public static let none = HoverInfo4(rawValue: 1 << 5)
    public static let skip = HoverInfo4(rawValue: 1 << 6)

    public init(rawValue: Int) { self.rawValue = rawValue }

    public func encode(to encoder: Encoder) throws {
        var options = [String]()
        if (self.rawValue & 1 << 0) != 0 { options += ["location"] }
        if (self.rawValue & 1 << 1) != 0 { options += ["z"] }
        if (self.rawValue & 1 << 2) != 0 { options += ["text"] }
        if (self.rawValue & 1 << 3) != 0 { options += ["name"] }
        if (self.rawValue & 1 << 4) != 0 { options += ["all"] }
        if (self.rawValue & 1 << 5) != 0 { options += ["none"] }
        if (self.rawValue & 1 << 6) != 0 { options += ["skip"] }
        var container = encoder.singleValueContainer()
        try container.encode(options.joined(separator: "+"))
    }
}

/// Determines which trace information appear on hover. 
///
/// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
/// click and hover events are still fired.
/// - traces/scatterpolar/attributes/hoverinfo
/// - traces/scatterpolargl/attributes/hoverinfo
/// - traces/barpolar/attributes/hoverinfo
public struct HoverInfo5: OptionSet, Encodable {
    public let rawValue: Int

    public static let r = HoverInfo5(rawValue: 1 << 0)
    public static let theta = HoverInfo5(rawValue: 1 << 1)
    public static let text = HoverInfo5(rawValue: 1 << 2)
    public static let name = HoverInfo5(rawValue: 1 << 3)
    public static let all = HoverInfo5(rawValue: 1 << 4)
    public static let none = HoverInfo5(rawValue: 1 << 5)
    public static let skip = HoverInfo5(rawValue: 1 << 6)

    public init(rawValue: Int) { self.rawValue = rawValue }

    public func encode(to encoder: Encoder) throws {
        var options = [String]()
        if (self.rawValue & 1 << 0) != 0 { options += ["r"] }
        if (self.rawValue & 1 << 1) != 0 { options += ["theta"] }
        if (self.rawValue & 1 << 2) != 0 { options += ["text"] }
        if (self.rawValue & 1 << 3) != 0 { options += ["name"] }
        if (self.rawValue & 1 << 4) != 0 { options += ["all"] }
        if (self.rawValue & 1 << 5) != 0 { options += ["none"] }
        if (self.rawValue & 1 << 6) != 0 { options += ["skip"] }
        var container = encoder.singleValueContainer()
        try container.encode(options.joined(separator: "+"))
    }
}
