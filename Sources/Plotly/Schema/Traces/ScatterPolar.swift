/// The scatterpolar trace type encompasses line charts, scatter charts, text charts, and bubble charts in polar coordinates. 
///
/// The data visualized as scatter point or lines is set in `r` (radial) and `theta` (angular)
/// coordinates Text (appearing either on the chart or on hover only) is via `text`. Bubble charts
/// are achieved by setting `marker.size` and/or `marker.color` to numerical arrays.
public struct ScatterPolar: Trace {
    public let type: String = "scatterpolar"

    public let animatable: Bool = false

    /// Determines whether or not this trace is visible. 
    ///
    /// If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the
    /// legend itself is visible).
    /// - traces/scatter/attributes/visible
    /// - traces/bar/attributes/visible
    /// - traces/box/attributes/visible
    /// - traces/heatmap/attributes/visible
    /// - traces/histogram/attributes/visible
    /// - traces/histogram2d/attributes/visible
    /// - traces/histogram2dcontour/attributes/visible
    /// - traces/contour/attributes/visible
    /// - traces/scatterternary/attributes/visible
    /// - traces/violin/attributes/visible
    /// - traces/funnel/attributes/visible
    /// - traces/waterfall/attributes/visible
    /// - traces/image/attributes/visible
    /// - traces/pie/attributes/visible
    /// - traces/sunburst/attributes/visible
    /// - traces/treemap/attributes/visible
    /// - traces/funnelarea/attributes/visible
    /// - traces/scatter3d/attributes/visible
    /// - traces/surface/attributes/visible
    /// - traces/isosurface/attributes/visible
    /// - traces/volume/attributes/visible
    /// - traces/mesh3d/attributes/visible
    /// - traces/cone/attributes/visible
    /// - traces/streamtube/attributes/visible
    /// - traces/scattergeo/attributes/visible
    /// - traces/choropleth/attributes/visible
    /// - traces/scattergl/attributes/visible
    /// - traces/splom/attributes/visible
    /// - traces/pointcloud/attributes/visible
    /// - traces/heatmapgl/attributes/visible
    /// - traces/parcoords/attributes/visible
    /// - traces/parcats/attributes/visible
    /// - traces/scattermapbox/attributes/visible
    /// - traces/choroplethmapbox/attributes/visible
    /// - traces/densitymapbox/attributes/visible
    /// - traces/sankey/attributes/visible
    /// - traces/indicator/attributes/visible
    /// - traces/table/attributes/visible
    /// - traces/carpet/attributes/visible
    /// - traces/scattercarpet/attributes/visible
    /// - traces/contourcarpet/attributes/visible
    /// - traces/ohlc/attributes/visible
    /// - traces/candlestick/attributes/visible
    /// - traces/scatterpolar/attributes/visible
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

    /// - traces/scatterpolar/attributes/hoverlabel
    public struct HoverLabel: Encodable {
        /// Sets the background color of the hover labels for this trace
        public var backgroundColor: Color?
    
        /// Sets the border color of the hover labels for this trace.
        public var borderColor: Color?
    
        /// Sets the font used in hover labels.
        /// - traces/scatterpolar/attributes/hoverlabel/font
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
        /// - traces/scatter/attributes/hoverlabel/align
        /// - traces/bar/attributes/hoverlabel/align
        /// - traces/box/attributes/hoverlabel/align
        /// - traces/heatmap/attributes/hoverlabel/align
        /// - traces/histogram/attributes/hoverlabel/align
        /// - traces/histogram2d/attributes/hoverlabel/align
        /// - traces/histogram2dcontour/attributes/hoverlabel/align
        /// - traces/contour/attributes/hoverlabel/align
        /// - traces/scatterternary/attributes/hoverlabel/align
        /// - traces/violin/attributes/hoverlabel/align
        /// - traces/funnel/attributes/hoverlabel/align
        /// - traces/waterfall/attributes/hoverlabel/align
        /// - traces/image/attributes/hoverlabel/align
        /// - traces/pie/attributes/hoverlabel/align
        /// - traces/sunburst/attributes/hoverlabel/align
        /// - traces/treemap/attributes/hoverlabel/align
        /// - traces/funnelarea/attributes/hoverlabel/align
        /// - traces/scatter3d/attributes/hoverlabel/align
        /// - traces/surface/attributes/hoverlabel/align
        /// - traces/isosurface/attributes/hoverlabel/align
        /// - traces/volume/attributes/hoverlabel/align
        /// - traces/mesh3d/attributes/hoverlabel/align
        /// - traces/cone/attributes/hoverlabel/align
        /// - traces/streamtube/attributes/hoverlabel/align
        /// - traces/scattergeo/attributes/hoverlabel/align
        /// - traces/choropleth/attributes/hoverlabel/align
        /// - traces/scattergl/attributes/hoverlabel/align
        /// - traces/splom/attributes/hoverlabel/align
        /// - traces/pointcloud/attributes/hoverlabel/align
        /// - traces/heatmapgl/attributes/hoverlabel/align
        /// - traces/scattermapbox/attributes/hoverlabel/align
        /// - traces/choroplethmapbox/attributes/hoverlabel/align
        /// - traces/densitymapbox/attributes/hoverlabel/align
        /// - traces/sankey/attributes/hoverlabel/align
        /// - traces/sankey/attributes/node/hoverlabel/align
        /// - traces/sankey/attributes/link/hoverlabel/align
        /// - traces/table/attributes/hoverlabel/align
        /// - traces/scattercarpet/attributes/hoverlabel/align
        /// - traces/ohlc/attributes/hoverlabel/align
        /// - traces/candlestick/attributes/hoverlabel/align
        /// - traces/scatterpolar/attributes/hoverlabel/align
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

    /// - traces/scatterpolar/attributes/stream
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

    /// - traces/scatterpolar/attributes/transforms
    public struct Transforms: Encodable {
        /// - traces/scatterpolar/attributes/transforms/items
        public struct Items: Encodable {
            /// An array of operations that manipulate the trace data, for example filtering or sorting the data arrays.
            /// - traces/scatterpolar/attributes/transforms/items/transform
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

    /// Determines the drawing mode for this scatter trace. 
    ///
    /// If the provided `mode` includes *text* then the `text` elements appear at the coordinates.
    /// Otherwise, the `text` elements appear on hover. If there are less than 20 points and the trace
    /// is not stacked then the default is *lines+markers*. Otherwise, *lines*.
    /// - traces/scatter/attributes/mode
    /// - traces/scatterternary/attributes/mode
    /// - traces/scatter3d/attributes/mode
    /// - traces/scattergeo/attributes/mode
    /// - traces/scattergl/attributes/mode
    /// - traces/scattermapbox/attributes/mode
    /// - traces/scattercarpet/attributes/mode
    /// - traces/scatterpolar/attributes/mode
    public struct Mode: OptionSet, Encodable {
        public let rawValue: Int
    
        public static let lines = Mode(rawValue: 1 << 0)
        public static let markers = Mode(rawValue: 1 << 1)
        public static let text = Mode(rawValue: 1 << 2)
        public static let none = Mode(rawValue: 1 << 3)
    
        public init(rawValue: Int) { self.rawValue = rawValue }
    
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["lines"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["markers"] }
            if (self.rawValue & 1 << 2) != 0 { options += ["text"] }
            if (self.rawValue & 1 << 3) != 0 { options += ["none"] }
            var container = encoder.singleValueContainer()
            try container.encode(options.joined(separator: "+"))
        }
    }
    /// Determines the drawing mode for this scatter trace. 
    ///
    /// If the provided `mode` includes *text* then the `text` elements appear at the coordinates.
    /// Otherwise, the `text` elements appear on hover. If there are less than 20 points and the trace
    /// is not stacked then the default is *lines+markers*. Otherwise, *lines*.
    public var mode: Mode?

    /// Sets the radial coordinates
    public var r: [Double]?

    /// Sets the angular coordinates
    public var theta: [Double]?

    /// Alternate to `r`. 
    ///
    /// Builds a linear space of r coordinates. Use with `dr` where `r0` is the starting coordinate and
    /// `dr` the step.
    public var r0: Anything?

    /// Sets the r coordinate step.
    public var dr: Double?

    /// Alternate to `theta`. 
    ///
    /// Builds a linear space of theta coordinates. Use with `dtheta` where `theta0` is the starting
    /// coordinate and `dtheta` the step.
    public var theta0: Anything?

    /// Sets the theta coordinate step. 
    ///
    /// By default, the `dtheta` step equals the subplot's period divided by the length of the `r`
    /// coordinates.
    public var dTheta: Double?

    /// Sets the unit of input *theta* values. 
    ///
    /// Has an effect only when on *linear* angular axes.
    /// - traces/scatterpolar/attributes/thetaunit
    public enum ThetaUnit: String, Encodable {
        case radians
        case degrees
        case gradians
    }
    /// Sets the unit of input *theta* values. 
    ///
    /// Has an effect only when on *linear* angular axes.
    public var thetaUnit: ThetaUnit?

    /// Sets text elements associated with each (x,y) pair. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to the this trace's (x,y) coordinates. If trace `hoverinfo` contains a
    /// *text* flag and *hovertext* is not set, these elements will be seen in the hover labels.
    public var text: String?

    /// Template string used for rendering the information text that appear on points. 
    ///
    /// Note that this will override `textinfo`. Variables are inserted using %{variable}, for example
    /// "y: %{y}". Numbers are formatted using d3-format's syntax %{variable:d3-format}, for example
    /// "Price: %{y:$.2f}".
    /// https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format for details on
    /// the formatting syntax. Dates are formatted using d3-time-format's syntax
    /// %{variable|d3-time-format}, for example "Day: %{2019-01-01|%A}".
    /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format for details on
    /// the date formatting syntax. Every attributes that can be specified per-point (the ones that are
    /// `arrayOk: true`) are available. variables `r`, `theta` and `text`.
    public var textTemplate: String?

    /// Sets hover text elements associated with each (x,y) pair. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to the this trace's (x,y) coordinates. To be seen, trace `hoverinfo`
    /// must contain a *text* flag.
    public var hoverText: String?

    /// - traces/scatterpolar/attributes/line
    public struct Line: Encodable {
        /// Sets the line color.
        public var color: Color?
    
        /// Sets the line width (in px).
        public var width: Double?
    
        /// Sets the dash style of lines. 
        ///
        /// Set to a dash type string (*solid*, *dot*, *dash*, *longdash*, *dashdot*, or *longdashdot*) or a
        /// dash length list in px (eg *5px,10px,2px,2px*).
        public var dash: String?
    
