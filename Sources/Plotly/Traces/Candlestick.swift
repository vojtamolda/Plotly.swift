
// Warning: This file is automatically generated and your changes will be overwritten.
// See `Sources/Codegen/Readme.md` for more details.


/// The candlestick is a style of financial chart describing open, high, low and close for a given
/// `x` coordinate (most likely time).
/// 
/// The boxes represent the spread between the `open` and `close` values and the lines represent the
/// spread between the `low` and `high` values Sample points where the close value is higher (lower)
/// then the open value are called increasing (decreasing). By default, increasing candles are drawn
/// in green whereas decreasing are drawn in red.
/// 
/// - SeeAlso:
///   Documentation for 
///   [Python](https://plot.ly/python/reference/#candlestick), 
///   [JavaScript](https://plot.ly/javascript/reference/#candlestick) or 
///   [R](https://plot.ly/r/reference/#candlestick)
public struct Candlestick<XData, OHLCData>: Trace, XYSubplot where XData: Plotable, OHLCData: Plotable {
    public let type: String = "candlestick"

    public let animatable: Bool = false

    /// Determines whether or not this trace is visible.
    /// 
    /// If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the
    /// legend itself is visible).
    public var visible: Shared.Visible? = nil

    /// Determines whether or not an item corresponding to this trace is shown in the legend.
    public var showLegend: Bool? = nil

    /// Sets the legend group for this trace.
    /// 
    /// Traces part of the same legend group hide/show at the same time when toggling legend items.
    public var legendGroup: String? = nil

    /// Sets the opacity of the trace.
    public var opacity: Double? = nil

    /// Sets the trace name.
    /// 
    /// The trace name appear as the legend item and on hover.
    public var name: String? = nil

    /// Assign an id to this trace, Use this to provide object constancy between traces during
    /// animations and transitions.
    public var uid: String? = nil

    /// Assigns id labels to each datum.
    /// 
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    public var ids: [String]? = nil

    /// Assigns extra data each datum.
    /// 
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    public var customData: [String]? = nil

    /// Assigns extra meta information associated with this trace that can be used in various text
    /// attributes.
    /// 
    /// Attributes such as trace `name`, graph, axis and colorbar `title.text`, annotation `text`
    /// `rangeselector`, `updatemenues` and `sliders` `label` text all support `meta`. To access the
    /// trace `meta` values in an attribute in the same trace, simply use `%{meta[i]}` where `i` is the
    /// index or key of the `meta` item in question. To access trace `meta` in layout attributes, use
    /// `%{data[n[.meta[i]}` where `i` is the index or key of the `meta` and `n` is the trace index.
    public var meta: Data<Anything>? = nil

    /// Array containing integer indices of selected points.
    /// 
    /// Has an effect only for traces that support selections. Note that an empty array means an empty
    /// selection where the `unselected` are turned on for all points, whereas, any other non-array
    /// values means no selection all where the `selected` and `unselected` styles have no effect.
    public var selectedPoints: Anything? = nil

    /// Determines which trace information appear on hover.
    /// 
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    public var hoverInfo: Shared.HoverInfo? = nil

    public var stream: Shared.Stream? = nil

    public var transforms: [Transform] = []

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
    public var uiRevision: Anything? = nil

    /// Sets the x coordinates.
    /// 
    /// If absent, linear coordinate will be generated.
    public var x: XData? = nil

    /// Sets the open values.
    public var open: OHLCData? = nil

    /// Sets the high values.
    public var high: OHLCData? = nil

    /// Sets the low values.
    public var low: OHLCData? = nil

    /// Sets the close values.
    public var close: OHLCData? = nil

    public struct Line: Encodable {
        /// Sets the width (in px) of line bounding the box(es).
        /// 
        /// Note that this style setting can also be set per direction via `increasing.line.width` and
        /// `decreasing.line.width`.
        public var width: Double? = nil
    
