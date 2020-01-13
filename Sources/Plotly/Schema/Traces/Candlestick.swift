/// The candlestick is a style of financial chart describing open, high, low and close for a given `x` coordinate (most likely time). 
///
/// The boxes represent the spread between the `open` and `close` values and the lines represent the
/// spread between the `low` and `high` values Sample points where the close value is higher (lower)
/// then the open value are called increasing (decreasing). By default, increasing candles are drawn
/// in green whereas decreasing are drawn in red.
public struct Candlestick: Trace {
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#type) |
    /// [Python](https://plot.ly/python/reference/#type) |
    /// [R](https://plot.ly/r/reference/#type)
    public let type: String = "candlestick"

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
    /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-visible) |
    /// [Python](https://plot.ly/python/reference/#candlestick-visible) |
    /// [R](https://plot.ly/r/reference/#candlestick-visible)
    public var visible: Visible0?

    /// Determines whether or not an item corresponding to this trace is shown in the legend.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-showlegend) |
    /// [Python](https://plot.ly/python/reference/#candlestick-showlegend) |
    /// [R](https://plot.ly/r/reference/#candlestick-showlegend)
    public var showLegend: Bool?

    /// Sets the legend group for this trace. 
    ///
    /// Traces part of the same legend group hide/show at the same time when toggling legend items.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-legendgroup) |
    /// [Python](https://plot.ly/python/reference/#candlestick-legendgroup) |
    /// [R](https://plot.ly/r/reference/#candlestick-legendgroup)
    public var legendGroup: String?

    /// Sets the opacity of the trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-opacity) |
    /// [Python](https://plot.ly/python/reference/#candlestick-opacity) |
    /// [R](https://plot.ly/r/reference/#candlestick-opacity)
    public var opacity: Double?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-name) |
    /// [Python](https://plot.ly/python/reference/#candlestick-name) |
    /// [R](https://plot.ly/r/reference/#candlestick-name)
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-uid) |
    /// [Python](https://plot.ly/python/reference/#candlestick-uid) |
    /// [R](https://plot.ly/r/reference/#candlestick-uid)
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-ids) |
    /// [Python](https://plot.ly/python/reference/#candlestick-ids) |
    /// [R](https://plot.ly/r/reference/#candlestick-ids)
    public var ids: [Double]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-customdata) |
    /// [Python](https://plot.ly/python/reference/#candlestick-customdata) |
    /// [R](https://plot.ly/r/reference/#candlestick-customdata)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-meta) |
    /// [Python](https://plot.ly/python/reference/#candlestick-meta) |
    /// [R](https://plot.ly/r/reference/#candlestick-meta)
    public var meta: Anything?

    /// Array containing integer indices of selected points. 
    ///
    /// Has an effect only for traces that support selections. Note that an empty array means an empty
    /// selection where the `unselected` are turned on for all points, whereas, any other non-array
    /// values means no selection all where the `selected` and `unselected` styles have no effect.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-selectedpoints) |
    /// [Python](https://plot.ly/python/reference/#candlestick-selectedpoints) |
    /// [R](https://plot.ly/r/reference/#candlestick-selectedpoints)
    public var selectedPoints: Anything?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-hoverinfo) |
    /// [Python](https://plot.ly/python/reference/#candlestick-hoverinfo) |
    /// [R](https://plot.ly/r/reference/#candlestick-hoverinfo)
    public var hoverInfo: HoverInfo0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-stream) |
    /// [Python](https://plot.ly/python/reference/#candlestick-stream) |
    /// [R](https://plot.ly/r/reference/#candlestick-stream)
    public var stream: Stream0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-transforms) |
    /// [Python](https://plot.ly/python/reference/#candlestick-transforms) |
    /// [R](https://plot.ly/r/reference/#candlestick-transforms)
    public var transforms: Transforms0?

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
    /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-uirevision) |
    /// [Python](https://plot.ly/python/reference/#candlestick-uirevision) |
    /// [R](https://plot.ly/r/reference/#candlestick-uirevision)
    public var uiRevision: Anything?

    /// Sets the x coordinates. 
    ///
    /// If absent, linear coordinate will be generated.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-x) |
    /// [Python](https://plot.ly/python/reference/#candlestick-x) |
    /// [R](https://plot.ly/r/reference/#candlestick-x)
    public var x: [Double]?

    /// Sets the open values.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-open) |
    /// [Python](https://plot.ly/python/reference/#candlestick-open) |
    /// [R](https://plot.ly/r/reference/#candlestick-open)
    public var open: [Double]?

    /// Sets the high values.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-high) |
    /// [Python](https://plot.ly/python/reference/#candlestick-high) |
    /// [R](https://plot.ly/r/reference/#candlestick-high)
    public var high: [Double]?

    /// Sets the low values.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-low) |
    /// [Python](https://plot.ly/python/reference/#candlestick-low) |
    /// [R](https://plot.ly/r/reference/#candlestick-low)
    public var low: [Double]?

    /// Sets the close values.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-close) |
    /// [Python](https://plot.ly/python/reference/#candlestick-close) |
    /// [R](https://plot.ly/r/reference/#candlestick-close)
    public var close: [Double]?

    ///
    /// # Used By
    /// `Candlestick.line` |
    public struct Line: Encodable {
        /// Sets the width (in px) of line bounding the box(es). 
        ///
        /// Note that this style setting can also be set per direction via `increasing.line.width` and
        /// `decreasing.line.width`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-line-width) |
        /// [Python](https://plot.ly/python/reference/#candlestick-line-width) |
        /// [R](https://plot.ly/r/reference/#candlestick-line-width)
        public var width: Double?
    
        public init(width: Double? = nil) {
            self.width = width
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-line) |
    /// [Python](https://plot.ly/python/reference/#candlestick-line) |
    /// [R](https://plot.ly/r/reference/#candlestick-line)
    public var line: Line?

    ///
    /// # Used By
    /// `Candlestick.increasing` |
    public struct Increasing: Encodable {
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-increasing-line) |
        /// [Python](https://plot.ly/python/reference/#candlestick-increasing-line) |
        /// [R](https://plot.ly/r/reference/#candlestick-increasing-line)
        public var line: Line0?
    
        /// Sets the fill color. 
        ///
        /// Defaults to a half-transparent variant of the line color, marker color, or marker line color,
        /// whichever is available.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-increasing-fillcolor) |
        /// [Python](https://plot.ly/python/reference/#candlestick-increasing-fillcolor) |
        /// [R](https://plot.ly/r/reference/#candlestick-increasing-fillcolor)
        public var fillColor: Color?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case line
            case fillColor = "fillcolor"
        }
        
        public init(line: Line0? = nil, fillColor: Color? = nil) {
            self.line = line
            self.fillColor = fillColor
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-increasing) |
    /// [Python](https://plot.ly/python/reference/#candlestick-increasing) |
    /// [R](https://plot.ly/r/reference/#candlestick-increasing)
    public var increasing: Increasing?

    ///
    /// # Used By
    /// `Candlestick.decreasing` |
    public struct Decreasing: Encodable {
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-decreasing-line) |
        /// [Python](https://plot.ly/python/reference/#candlestick-decreasing-line) |
        /// [R](https://plot.ly/r/reference/#candlestick-decreasing-line)
        public var line: Line0?
    
        /// Sets the fill color. 
        ///
        /// Defaults to a half-transparent variant of the line color, marker color, or marker line color,
        /// whichever is available.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-decreasing-fillcolor) |
        /// [Python](https://plot.ly/python/reference/#candlestick-decreasing-fillcolor) |
        /// [R](https://plot.ly/r/reference/#candlestick-decreasing-fillcolor)
        public var fillColor: Color?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case line
            case fillColor = "fillcolor"
        }
        
        public init(line: Line0? = nil, fillColor: Color? = nil) {
            self.line = line
            self.fillColor = fillColor
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-decreasing) |
    /// [Python](https://plot.ly/python/reference/#candlestick-decreasing) |
    /// [R](https://plot.ly/r/reference/#candlestick-decreasing)
    public var decreasing: Decreasing?

    /// Sets hover text elements associated with each sample point. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to this trace's sample points.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-text) |
    /// [Python](https://plot.ly/python/reference/#candlestick-text) |
    /// [R](https://plot.ly/r/reference/#candlestick-text)
    public var text: String?

    /// Same as `text`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-hovertext) |
    /// [Python](https://plot.ly/python/reference/#candlestick-hovertext) |
    /// [R](https://plot.ly/r/reference/#candlestick-hovertext)
    public var hoverText: String?

    /// Sets the width of the whiskers relative to the box' width. 
    ///
    /// For example, with 1, the whiskers are as wide as the box(es).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-whiskerwidth) |
    /// [Python](https://plot.ly/python/reference/#candlestick-whiskerwidth) |
    /// [R](https://plot.ly/r/reference/#candlestick-whiskerwidth)
    public var whiskerWidth: Double?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#candlestick-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#candlestick-hoverlabel)
    public var hoverLabel: HoverLabel0?

    /// Sets the calendar system to use with `x` date data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-xcalendar) |
    /// [Python](https://plot.ly/python/reference/#candlestick-xcalendar) |
    /// [R](https://plot.ly/r/reference/#candlestick-xcalendar)
    public var xCalendar: Calendar0?

    /// Sets a reference between this trace's x coordinates and a 2D cartesian x axis. 
    ///
    /// If *x* (the default value), the x coordinates refer to `layout.xaxis`. If *x2*, the x
    /// coordinates refer to `layout.xaxis2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-xaxis) |
    /// [Python](https://plot.ly/python/reference/#candlestick-xaxis) |
    /// [R](https://plot.ly/r/reference/#candlestick-xaxis)
    public var xAxis: SubPlotID?

    /// Sets a reference between this trace's y coordinates and a 2D cartesian y axis. 
    ///
    /// If *y* (the default value), the y coordinates refer to `layout.yaxis`. If *y2*, the y
    /// coordinates refer to `layout.yaxis2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-yaxis) |
    /// [Python](https://plot.ly/python/reference/#candlestick-yaxis) |
    /// [R](https://plot.ly/r/reference/#candlestick-yaxis)
    public var yAxis: SubPlotID?

    /// Sets the source reference on plot.ly for  ids .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-idssrc) |
    /// [Python](https://plot.ly/python/reference/#candlestick-idssrc) |
    /// [R](https://plot.ly/r/reference/#candlestick-idssrc)
    public var idsSource: String?

    /// Sets the source reference on plot.ly for  customdata .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-customdatasrc) |
    /// [Python](https://plot.ly/python/reference/#candlestick-customdatasrc) |
    /// [R](https://plot.ly/r/reference/#candlestick-customdatasrc)
    public var customDataSource: String?

    /// Sets the source reference on plot.ly for  meta .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-metasrc) |
    /// [Python](https://plot.ly/python/reference/#candlestick-metasrc) |
    /// [R](https://plot.ly/r/reference/#candlestick-metasrc)
    public var metaSource: String?

    /// Sets the source reference on plot.ly for  hoverinfo .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-hoverinfosrc) |
    /// [Python](https://plot.ly/python/reference/#candlestick-hoverinfosrc) |
    /// [R](https://plot.ly/r/reference/#candlestick-hoverinfosrc)
    public var hoverInfoSource: String?

    /// Sets the source reference on plot.ly for  x .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-xsrc) |
    /// [Python](https://plot.ly/python/reference/#candlestick-xsrc) |
    /// [R](https://plot.ly/r/reference/#candlestick-xsrc)
    public var xSource: String?

    /// Sets the source reference on plot.ly for  open .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-opensrc) |
    /// [Python](https://plot.ly/python/reference/#candlestick-opensrc) |
    /// [R](https://plot.ly/r/reference/#candlestick-opensrc)
    public var openSource: String?

    /// Sets the source reference on plot.ly for  high .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-highsrc) |
    /// [Python](https://plot.ly/python/reference/#candlestick-highsrc) |
    /// [R](https://plot.ly/r/reference/#candlestick-highsrc)
    public var highSource: String?

    /// Sets the source reference on plot.ly for  low .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-lowsrc) |
    /// [Python](https://plot.ly/python/reference/#candlestick-lowsrc) |
    /// [R](https://plot.ly/r/reference/#candlestick-lowsrc)
    public var lowSource: String?

    /// Sets the source reference on plot.ly for  close .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-closesrc) |
    /// [Python](https://plot.ly/python/reference/#candlestick-closesrc) |
    /// [R](https://plot.ly/r/reference/#candlestick-closesrc)
    public var closeSource: String?

    /// Sets the source reference on plot.ly for  text .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-textsrc) |
    /// [Python](https://plot.ly/python/reference/#candlestick-textsrc) |
    /// [R](https://plot.ly/r/reference/#candlestick-textsrc)
    public var textSource: String?

    /// Sets the source reference on plot.ly for  hovertext .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-hovertextsrc) |
    /// [Python](https://plot.ly/python/reference/#candlestick-hovertextsrc) |
    /// [R](https://plot.ly/r/reference/#candlestick-hovertextsrc)
    public var hoverTextSource: String?

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
        case selectedPoints = "selectedpoints"
        case hoverInfo = "hoverinfo"
        case stream
        case transforms
        case uiRevision = "uirevision"
        case x
        case open
        case high
        case low
        case close
        case line
        case increasing
        case decreasing
        case text
        case hoverText = "hovertext"
        case whiskerWidth = "whiskerwidth"
        case hoverLabel = "hoverlabel"
        case xCalendar = "xcalendar"
        case xAxis = "xaxis"
        case yAxis = "yaxis"
        case idsSource = "idssrc"
        case customDataSource = "customdatasrc"
        case metaSource = "metasrc"
        case hoverInfoSource = "hoverinfosrc"
        case xSource = "xsrc"
        case openSource = "opensrc"
        case highSource = "highsrc"
        case lowSource = "lowsrc"
        case closeSource = "closesrc"
        case textSource = "textsrc"
        case hoverTextSource = "hovertextsrc"
    }
    
    public init(visible: Visible0? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, selectedPoints: Anything? = nil, hoverInfo: HoverInfo0? = nil, stream: Stream0? = nil, transforms: Transforms0? = nil, uiRevision: Anything? = nil, x: [Double]? = nil, open: [Double]? = nil, high: [Double]? = nil, low: [Double]? = nil, close: [Double]? = nil, line: Line? = nil, increasing: Increasing? = nil, decreasing: Decreasing? = nil, text: String? = nil, hoverText: String? = nil, whiskerWidth: Double? = nil, hoverLabel: HoverLabel0? = nil, xCalendar: Calendar0? = nil, xAxis: SubPlotID? = nil, yAxis: SubPlotID? = nil, idsSource: String? = nil, customDataSource: String? = nil, metaSource: String? = nil, hoverInfoSource: String? = nil, xSource: String? = nil, openSource: String? = nil, highSource: String? = nil, lowSource: String? = nil, closeSource: String? = nil, textSource: String? = nil, hoverTextSource: String? = nil) {
        self.visible = visible
        self.showLegend = showLegend
        self.legendGroup = legendGroup
        self.opacity = opacity
        self.name = name
        self.uid = uid
        self.ids = ids
        self.customData = customData
        self.meta = meta
        self.selectedPoints = selectedPoints
        self.hoverInfo = hoverInfo
        self.stream = stream
        self.transforms = transforms
        self.uiRevision = uiRevision
        self.x = x
        self.open = open
        self.high = high
        self.low = low
        self.close = close
        self.line = line
        self.increasing = increasing
        self.decreasing = decreasing
        self.text = text
        self.hoverText = hoverText
        self.whiskerWidth = whiskerWidth
        self.hoverLabel = hoverLabel
        self.xCalendar = xCalendar
        self.xAxis = xAxis
        self.yAxis = yAxis
        self.idsSource = idsSource
        self.customDataSource = customDataSource
        self.metaSource = metaSource
        self.hoverInfoSource = hoverInfoSource
        self.xSource = xSource
        self.openSource = openSource
        self.highSource = highSource
        self.lowSource = lowSource
        self.closeSource = closeSource
        self.textSource = textSource
        self.hoverTextSource = hoverTextSource
    }
}