        /// Determines the line shape. 
        ///
        /// With *spline* the lines are drawn using spline interpolation. The other available values
        /// correspond to step-wise line shapes.
        /// - traces/scatterternary/attributes/line/shape
        /// - traces/scattercarpet/attributes/line/shape
        /// - traces/scatterpolar/attributes/line/shape
        public enum Shape: String, Encodable {
            case linear
            case spline
        }
        /// Determines the line shape. 
        ///
        /// With *spline* the lines are drawn using spline interpolation. The other available values
        /// correspond to step-wise line shapes.
        public var shape: Shape?
    
        /// Has an effect only if `shape` is set to *spline* Sets the amount of smoothing. 
        ///
        /// *0* corresponds to no smoothing (equivalent to a *linear* shape).
        public var smoothing: Double?
    
        public init(color: Color? = nil, width: Double? = nil, dash: String? = nil, shape: Shape? = nil, smoothing: Double? = nil) {
            self.color = color
            self.width = width
            self.dash = dash
            self.shape = shape
            self.smoothing = smoothing
        }
    }
    public var line: Line?

    /// Determines whether or not gaps (i.e. 
    ///
    /// {nan} or missing values) in the provided data arrays are connected.
    public var connectGaps: Bool?

    /// - traces/scatterpolar/attributes/marker
    public struct Marker: Encodable {
        /// Sets the marker symbol type. 
        ///
        /// Adding 100 is equivalent to appending *-open* to a symbol name. Adding 200 is equivalent to
        /// appending *-dot* to a symbol name. Adding 300 is equivalent to appending *-open-dot* or
        /// *dot-open* to a symbol name.
        /// - traces/scatter/attributes/marker/symbol
        /// - traces/box/attributes/marker/symbol
        /// - traces/scatterternary/attributes/marker/symbol
        /// - traces/violin/attributes/marker/symbol
        /// - traces/scattergeo/attributes/marker/symbol
        /// - traces/scattergl/attributes/marker/symbol
        /// - traces/splom/attributes/marker/symbol
        /// - traces/scattercarpet/attributes/marker/symbol
        /// - traces/scatterpolar/attributes/marker/symbol
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
        /// Sets the marker symbol type. 
        ///
        /// Adding 100 is equivalent to appending *-open* to a symbol name. Adding 200 is equivalent to
        /// appending *-dot* to a symbol name. Adding 300 is equivalent to appending *-open-dot* or
        /// *dot-open* to a symbol name.
        public var symbol: Symbol?
    
        /// Sets the marker opacity.
        public var opacity: Double?
    
        /// Sets the marker size (in px).
        public var size: Double?
    
        /// Sets a maximum number of points to be drawn on the graph. 
        ///
        /// *0* corresponds to no limit.
        public var maxDisplayed: Double?
    
        /// Has an effect only if `marker.size` is set to a numerical array. 
        ///
        /// Sets the scale factor used to determine the rendered size of marker points. Use with `sizemin`
        /// and `sizemode`.
        public var sizeReference: Double?
    
        /// Has an effect only if `marker.size` is set to a numerical array. 
        ///
        /// Sets the minimum size (in px) of the rendered marker points.
        public var sizeMin: Double?
    
        /// Has an effect only if `marker.size` is set to a numerical array. 
        ///
        /// Sets the rule for which the data in `size` is converted to pixels.
        /// - traces/scatter/attributes/marker/sizemode
        /// - traces/scatterternary/attributes/marker/sizemode
        /// - traces/scatter3d/attributes/marker/sizemode
        /// - traces/scattergeo/attributes/marker/sizemode
        /// - traces/scattergl/attributes/marker/sizemode
        /// - traces/splom/attributes/marker/sizemode
        /// - traces/scattermapbox/attributes/marker/sizemode
        /// - traces/scattercarpet/attributes/marker/sizemode
        /// - traces/scatterpolar/attributes/marker/sizemode
        public enum SizeMode: String, Encodable {
            case diameter
            case area
        }
        /// Has an effect only if `marker.size` is set to a numerical array. 
        ///
        /// Sets the rule for which the data in `size` is converted to pixels.
        public var sizeMode: SizeMode?
    
        /// - traces/scatterpolar/attributes/marker/line
        public struct Line: Encodable {
            /// Sets the width (in px) of the lines bounding the marker points.
            public var width: Double?
        
            /// Sets themarker.linecolor. 
            ///
            /// It accepts either a specific color or an array of numbers that are mapped to the colorscale
            /// relative to the max and min values of the array or relative to `marker.line.cmin` and
            /// `marker.line.cmax` if set.
            public var color: Color?
        
            /// Determines whether or not the color domain is computed with respect to the input data (here in `marker.line.color`) or the bounds set in `marker.line.cmin` and `marker.line.cmax`  Has an effect only if in `marker.line.color`is set to a numerical array. 
            ///
            /// Defaults to `false` when `marker.line.cmin` and `marker.line.cmax` are set by the user.
            public var cAuto: Bool?
        
            /// Sets the lower bound of the color domain. 
            ///
            /// Has an effect only if in `marker.line.color`is set to a numerical array. Value should have the
            /// same units as in `marker.line.color` and if set, `marker.line.cmax` must be set as well.
            public var cMin: Double?
        
            /// Sets the upper bound of the color domain. 
            ///
            /// Has an effect only if in `marker.line.color`is set to a numerical array. Value should have the
            /// same units as in `marker.line.color` and if set, `marker.line.cmin` must be set as well.
            public var cMax: Double?
        
            /// Sets the mid-point of the color domain by scaling `marker.line.cmin` and/or `marker.line.cmax` to be equidistant to this point. 
            ///
            /// Has an effect only if in `marker.line.color`is set to a numerical array. Value should have the
            /// same units as in `marker.line.color`. Has no effect when `marker.line.cauto` is `false`.
            public var cMiddle: Double?
        
            /// Sets the colorscale. 
            ///
            /// Has an effect only if in `marker.line.color`is set to a numerical array. The colorscale must be
            /// an array containing arrays mapping a normalized value to an rgb, rgba, hex, hsl, hsv, or named
            /// color string. At minimum, a mapping for the lowest (0) and highest (1) values are required. For
            /// example, `[[0, 'rgb(0,0,255)'], [1, 'rgb(255,0,0)']]`. To control the bounds of the colorscale
            /// in color space, use`marker.line.cmin` and `marker.line.cmax`. Alternatively, `colorscale` may be
            /// a palette name string of the following list:
            /// Greys,YlGnBu,Greens,YlOrRd,Bluered,RdBu,Reds,Blues,Picnic,Rainbow,Portland,Jet,Hot,Blackbody,Earth,Electric,Viridis,Cividis.
            public var colorScale: ColorScale?
        
            /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `marker.line.colorscale`. 
            ///
            /// Has an effect only if in `marker.line.color`is set to a numerical array. In case `colorscale` is
            /// unspecified or `autocolorscale` is true, the default palette will be chosen according to whether
            /// numbers in the `color` array are all positive, all negative or mixed.
            public var autoColorScale: Bool?
        
            /// Reverses the color mapping if true. 
            ///
            /// Has an effect only if in `marker.line.color`is set to a numerical array. If true,
            /// `marker.line.cmin` will correspond to the last color in the array and `marker.line.cmax` will
            /// correspond to the first color.
            public var reverseScale: Bool?
        
            /// Sets a reference to a shared color axis. 
            ///
            /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
            /// for these shared color axes are set in the layout, under `layout.coloraxis`,
            /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
            public var colorAxis: SubPlotID?
        
            /// Sets the source reference on plot.ly for  width .
            public var widthSource: String?
        
            /// Sets the source reference on plot.ly for  color .
            public var colorSource: String?
        
            public init(width: Double? = nil, color: Color? = nil, cAuto: Bool? = nil, cMin: Double? = nil, cMax: Double? = nil, cMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, colorAxis: SubPlotID? = nil, widthSource: String? = nil, colorSource: String? = nil) {
                self.width = width
                self.color = color
                self.cAuto = cAuto
                self.cMin = cMin
                self.cMax = cMax
                self.cMiddle = cMiddle
                self.colorScale = colorScale
                self.autoColorScale = autoColorScale
                self.reverseScale = reverseScale
                self.colorAxis = colorAxis
                self.widthSource = widthSource
                self.colorSource = colorSource
            }
        }
        public var line: Line?
    
        /// - traces/scatterpolar/attributes/marker/gradient
        public struct Gradient: Encodable {
            /// Sets the type of gradient used to fill the markers
            /// - traces/scatter/attributes/marker/gradient/type
            /// - traces/scatterternary/attributes/marker/gradient/type
            /// - traces/scattergeo/attributes/marker/gradient/type
            /// - traces/scattercarpet/attributes/marker/gradient/type
            /// - traces/scatterpolar/attributes/marker/gradient/type
            public enum Rule: String, Encodable {
                case radial
                case horizontal
                case vertical
                case none
            }
            /// Sets the type of gradient used to fill the markers
            public var type: Rule?
        
            /// Sets the final color of the gradient fill: the center color for radial, the right for horizontal, or the bottom for vertical.
            public var color: Color?
        
            /// Sets the source reference on plot.ly for  type .
            public var typeSource: String?
        
            /// Sets the source reference on plot.ly for  color .
            public var colorSource: String?
        
            public init(type: Rule? = nil, color: Color? = nil, typeSource: String? = nil, colorSource: String? = nil) {
                self.type = type
                self.color = color
                self.typeSource = typeSource
                self.colorSource = colorSource
            }
        }
        public var gradient: Gradient?
    
        /// Sets themarkercolor. 
        ///
        /// It accepts either a specific color or an array of numbers that are mapped to the colorscale
        /// relative to the max and min values of the array or relative to `marker.cmin` and `marker.cmax`
        /// if set.
        public var color: Color?
    
        /// Determines whether or not the color domain is computed with respect to the input data (here in `marker.color`) or the bounds set in `marker.cmin` and `marker.cmax`  Has an effect only if in `marker.color`is set to a numerical array. 
        ///
        /// Defaults to `false` when `marker.cmin` and `marker.cmax` are set by the user.
        public var cAuto: Bool?
    
        /// Sets the lower bound of the color domain. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
        /// units as in `marker.color` and if set, `marker.cmax` must be set as well.
        public var cMin: Double?
    
        /// Sets the upper bound of the color domain. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
        /// units as in `marker.color` and if set, `marker.cmin` must be set as well.
        public var cMax: Double?
    
        /// Sets the mid-point of the color domain by scaling `marker.cmin` and/or `marker.cmax` to be equidistant to this point. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
        /// units as in `marker.color`. Has no effect when `marker.cauto` is `false`.
        public var cMiddle: Double?
    
