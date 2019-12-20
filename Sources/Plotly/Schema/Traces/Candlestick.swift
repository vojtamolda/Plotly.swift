/// The candlestick is a style of financial chart describing open, high, low and close for a given `x` coordinate (most likely time). 
///
/// The boxes represent the spread between the `open` and `close` values and the lines represent the
/// spread between the `low` and `high` values Sample points where the close value is higher (lower)
/// then the open value are called increasing (decreasing). By default, increasing candles are drawn
/// in green whereas decreasing are drawn in red.
public struct Candlestick: Trace {
    public let type: String = "candlestick"

    public let animatable: Bool = false

    /// Determines whether or not this trace is visible. 
    ///
    /// If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the
    /// legend itself is visible).
    /// - traces/box/attributes/visible
    /// - traces/candlestick/attributes/visible
    /// - traces/choropleth/attributes/visible
    /// - traces/choroplethmapbox/attributes/visible
    /// - traces/contour/attributes/visible
    /// - traces/contourcarpet/attributes/visible
    /// - traces/densitymapbox/attributes/visible
    /// - traces/heatmap/attributes/visible
    /// - traces/heatmapgl/attributes/visible
    /// - traces/histogram2d/attributes/visible
    /// - traces/histogram2dcontour/attributes/visible
    /// - traces/indicator/attributes/visible
    /// - traces/isosurface/attributes/visible
    /// - traces/mesh3d/attributes/visible
    /// - traces/ohlc/attributes/visible
    /// - traces/parcats/attributes/visible
    /// - traces/parcoords/attributes/visible
    /// - traces/sankey/attributes/visible
    /// - traces/scatter/attributes/visible
    /// - traces/scatter3d/attributes/visible
    /// - traces/scattercarpet/attributes/visible
    /// - traces/scattergeo/attributes/visible
    /// - traces/scattermapbox/attributes/visible
    /// - traces/scatterternary/attributes/visible
    /// - traces/splom/attributes/visible
    /// - traces/sunburst/attributes/visible
    /// - traces/surface/attributes/visible
    /// - traces/table/attributes/visible
    /// - traces/treemap/attributes/visible
    /// - traces/violin/attributes/visible
    /// - traces/volume/attributes/visible
    /// - traces/waterfall/attributes/visible
    public enum Visible: String, Encodable {
        case `true` = "true"
        case `false` = "false"
        case legendOnly = "legendonly"
    }
    /// Determines whether or not this trace is visible. 
    ///
    /// If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the
    /// legend itself is visible).
    public var visible: Visible?

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

    /// Array containing integer indices of selected points. 
    ///
    /// Has an effect only for traces that support selections. Note that an empty array means an empty
    /// selection where the `unselected` are turned on for all points, whereas, any other non-array
    /// values means no selection all where the `selected` and `unselected` styles have no effect.
    public var selectedPoints: Anything?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    /// - traces/box/attributes/hoverinfo
    /// - traces/candlestick/attributes/hoverinfo
    /// - traces/contour/attributes/hoverinfo
    /// - traces/heatmap/attributes/hoverinfo
    /// - traces/heatmapgl/attributes/hoverinfo
    /// - traces/histogram2d/attributes/hoverinfo
    /// - traces/histogram2dcontour/attributes/hoverinfo
    /// - traces/isosurface/attributes/hoverinfo
    /// - traces/mesh3d/attributes/hoverinfo
    /// - traces/ohlc/attributes/hoverinfo
    /// - traces/scatter/attributes/hoverinfo
    /// - traces/scatter3d/attributes/hoverinfo
    /// - traces/splom/attributes/hoverinfo
    /// - traces/surface/attributes/hoverinfo
    /// - traces/table/attributes/hoverinfo
    /// - traces/violin/attributes/hoverinfo
    /// - traces/volume/attributes/hoverinfo
    public struct HoverInfo: OptionSet, Encodable {
        public let rawValue: Int
    
