/// In vertical (horizontal) violin plots, statistics are computed using `y` (`x`) values. By supplying an `x` (`y`) array, one violin per distinct x (y) value is drawn If no `x` (`y`) {array} is provided, a single violin is drawn. That violin position is then positioned with with `name` or with `x0` (`y0`) if provided.
public struct Violin: Trace {
    public let type: String = "violin"

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

    /// Sets the y sample data or coordinates. See overview for more info.
    public var y: [Double]?

    /// Sets the x sample data or coordinates. See overview for more info.
    public var x: [Double]?

    /// Sets the x coordinate of the box. See overview for more info.
    public var x0: Anything?

    /// Sets the y coordinate of the box. See overview for more info.
    public var y0: Anything?

    /// Sets the trace name. The trace name appear as the legend item and on hover. For violin traces, the name will also be used for the position coordinate, if `x` and `x0` (`y` and `y0` if horizontal) are missing and the position axis is categorical. Note that the trace name is also used as a default value for attribute `scalegroup` (please see its description for details).
    public var name: String?

    /// Sets the orientation of the violin(s). If *v* (*h*), the distribution is visualized along the vertical (horizontal).
    public enum Orientation: String, Encodable {
        case v
        case h
    }
    /// Sets the orientation of the violin(s). If *v* (*h*), the distribution is visualized along the vertical (horizontal).
    public var orientation: Orientation?

    /// Sets the bandwidth used to compute the kernel density estimate. By default, the bandwidth is determined by Silverman's rule of thumb.
    public var bandwidth: Double?

    /// If there are multiple violins that should be sized according to to some metric (see `scalemode`), link them by providing a non-empty group id here shared by every trace in the same group. If a violin's `width` is undefined, `scalegroup` will default to the trace's name. In this case, violins with the same names will be linked together
    public var scalegroup: String?

    /// Sets the metric by which the width of each violin is determined.*width* means each violin has the same (max) width*count* means the violins are scaled by the number of sample points makingup each violin.
    public enum Scalemode: String, Encodable {
        case width
        case count
    }
    /// Sets the metric by which the width of each violin is determined.*width* means each violin has the same (max) width*count* means the violins are scaled by the number of sample points makingup each violin.
    public var scalemode: Scalemode?

    /// Sets the method by which the span in data space where the density function will be computed. *soft* means the span goes from the sample's minimum value minus two bandwidths to the sample's maximum value plus two bandwidths. *hard* means the span goes from the sample's minimum to its maximum value. For custom span settings, use mode *manual* and fill in the `span` attribute.
    public enum Spanmode: String, Encodable {
        case soft
        case hard
        case manual
    }
    /// Sets the method by which the span in data space where the density function will be computed. *soft* means the span goes from the sample's minimum value minus two bandwidths to the sample's maximum value plus two bandwidths. *hard* means the span goes from the sample's minimum to its maximum value. For custom span settings, use mode *manual* and fill in the `span` attribute.
    public var spanmode: Spanmode?

    /// Sets the span in data space for which the density function will be computed. Has an effect only when `spanmode` is set to *manual*.
    public var span: InfoArray?

    public struct Line: Encodable {
        /// Sets the color of line bounding the violin(s).
        public var color: Color?
    
        /// Sets the width (in px) of line bounding the violin(s).
        public var width: Double?
    
        public init(color: Color? = nil, width: Double? = nil) {
            self.color = color
            self.width = width
        }
    }
    public var line: Line?

    /// Sets the fill color. Defaults to a half-transparent variant of the line color, marker color, or marker line color, whichever is available.
    public var fillcolor: Color?

    /// If *outliers*, only the sample points lying outside the whiskers are shown If *suspectedoutliers*, the outlier points are shown and points either less than 4*Q1-3*Q3 or greater than 4*Q3-3*Q1 are highlighted (see `outliercolor`) If *all*, all sample points are shown If *false*, only the violins are shown with no sample points
    public enum Points: String, Encodable {
        case all
        case outliers
        case suspectedoutliers
        case no
    }
    /// If *outliers*, only the sample points lying outside the whiskers are shown If *suspectedoutliers*, the outlier points are shown and points either less than 4*Q1-3*Q3 or greater than 4*Q3-3*Q1 are highlighted (see `outliercolor`) If *all*, all sample points are shown If *false*, only the violins are shown with no sample points
    public var points: Points?

