/// The data visualized as a point cloud set in `x` and `y` using the WebGl plotting engine.
public struct PointCloud<XData, YData>: Trace where XData: Encodable, YData: Encodable {
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#type) |
    /// [Python](https://plot.ly/python/reference/#type) |
    /// [R](https://plot.ly/r/reference/#type)
    public let type: String = "pointcloud"

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#animatable) |
    /// [Python](https://plot.ly/python/reference/#animatable) |
    /// [R](https://plot.ly/r/reference/#animatable)
    public let animatable: Bool = false

    /// Determines whether or not this trace is visible. 
    ///
    /// If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the
    /// legend itself is visible).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pointcloud-visible) |
    /// [Python](https://plot.ly/python/reference/#pointcloud-visible) |
    /// [R](https://plot.ly/r/reference/#pointcloud-visible)
    public var visible: Shared.Visible?

    /// Determines whether or not an item corresponding to this trace is shown in the legend.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pointcloud-showlegend) |
    /// [Python](https://plot.ly/python/reference/#pointcloud-showlegend) |
    /// [R](https://plot.ly/r/reference/#pointcloud-showlegend)
    public var showLegend: Bool?

    /// Sets the legend group for this trace. 
    ///
    /// Traces part of the same legend group hide/show at the same time when toggling legend items.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pointcloud-legendgroup) |
    /// [Python](https://plot.ly/python/reference/#pointcloud-legendgroup) |
    /// [R](https://plot.ly/r/reference/#pointcloud-legendgroup)
    public var legendGroup: String?

