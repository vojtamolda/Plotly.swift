/// The candlestick is a style of financial chart describing open, high, low and close for a given `x` coordinate (most likely time). The boxes represent the spread between the `open` and `close` values and the lines represent the spread between the `low` and `high` values Sample points where the close value is higher (lower) then the open value are called increasing (decreasing). By default, increasing candles are drawn in green whereas decreasing are drawn in red.
struct Candlestick: Encodable {
    /// Sets the source reference on plot.ly for  close .
    var closesrc: String?

    /// Sets hover text elements associated with each sample point. If a single string, the same string appears over all the data points. If an array of string, the items are mapped in order to this trace's sample points.
    var text: String?

    /// Sets the source reference on plot.ly for  meta .
    var metasrc: String?

    /// Assigns extra data each datum. This may be useful when listening to hover, click and selection events. Note that, *scatter* traces also appends customdata items in the markers DOM elements
    var customdata: [Double]?

    /// Sets a reference between this trace's y coordinates and a 2D cartesian y axis. If *y* (the default value), the y coordinates refer to `layout.yaxis`. If *y2*, the y coordinates refer to `layout.yaxis2`, and so on.
    var yaxis: SubplotID?

    /// Sets the trace name. The trace name appear as the legend item and on hover.
    var name: String?

    /// 
    struct Decreasing: Encodable {
        /// 
        struct Line: Encodable {
            /// Sets the color of line bounding the box(es).
            var color: Color?
        
            /// Sets the width (in px) of line bounding the box(es).
            var width: Double?
        
        }
        /// 
        var line: Line?
    
        /// Sets the fill color. Defaults to a half-transparent variant of the line color, marker color, or marker line color, whichever is available.
        var fillcolor: Color?
    
    }
    /// 
    var decreasing: Decreasing?

    /// Sets the source reference on plot.ly for  hovertext .
    var hovertextsrc: String?

    /// Sets the source reference on plot.ly for  low .
    var lowsrc: String?

    /// Sets the width of the whiskers relative to the box' width. For example, with 1, the whiskers are as wide as the box(es).
    var whiskerwidth: Double?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    var uid: String?

    /// Assigns extra meta information associated with this trace that can be used in various text attributes. Attributes such as trace `name`, graph, axis and colorbar `title.text`, annotation `text` `rangeselector`, `updatemenues` and `sliders` `label` text all support `meta`. To access the trace `meta` values in an attribute in the same trace, simply use `%{meta[i]}` where `i` is the index or key of the `meta` item in question. To access trace `meta` in layout attributes, use `%{data[n[.meta[i]}` where `i` is the index or key of the `meta` and `n` is the trace index.
    var meta: Anything?

    /// Sets the calendar system to use with `x` date data.
    enum Xcalendar: String, Encodable {
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
    var xcalendar: Xcalendar?

    /// Sets a reference between this trace's x coordinates and a 2D cartesian x axis. If *x* (the default value), the x coordinates refer to `layout.xaxis`. If *x2*, the x coordinates refer to `layout.xaxis2`, and so on.
    var xaxis: SubplotID?

    /// Assigns id labels to each datum. These ids for object constancy of data points during animation. Should be an array of strings, not numbers or any other type.
    var ids: [Double]?

    /// Determines whether or not an item corresponding to this trace is shown in the legend.
    var showlegend: Bool?

    /// Sets the source reference on plot.ly for  ids .
    var idssrc: String?

    /// Determines which trace information appear on hover. If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set, click and hover events are still fired.
    struct Hoverinfo: OptionSet, Encodable {
        let rawValue: Int
    
        static let x = Hoverinfo(rawValue: 1 << 0)
        static let y = Hoverinfo(rawValue: 1 << 1)
        static let z = Hoverinfo(rawValue: 1 << 2)
        static let text = Hoverinfo(rawValue: 1 << 3)
        static let name = Hoverinfo(rawValue: 1 << 4)
    
        init(rawValue: Int) { self.rawValue = rawValue }
    