        /// Sets the colorscale. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. The colorscale must be an
        /// array containing arrays mapping a normalized value to an rgb, rgba, hex, hsl, hsv, or named
        /// color string. At minimum, a mapping for the lowest (0) and highest (1) values are required. For
        /// example, `[[0, 'rgb(0,0,255)'], [1, 'rgb(255,0,0)']]`. To control the bounds of the colorscale
        /// in color space, use`marker.cmin` and `marker.cmax`. Alternatively, `colorscale` may be a palette
        /// name string of the following list:
        /// Greys,YlGnBu,Greens,YlOrRd,Bluered,RdBu,Reds,Blues,Picnic,Rainbow,Portland,Jet,Hot,Blackbody,Earth,Electric,Viridis,Cividis.
        public var colorScale: ColorScale?
    
        /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `marker.colorscale`. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. In case `colorscale` is
        /// unspecified or `autocolorscale` is true, the default palette will be chosen according to whether
        /// numbers in the `color` array are all positive, all negative or mixed.
        public var autoColorScale: Bool?
    
        /// Reverses the color mapping if true. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. If true, `marker.cmin` will
        /// correspond to the last color in the array and `marker.cmax` will correspond to the first color.
        public var reverseScale: Bool?
    
        /// Determines whether or not a colorbar is displayed for this trace. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array.
        public var showScale: Bool?
    
        /// - traces/scatterpolar/attributes/marker/colorbar
        public struct ColorBar: Encodable {
            /// Determines whether this color bar's thickness (i.e. 
            ///
            /// the measure in the constant color direction) is set in units of plot *fraction* or in *pixels*.
            /// Use `thickness` to set the value.
            /// - layout/layoutAttributes/coloraxis/colorbar/thicknessmode
            /// - traces/scatter/attributes/marker/colorbar/thicknessmode
            /// - traces/bar/attributes/marker/colorbar/thicknessmode
            /// - traces/heatmap/attributes/colorbar/thicknessmode
            /// - traces/histogram/attributes/marker/colorbar/thicknessmode
            /// - traces/histogram2d/attributes/colorbar/thicknessmode
            /// - traces/histogram2dcontour/attributes/colorbar/thicknessmode
            /// - traces/contour/attributes/colorbar/thicknessmode
            /// - traces/scatterternary/attributes/marker/colorbar/thicknessmode
            /// - traces/funnel/attributes/marker/colorbar/thicknessmode
            /// - traces/sunburst/attributes/marker/colorbar/thicknessmode
            /// - traces/treemap/attributes/marker/colorbar/thicknessmode
            /// - traces/scatter3d/attributes/line/colorbar/thicknessmode
            /// - traces/scatter3d/attributes/marker/colorbar/thicknessmode
            /// - traces/surface/attributes/colorbar/thicknessmode
            /// - traces/isosurface/attributes/colorbar/thicknessmode
            /// - traces/volume/attributes/colorbar/thicknessmode
            /// - traces/mesh3d/attributes/colorbar/thicknessmode
            /// - traces/cone/attributes/colorbar/thicknessmode
            /// - traces/streamtube/attributes/colorbar/thicknessmode
            /// - traces/scattergeo/attributes/marker/colorbar/thicknessmode
            /// - traces/choropleth/attributes/colorbar/thicknessmode
            /// - traces/scattergl/attributes/marker/colorbar/thicknessmode
            /// - traces/splom/attributes/marker/colorbar/thicknessmode
            /// - traces/heatmapgl/attributes/colorbar/thicknessmode
            /// - traces/parcoords/attributes/line/colorbar/thicknessmode
            /// - traces/parcats/attributes/line/colorbar/thicknessmode
            /// - traces/scattermapbox/attributes/marker/colorbar/thicknessmode
            /// - traces/choroplethmapbox/attributes/colorbar/thicknessmode
            /// - traces/densitymapbox/attributes/colorbar/thicknessmode
            /// - traces/scattercarpet/attributes/marker/colorbar/thicknessmode
            /// - traces/contourcarpet/attributes/colorbar/thicknessmode
            /// - traces/scatterpolar/attributes/marker/colorbar/thicknessmode
            public enum ThicknessMode: String, Encodable {
                case fraction
                case pixels
            }
            /// Determines whether this color bar's thickness (i.e. 
            ///
            /// the measure in the constant color direction) is set in units of plot *fraction* or in *pixels*.
            /// Use `thickness` to set the value.
            public var thicknessMode: ThicknessMode?
        
            /// Sets the thickness of the color bar This measure excludes the size of the padding, ticks and labels.
            public var thickness: Double?
        
            /// Determines whether this slider length is set in units of plot *fraction* or in *pixels. 
            ///
            /// Use `len` to set the value.
            /// - layout/layoutAttributes/sliders/items/slider/lenmode
            /// - layout/layoutAttributes/coloraxis/colorbar/lenmode
            /// - traces/scatter/attributes/marker/colorbar/lenmode
            /// - traces/bar/attributes/marker/colorbar/lenmode
            /// - traces/heatmap/attributes/colorbar/lenmode
            /// - traces/histogram/attributes/marker/colorbar/lenmode
            /// - traces/histogram2d/attributes/colorbar/lenmode
            /// - traces/histogram2dcontour/attributes/colorbar/lenmode
            /// - traces/contour/attributes/colorbar/lenmode
            /// - traces/scatterternary/attributes/marker/colorbar/lenmode
            /// - traces/funnel/attributes/marker/colorbar/lenmode
            /// - traces/sunburst/attributes/marker/colorbar/lenmode
            /// - traces/treemap/attributes/marker/colorbar/lenmode
            /// - traces/scatter3d/attributes/line/colorbar/lenmode
            /// - traces/scatter3d/attributes/marker/colorbar/lenmode
            /// - traces/surface/attributes/colorbar/lenmode
            /// - traces/isosurface/attributes/colorbar/lenmode
            /// - traces/volume/attributes/colorbar/lenmode
            /// - traces/mesh3d/attributes/colorbar/lenmode
            /// - traces/cone/attributes/colorbar/lenmode
            /// - traces/streamtube/attributes/colorbar/lenmode
            /// - traces/scattergeo/attributes/marker/colorbar/lenmode
            /// - traces/choropleth/attributes/colorbar/lenmode
            /// - traces/scattergl/attributes/marker/colorbar/lenmode
            /// - traces/splom/attributes/marker/colorbar/lenmode
            /// - traces/heatmapgl/attributes/colorbar/lenmode
            /// - traces/parcoords/attributes/line/colorbar/lenmode
            /// - traces/parcats/attributes/line/colorbar/lenmode
            /// - traces/scattermapbox/attributes/marker/colorbar/lenmode
            /// - traces/choroplethmapbox/attributes/colorbar/lenmode
            /// - traces/densitymapbox/attributes/colorbar/lenmode
            /// - traces/scattercarpet/attributes/marker/colorbar/lenmode
            /// - traces/contourcarpet/attributes/colorbar/lenmode
            /// - traces/scatterpolar/attributes/marker/colorbar/lenmode
            public enum LengthMode: String, Encodable {
                case fraction
                case pixels
            }
            /// Determines whether this slider length is set in units of plot *fraction* or in *pixels. 
            ///
            /// Use `len` to set the value.
            public var lengthMode: LengthMode?
        
            /// Sets the length of the color bar This measure excludes the padding of both ends. 
            ///
            /// That is, the color bar length is this length minus the padding on both ends.
            public var length: Double?
        
            /// Sets the x position of the color bar (in plot fraction).
            public var x: Double?
        
            /// Sets the anchor for the x position
            /// - layout/layoutAttributes/images/items/image/xanchor
            /// - layout/layoutAttributes/sliders/items/slider/currentvalue/xanchor
            /// - layout/layoutAttributes/coloraxis/colorbar/xanchor
            /// - traces/scatter/attributes/marker/colorbar/xanchor
            /// - traces/bar/attributes/marker/colorbar/xanchor
            /// - traces/heatmap/attributes/colorbar/xanchor
            /// - traces/histogram/attributes/marker/colorbar/xanchor
            /// - traces/histogram2d/attributes/colorbar/xanchor
            /// - traces/histogram2dcontour/attributes/colorbar/xanchor
            /// - traces/contour/attributes/colorbar/xanchor
            /// - traces/scatterternary/attributes/marker/colorbar/xanchor
            /// - traces/funnel/attributes/marker/colorbar/xanchor
            /// - traces/sunburst/attributes/marker/colorbar/xanchor
            /// - traces/treemap/attributes/marker/colorbar/xanchor
            /// - traces/scatter3d/attributes/line/colorbar/xanchor
            /// - traces/scatter3d/attributes/marker/colorbar/xanchor
            /// - traces/surface/attributes/colorbar/xanchor
            /// - traces/isosurface/attributes/colorbar/xanchor
            /// - traces/volume/attributes/colorbar/xanchor
            /// - traces/mesh3d/attributes/colorbar/xanchor
            /// - traces/cone/attributes/colorbar/xanchor
            /// - traces/streamtube/attributes/colorbar/xanchor
            /// - traces/scattergeo/attributes/marker/colorbar/xanchor
            /// - traces/choropleth/attributes/colorbar/xanchor
            /// - traces/scattergl/attributes/marker/colorbar/xanchor
            /// - traces/splom/attributes/marker/colorbar/xanchor
            /// - traces/heatmapgl/attributes/colorbar/xanchor
            /// - traces/parcoords/attributes/line/colorbar/xanchor
            /// - traces/parcats/attributes/line/colorbar/xanchor
            /// - traces/scattermapbox/attributes/marker/colorbar/xanchor
            /// - traces/choroplethmapbox/attributes/colorbar/xanchor
            /// - traces/densitymapbox/attributes/colorbar/xanchor
            /// - traces/scattercarpet/attributes/marker/colorbar/xanchor
            /// - traces/contourcarpet/attributes/colorbar/xanchor
            /// - traces/scatterpolar/attributes/marker/colorbar/xanchor
            public enum XAnchor: String, Encodable {
                case left
                case center
                case right
            }
            /// Sets the anchor for the x position
            public var xAnchor: XAnchor?
        
            /// Sets the amount of padding (in px) along the x direction.
            public var xPadding: Double?
        
            /// Sets the y position of the color bar (in plot fraction).
            public var y: Double?
        
