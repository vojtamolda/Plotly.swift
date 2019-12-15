/// Draws volume trace between iso-min and iso-max values with coordinates given by four 1-dimensional arrays containing the `value`, `x`, `y` and `z` of every vertex of a uniform or non-uniform 3-D grid. Horizontal or vertical slices, caps as well as spaceframe between iso-min and iso-max values could also be drawn using this trace.
public struct Volume: Trace {
    public let type: String = "volume"

    public let animatable: Bool = false

    /// Determines whether or not this trace is visible. If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the legend itself is visible).
    public enum Visible: String, Encodable {
        case `true` = "true"
        case `false` = "false"
        case legendOnly = "legendonly"
    }
    /// Determines whether or not this trace is visible. If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the legend itself is visible).
    public var visible: Visible?

    /// Sets the trace name. The trace name appear as the legend item and on hover.
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    public var uid: String?

    /// Assigns id labels to each datum. These ids for object constancy of data points during animation. Should be an array of strings, not numbers or any other type.
    public var ids: [Double]?

    /// Assigns extra data each datum. This may be useful when listening to hover, click and selection events. Note that, *scatter* traces also appends customdata items in the markers DOM elements
    public var customData: [Double]?

    /// Assigns extra meta information associated with this trace that can be used in various text attributes. Attributes such as trace `name`, graph, axis and colorbar `title.text`, annotation `text` `rangeselector`, `updatemenues` and `sliders` `label` text all support `meta`. To access the trace `meta` values in an attribute in the same trace, simply use `%{meta[i]}` where `i` is the index or key of the `meta` item in question. To access trace `meta` in layout attributes, use `%{data[n[.meta[i]}` where `i` is the index or key of the `meta` and `n` is the trace index.
    public var meta: Anything?

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

    /// Controls persistence of some user-driven changes to the trace: `constraintrange` in `parcoords` traces, as well as some `editable: true` modifications such as `name` and `colorbar.title`. Defaults to `layout.uirevision`. Note that other user-driven trace attribute changes are controlled by `layout` attributes: `trace.visible` is controlled by `layout.legend.uirevision`, `selectedpoints` is controlled by `layout.selectionrevision`, and `colorbar.(x|y)` (accessible with `config: {editable: true}`) is controlled by `layout.editrevision`. Trace changes are tracked by `uid`, which only falls back on trace index if no `uid` is provided. So if your app can add/remove traces before the end of the `data` array, such that the same trace has a different index, you can still preserve user-driven changes if you give each trace a `uid` that stays with it as it moves.
    public var uiRevision: Anything?

    /// Sets the X coordinates of the vertices on X axis.
    public var x: [Double]?

    /// Sets the Y coordinates of the vertices on Y axis.
    public var y: [Double]?

    /// Sets the Z coordinates of the vertices on Z axis.
    public var z: [Double]?

    /// Sets the 4th dimension (value) of the vertices.
    public var value: [Double]?

    /// Sets the minimum boundary for iso-surface plot.
    public var isoMin: Double?

    /// Sets the maximum boundary for iso-surface plot.
    public var isoMax: Double?

    public struct Surface: Encodable {
        /// Hides/displays surfaces between minimum and maximum iso-values.
        public var show: Bool?
    
        /// Sets the number of iso-surfaces between minimum and maximum iso-values. By default this value is 2 meaning that only minimum and maximum surfaces would be drawn.
        public var count: Int?
    
        /// Sets the fill ratio of the iso-surface. The default fill value of the surface is 1 meaning that they are entirely shaded. On the other hand Applying a `fill` ratio less than one would allow the creation of openings parallel to the edges.
        public var fill: Double?
    
        /// Sets the surface pattern of the iso-surface 3-D sections. The default pattern of the surface is `all` meaning that the rest of surface elements would be shaded. The check options (either 1 or 2) could be used to draw half of the squares on the surface. Using various combinations of capital `A`, `B`, `C`, `D` and `E` may also be used to reduce the number of triangles on the iso-surfaces and creating other patterns of interest.
        public struct Pattern: OptionSet, Encodable {
            public let rawValue: Int
        