    /// Sets the amount of jitter in the sample points drawn. If *0*, the sample points align along the distribution axis. If *1*, the sample points are drawn in a random jitter of width equal to the width of the violins.
    public var jitter: Double?

    /// Sets the position of the sample points in relation to the violins. If *0*, the sample points are places over the center of the violins. Positive (negative) values correspond to positions to the right (left) for vertical violins and above (below) for horizontal violins.
    public var pointpos: Double?

    /// Sets the width of the violin in data coordinates. If *0* (default value) the width is automatically selected based on the positions of other violin traces in the same subplot.
    public var width: Double?

    public struct Marker: Encodable {
        /// Sets the color of the outlier sample points.
        public var outliercolor: Color?
    
        /// Sets the marker symbol type. Adding 100 is equivalent to appending *-open* to a symbol name. Adding 200 is equivalent to appending *-dot* to a symbol name. Adding 300 is equivalent to appending *-open-dot* or *dot-open* to a symbol name.
        public enum Symbol: Int, Encodable {
            case circle = 0
            case circleopen = 100
            case circledot = 200
            case circleopendot = 300
            case square = 1
            case squareopen = 101
            case squaredot = 201
            case squareopendot = 301
            case diamond = 2
            case diamondopen = 102
            case diamonddot = 202
            case diamondopendot = 302
            case cross = 3
            case crossopen = 103
            case crossdot = 203
            case crossopendot = 303
            case x = 4
            case xopen = 104
            case xdot = 204
            case xopendot = 304
            case triangleup = 5
            case triangleupopen = 105
            case triangleupdot = 205
            case triangleupopendot = 305
            case triangledown = 6
            case triangledownopen = 106
            case triangledowndot = 206
            case triangledownopendot = 306
            case triangleleft = 7
            case triangleleftopen = 107
            case triangleleftdot = 207
            case triangleleftopendot = 307
            case triangleright = 8
            case trianglerightopen = 108
            case trianglerightdot = 208
            case trianglerightopendot = 308
            case trianglene = 9
            case triangleneopen = 109
            case trianglenedot = 209
            case triangleneopendot = 309
            case trianglese = 10
            case triangleseopen = 110
            case trianglesedot = 210
            case triangleseopendot = 310
            case trianglesw = 11
            case triangleswopen = 111
            case triangleswdot = 211
            case triangleswopendot = 311
            case trianglenw = 12
            case trianglenwopen = 112
            case trianglenwdot = 212
            case trianglenwopendot = 312
            case pentagon = 13
            case pentagonopen = 113
            case pentagondot = 213
            case pentagonopendot = 313
            case hexagon = 14
            case hexagonopen = 114
            case hexagondot = 214
            case hexagonopendot = 314
            case hexagon2 = 15
            case hexagon2open = 115
            case hexagon2dot = 215
            case hexagon2opendot = 315
            case octagon = 16
            case octagonopen = 116
            case octagondot = 216
            case octagonopendot = 316
            case star = 17
            case staropen = 117
            case stardot = 217
            case staropendot = 317
            case hexagram = 18
            case hexagramopen = 118
            case hexagramdot = 218
            case hexagramopendot = 318
            case startriangleup = 19
            case startriangleupopen = 119
            case startriangleupdot = 219
            case startriangleupopendot = 319
            case startriangledown = 20
            case startriangledownopen = 120
            case startriangledowndot = 220
            case startriangledownopendot = 320
            case starsquare = 21
            case starsquareopen = 121
            case starsquaredot = 221
            case starsquareopendot = 321
            case stardiamond = 22
            case stardiamondopen = 122
            case stardiamonddot = 222
            case stardiamondopendot = 322
            case diamondtall = 23
            case diamondtallopen = 123
            case diamondtalldot = 223
            case diamondtallopendot = 323
            case diamondwide = 24
            case diamondwideopen = 124
            case diamondwidedot = 224
            case diamondwideopendot = 324
            case hourglass = 25
            case hourglassopen = 125
            case bowtie = 26
            case bowtieopen = 126
            case circlecross = 27
            case circlecrossopen = 127
            case circlex = 28
            case circlexopen = 128
            case squarecross = 29
            case squarecrossopen = 129
            case squarex = 30
            case squarexopen = 130
            case diamondcross = 31
            case diamondcrossopen = 131
            case diamondx = 32
            case diamondxopen = 132
            case crossthin = 33
            case crossthinopen = 133
            case xthin = 34
            case xthinopen = 134
            case asterisk = 35
            case asteriskopen = 135
            case hash = 36
            case hashopen = 136
            case hashdot = 236
            case hashopendot = 336
            case yup = 37
            case yupopen = 137
            case ydown = 38
            case ydownopen = 138
            case yleft = 39
            case yleftopen = 139
            case yright = 40
            case yrightopen = 140
            case lineew = 41
            case lineewopen = 141
            case linens = 42
            case linensopen = 142
            case linene = 43
            case lineneopen = 143
            case linenw = 44
            case linenwopen = 144
        }
        /// Sets the marker symbol type. Adding 100 is equivalent to appending *-open* to a symbol name. Adding 200 is equivalent to appending *-dot* to a symbol name. Adding 300 is equivalent to appending *-open-dot* or *dot-open* to a symbol name.
        public var symbol: Symbol?
    