    /// Sets the opacity of the trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pointcloud-opacity) |
    /// [Python](https://plot.ly/python/reference/#pointcloud-opacity) |
    /// [R](https://plot.ly/r/reference/#pointcloud-opacity)
    public var opacity: Double?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pointcloud-name) |
    /// [Python](https://plot.ly/python/reference/#pointcloud-name) |
    /// [R](https://plot.ly/r/reference/#pointcloud-name)
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pointcloud-uid) |
    /// [Python](https://plot.ly/python/reference/#pointcloud-uid) |
    /// [R](https://plot.ly/r/reference/#pointcloud-uid)
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pointcloud-ids) |
    /// [Python](https://plot.ly/python/reference/#pointcloud-ids) |
    /// [R](https://plot.ly/r/reference/#pointcloud-ids)
    public var ids: [Double]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pointcloud-customdata) |
    /// [Python](https://plot.ly/python/reference/#pointcloud-customdata) |
    /// [R](https://plot.ly/r/reference/#pointcloud-customdata)
    public var customData: [Double]?

    /// Assigns extra meta information associated with this trace that can be used in various text attributes. 
    ///
    /// Attributes such as trace `name`, graph, axis and colorbar `title.text`, annotation `text`
    /// `rangeselector`, `updatemenues` and `sliders` `label` text all support `meta`. To access the
    /// trace `meta` values in an attribute in the same trace, simply use `%{meta[i]}` where `i` is the
    /// index or key of the `meta` item in question. To access trace `meta` in layout attributes, use
    /// `%{data[n[.meta[i]}` where `i` is the index or key of the `meta` and `n` is the trace index.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pointcloud-meta) |
    /// [Python](https://plot.ly/python/reference/#pointcloud-meta) |
    /// [R](https://plot.ly/r/reference/#pointcloud-meta)
    public var meta: ArrayOrAnything?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pointcloud-hoverinfo) |
    /// [Python](https://plot.ly/python/reference/#pointcloud-hoverinfo) |
    /// [R](https://plot.ly/r/reference/#pointcloud-hoverinfo)
    public var hoverInfo: Shared.HoverInfo?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pointcloud-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#pointcloud-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#pointcloud-hoverlabel)
    public var hoverLabel: Shared.HoverLabel?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pointcloud-stream) |
    /// [Python](https://plot.ly/python/reference/#pointcloud-stream) |
    /// [R](https://plot.ly/r/reference/#pointcloud-stream)
    public var stream: Shared.Stream?

    /// Controls persistence of some user-driven changes to the trace: `constraintrange` in `parcoords` traces, as well as some `editable: true` modifications such as `name` and `colorbar.title`. 
    ///
    /// Defaults to `layout.uirevision`. Note that other user-driven trace attribute changes are
    /// controlled by `layout` attributes: `trace.visible` is controlled by `layout.legend.uirevision`,
    /// `selectedpoints` is controlled by `layout.selectionrevision`, and `colorbar.(x|y)` (accessible
    /// with `config: {editable: true}`) is controlled by `layout.editrevision`. Trace changes are
    /// tracked by `uid`, which only falls back on trace index if no `uid` is provided. So if your app
    /// can add/remove traces before the end of the `data` array, such that the same trace has a
    /// different index, you can still preserve user-driven changes if you give each trace a `uid` that
    /// stays with it as it moves.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pointcloud-uirevision) |
    /// [Python](https://plot.ly/python/reference/#pointcloud-uirevision) |
    /// [R](https://plot.ly/r/reference/#pointcloud-uirevision)
    public var uiRevision: Anything?

    /// Sets the x coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pointcloud-x) |
    /// [Python](https://plot.ly/python/reference/#pointcloud-x) |
    /// [R](https://plot.ly/r/reference/#pointcloud-x)
    public var x: XData?

    /// Sets the y coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pointcloud-y) |
    /// [Python](https://plot.ly/python/reference/#pointcloud-y) |
    /// [R](https://plot.ly/r/reference/#pointcloud-y)
    public var y: YData?

    /// Faster alternative to specifying `x` and `y` separately. 
    ///
    /// If supplied, it must be a typed `Float32Array` array that represents points such that `xy[i * 2]
    /// = x[i]` and `xy[i * 2 + 1] = y[i]`
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pointcloud-xy) |
    /// [Python](https://plot.ly/python/reference/#pointcloud-xy) |
    /// [R](https://plot.ly/r/reference/#pointcloud-xy)
    public var xy: [Double]?

    /// A sequential value, 0..n, supply it to avoid creating this array inside plotting. 
    ///
    /// If specified, it must be a typed `Int32Array` array. Its length must be equal to or greater than
    /// the number of points. For the best performance and memory use, create one large `indices` typed
    /// array that is guaranteed to be at least as long as the largest number of points during use, and
    /// reuse it on each `Plotly.restyle()` call.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pointcloud-indices) |
    /// [Python](https://plot.ly/python/reference/#pointcloud-indices) |
    /// [R](https://plot.ly/r/reference/#pointcloud-indices)
    public var indices: [Double]?

    /// Specify `xbounds` in the shape of `[xMin, xMax] to avoid looping through the `xy` typed array. 
    ///
    /// Use it in conjunction with `xy` and `ybounds` for the performance benefits.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pointcloud-xbounds) |
    /// [Python](https://plot.ly/python/reference/#pointcloud-xbounds) |
    /// [R](https://plot.ly/r/reference/#pointcloud-xbounds)
    public var xBounds: [Double]?

    /// Specify `ybounds` in the shape of `[yMin, yMax] to avoid looping through the `xy` typed array. 
    ///
    /// Use it in conjunction with `xy` and `xbounds` for the performance benefits.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pointcloud-ybounds) |
    /// [Python](https://plot.ly/python/reference/#pointcloud-ybounds) |
    /// [R](https://plot.ly/r/reference/#pointcloud-ybounds)
    public var yBounds: [Double]?

    /// Sets text elements associated with each (x,y) pair. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to the this trace's (x,y) coordinates. If trace `hoverinfo` contains a
    /// *text* flag and *hovertext* is not set, these elements will be seen in the hover labels.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pointcloud-text) |
    /// [Python](https://plot.ly/python/reference/#pointcloud-text) |
    /// [R](https://plot.ly/r/reference/#pointcloud-text)
    public var text: ArrayOrString?

    /// # Used By
    /// `PointCloud.marker` |
    public struct Marker: Encodable {
        /// Sets the marker fill color. 
        ///
        /// It accepts a specific color.If the color is not fully opaque and there are hundreds of
        /// thousandsof points, it may cause slower zooming and panning.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#pointcloud-marker-color) |
        /// [Python](https://plot.ly/python/reference/#pointcloud-marker-color) |
        /// [R](https://plot.ly/r/reference/#pointcloud-marker-color)
        public var color: Color?
    
        /// Sets the marker opacity. 
        ///
        /// The default value is `1` (fully opaque). If the markers are not fully opaque and there are
        /// hundreds of thousands of points, it may cause slower zooming and panning. Opacity fades the
        /// color even if `blend` is left on `false` even if there is no translucency effect in that case.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#pointcloud-marker-opacity) |
        /// [Python](https://plot.ly/python/reference/#pointcloud-marker-opacity) |
        /// [R](https://plot.ly/r/reference/#pointcloud-marker-opacity)
        public var opacity: Double?
    
        /// Determines if colors are blended together for a translucency effect in case `opacity` is specified as a value less then `1`. 
        ///
        /// Setting `blend` to `true` reduces zoom/pan speed if used with large numbers of points.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#pointcloud-marker-blend) |
        /// [Python](https://plot.ly/python/reference/#pointcloud-marker-blend) |
        /// [R](https://plot.ly/r/reference/#pointcloud-marker-blend)
        public var blend: Bool?
    
        /// Sets the minimum size (in px) of the rendered marker points, effective when the `pointcloud` shows a million or more points.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#pointcloud-marker-sizemin) |
        /// [Python](https://plot.ly/python/reference/#pointcloud-marker-sizemin) |
        /// [R](https://plot.ly/r/reference/#pointcloud-marker-sizemin)
        public var sizeMin: Double?
    
        /// Sets the maximum size (in px) of the rendered marker points. 
        ///
        /// Effective when the `pointcloud` shows only few points.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#pointcloud-marker-sizemax) |
        /// [Python](https://plot.ly/python/reference/#pointcloud-marker-sizemax) |
        /// [R](https://plot.ly/r/reference/#pointcloud-marker-sizemax)
        public var sizeMax: Double?
    
        /// # Used By
        /// `PointCloud.Marker.border` |
        public struct Border: Encodable {
            /// Sets the stroke color. 
            ///
            /// It accepts a specific color. If the color is not fully opaque and there are hundreds of
            /// thousands of points, it may cause slower zooming and panning.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#pointcloud-marker-border-color) |
            /// [Python](https://plot.ly/python/reference/#pointcloud-marker-border-color) |
            /// [R](https://plot.ly/r/reference/#pointcloud-marker-border-color)
            public var color: Color?
        
            /// Specifies what fraction of the marker area is covered with the border.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#pointcloud-marker-border-arearatio) |
            /// [Python](https://plot.ly/python/reference/#pointcloud-marker-border-arearatio) |
            /// [R](https://plot.ly/r/reference/#pointcloud-marker-border-arearatio)
            public var areaRatio: Double?
        
            /// Plotly compatible property encoding
            enum CodingKeys: String, CodingKey {
                case color
                case areaRatio = "arearatio"
            }
            
            public init(color: Color? = nil, areaRatio: Double? = nil) {
                self.color = color
                self.areaRatio = areaRatio
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#pointcloud-marker-border) |
        /// [Python](https://plot.ly/python/reference/#pointcloud-marker-border) |
        /// [R](https://plot.ly/r/reference/#pointcloud-marker-border)
        public var border: Border?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case color
            case opacity
            case blend
            case sizeMin = "sizemin"
            case sizeMax = "sizemax"
            case border
        }
        
        public init(color: Color? = nil, opacity: Double? = nil, blend: Bool? = nil, sizeMin: Double? = nil, sizeMax: Double? = nil, border: Border? = nil) {
            self.color = color
            self.opacity = opacity
            self.blend = blend
            self.sizeMin = sizeMin
            self.sizeMax = sizeMax
            self.border = border
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pointcloud-marker) |
    /// [Python](https://plot.ly/python/reference/#pointcloud-marker) |
    /// [R](https://plot.ly/r/reference/#pointcloud-marker)
    public var marker: Marker?

    /// Sets a reference between this trace's x coordinates and a 2D cartesian x axis. 
    ///
    /// If *x* (the default value), the x coordinates refer to `layout.xaxis`. If *x2*, the x
    /// coordinates refer to `layout.xaxis2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pointcloud-xaxis) |
    /// [Python](https://plot.ly/python/reference/#pointcloud-xaxis) |
    /// [R](https://plot.ly/r/reference/#pointcloud-xaxis)
    public var xAxis: SubPlotID?

    /// Sets a reference between this trace's y coordinates and a 2D cartesian y axis. 
    ///
    /// If *y* (the default value), the y coordinates refer to `layout.yaxis`. If *y2*, the y
    /// coordinates refer to `layout.yaxis2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pointcloud-yaxis) |
    /// [Python](https://plot.ly/python/reference/#pointcloud-yaxis) |
    /// [R](https://plot.ly/r/reference/#pointcloud-yaxis)
    public var yAxis: SubPlotID?

    /// Plotly compatible property encoding
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
    
    public init(visible: Shared.Visible? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: ArrayOrAnything? = nil, hoverInfo: Shared.HoverInfo? = nil, hoverLabel: Shared.HoverLabel? = nil, stream: Shared.Stream? = nil, uiRevision: Anything? = nil, x: XData? = nil, y: YData? = nil, xy: [Double]? = nil, indices: [Double]? = nil, xBounds: [Double]? = nil, yBounds: [Double]? = nil, text: ArrayOrString? = nil, marker: Marker? = nil, xAxis: SubPlotID? = nil, yAxis: SubPlotID? = nil) {
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
}