/// An indicator is used to visualize a single `value` along with some contextual information such as `steps` or a `threshold`, using a combination of three visual elements: a number, a delta, and/or a gauge. 
///
/// Deltas are taken with respect to a `reference`. Gauges can be either angular or bullet (aka
/// linear) gauges.
public struct Indicator: Trace {
    public let type: String = "indicator"

    public let animatable: Bool = true

    /// Determines whether or not this trace is visible. 
    ///
    /// If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the
    /// legend itself is visible).
    /// - traces/box/attributes/visible
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
    /// - traces/ohlc/attributes/visible
    /// - traces/parcats/attributes/visible
    /// - traces/parcoords/attributes/visible
    /// - traces/scatter/attributes/visible
    /// - traces/scatter3d/attributes/visible
    /// - traces/scattergeo/attributes/visible
    /// - traces/scatterternary/attributes/visible
    /// - traces/splom/attributes/visible
    /// - traces/sunburst/attributes/visible
    /// - traces/table/attributes/visible
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

    /// - traces/indicator/attributes/stream
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

    /// - traces/indicator/attributes/transforms
    public struct Transforms: Encodable {
        /// - traces/indicator/attributes/transforms/items
        public struct Items: Encodable {
            /// An array of operations that manipulate the trace data, for example filtering or sorting the data arrays.
            /// - traces/indicator/attributes/transforms/items/transform
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

    /// Determines how the value is displayed on the graph. 
    ///
    /// `number` displays the value numerically in text. `delta` displays the difference to a reference
    /// value in text. Finally, `gauge` displays the value graphically on an axis.
    /// - traces/indicator/attributes/mode
    public struct Mode: OptionSet, Encodable {
        public let rawValue: Int
    
        public static let number = Mode(rawValue: 1 << 0)
        public static let delta = Mode(rawValue: 1 << 1)
        public static let gauge = Mode(rawValue: 1 << 2)
    
        public init(rawValue: Int) { self.rawValue = rawValue }
    
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["number"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["delta"] }
            if (self.rawValue & 1 << 2) != 0 { options += ["gauge"] }
            var container = encoder.singleValueContainer()
            try container.encode(options.joined(separator: "+"))
        }
    }
    /// Determines how the value is displayed on the graph. 
    ///
    /// `number` displays the value numerically in text. `delta` displays the difference to a reference
    /// value in text. Finally, `gauge` displays the value graphically on an axis.
    public var mode: Mode?

    /// Sets the number to be displayed.
    public var value: Double?

    /// Sets the horizontal alignment of the `text` within the box. 
    ///
    /// Has an effect only if `text` spans more two or more lines (i.e. `text` contains one or more <br>
    /// HTML tags) or if an explicit width is set to override the text width.
    /// - layout/layoutAttributes/annotations/items/annotation/align
    /// - layout/layoutAttributes/scene/annotations/items/annotation/align
    /// - traces/indicator/attributes/align
    /// - traces/table/attributes/cells/align
    /// - traces/table/attributes/header/align
    public enum Align: String, Encodable {
        case left
        case center
        case right
    }
    /// Sets the horizontal alignment of the `text` within the box. 
    ///
    /// Has an effect only if `text` spans more two or more lines (i.e. `text` contains one or more <br>
    /// HTML tags) or if an explicit width is set to override the text width.
    public var align: Align?

    /// - traces/indicator/attributes/domain
    public struct Domain: Encodable {
        /// Sets the horizontal domain of this indicator trace (in plot fraction).
        public var x: InfoArray?
    
        /// Sets the vertical domain of this indicator trace (in plot fraction).
        public var y: InfoArray?
    
        /// If there is a layout grid, use the domain for this row in the grid for this indicator trace .
        public var row: Int?
    
        /// If there is a layout grid, use the domain for this column in the grid for this indicator trace .
        public var column: Int?
    
        public init(x: InfoArray? = nil, y: InfoArray? = nil, row: Int? = nil, column: Int? = nil) {
            self.x = x
            self.y = y
            self.row = row
            self.column = column
        }
    }
    public var domain: Domain?

    /// - traces/indicator/attributes/title
    public struct Title: Encodable {
        /// Sets the title of this indicator.
        public var text: String?
    
