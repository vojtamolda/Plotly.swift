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
    public var visible: Visible?

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
    public var hoverInfo: HoverInfo?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-stream) |
    /// [Python](https://plot.ly/python/reference/#candlestick-stream) |
    /// [R](https://plot.ly/r/reference/#candlestick-stream)
    public var stream: Stream?

    /// An array of operations that manipulate the trace data, for example filtering or sorting the data arrays.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-transforms-items-transform) |
    /// [Python](https://plot.ly/python/reference/#candlestick-transforms-items-transform) |
    /// [R](https://plot.ly/r/reference/#candlestick-transforms-items-transform)
    public var transforms: [Transform]?

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

    /// # Used By
    /// `Candlestick.increasing` |
    public struct Increasing: Encodable {
        /// # Used By
        /// `Candlestick.Increasing.line` |
        public struct Line: Encodable {
            /// Sets the color of line bounding the box(es).
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-increasing-line-color) |
            /// [Python](https://plot.ly/python/reference/#candlestick-increasing-line-color) |
            /// [R](https://plot.ly/r/reference/#candlestick-increasing-line-color)
            public var color: Color?
        
            /// Sets the width (in px) of line bounding the box(es).
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-increasing-line-width) |
            /// [Python](https://plot.ly/python/reference/#candlestick-increasing-line-width) |
            /// [R](https://plot.ly/r/reference/#candlestick-increasing-line-width)
            public var width: Double?
        
            public init(color: Color? = nil, width: Double? = nil) {
                self.color = color
                self.width = width
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-increasing-line) |
        /// [Python](https://plot.ly/python/reference/#candlestick-increasing-line) |
        /// [R](https://plot.ly/r/reference/#candlestick-increasing-line)
        public var line: Line?
    
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
        
        public init(line: Line? = nil, fillColor: Color? = nil) {
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

    /// # Used By
    /// `Candlestick.decreasing` |
    public struct Decreasing: Encodable {
        /// # Used By
        /// `Candlestick.Decreasing.line` |
        public struct Line: Encodable {
            /// Sets the color of line bounding the box(es).
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-decreasing-line-color) |
            /// [Python](https://plot.ly/python/reference/#candlestick-decreasing-line-color) |
            /// [R](https://plot.ly/r/reference/#candlestick-decreasing-line-color)
            public var color: Color?
        
            /// Sets the width (in px) of line bounding the box(es).
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-decreasing-line-width) |
            /// [Python](https://plot.ly/python/reference/#candlestick-decreasing-line-width) |
            /// [R](https://plot.ly/r/reference/#candlestick-decreasing-line-width)
            public var width: Double?
        
            public init(color: Color? = nil, width: Double? = nil) {
                self.color = color
                self.width = width
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-decreasing-line) |
        /// [Python](https://plot.ly/python/reference/#candlestick-decreasing-line) |
        /// [R](https://plot.ly/r/reference/#candlestick-decreasing-line)
        public var line: Line?
    
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
        
        public init(line: Line? = nil, fillColor: Color? = nil) {
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

    /// # Used By
    /// `Candlestick.hoverLabel` |
    public struct HoverLabel: Encodable {
        /// Sets the background color of the hover labels for this trace
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-hoverlabel-bgcolor) |
        /// [Python](https://plot.ly/python/reference/#candlestick-hoverlabel-bgcolor) |
        /// [R](https://plot.ly/r/reference/#candlestick-hoverlabel-bgcolor)
        public var backgroundColor: Color?
    
        /// Sets the border color of the hover labels for this trace.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-hoverlabel-bordercolor) |
        /// [Python](https://plot.ly/python/reference/#candlestick-hoverlabel-bordercolor) |
        /// [R](https://plot.ly/r/reference/#candlestick-hoverlabel-bordercolor)
        public var borderColor: Color?
    
        /// Sets the font used in hover labels.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-hoverlabel-font) |
        /// [Python](https://plot.ly/python/reference/#candlestick-hoverlabel-font) |
        /// [R](https://plot.ly/r/reference/#candlestick-hoverlabel-font)
        public var font: Font?
    
        /// Sets the horizontal alignment of the text content within hover label box. 
        ///
        /// Has an effect only if the hover label text spans more two or more lines
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-hoverlabel-align) |
        /// [Python](https://plot.ly/python/reference/#candlestick-hoverlabel-align) |
        /// [R](https://plot.ly/r/reference/#candlestick-hoverlabel-align)
        public var align: AutoAlign?
    
        /// Sets the default length (in number of characters) of the trace name in the hover labels for all traces. 
        ///
        /// -1 shows the whole name regardless of length. 0-3 shows the first 0-3 characters, and an integer
        /// >3 will show the whole name if it is less than that many characters, but if it is longer, will
        /// truncate to `namelength - 3` characters and add an ellipsis.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-hoverlabel-namelength) |
        /// [Python](https://plot.ly/python/reference/#candlestick-hoverlabel-namelength) |
        /// [R](https://plot.ly/r/reference/#candlestick-hoverlabel-namelength)
        public var nameLength: Int?
    
        /// Show hover information (open, close, high, low) in separate labels.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-hoverlabel-split) |
        /// [Python](https://plot.ly/python/reference/#candlestick-hoverlabel-split) |
        /// [R](https://plot.ly/r/reference/#candlestick-hoverlabel-split)
        public var split: Bool?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case backgroundColor = "bgcolor"
            case borderColor = "bordercolor"
            case font
            case align
            case nameLength = "namelength"
            case split
        }
        
        public init(backgroundColor: Color? = nil, borderColor: Color? = nil, font: Font? = nil, align: AutoAlign? = nil, nameLength: Int? = nil, split: Bool? = nil) {
            self.backgroundColor = backgroundColor
            self.borderColor = borderColor
            self.font = font
            self.align = align
            self.nameLength = nameLength
            self.split = split
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#candlestick-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#candlestick-hoverlabel)
    public var hoverLabel: HoverLabel?

    /// Sets the calendar system to use with `x` date data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#candlestick-xcalendar) |
    /// [Python](https://plot.ly/python/reference/#candlestick-xcalendar) |
    /// [R](https://plot.ly/r/reference/#candlestick-xcalendar)
    public var xCalendar: Calendar?

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
        case transforms = "transform"
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
    }
    
    public init(visible: Visible? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, selectedPoints: Anything? = nil, hoverInfo: HoverInfo? = nil, stream: Stream? = nil, transforms: [Transform]? = nil, uiRevision: Anything? = nil, x: [Double]? = nil, open: [Double]? = nil, high: [Double]? = nil, low: [Double]? = nil, close: [Double]? = nil, line: Line? = nil, increasing: Increasing? = nil, decreasing: Decreasing? = nil, text: String? = nil, hoverText: String? = nil, whiskerWidth: Double? = nil, hoverLabel: HoverLabel? = nil, xCalendar: Calendar? = nil, xAxis: SubPlotID? = nil, yAxis: SubPlotID? = nil) {
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
    }
}