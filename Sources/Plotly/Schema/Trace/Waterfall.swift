/// Draws waterfall trace which is useful graph to displays the contribution of various elements (either positive or negative) in a bar chart. The data visualized by the span of the bars is set in `y` if `orientation` is set th *v* (the default) and the labels are set in `x`. By setting `orientation` to *h*, the roles are interchanged.
public struct Waterfall: Trace {
    public let type: String = "waterfall"

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

    /// An array containing types of values. By default the values are considered as 'relative'. However; it is possible to use 'total' to compute the sums. Also 'absolute' could be applied to reset the computed total or to declare an initial value where needed.
    public var measure: [Double]?

    /// Sets where the bar base is drawn (in position axis units).
    public var base: Double?

    /// Sets the x coordinates.
    public var x: [Double]?

    /// Alternate to `x`. Builds a linear space of x coordinates. Use with `dx` where `x0` is the starting coordinate and `dx` the step.
    public var x0: Anything?

    /// Sets the x coordinate step. See `x0` for more info.
    public var dx: Double?

    /// Sets the y coordinates.
    public var y: [Double]?

    /// Alternate to `y`. Builds a linear space of y coordinates. Use with `dy` where `y0` is the starting coordinate and `dy` the step.
    public var y0: Anything?

    /// Sets the y coordinate step. See `y0` for more info.
    public var dy: Double?

    /// Sets hover text elements associated with each (x,y) pair. If a single string, the same string appears over all the data points. If an array of string, the items are mapped in order to the this trace's (x,y) coordinates. To be seen, trace `hoverinfo` must contain a *text* flag.
    public var hovertext: String?

    /// Template string used for rendering the information that appear on hover box. Note that this will override `hoverinfo`. Variables are inserted using %{variable}, for example "y: %{y}". Numbers are formatted using d3-format's syntax %{variable:d3-format}, for example "Price: %{y:$.2f}". https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format for details on the formatting syntax. Dates are formatted using d3-time-format's syntax %{variable|d3-time-format}, for example "Day: %{2019-01-01|%A}". https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format for details on the date formatting syntax. The variables available in `hovertemplate` are the ones emitted as event data described at this link https://plot.ly/javascript/plotlyjs-events/#event-data. Additionally, every attributes that can be specified per-point (the ones that are `arrayOk: true`) are available. variables `initial`, `delta` and `final`. Anything contained in tag `<extra>` is displayed in the secondary box, for example "<extra>{fullData.name}</extra>". To hide the secondary box completely, use an empty tag `<extra></extra>`.
    public var hovertemplate: String?

    /// Determines which trace information appear on hover. If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set, click and hover events are still fired.
    public struct Hoverinfo: OptionSet, Encodable {
        public let rawValue: Int
    
        public static let name = Hoverinfo(rawValue: 1 << 0)
        public static let x = Hoverinfo(rawValue: 1 << 1)
        public static let y = Hoverinfo(rawValue: 1 << 2)
        public static let text = Hoverinfo(rawValue: 1 << 3)
        public static let initial = Hoverinfo(rawValue: 1 << 4)
        public static let delta = Hoverinfo(rawValue: 1 << 5)
        public static let final = Hoverinfo(rawValue: 1 << 6)
    
