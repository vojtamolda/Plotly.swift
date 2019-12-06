/// Visualize hierarchal data from leaves (and/or outer branches) towards root with rectangles. The treemap sectors are determined by the entries in *labels* or *ids* and in *parents*.
public struct Treemap: Trace {
    public let type: String = "treemap"

    public let animatable: Bool = true

    /// Determines whether or not this trace is visible. If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the legend itself is visible).
    public enum Visible: String, Encodable {
        case yes
        case no
        case legendonly
    }
    /// Determines whether or not this trace is visible. If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the legend itself is visible).
    public var visible: Visible?

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

    /// Sets the labels of each of the sectors.
    public var labels: [Double]?

    /// Sets the parent sectors for each of the sectors. Empty string items '' are understood to reference the root node in the hierarchy. If `ids` is filled, `parents` items are understood to be "ids" themselves. When `ids` is not set, plotly attempts to find matching items in `labels`, but beware they must be unique.
    public var parents: [Double]?

    /// Sets the values associated with each of the sectors. Use with `branchvalues` to determine how the values are summed.
    public var values: [Double]?

    /// Determines how the items in `values` are summed. When set to *total*, items in `values` are taken to be value of all its descendants. When set to *remainder*, items in `values` corresponding to the root and the branches sectors are taken to be the extra part not part of the sum of the values at their leaves.
    public enum Branchvalues: String, Encodable {
        case remainder
        case total
    }
    /// Determines how the items in `values` are summed. When set to *total*, items in `values` are taken to be value of all its descendants. When set to *remainder*, items in `values` corresponding to the root and the branches sectors are taken to be the extra part not part of the sum of the values at their leaves.
    public var branchvalues: Branchvalues?

    /// Determines default for `values` when it is not provided, by inferring a 1 for each of the *leaves* and/or *branches*, otherwise 0.
    public struct Count: OptionSet, Encodable {
        public let rawValue: Int
    
        public static let branches = Count(rawValue: 1 << 0)
        public static let leaves = Count(rawValue: 1 << 1)
    
