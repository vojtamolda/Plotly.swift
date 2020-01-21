/// The ohlc (short for Open-High-Low-Close) is a style of financial chart describing open, high, low and close for a given `x` coordinate (most likely time). 
///
/// The tip of the lines represent the `low` and `high` values and the horizontal segments represent
/// the `open` and `close` values. Sample points where the close value is higher (lower) then the
/// open value are called increasing (decreasing). By default, increasing items are drawn in green
/// whereas decreasing are drawn in red.
public struct OHLC<XData>: Trace where XData: Encodable {
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
    public var visible: Shared.Visible?

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
    public var hoverInfo: Shared.HoverInfo?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-stream) |
    /// [Python](https://plot.ly/python/reference/#ohlc-stream) |
    /// [R](https://plot.ly/r/reference/#ohlc-stream)
    public var stream: Shared.Stream?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-transforms) |
    /// [Python](https://plot.ly/python/reference/#ohlc-transforms) |
    /// [R](https://plot.ly/r/reference/#ohlc-transforms)
    public var transforms: [Shared.Transform]?

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

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-attributes) |
    /// [Python](https://plot.ly/python/reference/#ohlc-attributes) |
    /// [R](https://plot.ly/r/reference/#ohlc-attributes)
    public var x: XData?

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

    /// # Used By
    /// `OHLC.line` |
    public struct DashedLine: Encodable {
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
    public var line: DashedLine?

    /// # Used By
    /// `OHLC.increasing` |
    public struct Increasing: Encodable {
        /// # Used By
        /// `OHLC.Increasing.line` |
        public struct DashedLine: Encodable {
            /// Sets the line color.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-increasing-line-color) |
            /// [Python](https://plot.ly/python/reference/#ohlc-increasing-line-color) |
            /// [R](https://plot.ly/r/reference/#ohlc-increasing-line-color)
            public var color: Color?
        
            /// Sets the line width (in px).
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-increasing-line-width) |
            /// [Python](https://plot.ly/python/reference/#ohlc-increasing-line-width) |
            /// [R](https://plot.ly/r/reference/#ohlc-increasing-line-width)
            public var width: Double?
        
            /// Sets the dash style of lines. 
            ///
            /// Set to a dash type string (*solid*, *dot*, *dash*, *longdash*, *dashdot*, or *longdashdot*) or a
            /// dash length list in px (eg *5px,10px,2px,2px*).
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-increasing-line-dash) |
            /// [Python](https://plot.ly/python/reference/#ohlc-increasing-line-dash) |
            /// [R](https://plot.ly/r/reference/#ohlc-increasing-line-dash)
            public var dash: String?
        
            public init(color: Color? = nil, width: Double? = nil, dash: String? = nil) {
                self.color = color
                self.width = width
                self.dash = dash
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-increasing-line) |
        /// [Python](https://plot.ly/python/reference/#ohlc-increasing-line) |
        /// [R](https://plot.ly/r/reference/#ohlc-increasing-line)
        public var line: DashedLine?
    
        public init(line: DashedLine? = nil) {
            self.line = line
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-increasing) |
    /// [Python](https://plot.ly/python/reference/#ohlc-increasing) |
    /// [R](https://plot.ly/r/reference/#ohlc-increasing)
    public var increasing: Increasing?

    /// # Used By
    /// `OHLC.decreasing` |
    public struct Decreasing: Encodable {
        /// # Used By
        /// `OHLC.Decreasing.line` |
        public struct DashedLine: Encodable {
            /// Sets the line color.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-decreasing-line-color) |
            /// [Python](https://plot.ly/python/reference/#ohlc-decreasing-line-color) |
            /// [R](https://plot.ly/r/reference/#ohlc-decreasing-line-color)
            public var color: Color?
        
            /// Sets the line width (in px).
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-decreasing-line-width) |
            /// [Python](https://plot.ly/python/reference/#ohlc-decreasing-line-width) |
            /// [R](https://plot.ly/r/reference/#ohlc-decreasing-line-width)
            public var width: Double?
        
            /// Sets the dash style of lines. 
            ///
            /// Set to a dash type string (*solid*, *dot*, *dash*, *longdash*, *dashdot*, or *longdashdot*) or a
            /// dash length list in px (eg *5px,10px,2px,2px*).
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-decreasing-line-dash) |
            /// [Python](https://plot.ly/python/reference/#ohlc-decreasing-line-dash) |
            /// [R](https://plot.ly/r/reference/#ohlc-decreasing-line-dash)
            public var dash: String?
        
            public init(color: Color? = nil, width: Double? = nil, dash: String? = nil) {
                self.color = color
                self.width = width
                self.dash = dash
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-decreasing-line) |
        /// [Python](https://plot.ly/python/reference/#ohlc-decreasing-line) |
        /// [R](https://plot.ly/r/reference/#ohlc-decreasing-line)
        public var line: DashedLine?
    
        public init(line: DashedLine? = nil) {
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
    public var text: ArrayOrString?

    /// Same as `text`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-hovertext) |
    /// [Python](https://plot.ly/python/reference/#ohlc-hovertext) |
    /// [R](https://plot.ly/r/reference/#ohlc-hovertext)
    public var hoverText: ArrayOrString?

    /// Sets the width of the open/close tick marks relative to the *x* minimal interval.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-tickwidth) |
    /// [Python](https://plot.ly/python/reference/#ohlc-tickwidth) |
    /// [R](https://plot.ly/r/reference/#ohlc-tickwidth)
    public var tickWidth: Double?

    /// # Used By
    /// `OHLC.hoverLabel` |
    public struct HoverLabel: Encodable {
        /// Sets the background color of the hover labels for this trace
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-hoverlabel-bgcolor) |
        /// [Python](https://plot.ly/python/reference/#ohlc-hoverlabel-bgcolor) |
        /// [R](https://plot.ly/r/reference/#ohlc-hoverlabel-bgcolor)
        public var backgroundColor: ArrayOrColor?
    
        /// Sets the border color of the hover labels for this trace.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-hoverlabel-bordercolor) |
        /// [Python](https://plot.ly/python/reference/#ohlc-hoverlabel-bordercolor) |
        /// [R](https://plot.ly/r/reference/#ohlc-hoverlabel-bordercolor)
        public var borderColor: ArrayOrColor?
    
        /// Sets the font used in hover labels.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-hoverlabel-font) |
        /// [Python](https://plot.ly/python/reference/#ohlc-hoverlabel-font) |
        /// [R](https://plot.ly/r/reference/#ohlc-hoverlabel-font)
        public var font: Shared.Font?
    
        /// Sets the horizontal alignment of the text content within hover label box. 
        ///
        /// Has an effect only if the hover label text spans more two or more lines
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-hoverlabel-align) |
        /// [Python](https://plot.ly/python/reference/#ohlc-hoverlabel-align) |
        /// [R](https://plot.ly/r/reference/#ohlc-hoverlabel-align)
        public var align: Shared.AutoAlign?
    
        /// Sets the default length (in number of characters) of the trace name in the hover labels for all traces. 
        ///
        /// -1 shows the whole name regardless of length. 0-3 shows the first 0-3 characters, and an integer
        /// >3 will show the whole name if it is less than that many characters, but if it is longer, will
        /// truncate to `namelength - 3` characters and add an ellipsis.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-hoverlabel-namelength) |
        /// [Python](https://plot.ly/python/reference/#ohlc-hoverlabel-namelength) |
        /// [R](https://plot.ly/r/reference/#ohlc-hoverlabel-namelength)
        public var nameLength: ArrayOrInt?
    
        /// Show hover information (open, close, high, low) in separate labels.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-hoverlabel-split) |
        /// [Python](https://plot.ly/python/reference/#ohlc-hoverlabel-split) |
        /// [R](https://plot.ly/r/reference/#ohlc-hoverlabel-split)
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
        
        public init(backgroundColor: ArrayOrColor? = nil, borderColor: ArrayOrColor? = nil, font: Shared.Font? = nil, align: Shared.AutoAlign? = nil, nameLength: ArrayOrInt? = nil, split: Bool? = nil) {
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
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#ohlc-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#ohlc-hoverlabel)
    public var hoverLabel: HoverLabel?

    /// Sets the calendar system to use with `x` date data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#ohlc-xcalendar) |
    /// [Python](https://plot.ly/python/reference/#ohlc-xcalendar) |
    /// [R](https://plot.ly/r/reference/#ohlc-xcalendar)
    public var xCalendar: Shared.Calendar?

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
        case x = "attributes"
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
    }
    
    public init(visible: Shared.Visible? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, selectedPoints: Anything? = nil, hoverInfo: Shared.HoverInfo? = nil, stream: Shared.Stream? = nil, transforms: [Shared.Transform]? = nil, uiRevision: Anything? = nil, x: XData? = nil, open: [Double]? = nil, high: [Double]? = nil, low: [Double]? = nil, close: [Double]? = nil, line: DashedLine? = nil, increasing: Increasing? = nil, decreasing: Decreasing? = nil, text: ArrayOrString? = nil, hoverText: ArrayOrString? = nil, tickWidth: Double? = nil, hoverLabel: HoverLabel? = nil, xCalendar: Shared.Calendar? = nil, xAxis: SubPlotID? = nil, yAxis: SubPlotID? = nil) {
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
    }
}