            public static let a = Pattern(rawValue: 1 << 0)
            public static let b = Pattern(rawValue: 1 << 1)
            public static let c = Pattern(rawValue: 1 << 2)
            public static let d = Pattern(rawValue: 1 << 3)
            public static let e = Pattern(rawValue: 1 << 4)
            public static let all = Pattern(rawValue: 1 << 5)
            public static let odd = Pattern(rawValue: 1 << 6)
            public static let even = Pattern(rawValue: 1 << 7)
        
            public init(rawValue: Int) { self.rawValue = rawValue }
        
            public func encode(to encoder: Encoder) throws {
                var options = [String]()
                if (self.rawValue & 1 << 0) != 0 { options += ["A"] }
                if (self.rawValue & 1 << 1) != 0 { options += ["B"] }
                if (self.rawValue & 1 << 2) != 0 { options += ["C"] }
                if (self.rawValue & 1 << 3) != 0 { options += ["D"] }
                if (self.rawValue & 1 << 4) != 0 { options += ["E"] }
                if (self.rawValue & 1 << 5) != 0 { options += ["all"] }
                if (self.rawValue & 1 << 6) != 0 { options += ["odd"] }
                if (self.rawValue & 1 << 7) != 0 { options += ["even"] }
                var container = encoder.singleValueContainer()
                try container.encode(options.joined(separator: "+"))
            }
        }
        /// Sets the surface pattern of the iso-surface 3-D sections. The default pattern of the surface is `all` meaning that the rest of surface elements would be shaded. The check options (either 1 or 2) could be used to draw half of the squares on the surface. Using various combinations of capital `A`, `B`, `C`, `D` and `E` may also be used to reduce the number of triangles on the iso-surfaces and creating other patterns of interest.
        public var pattern: Pattern?
    
        public init(show: Bool? = nil, count: Int? = nil, fill: Double? = nil, pattern: Pattern? = nil) {
            self.show = show
            self.count = count
            self.fill = fill
            self.pattern = pattern
        }
    }
    public var surface: Surface?

    public struct SpaceFrame: Encodable {
        /// Displays/hides tetrahedron shapes between minimum and maximum iso-values. Often useful when either caps or surfaces are disabled or filled with values less than 1.
        public var show: Bool?
    
        /// Sets the fill ratio of the `spaceframe` elements. The default fill value is 1 meaning that they are entirely shaded. Applying a `fill` ratio less than one would allow the creation of openings parallel to the edges.
        public var fill: Double?
    
        public init(show: Bool? = nil, fill: Double? = nil) {
            self.show = show
            self.fill = fill
        }
    }
    public var spaceFrame: SpaceFrame?

    public struct Slices: Encodable {
        public struct X: Encodable {
            /// Determines whether or not slice planes about the x dimension are drawn.
            public var show: Bool?
        
            /// Specifies the location(s) of slices on the axis. When not specified slices would be created for all points of the axis x except start and end.
            public var locations: [Double]?
        
            /// Sets the fill ratio of the `slices`. The default fill value of the `slices` is 1 meaning that they are entirely shaded. On the other hand Applying a `fill` ratio less than one would allow the creation of openings parallel to the edges.
            public var fill: Double?
        
            /// Sets the source reference on plot.ly for  locations .
            public var locationsSource: String?
        
            public init(show: Bool? = nil, locations: [Double]? = nil, fill: Double? = nil, locationsSource: String? = nil) {
                self.show = show
                self.locations = locations
                self.fill = fill
                self.locationsSource = locationsSource
            }
        }
        public var x: X?
    
        public struct Y: Encodable {
            /// Determines whether or not slice planes about the y dimension are drawn.
            public var show: Bool?
        
            /// Specifies the location(s) of slices on the axis. When not specified slices would be created for all points of the axis y except start and end.
            public var locations: [Double]?
        