        /// Sets the marker opacity.
        public var opacity: Double?
    
        /// Sets the marker size (in px).
        public var size: Double?
    
        /// Sets themarkercolor. It accepts either a specific color or an array of numbers that are mapped to the colorscale relative to the max and min values of the array or relative to `marker.cmin` and `marker.cmax` if set.
        public var color: Color?
    
        public struct Line: Encodable {
            /// Sets themarker.linecolor. It accepts either a specific color or an array of numbers that are mapped to the colorscale relative to the max and min values of the array or relative to `marker.line.cmin` and `marker.line.cmax` if set.
            public var color: Color?
        
            /// Sets the width (in px) of the lines bounding the marker points.
            public var width: Double?
        
            /// Sets the border line color of the outlier sample points. Defaults to marker.color
            public var outliercolor: Color?
        
            /// Sets the border line width (in px) of the outlier sample points.
            public var outlierwidth: Double?
        
            public init(color: Color? = nil, width: Double? = nil, outliercolor: Color? = nil, outlierwidth: Double? = nil) {
                self.color = color
                self.width = width
                self.outliercolor = outliercolor
                self.outlierwidth = outlierwidth
            }
        }
        public var line: Line?
    
        public init(outliercolor: Color? = nil, symbol: Symbol? = nil, opacity: Double? = nil, size: Double? = nil, color: Color? = nil, line: Line? = nil) {
            self.outliercolor = outliercolor
            self.symbol = symbol
            self.opacity = opacity
            self.size = size
            self.color = color
            self.line = line
        }
    }
    public var marker: Marker?

    /// Sets the text elements associated with each sample value. If a single string, the same string appears over all the data points. If an array of string, the items are mapped in order to the this trace's (x,y) coordinates. To be seen, trace `hoverinfo` must contain a *text* flag.
    public var text: String?

    /// Same as `text`.
    public var hovertext: String?

    /// Template string used for rendering the information that appear on hover box. Note that this will override `hoverinfo`. Variables are inserted using %{variable}, for example "y: %{y}". Numbers are formatted using d3-format's syntax %{variable:d3-format}, for example "Price: %{y:$.2f}". https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format for details on the formatting syntax. Dates are formatted using d3-time-format's syntax %{variable|d3-time-format}, for example "Day: %{2019-01-01|%A}". https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format for details on the date formatting syntax. The variables available in `hovertemplate` are the ones emitted as event data described at this link https://plot.ly/javascript/plotlyjs-events/#event-data. Additionally, every attributes that can be specified per-point (the ones that are `arrayOk: true`) are available.  Anything contained in tag `<extra>` is displayed in the secondary box, for example "<extra>{fullData.name}</extra>". To hide the secondary box completely, use an empty tag `<extra></extra>`.
    public var hovertemplate: String?