        /// Creates `Line` object with specified properties.
        /// 
        /// - Parameters:
        ///   - width: Sets the width (in px) of line bounding the box(es).
        public init(width: Double? = nil) {
            self.width = width
        }
        
    }
    public var line: Line? = nil

    public struct Increasing: Encodable {
        public struct Line: Encodable {
            /// Sets the color of line bounding the box(es).
            public var color: Color? = nil
        
            /// Sets the width (in px) of line bounding the box(es).
            public var width: Double? = nil
        
            /// Creates `Line` object with specified properties.
            /// 
            /// - Parameters:
            ///   - color: Sets the color of line bounding the box(es).
            ///   - width: Sets the width (in px) of line bounding the box(es).
            public init(color: Color? = nil, width: Double? = nil) {
                self.color = color
                self.width = width
            }
            
        }
        public var line: Line? = nil
    
        /// Sets the fill color.
        /// 
        /// Defaults to a half-transparent variant of the line color, marker color, or marker line color,
        /// whichever is available.
        public var fillColor: Color? = nil
    
        /// Decoding and encoding keys compatible with Plotly schema.
        enum CodingKeys: String, CodingKey {
            case line
            case fillColor = "fillcolor"
        }
        
        /// Creates `Increasing` object with specified properties.
        /// 
        /// - Parameters:
        ///   - line:
        ///   - fillColor: Sets the fill color.
        public init(line: Line? = nil, fillColor: Color? = nil) {
            self.line = line
            self.fillColor = fillColor
        }
        
    }
    public var increasing: Increasing? = nil

    public struct Decreasing: Encodable {
        public struct Line: Encodable {
            /// Sets the color of line bounding the box(es).
            public var color: Color? = nil
        
            /// Sets the width (in px) of line bounding the box(es).
            public var width: Double? = nil
        
            /// Creates `Line` object with specified properties.
            /// 
            /// - Parameters:
            ///   - color: Sets the color of line bounding the box(es).
            ///   - width: Sets the width (in px) of line bounding the box(es).
            public init(color: Color? = nil, width: Double? = nil) {
                self.color = color
                self.width = width
            }
            
        }
        public var line: Line? = nil
    
        /// Sets the fill color.
        /// 
        /// Defaults to a half-transparent variant of the line color, marker color, or marker line color,
        /// whichever is available.
        public var fillColor: Color? = nil
    
        /// Decoding and encoding keys compatible with Plotly schema.
        enum CodingKeys: String, CodingKey {
            case line
            case fillColor = "fillcolor"
        }
        
        /// Creates `Decreasing` object with specified properties.
        /// 
        /// - Parameters:
        ///   - line:
        ///   - fillColor: Sets the fill color.
        public init(line: Line? = nil, fillColor: Color? = nil) {
            self.line = line
            self.fillColor = fillColor
        }
        
    }
    public var decreasing: Decreasing? = nil

    /// Sets hover text elements associated with each sample point.
    /// 
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to this trace's sample points.
    public var text: Data<String>? = nil

    /// Same as `text`.
    public var hoverText: Data<String>? = nil

    /// Sets the width of the whiskers relative to the box' width.
    /// 
    /// For example, with 1, the whiskers are as wide as the box(es).
    public var whiskerWidth: Double? = nil

    public struct HoverLabel: Encodable {
        /// Sets the background color of the hover labels for this trace
        public var backgroundColor: Coloring? = nil
    
        /// Sets the border color of the hover labels for this trace.
        public var borderColor: Coloring? = nil
    
        /// Sets the font used in hover labels.
        public var font: Shared.VariableFont? = nil
    
        /// Sets the horizontal alignment of the text content within hover label box.
        /// 
        /// Has an effect only if the hover label text spans more two or more lines
        public var align: Shared.AutoAlign? = nil
    
        /// Sets the default length (in number of characters) of the trace name in the hover labels for all
        /// traces.
        /// 
        /// -1 shows the whole name regardless of length. 0-3 shows the first 0-3 characters, and an integer
        /// >3 will show the whole name if it is less than that many characters, but if it is longer, will
        /// truncate to `namelength - 3` characters and add an ellipsis.
        public var nameLength: Data<Int>? = nil
    