        func encode(to encoder: Encoder) throws {
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
    var hoverinfo: Hoverinfo?

    /// Sets the source reference on plot.ly for  high .
    var highsrc: String?

    /// 
    struct Line: Encodable {
        /// Sets the width (in px) of line bounding the box(es). Note that this style setting can also be set per direction via `increasing.line.width` and `decreasing.line.width`.
        var width: Double?
    
    }
    /// 
    var line: Line?

    /// Sets the source reference on plot.ly for  x .
    var xsrc: String?

    /// Sets the opacity of the trace.
    var opacity: Double?

    /// Sets the legend group for this trace. Traces part of the same legend group hide/show at the same time when toggling legend items.
    var legendgroup: String?

    /// Same as `text`.
    var hovertext: String?

    /// 
    struct Increasing: Encodable {
        /// 
        struct Line: Encodable {
            /// Sets the width (in px) of line bounding the box(es).
            var width: Double?
        
            /// Sets the color of line bounding the box(es).
            var color: Color?
        
        }
        /// 
        var line: Line?
    
        /// Sets the fill color. Defaults to a half-transparent variant of the line color, marker color, or marker line color, whichever is available.
        var fillcolor: Color?
    
    }
    /// 
    var increasing: Increasing?

    /// Sets the close values.
    var close: [Double]?

    /// 
    struct Stream: Encodable {
        /// Sets the maximum number of points to keep on the plots from an incoming stream. If `maxpoints` is set to *50*, only the newest 50 points will be displayed on the plot.
        var maxpoints: Double?
    
        /// The stream id number links a data trace on a plot with a stream. See https://plot.ly/settings for more details.
        var token: String?
    
    }
    /// 
    var stream: Stream?

    /// Sets the open values.
    var open: [Double]?

    /// Sets the x coordinates. If absent, linear coordinate will be generated.
    var x: [Double]?

    /// Sets the source reference on plot.ly for  customdata .
    var customdatasrc: String?

    /// 
    struct Hoverlabel: Encodable {
        /// Sets the horizontal alignment of the text content within hover label box. Has an effect only if the hover label text spans more two or more lines
        enum Align: String, Encodable {
            case left
            case right
            case auto
        }
        /// Sets the horizontal alignment of the text content within hover label box. Has an effect only if the hover label text spans more two or more lines
        var align: Align?
    
        /// Sets the border color of the hover labels for this trace.
        var bordercolor: Color?
    
        /// Sets the background color of the hover labels for this trace
        var bgcolor: Color?
    
        /// Sets the default length (in number of characters) of the trace name in the hover labels for all traces. -1 shows the whole name regardless of length. 0-3 shows the first 0-3 characters, and an integer >3 will show the whole name if it is less than that many characters, but if it is longer, will truncate to `namelength - 3` characters and add an ellipsis.
        var namelength: Int?
    
        /// Sets the source reference on plot.ly for  align .
        var alignsrc: String?
    
        /// Sets the source reference on plot.ly for  bordercolor .
        var bordercolorsrc: String?
    
        /// Sets the font used in hover labels.
        struct Font: Encodable {
            /// Sets the source reference on plot.ly for  family .
            var familysrc: String?
        
            /// Sets the source reference on plot.ly for  color .
            var colorsrc: String?
        
            /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
            var family: String?
        
            /// 
            var color: Color?
        
            /// Sets the source reference on plot.ly for  size .
            var sizesrc: String?
        
            /// 
            var size: Double?
        
        }
        /// Sets the font used in hover labels.
        var font: Font?
    
        /// Sets the source reference on plot.ly for  bgcolor .
        var bgcolorsrc: String?
    
        /// Sets the source reference on plot.ly for  namelength .
        var namelengthsrc: String?
    
        /// Show hover information (open, close, high, low) in separate labels.
        var split: Bool?
    
    }
    /// 
    var hoverlabel: Hoverlabel?

    /// Controls persistence of some user-driven changes to the trace: `constraintrange` in `parcoords` traces, as well as some `editable: true` modifications such as `name` and `colorbar.title`. Defaults to `layout.uirevision`. Note that other user-driven trace attribute changes are controlled by `layout` attributes: `trace.visible` is controlled by `layout.legend.uirevision`, `selectedpoints` is controlled by `layout.selectionrevision`, and `colorbar.(x|y)` (accessible with `config: {editable: true}`) is controlled by `layout.editrevision`. Trace changes are tracked by `uid`, which only falls back on trace index if no `uid` is provided. So if your app can add/remove traces before the end of the `data` array, such that the same trace has a different index, you can still preserve user-driven changes if you give each trace a `uid` that stays with it as it moves.
    var uirevision: Anything?

    /// Sets the low values.
    var low: [Double]?

    /// Sets the source reference on plot.ly for  text .
    var textsrc: String?

    /// Sets the source reference on plot.ly for  open .
    var opensrc: String?

    /// Array containing integer indices of selected points. Has an effect only for traces that support selections. Note that an empty array means an empty selection where the `unselected` are turned on for all points, whereas, any other non-array values means no selection all where the `selected` and `unselected` styles have no effect.
    var selectedpoints: Anything?

    /// 
    struct Transforms: Encodable {
        /// 
        struct Items: Encodable {
            /// An array of operations that manipulate the trace data, for example filtering or sorting the data arrays.
            struct Transform: Encodable {
            }
            /// An array of operations that manipulate the trace data, for example filtering or sorting the data arrays.
            var transform: Transform?
        
        }
        /// 
        var items: Items?
    
    }
    /// 
    var transforms: Transforms?

    /// Determines whether or not this trace is visible. If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the legend itself is visible).
    enum Visible: String, Encodable {
        case yes
        case no
        case legendonly
    }
    /// Determines whether or not this trace is visible. If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the legend itself is visible).
    var visible: Visible?

    /// Sets the source reference on plot.ly for  hoverinfo .
    var hoverinfosrc: String?

    /// Sets the high values.
    var high: [Double]?

}