        public static let x = HoverInfo(rawValue: 1 << 0)
        public static let y = HoverInfo(rawValue: 1 << 1)
        public static let z = HoverInfo(rawValue: 1 << 2)
        public static let text = HoverInfo(rawValue: 1 << 3)
        public static let name = HoverInfo(rawValue: 1 << 4)
        public static let all = HoverInfo(rawValue: 1 << 5)
        public static let none = HoverInfo(rawValue: 1 << 6)
        public static let skip = HoverInfo(rawValue: 1 << 7)
    
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
    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    public var hoverInfo: HoverInfo?

    /// - traces/candlestick/attributes/stream
    public struct Stream: Encodable {
        /// The stream id number links a data trace on a plot with a stream. 
        ///
        /// See https://plot.ly/settings for more details.
        public var token: String?
    
        /// Sets the maximum number of points to keep on the plots from an incoming stream. 
        ///
        /// If `maxpoints` is set to *50*, only the newest 50 points will be displayed on the plot.
        public var maxPoints: Double?
    
        public init(token: String? = nil, maxPoints: Double? = nil) {
            self.token = token
            self.maxPoints = maxPoints
        }
    }
    public var stream: Stream?

    /// - traces/candlestick/attributes/transforms
    public struct Transforms: Encodable {
        /// - traces/candlestick/attributes/transforms/items
        public struct Items: Encodable {
            /// An array of operations that manipulate the trace data, for example filtering or sorting the data arrays.
            /// - traces/candlestick/attributes/transforms/items/transform
            public struct Transform: Encodable {
                public init() {
                }
            }
            /// An array of operations that manipulate the trace data, for example filtering or sorting the data arrays.
            public var transform: Transform?
        
            public init(transform: Transform? = nil) {
                self.transform = transform
            }
        }
        public var items: Items?
    
        public init(items: Items? = nil) {
            self.items = items
        }
    }
    public var transforms: Transforms?

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
    ///
    /// If absent, linear coordinate will be generated.
    public var x: [Double]?

    /// Sets the open values.
    public var open: [Double]?

    /// Sets the high values.
    public var high: [Double]?

    /// Sets the low values.
    public var low: [Double]?

    /// Sets the close values.
    public var close: [Double]?

    /// - traces/candlestick/attributes/line
    public struct Line: Encodable {
        /// Sets the width (in px) of line bounding the box(es). 
        ///
        /// Note that this style setting can also be set per direction via `increasing.line.width` and
        /// `decreasing.line.width`.
        public var width: Double?
    
        public init(width: Double? = nil) {
            self.width = width
        }
    }
    public var line: Line?

    /// - traces/candlestick/attributes/increasing
    public struct Increasing: Encodable {
        /// - traces/candlestick/attributes/increasing/line
        public struct Line: Encodable {
            /// Sets the color of line bounding the box(es).
            public var color: Color?
        
            /// Sets the width (in px) of line bounding the box(es).
            public var width: Double?
        
            public init(color: Color? = nil, width: Double? = nil) {
                self.color = color
                self.width = width
            }
        }
        public var line: Line?
    
        /// Sets the fill color. 
        ///
        /// Defaults to a half-transparent variant of the line color, marker color, or marker line color,
        /// whichever is available.
        public var fillColor: Color?
    
        public init(line: Line? = nil, fillColor: Color? = nil) {
            self.line = line
            self.fillColor = fillColor
        }
    }
    public var increasing: Increasing?

    /// - traces/candlestick/attributes/decreasing
    public struct Decreasing: Encodable {
        /// - traces/candlestick/attributes/decreasing/line
        public struct Line: Encodable {
            /// Sets the color of line bounding the box(es).
            public var color: Color?
        
            /// Sets the width (in px) of line bounding the box(es).
            public var width: Double?
        
            public init(color: Color? = nil, width: Double? = nil) {
                self.color = color
                self.width = width
            }
        }
        public var line: Line?
    
        /// Sets the fill color. 
        ///
        /// Defaults to a half-transparent variant of the line color, marker color, or marker line color,
        /// whichever is available.
        public var fillColor: Color?
    
        public init(line: Line? = nil, fillColor: Color? = nil) {
            self.line = line
            self.fillColor = fillColor
        }
    }
    public var decreasing: Decreasing?

    /// Sets hover text elements associated with each sample point. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to this trace's sample points.
    public var text: String?

    /// Same as `text`.
    public var hoverText: String?