            /// Sets the fill ratio of the `slices`. The default fill value of the `slices` is 1 meaning that they are entirely shaded. On the other hand Applying a `fill` ratio less than one would allow the creation of openings parallel to the edges.
            public var fill: Double?
        
            /// Sets the source reference on plot.ly for  locations .
            public var locationsSource: String?
        
            public init(show: Bool? = nil, locations: [Double]? = nil, fill: Double? = nil, locationsSource: String? = nil) {
                self.show = show
                self.locations = locations
                self.fill = fill
                self.locationsSource = locationsSource
            }
        }
        public var y: Y?
    
        public struct Z: Encodable {
            /// Determines whether or not slice planes about the z dimension are drawn.
            public var show: Bool?
        
            /// Specifies the location(s) of slices on the axis. When not specified slices would be created for all points of the axis z except start and end.
            public var locations: [Double]?
        
            /// Sets the fill ratio of the `slices`. The default fill value of the `slices` is 1 meaning that they are entirely shaded. On the other hand Applying a `fill` ratio less than one would allow the creation of openings parallel to the edges.
            public var fill: Double?
        
            /// Sets the source reference on plot.ly for  locations .
            public var locationsSource: String?
        
            public init(show: Bool? = nil, locations: [Double]? = nil, fill: Double? = nil, locationsSource: String? = nil) {
                self.show = show
                self.locations = locations
                self.fill = fill
                self.locationsSource = locationsSource
            }
        }
        public var z: Z?
    
        public init(x: X? = nil, y: Y? = nil, z: Z? = nil) {
            self.x = x
            self.y = y
            self.z = z
        }
    }
    public var slices: Slices?

    public struct Caps: Encodable {
        public struct X: Encodable {
            /// Sets the fill ratio of the `slices`. The default fill value of the x `slices` is 1 meaning that they are entirely shaded. On the other hand Applying a `fill` ratio less than one would allow the creation of openings parallel to the edges.
            public var show: Bool?
        
            /// Sets the fill ratio of the `caps`. The default fill value of the `caps` is 1 meaning that they are entirely shaded. On the other hand Applying a `fill` ratio less than one would allow the creation of openings parallel to the edges.
            public var fill: Double?
        
            public init(show: Bool? = nil, fill: Double? = nil) {
                self.show = show
                self.fill = fill
            }
        }
        public var x: X?
    
        public struct Y: Encodable {
            /// Sets the fill ratio of the `slices`. The default fill value of the y `slices` is 1 meaning that they are entirely shaded. On the other hand Applying a `fill` ratio less than one would allow the creation of openings parallel to the edges.
            public var show: Bool?
        
            /// Sets the fill ratio of the `caps`. The default fill value of the `caps` is 1 meaning that they are entirely shaded. On the other hand Applying a `fill` ratio less than one would allow the creation of openings parallel to the edges.
            public var fill: Double?
        
            public init(show: Bool? = nil, fill: Double? = nil) {
                self.show = show
                self.fill = fill
            }
        }
        public var y: Y?
    
        public struct Z: Encodable {
            /// Sets the fill ratio of the `slices`. The default fill value of the z `slices` is 1 meaning that they are entirely shaded. On the other hand Applying a `fill` ratio less than one would allow the creation of openings parallel to the edges.
            public var show: Bool?
        
            /// Sets the fill ratio of the `caps`. The default fill value of the `caps` is 1 meaning that they are entirely shaded. On the other hand Applying a `fill` ratio less than one would allow the creation of openings parallel to the edges.
            public var fill: Double?
        
            public init(show: Bool? = nil, fill: Double? = nil) {
                self.show = show
                self.fill = fill
            }
        }
        public var z: Z?
    
        public init(x: X? = nil, y: Y? = nil, z: Z? = nil) {
            self.x = x
            self.y = y
            self.z = z
        }
    }
    public var caps: Caps?

