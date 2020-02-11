/// The data visualized as a point cloud set in `x` and `y` using the WebGl plotting engine.
/// 
/// - SeeAlso:
///   Documentation for 
///   [Python](https://plot.ly/python/reference/#pointcloud), 
///   [JavaScript](https://plot.ly/javascript/reference/#pointcloud) or 
///   [R](https://plot.ly/r/reference/#pointcloud)
public struct PointCloud<XYData>: Trace where XYData: Plotable {
    public let type: String = "pointcloud"

    public let animatable: Bool = false

    /// Determines whether or not this trace is visible.
    /// 
    /// If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the
    /// legend itself is visible).
    public var visible: Shared.Visible?

    /// Determines whether or not an item corresponding to this trace is shown in the legend.
    public var showLegend: Bool?

    /// Sets the legend group for this trace.
    /// 
    /// Traces part of the same legend group hide/show at the same time when toggling legend items.
    public var legendGroup: String?

    /// Sets the opacity of the trace.
    public var opacity: Double?

    /// Sets the trace name.
    /// 
    /// The trace name appear as the legend item and on hover.
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during
    /// animations and transitions.
    public var uid: String?

    /// Assigns id labels to each datum.
    /// 
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    public var ids: [String]?

    /// Assigns extra data each datum.
    /// 
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    public var customData: [String]?

    /// Assigns extra meta information associated with this trace that can be used in various text
    /// attributes.
    /// 
    /// Attributes such as trace `name`, graph, axis and colorbar `title.text`, annotation `text`
    /// `rangeselector`, `updatemenues` and `sliders` `label` text all support `meta`. To access the
    /// trace `meta` values in an attribute in the same trace, simply use `%{meta[i]}` where `i` is the
    /// index or key of the `meta` item in question. To access trace `meta` in layout attributes, use
    /// `%{data[n[.meta[i]}` where `i` is the index or key of the `meta` and `n` is the trace index.
    public var meta: ArrayOrAnything?

    /// Determines which trace information appear on hover.
    /// 
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    public var hoverInfo: Shared.HoverInfo?

    public var hoverLabel: Shared.HoverLabel?

    public var stream: Shared.Stream?

    /// Controls persistence of some user-driven changes to the trace: `constraintrange` in `parcoords`
    /// traces, as well as some `editable: true` modifications such as `name` and `colorbar.title`.
    /// 
    /// Defaults to `layout.uirevision`. Note that other user-driven trace attribute changes are
    /// controlled by `layout` attributes: `trace.visible` is controlled by `layout.legend.uirevision`,
    /// `selectedpoints` is controlled by `layout.selectionrevision`, and `colorbar.(x|y)` (accessible
    /// with `config: {editable: true}`) is controlled by `layout.editrevision`. Trace changes are
    /// tracked by `uid`, which only falls back on trace index if no `uid` is provided. So if your app
    /// can add/remove traces before the end of the `data` array, such that the same trace has a
    /// different index, you can still preserve user-driven changes if you give each trace a `uid` that
    /// stays with it as it moves.
    public var uiRevision: Anything?

    /// Sets the x coordinates.
    public var x: XYData?

    /// Sets the y coordinates.
    public var y: XYData?

    /// Faster alternative to specifying `x` and `y` separately.
    /// 
    /// If supplied, it must be a typed `Float32Array` array that represents points such that `xy[i * 2]
    /// = x[i]` and `xy[i * 2 + 1] = y[i]`
    public var xy: XYData?

    /// A sequential value, 0..n, supply it to avoid creating this array inside plotting.
    /// 
    /// If specified, it must be a typed `Int32Array` array. Its length must be equal to or greater than
    /// the number of points. For the best performance and memory use, create one large `indices` typed
    /// array that is guaranteed to be at least as long as the largest number of points during use, and
    /// reuse it on each `Plotly.restyle()` call.
    public var indices: [Int]?

    /// Specify `xbounds` in the shape of `[xMin, xMax] to avoid looping through the `xy` typed array.
    /// 
    /// Use it in conjunction with `xy` and `ybounds` for the performance benefits.
    public var xBounds: [Double]?

    /// Specify `ybounds` in the shape of `[yMin, yMax] to avoid looping through the `xy` typed array.
    /// 
    /// Use it in conjunction with `xy` and `xbounds` for the performance benefits.
    public var yBounds: [Double]?

    /// Sets text elements associated with each (x,y) pair.
    /// 
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to the this trace's (x,y) coordinates. If trace `hoverinfo` contains a
    /// *text* flag and *hovertext* is not set, these elements will be seen in the hover labels.
    public var text: ArrayOrString?

    public struct Marker: Encodable {
        /// Sets the marker fill color.
        /// 
        /// It accepts a specific color.If the color is not fully opaque and there are hundreds of
        /// thousandsof points, it may cause slower zooming and panning.
        public var color: Color?
    