        /// Show hover information (open, close, high, low) in separate labels.
        public var split: Bool? = nil
    
        /// Decoding and encoding keys compatible with Plotly schema.
        enum CodingKeys: String, CodingKey {
            case backgroundColor = "bgcolor"
            case borderColor = "bordercolor"
            case font
            case align
            case nameLength = "namelength"
            case split
        }
        
        /// Creates `HoverLabel` object with specified properties.
        /// 
        /// - Parameters:
        ///   - backgroundColor: Sets the background color of the hover labels for this trace
        ///   - borderColor: Sets the border color of the hover labels for this trace.
        ///   - font: Sets the font used in hover labels.
        ///   - align: Sets the horizontal alignment of the text content within hover label box.
        ///   - nameLength: Sets the default length (in number of characters) of the trace name in the hover
        ///   labels for all traces.
        ///   - split: Show hover information (open, close, high, low) in separate labels.
        public init(backgroundColor: Coloring? = nil, borderColor: Coloring? = nil, font:
                Shared.VariableFont? = nil, align: Shared.AutoAlign? = nil, nameLength: Data<Int>? = nil, split:
                Bool? = nil) {
            self.backgroundColor = backgroundColor
            self.borderColor = borderColor
            self.font = font
            self.align = align
            self.nameLength = nameLength
            self.split = split
        }
        
    }
    public var hoverLabel: HoverLabel? = nil

    /// Sets the calendar system to use with `x` date data.
    public var xCalendar: Shared.Calendar? = nil

    /// Sets a reference between this trace's x coordinates and a 2D cartesian x axis.
    /// 
    /// If *x* (the default value), the x coordinates refer to `layout.xaxis`. If *x2*, the x
    /// coordinates refer to `layout.xaxis2`, and so on.
    public var xAxis: Layout.XAxis = .preset

    /// Sets a reference between this trace's y coordinates and a 2D cartesian y axis.
    /// 
    /// If *y* (the default value), the y coordinates refer to `layout.yaxis`. If *y2*, the y
    /// coordinates refer to `layout.yaxis2`, and so on.
    public var yAxis: Layout.YAxis = .preset

    /// Decoding and encoding keys compatible with Plotly schema.
    enum CodingKeys: String, CodingKey {
        case type
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
    }
    
    /// Creates `Candlestick` object from the most frequently used properties.
    /// 
    /// - Parameters:
    ///   - name: Sets the trace name.
    ///   - x: Sets the x coordinates.
    ///   - open: Sets the open values.
    ///   - high: Sets the high values.
    ///   - low: Sets the low values.
    ///   - close: Sets the close values.
    ///   - line:
    ///   - text: Sets hover text elements associated with each sample point.
    ///   - hoverText: Same as `text`.
    public init(name: String? = nil, x: XData? = nil, open: OHLCData? = nil, high: OHLCData? = nil,
            low: OHLCData? = nil, close: OHLCData? = nil, line: Line? = nil, text: Data<String>? = nil,
            hoverText: Data<String>? = nil) {
        self.name = name
        self.x = x
        self.open = open
        self.high = high
        self.low = low
        self.close = close
        self.line = line
        self.text = text
        self.hoverText = hoverText
    }
    