    /// Sets the text elements associated with the vertices. If trace `hoverinfo` contains a *text* flag and *hovertext* is not set, these elements will be seen in the hover labels.
    public var text: String?

    /// Same as `text`.
    public var hoverText: String?

    /// Template string used for rendering the information that appear on hover box. Note that this will override `hoverinfo`. Variables are inserted using %{variable}, for example "y: %{y}". Numbers are formatted using d3-format's syntax %{variable:d3-format}, for example "Price: %{y:$.2f}". https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format for details on the formatting syntax. Dates are formatted using d3-time-format's syntax %{variable|d3-time-format}, for example "Day: %{2019-01-01|%A}". https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format for details on the date formatting syntax. The variables available in `hovertemplate` are the ones emitted as event data described at this link https://plot.ly/javascript/plotlyjs-events/#event-data. Additionally, every attributes that can be specified per-point (the ones that are `arrayOk: true`) are available.  Anything contained in tag `<extra>` is displayed in the secondary box, for example "<extra>{fullData.name}</extra>". To hide the secondary box completely, use an empty tag `<extra></extra>`.
    public var hoverTemplate: String?

    /// Determines whether or not the color domain is computed with respect to the input data (here `value`) or the bounds set in `cmin` and `cmax`  Defaults to `false` when `cmin` and `cmax` are set by the user.
    public var cAuto: Bool?

    /// Sets the lower bound of the color domain. Value should have the same units as `value` and if set, `cmax` must be set as well.
    public var cMin: Double?

    /// Sets the upper bound of the color domain. Value should have the same units as `value` and if set, `cmin` must be set as well.
    public var cMax: Double?

    /// Sets the mid-point of the color domain by scaling `cmin` and/or `cmax` to be equidistant to this point. Value should have the same units as `value`. Has no effect when `cauto` is `false`.
    public var cMiddle: Double?

    /// Sets the colorscale. The colorscale must be an array containing arrays mapping a normalized value to an rgb, rgba, hex, hsl, hsv, or named color string. At minimum, a mapping for the lowest (0) and highest (1) values are required. For example, `[[0, 'rgb(0,0,255)'], [1, 'rgb(255,0,0)']]`. To control the bounds of the colorscale in color space, use`cmin` and `cmax`. Alternatively, `colorscale` may be a palette name string of the following list: Greys,YlGnBu,Greens,YlOrRd,Bluered,RdBu,Reds,Blues,Picnic,Rainbow,Portland,Jet,Hot,Blackbody,Earth,Electric,Viridis,Cividis.
    public var colorScale: ColorScale?

    /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `colorscale`. In case `colorscale` is unspecified or `autocolorscale` is true, the default  palette will be chosen according to whether numbers in the `color` array are all positive, all negative or mixed.
    public var autoColorScale: Bool?

    /// Reverses the color mapping if true. If true, `cmin` will correspond to the last color in the array and `cmax` will correspond to the first color.
    public var reverseScale: Bool?

    /// Determines whether or not a colorbar is displayed for this trace.
    public var showScale: Bool?

    public struct ColorBar: Encodable {
        /// Determines whether this color bar's thickness (i.e. the measure in the constant color direction) is set in units of plot *fraction* or in *pixels*. Use `thickness` to set the value.
        public enum ThicknessMode: String, Encodable {
            case fraction
            case pixels
        }
        /// Determines whether this color bar's thickness (i.e. the measure in the constant color direction) is set in units of plot *fraction* or in *pixels*. Use `thickness` to set the value.
        public var thicknessMode: ThicknessMode?
    
        /// Sets the thickness of the color bar This measure excludes the size of the padding, ticks and labels.
        public var thickness: Double?
    
        /// Determines whether this color bar's length (i.e. the measure in the color variation direction) is set in units of plot *fraction* or in *pixels. Use `len` to set the value.
        public enum LengthMode: String, Encodable {
            case fraction
            case pixels
        }
        /// Determines whether this color bar's length (i.e. the measure in the color variation direction) is set in units of plot *fraction* or in *pixels. Use `len` to set the value.
        public var lengthMode: LengthMode?
    