            /// Sets the anchor for the y position.
            /// - layout/layoutAttributes/images/items/image/yanchor
            /// - layout/layoutAttributes/coloraxis/colorbar/yanchor
            /// - traces/scatter/attributes/marker/colorbar/yanchor
            /// - traces/bar/attributes/marker/colorbar/yanchor
            /// - traces/heatmap/attributes/colorbar/yanchor
            /// - traces/histogram/attributes/marker/colorbar/yanchor
            /// - traces/histogram2d/attributes/colorbar/yanchor
            /// - traces/histogram2dcontour/attributes/colorbar/yanchor
            /// - traces/contour/attributes/colorbar/yanchor
            /// - traces/scatterternary/attributes/marker/colorbar/yanchor
            /// - traces/funnel/attributes/marker/colorbar/yanchor
            /// - traces/sunburst/attributes/marker/colorbar/yanchor
            /// - traces/treemap/attributes/marker/colorbar/yanchor
            /// - traces/scatter3d/attributes/line/colorbar/yanchor
            /// - traces/scatter3d/attributes/marker/colorbar/yanchor
            /// - traces/surface/attributes/colorbar/yanchor
            /// - traces/isosurface/attributes/colorbar/yanchor
            /// - traces/volume/attributes/colorbar/yanchor
            /// - traces/mesh3d/attributes/colorbar/yanchor
            /// - traces/cone/attributes/colorbar/yanchor
            /// - traces/streamtube/attributes/colorbar/yanchor
            /// - traces/scattergeo/attributes/marker/colorbar/yanchor
            /// - traces/choropleth/attributes/colorbar/yanchor
            /// - traces/scattergl/attributes/marker/colorbar/yanchor
            /// - traces/splom/attributes/marker/colorbar/yanchor
            /// - traces/heatmapgl/attributes/colorbar/yanchor
            /// - traces/parcoords/attributes/line/colorbar/yanchor
            /// - traces/parcats/attributes/line/colorbar/yanchor
            /// - traces/scattermapbox/attributes/marker/colorbar/yanchor
            /// - traces/choroplethmapbox/attributes/colorbar/yanchor
            /// - traces/densitymapbox/attributes/colorbar/yanchor
            /// - traces/scattercarpet/attributes/marker/colorbar/yanchor
            /// - traces/contourcarpet/attributes/colorbar/yanchor
            /// - traces/scatterpolar/attributes/marker/colorbar/yanchor
            public enum YAnchor: String, Encodable {
                case top
                case middle
                case bottom
            }
            /// Sets the anchor for the y position.
            public var yAnchor: YAnchor?
        
            /// Sets the amount of padding (in px) along the y direction.
            public var yPading: Double?
        
            /// Sets the axis line color.
            public var outLineColor: Color?
        
            /// Sets the width (in px) of the axis line.
            public var outLineWidth: Double?
        
            /// Sets the axis line color.
            public var borderColor: Color?
        
            /// Sets the width (in px) or the border enclosing this color bar.
            public var borderWidth: Double?
        
            /// Sets the color of padded area.
            public var backgroundColor: Color?
        
            /// Sets the tick mode for this axis. 
            ///
            /// If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is
            /// determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value
            /// if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via
            /// `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is
            /// provided).
            /// - layout/layoutAttributes/xaxis/tickmode
            /// - layout/layoutAttributes/yaxis/tickmode
            /// - layout/layoutAttributes/ternary/aaxis/tickmode
            /// - layout/layoutAttributes/ternary/baxis/tickmode
            /// - layout/layoutAttributes/ternary/caxis/tickmode
            /// - layout/layoutAttributes/scene/xaxis/tickmode
            /// - layout/layoutAttributes/scene/yaxis/tickmode
            /// - layout/layoutAttributes/scene/zaxis/tickmode
            /// - layout/layoutAttributes/polar/radialaxis/tickmode
            /// - layout/layoutAttributes/polar/angularaxis/tickmode
            /// - layout/layoutAttributes/coloraxis/colorbar/tickmode
            /// - traces/scatter/attributes/marker/colorbar/tickmode
            /// - traces/bar/attributes/marker/colorbar/tickmode
            /// - traces/heatmap/attributes/colorbar/tickmode
            /// - traces/histogram/attributes/marker/colorbar/tickmode
            /// - traces/histogram2d/attributes/colorbar/tickmode
            /// - traces/histogram2dcontour/attributes/colorbar/tickmode
            /// - traces/contour/attributes/colorbar/tickmode
            /// - traces/scatterternary/attributes/marker/colorbar/tickmode
            /// - traces/funnel/attributes/marker/colorbar/tickmode
            /// - traces/sunburst/attributes/marker/colorbar/tickmode
            /// - traces/treemap/attributes/marker/colorbar/tickmode
            /// - traces/scatter3d/attributes/line/colorbar/tickmode
            /// - traces/scatter3d/attributes/marker/colorbar/tickmode
            /// - traces/surface/attributes/colorbar/tickmode
            /// - traces/isosurface/attributes/colorbar/tickmode
            /// - traces/volume/attributes/colorbar/tickmode
            /// - traces/mesh3d/attributes/colorbar/tickmode
            /// - traces/cone/attributes/colorbar/tickmode
            /// - traces/streamtube/attributes/colorbar/tickmode
            /// - traces/scattergeo/attributes/marker/colorbar/tickmode
            /// - traces/choropleth/attributes/colorbar/tickmode
            /// - traces/scattergl/attributes/marker/colorbar/tickmode
            /// - traces/splom/attributes/marker/colorbar/tickmode
            /// - traces/heatmapgl/attributes/colorbar/tickmode
            /// - traces/parcoords/attributes/line/colorbar/tickmode
            /// - traces/parcats/attributes/line/colorbar/tickmode
            /// - traces/scattermapbox/attributes/marker/colorbar/tickmode
            /// - traces/choroplethmapbox/attributes/colorbar/tickmode
            /// - traces/densitymapbox/attributes/colorbar/tickmode
            /// - traces/indicator/attributes/gauge/axis/tickmode
            /// - traces/scattercarpet/attributes/marker/colorbar/tickmode
            /// - traces/contourcarpet/attributes/colorbar/tickmode
            /// - traces/scatterpolar/attributes/marker/colorbar/tickmode
            public enum TickMode: String, Encodable {
                case auto
                case linear
                case array
            }
            /// Sets the tick mode for this axis. 
            ///
            /// If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is
            /// determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value
            /// if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via
            /// `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is
            /// provided).
            public var tickMode: TickMode?
        
            /// Specifies the maximum number of ticks for the particular axis. 
            ///
            /// The actual number of ticks will be chosen automatically to be less than or equal to `nticks`.
            /// Has an effect only if `tickmode` is set to *auto*.
            public var numTicks: Int?
        
            /// Sets the placement of the first tick on this axis. 
            ///
            /// Use with `dtick`. If the axis `type` is *log*, then you must take the log of your starting tick
            /// (e.g. to set the starting tick to 100, set the `tick0` to 2) except when `dtick`=*L<f>* (see
            /// `dtick` for more info). If the axis `type` is *date*, it should be a date string, like date
            /// data. If the axis `type` is *category*, it should be a number, using the scale where each
            /// category is assigned a serial number from zero in the order it appears.
            public var tick0: Anything?
        
            /// Sets the step in-between ticks on this axis. 
            ///
            /// Use with `tick0`. Must be a positive number, or special strings available to *log* and *date*
            /// axes. If the axis `type` is *log*, then ticks are set every 10^(n*dtick) where n is the tick
            /// number. For example, to set a tick mark at 1, 10, 100, 1000, ... set dtick to 1. To set tick
            /// marks at 1, 100, 10000, ... set dtick to 2. To set tick marks at 1, 5, 25, 125, 625, 3125, ...
            /// set dtick to log_10(5), or 0.69897000433. *log* has several special values; *L<f>*, where `f` is
            /// a positive number, gives ticks linearly spaced in value (but not position). For example `tick0`
            /// = 0.1, `dtick` = *L0.5* will put ticks at 0.1, 0.6, 1.1, 1.6 etc. To show powers of 10 plus
            /// small digits between, use *D1* (all digits) or *D2* (only 2 and 5). `tick0` is ignored for *D1*
            /// and *D2*. If the axis `type` is *date*, then you must convert the time to milliseconds. For
            /// example, to set the interval between ticks to one day, set `dtick` to 86400000.0. *date* also
            /// has special values *M<n>* gives ticks spaced by a number of months. `n` must be a positive
            /// integer. To set ticks on the 15th of every third month, set `tick0` to *2000-01-15* and `dtick`
            /// to *M3*. To set ticks every 4 years, set `dtick` to *M48*
            public var dTick: Anything?
        
            /// Sets the values at which ticks on this axis appear. 
            ///
            /// Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
            public var tickValues: [Double]?
        
            /// Sets the text displayed at the ticks position via `tickvals`. 
            ///
            /// Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
            public var tickText: [Double]?
        
            /// Determines whether ticks are drawn or not. 
            ///
            /// If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside
            /// (inside) the axis lines.
            /// - layout/layoutAttributes/xaxis/ticks
            /// - layout/layoutAttributes/yaxis/ticks
            /// - layout/layoutAttributes/ternary/aaxis/ticks
            /// - layout/layoutAttributes/ternary/baxis/ticks
            /// - layout/layoutAttributes/ternary/caxis/ticks
            /// - layout/layoutAttributes/scene/xaxis/ticks
            /// - layout/layoutAttributes/scene/yaxis/ticks
            /// - layout/layoutAttributes/scene/zaxis/ticks
            /// - layout/layoutAttributes/polar/radialaxis/ticks
            /// - layout/layoutAttributes/polar/angularaxis/ticks
            /// - layout/layoutAttributes/coloraxis/colorbar/ticks
            /// - traces/scatter/attributes/marker/colorbar/ticks
            /// - traces/bar/attributes/marker/colorbar/ticks
            /// - traces/heatmap/attributes/colorbar/ticks
            /// - traces/histogram/attributes/marker/colorbar/ticks
            /// - traces/histogram2d/attributes/colorbar/ticks
            /// - traces/histogram2dcontour/attributes/colorbar/ticks
            /// - traces/contour/attributes/colorbar/ticks
            /// - traces/scatterternary/attributes/marker/colorbar/ticks
            /// - traces/funnel/attributes/marker/colorbar/ticks
            /// - traces/sunburst/attributes/marker/colorbar/ticks
            /// - traces/treemap/attributes/marker/colorbar/ticks
            /// - traces/scatter3d/attributes/line/colorbar/ticks
            /// - traces/scatter3d/attributes/marker/colorbar/ticks
            /// - traces/surface/attributes/colorbar/ticks
            /// - traces/isosurface/attributes/colorbar/ticks
            /// - traces/volume/attributes/colorbar/ticks
            /// - traces/mesh3d/attributes/colorbar/ticks
            /// - traces/cone/attributes/colorbar/ticks
            /// - traces/streamtube/attributes/colorbar/ticks
            /// - traces/scattergeo/attributes/marker/colorbar/ticks
            /// - traces/choropleth/attributes/colorbar/ticks
            /// - traces/scattergl/attributes/marker/colorbar/ticks
            /// - traces/splom/attributes/marker/colorbar/ticks
            /// - traces/heatmapgl/attributes/colorbar/ticks
            /// - traces/parcoords/attributes/line/colorbar/ticks
            /// - traces/parcats/attributes/line/colorbar/ticks
            /// - traces/scattermapbox/attributes/marker/colorbar/ticks
            /// - traces/choroplethmapbox/attributes/colorbar/ticks
            /// - traces/densitymapbox/attributes/colorbar/ticks
            /// - traces/indicator/attributes/gauge/axis/ticks
            /// - traces/scattercarpet/attributes/marker/colorbar/ticks
            /// - traces/contourcarpet/attributes/colorbar/ticks
            /// - traces/scatterpolar/attributes/marker/colorbar/ticks
            public enum Ticks: String, Encodable {
                case outside
                case inside
                case none = ""
            }
            /// Determines whether ticks are drawn or not. 
            ///
            /// If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside
            /// (inside) the axis lines.
            public var ticks: Ticks?
        
