/// The ohlc (short for Open-High-Low-Close) is a style of financial chart describing open, high, low and close for a given `x` coordinate (most likely time). 
///
/// The tip of the lines represent the `low` and `high` values and the horizontal segments represent
/// the `open` and `close` values. Sample points where the close value is higher (lower) then the
/// open value are called increasing (decreasing). By default, increasing items are drawn in green
/// whereas decreasing are drawn in red.
public struct OHLC: Trace {
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#type) |
    /// [Python](https://plot.ly/python/reference/#type) |
    /// [R](https://plot.ly/r/reference/#type)
    public let type: String = "ohlc"

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
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-visible) |
    /// [Python](https://plot.ly/python/reference/#ohlc-visible) |
    /// [R](https://plot.ly/r/reference/#ohlc-visible)
    public var visible: Visible0?

    /// Determines whether or not an item corresponding to this trace is shown in the legend.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-showlegend) |
    /// [Python](https://plot.ly/python/reference/#ohlc-showlegend) |
    /// [R](https://plot.ly/r/reference/#ohlc-showlegend)
    public var showLegend: Bool?

    /// Sets the legend group for this trace. 
    ///
    /// Traces part of the same legend group hide/show at the same time when toggling legend items.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-legendgroup) |
    /// [Python](https://plot.ly/python/reference/#ohlc-legendgroup) |
    /// [R](https://plot.ly/r/reference/#ohlc-legendgroup)
    public var legendGroup: String?

    /// Sets the opacity of the trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-opacity) |
    /// [Python](https://plot.ly/python/reference/#ohlc-opacity) |
    /// [R](https://plot.ly/r/reference/#ohlc-opacity)
    public var opacity: Double?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-name) |
    /// [Python](https://plot.ly/python/reference/#ohlc-name) |
    /// [R](https://plot.ly/r/reference/#ohlc-name)
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-uid) |
    /// [Python](https://plot.ly/python/reference/#ohlc-uid) |
    /// [R](https://plot.ly/r/reference/#ohlc-uid)
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-ids) |
    /// [Python](https://plot.ly/python/reference/#ohlc-ids) |
    /// [R](https://plot.ly/r/reference/#ohlc-ids)
    public var ids: [Double]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-customdata) |
    /// [Python](https://plot.ly/python/reference/#ohlc-customdata) |
    /// [R](https://plot.ly/r/reference/#ohlc-customdata)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-meta) |
    /// [Python](https://plot.ly/python/reference/#ohlc-meta) |
    /// [R](https://plot.ly/r/reference/#ohlc-meta)
    public var meta: Anything?

    /// Array containing integer indices of selected points. 
    ///
    /// Has an effect only for traces that support selections. Note that an empty array means an empty
    /// selection where the `unselected` are turned on for all points, whereas, any other non-array
    /// values means no selection all where the `selected` and `unselected` styles have no effect.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-selectedpoints) |
    /// [Python](https://plot.ly/python/reference/#ohlc-selectedpoints) |
    /// [R](https://plot.ly/r/reference/#ohlc-selectedpoints)
    public var selectedPoints: Anything?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-hoverinfo) |
    /// [Python](https://plot.ly/python/reference/#ohlc-hoverinfo) |
    /// [R](https://plot.ly/r/reference/#ohlc-hoverinfo)
    public var hoverInfo: HoverInfo0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-stream) |
    /// [Python](https://plot.ly/python/reference/#ohlc-stream) |
    /// [R](https://plot.ly/r/reference/#ohlc-stream)
    public var stream: Stream0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-transforms) |
    /// [Python](https://plot.ly/python/reference/#ohlc-transforms) |
    /// [R](https://plot.ly/r/reference/#ohlc-transforms)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-uirevision) |
    /// [Python](https://plot.ly/python/reference/#ohlc-uirevision) |
    /// [R](https://plot.ly/r/reference/#ohlc-uirevision)
    public var uiRevision: Anything?

    /// Sets the x coordinates. 
    ///
    /// If absent, linear coordinate will be generated.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-x) |
    /// [Python](https://plot.ly/python/reference/#ohlc-x) |
    /// [R](https://plot.ly/r/reference/#ohlc-x)
    public var x: [Double]?

    /// Sets the open values.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-open) |
    /// [Python](https://plot.ly/python/reference/#ohlc-open) |
    /// [R](https://plot.ly/r/reference/#ohlc-open)
    public var open: [Double]?

    /// Sets the high values.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-high) |
    /// [Python](https://plot.ly/python/reference/#ohlc-high) |
    /// [R](https://plot.ly/r/reference/#ohlc-high)
    public var high: [Double]?

    /// Sets the low values.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-low) |
    /// [Python](https://plot.ly/python/reference/#ohlc-low) |
    /// [R](https://plot.ly/r/reference/#ohlc-low)
    public var low: [Double]?

    /// Sets the close values.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-close) |
    /// [Python](https://plot.ly/python/reference/#ohlc-close) |
    /// [R](https://plot.ly/r/reference/#ohlc-close)
    public var close: [Double]?

    ///
    /// # Used By
    /// `OHLC.line` |
    public struct Line: Encodable {
        /// [object Object] Note that this style setting can also be set per direction via `increasing.line.width` and `decreasing.line.width`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-line-width) |
        /// [Python](https://plot.ly/python/reference/#ohlc-line-width) |
        /// [R](https://plot.ly/r/reference/#ohlc-line-width)
        public var width: Double?
    
        /// Sets the dash style of lines. 
        ///
        /// Set to a dash type string (*solid*, *dot*, *dash*, *longdash*, *dashdot*, or *longdashdot*) or a
        /// dash length list in px (eg *5px,10px,2px,2px*). Note that this style setting can also be set per
        /// direction via `increasing.line.dash` and `decreasing.line.dash`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-line-dash) |
        /// [Python](https://plot.ly/python/reference/#ohlc-line-dash) |
        /// [R](https://plot.ly/r/reference/#ohlc-line-dash)
        public var dash: String?
    
        public init(width: Double? = nil, dash: String? = nil) {
            self.width = width
            self.dash = dash
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-line) |
    /// [Python](https://plot.ly/python/reference/#ohlc-line) |
    /// [R](https://plot.ly/r/reference/#ohlc-line)
    public var line: Line?

    ///
    /// # Used By
    /// `OHLC.increasing` |
    public struct Increasing: Encodable {
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-increasing-line) |
        /// [Python](https://plot.ly/python/reference/#ohlc-increasing-line) |
        /// [R](https://plot.ly/r/reference/#ohlc-increasing-line)
        public var line: Line0?
    
        public init(line: Line0? = nil) {
            self.line = line
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-increasing) |
    /// [Python](https://plot.ly/python/reference/#ohlc-increasing) |
    /// [R](https://plot.ly/r/reference/#ohlc-increasing)
    public var increasing: Increasing?

    ///
    /// # Used By
    /// `OHLC.decreasing` |
    public struct Decreasing: Encodable {
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-decreasing-line) |
        /// [Python](https://plot.ly/python/reference/#ohlc-decreasing-line) |
        /// [R](https://plot.ly/r/reference/#ohlc-decreasing-line)
        public var line: Line0?
    
        public init(line: Line0? = nil) {
            self.line = line
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-decreasing) |
    /// [Python](https://plot.ly/python/reference/#ohlc-decreasing) |
    /// [R](https://plot.ly/r/reference/#ohlc-decreasing)
    public var decreasing: Decreasing?

    /// Sets hover text elements associated with each sample point. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to this trace's sample points.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-text) |
    /// [Python](https://plot.ly/python/reference/#ohlc-text) |
    /// [R](https://plot.ly/r/reference/#ohlc-text)
    public var text: String?

    /// Same as `text`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-hovertext) |
    /// [Python](https://plot.ly/python/reference/#ohlc-hovertext) |
    /// [R](https://plot.ly/r/reference/#ohlc-hovertext)
    public var hoverText: String?

    /// Sets the width of the open/close tick marks relative to the *x* minimal interval.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-tickwidth) |
    /// [Python](https://plot.ly/python/reference/#ohlc-tickwidth) |
    /// [R](https://plot.ly/r/reference/#ohlc-tickwidth)
    public var tickWidth: Double?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#ohlc-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#ohlc-hoverlabel)
    public var hoverLabel: HoverLabel0?

    /// Sets the calendar system to use with `x` date data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-xcalendar) |
    /// [Python](https://plot.ly/python/reference/#ohlc-xcalendar) |
    /// [R](https://plot.ly/r/reference/#ohlc-xcalendar)
    public var xCalendar: Calendar0?

    /// Sets a reference between this trace's x coordinates and a 2D cartesian x axis. 
    ///
    /// If *x* (the default value), the x coordinates refer to `layout.xaxis`. If *x2*, the x
    /// coordinates refer to `layout.xaxis2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-xaxis) |
    /// [Python](https://plot.ly/python/reference/#ohlc-xaxis) |
    /// [R](https://plot.ly/r/reference/#ohlc-xaxis)
    public var xAxis: SubPlotID?

    /// Sets a reference between this trace's y coordinates and a 2D cartesian y axis. 
    ///
    /// If *y* (the default value), the y coordinates refer to `layout.yaxis`. If *y2*, the y
    /// coordinates refer to `layout.yaxis2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-yaxis) |
    /// [Python](https://plot.ly/python/reference/#ohlc-yaxis) |
    /// [R](https://plot.ly/r/reference/#ohlc-yaxis)
    public var yAxis: SubPlotID?

    /// Sets the source reference on plot.ly for  ids .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-idssrc) |
    /// [Python](https://plot.ly/python/reference/#ohlc-idssrc) |
    /// [R](https://plot.ly/r/reference/#ohlc-idssrc)
    public var idsSource: String?

    /// Sets the source reference on plot.ly for  customdata .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-customdatasrc) |
    /// [Python](https://plot.ly/python/reference/#ohlc-customdatasrc) |
    /// [R](https://plot.ly/r/reference/#ohlc-customdatasrc)
    public var customDataSource: String?

    /// Sets the source reference on plot.ly for  meta .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-metasrc) |
    /// [Python](https://plot.ly/python/reference/#ohlc-metasrc) |
    /// [R](https://plot.ly/r/reference/#ohlc-metasrc)
    public var metaSource: String?

    /// Sets the source reference on plot.ly for  hoverinfo .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-hoverinfosrc) |
    /// [Python](https://plot.ly/python/reference/#ohlc-hoverinfosrc) |
    /// [R](https://plot.ly/r/reference/#ohlc-hoverinfosrc)
    public var hoverInfoSource: String?

    /// Sets the source reference on plot.ly for  x .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-xsrc) |
    /// [Python](https://plot.ly/python/reference/#ohlc-xsrc) |
    /// [R](https://plot.ly/r/reference/#ohlc-xsrc)
    public var xSource: String?

    /// Sets the source reference on plot.ly for  open .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-opensrc) |
    /// [Python](https://plot.ly/python/reference/#ohlc-opensrc) |
    /// [R](https://plot.ly/r/reference/#ohlc-opensrc)
    public var openSource: String?

    /// Sets the source reference on plot.ly for  high .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-highsrc) |
    /// [Python](https://plot.ly/python/reference/#ohlc-highsrc) |
    /// [R](https://plot.ly/r/reference/#ohlc-highsrc)
    public var highSource: String?

    /// Sets the source reference on plot.ly for  low .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-lowsrc) |
    /// [Python](https://plot.ly/python/reference/#ohlc-lowsrc) |
    /// [R](https://plot.ly/r/reference/#ohlc-lowsrc)
    public var lowSource: String?

    /// Sets the source reference on plot.ly for  close .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-closesrc) |
    /// [Python](https://plot.ly/python/reference/#ohlc-closesrc) |
    /// [R](https://plot.ly/r/reference/#ohlc-closesrc)
    public var closeSource: String?

    /// Sets the source reference on plot.ly for  text .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-textsrc) |
    /// [Python](https://plot.ly/python/reference/#ohlc-textsrc) |
    /// [R](https://plot.ly/r/reference/#ohlc-textsrc)
    public var textSource: String?

    /// Sets the source reference on plot.ly for  hovertext .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-hovertextsrc) |
    /// [Python](https://plot.ly/python/reference/#ohlc-hovertextsrc) |
    /// [R](https://plot.ly/r/reference/#ohlc-hovertextsrc)
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
        case tickWidth = "tickwidth"
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
    
    public init(visible: Visible0? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, selectedPoints: Anything? = nil, hoverInfo: HoverInfo0? = nil, stream: Stream0? = nil, transforms: Transforms0? = nil, uiRevision: Anything? = nil, x: [Double]? = nil, open: [Double]? = nil, high: [Double]? = nil, low: [Double]? = nil, close: [Double]? = nil, line: Line? = nil, increasing: Increasing? = nil, decreasing: Decreasing? = nil, text: String? = nil, hoverText: String? = nil, tickWidth: Double? = nil, hoverLabel: HoverLabel0? = nil, xCalendar: Calendar0? = nil, xAxis: SubPlotID? = nil, yAxis: SubPlotID? = nil, idsSource: String? = nil, customDataSource: String? = nil, metaSource: String? = nil, hoverInfoSource: String? = nil, xSource: String? = nil, openSource: String? = nil, highSource: String? = nil, lowSource: String? = nil, closeSource: String? = nil, textSource: String? = nil, hoverTextSource: String? = nil) {
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
        self.tickWidth = tickWidth
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