        /// Sets the length of the color bar This measure excludes the padding of both ends. That is, the color bar length is this length minus the padding on both ends.
        public var length: Double?
    
        /// Sets the x position of the color bar (in plot fraction).
        public var x: Double?
    
        /// Sets this color bar's horizontal position anchor. This anchor binds the `x` position to the *left*, *center* or *right* of the color bar.
        public enum XAnchor: String, Encodable {
            case left
            case center
            case right
        }
        /// Sets this color bar's horizontal position anchor. This anchor binds the `x` position to the *left*, *center* or *right* of the color bar.
        public var xAnchor: XAnchor?
    
        /// Sets the amount of padding (in px) along the x direction.
        public var xPadding: Double?
    
        /// Sets the y position of the color bar (in plot fraction).
        public var y: Double?
    
        /// Sets this color bar's vertical position anchor This anchor binds the `y` position to the *top*, *middle* or *bottom* of the color bar.
        public enum YAnchor: String, Encodable {
            case top
            case middle
            case bottom
        }
        /// Sets this color bar's vertical position anchor This anchor binds the `y` position to the *top*, *middle* or *bottom* of the color bar.
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
    
        /// Sets the tick mode for this axis. If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is provided).
        public enum TickMode: String, Encodable {
            case auto
            case linear
            case array
        }
        /// Sets the tick mode for this axis. If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is provided).
        public var tickMode: TickMode?
    
        /// Specifies the maximum number of ticks for the particular axis. The actual number of ticks will be chosen automatically to be less than or equal to `nticks`. Has an effect only if `tickmode` is set to *auto*.
        public var numTicks: Int?
    
        /// Sets the placement of the first tick on this axis. Use with `dtick`. If the axis `type` is *log*, then you must take the log of your starting tick (e.g. to set the starting tick to 100, set the `tick0` to 2) except when `dtick`=*L<f>* (see `dtick` for more info). If the axis `type` is *date*, it should be a date string, like date data. If the axis `type` is *category*, it should be a number, using the scale where each category is assigned a serial number from zero in the order it appears.
        public var tick0: Anything?
    
        /// Sets the step in-between ticks on this axis. Use with `tick0`. Must be a positive number, or special strings available to *log* and *date* axes. If the axis `type` is *log*, then ticks are set every 10^(n*dtick) where n is the tick number. For example, to set a tick mark at 1, 10, 100, 1000, ... set dtick to 1. To set tick marks at 1, 100, 10000, ... set dtick to 2. To set tick marks at 1, 5, 25, 125, 625, 3125, ... set dtick to log_10(5), or 0.69897000433. *log* has several special values; *L<f>*, where `f` is a positive number, gives ticks linearly spaced in value (but not position). For example `tick0` = 0.1, `dtick` = *L0.5* will put ticks at 0.1, 0.6, 1.1, 1.6 etc. To show powers of 10 plus small digits between, use *D1* (all digits) or *D2* (only 2 and 5). `tick0` is ignored for *D1* and *D2*. If the axis `type` is *date*, then you must convert the time to milliseconds. For example, to set the interval between ticks to one day, set `dtick` to 86400000.0. *date* also has special values *M<n>* gives ticks spaced by a number of months. `n` must be a positive integer. To set ticks on the 15th of every third month, set `tick0` to *2000-01-15* and `dtick` to *M3*. To set ticks every 4 years, set `dtick` to *M48*
        public var dTick: Anything?
    
        /// Sets the values at which ticks on this axis appear. Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
        public var tickValues: [Double]?
    
        /// Sets the text displayed at the ticks position via `tickvals`. Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
        public var tickText: [Double]?
    