    /// Sets the width of the whiskers relative to the box' width. 
    ///
    /// For example, with 1, the whiskers are as wide as the box(es).
    public var whiskerWidth: Double?

    /// - traces/candlestick/attributes/hoverlabel
    public struct HoverLabel: Encodable {
        /// Sets the background color of the hover labels for this trace
        public var backgroundColor: Color?
    
        /// Sets the border color of the hover labels for this trace.
        public var borderColor: Color?
    
        /// Sets the font used in hover labels.
        /// - traces/candlestick/attributes/hoverlabel/font
        public struct Font: Encodable {
            /// HTML font family - the typeface that will be applied by the web browser. 
            ///
            /// The web browser will only be able to apply a font if it is available on the system which it
            /// operates. Provide multiple font families, separated by commas, to indicate the preference in
            /// which to apply fonts if they aren't available on the system. The plotly service (at
            /// https://plot.ly or on-premise) generates images on a server, where only a select number of fonts
            /// are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,,
            /// *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*,
            /// *PT Sans Narrow*, *Raleway*, *Times New Roman*.
            public var family: String?
        
            public var size: Double?
        
            public var color: Color?
        
            /// Sets the source reference on plot.ly for  family .
            public var familySource: String?
        
            /// Sets the source reference on plot.ly for  size .
            public var sizeSource: String?
        
            /// Sets the source reference on plot.ly for  color .
            public var colorSource: String?
        
            public init(family: String? = nil, size: Double? = nil, color: Color? = nil, familySource: String? = nil, sizeSource: String? = nil, colorSource: String? = nil) {
                self.family = family
                self.size = size
                self.color = color
                self.familySource = familySource
                self.sizeSource = sizeSource
                self.colorSource = colorSource
            }
        }
        /// Sets the font used in hover labels.
        public var font: Font?
    
        /// Sets the horizontal alignment of the text content within hover label box. 
        ///
        /// Has an effect only if the hover label text spans more two or more lines
        /// - layout/layoutAttributes/hoverlabel/align
        /// - traces/box/attributes/hoverlabel/align
        /// - traces/candlestick/attributes/hoverlabel/align
        /// - traces/choropleth/attributes/hoverlabel/align
        /// - traces/choroplethmapbox/attributes/hoverlabel/align
        /// - traces/contour/attributes/hoverlabel/align
        /// - traces/densitymapbox/attributes/hoverlabel/align
        /// - traces/heatmap/attributes/hoverlabel/align
        /// - traces/heatmapgl/attributes/hoverlabel/align
        /// - traces/histogram2d/attributes/hoverlabel/align
        /// - traces/histogram2dcontour/attributes/hoverlabel/align
        /// - traces/isosurface/attributes/hoverlabel/align
        /// - traces/mesh3d/attributes/hoverlabel/align
        /// - traces/ohlc/attributes/hoverlabel/align
        /// - traces/sankey/attributes/hoverlabel/align
        /// - traces/sankey/attributes/link/hoverlabel/align
        /// - traces/sankey/attributes/node/hoverlabel/align
        /// - traces/scatter/attributes/hoverlabel/align
        /// - traces/scatter3d/attributes/hoverlabel/align
        /// - traces/scattercarpet/attributes/hoverlabel/align
        /// - traces/scattergeo/attributes/hoverlabel/align
        /// - traces/scattermapbox/attributes/hoverlabel/align
        /// - traces/scatterternary/attributes/hoverlabel/align
        /// - traces/splom/attributes/hoverlabel/align
        /// - traces/sunburst/attributes/hoverlabel/align
        /// - traces/surface/attributes/hoverlabel/align
        /// - traces/table/attributes/hoverlabel/align
        /// - traces/treemap/attributes/hoverlabel/align
        /// - traces/violin/attributes/hoverlabel/align
        /// - traces/volume/attributes/hoverlabel/align
        /// - traces/waterfall/attributes/hoverlabel/align
        public enum Align: String, Encodable {
            case left
            case right
            case auto
        }
        /// Sets the horizontal alignment of the text content within hover label box. 
        ///
        /// Has an effect only if the hover label text spans more two or more lines
        public var align: Align?
    