    /// Creates `Candlestick` object with specified properties.
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
    ///   - selectedPoints: Array containing integer indices of selected points.
    ///   - hoverInfo: Determines which trace information appear on hover.
    ///   - stream:
    ///   - transforms:
    ///   - uiRevision: Controls persistence of some user-driven changes to the trace: `constraintrange`
    ///   in `parcoords` traces, as well as some `editable: true` modifications such as `name` and
    ///   `colorbar.title`.
    ///   - x: Sets the x coordinates.
    ///   - open: Sets the open values.
    ///   - high: Sets the high values.
    ///   - low: Sets the low values.
    ///   - close: Sets the close values.
    ///   - line:
    ///   - increasing:
    ///   - decreasing:
    ///   - text: Sets hover text elements associated with each sample point.
    ///   - hoverText: Same as `text`.
    ///   - whiskerWidth: Sets the width of the whiskers relative to the box' width.
    ///   - hoverLabel:
    ///   - xCalendar: Sets the calendar system to use with `x` date data.
    ///   - xAxis: Sets a reference between this trace's x coordinates and a 2D cartesian x axis.
    ///   - yAxis: Sets a reference between this trace's y coordinates and a 2D cartesian y axis.
    public init(visible: Shared.Visible? = nil, showLegend: Bool? = nil, legendGroup: String? = nil,
            opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [String]? = nil,
            customData: [String]? = nil, meta: Data<Anything>? = nil, selectedPoints: Anything? = nil,
            hoverInfo: Shared.HoverInfo? = nil, stream: Shared.Stream? = nil, transforms: [Transform] = [],
            uiRevision: Anything? = nil, x: XData? = nil, open: OHLCData? = nil, high: OHLCData? = nil, low:
            OHLCData? = nil, close: OHLCData? = nil, line: Line? = nil, increasing: Increasing? = nil,
            decreasing: Decreasing? = nil, text: Data<String>? = nil, hoverText: Data<String>? = nil,
            whiskerWidth: Double? = nil, hoverLabel: HoverLabel? = nil, xCalendar: Shared.Calendar? = nil,
            xAxis: Layout.XAxis = .preset, yAxis: Layout.YAxis = .preset) {
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
    
    /// Encodes the object in a format compatible with Plotly.
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encodeIfPresent(visible, forKey: .visible)
        try container.encodeIfPresent(showLegend, forKey: .showLegend)
        try container.encodeIfPresent(legendGroup, forKey: .legendGroup)
        try container.encodeIfPresent(opacity, forKey: .opacity)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(uid, forKey: .uid)
        try container.encodeIfPresent(ids, forKey: .ids)
        try container.encodeIfPresent(customData, forKey: .customData)
        try container.encodeIfPresent(meta, forKey: .meta)
        try container.encodeIfPresent(selectedPoints, forKey: .selectedPoints)
        try container.encodeIfPresent(hoverInfo, forKey: .hoverInfo)
        try container.encodeIfPresent(stream, forKey: .stream)
        var transformsContainer = container.nestedUnkeyedContainer(forKey: .transforms)
        for transform in transforms { try transform.encode(to: transformsContainer.superEncoder()) }
        try container.encodeIfPresent(uiRevision, forKey: .uiRevision)
        if let x = self.x {
            try x.encode(toPlotly: container.superEncoder(forKey: .x))
        }
        if let open = self.open {
            try open.encode(toPlotly: container.superEncoder(forKey: .open))
        }
        if let high = self.high {
            try high.encode(toPlotly: container.superEncoder(forKey: .high))
        }
        if let low = self.low {
            try low.encode(toPlotly: container.superEncoder(forKey: .low))
        }
        if let close = self.close {
            try close.encode(toPlotly: container.superEncoder(forKey: .close))
        }
        try container.encodeIfPresent(line, forKey: .line)
        try container.encodeIfPresent(increasing, forKey: .increasing)
        try container.encodeIfPresent(decreasing, forKey: .decreasing)
        try container.encodeIfPresent(text, forKey: .text)
        try container.encodeIfPresent(hoverText, forKey: .hoverText)
        try container.encodeIfPresent(whiskerWidth, forKey: .whiskerWidth)
        try container.encodeIfPresent(hoverLabel, forKey: .hoverLabel)
        try container.encodeIfPresent(xCalendar, forKey: .xCalendar)
        try container.encode("x\(xAxis.uid)", forKey: .xAxis)
        try container.encode("y\(yAxis.uid)", forKey: .yAxis)
    }
}