        /// Determines whether ticks are drawn or not. If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside (inside) the axis lines.
        public enum Ticks: String, Encodable {
            case outside
            case inside
            case none = ""
        }
        /// Determines whether ticks are drawn or not. If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside (inside) the axis lines.
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
        public struct TickFont: Encodable {
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
        /// Sets the color bar's tick label font
        public var tickFont: TickFont?
    
        /// Sets the angle of the tick labels with respect to the horizontal. For example, a `tickangle` of -90 draws the tick labels vertically.
        public var tickAngle: Angle?
    
        /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to those in Python. For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format And for dates see: https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
        public var tickFormat: String?
    
        public struct TickFormatStops: Encodable {
            public struct Items: Encodable {
                public struct TickFormatStop: Encodable {
                    /// Determines whether or not this stop is used. If `false`, this stop is ignored even within its `dtickrange`.
                    public var enabled: Bool?
                
                    /// range [*min*, *max*], where *min*, *max* - dtick values which describe some zoom level, it is possible to omit *min* or *max* value by passing *null*
                    public var dTickRange: InfoArray?
                
                    /// string - dtickformat for described zoom level, the same as *tickformat*
                    public var value: String?
                
                    /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. You can modify these items in the output figure by making your own item with `templateitemname` matching this `name` alongside your modifications (including `visible: false` or `enabled: false` to hide it). Has no effect outside of a template.
                    public var name: String?
                
                    /// Used to refer to a named item in this array in the template. Named items from the template will be created even without a matching item in the input figure, but you can modify one by making an item with `templateitemname` matching its `name`, alongside your modifications (including `visible: false` or `enabled: false` to hide it). If there is no template or no matching item, this item will be hidden unless you explicitly show it with `visible: true`.
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
    
        /// If *all*, all tick labels are displayed with a prefix. If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is displayed with a suffix. If *none*, tick prefixes are hidden.
        public enum ShowTickPrefix: String, Encodable {
            case all
            case first
            case last
            case none
        }
        /// If *all*, all tick labels are displayed with a prefix. If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is displayed with a suffix. If *none*, tick prefixes are hidden.
        public var showTickPrefix: ShowTickPrefix?
    
        /// Sets a tick label suffix.
        public var tickSuffix: String?
    
        /// Same as `showtickprefix` but for tick suffixes.
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
    
        /// Determines a formatting rule for the tick exponents. For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*, 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
        public enum ExponentFormat: String, Encodable {
            case none
            case e
            case E
            case power
            case SI
            case B
        }
        /// Determines a formatting rule for the tick exponents. For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*, 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
        public var exponentFormat: ExponentFormat?
    
        /// If *all*, all exponents are shown besides their significands. If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the last tick is shown. If *none*, no exponents appear.
        public enum ShowExponent: String, Encodable {
            case all
            case first
            case last
            case none
        }
        /// If *all*, all exponents are shown besides their significands. If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the last tick is shown. If *none*, no exponents appear.
        public var showExponent: ShowExponent?
    
        public struct Title: Encodable {
            /// Sets the title of the color bar. Note that before the existence of `title.text`, the title's contents used to be defined as the `title` attribute itself. This behavior has been deprecated.
            public var text: String?
        
            /// Sets this color bar's title font. Note that the title's font used to be set by the now deprecated `titlefont` attribute.
            public struct Font: Encodable {
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
            /// Sets this color bar's title font. Note that the title's font used to be set by the now deprecated `titlefont` attribute.
            public var font: Font?
        
            /// Determines the location of color bar's title with respect to the color bar. Note that the title's location used to be set by the now deprecated `titleside` attribute.
            public enum Side: String, Encodable {
                case right
                case top
                case bottom
            }
            /// Determines the location of color bar's title with respect to the color bar. Note that the title's location used to be set by the now deprecated `titleside` attribute.
            public var side: Side?
        
            public init(text: String? = nil, font: Font? = nil, side: Side? = nil) {
                self.text = text
                self.font = font
                self.side = side
            }
        }
        public var title: Title?
    