        public init(rawValue: Int) { self.rawValue = rawValue }
    
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["branches"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["leaves"] }
            var container = encoder.singleValueContainer()
            try container.encode(options.joined(separator: "+"))
        }
    }
    /// Determines default for `values` when it is not provided, by inferring a 1 for each of the *leaves* and/or *branches*, otherwise 0.
    public var count: Count?

    /// Sets the level from which this trace hierarchy is rendered. Set `level` to `''` to start from the root node in the hierarchy. Must be an "id" if `ids` is filled in, otherwise plotly attempts to find a matching item in `labels`.
    public var level: Anything?

    /// Sets the number of rendered sectors from any given `level`. Set `maxdepth` to *-1* to render all the levels in the hierarchy.
    public var maxdepth: Int?

    public struct Tiling: Encodable {
        /// Determines d3 treemap solver. For more info please refer to https://github.com/d3/d3-hierarchy#treemap-tiling
        public enum Packing: String, Encodable {
            case squarify
            case binary
            case dice
            case slice
            case slicedice
            case diceslice
        }
        /// Determines d3 treemap solver. For more info please refer to https://github.com/d3/d3-hierarchy#treemap-tiling
        public var packing: Packing?
    
        /// When using *squarify* `packing` algorithm, according to https://github.com/d3/d3-hierarchy/blob/master/README.md#squarify_ratio this option specifies the desired aspect ratio of the generated rectangles. The ratio must be specified as a number greater than or equal to one. Note that the orientation of the generated rectangles (tall or wide) is not implied by the ratio; for example, a ratio of two will attempt to produce a mixture of rectangles whose width:height ratio is either 2:1 or 1:2. When using *squarify*, unlike d3 which uses the Golden Ratio i.e. 1.618034, Plotly applies 1 to increase squares in treemap layouts.
        public var squarifyratio: Double?
    
        /// Determines if the positions obtained from solver are flipped on each axis.
        public struct Flip: OptionSet, Encodable {
            public let rawValue: Int
        
            public static let x = Flip(rawValue: 1 << 0)
            public static let y = Flip(rawValue: 1 << 1)
        
            public init(rawValue: Int) { self.rawValue = rawValue }
        
            public func encode(to encoder: Encoder) throws {
                var options = [String]()
                if (self.rawValue & 1 << 0) != 0 { options += ["x"] }
                if (self.rawValue & 1 << 1) != 0 { options += ["y"] }
                var container = encoder.singleValueContainer()
                try container.encode(options.joined(separator: "+"))
            }
        }
        /// Determines if the positions obtained from solver are flipped on each axis.
        public var flip: Flip?
    
        /// Sets the inner padding (in px).
        public var pad: Double?
    
        public init(packing: Packing? = nil, squarifyratio: Double? = nil, flip: Flip? = nil, pad: Double? = nil) {
            self.packing = packing
            self.squarifyratio = squarifyratio
            self.flip = flip
            self.pad = pad
        }
    }
    public var tiling: Tiling?

    public struct Marker: Encodable {
        public struct Pad: Encodable {
            /// Sets the padding form the top (in px).
            public var t: Double?
        
            /// Sets the padding form the left (in px).
            public var l: Double?
        
            /// Sets the padding form the right (in px).
            public var r: Double?
        
            /// Sets the padding form the bottom (in px).
            public var b: Double?
        
            public init(t: Double? = nil, l: Double? = nil, r: Double? = nil, b: Double? = nil) {
                self.t = t
                self.l = l
                self.r = r
                self.b = b
            }
        }
        public var pad: Pad?
    
        /// Sets the color of each sector of this trace. If not specified, the default trace color set is used to pick the sector colors.
        public var colors: [Double]?
    
        /// Determines if the sector colors are faded towards the background from the leaves up to the headers. This option is unavailable when a `colorscale` is present, defaults to false when `marker.colors` is set, but otherwise defaults to true. When set to *reversed*, the fading direction is inverted, that is the top elements within hierarchy are drawn with fully saturated colors while the leaves are faded towards the background color.
        public enum Depthfade: String, Encodable {
            case yes
            case no
            case reversed
        }
        /// Determines if the sector colors are faded towards the background from the leaves up to the headers. This option is unavailable when a `colorscale` is present, defaults to false when `marker.colors` is set, but otherwise defaults to true. When set to *reversed*, the fading direction is inverted, that is the top elements within hierarchy are drawn with fully saturated colors while the leaves are faded towards the background color.
        public var depthfade: Depthfade?
    
        public struct Line: Encodable {
            /// Sets the color of the line enclosing each sector. Defaults to the `paper_bgcolor` value.
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
    
        /// Determines whether or not the color domain is computed with respect to the input data (here colors) or the bounds set in `marker.cmin` and `marker.cmax`  Has an effect only if colorsis set to a numerical array. Defaults to `false` when `marker.cmin` and `marker.cmax` are set by the user.
        public var cauto: Bool?
    
        /// Sets the lower bound of the color domain. Has an effect only if colorsis set to a numerical array. Value should have the same units as colors and if set, `marker.cmax` must be set as well.
        public var cmin: Double?
    
        /// Sets the upper bound of the color domain. Has an effect only if colorsis set to a numerical array. Value should have the same units as colors and if set, `marker.cmin` must be set as well.
        public var cmax: Double?
    
        /// Sets the mid-point of the color domain by scaling `marker.cmin` and/or `marker.cmax` to be equidistant to this point. Has an effect only if colorsis set to a numerical array. Value should have the same units as colors. Has no effect when `marker.cauto` is `false`.
        public var cmid: Double?
    
        /// Sets the colorscale. Has an effect only if colorsis set to a numerical array. The colorscale must be an array containing arrays mapping a normalized value to an rgb, rgba, hex, hsl, hsv, or named color string. At minimum, a mapping for the lowest (0) and highest (1) values are required. For example, `[[0, 'rgb(0,0,255)'], [1, 'rgb(255,0,0)']]`. To control the bounds of the colorscale in color space, use`marker.cmin` and `marker.cmax`. Alternatively, `colorscale` may be a palette name string of the following list: Greys,YlGnBu,Greens,YlOrRd,Bluered,RdBu,Reds,Blues,Picnic,Rainbow,Portland,Jet,Hot,Blackbody,Earth,Electric,Viridis,Cividis.
        public var colorscale: ColorScale?
    
        /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `marker.colorscale`. Has an effect only if colorsis set to a numerical array. In case `colorscale` is unspecified or `autocolorscale` is true, the default  palette will be chosen according to whether numbers in the `color` array are all positive, all negative or mixed.
        public var autocolorscale: Bool?
    
        /// Reverses the color mapping if true. Has an effect only if colorsis set to a numerical array. If true, `marker.cmin` will correspond to the last color in the array and `marker.cmax` will correspond to the first color.
        public var reversescale: Bool?
    
        /// Determines whether or not a colorbar is displayed for this trace. Has an effect only if colorsis set to a numerical array.
        public var showscale: Bool?
    
        public struct Colorbar: Encodable {
            /// Determines whether this color bar's thickness (i.e. the measure in the constant color direction) is set in units of plot *fraction* or in *pixels*. Use `thickness` to set the value.
            public enum Thicknessmode: String, Encodable {
                case fraction
                case pixels
            }
            /// Determines whether this color bar's thickness (i.e. the measure in the constant color direction) is set in units of plot *fraction* or in *pixels*. Use `thickness` to set the value.
            public var thicknessmode: Thicknessmode?
        
            /// Sets the thickness of the color bar This measure excludes the size of the padding, ticks and labels.
            public var thickness: Double?
        
            /// Determines whether this color bar's length (i.e. the measure in the color variation direction) is set in units of plot *fraction* or in *pixels. Use `len` to set the value.
            public enum Lenmode: String, Encodable {
                case fraction
                case pixels
            }
            /// Determines whether this color bar's length (i.e. the measure in the color variation direction) is set in units of plot *fraction* or in *pixels. Use `len` to set the value.
            public var lenmode: Lenmode?
        
            /// Sets the length of the color bar This measure excludes the padding of both ends. That is, the color bar length is this length minus the padding on both ends.
            public var len: Double?
        
            /// Sets the x position of the color bar (in plot fraction).
            public var x: Double?
        
            /// Sets this color bar's horizontal position anchor. This anchor binds the `x` position to the *left*, *center* or *right* of the color bar.
            public enum Xanchor: String, Encodable {
                case left
                case center
                case right
            }
            /// Sets this color bar's horizontal position anchor. This anchor binds the `x` position to the *left*, *center* or *right* of the color bar.
            public var xanchor: Xanchor?
        
            /// Sets the amount of padding (in px) along the x direction.
            public var xpad: Double?
        
            /// Sets the y position of the color bar (in plot fraction).
            public var y: Double?
        
            /// Sets this color bar's vertical position anchor This anchor binds the `y` position to the *top*, *middle* or *bottom* of the color bar.
            public enum Yanchor: String, Encodable {
                case top
                case middle
                case bottom
            }
            /// Sets this color bar's vertical position anchor This anchor binds the `y` position to the *top*, *middle* or *bottom* of the color bar.
            public var yanchor: Yanchor?
        
            /// Sets the amount of padding (in px) along the y direction.
            public var ypad: Double?
        
            /// Sets the axis line color.
            public var outlinecolor: Color?
        
            /// Sets the width (in px) of the axis line.
            public var outlinewidth: Double?
        
            /// Sets the axis line color.
            public var bordercolor: Color?
        
            /// Sets the width (in px) or the border enclosing this color bar.
            public var borderwidth: Double?
        
            /// Sets the color of padded area.
            public var bgcolor: Color?
        
            /// Sets the tick mode for this axis. If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is provided).
            public enum Tickmode: String, Encodable {
                case auto
                case linear
                case array
            }
            /// Sets the tick mode for this axis. If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is provided).
            public var tickmode: Tickmode?
        
            /// Specifies the maximum number of ticks for the particular axis. The actual number of ticks will be chosen automatically to be less than or equal to `nticks`. Has an effect only if `tickmode` is set to *auto*.
            public var nticks: Int?
        
            /// Sets the placement of the first tick on this axis. Use with `dtick`. If the axis `type` is *log*, then you must take the log of your starting tick (e.g. to set the starting tick to 100, set the `tick0` to 2) except when `dtick`=*L<f>* (see `dtick` for more info). If the axis `type` is *date*, it should be a date string, like date data. If the axis `type` is *category*, it should be a number, using the scale where each category is assigned a serial number from zero in the order it appears.
            public var tick0: Anything?
        
            /// Sets the step in-between ticks on this axis. Use with `tick0`. Must be a positive number, or special strings available to *log* and *date* axes. If the axis `type` is *log*, then ticks are set every 10^(n*dtick) where n is the tick number. For example, to set a tick mark at 1, 10, 100, 1000, ... set dtick to 1. To set tick marks at 1, 100, 10000, ... set dtick to 2. To set tick marks at 1, 5, 25, 125, 625, 3125, ... set dtick to log_10(5), or 0.69897000433. *log* has several special values; *L<f>*, where `f` is a positive number, gives ticks linearly spaced in value (but not position). For example `tick0` = 0.1, `dtick` = *L0.5* will put ticks at 0.1, 0.6, 1.1, 1.6 etc. To show powers of 10 plus small digits between, use *D1* (all digits) or *D2* (only 2 and 5). `tick0` is ignored for *D1* and *D2*. If the axis `type` is *date*, then you must convert the time to milliseconds. For example, to set the interval between ticks to one day, set `dtick` to 86400000.0. *date* also has special values *M<n>* gives ticks spaced by a number of months. `n` must be a positive integer. To set ticks on the 15th of every third month, set `tick0` to *2000-01-15* and `dtick` to *M3*. To set ticks every 4 years, set `dtick` to *M48*
            public var dtick: Anything?
        
            /// Sets the values at which ticks on this axis appear. Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
            public var tickvals: [Double]?
        
            /// Sets the text displayed at the ticks position via `tickvals`. Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
            public var ticktext: [Double]?
        
            /// Determines whether ticks are drawn or not. If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside (inside) the axis lines.
            public enum Ticks: String, Encodable {
                case outside
                case inside
                case none
            }
            /// Determines whether ticks are drawn or not. If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside (inside) the axis lines.
            public var ticks: Ticks?
        
            /// Sets the tick length (in px).
            public var ticklen: Double?
        
            /// Sets the tick width (in px).
            public var tickwidth: Double?
        
            /// Sets the tick color.
            public var tickcolor: Color?
        
            /// Determines whether or not the tick labels are drawn.
            public var showticklabels: Bool?
        
            /// Sets the color bar's tick label font
            public struct Tickfont: Encodable {
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
            public var tickfont: Tickfont?
        
            /// Sets the angle of the tick labels with respect to the horizontal. For example, a `tickangle` of -90 draws the tick labels vertically.
            public var tickangle: Angle?
        
            /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to those in Python. For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format And for dates see: https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            public var tickformat: String?
        
            public struct Tickformatstops: Encodable {
                public struct Items: Encodable {
                    public struct Tickformatstop: Encodable {
                        /// Determines whether or not this stop is used. If `false`, this stop is ignored even within its `dtickrange`.
                        public var enabled: Bool?
                    
                        /// range [*min*, *max*], where *min*, *max* - dtick values which describe some zoom level, it is possible to omit *min* or *max* value by passing *null*
                        public var dtickrange: InfoArray?
                    
                        /// string - dtickformat for described zoom level, the same as *tickformat*
                        public var value: String?
                    
                        /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. You can modify these items in the output figure by making your own item with `templateitemname` matching this `name` alongside your modifications (including `visible: false` or `enabled: false` to hide it). Has no effect outside of a template.
                        public var name: String?
                    
                        /// Used to refer to a named item in this array in the template. Named items from the template will be created even without a matching item in the input figure, but you can modify one by making an item with `templateitemname` matching its `name`, alongside your modifications (including `visible: false` or `enabled: false` to hide it). If there is no template or no matching item, this item will be hidden unless you explicitly show it with `visible: true`.
                        public var templateitemname: String?
                    
                        public init(enabled: Bool? = nil, dtickrange: InfoArray? = nil, value: String? = nil, name: String? = nil, templateitemname: String? = nil) {
                            self.enabled = enabled
                            self.dtickrange = dtickrange
                            self.value = value
                            self.name = name
                            self.templateitemname = templateitemname
                        }
                    }
                    public var tickformatstop: Tickformatstop?
                
                    public init(tickformatstop: Tickformatstop? = nil) {
                        self.tickformatstop = tickformatstop
                    }
                }
                public var items: Items?
            
                public init(items: Items? = nil) {
                    self.items = items
                }
            }
            public var tickformatstops: Tickformatstops?
        
            /// Sets a tick label prefix.
            public var tickprefix: String?
        
            /// If *all*, all tick labels are displayed with a prefix. If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is displayed with a suffix. If *none*, tick prefixes are hidden.
            public enum Showtickprefix: String, Encodable {
                case all
                case first
                case last
                case none
            }
            /// If *all*, all tick labels are displayed with a prefix. If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is displayed with a suffix. If *none*, tick prefixes are hidden.
            public var showtickprefix: Showtickprefix?
        
            /// Sets a tick label suffix.
            public var ticksuffix: String?
        
            /// Same as `showtickprefix` but for tick suffixes.
            public enum Showticksuffix: String, Encodable {
                case all
                case first
                case last
                case none
            }
            /// Same as `showtickprefix` but for tick suffixes.
            public var showticksuffix: Showticksuffix?
        
            /// If "true", even 4-digit integers are separated
            public var separatethousands: Bool?
        
            /// Determines a formatting rule for the tick exponents. For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*, 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
            public enum Exponentformat: String, Encodable {
                case none
                case e
                case E
                case power
                case SI
                case B
            }
            /// Determines a formatting rule for the tick exponents. For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*, 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
            public var exponentformat: Exponentformat?
        
            /// If *all*, all exponents are shown besides their significands. If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the last tick is shown. If *none*, no exponents appear.
            public enum Showexponent: String, Encodable {
                case all
                case first
                case last
                case none
            }
            /// If *all*, all exponents are shown besides their significands. If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the last tick is shown. If *none*, no exponents appear.
            public var showexponent: Showexponent?
        
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
        
            public struct _Deprecated: Encodable {
                /// Deprecated in favor of color bar's `title.text`. Note that value of color bar's `title` is no longer a simple *string* but a set of sub-attributes.
                public var title: String?
            
                /// Deprecated in favor of color bar's `title.font`.
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
                /// Deprecated in favor of color bar's `title.font`.
                public var titlefont: Titlefont?
            
                /// Deprecated in favor of color bar's `title.side`.
                public enum Titleside: String, Encodable {
                    case right
                    case top
                    case bottom
                }
                /// Deprecated in favor of color bar's `title.side`.
                public var titleside: Titleside?
            
                public init(title: String? = nil, titlefont: Titlefont? = nil, titleside: Titleside? = nil) {
                    self.title = title
                    self.titlefont = titlefont
                    self.titleside = titleside
                }
            }
            public var _deprecated: _Deprecated?
        
            /// Sets the source reference on plot.ly for  tickvals .
            public var tickvalssrc: String?
        
            /// Sets the source reference on plot.ly for  ticktext .
            public var ticktextsrc: String?
        
            public init(thicknessmode: Thicknessmode? = nil, thickness: Double? = nil, lenmode: Lenmode? = nil, len: Double? = nil, x: Double? = nil, xanchor: Xanchor? = nil, xpad: Double? = nil, y: Double? = nil, yanchor: Yanchor? = nil, ypad: Double? = nil, outlinecolor: Color? = nil, outlinewidth: Double? = nil, bordercolor: Color? = nil, borderwidth: Double? = nil, bgcolor: Color? = nil, tickmode: Tickmode? = nil, nticks: Int? = nil, tick0: Anything? = nil, dtick: Anything? = nil, tickvals: [Double]? = nil, ticktext: [Double]? = nil, ticks: Ticks? = nil, ticklen: Double? = nil, tickwidth: Double? = nil, tickcolor: Color? = nil, showticklabels: Bool? = nil, tickfont: Tickfont? = nil, tickangle: Angle? = nil, tickformat: String? = nil, tickformatstops: Tickformatstops? = nil, tickprefix: String? = nil, showtickprefix: Showtickprefix? = nil, ticksuffix: String? = nil, showticksuffix: Showticksuffix? = nil, separatethousands: Bool? = nil, exponentformat: Exponentformat? = nil, showexponent: Showexponent? = nil, title: Title? = nil, _deprecated: _Deprecated? = nil, tickvalssrc: String? = nil, ticktextsrc: String? = nil) {
                self.thicknessmode = thicknessmode
                self.thickness = thickness
                self.lenmode = lenmode
                self.len = len
                self.x = x
                self.xanchor = xanchor
                self.xpad = xpad
                self.y = y
                self.yanchor = yanchor
                self.ypad = ypad
                self.outlinecolor = outlinecolor
                self.outlinewidth = outlinewidth
                self.bordercolor = bordercolor
                self.borderwidth = borderwidth
                self.bgcolor = bgcolor
                self.tickmode = tickmode
                self.nticks = nticks
                self.tick0 = tick0
                self.dtick = dtick
                self.tickvals = tickvals
                self.ticktext = ticktext
                self.ticks = ticks
                self.ticklen = ticklen
                self.tickwidth = tickwidth
                self.tickcolor = tickcolor
                self.showticklabels = showticklabels
                self.tickfont = tickfont
                self.tickangle = tickangle
                self.tickformat = tickformat
                self.tickformatstops = tickformatstops
                self.tickprefix = tickprefix
                self.showtickprefix = showtickprefix
                self.ticksuffix = ticksuffix
                self.showticksuffix = showticksuffix
                self.separatethousands = separatethousands
                self.exponentformat = exponentformat
                self.showexponent = showexponent
                self.title = title
                self._deprecated = _deprecated
                self.tickvalssrc = tickvalssrc
                self.ticktextsrc = ticktextsrc
            }
        }
        public var colorbar: Colorbar?
    
        /// Sets a reference to a shared color axis. References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings for these shared color axes are set in the layout, under `layout.coloraxis`, `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
        public var coloraxis: SubplotID?
    
        /// Sets the source reference on plot.ly for  colors .
        public var colorssrc: String?
    
        public init(pad: Pad? = nil, colors: [Double]? = nil, depthfade: Depthfade? = nil, line: Line? = nil, cauto: Bool? = nil, cmin: Double? = nil, cmax: Double? = nil, cmid: Double? = nil, colorscale: ColorScale? = nil, autocolorscale: Bool? = nil, reversescale: Bool? = nil, showscale: Bool? = nil, colorbar: Colorbar? = nil, coloraxis: SubplotID? = nil, colorssrc: String? = nil) {
            self.pad = pad
            self.colors = colors
            self.depthfade = depthfade
            self.line = line
            self.cauto = cauto
            self.cmin = cmin
            self.cmax = cmax
            self.cmid = cmid
            self.colorscale = colorscale
            self.autocolorscale = autocolorscale
            self.reversescale = reversescale
            self.showscale = showscale
            self.colorbar = colorbar
            self.coloraxis = coloraxis
            self.colorssrc = colorssrc
        }
    }
    public var marker: Marker?

    public struct Pathbar: Encodable {
        /// Determines if the path bar is drawn i.e. outside the trace `domain` and with one pixel gap.
        public var visible: Bool?
    
        /// Determines on which side of the the treemap the `pathbar` should be presented.
        public enum Side: String, Encodable {
            case top
            case bottom
        }
        /// Determines on which side of the the treemap the `pathbar` should be presented.
        public var side: Side?
    
        /// Determines which shape is used for edges between `barpath` labels.
        public enum Edgeshape: String, Encodable {
            case bar = "|"
            case rightCaret = ">"
            case leftCaret = "<"
            case forwardSlash = "/"
            case backwardSlash = "\\"
        }
        /// Determines which shape is used for edges between `barpath` labels.
        public var edgeshape: Edgeshape?
    
        /// Sets the thickness of `pathbar` (in px). If not specified the `pathbar.textfont.size` is used with 3 pixles extra padding on each side.
        public var thickness: Double?
    
        /// Sets the font used inside `pathbar`.
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
        /// Sets the font used inside `pathbar`.
        public var textfont: Textfont?
    
        public init(visible: Bool? = nil, side: Side? = nil, edgeshape: Edgeshape? = nil, thickness: Double? = nil, textfont: Textfont? = nil) {
            self.visible = visible
            self.side = side
            self.edgeshape = edgeshape
            self.thickness = thickness
            self.textfont = textfont
        }
    }
    public var pathbar: Pathbar?

    /// Sets text elements associated with each sector. If trace `textinfo` contains a *text* flag, these elements will be seen on the chart. If trace `hoverinfo` contains a *text* flag and *hovertext* is not set, these elements will be seen in the hover labels.
    public var text: [Double]?

    /// Determines which trace information appear on the graph.
    public struct Textinfo: OptionSet, Encodable {
        public let rawValue: Int
    
        public static let label = Textinfo(rawValue: 1 << 0)
        public static let text = Textinfo(rawValue: 1 << 1)
        public static let value = Textinfo(rawValue: 1 << 2)
        public static let currentpath = Textinfo(rawValue: 1 << 3)
        public static let percentroot = Textinfo(rawValue: 1 << 4)
        public static let percententry = Textinfo(rawValue: 1 << 5)
        public static let percentparent = Textinfo(rawValue: 1 << 6)
    
        public init(rawValue: Int) { self.rawValue = rawValue }
    
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["label"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["text"] }
            if (self.rawValue & 1 << 2) != 0 { options += ["value"] }
            if (self.rawValue & 1 << 3) != 0 { options += ["current path"] }
            if (self.rawValue & 1 << 4) != 0 { options += ["percent root"] }
            if (self.rawValue & 1 << 5) != 0 { options += ["percent entry"] }
            if (self.rawValue & 1 << 6) != 0 { options += ["percent parent"] }
            var container = encoder.singleValueContainer()
            try container.encode(options.joined(separator: "+"))
        }
    }
    /// Determines which trace information appear on the graph.
    public var textinfo: Textinfo?

    /// Template string used for rendering the information text that appear on points. Note that this will override `textinfo`. Variables are inserted using %{variable}, for example "y: %{y}". Numbers are formatted using d3-format's syntax %{variable:d3-format}, for example "Price: %{y:$.2f}". https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format for details on the formatting syntax. Dates are formatted using d3-time-format's syntax %{variable|d3-time-format}, for example "Day: %{2019-01-01|%A}". https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format for details on the date formatting syntax. Every attributes that can be specified per-point (the ones that are `arrayOk: true`) are available. variables `currentPath`, `root`, `entry`, `percentRoot`, `percentEntry`, `percentParent`, `label` and `value`.
    public var texttemplate: String?

    /// Sets hover text elements associated with each sector. If a single string, the same string appears for all data points. If an array of string, the items are mapped in order of this trace's sectors. To be seen, trace `hoverinfo` must contain a *text* flag.
    public var hovertext: String?

    /// Determines which trace information appear on hover. If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set, click and hover events are still fired.
    public struct Hoverinfo: OptionSet, Encodable {
        public let rawValue: Int
    
        public static let label = Hoverinfo(rawValue: 1 << 0)
        public static let text = Hoverinfo(rawValue: 1 << 1)
        public static let value = Hoverinfo(rawValue: 1 << 2)
        public static let name = Hoverinfo(rawValue: 1 << 3)
        public static let currentpath = Hoverinfo(rawValue: 1 << 4)
        public static let percentroot = Hoverinfo(rawValue: 1 << 5)
        public static let percententry = Hoverinfo(rawValue: 1 << 6)
        public static let percentparent = Hoverinfo(rawValue: 1 << 7)
    
        public init(rawValue: Int) { self.rawValue = rawValue }
    
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["label"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["text"] }
            if (self.rawValue & 1 << 2) != 0 { options += ["value"] }
            if (self.rawValue & 1 << 3) != 0 { options += ["name"] }
            if (self.rawValue & 1 << 4) != 0 { options += ["current path"] }
            if (self.rawValue & 1 << 5) != 0 { options += ["percent root"] }
            if (self.rawValue & 1 << 6) != 0 { options += ["percent entry"] }
            if (self.rawValue & 1 << 7) != 0 { options += ["percent parent"] }
            var container = encoder.singleValueContainer()
            try container.encode(options.joined(separator: "+"))
        }
    }
    /// Determines which trace information appear on hover. If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set, click and hover events are still fired.
    public var hoverinfo: Hoverinfo?

    /// Template string used for rendering the information that appear on hover box. Note that this will override `hoverinfo`. Variables are inserted using %{variable}, for example "y: %{y}". Numbers are formatted using d3-format's syntax %{variable:d3-format}, for example "Price: %{y:$.2f}". https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format for details on the formatting syntax. Dates are formatted using d3-time-format's syntax %{variable|d3-time-format}, for example "Day: %{2019-01-01|%A}". https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format for details on the date formatting syntax. The variables available in `hovertemplate` are the ones emitted as event data described at this link https://plot.ly/javascript/plotlyjs-events/#event-data. Additionally, every attributes that can be specified per-point (the ones that are `arrayOk: true`) are available. variables `currentPath`, `root`, `entry`, `percentRoot`, `percentEntry` and `percentParent`. Anything contained in tag `<extra>` is displayed in the secondary box, for example "<extra>{fullData.name}</extra>". To hide the secondary box completely, use an empty tag `<extra></extra>`.
    public var hovertemplate: String?

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

    /// Sets the positions of the `text` elements.
    public enum Textposition: String, Encodable {
        case topleft
        case topcenter
        case topright
        case middleleft
        case middlecenter
        case middleright
        case bottomleft
        case bottomcenter
        case bottomright
    }
    /// Sets the positions of the `text` elements.
    public var textposition: Textposition?

    public struct Domain: Encodable {
        /// Sets the horizontal domain of this treemap trace (in plot fraction).
        public var x: InfoArray?
    
        /// Sets the vertical domain of this treemap trace (in plot fraction).
        public var y: InfoArray?
    
        /// If there is a layout grid, use the domain for this row in the grid for this treemap trace .
        public var row: Int?
    
        /// If there is a layout grid, use the domain for this column in the grid for this treemap trace .
        public var column: Int?
    
        public init(x: InfoArray? = nil, y: InfoArray? = nil, row: Int? = nil, column: Int? = nil) {
            self.x = x
            self.y = y
            self.row = row
            self.column = column
        }
    }
    public var domain: Domain?

    /// Sets the source reference on plot.ly for  ids .
    public var idssrc: String?

    /// Sets the source reference on plot.ly for  customdata .
    public var customdatasrc: String?

    /// Sets the source reference on plot.ly for  meta .
    public var metasrc: String?

    /// Sets the source reference on plot.ly for  labels .
    public var labelssrc: String?

    /// Sets the source reference on plot.ly for  parents .
    public var parentssrc: String?

    /// Sets the source reference on plot.ly for  values .
    public var valuessrc: String?

    /// Sets the source reference on plot.ly for  text .
    public var textsrc: String?

    /// Sets the source reference on plot.ly for  texttemplate .
    public var texttemplatesrc: String?

    /// Sets the source reference on plot.ly for  hovertext .
    public var hovertextsrc: String?

    /// Sets the source reference on plot.ly for  hoverinfo .
    public var hoverinfosrc: String?

    /// Sets the source reference on plot.ly for  hovertemplate .
    public var hovertemplatesrc: String?

    public init(visible: Visible? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customdata: [Double]? = nil, meta: Anything? = nil, hoverlabel: Hoverlabel? = nil, stream: Stream? = nil, transforms: Transforms? = nil, uirevision: Anything? = nil, labels: [Double]? = nil, parents: [Double]? = nil, values: [Double]? = nil, branchvalues: Branchvalues? = nil, count: Count? = nil, level: Anything? = nil, maxdepth: Int? = nil, tiling: Tiling? = nil, marker: Marker? = nil, pathbar: Pathbar? = nil, text: [Double]? = nil, textinfo: Textinfo? = nil, texttemplate: String? = nil, hovertext: String? = nil, hoverinfo: Hoverinfo? = nil, hovertemplate: String? = nil, textfont: Textfont? = nil, insidetextfont: Insidetextfont? = nil, outsidetextfont: Outsidetextfont? = nil, textposition: Textposition? = nil, domain: Domain? = nil, idssrc: String? = nil, customdatasrc: String? = nil, metasrc: String? = nil, labelssrc: String? = nil, parentssrc: String? = nil, valuessrc: String? = nil, textsrc: String? = nil, texttemplatesrc: String? = nil, hovertextsrc: String? = nil, hoverinfosrc: String? = nil, hovertemplatesrc: String? = nil) {
        self.visible = visible
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
        self.parents = parents
        self.values = values
        self.branchvalues = branchvalues
        self.count = count
        self.level = level
        self.maxdepth = maxdepth
        self.tiling = tiling
        self.marker = marker
        self.pathbar = pathbar
        self.text = text
        self.textinfo = textinfo
        self.texttemplate = texttemplate
        self.hovertext = hovertext
        self.hoverinfo = hoverinfo
        self.hovertemplate = hovertemplate
        self.textfont = textfont
        self.insidetextfont = insidetextfont
        self.outsidetextfont = outsidetextfont
        self.textposition = textposition
        self.domain = domain
        self.idssrc = idssrc
        self.customdatasrc = customdatasrc
        self.metasrc = metasrc
        self.labelssrc = labelssrc
        self.parentssrc = parentssrc
        self.valuessrc = valuessrc
        self.textsrc = textsrc
        self.texttemplatesrc = texttemplatesrc
        self.hovertextsrc = hovertextsrc
        self.hoverinfosrc = hoverinfosrc
        self.hovertemplatesrc = hovertemplatesrc
    }
}