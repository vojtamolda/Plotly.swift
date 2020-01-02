/// The data visualized as a point cloud set in `x` and `y` using the WebGl plotting engine.
public struct PointCloud: Trace {
    public let type: String = "pointcloud"

    public let animatable: Bool = false

    public var visible: Visible0?

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

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    public var ids: [Double]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    public var customData: [Double]?

    /// Assigns extra meta information associated with this trace that can be used in various text attributes. 
    ///
    /// Attributes such as trace `name`, graph, axis and colorbar `title.text`, annotation `text`
    /// `rangeselector`, `updatemenues` and `sliders` `label` text all support `meta`. To access the
    /// trace `meta` values in an attribute in the same trace, simply use `%{meta[i]}` where `i` is the
    /// index or key of the `meta` item in question. To access trace `meta` in layout attributes, use
    /// `%{data[n[.meta[i]}` where `i` is the index or key of the `meta` and `n` is the trace index.
    public var meta: Anything?

    public var hoverInfo: HoverInfo1?

    public var hoverLabel: HoverLabel1?

    public var stream: Stream0?

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
    public var uiRevision: Anything?

    /// Sets the x coordinates.
    public var x: [Double]?

    /// Sets the y coordinates.
    public var y: [Double]?

    /// Faster alternative to specifying `x` and `y` separately. 
    ///
    /// If supplied, it must be a typed `Float32Array` array that represents points such that `xy[i * 2]
    /// = x[i]` and `xy[i * 2 + 1] = y[i]`
    public var xy: [Double]?

    /// A sequential value, 0..n, supply it to avoid creating this array inside plotting. 
    ///
    /// If specified, it must be a typed `Int32Array` array. Its length must be equal to or greater than
    /// the number of points. For the best performance and memory use, create one large `indices` typed
    /// array that is guaranteed to be at least as long as the largest number of points during use, and
    /// reuse it on each `Plotly.restyle()` call.
    public var indices: [Double]?

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
    public var text: String?

    /// - traces/pointcloud/attributes/marker
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
    
        /// Determines if colors are blended together for a translucency effect in case `opacity` is specified as a value less then `1`. 
        ///
        /// Setting `blend` to `true` reduces zoom/pan speed if used with large numbers of points.
        public var blend: Bool?
    
        /// Sets the minimum size (in px) of the rendered marker points, effective when the `pointcloud` shows a million or more points.
        public var sizeMin: Double?
    
        /// Sets the maximum size (in px) of the rendered marker points. 
        ///
        /// Effective when the `pointcloud` shows only few points.
        public var sizeMax: Double?
    
        /// - traces/pointcloud/attributes/marker/border
        public struct Border: Encodable {
            /// Sets the stroke color. 
            ///
            /// It accepts a specific color. If the color is not fully opaque and there are hundreds of
            /// thousands of points, it may cause slower zooming and panning.
            public var color: Color?
        
            /// Specifies what fraction of the marker area is covered with the border.
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

    /// Sets the source reference on plot.ly for  ids .
    public var idsSource: String?

    /// Sets the source reference on plot.ly for  customdata .
    public var customDataSource: String?

    /// Sets the source reference on plot.ly for  meta .
    public var metaSource: String?

    /// Sets the source reference on plot.ly for  hoverinfo .
    public var hoverInfoSource: String?

    /// Sets the source reference on plot.ly for  x .
    public var xSource: String?

    /// Sets the source reference on plot.ly for  y .
    public var ySource: String?

    /// Sets the source reference on plot.ly for  xy .
    public var xySource: String?

    /// Sets the source reference on plot.ly for  indices .
    public var indicesSource: String?

    /// Sets the source reference on plot.ly for  xbounds .
    public var xBoundsSource: String?

    /// Sets the source reference on plot.ly for  ybounds .
    public var yBoundsSource: String?

    /// Sets the source reference on plot.ly for  text .
    public var textSource: String?

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
        case idsSource = "idssrc"
        case customDataSource = "customdatasrc"
        case metaSource = "metasrc"
        case hoverInfoSource = "hoverinfosrc"
        case xSource = "xsrc"
        case ySource = "ysrc"
        case xySource = "xysrc"
        case indicesSource = "indicessrc"
        case xBoundsSource = "xboundssrc"
        case yBoundsSource = "yboundssrc"
        case textSource = "textsrc"
    }
    
    public init(visible: Visible0? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, hoverInfo: HoverInfo1? = nil, hoverLabel: HoverLabel1? = nil, stream: Stream0? = nil, uiRevision: Anything? = nil, x: [Double]? = nil, y: [Double]? = nil, xy: [Double]? = nil, indices: [Double]? = nil, xBounds: [Double]? = nil, yBounds: [Double]? = nil, text: String? = nil, marker: Marker? = nil, xAxis: SubPlotID? = nil, yAxis: SubPlotID? = nil, idsSource: String? = nil, customDataSource: String? = nil, metaSource: String? = nil, hoverInfoSource: String? = nil, xSource: String? = nil, ySource: String? = nil, xySource: String? = nil, indicesSource: String? = nil, xBoundsSource: String? = nil, yBoundsSource: String? = nil, textSource: String? = nil) {
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
        self.idsSource = idsSource
        self.customDataSource = customDataSource
        self.metaSource = metaSource
        self.hoverInfoSource = hoverInfoSource
        self.xSource = xSource
        self.ySource = ySource
        self.xySource = xySource
        self.indicesSource = indicesSource
        self.xBoundsSource = xBoundsSource
        self.yBoundsSource = yBoundsSource
        self.textSource = textSource
    }
}