        public struct Deprecated: Encodable {
            /// Deprecated in favor of color bar's `title.text`. Note that value of color bar's `title` is no longer a simple *string* but a set of sub-attributes.
            public var title: String?
        
            /// Deprecated in favor of color bar's `title.font`.
            public struct TitleFont: Encodable {
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
            /// Deprecated in favor of color bar's `title.font`.
            public var titleFont: TitleFont?
        
            /// Deprecated in favor of color bar's `title.side`.
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

    /// Sets a reference to a shared color axis. References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings for these shared color axes are set in the layout, under `layout.coloraxis`, `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
    public var colorAxis: SubPlotID?

    /// Sets the opacity of the surface. Please note that in the case of using high `opacity` values for example a value greater than or equal to 0.5 on two surfaces (and 0.25 with four surfaces), an overlay of multiple transparent surfaces may not perfectly be sorted in depth by the webgl API. This behavior may be improved in the near future and is subject to change.
    public var opacity: Double?

    /// Sets the opacityscale. The opacityscale must be an array containing arrays mapping a normalized value to an opacity value. At minimum, a mapping for the lowest (0) and highest (1) values are required. For example, `[[0, 1], [0.5, 0.2], [1, 1]]` means that higher/lower values would have higher opacity values and those in the middle would be more transparent Alternatively, `opacityscale` may be a palette name string of the following list: 'min', 'max', 'extremes' and 'uniform'. The default is 'uniform'.
    public var opacityScale: Anything?

    public struct LightPosition: Encodable {
        /// Numeric vector, representing the X coordinate for each vertex.
        public var x: Double?
    
        /// Numeric vector, representing the Y coordinate for each vertex.
        public var y: Double?
    
        /// Numeric vector, representing the Z coordinate for each vertex.
        public var z: Double?
    
        public init(x: Double? = nil, y: Double? = nil, z: Double? = nil) {
            self.x = x
            self.y = y
            self.z = z
        }
    }
    public var lightPosition: LightPosition?

    public struct Lighting: Encodable {
        /// Epsilon for vertex normals calculation avoids math issues arising from degenerate geometry.
        public var vertexNormalsEpsilon: Double?
    
        /// Epsilon for face normals calculation avoids math issues arising from degenerate geometry.
        public var faceNormalsEpsilon: Double?
    
        /// Ambient light increases overall color visibility but can wash out the image.
        public var ambient: Double?
    
        /// Represents the extent that incident rays are reflected in a range of angles.
        public var diffuse: Double?
    
        /// Represents the level that incident rays are reflected in a single direction, causing shine.
        public var specular: Double?
    
        /// Alters specular reflection; the rougher the surface, the wider and less contrasty the shine.
        public var roughness: Double?
    
        /// Represents the reflectance as a dependency of the viewing angle; e.g. paper is reflective when viewing it from the edge of the paper (almost 90 degrees), causing shine.
        public var fresnel: Double?
    
        public init(vertexNormalsEpsilon: Double? = nil, faceNormalsEpsilon: Double? = nil, ambient: Double? = nil, diffuse: Double? = nil, specular: Double? = nil, roughness: Double? = nil, fresnel: Double? = nil) {
            self.vertexNormalsEpsilon = vertexNormalsEpsilon
            self.faceNormalsEpsilon = faceNormalsEpsilon
            self.ambient = ambient
            self.diffuse = diffuse
            self.specular = specular
            self.roughness = roughness
            self.fresnel = fresnel
        }
    }
    public var lighting: Lighting?

    /// Determines whether or not normal smoothing is applied to the meshes, creating meshes with an angular, low-poly look via flat reflections.
    public var flatShading: Bool?

    public struct Contour: Encodable {
        /// Sets whether or not dynamic contours are shown on hover
        public var show: Bool?
    
        /// Sets the color of the contour lines.
        public var color: Color?
    
        /// Sets the width of the contour lines.
        public var width: Double?
    