        /// Sets the horizontal alignment of the `text` within the box. 
        ///
        /// Has an effect only if `text` spans more two or more lines (i.e. `text` contains one or more <br>
        /// HTML tags) or if an explicit width is set to override the text width.
        /// - layout/layoutAttributes/annotations/items/annotation/align
        /// - layout/layoutAttributes/scene/annotations/items/annotation/align
        /// - traces/indicator/attributes/align
        /// - traces/indicator/attributes/title/align
        /// - traces/table/attributes/cells/align
        /// - traces/table/attributes/header/align
        public enum Align: String, Encodable {
            case left
            case center
            case right
        }
        /// Sets the horizontal alignment of the `text` within the box. 
        ///
        /// Has an effect only if `text` spans more two or more lines (i.e. `text` contains one or more <br>
        /// HTML tags) or if an explicit width is set to override the text width.
        public var align: Align?
    
        /// Set the font used to display the title
        /// - traces/indicator/attributes/title/font
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
        /// Set the font used to display the title
        public var font: Font?
    
        public init(text: String? = nil, align: Align? = nil, font: Font? = nil) {
            self.text = text
            self.align = align
            self.font = font
        }
    }
    public var title: Title?

    /// - traces/indicator/attributes/number
    public struct Number: Encodable {
        /// Sets the value formatting rule using d3 formatting mini-language which is similar to those of Python. 
        ///
        /// See https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
        public var valueFormat: String?
    
        /// Set the font used to display main number
        /// - traces/indicator/attributes/number/font
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
        /// Set the font used to display main number
        public var font: Font?
    
        /// Sets a prefix appearing before the number.
        public var prefix: String?
    
        /// Sets a suffix appearing next to the number.
        public var suffix: String?
    
        public init(valueFormat: String? = nil, font: Font? = nil, prefix: String? = nil, suffix: String? = nil) {
            self.valueFormat = valueFormat
            self.font = font
            self.prefix = prefix
            self.suffix = suffix
        }
    }
    public var number: Number?

    /// - traces/indicator/attributes/delta
    public struct Delta: Encodable {
        /// Sets the reference value to compute the delta. 
        ///
        /// By default, it is set to the current value.
        public var reference: Double?
    
        /// Sets the position of delta with respect to the number.
        /// - traces/indicator/attributes/delta/position
        public enum Position: String, Encodable {
            case top
            case bottom
            case left
            case right
        }
        /// Sets the position of delta with respect to the number.
        public var position: Position?
    
        /// Show relative change
        public var relative: Bool?
    
        /// Sets the value formatting rule using d3 formatting mini-language which is similar to those of Python. 
        ///
        /// See https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
        public var valueFormat: String?
    
        /// - traces/indicator/attributes/delta/increasing
        public struct Increasing: Encodable {
            /// Sets the symbol to display for increasing value
            public var symbol: String?
        
            /// Sets the color for increasing value.
            public var color: Color?
        
            public init(symbol: String? = nil, color: Color? = nil) {
                self.symbol = symbol
                self.color = color
            }
        }
        public var increasing: Increasing?
    
        /// - traces/indicator/attributes/delta/decreasing
        public struct Decreasing: Encodable {
            /// Sets the symbol to display for increasing value
            public var symbol: String?
        
            /// Sets the color for increasing value.
            public var color: Color?
        
            public init(symbol: String? = nil, color: Color? = nil) {
                self.symbol = symbol
                self.color = color
            }
        }
        public var decreasing: Decreasing?
    
        /// Set the font used to display the delta
        /// - traces/indicator/attributes/delta/font
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
        /// Set the font used to display the delta
        public var font: Font?
    
        public init(reference: Double? = nil, position: Position? = nil, relative: Bool? = nil, valueFormat: String? = nil, increasing: Increasing? = nil, decreasing: Decreasing? = nil, font: Font? = nil) {
            self.reference = reference
            self.position = position
            self.relative = relative
            self.valueFormat = valueFormat
            self.increasing = increasing
            self.decreasing = decreasing
            self.font = font
        }
    }
    public var delta: Delta?

    /// The gauge of the Indicator plot.
    /// - traces/indicator/attributes/gauge
    public struct Gauge: Encodable {
        /// Set the shape of the gauge
        /// - traces/indicator/attributes/gauge/shape
        public enum Shape: String, Encodable {
            case angular
            case bullet
        }
        /// Set the shape of the gauge
        public var shape: Shape?
    
