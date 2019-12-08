/// A data visualized by the sectors of the pie is set in `values`. The sector labels are set in `labels`. The sector colors are set in `marker.colors`
public struct Pie: Trace {
    public let type: String = "pie"

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
    
        /// Sets the source reference on plot.ly for  bgcolor .
        public var bgcolorsrc: String?
    
        /// Sets the source reference on plot.ly for  bordercolor .
        public var bordercolorsrc: String?
    
        /// Sets the source reference on plot.ly for  align .
        public var alignsrc: String?
    
        /// Sets the source reference on plot.ly for  namelength .
        public var namelengthsrc: String?
    
        public init(bgcolor: Color? = nil, bordercolor: Color? = nil, font: Font? = nil, align: Align? = nil, namelength: Int? = nil, bgcolorsrc: String? = nil, bordercolorsrc: String? = nil, alignsrc: String? = nil, namelengthsrc: String? = nil) {
            self.bgcolor = bgcolor
            self.bordercolor = bordercolor
            self.font = font
            self.align = align
            self.namelength = namelength
            self.bgcolorsrc = bgcolorsrc
            self.bordercolorsrc = bordercolorsrc
            self.alignsrc = alignsrc
            self.namelengthsrc = namelengthsrc
        }
    }
    public var hoverlabel: Hoverlabel?

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

    /// Sets the sector labels. If `labels` entries are duplicated, we sum associated `values` or simply count occurrences if `values` is not provided. For other array attributes (including color) we use the first non-empty entry among all occurrences of the label.
    public var labels: [Double]?

    /// Alternate to `labels`. Builds a numeric set of labels. Use with `dlabel` where `label0` is the starting label and `dlabel` the step.
    public var label0: Double?

    /// Sets the label step. See `label0` for more info.
    public var dlabel: Double?

    /// Sets the values of the sectors. If omitted, we count occurrences of each label.
    public var values: [Double]?

    public struct Marker: Encodable {
        /// Sets the color of each sector. If not specified, the default trace color set is used to pick the sector colors.
        public var colors: [Double]?
    
        public struct Line: Encodable {
            /// Sets the color of the line enclosing each sector.
            public var color: Color?
        
            /// Sets the width (in px) of the line enclosing each sector.
            public var width: Double?
        
            /// Sets the source reference on plot.ly for  color .
            public var colorsrc: String?
        
            /// Sets the source reference on plot.ly for  width .
            public var widthsrc: String?
        
            public init(color: Color? = nil, width: Double? = nil, colorsrc: String? = nil, widthsrc: String? = nil) {
                self.color = color
                self.width = width
                self.colorsrc = colorsrc
                self.widthsrc = widthsrc
            }
        }
        public var line: Line?
    
        /// Sets the source reference on plot.ly for  colors .
        public var colorssrc: String?
    
        public init(colors: [Double]? = nil, line: Line? = nil, colorssrc: String? = nil) {
            self.colors = colors
            self.line = line
            self.colorssrc = colorssrc
        }
    }
    public var marker: Marker?

    /// Sets text elements associated with each sector. If trace `textinfo` contains a *text* flag, these elements will be seen on the chart. If trace `hoverinfo` contains a *text* flag and *hovertext* is not set, these elements will be seen in the hover labels.
    public var text: [Double]?

    /// Sets hover text elements associated with each sector. If a single string, the same string appears for all data points. If an array of string, the items are mapped in order of this trace's sectors. To be seen, trace `hoverinfo` must contain a *text* flag.
    public var hovertext: String?

    /// If there are multiple pie charts that should be sized according to their totals, link them by providing a non-empty group id here shared by every trace in the same group.
    public var scalegroup: String?

    /// Determines which trace information appear on the graph.
    public struct Textinfo: OptionSet, Encodable {
        public let rawValue: Int
    
        public static let label = Textinfo(rawValue: 1 << 0)
        public static let text = Textinfo(rawValue: 1 << 1)
        public static let value = Textinfo(rawValue: 1 << 2)
        public static let percent = Textinfo(rawValue: 1 << 3)
    
        public init(rawValue: Int) { self.rawValue = rawValue }
    
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["label"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["text"] }
            if (self.rawValue & 1 << 2) != 0 { options += ["value"] }
            if (self.rawValue & 1 << 3) != 0 { options += ["percent"] }
            var container = encoder.singleValueContainer()
            try container.encode(options.joined(separator: "+"))
        }
    }
    /// Determines which trace information appear on the graph.
    public var textinfo: Textinfo?

    /// Determines which trace information appear on hover. If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set, click and hover events are still fired.
    public struct Hoverinfo: OptionSet, Encodable {
        public let rawValue: Int
    
        public static let label = Hoverinfo(rawValue: 1 << 0)
        public static let text = Hoverinfo(rawValue: 1 << 1)
        public static let value = Hoverinfo(rawValue: 1 << 2)
        public static let percent = Hoverinfo(rawValue: 1 << 3)
        public static let name = Hoverinfo(rawValue: 1 << 4)
    
        public init(rawValue: Int) { self.rawValue = rawValue }
    
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["label"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["text"] }
            if (self.rawValue & 1 << 2) != 0 { options += ["value"] }
            if (self.rawValue & 1 << 3) != 0 { options += ["percent"] }
            if (self.rawValue & 1 << 4) != 0 { options += ["name"] }
            var container = encoder.singleValueContainer()
            try container.encode(options.joined(separator: "+"))
        }
    }
    /// Determines which trace information appear on hover. If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set, click and hover events are still fired.
    public var hoverinfo: Hoverinfo?

    /// Template string used for rendering the information that appear on hover box. Note that this will override `hoverinfo`. Variables are inserted using %{variable}, for example "y: %{y}". Numbers are formatted using d3-format's syntax %{variable:d3-format}, for example "Price: %{y:$.2f}". https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format for details on the formatting syntax. Dates are formatted using d3-time-format's syntax %{variable|d3-time-format}, for example "Day: %{2019-01-01|%A}". https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format for details on the date formatting syntax. The variables available in `hovertemplate` are the ones emitted as event data described at this link https://plot.ly/javascript/plotlyjs-events/#event-data. Additionally, every attributes that can be specified per-point (the ones that are `arrayOk: true`) are available. variables `label`, `color`, `value`, `percent` and `text`. Anything contained in tag `<extra>` is displayed in the secondary box, for example "<extra>{fullData.name}</extra>". To hide the secondary box completely, use an empty tag `<extra></extra>`.
    public var hovertemplate: String?

    /// Template string used for rendering the information text that appear on points. Note that this will override `textinfo`. Variables are inserted using %{variable}, for example "y: %{y}". Numbers are formatted using d3-format's syntax %{variable:d3-format}, for example "Price: %{y:$.2f}". https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format for details on the formatting syntax. Dates are formatted using d3-time-format's syntax %{variable|d3-time-format}, for example "Day: %{2019-01-01|%A}". https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format for details on the date formatting syntax. Every attributes that can be specified per-point (the ones that are `arrayOk: true`) are available. variables `label`, `color`, `value`, `percent` and `text`.
    public var texttemplate: String?

    /// Specifies the location of the `textinfo`.
    public enum Textposition: String, Encodable {
        case inside
        case outside
        case auto
        case none
    }
    /// Specifies the location of the `textinfo`.
    public var textposition: Textposition?

    /// Sets the font used for `textinfo`.
    public struct Textfont: Encodable {
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
    /// Sets the font used for `textinfo`.
    public var textfont: Textfont?

    /// Sets the font used for `textinfo` lying inside the sector.
    public struct Insidetextfont: Encodable {
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
    /// Sets the font used for `textinfo` lying inside the sector.
    public var insidetextfont: Insidetextfont?

    /// Sets the font used for `textinfo` lying outside the sector.
    public struct Outsidetextfont: Encodable {
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
    /// Sets the font used for `textinfo` lying outside the sector.
    public var outsidetextfont: Outsidetextfont?

    /// Determines whether outside text labels can push the margins.
    public var automargin: Bool?

    public struct Title: Encodable {
        /// Sets the title of the chart. If it is empty, no title is displayed. Note that before the existence of `title.text`, the title's contents used to be defined as the `title` attribute itself. This behavior has been deprecated.
        public var text: String?
    
        /// Sets the font used for `title`. Note that the title's font used to be set by the now deprecated `titlefont` attribute.
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
        /// Sets the font used for `title`. Note that the title's font used to be set by the now deprecated `titlefont` attribute.
        public var font: Font?
    
        /// Specifies the location of the `title`. Note that the title's position used to be set by the now deprecated `titleposition` attribute.
        public enum Position: String, Encodable {
            case topleft
            case topcenter
            case topright
            case middlecenter
            case bottomleft
            case bottomcenter
            case bottomright
        }
        /// Specifies the location of the `title`. Note that the title's position used to be set by the now deprecated `titleposition` attribute.
        public var position: Position?
    
        public init(text: String? = nil, font: Font? = nil, position: Position? = nil) {
            self.text = text
            self.font = font
            self.position = position
        }
    }
    public var title: Title?

    public struct Domain: Encodable {
        /// Sets the horizontal domain of this pie trace (in plot fraction).
        public var x: InfoArray?
    
        /// Sets the vertical domain of this pie trace (in plot fraction).
        public var y: InfoArray?
    
        /// If there is a layout grid, use the domain for this row in the grid for this pie trace .
        public var row: Int?
    
        /// If there is a layout grid, use the domain for this column in the grid for this pie trace .
        public var column: Int?
    
        public init(x: InfoArray? = nil, y: InfoArray? = nil, row: Int? = nil, column: Int? = nil) {
            self.x = x
            self.y = y
            self.row = row
            self.column = column
        }
    }
    public var domain: Domain?

    /// Sets the fraction of the radius to cut out of the pie. Use this to make a donut chart.
    public var hole: Double?

    /// Determines whether or not the sectors are reordered from largest to smallest.
    public var sort: Bool?

    /// Specifies the direction at which succeeding sectors follow one another.
    public enum Direction: String, Encodable {
        case clockwise
        case counterclockwise
    }
    /// Specifies the direction at which succeeding sectors follow one another.
    public var direction: Direction?

    /// Instead of the first slice starting at 12 o'clock, rotate to some other angle.
    public var rotation: Double?

    /// Sets the fraction of larger radius to pull the sectors out from the center. This can be a constant to pull all slices apart from each other equally or an array to highlight one or more slices.
    public var pull: Double?

    public struct _Deprecated: Encodable {
        /// Deprecated in favor of `title.text`. Note that value of `title` is no longer a simple *string* but a set of sub-attributes.
        public var title: String?
    
        /// Deprecated in favor of `title.font`.
        public struct Titlefont: Encodable {
            /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
            public var family: String?
        
            public var size: Double?
        
            public var color: Color?
        
            public init(family: String? = nil, size: Double? = nil, color: Color? = nil) {
                self.family = family
                self.size = size
                self.color = color
            }
        }
        /// Deprecated in favor of `title.font`.
        public var titlefont: Titlefont?
    
        /// Deprecated in favor of `title.position`.
        public enum Titleposition: String, Encodable {
            case topleft
            case topcenter
            case topright
            case middlecenter
            case bottomleft
            case bottomcenter
            case bottomright
        }
        /// Deprecated in favor of `title.position`.
        public var titleposition: Titleposition?
    
        public init(title: String? = nil, titlefont: Titlefont? = nil, titleposition: Titleposition? = nil) {
            self.title = title
            self.titlefont = titlefont
            self.titleposition = titleposition
        }
    }
    public var _deprecated: _Deprecated?

    /// Sets the source reference on plot.ly for  ids .
    public var idssrc: String?

    /// Sets the source reference on plot.ly for  customdata .
    public var customdatasrc: String?

    /// Sets the source reference on plot.ly for  meta .
    public var metasrc: String?

    /// Sets the source reference on plot.ly for  labels .
    public var labelssrc: String?

    /// Sets the source reference on plot.ly for  values .
    public var valuessrc: String?

    /// Sets the source reference on plot.ly for  text .
    public var textsrc: String?

    /// Sets the source reference on plot.ly for  hovertext .
    public var hovertextsrc: String?

    /// Sets the source reference on plot.ly for  hoverinfo .
    public var hoverinfosrc: String?

    /// Sets the source reference on plot.ly for  hovertemplate .
    public var hovertemplatesrc: String?

    /// Sets the source reference on plot.ly for  texttemplate .
    public var texttemplatesrc: String?

    /// Sets the source reference on plot.ly for  textposition .
    public var textpositionsrc: String?

    /// Sets the source reference on plot.ly for  pull .
    public var pullsrc: String?

    public init(visible: Visible? = nil, showlegend: Bool? = nil, legendgroup: String? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customdata: [Double]? = nil, meta: Anything? = nil, hoverlabel: Hoverlabel? = nil, stream: Stream? = nil, transforms: Transforms? = nil, uirevision: Anything? = nil, labels: [Double]? = nil, label0: Double? = nil, dlabel: Double? = nil, values: [Double]? = nil, marker: Marker? = nil, text: [Double]? = nil, hovertext: String? = nil, scalegroup: String? = nil, textinfo: Textinfo? = nil, hoverinfo: Hoverinfo? = nil, hovertemplate: String? = nil, texttemplate: String? = nil, textposition: Textposition? = nil, textfont: Textfont? = nil, insidetextfont: Insidetextfont? = nil, outsidetextfont: Outsidetextfont? = nil, automargin: Bool? = nil, title: Title? = nil, domain: Domain? = nil, hole: Double? = nil, sort: Bool? = nil, direction: Direction? = nil, rotation: Double? = nil, pull: Double? = nil, _deprecated: _Deprecated? = nil, idssrc: String? = nil, customdatasrc: String? = nil, metasrc: String? = nil, labelssrc: String? = nil, valuessrc: String? = nil, textsrc: String? = nil, hovertextsrc: String? = nil, hoverinfosrc: String? = nil, hovertemplatesrc: String? = nil, texttemplatesrc: String? = nil, textpositionsrc: String? = nil, pullsrc: String? = nil) {
        self.visible = visible
        self.showlegend = showlegend
        self.legendgroup = legendgroup
        self.opacity = opacity
        self.name = name
        self.uid = uid
        self.ids = ids
        self.customdata = customdata
        self.meta = meta
        self.hoverlabel = hoverlabel
        self.stream = stream
        self.transforms = transforms
        self.uirevision = uirevision
        self.labels = labels
        self.label0 = label0
        self.dlabel = dlabel
        self.values = values
        self.marker = marker
        self.text = text
        self.hovertext = hovertext
        self.scalegroup = scalegroup
        self.textinfo = textinfo
        self.hoverinfo = hoverinfo
        self.hovertemplate = hovertemplate
        self.texttemplate = texttemplate
        self.textposition = textposition
        self.textfont = textfont
        self.insidetextfont = insidetextfont
        self.outsidetextfont = outsidetextfont
        self.automargin = automargin
        self.title = title
        self.domain = domain
        self.hole = hole
        self.sort = sort
        self.direction = direction
        self.rotation = rotation
        self.pull = pull
        self._deprecated = _deprecated
        self.idssrc = idssrc
        self.customdatasrc = customdatasrc
        self.metasrc = metasrc
        self.labelssrc = labelssrc
        self.valuessrc = valuessrc
        self.textsrc = textsrc
        self.hovertextsrc = hovertextsrc
        self.hoverinfosrc = hoverinfosrc
        self.hovertemplatesrc = hovertemplatesrc
        self.texttemplatesrc = texttemplatesrc
        self.textpositionsrc = textpositionsrc
        self.pullsrc = pullsrc
    }
}