    public struct Box: Encodable {
        /// Determines if an miniature box plot is drawn inside the violins. 
        public var visible: Bool?
    
        /// Sets the width of the inner box plots relative to the violins' width. For example, with 1, the inner box plots are as wide as the violins.
        public var width: Double?
    
        /// Sets the inner box plot fill color.
        public var fillcolor: Color?
    
        public struct Line: Encodable {
            /// Sets the inner box plot bounding line color.
            public var color: Color?
        
            /// Sets the inner box plot bounding line width.
            public var width: Double?
        
            public init(color: Color? = nil, width: Double? = nil) {
                self.color = color
                self.width = width
            }
        }
        public var line: Line?
    
        public init(visible: Bool? = nil, width: Double? = nil, fillcolor: Color? = nil, line: Line? = nil) {
            self.visible = visible
            self.width = width
            self.fillcolor = fillcolor
            self.line = line
        }
    }
    public var box: Box?

    public struct Meanline: Encodable {
        /// Determines if a line corresponding to the sample's mean is shown inside the violins. If `box.visible` is turned on, the mean line is drawn inside the inner box. Otherwise, the mean line is drawn from one side of the violin to other.
        public var visible: Bool?
    
        /// Sets the mean line color.
        public var color: Color?
    
        /// Sets the mean line width.
        public var width: Double?
    
        public init(visible: Bool? = nil, color: Color? = nil, width: Double? = nil) {
            self.visible = visible
            self.color = color
            self.width = width
        }
    }
    public var meanline: Meanline?

    /// Determines on which side of the position value the density function making up one half of a violin is plotted. Useful when comparing two violin traces under *overlay* mode, where one trace has `side` set to *positive* and the other to *negative*.
    public enum Side: String, Encodable {
        case both
        case positive
        case negative
    }
    /// Determines on which side of the position value the density function making up one half of a violin is plotted. Useful when comparing two violin traces under *overlay* mode, where one trace has `side` set to *positive* and the other to *negative*.
    public var side: Side?

    /// Set several traces linked to the same position axis or matching axes to the same offsetgroup where bars of the same position coordinate will line up.
    public var offsetgroup: String?

    /// Set several traces linked to the same position axis or matching axes to the same alignmentgroup. This controls whether bars compute their positional range dependently or independently.
    public var alignmentgroup: String?

    public struct Selected: Encodable {
        public struct Marker: Encodable {
            /// Sets the marker opacity of selected points.
            public var opacity: Double?
        
            /// Sets the marker color of selected points.
            public var color: Color?
        
            /// Sets the marker size of selected points.
            public var size: Double?
        
            public init(opacity: Double? = nil, color: Color? = nil, size: Double? = nil) {
                self.opacity = opacity
                self.color = color
                self.size = size
            }
        }
        public var marker: Marker?
    
        public init(marker: Marker? = nil) {
            self.marker = marker
        }
    }
    public var selected: Selected?

    public struct Unselected: Encodable {
        public struct Marker: Encodable {
            /// Sets the marker opacity of unselected points, applied only when a selection exists.
            public var opacity: Double?
        
            /// Sets the marker color of unselected points, applied only when a selection exists.
            public var color: Color?
        
            /// Sets the marker size of unselected points, applied only when a selection exists.
            public var size: Double?
        
            public init(opacity: Double? = nil, color: Color? = nil, size: Double? = nil) {
                self.opacity = opacity
                self.color = color
                self.size = size
            }
        }
        public var marker: Marker?
    
        public init(marker: Marker? = nil) {
            self.marker = marker
        }
    }
    public var unselected: Unselected?

    /// Do the hover effects highlight individual violins or sample points or the kernel density estimate or any combination of them?
    public struct Hoveron: OptionSet, Encodable {
        public let rawValue: Int
    
        public static let violins = Hoveron(rawValue: 1 << 0)
        public static let points = Hoveron(rawValue: 1 << 1)
        public static let kde = Hoveron(rawValue: 1 << 2)
    
