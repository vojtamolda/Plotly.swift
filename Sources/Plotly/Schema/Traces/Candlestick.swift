/// The candlestick is a style of financial chart describing open, high, low and close for a given `x` coordinate (most likely time). The boxes represent the spread between the `open` and `close` values and the lines represent the spread between the `low` and `high` values Sample points where the close value is higher (lower) then the open value are called increasing (decreasing). By default, increasing candles are drawn in green whereas decreasing are drawn in red.
public struct Candlestick: Trace {
    public let type: String = "candlestick"

    public let animatable: Bool = false

    /// Determines whether or not this trace is visible. If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the legend itself is visible).
    public enum Visible: String, Encodable {
        case yes
        case no
        case legendonly
    }
    /// Determines whether or not this trace is visible. If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the legend itself is visible).
    public var visible: Visible?

    /// Determines whether or not an item corresponding to this trace is shown in the legend.
    public var showlegend: Bool?

    /// Sets the legend group for this trace. Traces part of the same legend group hide/show at the same time when toggling legend items.
    public var legendgroup: String?

    /// Sets the opacity of the trace.
    public var opacity: Double?

    /// Sets the trace name. The trace name appear as the legend item and on hover.
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    public var uid: String?

    /// Assigns id labels to each datum. These ids for object constancy of data points during animation. Should be an array of strings, not numbers or any other type.
    public var ids: [Double]?

    /// Assigns extra data each datum. This may be useful when listening to hover, click and selection events. Note that, *scatter* traces also appends customdata items in the markers DOM elements
    public var customdata: [Double]?

    /// Assigns extra meta information associated with this trace that can be used in various text attributes. Attributes such as trace `name`, graph, axis and colorbar `title.text`, annotation `text` `rangeselector`, `updatemenues` and `sliders` `label` text all support `meta`. To access the trace `meta` values in an attribute in the same trace, simply use `%{meta[i]}` where `i` is the index or key of the `meta` item in question. To access trace `meta` in layout attributes, use `%{data[n[.meta[i]}` where `i` is the index or key of the `meta` and `n` is the trace index.
    public var meta: Anything?

    /// Array containing integer indices of selected points. Has an effect only for traces that support selections. Note that an empty array means an empty selection where the `unselected` are turned on for all points, whereas, any other non-array values means no selection all where the `selected` and `unselected` styles have no effect.
    public var selectedpoints: Anything?

    /// Determines which trace information appear on hover. If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set, click and hover events are still fired.
    public struct Hoverinfo: OptionSet, Encodable {
        public let rawValue: Int
    
        public static let x = Hoverinfo(rawValue: 1 << 0)
        public static let y = Hoverinfo(rawValue: 1 << 1)
        public static let z = Hoverinfo(rawValue: 1 << 2)
        public static let text = Hoverinfo(rawValue: 1 << 3)
        public static let name = Hoverinfo(rawValue: 1 << 4)
    