            /// Sets the tick length (in px).
            public var tickLength: Double?
        
            /// Sets the tick width (in px).
            public var tickWidth: Double?
        
            /// Sets the tick color.
            public var tickColor: Color?
        
            /// Determines whether or not the tick labels are drawn.
            public var showTickLabels: Bool?
        
            /// Sets the color bar's tick label font
            /// - traces/scatterpolar/attributes/marker/colorbar/tickfont
            public struct TickFont: Encodable {
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
            
                public init(family: String? = nil, size: Double? = nil, color: Color? = nil) {
                    self.family = family
                    self.size = size
                    self.color = color
                }
            }
            /// Sets the color bar's tick label font
            public var tickFont: TickFont?
        
            /// Sets the angle of the tick labels with respect to the horizontal. 
            ///
            /// For example, a `tickangle` of -90 draws the tick labels vertically.
            public var tickAngle: Angle?
        
            /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to those in Python. 
            ///
            /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
            /// And for dates see:
            /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
            /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
            /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            public var tickFormat: String?
        
            /// - traces/scatterpolar/attributes/marker/colorbar/tickformatstops
            public struct TickFormatStops: Encodable {
                /// - traces/scatterpolar/attributes/marker/colorbar/tickformatstops/items
                public struct Items: Encodable {
                    /// - traces/scatterpolar/attributes/marker/colorbar/tickformatstops/items/tickformatstop
                    public struct TickFormatStop: Encodable {
                        /// Determines whether or not this stop is used. 
                        ///
                        /// If `false`, this stop is ignored even within its `dtickrange`.
                        public var enabled: Bool?
                    
                        /// range [*min*, *max*], where *min*, *max* - dtick values which describe some zoom level, it is possible to omit *min* or *max* value by passing *null*
                        public var dTickRange: InfoArray?
                    
                        /// string - dtickformat for described zoom level, the same as *tickformat*
                        public var value: String?
                    
                        /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. 
                        ///
                        /// You can modify these items in the output figure by making your own item with `templateitemname`
                        /// matching this `name` alongside your modifications (including `visible: false` or `enabled:
                        /// false` to hide it). Has no effect outside of a template.
                        public var name: String?
                    
                        /// Used to refer to a named item in this array in the template. 
                        ///
                        /// Named items from the template will be created even without a matching item in the input figure,
                        /// but you can modify one by making an item with `templateitemname` matching its `name`, alongside
                        /// your modifications (including `visible: false` or `enabled: false` to hide it). If there is no
                        /// template or no matching item, this item will be hidden unless you explicitly show it with
                        /// `visible: true`.
                        public var templateItemName: String?
                    
                        public init(enabled: Bool? = nil, dTickRange: InfoArray? = nil, value: String? = nil, name: String? = nil, templateItemName: String? = nil) {
                            self.enabled = enabled
                            self.dTickRange = dTickRange
                            self.value = value
                            self.name = name
                            self.templateItemName = templateItemName
                        }
                    }
                    public var tickFormatStop: TickFormatStop?
                
                    public init(tickFormatStop: TickFormatStop? = nil) {
                        self.tickFormatStop = tickFormatStop
                    }
                }
                public var items: Items?
            
                public init(items: Items? = nil) {
                    self.items = items
                }
            }
            public var tickFormatStops: TickFormatStops?
        
            /// Sets a tick label prefix.
            public var tickPrefix: String?
        
            /// If *all*, all tick labels are displayed with a prefix. 
            ///
            /// If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is
            /// displayed with a suffix. If *none*, tick prefixes are hidden.
            /// - layout/layoutAttributes/xaxis/showtickprefix
            /// - layout/layoutAttributes/yaxis/showtickprefix
            /// - layout/layoutAttributes/ternary/aaxis/showtickprefix
            /// - layout/layoutAttributes/ternary/baxis/showtickprefix
            /// - layout/layoutAttributes/ternary/caxis/showtickprefix
            /// - layout/layoutAttributes/scene/xaxis/showtickprefix
            /// - layout/layoutAttributes/scene/yaxis/showtickprefix
            /// - layout/layoutAttributes/scene/zaxis/showtickprefix
            /// - layout/layoutAttributes/polar/radialaxis/showtickprefix
            /// - layout/layoutAttributes/polar/angularaxis/showtickprefix
            /// - layout/layoutAttributes/coloraxis/colorbar/showtickprefix
            /// - traces/scatter/attributes/marker/colorbar/showtickprefix
            /// - traces/bar/attributes/marker/colorbar/showtickprefix
            /// - traces/heatmap/attributes/colorbar/showtickprefix
            /// - traces/histogram/attributes/marker/colorbar/showtickprefix
            /// - traces/histogram2d/attributes/colorbar/showtickprefix
            /// - traces/histogram2dcontour/attributes/colorbar/showtickprefix
            /// - traces/contour/attributes/colorbar/showtickprefix
            /// - traces/scatterternary/attributes/marker/colorbar/showtickprefix
            /// - traces/funnel/attributes/marker/colorbar/showtickprefix
            /// - traces/sunburst/attributes/marker/colorbar/showtickprefix
            /// - traces/treemap/attributes/marker/colorbar/showtickprefix
            /// - traces/scatter3d/attributes/line/colorbar/showtickprefix
            /// - traces/scatter3d/attributes/marker/colorbar/showtickprefix
            /// - traces/surface/attributes/colorbar/showtickprefix
            /// - traces/isosurface/attributes/colorbar/showtickprefix
            /// - traces/volume/attributes/colorbar/showtickprefix
            /// - traces/mesh3d/attributes/colorbar/showtickprefix
            /// - traces/cone/attributes/colorbar/showtickprefix
            /// - traces/streamtube/attributes/colorbar/showtickprefix
            /// - traces/scattergeo/attributes/marker/colorbar/showtickprefix
            /// - traces/choropleth/attributes/colorbar/showtickprefix
            /// - traces/scattergl/attributes/marker/colorbar/showtickprefix
            /// - traces/splom/attributes/marker/colorbar/showtickprefix
            /// - traces/heatmapgl/attributes/colorbar/showtickprefix
            /// - traces/parcoords/attributes/line/colorbar/showtickprefix
            /// - traces/parcats/attributes/line/colorbar/showtickprefix
            /// - traces/scattermapbox/attributes/marker/colorbar/showtickprefix
            /// - traces/choroplethmapbox/attributes/colorbar/showtickprefix
            /// - traces/densitymapbox/attributes/colorbar/showtickprefix
            /// - traces/indicator/attributes/gauge/axis/showtickprefix
            /// - traces/carpet/attributes/aaxis/showtickprefix
            /// - traces/carpet/attributes/baxis/showtickprefix
            /// - traces/scattercarpet/attributes/marker/colorbar/showtickprefix
            /// - traces/contourcarpet/attributes/colorbar/showtickprefix
            /// - traces/scatterpolar/attributes/marker/colorbar/showtickprefix
            public enum ShowTickPrefix: String, Encodable {
                case all
                case first
                case last
                case none
            }
            /// If *all*, all tick labels are displayed with a prefix. 
            ///
            /// If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is
            /// displayed with a suffix. If *none*, tick prefixes are hidden.
            public var showTickPrefix: ShowTickPrefix?
        
            /// Sets a tick label suffix.
            public var tickSuffix: String?
        
            /// Same as `showtickprefix` but for tick suffixes.
            /// - layout/layoutAttributes/xaxis/showticksuffix
            /// - layout/layoutAttributes/yaxis/showticksuffix
            /// - layout/layoutAttributes/ternary/aaxis/showticksuffix
            /// - layout/layoutAttributes/ternary/baxis/showticksuffix
            /// - layout/layoutAttributes/ternary/caxis/showticksuffix
            /// - layout/layoutAttributes/scene/xaxis/showticksuffix
            /// - layout/layoutAttributes/scene/yaxis/showticksuffix
            /// - layout/layoutAttributes/scene/zaxis/showticksuffix
            /// - layout/layoutAttributes/polar/radialaxis/showticksuffix
            /// - layout/layoutAttributes/polar/angularaxis/showticksuffix
            /// - layout/layoutAttributes/coloraxis/colorbar/showticksuffix
            /// - traces/scatter/attributes/marker/colorbar/showticksuffix
            /// - traces/bar/attributes/marker/colorbar/showticksuffix
            /// - traces/heatmap/attributes/colorbar/showticksuffix
            /// - traces/histogram/attributes/marker/colorbar/showticksuffix
            /// - traces/histogram2d/attributes/colorbar/showticksuffix
            /// - traces/histogram2dcontour/attributes/colorbar/showticksuffix
            /// - traces/contour/attributes/colorbar/showticksuffix
            /// - traces/scatterternary/attributes/marker/colorbar/showticksuffix
            /// - traces/funnel/attributes/marker/colorbar/showticksuffix
            /// - traces/sunburst/attributes/marker/colorbar/showticksuffix
            /// - traces/treemap/attributes/marker/colorbar/showticksuffix
            /// - traces/scatter3d/attributes/line/colorbar/showticksuffix
            /// - traces/scatter3d/attributes/marker/colorbar/showticksuffix
            /// - traces/surface/attributes/colorbar/showticksuffix
            /// - traces/isosurface/attributes/colorbar/showticksuffix
            /// - traces/volume/attributes/colorbar/showticksuffix
            /// - traces/mesh3d/attributes/colorbar/showticksuffix
            /// - traces/cone/attributes/colorbar/showticksuffix
            /// - traces/streamtube/attributes/colorbar/showticksuffix
            /// - traces/scattergeo/attributes/marker/colorbar/showticksuffix
            /// - traces/choropleth/attributes/colorbar/showticksuffix
            /// - traces/scattergl/attributes/marker/colorbar/showticksuffix
            /// - traces/splom/attributes/marker/colorbar/showticksuffix
            /// - traces/heatmapgl/attributes/colorbar/showticksuffix
            /// - traces/parcoords/attributes/line/colorbar/showticksuffix
            /// - traces/parcats/attributes/line/colorbar/showticksuffix
            /// - traces/scattermapbox/attributes/marker/colorbar/showticksuffix
            /// - traces/choroplethmapbox/attributes/colorbar/showticksuffix
            /// - traces/densitymapbox/attributes/colorbar/showticksuffix
            /// - traces/indicator/attributes/gauge/axis/showticksuffix
            /// - traces/carpet/attributes/aaxis/showticksuffix
            /// - traces/carpet/attributes/baxis/showticksuffix
            /// - traces/scattercarpet/attributes/marker/colorbar/showticksuffix
            /// - traces/contourcarpet/attributes/colorbar/showticksuffix
            /// - traces/scatterpolar/attributes/marker/colorbar/showticksuffix
            public enum ShowTickSuffix: String, Encodable {
                case all
                case first
                case last
                case none
            }
            /// Same as `showtickprefix` but for tick suffixes.
            public var showTickSuffix: ShowTickSuffix?
        