        /// Sets the marker opacity.
        /// 
        /// The default value is `1` (fully opaque). If the markers are not fully opaque and there are
        /// hundreds of thousands of points, it may cause slower zooming and panning. Opacity fades the
        /// color even if `blend` is left on `false` even if there is no translucency effect in that case.
        public var opacity: Double?
    
        /// Determines if colors are blended together for a translucency effect in case `opacity` is
        /// specified as a value less then `1`.
        /// 
        /// Setting `blend` to `true` reduces zoom/pan speed if used with large numbers of points.
        public var blend: Bool?
    
        /// Sets the minimum size (in px) of the rendered marker points, effective when the `pointcloud`
        /// shows a million or more points.
        public var sizeMin: Double?
    
        /// Sets the maximum size (in px) of the rendered marker points.
        /// 
        /// Effective when the `pointcloud` shows only few points.
        public var sizeMax: Double?
    
        public struct Border: Encodable {
            /// Sets the stroke color.
            /// 
            /// It accepts a specific color. If the color is not fully opaque and there are hundreds of
            /// thousands of points, it may cause slower zooming and panning.
            public var color: Color?
        
            /// Specifies what fraction of the marker area is covered with the border.
            public var areaRatio: Double?
        
            /// Decoding and encoding keys compatible with Plotly schema.
            enum CodingKeys: String, CodingKey {
                case color
                case areaRatio = "arearatio"
            }
            
            /// Creates `Border` object with specified properties.
            /// 
            /// - Parameters:
            ///   - color: Sets the stroke color.
            ///   - areaRatio: Specifies what fraction of the marker area is covered with the border.
            public init(color: Color? = nil, areaRatio: Double? = nil) {
                self.color = color
                self.areaRatio = areaRatio
            }
            
        }
        public var border: Border?
    
        /// Decoding and encoding keys compatible with Plotly schema.
        enum CodingKeys: String, CodingKey {
            case color
            case opacity
            case blend
            case sizeMin = "sizemin"
            case sizeMax = "sizemax"
            case border
        }
        
        /// Creates `Marker` object with specified properties.
        /// 
        /// - Parameters:
        ///   - color: Sets the marker fill color.
        ///   - opacity: Sets the marker opacity.
        ///   - blend: Determines if colors are blended together for a translucency effect in case `opacity`
        ///   is specified as a value less then `1`.
        ///   - sizeMin: Sets the minimum size (in px) of the rendered marker points, effective when the
        ///   `pointcloud` shows a million or more points.
        ///   - sizeMax: Sets the maximum size (in px) of the rendered marker points.
        ///   - border:
        public init(color: Color? = nil, opacity: Double? = nil, blend: Bool? = nil, sizeMin: Double? =
                nil, sizeMax: Double? = nil, border: Border? = nil) {
            self.color = color
            self.opacity = opacity
            self.blend = blend
            self.sizeMin = sizeMin
            self.sizeMax = sizeMax
            self.border = border
        }
        
    }
    public var marker: Marker?

    /// Sets a reference between this trace's x coordinates and a 2D cartesian x axis.
    /// 
    /// If *x* (the default value), the x coordinates refer to `layout.xaxis`. If *x2*, the x
    /// coordinates refer to `layout.xaxis2`, and so on.
    public var xAxis: SubPlotID?

    /// Sets a reference between this trace's y coordinates and a 2D cartesian y axis.
    /// 
    /// If *y* (the default value), the y coordinates refer to `layout.yaxis`. If *y2*, the y
    /// coordinates refer to `layout.yaxis2`, and so on.
    public var yAxis: SubPlotID?

    /// Decoding and encoding keys compatible with Plotly schema.
    enum CodingKeys: String, CodingKey {
        case type
        case animatable
        case visible
        case showLegend = "showlegend"
        case legendGroup = "legendgroup"
        case opacity
        case name
        case uid
        case ids
        case customData = "customdata"
        case meta
        case hoverInfo = "hoverinfo"
        case hoverLabel = "hoverlabel"
        case stream
        case uiRevision = "uirevision"
        case x
        case y
        case xy
        case indices
        case xBounds = "xbounds"
        case yBounds = "ybounds"
        case text
        case marker
        case xAxis = "xaxis"
        case yAxis = "yaxis"
    }
    
    /// Creates `PointCloud` object from the most frequently used properties.
    /// 
    /// - Parameters:
    ///   - name: Sets the trace name.
    ///   - x: Sets the x coordinates.
    ///   - y: Sets the y coordinates.
    ///   - xy: Faster alternative to specifying `x` and `y` separately.
    ///   - text: Sets text elements associated with each (x,y) pair.
    ///   - marker:
    public init(name: String? = nil, x: XYData? = nil, y: XYData? = nil, xy: XYData? = nil, text:
            ArrayOrString? = nil, marker: Marker? = nil) {
        self.name = name
        self.x = x
        self.y = y
        self.xy = xy
        self.text = text
        self.marker = marker
    }
    