        /// Set the appearance of the gauge's value
        /// - traces/indicator/attributes/gauge/bar
        public struct Bar: Encodable {
            /// Sets the background color of the arc.
            public var color: Color?
        
            /// - traces/indicator/attributes/gauge/bar/line
            public struct Line: Encodable {
                /// Sets the color of the line enclosing each sector.
                public var color: Color?
            
                /// Sets the width (in px) of the line enclosing each sector.
                public var width: Double?
            
                public init(color: Color? = nil, width: Double? = nil) {
                    self.color = color
                    self.width = width
                }
            }
            public var line: Line?
        
            /// Sets the thickness of the bar as a fraction of the total thickness of the gauge.
            public var thickness: Double?
        
            public init(color: Color? = nil, line: Line? = nil, thickness: Double? = nil) {
                self.color = color
                self.line = line
                self.thickness = thickness
            }
        }
        /// Set the appearance of the gauge's value
        public var bar: Bar?
    
        /// Sets the gauge background color.
        public var backgroundColor: Color?
    
        /// Sets the color of the border enclosing the gauge.
        public var borderColor: Color?
    
        /// Sets the width (in px) of the border enclosing the gauge.
        public var borderWidth: Double?
    
        /// - traces/indicator/attributes/gauge/axis
        public struct Axis: Encodable {
            /// Sets the range of this axis.
            public var range: InfoArray?
        
            /// A single toggle to hide the axis while preserving interaction like dragging. 
            ///
            /// Default is true when a cheater plot is present on the axis, otherwise false
            public var visible: Bool?
        
            /// Sets the tick mode for this axis. 
            ///
            /// If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is
            /// determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value
            /// if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via
            /// `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is
            /// provided).
            /// - layout/layoutAttributes/coloraxis/colorbar/tickmode
            /// - layout/layoutAttributes/polar/angularaxis/tickmode
            /// - layout/layoutAttributes/polar/radialaxis/tickmode
            /// - layout/layoutAttributes/scene/xaxis/tickmode
            /// - layout/layoutAttributes/scene/yaxis/tickmode
            /// - layout/layoutAttributes/scene/zaxis/tickmode
            /// - layout/layoutAttributes/ternary/aaxis/tickmode
            /// - layout/layoutAttributes/ternary/baxis/tickmode
            /// - layout/layoutAttributes/ternary/caxis/tickmode
            /// - layout/layoutAttributes/xaxis/tickmode
            /// - layout/layoutAttributes/yaxis/tickmode
            /// - traces/choroplethmapbox/attributes/colorbar/tickmode
            /// - traces/contour/attributes/colorbar/tickmode
            /// - traces/contourcarpet/attributes/colorbar/tickmode
            /// - traces/densitymapbox/attributes/colorbar/tickmode
            /// - traces/heatmap/attributes/colorbar/tickmode
            /// - traces/heatmapgl/attributes/colorbar/tickmode
            /// - traces/histogram2d/attributes/colorbar/tickmode
            /// - traces/histogram2dcontour/attributes/colorbar/tickmode
            /// - traces/indicator/attributes/gauge/axis/tickmode
            /// - traces/isosurface/attributes/colorbar/tickmode
            /// - traces/parcats/attributes/line/colorbar/tickmode
            /// - traces/parcoords/attributes/line/colorbar/tickmode
            /// - traces/scatter/attributes/marker/colorbar/tickmode
            /// - traces/scatter3d/attributes/line/colorbar/tickmode
            /// - traces/scatter3d/attributes/marker/colorbar/tickmode
            /// - traces/scattergeo/attributes/marker/colorbar/tickmode
            /// - traces/scatterternary/attributes/marker/colorbar/tickmode
            /// - traces/splom/attributes/marker/colorbar/tickmode
            /// - traces/sunburst/attributes/marker/colorbar/tickmode
            /// - traces/volume/attributes/colorbar/tickmode
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
            /// - layout/layoutAttributes/coloraxis/colorbar/ticks
            /// - layout/layoutAttributes/polar/angularaxis/ticks
            /// - layout/layoutAttributes/polar/radialaxis/ticks
            /// - layout/layoutAttributes/scene/xaxis/ticks
            /// - layout/layoutAttributes/scene/yaxis/ticks
            /// - layout/layoutAttributes/scene/zaxis/ticks
            /// - layout/layoutAttributes/ternary/aaxis/ticks
            /// - layout/layoutAttributes/ternary/baxis/ticks
            /// - layout/layoutAttributes/ternary/caxis/ticks
            /// - layout/layoutAttributes/xaxis/ticks
            /// - layout/layoutAttributes/yaxis/ticks
            /// - traces/choroplethmapbox/attributes/colorbar/ticks
            /// - traces/contour/attributes/colorbar/ticks
            /// - traces/contourcarpet/attributes/colorbar/ticks
            /// - traces/densitymapbox/attributes/colorbar/ticks
            /// - traces/heatmap/attributes/colorbar/ticks
            /// - traces/heatmapgl/attributes/colorbar/ticks
            /// - traces/histogram2d/attributes/colorbar/ticks
            /// - traces/histogram2dcontour/attributes/colorbar/ticks
            /// - traces/indicator/attributes/gauge/axis/ticks
            /// - traces/isosurface/attributes/colorbar/ticks
            /// - traces/parcats/attributes/line/colorbar/ticks
            /// - traces/parcoords/attributes/line/colorbar/ticks
            /// - traces/scatter/attributes/marker/colorbar/ticks
            /// - traces/scatter3d/attributes/line/colorbar/ticks
            /// - traces/scatter3d/attributes/marker/colorbar/ticks
            /// - traces/scattergeo/attributes/marker/colorbar/ticks
            /// - traces/scatterternary/attributes/marker/colorbar/ticks
            /// - traces/splom/attributes/marker/colorbar/ticks
            /// - traces/sunburst/attributes/marker/colorbar/ticks
            /// - traces/volume/attributes/colorbar/ticks
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
            /// - traces/indicator/attributes/gauge/axis/tickfont
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
        