            /// If "true", even 4-digit integers are separated
            public var separatethousands: Bool?
        
            /// Determines a formatting rule for the tick exponents. 
            ///
            /// For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*,
            /// 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
            /// - layout/layoutAttributes/xaxis/exponentformat
            /// - layout/layoutAttributes/yaxis/exponentformat
            /// - layout/layoutAttributes/ternary/aaxis/exponentformat
            /// - layout/layoutAttributes/ternary/baxis/exponentformat
            /// - layout/layoutAttributes/ternary/caxis/exponentformat
            /// - layout/layoutAttributes/scene/xaxis/exponentformat
            /// - layout/layoutAttributes/scene/yaxis/exponentformat
            /// - layout/layoutAttributes/scene/zaxis/exponentformat
            /// - layout/layoutAttributes/polar/radialaxis/exponentformat
            /// - layout/layoutAttributes/polar/angularaxis/exponentformat
            /// - layout/layoutAttributes/coloraxis/colorbar/exponentformat
            /// - traces/scatter/attributes/marker/colorbar/exponentformat
            /// - traces/bar/attributes/marker/colorbar/exponentformat
            /// - traces/heatmap/attributes/colorbar/exponentformat
            /// - traces/histogram/attributes/marker/colorbar/exponentformat
            /// - traces/histogram2d/attributes/colorbar/exponentformat
            /// - traces/histogram2dcontour/attributes/colorbar/exponentformat
            /// - traces/contour/attributes/colorbar/exponentformat
            /// - traces/scatterternary/attributes/marker/colorbar/exponentformat
            /// - traces/funnel/attributes/marker/colorbar/exponentformat
            /// - traces/sunburst/attributes/marker/colorbar/exponentformat
            /// - traces/treemap/attributes/marker/colorbar/exponentformat
            /// - traces/scatter3d/attributes/line/colorbar/exponentformat
            /// - traces/scatter3d/attributes/marker/colorbar/exponentformat
            /// - traces/surface/attributes/colorbar/exponentformat
            /// - traces/isosurface/attributes/colorbar/exponentformat
            /// - traces/volume/attributes/colorbar/exponentformat
            /// - traces/mesh3d/attributes/colorbar/exponentformat
            /// - traces/cone/attributes/colorbar/exponentformat
            /// - traces/streamtube/attributes/colorbar/exponentformat
            /// - traces/scattergeo/attributes/marker/colorbar/exponentformat
            /// - traces/choropleth/attributes/colorbar/exponentformat
            /// - traces/scattergl/attributes/marker/colorbar/exponentformat
            /// - traces/splom/attributes/marker/colorbar/exponentformat
            /// - traces/heatmapgl/attributes/colorbar/exponentformat
            /// - traces/parcoords/attributes/line/colorbar/exponentformat
            /// - traces/parcats/attributes/line/colorbar/exponentformat
            /// - traces/scattermapbox/attributes/marker/colorbar/exponentformat
            /// - traces/choroplethmapbox/attributes/colorbar/exponentformat
            /// - traces/densitymapbox/attributes/colorbar/exponentformat
            /// - traces/indicator/attributes/gauge/axis/exponentformat
            /// - traces/carpet/attributes/aaxis/exponentformat
            /// - traces/carpet/attributes/baxis/exponentformat
            /// - traces/scattercarpet/attributes/marker/colorbar/exponentformat
            /// - traces/contourcarpet/attributes/colorbar/exponentformat
            /// - traces/scatterpolar/attributes/marker/colorbar/exponentformat
            public enum ExponentFormat: String, Encodable {
                case none
                case e
                case E
                case power
                case SI
                case B
            }
            /// Determines a formatting rule for the tick exponents. 
            ///
            /// For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*,
            /// 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
            public var exponentFormat: ExponentFormat?
        
            /// If *all*, all exponents are shown besides their significands. 
            ///
            /// If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the
            /// last tick is shown. If *none*, no exponents appear.
            /// - layout/layoutAttributes/xaxis/showexponent
            /// - layout/layoutAttributes/yaxis/showexponent
            /// - layout/layoutAttributes/ternary/aaxis/showexponent
            /// - layout/layoutAttributes/ternary/baxis/showexponent
            /// - layout/layoutAttributes/ternary/caxis/showexponent
            /// - layout/layoutAttributes/scene/xaxis/showexponent
            /// - layout/layoutAttributes/scene/yaxis/showexponent
            /// - layout/layoutAttributes/scene/zaxis/showexponent
            /// - layout/layoutAttributes/polar/radialaxis/showexponent
            /// - layout/layoutAttributes/polar/angularaxis/showexponent
            /// - layout/layoutAttributes/coloraxis/colorbar/showexponent
            /// - traces/scatter/attributes/marker/colorbar/showexponent
            /// - traces/bar/attributes/marker/colorbar/showexponent
            /// - traces/heatmap/attributes/colorbar/showexponent
            /// - traces/histogram/attributes/marker/colorbar/showexponent
            /// - traces/histogram2d/attributes/colorbar/showexponent
            /// - traces/histogram2dcontour/attributes/colorbar/showexponent
            /// - traces/contour/attributes/colorbar/showexponent
            /// - traces/scatterternary/attributes/marker/colorbar/showexponent
            /// - traces/funnel/attributes/marker/colorbar/showexponent
            /// - traces/sunburst/attributes/marker/colorbar/showexponent
            /// - traces/treemap/attributes/marker/colorbar/showexponent
            /// - traces/scatter3d/attributes/line/colorbar/showexponent
            /// - traces/scatter3d/attributes/marker/colorbar/showexponent
            /// - traces/surface/attributes/colorbar/showexponent
            /// - traces/isosurface/attributes/colorbar/showexponent
            /// - traces/volume/attributes/colorbar/showexponent
            /// - traces/mesh3d/attributes/colorbar/showexponent
            /// - traces/cone/attributes/colorbar/showexponent
            /// - traces/streamtube/attributes/colorbar/showexponent
            /// - traces/scattergeo/attributes/marker/colorbar/showexponent
            /// - traces/choropleth/attributes/colorbar/showexponent
            /// - traces/scattergl/attributes/marker/colorbar/showexponent
            /// - traces/splom/attributes/marker/colorbar/showexponent
            /// - traces/heatmapgl/attributes/colorbar/showexponent
            /// - traces/parcoords/attributes/line/colorbar/showexponent
            /// - traces/parcats/attributes/line/colorbar/showexponent
            /// - traces/scattermapbox/attributes/marker/colorbar/showexponent
            /// - traces/choroplethmapbox/attributes/colorbar/showexponent
            /// - traces/densitymapbox/attributes/colorbar/showexponent
            /// - traces/indicator/attributes/gauge/axis/showexponent
            /// - traces/carpet/attributes/aaxis/showexponent
            /// - traces/carpet/attributes/baxis/showexponent
            /// - traces/scattercarpet/attributes/marker/colorbar/showexponent
            /// - traces/contourcarpet/attributes/colorbar/showexponent
            /// - traces/scatterpolar/attributes/marker/colorbar/showexponent
            public enum ShowExponent: String, Encodable {
                case all
                case first
                case last
                case none
            }
            /// If *all*, all exponents are shown besides their significands. 
            ///
            /// If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the
            /// last tick is shown. If *none*, no exponents appear.
            public var showExponent: ShowExponent?
        
            /// - traces/scatterpolar/attributes/marker/colorbar/title
            public struct Title: Encodable {
                /// Sets the title of the color bar. 
                ///
                /// Note that before the existence of `title.text`, the title's contents used to be defined as the
                /// `title` attribute itself. This behavior has been deprecated.
                public var text: String?
            
                /// Sets this color bar's title font. 
                ///
                /// Note that the title's font used to be set by the now deprecated `titlefont` attribute.
                /// - traces/scatterpolar/attributes/marker/colorbar/title/font
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
                
                    public init(family: String? = nil, size: Double? = nil, color: Color? = nil) {
                        self.family = family
                        self.size = size
                        self.color = color
                    }
                }
                /// Sets this color bar's title font. 
                ///
                /// Note that the title's font used to be set by the now deprecated `titlefont` attribute.
                public var font: Font?
            
                /// Determines the location of color bar's title with respect to the color bar. 
                ///
                /// Note that the title's location used to be set by the now deprecated `titleside` attribute.
                /// - layout/layoutAttributes/coloraxis/colorbar/title/side
                /// - traces/scatter/attributes/marker/colorbar/title/side
                /// - traces/bar/attributes/marker/colorbar/title/side
                /// - traces/heatmap/attributes/colorbar/title/side
                /// - traces/histogram/attributes/marker/colorbar/title/side
                /// - traces/histogram2d/attributes/colorbar/title/side
                /// - traces/histogram2dcontour/attributes/colorbar/title/side
                /// - traces/contour/attributes/colorbar/title/side
                /// - traces/scatterternary/attributes/marker/colorbar/title/side
                /// - traces/funnel/attributes/marker/colorbar/title/side
                /// - traces/sunburst/attributes/marker/colorbar/title/side
                /// - traces/treemap/attributes/marker/colorbar/title/side
                /// - traces/scatter3d/attributes/line/colorbar/title/side
                /// - traces/scatter3d/attributes/marker/colorbar/title/side
                /// - traces/surface/attributes/colorbar/title/side
                /// - traces/isosurface/attributes/colorbar/title/side
                /// - traces/volume/attributes/colorbar/title/side
                /// - traces/mesh3d/attributes/colorbar/title/side
                /// - traces/cone/attributes/colorbar/title/side
                /// - traces/streamtube/attributes/colorbar/title/side
                /// - traces/scattergeo/attributes/marker/colorbar/title/side
                /// - traces/choropleth/attributes/colorbar/title/side
                /// - traces/scattergl/attributes/marker/colorbar/title/side
                /// - traces/splom/attributes/marker/colorbar/title/side
                /// - traces/heatmapgl/attributes/colorbar/title/side
                /// - traces/parcoords/attributes/line/colorbar/title/side
                /// - traces/parcats/attributes/line/colorbar/title/side
                /// - traces/scattermapbox/attributes/marker/colorbar/title/side
                /// - traces/choroplethmapbox/attributes/colorbar/title/side
                /// - traces/densitymapbox/attributes/colorbar/title/side
                /// - traces/scattercarpet/attributes/marker/colorbar/title/side
                /// - traces/contourcarpet/attributes/colorbar/title/side
                /// - traces/scatterpolar/attributes/marker/colorbar/title/side
                public enum Side: String, Encodable {
                    case right
                    case top
                    case bottom
                }
                /// Determines the location of color bar's title with respect to the color bar. 
                ///
                /// Note that the title's location used to be set by the now deprecated `titleside` attribute.
                public var side: Side?
            