    /// Creates `PointCloud` object with specified properties.
    /// 
    /// - Parameters:
    ///   - visible: Determines whether or not this trace is visible.
    ///   - showLegend: Determines whether or not an item corresponding to this trace is shown in the
    ///   legend.
    ///   - legendGroup: Sets the legend group for this trace.
    ///   - opacity: Sets the opacity of the trace.
    ///   - name: Sets the trace name.
    ///   - uid: Assign an id to this trace, Use this to provide object constancy between traces during
    ///   animations and transitions.
    ///   - ids: Assigns id labels to each datum.
    ///   - customData: Assigns extra data each datum.
    ///   - meta: Assigns extra meta information associated with this trace that can be used in various
    ///   text attributes.
    ///   - hoverInfo: Determines which trace information appear on hover.
    ///   - hoverLabel:
    ///   - stream:
    ///   - uiRevision: Controls persistence of some user-driven changes to the trace: `constraintrange`
    ///   in `parcoords` traces, as well as some `editable: true` modifications such as `name` and
    ///   `colorbar.title`.
    ///   - x: Sets the x coordinates.
    ///   - y: Sets the y coordinates.
    ///   - xy: Faster alternative to specifying `x` and `y` separately.
    ///   - indices: A sequential value, 0..n, supply it to avoid creating this array inside plotting.
    ///   - xBounds: Specify `xbounds` in the shape of `[xMin, xMax] to avoid looping through the `xy`
    ///   typed array.
    ///   - yBounds: Specify `ybounds` in the shape of `[yMin, yMax] to avoid looping through the `xy`
    ///   typed array.
    ///   - text: Sets text elements associated with each (x,y) pair.
    ///   - marker:
    ///   - xAxis: Sets a reference between this trace's x coordinates and a 2D cartesian x axis.
    ///   - yAxis: Sets a reference between this trace's y coordinates and a 2D cartesian y axis.
    public init(visible: Shared.Visible? = nil, showLegend: Bool? = nil, legendGroup: String? = nil,
            opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [String]? = nil,
            customData: [String]? = nil, meta: ArrayOrAnything? = nil, hoverInfo: Shared.HoverInfo? = nil,
            hoverLabel: Shared.HoverLabel? = nil, stream: Shared.Stream? = nil, uiRevision: Anything? = nil,
            x: XYData? = nil, y: XYData? = nil, xy: XYData? = nil, indices: [Int]? = nil, xBounds: [Double]?
            = nil, yBounds: [Double]? = nil, text: ArrayOrString? = nil, marker: Marker? = nil, xAxis:
            SubPlotID? = nil, yAxis: SubPlotID? = nil) {
        self.visible = visible
        self.showLegend = showLegend
        self.legendGroup = legendGroup
        self.opacity = opacity
        self.name = name
        self.uid = uid
        self.ids = ids
        self.customData = customData
        self.meta = meta
        self.hoverInfo = hoverInfo
        self.hoverLabel = hoverLabel
        self.stream = stream
        self.uiRevision = uiRevision
        self.x = x
        self.y = y
        self.xy = xy
        self.indices = indices
        self.xBounds = xBounds
        self.yBounds = yBounds
        self.text = text
        self.marker = marker
        self.xAxis = xAxis
        self.yAxis = yAxis
    }
    
    /// Encodes the object in a format compatible with Plotly.
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(animatable, forKey: .animatable)
        try container.encodeIfPresent(visible, forKey: .visible)
        try container.encodeIfPresent(showLegend, forKey: .showLegend)
        try container.encodeIfPresent(legendGroup, forKey: .legendGroup)
        try container.encodeIfPresent(opacity, forKey: .opacity)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(uid, forKey: .uid)
        try container.encodeIfPresent(ids, forKey: .ids)
        try container.encodeIfPresent(customData, forKey: .customData)
        try container.encodeIfPresent(meta, forKey: .meta)
        try container.encodeIfPresent(hoverInfo, forKey: .hoverInfo)
        try container.encodeIfPresent(hoverLabel, forKey: .hoverLabel)
        try container.encodeIfPresent(stream, forKey: .stream)
        try container.encodeIfPresent(uiRevision, forKey: .uiRevision)
        try container.encodeIfPresent(indices, forKey: .indices)
        try container.encodeIfPresent(xBounds, forKey: .xBounds)
        try container.encodeIfPresent(yBounds, forKey: .yBounds)
        try container.encodeIfPresent(text, forKey: .text)
        try container.encodeIfPresent(marker, forKey: .marker)
        try container.encodeIfPresent(xAxis, forKey: .xAxis)
        try container.encodeIfPresent(yAxis, forKey: .yAxis)
    
        if let x = self.x {
            let xEncoder = container.superEncoder(forKey: .x)
            try x.encode(toPlotly: xEncoder)
        }
    
        if let y = self.y {
            let yEncoder = container.superEncoder(forKey: .y)
            try y.encode(toPlotly: yEncoder)
        }
    
        if let xy = self.xy {
            let xyEncoder = container.superEncoder(forKey: .xy)
            try xy.encode(toPlotly: xyEncoder)
        }
    }
    
}