            /// - traces/indicator/attributes/gauge/axis/tickformatstops
            public struct TickFormatStops: Encodable {
                /// - traces/indicator/attributes/gauge/axis/tickformatstops/items
                public struct Items: Encodable {
                    /// - traces/indicator/attributes/gauge/axis/tickformatstops/items/tickformatstop
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
            /// - layout/layoutAttributes/coloraxis/colorbar/showtickprefix
            /// - layout/layoutAttributes/polar/angularaxis/showtickprefix
            /// - layout/layoutAttributes/polar/radialaxis/showtickprefix
            /// - layout/layoutAttributes/scene/xaxis/showtickprefix
            /// - layout/layoutAttributes/scene/yaxis/showtickprefix
            /// - layout/layoutAttributes/scene/zaxis/showtickprefix
            /// - layout/layoutAttributes/ternary/aaxis/showtickprefix
            /// - layout/layoutAttributes/ternary/baxis/showtickprefix
            /// - layout/layoutAttributes/ternary/caxis/showtickprefix
            /// - layout/layoutAttributes/xaxis/showtickprefix
            /// - layout/layoutAttributes/yaxis/showtickprefix
            /// - traces/choroplethmapbox/attributes/colorbar/showtickprefix
            /// - traces/contour/attributes/colorbar/showtickprefix
            /// - traces/contourcarpet/attributes/colorbar/showtickprefix
            /// - traces/densitymapbox/attributes/colorbar/showtickprefix
            /// - traces/heatmap/attributes/colorbar/showtickprefix
            /// - traces/heatmapgl/attributes/colorbar/showtickprefix
            /// - traces/histogram2d/attributes/colorbar/showtickprefix
            /// - traces/histogram2dcontour/attributes/colorbar/showtickprefix
            /// - traces/indicator/attributes/gauge/axis/showtickprefix
            /// - traces/isosurface/attributes/colorbar/showtickprefix
            /// - traces/parcats/attributes/line/colorbar/showtickprefix
            /// - traces/parcoords/attributes/line/colorbar/showtickprefix
            /// - traces/scatter/attributes/marker/colorbar/showtickprefix
            /// - traces/scatter3d/attributes/line/colorbar/showtickprefix
            /// - traces/scatter3d/attributes/marker/colorbar/showtickprefix
            /// - traces/scattergeo/attributes/marker/colorbar/showtickprefix
            /// - traces/scatterternary/attributes/marker/colorbar/showtickprefix
            /// - traces/splom/attributes/marker/colorbar/showtickprefix
            /// - traces/sunburst/attributes/marker/colorbar/showtickprefix
            /// - traces/volume/attributes/colorbar/showtickprefix
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
            /// - layout/layoutAttributes/coloraxis/colorbar/showticksuffix
            /// - layout/layoutAttributes/polar/angularaxis/showticksuffix
            /// - layout/layoutAttributes/polar/radialaxis/showticksuffix
            /// - layout/layoutAttributes/scene/xaxis/showticksuffix
            /// - layout/layoutAttributes/scene/yaxis/showticksuffix
            /// - layout/layoutAttributes/scene/zaxis/showticksuffix
            /// - layout/layoutAttributes/ternary/aaxis/showticksuffix
            /// - layout/layoutAttributes/ternary/baxis/showticksuffix
            /// - layout/layoutAttributes/ternary/caxis/showticksuffix
            /// - layout/layoutAttributes/xaxis/showticksuffix
            /// - layout/layoutAttributes/yaxis/showticksuffix
            /// - traces/choroplethmapbox/attributes/colorbar/showticksuffix
            /// - traces/contour/attributes/colorbar/showticksuffix
            /// - traces/contourcarpet/attributes/colorbar/showticksuffix
            /// - traces/densitymapbox/attributes/colorbar/showticksuffix
            /// - traces/heatmap/attributes/colorbar/showticksuffix
            /// - traces/heatmapgl/attributes/colorbar/showticksuffix
            /// - traces/histogram2d/attributes/colorbar/showticksuffix
            /// - traces/histogram2dcontour/attributes/colorbar/showticksuffix
            /// - traces/indicator/attributes/gauge/axis/showticksuffix
            /// - traces/isosurface/attributes/colorbar/showticksuffix
            /// - traces/parcats/attributes/line/colorbar/showticksuffix
            /// - traces/parcoords/attributes/line/colorbar/showticksuffix
            /// - traces/scatter/attributes/marker/colorbar/showticksuffix
            /// - traces/scatter3d/attributes/line/colorbar/showticksuffix
            /// - traces/scatter3d/attributes/marker/colorbar/showticksuffix
            /// - traces/scattergeo/attributes/marker/colorbar/showticksuffix
            /// - traces/scatterternary/attributes/marker/colorbar/showticksuffix
            /// - traces/splom/attributes/marker/colorbar/showticksuffix
            /// - traces/sunburst/attributes/marker/colorbar/showticksuffix
            /// - traces/volume/attributes/colorbar/showticksuffix
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
            /// - layout/layoutAttributes/coloraxis/colorbar/exponentformat
            /// - layout/layoutAttributes/polar/angularaxis/exponentformat
            /// - layout/layoutAttributes/polar/radialaxis/exponentformat
            /// - layout/layoutAttributes/scene/xaxis/exponentformat
            /// - layout/layoutAttributes/scene/yaxis/exponentformat
            /// - layout/layoutAttributes/scene/zaxis/exponentformat
            /// - layout/layoutAttributes/ternary/aaxis/exponentformat
            /// - layout/layoutAttributes/ternary/baxis/exponentformat
            /// - layout/layoutAttributes/ternary/caxis/exponentformat
            /// - layout/layoutAttributes/xaxis/exponentformat
            /// - layout/layoutAttributes/yaxis/exponentformat
            /// - traces/choroplethmapbox/attributes/colorbar/exponentformat
            /// - traces/contour/attributes/colorbar/exponentformat
            /// - traces/contourcarpet/attributes/colorbar/exponentformat
            /// - traces/densitymapbox/attributes/colorbar/exponentformat
            /// - traces/heatmap/attributes/colorbar/exponentformat
            /// - traces/heatmapgl/attributes/colorbar/exponentformat
            /// - traces/histogram2d/attributes/colorbar/exponentformat
            /// - traces/histogram2dcontour/attributes/colorbar/exponentformat
            /// - traces/indicator/attributes/gauge/axis/exponentformat
            /// - traces/isosurface/attributes/colorbar/exponentformat
            /// - traces/parcats/attributes/line/colorbar/exponentformat
            /// - traces/parcoords/attributes/line/colorbar/exponentformat
            /// - traces/scatter/attributes/marker/colorbar/exponentformat
            /// - traces/scatter3d/attributes/line/colorbar/exponentformat
            /// - traces/scatter3d/attributes/marker/colorbar/exponentformat
            /// - traces/scattergeo/attributes/marker/colorbar/exponentformat
            /// - traces/scatterternary/attributes/marker/colorbar/exponentformat
            /// - traces/splom/attributes/marker/colorbar/exponentformat
            /// - traces/sunburst/attributes/marker/colorbar/exponentformat
            /// - traces/volume/attributes/colorbar/exponentformat
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
            /// - layout/layoutAttributes/coloraxis/colorbar/showexponent
            /// - layout/layoutAttributes/polar/angularaxis/showexponent
            /// - layout/layoutAttributes/polar/radialaxis/showexponent
            /// - layout/layoutAttributes/scene/xaxis/showexponent
            /// - layout/layoutAttributes/scene/yaxis/showexponent
            /// - layout/layoutAttributes/scene/zaxis/showexponent
            /// - layout/layoutAttributes/ternary/aaxis/showexponent
            /// - layout/layoutAttributes/ternary/baxis/showexponent
            /// - layout/layoutAttributes/ternary/caxis/showexponent
            /// - layout/layoutAttributes/xaxis/showexponent
            /// - layout/layoutAttributes/yaxis/showexponent
            /// - traces/choroplethmapbox/attributes/colorbar/showexponent
            /// - traces/contour/attributes/colorbar/showexponent
            /// - traces/contourcarpet/attributes/colorbar/showexponent
            /// - traces/densitymapbox/attributes/colorbar/showexponent
            /// - traces/heatmap/attributes/colorbar/showexponent
            /// - traces/heatmapgl/attributes/colorbar/showexponent
            /// - traces/histogram2d/attributes/colorbar/showexponent
            /// - traces/histogram2dcontour/attributes/colorbar/showexponent
            /// - traces/indicator/attributes/gauge/axis/showexponent
            /// - traces/isosurface/attributes/colorbar/showexponent
            /// - traces/parcats/attributes/line/colorbar/showexponent
            /// - traces/parcoords/attributes/line/colorbar/showexponent
            /// - traces/scatter/attributes/marker/colorbar/showexponent
            /// - traces/scatter3d/attributes/line/colorbar/showexponent
            /// - traces/scatter3d/attributes/marker/colorbar/showexponent
            /// - traces/scattergeo/attributes/marker/colorbar/showexponent
            /// - traces/scatterternary/attributes/marker/colorbar/showexponent
            /// - traces/splom/attributes/marker/colorbar/showexponent
            /// - traces/sunburst/attributes/marker/colorbar/showexponent
            /// - traces/volume/attributes/colorbar/showexponent
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
        