                public init(text: String? = nil, font: Font? = nil, side: Side? = nil) {
                    self.text = text
                    self.font = font
                    self.side = side
                }
            }
            public var title: Title?
        
            /// - traces/scatterpolar/attributes/marker/colorbar/_deprecated
            public struct Deprecated: Encodable {
                /// Deprecated in favor of color bar's `title.text`. 
                ///
                /// Note that value of color bar's `title` is no longer a simple *string* but a set of
                /// sub-attributes.
                public var title: String?
            
                /// Deprecated in favor of color bar's `title.font`.
                /// - traces/scatterpolar/attributes/marker/colorbar/_deprecated/titlefont
                public struct TitleFont: Encodable {
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
                
                    public init(family: String? = nil, size: Double? = nil, color: Color? = nil) {
                        self.family = family
                        self.size = size
                        self.color = color
                    }
                }
                /// Deprecated in favor of color bar's `title.font`.
                public var titleFont: TitleFont?
            
                /// Deprecated in favor of color bar's `title.side`.
                /// - layout/layoutAttributes/coloraxis/colorbar/_deprecated/titleside
                /// - traces/scatter/attributes/marker/colorbar/_deprecated/titleside
                /// - traces/bar/attributes/marker/colorbar/_deprecated/titleside
                /// - traces/heatmap/attributes/colorbar/_deprecated/titleside
                /// - traces/histogram/attributes/marker/colorbar/_deprecated/titleside
                /// - traces/histogram2d/attributes/colorbar/_deprecated/titleside
                /// - traces/histogram2dcontour/attributes/colorbar/_deprecated/titleside
                /// - traces/contour/attributes/colorbar/_deprecated/titleside
                /// - traces/scatterternary/attributes/marker/colorbar/_deprecated/titleside
                /// - traces/funnel/attributes/marker/colorbar/_deprecated/titleside
                /// - traces/sunburst/attributes/marker/colorbar/_deprecated/titleside
                /// - traces/treemap/attributes/marker/colorbar/_deprecated/titleside
                /// - traces/scatter3d/attributes/line/colorbar/_deprecated/titleside
                /// - traces/scatter3d/attributes/marker/colorbar/_deprecated/titleside
                /// - traces/surface/attributes/colorbar/_deprecated/titleside
                /// - traces/isosurface/attributes/colorbar/_deprecated/titleside
                /// - traces/volume/attributes/colorbar/_deprecated/titleside
                /// - traces/mesh3d/attributes/colorbar/_deprecated/titleside
                /// - traces/cone/attributes/colorbar/_deprecated/titleside
                /// - traces/streamtube/attributes/colorbar/_deprecated/titleside
                /// - traces/scattergeo/attributes/marker/colorbar/_deprecated/titleside
                /// - traces/choropleth/attributes/colorbar/_deprecated/titleside
                /// - traces/scattergl/attributes/marker/colorbar/_deprecated/titleside
                /// - traces/splom/attributes/marker/colorbar/_deprecated/titleside
                /// - traces/heatmapgl/attributes/colorbar/_deprecated/titleside
                /// - traces/parcoords/attributes/line/colorbar/_deprecated/titleside
                /// - traces/parcats/attributes/line/colorbar/_deprecated/titleside
                /// - traces/scattermapbox/attributes/marker/colorbar/_deprecated/titleside
                /// - traces/choroplethmapbox/attributes/colorbar/_deprecated/titleside
                /// - traces/densitymapbox/attributes/colorbar/_deprecated/titleside
                /// - traces/scattercarpet/attributes/marker/colorbar/_deprecated/titleside
                /// - traces/contourcarpet/attributes/colorbar/_deprecated/titleside
                /// - traces/scatterpolar/attributes/marker/colorbar/_deprecated/titleside
                public enum TitleSide: String, Encodable {
                    case right
                    case top
                    case bottom
                }
                /// Deprecated in favor of color bar's `title.side`.
                public var titleSide: TitleSide?
            
                public init(title: String? = nil, titleFont: TitleFont? = nil, titleSide: TitleSide? = nil) {
                    self.title = title
                    self.titleFont = titleFont
                    self.titleSide = titleSide
                }
            }
            public var deprecated: Deprecated?
        
            /// Sets the source reference on plot.ly for  tickvals .
            public var tickValuesSource: String?
        
            /// Sets the source reference on plot.ly for  ticktext .
            public var tickTextSource: String?
        
            public init(thicknessMode: ThicknessMode? = nil, thickness: Double? = nil, lengthMode: LengthMode? = nil, length: Double? = nil, x: Double? = nil, xAnchor: XAnchor? = nil, xPadding: Double? = nil, y: Double? = nil, yAnchor: YAnchor? = nil, yPading: Double? = nil, outLineColor: Color? = nil, outLineWidth: Double? = nil, borderColor: Color? = nil, borderWidth: Double? = nil, backgroundColor: Color? = nil, tickMode: TickMode? = nil, numTicks: Int? = nil, tick0: Anything? = nil, dTick: Anything? = nil, tickValues: [Double]? = nil, tickText: [Double]? = nil, ticks: Ticks? = nil, tickLength: Double? = nil, tickWidth: Double? = nil, tickColor: Color? = nil, showTickLabels: Bool? = nil, tickFont: TickFont? = nil, tickAngle: Angle? = nil, tickFormat: String? = nil, tickFormatStops: TickFormatStops? = nil, tickPrefix: String? = nil, showTickPrefix: ShowTickPrefix? = nil, tickSuffix: String? = nil, showTickSuffix: ShowTickSuffix? = nil, separatethousands: Bool? = nil, exponentFormat: ExponentFormat? = nil, showExponent: ShowExponent? = nil, title: Title? = nil, deprecated: Deprecated? = nil, tickValuesSource: String? = nil, tickTextSource: String? = nil) {
                self.thicknessMode = thicknessMode
                self.thickness = thickness
                self.lengthMode = lengthMode
                self.length = length
                self.x = x
                self.xAnchor = xAnchor
                self.xPadding = xPadding
                self.y = y
                self.yAnchor = yAnchor
                self.yPading = yPading
                self.outLineColor = outLineColor
                self.outLineWidth = outLineWidth
                self.borderColor = borderColor
                self.borderWidth = borderWidth
                self.backgroundColor = backgroundColor
                self.tickMode = tickMode
                self.numTicks = numTicks
                self.tick0 = tick0
                self.dTick = dTick
                self.tickValues = tickValues
                self.tickText = tickText
                self.ticks = ticks
                self.tickLength = tickLength
                self.tickWidth = tickWidth
                self.tickColor = tickColor
                self.showTickLabels = showTickLabels
                self.tickFont = tickFont
                self.tickAngle = tickAngle
                self.tickFormat = tickFormat
                self.tickFormatStops = tickFormatStops
                self.tickPrefix = tickPrefix
                self.showTickPrefix = showTickPrefix
                self.tickSuffix = tickSuffix
                self.showTickSuffix = showTickSuffix
                self.separatethousands = separatethousands
                self.exponentFormat = exponentFormat
                self.showExponent = showExponent
                self.title = title
                self.deprecated = deprecated
                self.tickValuesSource = tickValuesSource
                self.tickTextSource = tickTextSource
            }
        }
        public var colorBar: ColorBar?
    
        /// Sets a reference to a shared color axis. 
        ///
        /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
        /// for these shared color axes are set in the layout, under `layout.coloraxis`,
        /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
        public var colorAxis: SubPlotID?
    
        /// Sets the source reference on plot.ly for  symbol .
        public var symbolSource: String?
    
        /// Sets the source reference on plot.ly for  opacity .
        public var opacitySource: String?
    
        /// Sets the source reference on plot.ly for  size .
        public var sizeSource: String?
    
        /// Sets the source reference on plot.ly for  color .
        public var colorSource: String?
    
        public init(symbol: Symbol? = nil, opacity: Double? = nil, size: Double? = nil, maxDisplayed: Double? = nil, sizeReference: Double? = nil, sizeMin: Double? = nil, sizeMode: SizeMode? = nil, line: Line? = nil, gradient: Gradient? = nil, color: Color? = nil, cAuto: Bool? = nil, cMin: Double? = nil, cMax: Double? = nil, cMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: ColorBar? = nil, colorAxis: SubPlotID? = nil, symbolSource: String? = nil, opacitySource: String? = nil, sizeSource: String? = nil, colorSource: String? = nil) {
            self.symbol = symbol
            self.opacity = opacity
            self.size = size
            self.maxDisplayed = maxDisplayed
            self.sizeReference = sizeReference
            self.sizeMin = sizeMin
            self.sizeMode = sizeMode
            self.line = line
            self.gradient = gradient
            self.color = color
            self.cAuto = cAuto
            self.cMin = cMin
            self.cMax = cMax
            self.cMiddle = cMiddle
            self.colorScale = colorScale
            self.autoColorScale = autoColorScale
            self.reverseScale = reverseScale
            self.showScale = showScale
            self.colorBar = colorBar
            self.colorAxis = colorAxis
            self.symbolSource = symbolSource
            self.opacitySource = opacitySource
            self.sizeSource = sizeSource
            self.colorSource = colorSource
        }
    }
    public var marker: Marker?

    /// Determines whether or not markers and text nodes are clipped about the subplot axes. 
    ///
    /// To show markers and text nodes above axis lines and tick labels, make sure to set `xaxis.layer`
    /// and `yaxis.layer` to *below traces*.
    public var clipOnAxis: Bool?

