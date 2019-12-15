/// In vertical (horizontal) violin plots, statistics are computed using `y` (`x`) values. By supplying an `x` (`y`) array, one violin per distinct x (y) value is drawn If no `x` (`y`) {array} is provided, a single violin is drawn. That violin position is then positioned with with `name` or with `x0` (`y0`) if provided.
public struct Violin: Trace {
    public let type: String = "violin"

    public let animatable: Bool = false

    /// Determines whether or not this trace is visible. If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the legend itself is visible).
    public enum Visible: String, Encodable {
        case `true` = "true"
        case `false` = "false"
        case legendOnly = "legendonly"
    }
    /// Determines whether or not this trace is visible. If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the legend itself is visible).
    public var visible: Visible?

    /// Determines whether or not an item corresponding to this trace is shown in the legend.
    public var showLegend: Bool?

    /// Sets the legend group for this trace. Traces part of the same legend group hide/show at the same time when toggling legend items.
    public var legendGroup: String?

    /// Sets the opacity of the trace.
    public var opacity: Double?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    public var uid: String?

    /// Assigns id labels to each datum. These ids for object constancy of data points during animation. Should be an array of strings, not numbers or any other type.
    public var ids: [Double]?

    /// Assigns extra data each datum. This may be useful when listening to hover, click and selection events. Note that, *scatter* traces also appends customdata items in the markers DOM elements
    public var customData: [Double]?

    /// Assigns extra meta information associated with this trace that can be used in various text attributes. Attributes such as trace `name`, graph, axis and colorbar `title.text`, annotation `text` `rangeselector`, `updatemenues` and `sliders` `label` text all support `meta`. To access the trace `meta` values in an attribute in the same trace, simply use `%{meta[i]}` where `i` is the index or key of the `meta` item in question. To access trace `meta` in layout attributes, use `%{data[n[.meta[i]}` where `i` is the index or key of the `meta` and `n` is the trace index.
    public var meta: Anything?

    /// Array containing integer indices of selected points. Has an effect only for traces that support selections. Note that an empty array means an empty selection where the `unselected` are turned on for all points, whereas, any other non-array values means no selection all where the `selected` and `unselected` styles have no effect.
    public var selectedPoints: Anything?

    /// Determines which trace information appear on hover. If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set, click and hover events are still fired.
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
    /// Determines which trace information appear on hover. If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set, click and hover events are still fired.
    public var hoverInfo: HoverInfo?

    public struct HoverLabel: Encodable {
        /// Sets the background color of the hover labels for this trace
        public var backgroundColor: Color?
    
        /// Sets the border color of the hover labels for this trace.
        public var borderColor: Color?
    
        /// Sets the font used in hover labels.
        public struct Font: Encodable {
            /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
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
    
        /// Sets the horizontal alignment of the text content within hover label box. Has an effect only if the hover label text spans more two or more lines
        public enum Align: String, Encodable {
            case left
            case right
            case auto
        }
        /// Sets the horizontal alignment of the text content within hover label box. Has an effect only if the hover label text spans more two or more lines
        public var align: Align?
    
        /// Sets the default length (in number of characters) of the trace name in the hover labels for all traces. -1 shows the whole name regardless of length. 0-3 shows the first 0-3 characters, and an integer >3 will show the whole name if it is less than that many characters, but if it is longer, will truncate to `namelength - 3` characters and add an ellipsis.
        public var nameLength: Int?
    
        /// Sets the source reference on plot.ly for  bgcolor .
        public var backgroundColorSource: String?
    
        /// Sets the source reference on plot.ly for  bordercolor .
        public var borderColorSource: String?
    
        /// Sets the source reference on plot.ly for  align .
        public var alignSource: String?
    
        /// Sets the source reference on plot.ly for  namelength .
        public var nameLengthSource: String?
    
        public init(backgroundColor: Color? = nil, borderColor: Color? = nil, font: Font? = nil, align: Align? = nil, nameLength: Int? = nil, backgroundColorSource: String? = nil, borderColorSource: String? = nil, alignSource: String? = nil, nameLengthSource: String? = nil) {
            self.backgroundColor = backgroundColor
            self.borderColor = borderColor
            self.font = font
            self.align = align
            self.nameLength = nameLength
            self.backgroundColorSource = backgroundColorSource
            self.borderColorSource = borderColorSource
            self.alignSource = alignSource
            self.nameLengthSource = nameLengthSource
        }
    }
    public var hoverLabel: HoverLabel?

    public struct Stream: Encodable {
        /// The stream id number links a data trace on a plot with a stream. See https://plot.ly/settings for more details.
        public var token: String?
    