            /// Sets the source reference on plot.ly for  tickvals .
            public var tickValuesSource: String?
        
            /// Sets the source reference on plot.ly for  ticktext .
            public var tickTextSource: String?
        
            public init(range: InfoArray? = nil, visible: Bool? = nil, tickMode: TickMode? = nil, numTicks: Int? = nil, tick0: Anything? = nil, dTick: Anything? = nil, tickValues: [Double]? = nil, tickText: [Double]? = nil, ticks: Ticks? = nil, tickLength: Double? = nil, tickWidth: Double? = nil, tickColor: Color? = nil, showTickLabels: Bool? = nil, tickFont: TickFont? = nil, tickAngle: Angle? = nil, tickFormat: String? = nil, tickFormatStops: TickFormatStops? = nil, tickPrefix: String? = nil, showTickPrefix: ShowTickPrefix? = nil, tickSuffix: String? = nil, showTickSuffix: ShowTickSuffix? = nil, separatethousands: Bool? = nil, exponentFormat: ExponentFormat? = nil, showExponent: ShowExponent? = nil, tickValuesSource: String? = nil, tickTextSource: String? = nil) {
                self.range = range
                self.visible = visible
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
                self.tickValuesSource = tickValuesSource
                self.tickTextSource = tickTextSource
            }
        }
        public var axis: Axis?
    