        public init(rawValue: Int) { self.rawValue = rawValue }
    
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["name"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["x"] }
            if (self.rawValue & 1 << 2) != 0 { options += ["y"] }
            if (self.rawValue & 1 << 3) != 0 { options += ["text"] }
            if (self.rawValue & 1 << 4) != 0 { options += ["initial"] }
            if (self.rawValue & 1 << 5) != 0 { options += ["delta"] }
            if (self.rawValue & 1 << 6) != 0 { options += ["final"] }
            var container = encoder.singleValueContainer()
            try container.encode(options.joined(separator: "+"))
        }
    }
    /// Determines which trace information appear on hover. If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set, click and hover events are still fired.
    public var hoverinfo: Hoverinfo?

    /// Determines which trace information appear on the graph. In the case of having multiple waterfalls, totals are computed separately (per trace).
    public struct Textinfo: OptionSet, Encodable {
        public let rawValue: Int
    
        public static let label = Textinfo(rawValue: 1 << 0)
        public static let text = Textinfo(rawValue: 1 << 1)
        public static let initial = Textinfo(rawValue: 1 << 2)
        public static let delta = Textinfo(rawValue: 1 << 3)
        public static let final = Textinfo(rawValue: 1 << 4)
    
        public init(rawValue: Int) { self.rawValue = rawValue }
    
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["label"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["text"] }
            if (self.rawValue & 1 << 2) != 0 { options += ["initial"] }
            if (self.rawValue & 1 << 3) != 0 { options += ["delta"] }
            if (self.rawValue & 1 << 4) != 0 { options += ["final"] }
            var container = encoder.singleValueContainer()
            try container.encode(options.joined(separator: "+"))
        }
    }
    /// Determines which trace information appear on the graph. In the case of having multiple waterfalls, totals are computed separately (per trace).
    public var textinfo: Textinfo?

    /// Template string used for rendering the information text that appear on points. Note that this will override `textinfo`. Variables are inserted using %{variable}, for example "y: %{y}". Numbers are formatted using d3-format's syntax %{variable:d3-format}, for example "Price: %{y:$.2f}". https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format for details on the formatting syntax. Dates are formatted using d3-time-format's syntax %{variable|d3-time-format}, for example "Day: %{2019-01-01|%A}". https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format for details on the date formatting syntax. Every attributes that can be specified per-point (the ones that are `arrayOk: true`) are available. variables `initial`, `delta`, `final` and `label`.
    public var texttemplate: String?

    /// Sets text elements associated with each (x,y) pair. If a single string, the same string appears over all the data points. If an array of string, the items are mapped in order to the this trace's (x,y) coordinates. If trace `hoverinfo` contains a *text* flag and *hovertext* is not set, these elements will be seen in the hover labels.
    public var text: String?

    /// Specifies the location of the `text`. *inside* positions `text` inside, next to the bar end (rotated and scaled if needed). *outside* positions `text` outside, next to the bar end (scaled if needed), unless there is another bar stacked on this one, then the text gets pushed inside. *auto* tries to position `text` inside the bar, but if the bar is too small and no bar is stacked on this one the text is moved outside.
    public enum Textposition: String, Encodable {
        case inside
        case outside
        case auto
        case none
    }
    /// Specifies the location of the `text`. *inside* positions `text` inside, next to the bar end (rotated and scaled if needed). *outside* positions `text` outside, next to the bar end (scaled if needed), unless there is another bar stacked on this one, then the text gets pushed inside. *auto* tries to position `text` inside the bar, but if the bar is too small and no bar is stacked on this one the text is moved outside.
    public var textposition: Textposition?

    /// Determines if texts are kept at center or start/end points in `textposition` *inside* mode.
    public enum Insidetextanchor: String, Encodable {
        case end
        case middle
        case start
    }
    /// Determines if texts are kept at center or start/end points in `textposition` *inside* mode.
    public var insidetextanchor: Insidetextanchor?

    /// Sets the angle of the tick labels with respect to the bar. For example, a `tickangle` of -90 draws the tick labels vertically. With *auto* the texts may automatically be rotated to fit with the maximum size in bars.
    public var textangle: Angle?

    /// Sets the font used for `text`.
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
    /// Sets the font used for `text`.
    public var textfont: Textfont?

    /// Sets the font used for `text` lying inside the bar.
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
    /// Sets the font used for `text` lying inside the bar.
    public var insidetextfont: Insidetextfont?

    /// Sets the font used for `text` lying outside the bar.
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
    /// Sets the font used for `text` lying outside the bar.
    public var outsidetextfont: Outsidetextfont?

    /// Constrain the size of text inside or outside a bar to be no larger than the bar itself.
    public enum Constraintext: String, Encodable {
        case inside
        case outside
        case both
        case none
    }
    /// Constrain the size of text inside or outside a bar to be no larger than the bar itself.
    public var constraintext: Constraintext?

    /// Determines whether the text nodes are clipped about the subplot axes. To show the text nodes above axis lines and tick labels, make sure to set `xaxis.layer` and `yaxis.layer` to *below traces*.
    public var cliponaxis: Bool?

    /// Sets the orientation of the bars. With *v* (*h*), the value of the each bar spans along the vertical (horizontal).
    public enum Orientation: String, Encodable {
        case v
        case h
    }
    /// Sets the orientation of the bars. With *v* (*h*), the value of the each bar spans along the vertical (horizontal).
    public var orientation: Orientation?

    /// Shifts the position where the bar is drawn (in position axis units). In *group* barmode, traces that set *offset* will be excluded and drawn in *overlay* mode instead.
    public var offset: Double?

    /// Sets the bar width (in position axis units).
    public var width: Double?

    public struct Increasing: Encodable {
        public struct Marker: Encodable {
            /// Sets the marker color of all increasing values.
            public var color: Color?
        
            public struct Line: Encodable {
                /// Sets the line color of all increasing values.
                public var color: Color?
            
                /// Sets the line width of all increasing values.
                public var width: Double?
            
                public init(color: Color? = nil, width: Double? = nil) {
                    self.color = color
                    self.width = width
                }
            }
            public var line: Line?
        
            public init(color: Color? = nil, line: Line? = nil) {
                self.color = color
                self.line = line
            }
        }
        public var marker: Marker?
    
        public init(marker: Marker? = nil) {
            self.marker = marker
        }
    }
    public var increasing: Increasing?

    public struct Decreasing: Encodable {
        public struct Marker: Encodable {
            /// Sets the marker color of all decreasing values.
            public var color: Color?
        
            public struct Line: Encodable {
                /// Sets the line color of all decreasing values.
                public var color: Color?
            
                /// Sets the line width of all decreasing values.
                public var width: Double?
            
                public init(color: Color? = nil, width: Double? = nil) {
                    self.color = color
                    self.width = width
                }
            }
            public var line: Line?
        
            public init(color: Color? = nil, line: Line? = nil) {
                self.color = color
                self.line = line
            }
        }
        public var marker: Marker?
    
        public init(marker: Marker? = nil) {
            self.marker = marker
        }
    }
    public var decreasing: Decreasing?

    public struct Totals: Encodable {
        public struct Marker: Encodable {
            /// Sets the marker color of all intermediate sums and total values.
            public var color: Color?
        
            public struct Line: Encodable {
                /// Sets the line color of all intermediate sums and total values.
                public var color: Color?
            
                /// Sets the line width of all intermediate sums and total values.
                public var width: Double?
            
                public init(color: Color? = nil, width: Double? = nil) {
                    self.color = color
                    self.width = width
                }
            }
            public var line: Line?
        
            public init(color: Color? = nil, line: Line? = nil) {
                self.color = color
                self.line = line
            }
        }
        public var marker: Marker?
    
        public init(marker: Marker? = nil) {
            self.marker = marker
        }
    }
    public var totals: Totals?

    public struct Connector: Encodable {
        public struct Line: Encodable {
            /// Sets the line color.
            public var color: Color?
        
            /// Sets the line width (in px).
            public var width: Double?
        
            /// Sets the dash style of lines. Set to a dash type string (*solid*, *dot*, *dash*, *longdash*, *dashdot*, or *longdashdot*) or a dash length list in px (eg *5px,10px,2px,2px*).
            public var dash: String?
        
            public init(color: Color? = nil, width: Double? = nil, dash: String? = nil) {
                self.color = color
                self.width = width
                self.dash = dash
            }
        }
        public var line: Line?
    
        /// Sets the shape of connector lines.
        public enum Mode: String, Encodable {
            case spanning
            case between
        }
        /// Sets the shape of connector lines.
        public var mode: Mode?
    
        /// Determines if connector lines are drawn. 
        public var visible: Bool?
    
        public init(line: Line? = nil, mode: Mode? = nil, visible: Bool? = nil) {
            self.line = line
            self.mode = mode
            self.visible = visible
        }
    }
    public var connector: Connector?

    /// Set several traces linked to the same position axis or matching axes to the same offsetgroup where bars of the same position coordinate will line up.
    public var offsetgroup: String?

    /// Set several traces linked to the same position axis or matching axes to the same alignmentgroup. This controls whether bars compute their positional range dependently or independently.
    public var alignmentgroup: String?

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

    /// Sets the source reference on plot.ly for  measure .
    public var measuresrc: String?

    /// Sets the source reference on plot.ly for  x .
    public var xsrc: String?

    /// Sets the source reference on plot.ly for  y .
    public var ysrc: String?

    /// Sets the source reference on plot.ly for  hovertext .
    public var hovertextsrc: String?

    /// Sets the source reference on plot.ly for  hovertemplate .
    public var hovertemplatesrc: String?

    /// Sets the source reference on plot.ly for  hoverinfo .
    public var hoverinfosrc: String?

    /// Sets the source reference on plot.ly for  texttemplate .
    public var texttemplatesrc: String?

    /// Sets the source reference on plot.ly for  text .
    public var textsrc: String?

    /// Sets the source reference on plot.ly for  textposition .
    public var textpositionsrc: String?

    /// Sets the source reference on plot.ly for  offset .
    public var offsetsrc: String?

    /// Sets the source reference on plot.ly for  width .
    public var widthsrc: String?

    public init(visible: Visible? = nil, showlegend: Bool? = nil, legendgroup: String? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customdata: [Double]? = nil, meta: Anything? = nil, selectedpoints: Anything? = nil, hoverlabel: Hoverlabel? = nil, stream: Stream? = nil, transforms: Transforms? = nil, uirevision: Anything? = nil, measure: [Double]? = nil, base: Double? = nil, x: [Double]? = nil, x0: Anything? = nil, dx: Double? = nil, y: [Double]? = nil, y0: Anything? = nil, dy: Double? = nil, hovertext: String? = nil, hovertemplate: String? = nil, hoverinfo: Hoverinfo? = nil, textinfo: Textinfo? = nil, texttemplate: String? = nil, text: String? = nil, textposition: Textposition? = nil, insidetextanchor: Insidetextanchor? = nil, textangle: Angle? = nil, textfont: Textfont? = nil, insidetextfont: Insidetextfont? = nil, outsidetextfont: Outsidetextfont? = nil, constraintext: Constraintext? = nil, cliponaxis: Bool? = nil, orientation: Orientation? = nil, offset: Double? = nil, width: Double? = nil, increasing: Increasing? = nil, decreasing: Decreasing? = nil, totals: Totals? = nil, connector: Connector? = nil, offsetgroup: String? = nil, alignmentgroup: String? = nil, xaxis: SubplotID? = nil, yaxis: SubplotID? = nil, idssrc: String? = nil, customdatasrc: String? = nil, metasrc: String? = nil, measuresrc: String? = nil, xsrc: String? = nil, ysrc: String? = nil, hovertextsrc: String? = nil, hovertemplatesrc: String? = nil, hoverinfosrc: String? = nil, texttemplatesrc: String? = nil, textsrc: String? = nil, textpositionsrc: String? = nil, offsetsrc: String? = nil, widthsrc: String? = nil) {
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
        self.hoverlabel = hoverlabel
        self.stream = stream
        self.transforms = transforms
        self.uirevision = uirevision
        self.measure = measure
        self.base = base
        self.x = x
        self.x0 = x0
        self.dx = dx
        self.y = y
        self.y0 = y0
        self.dy = dy
        self.hovertext = hovertext
        self.hovertemplate = hovertemplate
        self.hoverinfo = hoverinfo
        self.textinfo = textinfo
        self.texttemplate = texttemplate
        self.text = text
        self.textposition = textposition
        self.insidetextanchor = insidetextanchor
        self.textangle = textangle
        self.textfont = textfont
        self.insidetextfont = insidetextfont
        self.outsidetextfont = outsidetextfont
        self.constraintext = constraintext
        self.cliponaxis = cliponaxis
        self.orientation = orientation
        self.offset = offset
        self.width = width
        self.increasing = increasing
        self.decreasing = decreasing
        self.totals = totals
        self.connector = connector
        self.offsetgroup = offsetgroup
        self.alignmentgroup = alignmentgroup
        self.xaxis = xaxis
        self.yaxis = yaxis
        self.idssrc = idssrc
        self.customdatasrc = customdatasrc
        self.metasrc = metasrc
        self.measuresrc = measuresrc
        self.xsrc = xsrc
        self.ysrc = ysrc
        self.hovertextsrc = hovertextsrc
        self.hovertemplatesrc = hovertemplatesrc
        self.hoverinfosrc = hoverinfosrc
        self.texttemplatesrc = texttemplatesrc
        self.textsrc = textsrc
        self.textpositionsrc = textpositionsrc
        self.offsetsrc = offsetsrc
        self.widthsrc = widthsrc
    }
}