    /// Sets the positions of the `text` elements with respects to the (x,y) coordinates.
    /// - layout/layoutAttributes/mapbox/layers/items/layer/symbol/textposition
    /// - traces/scatter/attributes/textposition
    /// - traces/scatterternary/attributes/textposition
    /// - traces/treemap/attributes/textposition
    /// - traces/scatter3d/attributes/textposition
    /// - traces/scattergeo/attributes/textposition
    /// - traces/scattergl/attributes/textposition
    /// - traces/scattermapbox/attributes/textposition
    /// - traces/scattercarpet/attributes/textposition
    /// - traces/scatterpolar/attributes/textposition
    public enum TextPosition: String, Encodable {
        case topLeft = "top left"
        case topCenter = "top center"
        case topRight = "top right"
        case middleLeft = "middle left"
        case middleCenter = "middle center"
        case middleRight = "middle right"
        case bottomLeft = "bottom left"
        case bottomCenter = "bottom center"
        case bottomRight = "bottom right"
    }
    /// Sets the positions of the `text` elements with respects to the (x,y) coordinates.
    public var textPosition: TextPosition?

    /// Sets the text font.
    /// - traces/scatterpolar/attributes/textfont
    public struct TextFont: Encodable {
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
    /// Sets the text font.
    public var textFont: TextFont?

    /// Sets the area to fill with a solid color. 
    ///
    /// Use with `fillcolor` if not *none*. scatterternary has a subset of the options available to
    /// scatter. *toself* connects the endpoints of the trace (or each segment of the trace if it has
    /// gaps) into a closed shape. *tonext* fills the space between two traces if one completely
    /// encloses the other (eg consecutive contour lines), and behaves like *toself* if there is no
    /// trace before it. *tonext* should not be used if one trace does not enclose the other.
    /// - traces/scatterternary/attributes/fill
    /// - traces/scattercarpet/attributes/fill
    /// - traces/scatterpolar/attributes/fill
    public enum Fill: String, Encodable {
        case none
        case toSelf = "toself"
        case toNext = "tonext"
    }
    /// Sets the area to fill with a solid color. 
    ///
    /// Use with `fillcolor` if not *none*. scatterternary has a subset of the options available to
    /// scatter. *toself* connects the endpoints of the trace (or each segment of the trace if it has
    /// gaps) into a closed shape. *tonext* fills the space between two traces if one completely
    /// encloses the other (eg consecutive contour lines), and behaves like *toself* if there is no
    /// trace before it. *tonext* should not be used if one trace does not enclose the other.
    public var fill: Fill?

    /// Sets the fill color. 
    ///
    /// Defaults to a half-transparent variant of the line color, marker color, or marker line color,
    /// whichever is available.
    public var fillColor: Color?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    /// - traces/scatterpolar/attributes/hoverinfo
    public struct HoverInfo: OptionSet, Encodable {
        public let rawValue: Int
    
        public static let r = HoverInfo(rawValue: 1 << 0)
        public static let theta = HoverInfo(rawValue: 1 << 1)
        public static let text = HoverInfo(rawValue: 1 << 2)
        public static let name = HoverInfo(rawValue: 1 << 3)
        public static let all = HoverInfo(rawValue: 1 << 4)
        public static let none = HoverInfo(rawValue: 1 << 5)
        public static let skip = HoverInfo(rawValue: 1 << 6)
    
        public init(rawValue: Int) { self.rawValue = rawValue }
    
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["r"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["theta"] }
            if (self.rawValue & 1 << 2) != 0 { options += ["text"] }
            if (self.rawValue & 1 << 3) != 0 { options += ["name"] }
            if (self.rawValue & 1 << 4) != 0 { options += ["all"] }
            if (self.rawValue & 1 << 5) != 0 { options += ["none"] }
            if (self.rawValue & 1 << 6) != 0 { options += ["skip"] }
            var container = encoder.singleValueContainer()
            try container.encode(options.joined(separator: "+"))
        }
    }
    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    public var hoverInfo: HoverInfo?

    /// Do the hover effects highlight individual points (markers or line points) or do they highlight filled regions? If the fill is *toself* or *tonext* and there are no markers or text, then the default is *fills*, otherwise it is *points*.
    /// - traces/scatter/attributes/hoveron
    /// - traces/scatterternary/attributes/hoveron
    /// - traces/scattercarpet/attributes/hoveron
    /// - traces/scatterpolar/attributes/hoveron
    public struct HoverOn: OptionSet, Encodable {
        public let rawValue: Int
    
        public static let points = HoverOn(rawValue: 1 << 0)
        public static let fills = HoverOn(rawValue: 1 << 1)
    
        public init(rawValue: Int) { self.rawValue = rawValue }
    
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["points"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["fills"] }
            var container = encoder.singleValueContainer()
            try container.encode(options.joined(separator: "+"))
        }
    }
    /// Do the hover effects highlight individual points (markers or line points) or do they highlight filled regions? If the fill is *toself* or *tonext* and there are no markers or text, then the default is *fills*, otherwise it is *points*.
    public var hoverOn: HoverOn?

    /// Template string used for rendering the information that appear on hover box. 
    ///
    /// Note that this will override `hoverinfo`. Variables are inserted using %{variable}, for example
    /// "y: %{y}". Numbers are formatted using d3-format's syntax %{variable:d3-format}, for example
    /// "Price: %{y:$.2f}".
    /// https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format for details on
    /// the formatting syntax. Dates are formatted using d3-time-format's syntax
    /// %{variable|d3-time-format}, for example "Day: %{2019-01-01|%A}".
    /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format for details on
    /// the date formatting syntax. The variables available in `hovertemplate` are the ones emitted as
    /// event data described at this link https://plot.ly/javascript/plotlyjs-events/#event-data.
    /// Additionally, every attributes that can be specified per-point (the ones that are `arrayOk:
    /// true`) are available. Anything contained in tag `<extra>` is displayed in the secondary box, for
    /// example "<extra>{fullData.name}</extra>". To hide the secondary box completely, use an empty tag
    /// `<extra></extra>`.
    public var hoverTemplate: String?

    /// - traces/scatterpolar/attributes/selected
    public struct Selected: Encodable {
        /// - traces/scatterpolar/attributes/selected/marker
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
    
        /// - traces/scatterpolar/attributes/selected/textfont
        public struct TextFont: Encodable {
            /// Sets the text font color of selected points.
            public var color: Color?
        
            public init(color: Color? = nil) {
                self.color = color
            }
        }
        public var textFont: TextFont?
    
        public init(marker: Marker? = nil, textFont: TextFont? = nil) {
            self.marker = marker
            self.textFont = textFont
        }
    }
    public var selected: Selected?

    /// - traces/scatterpolar/attributes/unselected
    public struct Unselected: Encodable {
        /// - traces/scatterpolar/attributes/unselected/marker
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
    
        /// - traces/scatterpolar/attributes/unselected/textfont
        public struct TextFont: Encodable {
            /// Sets the text font color of unselected points, applied only when a selection exists.
            public var color: Color?
        
            public init(color: Color? = nil) {
                self.color = color
            }
        }
        public var textFont: TextFont?
    
        public init(marker: Marker? = nil, textFont: TextFont? = nil) {
            self.marker = marker
            self.textFont = textFont
        }
    }
    public var unselected: Unselected?

    /// Sets a reference between this trace's data coordinates and a polar subplot. 
    ///
    /// If *polar* (the default value), the data refer to `layout.polar`. If *polar2*, the data refer to
    /// `layout.polar2`, and so on.
    public var subPlot: SubPlotID?

    /// Sets the source reference on plot.ly for  ids .
    public var idsSource: String?

    /// Sets the source reference on plot.ly for  customdata .
    public var customDataSource: String?

    /// Sets the source reference on plot.ly for  meta .
    public var metaSource: String?

    /// Sets the source reference on plot.ly for  r .
    public var rSource: String?

    /// Sets the source reference on plot.ly for  theta .
    public var thetaSource: String?

    /// Sets the source reference on plot.ly for  text .
    public var textSource: String?

    /// Sets the source reference on plot.ly for  texttemplate .
    public var textTemplateSource: String?

    /// Sets the source reference on plot.ly for  hovertext .
    public var hoverTextSource: String?

    /// Sets the source reference on plot.ly for  textposition .
    public var textPositionSource: String?

    /// Sets the source reference on plot.ly for  hoverinfo .
    public var hoverInfoSource: String?

    /// Sets the source reference on plot.ly for  hovertemplate .
    public var hoverTemplateSource: String?

    public init(visible: Visible? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, selectedPoints: Anything? = nil, hoverLabel: HoverLabel? = nil, stream: Stream? = nil, transforms: Transforms? = nil, uiRevision: Anything? = nil, mode: Mode? = nil, r: [Double]? = nil, theta: [Double]? = nil, r0: Anything? = nil, dr: Double? = nil, theta0: Anything? = nil, dTheta: Double? = nil, thetaUnit: ThetaUnit? = nil, text: String? = nil, textTemplate: String? = nil, hoverText: String? = nil, line: Line? = nil, connectGaps: Bool? = nil, marker: Marker? = nil, clipOnAxis: Bool? = nil, textPosition: TextPosition? = nil, textFont: TextFont? = nil, fill: Fill? = nil, fillColor: Color? = nil, hoverInfo: HoverInfo? = nil, hoverOn: HoverOn? = nil, hoverTemplate: String? = nil, selected: Selected? = nil, unselected: Unselected? = nil, subPlot: SubPlotID? = nil, idsSource: String? = nil, customDataSource: String? = nil, metaSource: String? = nil, rSource: String? = nil, thetaSource: String? = nil, textSource: String? = nil, textTemplateSource: String? = nil, hoverTextSource: String? = nil, textPositionSource: String? = nil, hoverInfoSource: String? = nil, hoverTemplateSource: String? = nil) {
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
        self.hoverLabel = hoverLabel
        self.stream = stream
        self.transforms = transforms
        self.uiRevision = uiRevision
        self.mode = mode
        self.r = r
        self.theta = theta
        self.r0 = r0
        self.dr = dr
        self.theta0 = theta0
        self.dTheta = dTheta
        self.thetaUnit = thetaUnit
        self.text = text
        self.textTemplate = textTemplate
        self.hoverText = hoverText
        self.line = line
        self.connectGaps = connectGaps
        self.marker = marker
        self.clipOnAxis = clipOnAxis
        self.textPosition = textPosition
        self.textFont = textFont
        self.fill = fill
        self.fillColor = fillColor
        self.hoverInfo = hoverInfo
        self.hoverOn = hoverOn
        self.hoverTemplate = hoverTemplate
        self.selected = selected
        self.unselected = unselected
        self.subPlot = subPlot
        self.idsSource = idsSource
        self.customDataSource = customDataSource
        self.metaSource = metaSource
        self.rSource = rSource
        self.thetaSource = thetaSource
        self.textSource = textSource
        self.textTemplateSource = textTemplateSource
        self.hoverTextSource = hoverTextSource
        self.textPositionSource = textPositionSource
        self.hoverInfoSource = hoverInfoSource
        self.hoverTemplateSource = hoverTemplateSource
    }
}