        /// Sets the maximum number of points to keep on the plots from an incoming stream. If `maxpoints` is set to *50*, only the newest 50 points will be displayed on the plot.
        public var maxPoints: Double?
    
        public init(token: String? = nil, maxPoints: Double? = nil) {
            self.token = token
            self.maxPoints = maxPoints
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
    public var uiRevision: Anything?

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
    public var scaleGroup: String?

    /// Sets the metric by which the width of each violin is determined.*width* means each violin has the same (max) width*count* means the violins are scaled by the number of sample points makingup each violin.
    public enum ScaleMode: String, Encodable {
        case width
        case count
    }
    /// Sets the metric by which the width of each violin is determined.*width* means each violin has the same (max) width*count* means the violins are scaled by the number of sample points makingup each violin.
    public var scaleMode: ScaleMode?

    /// Sets the method by which the span in data space where the density function will be computed. *soft* means the span goes from the sample's minimum value minus two bandwidths to the sample's maximum value plus two bandwidths. *hard* means the span goes from the sample's minimum to its maximum value. For custom span settings, use mode *manual* and fill in the `span` attribute.
    public enum SpanMode: String, Encodable {
        case soft
        case hard
        case manual
    }
    /// Sets the method by which the span in data space where the density function will be computed. *soft* means the span goes from the sample's minimum value minus two bandwidths to the sample's maximum value plus two bandwidths. *hard* means the span goes from the sample's minimum to its maximum value. For custom span settings, use mode *manual* and fill in the `span` attribute.
    public var spanMode: SpanMode?

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
    public var fillColor: Color?

    /// If *outliers*, only the sample points lying outside the whiskers are shown If *suspectedoutliers*, the outlier points are shown and points either less than 4*Q1-3*Q3 or greater than 4*Q3-3*Q1 are highlighted (see `outliercolor`) If *all*, all sample points are shown If *false*, only the violins are shown with no sample points
    public enum Points: String, Encodable {
        case all
        case outliers
        case suspectedOutliers = "suspectedoutliers"
        case `false` = "false"
    }
    /// If *outliers*, only the sample points lying outside the whiskers are shown If *suspectedoutliers*, the outlier points are shown and points either less than 4*Q1-3*Q3 or greater than 4*Q3-3*Q1 are highlighted (see `outliercolor`) If *all*, all sample points are shown If *false*, only the violins are shown with no sample points
    public var points: Points?

    /// Sets the amount of jitter in the sample points drawn. If *0*, the sample points align along the distribution axis. If *1*, the sample points are drawn in a random jitter of width equal to the width of the violins.
    public var jitter: Double?

    /// Sets the position of the sample points in relation to the violins. If *0*, the sample points are places over the center of the violins. Positive (negative) values correspond to positions to the right (left) for vertical violins and above (below) for horizontal violins.
    public var pointPosition: Double?

    /// Sets the width of the violin in data coordinates. If *0* (default value) the width is automatically selected based on the positions of other violin traces in the same subplot.
    public var width: Double?

    public struct Marker: Encodable {
        /// Sets the color of the outlier sample points.
        public var outlierColor: Color?
    
        /// Sets the marker symbol type. Adding 100 is equivalent to appending *-open* to a symbol name. Adding 200 is equivalent to appending *-dot* to a symbol name. Adding 300 is equivalent to appending *-open-dot* or *dot-open* to a symbol name.
        public enum Symbol: String, Encodable {
            case circle
            case circleOpen = "circle-open"
            case circleDot = "circle-dot"
            case circleOpenDot = "circle-open-dot"
            case square
            case squareOpen = "square-open"
            case squareDot = "square-dot"
            case squareOpenDot = "square-open-dot"
            case diamond
            case diamondOpen = "diamond-open"
            case diamondDot = "diamond-dot"
            case diamondOpenDot = "diamond-open-dot"
            case cross
            case crossOpen = "cross-open"
            case crossDot = "cross-dot"
            case crossOpenDot = "cross-open-dot"
            case x
            case xOpen = "x-open"
            case xDot = "x-dot"
            case xOpenDot = "x-open-dot"
            case triangleUp = "triangle-up"
            case triangleUpOpen = "triangle-up-open"
            case triangleUpDot = "triangle-up-dot"
            case triangleUpOpenDot = "triangle-up-open-dot"
            case triangleDown = "triangle-down"
            case triangleDownOpen = "triangle-down-open"
            case triangleDownDot = "triangle-down-dot"
            case triangleDownOpenDot = "triangle-down-open-dot"
            case triangleLeft = "triangle-left"
            case triangleLeftOpen = "triangle-left-open"
            case triangleLeftDot = "triangle-left-dot"
            case triangleLeftOpenDot = "triangle-left-open-dot"
            case triangleRight = "triangle-right"
            case triangleRightOpen = "triangle-right-open"
            case triangleRightDot = "triangle-right-dot"
            case triangleRightOpenDot = "triangle-right-open-dot"
            case triangleNE = "triangle-ne"
            case triangleNEOpen = "triangle-ne-open"
            case triangleNEDot = "triangle-ne-dot"
            case triangleNEOpenDot = "triangle-ne-open-dot"
            case triangleSE = "triangle-se"
            case triangleSEOpen = "triangle-se-open"
            case triangleSEDot = "triangle-se-dot"
            case triangleSEOpenDot = "triangle-se-open-dot"
            case triangleSW = "triangle-sw"
            case triangleSWOpen = "triangle-sw-open"
            case triangleSWDot = "triangle-sw-dot"
            case triangleSWOpenDot = "triangle-sw-open-dot"
            case triangleNW = "triangle-nw"
            case triangleNWOpen = "triangle-nw-open"
            case triangleNWDot = "triangle-nw-dot"
            case triangleNWOpenDot = "triangle-nw-open-dot"
            case pentagon
            case pentagonOpen = "pentagon-open"
            case pentagonDot = "pentagon-dot"
            case pentagonOpenDot = "pentagon-open-dot"
            case hexagon
            case hexagonOpen = "hexagon-open"
            case hexagonDot = "hexagon-dot"
            case hexagonOpenDot = "hexagon-open-dot"
            case hexagon2
            case hexagon2Open = "hexagon2-open"
            case hexagon2Dot = "hexagon2-dot"
            case hexagon2OpenDot = "hexagon2-open-dot"
            case octagon
            case octagonOpen = "octagon-open"
            case octagonDot = "octagon-dot"
            case octagonOpenDot = "octagon-open-dot"
            case star
            case starOpen = "star-open"
            case starDot = "star-dot"
            case starOpenDot = "star-open-dot"
            case hexagram
            case hexagramOpen = "hexagram-open"
            case hexagramDot = "hexagram-dot"
            case hexagramOpenDot = "hexagram-open-dot"
            case starTriangleUp = "star-triangle-up"
            case starTriangleUpOpen = "star-triangle-up-open"
            case starTriangleUpDot = "star-triangle-up-dot"
            case starTriangleUpOpenDot = "star-triangle-up-open-dot"
            case starTriangleDown = "star-triangle-down"
            case starTriangleDownOpen = "star-triangle-down-open"
            case starTriangleDownDot = "star-triangle-down-dot"
            case starTriangleDownOpenDot = "star-triangle-down-open-dot"
            case starSquare = "star-square"
            case starSquareOpen = "star-square-open"
            case starSquareDot = "star-square-dot"
            case starSquareOpenDot = "star-square-open-dot"
            case starDiamond = "star-diamond"
            case starDiamondOpen = "star-diamond-open"
            case starDiamondDot = "star-diamond-dot"
            case starDiamondOpenDot = "star-diamond-open-dot"
            case diamondTall = "diamond-tall"
            case diamondTallOpen = "diamond-tall-open"
            case diamondTallDot = "diamond-tall-dot"
            case diamondTallOpenDot = "diamond-tall-open-dot"
            case diamondWide = "diamond-wide"
            case diamondWideOpen = "diamond-wide-open"
            case diamondWideDot = "diamond-wide-dot"
            case diamondWideOpenDot = "diamond-wide-open-dot"
            case hourglass
            case hourglassOpen = "hourglass-open"
            case bowTie = "bowtie"
            case bowTieOpen = "bowtie-open"
            case circleCross = "circle-cross"
            case circleCrossOpen = "circle-cross-open"
            case circleX = "circle-x"
            case circleXOpen = "circle-x-open"
            case squareCross = "square-cross"
            case squareCrossOpen = "square-cross-open"
            case squareX = "square-x"
            case squareXOpen = "square-x-open"
            case diamondCross = "diamond-cross"
            case diamondCrossOpen = "diamond-cross-open"
            case diamondX = "diamond-x"
            case diamondXOpen = "diamond-x-open"
            case crossThin = "cross-thin"
            case crossThinOpen = "cross-thin-open"
            case xThin = "x-thin"
            case xThinOpen = "x-thin-open"
            case asterisk
            case asteriskOpen = "asterisk-open"
            case hash
            case hashOpen = "hash-open"
            case hashDot = "hash-dot"
            case hashOpenDot = "hash-open-dot"
            case yUp = "y-up"
            case yUpOpen = "y-up-open"
            case yDown = "y-down"
            case yDownOpen = "y-down-open"
            case yLeft = "y-left"
            case yLeftOpen = "y-left-open"
            case yRight = "y-right"
            case yRightOpen = "y-right-open"
            case lineEw = "line-ew"
            case lineEwOpen = "line-ew-open"
            case lineNS = "line-ns"
            case lineNSOpen = "line-ns-open"
            case lineNE = "line-ne"
            case lineNEOpen = "line-ne-open"
            case lineNW = "line-nw"
            case lineNWOpen = "line-nw-open"
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
            public var outlierColor: Color?
        
            /// Sets the border line width (in px) of the outlier sample points.
            public var outlierWidth: Double?
        
            public init(color: Color? = nil, width: Double? = nil, outlierColor: Color? = nil, outlierWidth: Double? = nil) {
                self.color = color
                self.width = width
                self.outlierColor = outlierColor
                self.outlierWidth = outlierWidth
            }
        }
        public var line: Line?
    
        public init(outlierColor: Color? = nil, symbol: Symbol? = nil, opacity: Double? = nil, size: Double? = nil, color: Color? = nil, line: Line? = nil) {
            self.outlierColor = outlierColor
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
    public var hoverText: String?

    /// Template string used for rendering the information that appear on hover box. Note that this will override `hoverinfo`. Variables are inserted using %{variable}, for example "y: %{y}". Numbers are formatted using d3-format's syntax %{variable:d3-format}, for example "Price: %{y:$.2f}". https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format for details on the formatting syntax. Dates are formatted using d3-time-format's syntax %{variable|d3-time-format}, for example "Day: %{2019-01-01|%A}". https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format for details on the date formatting syntax. The variables available in `hovertemplate` are the ones emitted as event data described at this link https://plot.ly/javascript/plotlyjs-events/#event-data. Additionally, every attributes that can be specified per-point (the ones that are `arrayOk: true`) are available.  Anything contained in tag `<extra>` is displayed in the secondary box, for example "<extra>{fullData.name}</extra>". To hide the secondary box completely, use an empty tag `<extra></extra>`.
    public var hoverTemplate: String?

    public struct Box: Encodable {
        /// Determines if an miniature box plot is drawn inside the violins. 
        public var visible: Bool?
    
        /// Sets the width of the inner box plots relative to the violins' width. For example, with 1, the inner box plots are as wide as the violins.
        public var width: Double?
    
        /// Sets the inner box plot fill color.
        public var fillColor: Color?
    
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
    
        public init(visible: Bool? = nil, width: Double? = nil, fillColor: Color? = nil, line: Line? = nil) {
            self.visible = visible
            self.width = width
            self.fillColor = fillColor
            self.line = line
        }
    }
    public var box: Box?

    public struct MeanLine: Encodable {
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
    public var meanLine: MeanLine?

    /// Determines on which side of the position value the density function making up one half of a violin is plotted. Useful when comparing two violin traces under *overlay* mode, where one trace has `side` set to *positive* and the other to *negative*.
    public enum Side: String, Encodable {
        case both
        case positive
        case negative
    }
    /// Determines on which side of the position value the density function making up one half of a violin is plotted. Useful when comparing two violin traces under *overlay* mode, where one trace has `side` set to *positive* and the other to *negative*.
    public var side: Side?

    /// Set several traces linked to the same position axis or matching axes to the same offsetgroup where bars of the same position coordinate will line up.
    public var offsetGroup: String?

    /// Set several traces linked to the same position axis or matching axes to the same alignmentgroup. This controls whether bars compute their positional range dependently or independently.
    public var alignmentGroup: String?

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
    public struct HoverOn: OptionSet, Encodable {
        public let rawValue: Int
    
        public static let violins = HoverOn(rawValue: 1 << 0)
        public static let points = HoverOn(rawValue: 1 << 1)
        public static let kde = HoverOn(rawValue: 1 << 2)
        public static let all = HoverOn(rawValue: 1 << 3)
    
        public init(rawValue: Int) { self.rawValue = rawValue }
    
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["violins"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["points"] }
            if (self.rawValue & 1 << 2) != 0 { options += ["kde"] }
            if (self.rawValue & 1 << 3) != 0 { options += ["all"] }
            var container = encoder.singleValueContainer()
            try container.encode(options.joined(separator: "+"))
        }
    }
    /// Do the hover effects highlight individual violins or sample points or the kernel density estimate or any combination of them?
    public var hoverOn: HoverOn?

    /// Sets a reference between this trace's x coordinates and a 2D cartesian x axis. If *x* (the default value), the x coordinates refer to `layout.xaxis`. If *x2*, the x coordinates refer to `layout.xaxis2`, and so on.
    public var xAxis: SubPlotID?

    /// Sets a reference between this trace's y coordinates and a 2D cartesian y axis. If *y* (the default value), the y coordinates refer to `layout.yaxis`. If *y2*, the y coordinates refer to `layout.yaxis2`, and so on.
    public var yAxis: SubPlotID?

    /// Sets the source reference on plot.ly for  ids .
    public var idsSource: String?

    /// Sets the source reference on plot.ly for  customdata .
    public var customDataSource: String?

    /// Sets the source reference on plot.ly for  meta .
    public var metaSource: String?

    /// Sets the source reference on plot.ly for  hoverinfo .
    public var hoverInfoSource: String?

    /// Sets the source reference on plot.ly for  y .
    public var ySource: String?

    /// Sets the source reference on plot.ly for  x .
    public var xSource: String?

    /// Sets the source reference on plot.ly for  text .
    public var textSource: String?

    /// Sets the source reference on plot.ly for  hovertext .
    public var hoverTextSource: String?

    /// Sets the source reference on plot.ly for  hovertemplate .
    public var hoverTemplateSource: String?

    public init(visible: Visible? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, selectedPoints: Anything? = nil, hoverInfo: HoverInfo? = nil, hoverLabel: HoverLabel? = nil, stream: Stream? = nil, transforms: Transforms? = nil, uiRevision: Anything? = nil, y: [Double]? = nil, x: [Double]? = nil, x0: Anything? = nil, y0: Anything? = nil, name: String? = nil, orientation: Orientation? = nil, bandwidth: Double? = nil, scaleGroup: String? = nil, scaleMode: ScaleMode? = nil, spanMode: SpanMode? = nil, span: InfoArray? = nil, line: Line? = nil, fillColor: Color? = nil, points: Points? = nil, jitter: Double? = nil, pointPosition: Double? = nil, width: Double? = nil, marker: Marker? = nil, text: String? = nil, hoverText: String? = nil, hoverTemplate: String? = nil, box: Box? = nil, meanLine: MeanLine? = nil, side: Side? = nil, offsetGroup: String? = nil, alignmentGroup: String? = nil, selected: Selected? = nil, unselected: Unselected? = nil, hoverOn: HoverOn? = nil, xAxis: SubPlotID? = nil, yAxis: SubPlotID? = nil, idsSource: String? = nil, customDataSource: String? = nil, metaSource: String? = nil, hoverInfoSource: String? = nil, ySource: String? = nil, xSource: String? = nil, textSource: String? = nil, hoverTextSource: String? = nil, hoverTemplateSource: String? = nil) {
        self.visible = visible
        self.showLegend = showLegend
        self.legendGroup = legendGroup
        self.opacity = opacity
        self.uid = uid
        self.ids = ids
        self.customData = customData
        self.meta = meta
        self.selectedPoints = selectedPoints
        self.hoverInfo = hoverInfo
        self.hoverLabel = hoverLabel
        self.stream = stream
        self.transforms = transforms
        self.uiRevision = uiRevision
        self.y = y
        self.x = x
        self.x0 = x0
        self.y0 = y0
        self.name = name
        self.orientation = orientation
        self.bandwidth = bandwidth
        self.scaleGroup = scaleGroup
        self.scaleMode = scaleMode
        self.spanMode = spanMode
        self.span = span
        self.line = line
        self.fillColor = fillColor
        self.points = points
        self.jitter = jitter
        self.pointPosition = pointPosition
        self.width = width
        self.marker = marker
        self.text = text
        self.hoverText = hoverText
        self.hoverTemplate = hoverTemplate
        self.box = box
        self.meanLine = meanLine
        self.side = side
        self.offsetGroup = offsetGroup
        self.alignmentGroup = alignmentGroup
        self.selected = selected
        self.unselected = unselected
        self.hoverOn = hoverOn
        self.xAxis = xAxis
        self.yAxis = yAxis
        self.idsSource = idsSource
        self.customDataSource = customDataSource
        self.metaSource = metaSource
        self.hoverInfoSource = hoverInfoSource
        self.ySource = ySource
        self.xSource = xSource
        self.textSource = textSource
        self.hoverTextSource = hoverTextSource
        self.hoverTemplateSource = hoverTemplateSource
    }
}