        /// - traces/indicator/attributes/gauge/steps
        public struct Steps: Encodable {
            /// - traces/indicator/attributes/gauge/steps/items
            public struct Items: Encodable {
                /// - traces/indicator/attributes/gauge/steps/items/step
                public struct Step: Encodable {
                    /// Sets the background color of the arc.
                    public var color: Color?
                
                    /// - traces/indicator/attributes/gauge/steps/items/step/line
                    public struct Line: Encodable {
                        /// Sets the color of the line enclosing each sector.
                        public var color: Color?
                    
                        /// Sets the width (in px) of the line enclosing each sector.
                        public var width: Double?
                    
                        public init(color: Color? = nil, width: Double? = nil) {
                            self.color = color
                            self.width = width
                        }
                    }
                    public var line: Line?
                
                    /// Sets the thickness of the bar as a fraction of the total thickness of the gauge.
                    public var thickness: Double?
                
                    /// Sets the range of this axis.
                    public var range: InfoArray?
                
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
                
                    public init(color: Color? = nil, line: Line? = nil, thickness: Double? = nil, range: InfoArray? = nil, name: String? = nil, templateItemName: String? = nil) {
                        self.color = color
                        self.line = line
                        self.thickness = thickness
                        self.range = range
                        self.name = name
                        self.templateItemName = templateItemName
                    }
                }
                public var step: Step?
            