        public init(rawValue: Int) { self.rawValue = rawValue }
    
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["violins"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["points"] }
            if (self.rawValue & 1 << 2) != 0 { options += ["kde"] }
            var container = encoder.singleValueContainer()
            try container.encode(options.joined(separator: "+"))
        }
    }
    /// Do the hover effects highlight individual violins or sample points or the kernel density estimate or any combination of them?
    public var hoveron: Hoveron?

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

    /// Sets the source reference on plot.ly for  y .
    public var ysrc: String?

    /// Sets the source reference on plot.ly for  x .
    public var xsrc: String?

    /// Sets the source reference on plot.ly for  text .
    public var textsrc: String?

    /// Sets the source reference on plot.ly for  hovertext .
    public var hovertextsrc: String?

    /// Sets the source reference on plot.ly for  hovertemplate .
    public var hovertemplatesrc: String?

    public init(visible: Visible? = nil, showlegend: Bool? = nil, legendgroup: String? = nil, opacity: Double? = nil, uid: String? = nil, ids: [Double]? = nil, customdata: [Double]? = nil, meta: Anything? = nil, selectedpoints: Anything? = nil, hoverinfo: Hoverinfo? = nil, hoverlabel: Hoverlabel? = nil, stream: Stream? = nil, transforms: Transforms? = nil, uirevision: Anything? = nil, y: [Double]? = nil, x: [Double]? = nil, x0: Anything? = nil, y0: Anything? = nil, name: String? = nil, orientation: Orientation? = nil, bandwidth: Double? = nil, scalegroup: String? = nil, scalemode: Scalemode? = nil, spanmode: Spanmode? = nil, span: InfoArray? = nil, line: Line? = nil, fillcolor: Color? = nil, points: Points? = nil, jitter: Double? = nil, pointpos: Double? = nil, width: Double? = nil, marker: Marker? = nil, text: String? = nil, hovertext: String? = nil, hovertemplate: String? = nil, box: Box? = nil, meanline: Meanline? = nil, side: Side? = nil, offsetgroup: String? = nil, alignmentgroup: String? = nil, selected: Selected? = nil, unselected: Unselected? = nil, hoveron: Hoveron? = nil, xaxis: SubplotID? = nil, yaxis: SubplotID? = nil, idssrc: String? = nil, customdatasrc: String? = nil, metasrc: String? = nil, hoverinfosrc: String? = nil, ysrc: String? = nil, xsrc: String? = nil, textsrc: String? = nil, hovertextsrc: String? = nil, hovertemplatesrc: String? = nil) {
        self.visible = visible
        self.showlegend = showlegend
        self.legendgroup = legendgroup
        self.opacity = opacity
        self.uid = uid
        self.ids = ids
        self.customdata = customdata
        self.meta = meta
        self.selectedpoints = selectedpoints
        self.hoverinfo = hoverinfo
        self.hoverlabel = hoverlabel
        self.stream = stream
        self.transforms = transforms
        self.uirevision = uirevision
        self.y = y
        self.x = x
        self.x0 = x0
        self.y0 = y0
        self.name = name
        self.orientation = orientation
        self.bandwidth = bandwidth
        self.scalegroup = scalegroup
        self.scalemode = scalemode
        self.spanmode = spanmode
        self.span = span
        self.line = line
        self.fillcolor = fillcolor
        self.points = points
        self.jitter = jitter
        self.pointpos = pointpos
        self.width = width
        self.marker = marker
        self.text = text
        self.hovertext = hovertext
        self.hovertemplate = hovertemplate
        self.box = box
        self.meanline = meanline
        self.side = side
        self.offsetgroup = offsetgroup
        self.alignmentgroup = alignmentgroup
        self.selected = selected
        self.unselected = unselected
        self.hoveron = hoveron
        self.xaxis = xaxis
        self.yaxis = yaxis
        self.idssrc = idssrc
        self.customdatasrc = customdatasrc
        self.metasrc = metasrc
        self.hoverinfosrc = hoverinfosrc
        self.ysrc = ysrc
        self.xsrc = xsrc
        self.textsrc = textsrc
        self.hovertextsrc = hovertextsrc
        self.hovertemplatesrc = hovertemplatesrc
    }
}