        /// Sets the default length (in number of characters) of the trace name in the hover labels for all traces. 
        ///
        /// -1 shows the whole name regardless of length. 0-3 shows the first 0-3 characters, and an integer
        /// >3 will show the whole name if it is less than that many characters, but if it is longer, will
        /// truncate to `namelength - 3` characters and add an ellipsis.
        public var nameLength: Int?
    
        /// Show hover information (open, close, high, low) in separate labels.
        public var split: Bool?
    
        /// Sets the source reference on plot.ly for  bgcolor .
        public var backgroundColorSource: String?
    
        /// Sets the source reference on plot.ly for  bordercolor .
        public var borderColorSource: String?
    
        /// Sets the source reference on plot.ly for  align .
        public var alignSource: String?
    
        /// Sets the source reference on plot.ly for  namelength .
        public var nameLengthSource: String?
    
        public init(backgroundColor: Color? = nil, borderColor: Color? = nil, font: Font? = nil, align: Align? = nil, nameLength: Int? = nil, split: Bool? = nil, backgroundColorSource: String? = nil, borderColorSource: String? = nil, alignSource: String? = nil, nameLengthSource: String? = nil) {
            self.backgroundColor = backgroundColor
            self.borderColor = borderColor
            self.font = font
            self.align = align
            self.nameLength = nameLength
            self.split = split
            self.backgroundColorSource = backgroundColorSource
            self.borderColorSource = borderColorSource
            self.alignSource = alignSource
            self.nameLengthSource = nameLengthSource
        }
    }
    public var hoverLabel: HoverLabel?

    /// Sets the calendar system to use with `x` date data.
    /// - traces/box/attributes/xcalendar
    /// - traces/candlestick/attributes/xcalendar
    /// - traces/contour/attributes/xcalendar
    /// - traces/heatmap/attributes/xcalendar
    /// - traces/histogram2d/attributes/xcalendar
    /// - traces/histogram2dcontour/attributes/xcalendar
    /// - traces/mesh3d/attributes/xcalendar
    /// - traces/ohlc/attributes/xcalendar
    /// - traces/scatter/attributes/xcalendar
    /// - traces/scatter3d/attributes/xcalendar
    /// - traces/surface/attributes/xcalendar
    public enum XCalendar: String, Encodable {
        case gregorian
        case chinese
        case coptic
        case discworld
        case ethiopian
        case hebrew
        case islamic
        case julian
        case mayan
        case nanakshahi
        case nepali
        case persian
        case jalali
        case taiwan
        case thai
        case ummalqura
    }
    /// Sets the calendar system to use with `x` date data.
    public var xCalendar: XCalendar?

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

    /// Sets the source reference on plot.ly for  open .
    public var openSource: String?

    /// Sets the source reference on plot.ly for  high .
    public var highSource: String?

    /// Sets the source reference on plot.ly for  low .
    public var lowSource: String?

    /// Sets the source reference on plot.ly for  close .
    public var closeSource: String?

    /// Sets the source reference on plot.ly for  text .
    public var textSource: String?

    /// Sets the source reference on plot.ly for  hovertext .
    public var hoverTextSource: String?

    public init(visible: Visible? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, selectedPoints: Anything? = nil, hoverInfo: HoverInfo? = nil, stream: Stream? = nil, transforms: Transforms? = nil, uiRevision: Anything? = nil, x: [Double]? = nil, open: [Double]? = nil, high: [Double]? = nil, low: [Double]? = nil, close: [Double]? = nil, line: Line? = nil, increasing: Increasing? = nil, decreasing: Decreasing? = nil, text: String? = nil, hoverText: String? = nil, whiskerWidth: Double? = nil, hoverLabel: HoverLabel? = nil, xCalendar: XCalendar? = nil, xAxis: SubPlotID? = nil, yAxis: SubPlotID? = nil, idsSource: String? = nil, customDataSource: String? = nil, metaSource: String? = nil, hoverInfoSource: String? = nil, xSource: String? = nil, openSource: String? = nil, highSource: String? = nil, lowSource: String? = nil, closeSource: String? = nil, textSource: String? = nil, hoverTextSource: String? = nil) {
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