                public init(step: Step? = nil) {
                    self.step = step
                }
            }
            public var items: Items?
        
            public init(items: Items? = nil) {
                self.items = items
            }
        }
        public var steps: Steps?
    
        /// - traces/indicator/attributes/gauge/threshold
        public struct Threshold: Encodable {
            /// - traces/indicator/attributes/gauge/threshold/line
            public struct Line: Encodable {
                /// Sets the color of the threshold line.
                public var color: Color?
            
                /// Sets the width (in px) of the threshold line.
                public var width: Double?
            
                public init(color: Color? = nil, width: Double? = nil) {
                    self.color = color
                    self.width = width
                }
            }
            public var line: Line?
        
            /// Sets the thickness of the threshold line as a fraction of the thickness of the gauge.
            public var thickness: Double?
        
            /// Sets a treshold value drawn as a line.
            public var value: Double?
        
            public init(line: Line? = nil, thickness: Double? = nil, value: Double? = nil) {
                self.line = line
                self.thickness = thickness
                self.value = value
            }
        }
        public var threshold: Threshold?
    
        public init(shape: Shape? = nil, bar: Bar? = nil, backgroundColor: Color? = nil, borderColor: Color? = nil, borderWidth: Double? = nil, axis: Axis? = nil, steps: Steps? = nil, threshold: Threshold? = nil) {
            self.shape = shape
            self.bar = bar
            self.backgroundColor = backgroundColor
            self.borderColor = borderColor
            self.borderWidth = borderWidth
            self.axis = axis
            self.steps = steps
            self.threshold = threshold
        }
    }
    /// The gauge of the Indicator plot.
    public var gauge: Gauge?

    /// Sets the source reference on plot.ly for  ids .
    public var idsSource: String?

    /// Sets the source reference on plot.ly for  customdata .
    public var customDataSource: String?

    /// Sets the source reference on plot.ly for  meta .
    public var metaSource: String?

    public init(visible: Visible? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, stream: Stream? = nil, transforms: Transforms? = nil, uiRevision: Anything? = nil, mode: Mode? = nil, value: Double? = nil, align: Align? = nil, domain: Domain? = nil, title: Title? = nil, number: Number? = nil, delta: Delta? = nil, gauge: Gauge? = nil, idsSource: String? = nil, customDataSource: String? = nil, metaSource: String? = nil) {
        self.visible = visible
        self.name = name
        self.uid = uid
        self.ids = ids
        self.customData = customData
        self.meta = meta
        self.stream = stream
        self.transforms = transforms
        self.uiRevision = uiRevision
        self.mode = mode
        self.value = value
        self.align = align
        self.domain = domain
        self.title = title
        self.number = number
        self.delta = delta
        self.gauge = gauge
        self.idsSource = idsSource
        self.customDataSource = customDataSource
        self.metaSource = metaSource
    }
}