        public init(show: Bool? = nil, color: Color? = nil, width: Double? = nil) {
            self.show = show
            self.color = color
            self.width = width
        }
    }
    public var contour: Contour?

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

    /// Sets a reference between this trace's 3D coordinate system and a 3D scene. If *scene* (the default value), the (x,y,z) coordinates refer to `layout.scene`. If *scene2*, the (x,y,z) coordinates refer to `layout.scene2`, and so on.
    public var scene: SubPlotID?

    /// Sets the source reference on plot.ly for  ids .
    public var idsSource: String?

    /// Sets the source reference on plot.ly for  customdata .
    public var customDataSource: String?

    /// Sets the source reference on plot.ly for  meta .
    public var metaSource: String?

    /// Sets the source reference on plot.ly for  x .
    public var xSource: String?

    /// Sets the source reference on plot.ly for  y .
    public var ySource: String?

    /// Sets the source reference on plot.ly for  z .
    public var zSource: String?

    /// Sets the source reference on plot.ly for  value .
    public var valueSource: String?

    /// Sets the source reference on plot.ly for  text .
    public var textSource: String?

    /// Sets the source reference on plot.ly for  hovertext .
    public var hoverTextSource: String?

    /// Sets the source reference on plot.ly for  hovertemplate .
    public var hoverTemplateSource: String?

    /// Sets the source reference on plot.ly for  hoverinfo .
    public var hoverInfoSource: String?

    public init(visible: Visible? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, hoverLabel: HoverLabel? = nil, stream: Stream? = nil, uiRevision: Anything? = nil, x: [Double]? = nil, y: [Double]? = nil, z: [Double]? = nil, value: [Double]? = nil, isoMin: Double? = nil, isoMax: Double? = nil, surface: Surface? = nil, spaceFrame: SpaceFrame? = nil, slices: Slices? = nil, caps: Caps? = nil, text: String? = nil, hoverText: String? = nil, hoverTemplate: String? = nil, cAuto: Bool? = nil, cMin: Double? = nil, cMax: Double? = nil, cMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: ColorBar? = nil, colorAxis: SubPlotID? = nil, opacity: Double? = nil, opacityScale: Anything? = nil, lightPosition: LightPosition? = nil, lighting: Lighting? = nil, flatShading: Bool? = nil, contour: Contour? = nil, hoverInfo: HoverInfo? = nil, scene: SubPlotID? = nil, idsSource: String? = nil, customDataSource: String? = nil, metaSource: String? = nil, xSource: String? = nil, ySource: String? = nil, zSource: String? = nil, valueSource: String? = nil, textSource: String? = nil, hoverTextSource: String? = nil, hoverTemplateSource: String? = nil, hoverInfoSource: String? = nil) {
        self.visible = visible
        self.name = name
        self.uid = uid
        self.ids = ids
        self.customData = customData
        self.meta = meta
        self.hoverLabel = hoverLabel
        self.stream = stream
        self.uiRevision = uiRevision
        self.x = x
        self.y = y
        self.z = z
        self.value = value
        self.isoMin = isoMin
        self.isoMax = isoMax
        self.surface = surface
        self.spaceFrame = spaceFrame
        self.slices = slices
        self.caps = caps
        self.text = text
        self.hoverText = hoverText
        self.hoverTemplate = hoverTemplate
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
        self.opacity = opacity
        self.opacityScale = opacityScale
        self.lightPosition = lightPosition
        self.lighting = lighting
        self.flatShading = flatShading
        self.contour = contour
        self.hoverInfo = hoverInfo
        self.scene = scene
        self.idsSource = idsSource
        self.customDataSource = customDataSource
        self.metaSource = metaSource
        self.xSource = xSource
        self.ySource = ySource
        self.zSource = zSource
        self.valueSource = valueSource
        self.textSource = textSource
        self.hoverTextSource = hoverTextSource
        self.hoverTemplateSource = hoverTemplateSource
        self.hoverInfoSource = hoverInfoSource
    }
}