        public init(rawValue: Int) { self.rawValue = rawValue }
    
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["x"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["y"] }
            if (self.rawValue & 1 << 2) != 0 { options += ["z"] }
            if (self.rawValue & 1 << 3) != 0 { options += ["text"] }
            if (self.rawValue & 1 << 4) != 0 { options += ["name"] }
            var container = encoder.singleValueContainer()
            try container.encode(options.joined(separator: "+"))
        }
    }
    /// Determines which trace information appear on hover. If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set, click and hover events are still fired.
    public var hoverinfo: Hoverinfo?

    public struct Stream: Encodable {
        /// The stream id number links a data trace on a plot with a stream. See https://plot.ly/settings for more details.
        public var token: String?
    
        /// Sets the maximum number of points to keep on the plots from an incoming stream. If `maxpoints` is set to *50*, only the newest 50 points will be displayed on the plot.
        public var maxpoints: Double?
    
        public init(token: String? = nil, maxpoints: Double? = nil) {
            self.token = token
            self.maxpoints = maxpoints
        }
    }
    public var stream: Stream?

    public struct Transforms: Encodable {
        public struct Items: Encodable {
            /// An array of operations that manipulate the trace data, for example filtering or sorting the data arrays.
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

    /// Controls persistence of some user-driven changes to the trace: `constraintrange` in `parcoords` traces, as well as some `editable: true` modifications such as `name` and `colorbar.title`. Defaults to `layout.uirevision`. Note that other user-driven trace attribute changes are controlled by `layout` attributes: `trace.visible` is controlled by `layout.legend.uirevision`, `selectedpoints` is controlled by `layout.selectionrevision`, and `colorbar.(x|y)` (accessible with `config: {editable: true}`) is controlled by `layout.editrevision`. Trace changes are tracked by `uid`, which only falls back on trace index if no `uid` is provided. So if your app can add/remove traces before the end of the `data` array, such that the same trace has a different index, you can still preserve user-driven changes if you give each trace a `uid` that stays with it as it moves.
    public var uirevision: Anything?

    /// Sets the x coordinates. If absent, linear coordinate will be generated.
    public var x: [Double]?

    /// Sets the open values.
    public var open: [Double]?

    /// Sets the high values.
    public var high: [Double]?

    /// Sets the low values.
    public var low: [Double]?

    /// Sets the close values.
    public var close: [Double]?

    public struct Line: Encodable {
        /// Sets the width (in px) of line bounding the box(es). Note that this style setting can also be set per direction via `increasing.line.width` and `decreasing.line.width`.
        public var width: Double?
    
        public init(width: Double? = nil) {
            self.width = width
        }
    }
    public var line: Line?

    public struct Increasing: Encodable {
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
    
        /// Sets the fill color. Defaults to a half-transparent variant of the line color, marker color, or marker line color, whichever is available.
        public var fillcolor: Color?
    
        public init(line: Line? = nil, fillcolor: Color? = nil) {
            self.line = line
            self.fillcolor = fillcolor
        }
    }
    public var increasing: Increasing?

    public struct Decreasing: Encodable {
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
    
        /// Sets the fill color. Defaults to a half-transparent variant of the line color, marker color, or marker line color, whichever is available.
        public var fillcolor: Color?
    
        public init(line: Line? = nil, fillcolor: Color? = nil) {
            self.line = line
            self.fillcolor = fillcolor
        }
    }
    public var decreasing: Decreasing?

    /// Sets hover text elements associated with each sample point. If a single string, the same string appears over all the data points. If an array of string, the items are mapped in order to this trace's sample points.
    public var text: String?

    /// Same as `text`.
    public var hovertext: String?

    /// Sets the width of the whiskers relative to the box' width. For example, with 1, the whiskers are as wide as the box(es).
    public var whiskerwidth: Double?

    public struct Hoverlabel: Encodable {
        /// Sets the background color of the hover labels for this trace
        public var bgcolor: Color?
    
        /// Sets the border color of the hover labels for this trace.
        public var bordercolor: Color?
    
        /// Sets the font used in hover labels.
        public struct Font: Encodable {
            /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
            public var family: String?
        
            public var size: Double?
        
            public var color: Color?
        
            /// Sets the source reference on plot.ly for  family .
            public var familysrc: String?
        
            /// Sets the source reference on plot.ly for  size .
            public var sizesrc: String?
        
            /// Sets the source reference on plot.ly for  color .
            public var colorsrc: String?
        
            public init(family: String? = nil, size: Double? = nil, color: Color? = nil, familysrc: String? = nil, sizesrc: String? = nil, colorsrc: String? = nil) {
                self.family = family
                self.size = size
                self.color = color
                self.familysrc = familysrc
                self.sizesrc = sizesrc
                self.colorsrc = colorsrc
            }
        }
        /// Sets the font used in hover labels.
        public var font: Font?
    
        /// Sets the horizontal alignment of the text content within hover label box. Has an effect only if the hover label text spans more two or more lines
        public enum Align: String, Encodable {
            case left
            case right
            case auto
        }
        /// Sets the horizontal alignment of the text content within hover label box. Has an effect only if the hover label text spans more two or more lines
        public var align: Align?
    
        /// Sets the default length (in number of characters) of the trace name in the hover labels for all traces. -1 shows the whole name regardless of length. 0-3 shows the first 0-3 characters, and an integer >3 will show the whole name if it is less than that many characters, but if it is longer, will truncate to `namelength - 3` characters and add an ellipsis.
        public var namelength: Int?
    
        /// Show hover information (open, close, high, low) in separate labels.
        public var split: Bool?
    
        /// Sets the source reference on plot.ly for  bgcolor .
        public var bgcolorsrc: String?
    
        /// Sets the source reference on plot.ly for  bordercolor .
        public var bordercolorsrc: String?
    
        /// Sets the source reference on plot.ly for  align .
        public var alignsrc: String?
    
        /// Sets the source reference on plot.ly for  namelength .
        public var namelengthsrc: String?
    
        public init(bgcolor: Color? = nil, bordercolor: Color? = nil, font: Font? = nil, align: Align? = nil, namelength: Int? = nil, split: Bool? = nil, bgcolorsrc: String? = nil, bordercolorsrc: String? = nil, alignsrc: String? = nil, namelengthsrc: String? = nil) {
            self.bgcolor = bgcolor
            self.bordercolor = bordercolor
            self.font = font
            self.align = align
            self.namelength = namelength
            self.split = split
            self.bgcolorsrc = bgcolorsrc
            self.bordercolorsrc = bordercolorsrc
            self.alignsrc = alignsrc
            self.namelengthsrc = namelengthsrc
        }
    }
    public var hoverlabel: Hoverlabel?

    /// Sets the calendar system to use with `x` date data.
    public enum Xcalendar: String, Encodable {
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
    public var xcalendar: Xcalendar?

    /// Sets a reference between this trace's x coordinates and a 2D cartesian x axis. If *x* (the default value), the x coordinates refer to `layout.xaxis`. If *x2*, the x coordinates refer to `layout.xaxis2`, and so on.
    public var xaxis: SubplotID?

    /// Sets a reference between this trace's y coordinates and a 2D cartesian y axis. If *y* (the default value), the y coordinates refer to `layout.yaxis`. If *y2*, the y coordinates refer to `layout.yaxis2`, and so on.
    public var yaxis: SubplotID?

    /// Sets the source reference on plot.ly for  ids .
    public var idssrc: String?

    /// Sets the source reference on plot.ly for  customdata .
    public var customdatasrc: String?

    /// Sets the source reference on plot.ly for  meta .
    public var metasrc: String?

    /// Sets the source reference on plot.ly for  hoverinfo .
    public var hoverinfosrc: String?

    /// Sets the source reference on plot.ly for  x .
    public var xsrc: String?

    /// Sets the source reference on plot.ly for  open .
    public var opensrc: String?

    /// Sets the source reference on plot.ly for  high .
    public var highsrc: String?

    /// Sets the source reference on plot.ly for  low .
    public var lowsrc: String?

    /// Sets the source reference on plot.ly for  close .
    public var closesrc: String?

    /// Sets the source reference on plot.ly for  text .
    public var textsrc: String?

    /// Sets the source reference on plot.ly for  hovertext .
    public var hovertextsrc: String?

    public init(visible: Visible? = nil, showlegend: Bool? = nil, legendgroup: String? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customdata: [Double]? = nil, meta: Anything? = nil, selectedpoints: Anything? = nil, hoverinfo: Hoverinfo? = nil, stream: Stream? = nil, transforms: Transforms? = nil, uirevision: Anything? = nil, x: [Double]? = nil, open: [Double]? = nil, high: [Double]? = nil, low: [Double]? = nil, close: [Double]? = nil, line: Line? = nil, increasing: Increasing? = nil, decreasing: Decreasing? = nil, text: String? = nil, hovertext: String? = nil, whiskerwidth: Double? = nil, hoverlabel: Hoverlabel? = nil, xcalendar: Xcalendar? = nil, xaxis: SubplotID? = nil, yaxis: SubplotID? = nil, idssrc: String? = nil, customdatasrc: String? = nil, metasrc: String? = nil, hoverinfosrc: String? = nil, xsrc: String? = nil, opensrc: String? = nil, highsrc: String? = nil, lowsrc: String? = nil, closesrc: String? = nil, textsrc: String? = nil, hovertextsrc: String? = nil) {
        self.visible = visible
        self.showlegend = showlegend
        self.legendgroup = legendgroup
        self.opacity = opacity
        self.name = name
        self.uid = uid
        self.ids = ids
        self.customdata = customdata
        self.meta = meta
        self.selectedpoints = selectedpoints
        self.hoverinfo = hoverinfo
        self.stream = stream
        self.transforms = transforms
        self.uirevision = uirevision
        self.x = x
        self.open = open
        self.high = high
        self.low = low
        self.close = close
        self.line = line
        self.increasing = increasing
        self.decreasing = decreasing
        self.text = text
        self.hovertext = hovertext
        self.whiskerwidth = whiskerwidth
        self.hoverlabel = hoverlabel
        self.xcalendar = xcalendar
        self.xaxis = xaxis
        self.yaxis = yaxis
        self.idssrc = idssrc
        self.customdatasrc = customdatasrc
        self.metasrc = metasrc
        self.hoverinfosrc = hoverinfosrc
        self.xsrc = xsrc
        self.opensrc = opensrc
        self.highsrc = highsrc
        self.lowsrc = lowsrc
        self.closesrc = closesrc
        self.textsrc = textsrc
        self.hovertextsrc = hovertextsrc
    }
}