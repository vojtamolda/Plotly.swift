/// The data visualized as scatter point or lines is set in `x` and `y` using the WebGL plotting engine. Bubble charts are achieved by setting `marker.size` and/or `marker.color` to a numerical arrays.
struct Scattergl: Encodable {
    /// Determines whether or not this trace is visible. If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the legend itself is visible).
    enum Visible: String, Encodable {
        case yes
        case no
        case legendonly
    }
    /// Determines whether or not this trace is visible. If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the legend itself is visible).
    var visible: Visible?

    /// Determines whether or not an item corresponding to this trace is shown in the legend.
    var showlegend: Bool?

    /// Sets the legend group for this trace. Traces part of the same legend group hide/show at the same time when toggling legend items.
    var legendgroup: String?

    /// Sets the trace name. The trace name appear as the legend item and on hover.
    var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    var uid: String?

    /// Assigns id labels to each datum. These ids for object constancy of data points during animation. Should be an array of strings, not numbers or any other type.
    var ids: [Double]?

    /// Assigns extra data each datum. This may be useful when listening to hover, click and selection events. Note that, *scatter* traces also appends customdata items in the markers DOM elements
    var customdata: [Double]?

    /// Assigns extra meta information associated with this trace that can be used in various text attributes. Attributes such as trace `name`, graph, axis and colorbar `title.text`, annotation `text` `rangeselector`, `updatemenues` and `sliders` `label` text all support `meta`. To access the trace `meta` values in an attribute in the same trace, simply use `%{meta[i]}` where `i` is the index or key of the `meta` item in question. To access trace `meta` in layout attributes, use `%{data[n[.meta[i]}` where `i` is the index or key of the `meta` and `n` is the trace index.
    var meta: Anything?

    /// Array containing integer indices of selected points. Has an effect only for traces that support selections. Note that an empty array means an empty selection where the `unselected` are turned on for all points, whereas, any other non-array values means no selection all where the `selected` and `unselected` styles have no effect.
    var selectedpoints: Anything?

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

    /// 
    struct Hoverlabel: Encodable {
        /// Sets the background color of the hover labels for this trace
        var bgcolor: Color?
    
        /// Sets the border color of the hover labels for this trace.
        var bordercolor: Color?
    
        /// Sets the font used in hover labels.
        struct Font: Encodable {
            /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
            var family: String?
        
            /// 
            var size: Double?
        
            /// 
            var color: Color?
        
            /// Sets the source reference on plot.ly for  family .
            var familysrc: String?
        
            /// Sets the source reference on plot.ly for  size .
            var sizesrc: String?
        
            /// Sets the source reference on plot.ly for  color .
            var colorsrc: String?
        
        }
        /// Sets the font used in hover labels.
        var font: Font?
    
        /// Sets the horizontal alignment of the text content within hover label box. Has an effect only if the hover label text spans more two or more lines
        enum Align: String, Encodable {
            case left
            case right
            case auto
        }
        /// Sets the horizontal alignment of the text content within hover label box. Has an effect only if the hover label text spans more two or more lines
        var align: Align?
    
        /// Sets the default length (in number of characters) of the trace name in the hover labels for all traces. -1 shows the whole name regardless of length. 0-3 shows the first 0-3 characters, and an integer >3 will show the whole name if it is less than that many characters, but if it is longer, will truncate to `namelength - 3` characters and add an ellipsis.
        var namelength: Int?
    
        /// Sets the source reference on plot.ly for  bgcolor .
        var bgcolorsrc: String?
    
        /// Sets the source reference on plot.ly for  bordercolor .
        var bordercolorsrc: String?
    
        /// Sets the source reference on plot.ly for  align .
        var alignsrc: String?
    
        /// Sets the source reference on plot.ly for  namelength .
        var namelengthsrc: String?
    
    }
    /// 
    var hoverlabel: Hoverlabel?

    /// 
    struct Stream: Encodable {
        /// The stream id number links a data trace on a plot with a stream. See https://plot.ly/settings for more details.
        var token: String?
    
        /// Sets the maximum number of points to keep on the plots from an incoming stream. If `maxpoints` is set to *50*, only the newest 50 points will be displayed on the plot.
        var maxpoints: Double?
    
    }
    /// 
    var stream: Stream?

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

    /// Controls persistence of some user-driven changes to the trace: `constraintrange` in `parcoords` traces, as well as some `editable: true` modifications such as `name` and `colorbar.title`. Defaults to `layout.uirevision`. Note that other user-driven trace attribute changes are controlled by `layout` attributes: `trace.visible` is controlled by `layout.legend.uirevision`, `selectedpoints` is controlled by `layout.selectionrevision`, and `colorbar.(x|y)` (accessible with `config: {editable: true}`) is controlled by `layout.editrevision`. Trace changes are tracked by `uid`, which only falls back on trace index if no `uid` is provided. So if your app can add/remove traces before the end of the `data` array, such that the same trace has a different index, you can still preserve user-driven changes if you give each trace a `uid` that stays with it as it moves.
    var uirevision: Anything?

    /// Sets the x coordinates.
    var x: [Double]?

    /// Alternate to `x`. Builds a linear space of x coordinates. Use with `dx` where `x0` is the starting coordinate and `dx` the step.
    var x0: Anything?

    /// Sets the x coordinate step. See `x0` for more info.
    var dx: Double?

    /// Sets the y coordinates.
    var y: [Double]?

    /// Alternate to `y`. Builds a linear space of y coordinates. Use with `dy` where `y0` is the starting coordinate and `dy` the step.
    var y0: Anything?

    /// Sets the y coordinate step. See `y0` for more info.
    var dy: Double?

    /// Sets text elements associated with each (x,y) pair. If a single string, the same string appears over all the data points. If an array of string, the items are mapped in order to the this trace's (x,y) coordinates. If trace `hoverinfo` contains a *text* flag and *hovertext* is not set, these elements will be seen in the hover labels.
    var text: String?

    /// Sets hover text elements associated with each (x,y) pair. If a single string, the same string appears over all the data points. If an array of string, the items are mapped in order to the this trace's (x,y) coordinates. To be seen, trace `hoverinfo` must contain a *text* flag.
    var hovertext: String?

    /// Sets the positions of the `text` elements with respects to the (x,y) coordinates.
    enum Textposition: String, Encodable {
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
    /// Sets the positions of the `text` elements with respects to the (x,y) coordinates.
    var textposition: Textposition?

    /// Sets the text font.
    struct Textfont: Encodable {
        /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
        var family: String?
    
        /// 
        var size: Double?
    
        /// 
        var color: Color?
    
        /// Sets the source reference on plot.ly for  family .
        var familysrc: String?
    
        /// Sets the source reference on plot.ly for  size .
        var sizesrc: String?
    
        /// Sets the source reference on plot.ly for  color .
        var colorsrc: String?
    
    }
    /// Sets the text font.
    var textfont: Textfont?

    /// Determines the drawing mode for this scatter trace.
    struct Mode: OptionSet, Encodable {
        let rawValue: Int
    
        static let lines = Mode(rawValue: 1 << 0)
        static let markers = Mode(rawValue: 1 << 1)
        static let text = Mode(rawValue: 1 << 2)
    
        init(rawValue: Int) { self.rawValue = rawValue }
    
        func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["lines"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["markers"] }
            if (self.rawValue & 1 << 2) != 0 { options += ["text"] }
            var container = encoder.singleValueContainer()
            try container.encode(options.joined(separator: "+"))
        }
    }
    /// Determines the drawing mode for this scatter trace.
    var mode: Mode?

    /// 
    struct Line: Encodable {
        /// Sets the line color.
        var color: Color?
    
        /// Sets the line width (in px).
        var width: Double?
    
        /// Determines the line shape. The values correspond to step-wise line shapes.
        enum Shape: String, Encodable {
            case linear
            case hv
            case vh
            case hvh
            case vhv
        }
        /// Determines the line shape. The values correspond to step-wise line shapes.
        var shape: Shape?
    
        /// Sets the style of the lines.
        enum Dash: String, Encodable {
            case solid
            case dot
            case dash
            case longdash
            case dashdot
            case longdashdot
        }
        /// Sets the style of the lines.
        var dash: Dash?
    
    }
    /// 
    var line: Line?

    /// 
    struct Marker: Encodable {
        /// Sets themarkercolor. It accepts either a specific color or an array of numbers that are mapped to the colorscale relative to the max and min values of the array or relative to `marker.cmin` and `marker.cmax` if set.
        var color: Color?
    
        /// Determines whether or not the color domain is computed with respect to the input data (here in `marker.color`) or the bounds set in `marker.cmin` and `marker.cmax`  Has an effect only if in `marker.color`is set to a numerical array. Defaults to `false` when `marker.cmin` and `marker.cmax` are set by the user.
        var cauto: Bool?
    
        /// Sets the lower bound of the color domain. Has an effect only if in `marker.color`is set to a numerical array. Value should have the same units as in `marker.color` and if set, `marker.cmax` must be set as well.
        var cmin: Double?
    
        /// Sets the upper bound of the color domain. Has an effect only if in `marker.color`is set to a numerical array. Value should have the same units as in `marker.color` and if set, `marker.cmin` must be set as well.
        var cmax: Double?
    
        /// Sets the mid-point of the color domain by scaling `marker.cmin` and/or `marker.cmax` to be equidistant to this point. Has an effect only if in `marker.color`is set to a numerical array. Value should have the same units as in `marker.color`. Has no effect when `marker.cauto` is `false`.
        var cmid: Double?
    
        /// Sets the colorscale. Has an effect only if in `marker.color`is set to a numerical array. The colorscale must be an array containing arrays mapping a normalized value to an rgb, rgba, hex, hsl, hsv, or named color string. At minimum, a mapping for the lowest (0) and highest (1) values are required. For example, `[[0, 'rgb(0,0,255)'], [1, 'rgb(255,0,0)']]`. To control the bounds of the colorscale in color space, use`marker.cmin` and `marker.cmax`. Alternatively, `colorscale` may be a palette name string of the following list: Greys,YlGnBu,Greens,YlOrRd,Bluered,RdBu,Reds,Blues,Picnic,Rainbow,Portland,Jet,Hot,Blackbody,Earth,Electric,Viridis,Cividis.
        var colorscale: ColorScale?
    
        /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `marker.colorscale`. Has an effect only if in `marker.color`is set to a numerical array. In case `colorscale` is unspecified or `autocolorscale` is true, the default  palette will be chosen according to whether numbers in the `color` array are all positive, all negative or mixed.
        var autocolorscale: Bool?
    
        /// Reverses the color mapping if true. Has an effect only if in `marker.color`is set to a numerical array. If true, `marker.cmin` will correspond to the last color in the array and `marker.cmax` will correspond to the first color.
        var reversescale: Bool?
    
        /// Determines whether or not a colorbar is displayed for this trace. Has an effect only if in `marker.color`is set to a numerical array.
        var showscale: Bool?
    
        /// 
        struct Colorbar: Encodable {
            /// Determines whether this color bar's thickness (i.e. the measure in the constant color direction) is set in units of plot *fraction* or in *pixels*. Use `thickness` to set the value.
            enum Thicknessmode: String, Encodable {
                case fraction
                case pixels
            }
            /// Determines whether this color bar's thickness (i.e. the measure in the constant color direction) is set in units of plot *fraction* or in *pixels*. Use `thickness` to set the value.
            var thicknessmode: Thicknessmode?
        
            /// Sets the thickness of the color bar This measure excludes the size of the padding, ticks and labels.
            var thickness: Double?
        
            /// Determines whether this color bar's length (i.e. the measure in the color variation direction) is set in units of plot *fraction* or in *pixels. Use `len` to set the value.
            enum Lenmode: String, Encodable {
                case fraction
                case pixels
            }
            /// Determines whether this color bar's length (i.e. the measure in the color variation direction) is set in units of plot *fraction* or in *pixels. Use `len` to set the value.
            var lenmode: Lenmode?
        
            /// Sets the length of the color bar This measure excludes the padding of both ends. That is, the color bar length is this length minus the padding on both ends.
            var len: Double?
        
            /// Sets the x position of the color bar (in plot fraction).
            var x: Double?
        
            /// Sets this color bar's horizontal position anchor. This anchor binds the `x` position to the *left*, *center* or *right* of the color bar.
            enum Xanchor: String, Encodable {
                case left
                case center
                case right
            }
            /// Sets this color bar's horizontal position anchor. This anchor binds the `x` position to the *left*, *center* or *right* of the color bar.
            var xanchor: Xanchor?
        
            /// Sets the amount of padding (in px) along the x direction.
            var xpad: Double?
        
            /// Sets the y position of the color bar (in plot fraction).
            var y: Double?
        
            /// Sets this color bar's vertical position anchor This anchor binds the `y` position to the *top*, *middle* or *bottom* of the color bar.
            enum Yanchor: String, Encodable {
                case top
                case middle
                case bottom
            }
            /// Sets this color bar's vertical position anchor This anchor binds the `y` position to the *top*, *middle* or *bottom* of the color bar.
            var yanchor: Yanchor?
        
            /// Sets the amount of padding (in px) along the y direction.
            var ypad: Double?
        
            /// Sets the axis line color.
            var outlinecolor: Color?
        
            /// Sets the width (in px) of the axis line.
            var outlinewidth: Double?
        
            /// Sets the axis line color.
            var bordercolor: Color?
        
            /// Sets the width (in px) or the border enclosing this color bar.
            var borderwidth: Double?
        
            /// Sets the color of padded area.
            var bgcolor: Color?
        
            /// Sets the tick mode for this axis. If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is provided).
            enum Tickmode: String, Encodable {
                case auto
                case linear
                case array
            }
            /// Sets the tick mode for this axis. If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is provided).
            var tickmode: Tickmode?
        
            /// Specifies the maximum number of ticks for the particular axis. The actual number of ticks will be chosen automatically to be less than or equal to `nticks`. Has an effect only if `tickmode` is set to *auto*.
            var nticks: Int?
        
            /// Sets the placement of the first tick on this axis. Use with `dtick`. If the axis `type` is *log*, then you must take the log of your starting tick (e.g. to set the starting tick to 100, set the `tick0` to 2) except when `dtick`=*L<f>* (see `dtick` for more info). If the axis `type` is *date*, it should be a date string, like date data. If the axis `type` is *category*, it should be a number, using the scale where each category is assigned a serial number from zero in the order it appears.
            var tick0: Anything?
        
            /// Sets the step in-between ticks on this axis. Use with `tick0`. Must be a positive number, or special strings available to *log* and *date* axes. If the axis `type` is *log*, then ticks are set every 10^(n*dtick) where n is the tick number. For example, to set a tick mark at 1, 10, 100, 1000, ... set dtick to 1. To set tick marks at 1, 100, 10000, ... set dtick to 2. To set tick marks at 1, 5, 25, 125, 625, 3125, ... set dtick to log_10(5), or 0.69897000433. *log* has several special values; *L<f>*, where `f` is a positive number, gives ticks linearly spaced in value (but not position). For example `tick0` = 0.1, `dtick` = *L0.5* will put ticks at 0.1, 0.6, 1.1, 1.6 etc. To show powers of 10 plus small digits between, use *D1* (all digits) or *D2* (only 2 and 5). `tick0` is ignored for *D1* and *D2*. If the axis `type` is *date*, then you must convert the time to milliseconds. For example, to set the interval between ticks to one day, set `dtick` to 86400000.0. *date* also has special values *M<n>* gives ticks spaced by a number of months. `n` must be a positive integer. To set ticks on the 15th of every third month, set `tick0` to *2000-01-15* and `dtick` to *M3*. To set ticks every 4 years, set `dtick` to *M48*
            var dtick: Anything?
        
            /// Sets the values at which ticks on this axis appear. Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
            var tickvals: [Double]?
        
            /// Sets the text displayed at the ticks position via `tickvals`. Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
            var ticktext: [Double]?
        
            /// Determines whether ticks are drawn or not. If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside (inside) the axis lines.
            enum Ticks: String, Encodable {
                case outside
                case inside
                case none
            }
            /// Determines whether ticks are drawn or not. If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside (inside) the axis lines.
            var ticks: Ticks?
        
            /// Sets the tick length (in px).
            var ticklen: Double?
        
            /// Sets the tick width (in px).
            var tickwidth: Double?
        
            /// Sets the tick color.
            var tickcolor: Color?
        
            /// Determines whether or not the tick labels are drawn.
            var showticklabels: Bool?
        
            /// Sets the color bar's tick label font
            struct Tickfont: Encodable {
                /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                var family: String?
            
                /// 
                var size: Double?
            
                /// 
                var color: Color?
            
            }
            /// Sets the color bar's tick label font
            var tickfont: Tickfont?
        
            /// Sets the angle of the tick labels with respect to the horizontal. For example, a `tickangle` of -90 draws the tick labels vertically.
            var tickangle: Angle?
        
            /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to those in Python. For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format And for dates see: https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            var tickformat: String?
        
            /// 
            struct Tickformatstops: Encodable {
                /// 
                struct Items: Encodable {
                    /// 
                    struct Tickformatstop: Encodable {
                        /// Determines whether or not this stop is used. If `false`, this stop is ignored even within its `dtickrange`.
                        var enabled: Bool?
                    
                        /// range [*min*, *max*], where *min*, *max* - dtick values which describe some zoom level, it is possible to omit *min* or *max* value by passing *null*
                        var dtickrange: InfoArray?
                    
                        /// string - dtickformat for described zoom level, the same as *tickformat*
                        var value: String?
                    
                        /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. You can modify these items in the output figure by making your own item with `templateitemname` matching this `name` alongside your modifications (including `visible: false` or `enabled: false` to hide it). Has no effect outside of a template.
                        var name: String?
                    
                        /// Used to refer to a named item in this array in the template. Named items from the template will be created even without a matching item in the input figure, but you can modify one by making an item with `templateitemname` matching its `name`, alongside your modifications (including `visible: false` or `enabled: false` to hide it). If there is no template or no matching item, this item will be hidden unless you explicitly show it with `visible: true`.
                        var templateitemname: String?
                    
                    }
                    /// 
                    var tickformatstop: Tickformatstop?
                
                }
                /// 
                var items: Items?
            
            }
            /// 
            var tickformatstops: Tickformatstops?
        
            /// Sets a tick label prefix.
            var tickprefix: String?
        
            /// If *all*, all tick labels are displayed with a prefix. If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is displayed with a suffix. If *none*, tick prefixes are hidden.
            enum Showtickprefix: String, Encodable {
                case all
                case first
                case last
                case none
            }
            /// If *all*, all tick labels are displayed with a prefix. If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is displayed with a suffix. If *none*, tick prefixes are hidden.
            var showtickprefix: Showtickprefix?
        
            /// Sets a tick label suffix.
            var ticksuffix: String?
        
            /// Same as `showtickprefix` but for tick suffixes.
            enum Showticksuffix: String, Encodable {
                case all
                case first
                case last
                case none
            }
            /// Same as `showtickprefix` but for tick suffixes.
            var showticksuffix: Showticksuffix?
        
            /// If "true", even 4-digit integers are separated
            var separatethousands: Bool?
        
            /// Determines a formatting rule for the tick exponents. For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*, 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
            enum Exponentformat: String, Encodable {
                case none
                case e
                case E
                case power
                case SI
                case B
            }
            /// Determines a formatting rule for the tick exponents. For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*, 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
            var exponentformat: Exponentformat?
        
            /// If *all*, all exponents are shown besides their significands. If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the last tick is shown. If *none*, no exponents appear.
            enum Showexponent: String, Encodable {
                case all
                case first
                case last
                case none
            }
            /// If *all*, all exponents are shown besides their significands. If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the last tick is shown. If *none*, no exponents appear.
            var showexponent: Showexponent?
        
            /// 
            struct Title: Encodable {
                /// Sets the title of the color bar. Note that before the existence of `title.text`, the title's contents used to be defined as the `title` attribute itself. This behavior has been deprecated.
                var text: String?
            
                /// Sets this color bar's title font. Note that the title's font used to be set by the now deprecated `titlefont` attribute.
                struct Font: Encodable {
                    /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                    var family: String?
                
                    /// 
                    var size: Double?
                
                    /// 
                    var color: Color?
                
                }
                /// Sets this color bar's title font. Note that the title's font used to be set by the now deprecated `titlefont` attribute.
                var font: Font?
            
                /// Determines the location of color bar's title with respect to the color bar. Note that the title's location used to be set by the now deprecated `titleside` attribute.
                enum Side: String, Encodable {
                    case right
                    case top
                    case bottom
                }
                /// Determines the location of color bar's title with respect to the color bar. Note that the title's location used to be set by the now deprecated `titleside` attribute.
                var side: Side?
            
            }
            /// 
            var title: Title?
        
            /// 
            struct _Deprecated: Encodable {
                /// Deprecated in favor of color bar's `title.text`. Note that value of color bar's `title` is no longer a simple *string* but a set of sub-attributes.
                var title: String?
            
                /// Deprecated in favor of color bar's `title.font`.
                struct Titlefont: Encodable {
                    /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                    var family: String?
                
                    /// 
                    var size: Double?
                
                    /// 
                    var color: Color?
                
                }
                /// Deprecated in favor of color bar's `title.font`.
                var titlefont: Titlefont?
            
                /// Deprecated in favor of color bar's `title.side`.
                enum Titleside: String, Encodable {
                    case right
                    case top
                    case bottom
                }
                /// Deprecated in favor of color bar's `title.side`.
                var titleside: Titleside?
            
            }
            /// 
            var _deprecated: _Deprecated?
        
            /// Sets the source reference on plot.ly for  tickvals .
            var tickvalssrc: String?
        
            /// Sets the source reference on plot.ly for  ticktext .
            var ticktextsrc: String?
        
        }
        /// 
        var colorbar: Colorbar?
    
        /// Sets a reference to a shared color axis. References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings for these shared color axes are set in the layout, under `layout.coloraxis`, `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
        var coloraxis: SubplotID?
    
        /// Sets the marker symbol type. Adding 100 is equivalent to appending *-open* to a symbol name. Adding 200 is equivalent to appending *-dot* to a symbol name. Adding 300 is equivalent to appending *-open-dot* or *dot-open* to a symbol name.
        enum Symbol: Int, Encodable {
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
        var symbol: Symbol?
    
        /// Sets the marker size (in px).
        var size: Double?
    
        /// Has an effect only if `marker.size` is set to a numerical array. Sets the scale factor used to determine the rendered size of marker points. Use with `sizemin` and `sizemode`.
        var sizeref: Double?
    
        /// Has an effect only if `marker.size` is set to a numerical array. Sets the minimum size (in px) of the rendered marker points.
        var sizemin: Double?
    
        /// Has an effect only if `marker.size` is set to a numerical array. Sets the rule for which the data in `size` is converted to pixels.
        enum Sizemode: String, Encodable {
            case diameter
            case area
        }
        /// Has an effect only if `marker.size` is set to a numerical array. Sets the rule for which the data in `size` is converted to pixels.
        var sizemode: Sizemode?
    
        /// Sets the marker opacity.
        var opacity: Double?
    
        /// 
        struct Line: Encodable {
            /// Sets themarker.linecolor. It accepts either a specific color or an array of numbers that are mapped to the colorscale relative to the max and min values of the array or relative to `marker.line.cmin` and `marker.line.cmax` if set.
            var color: Color?
        
            /// Determines whether or not the color domain is computed with respect to the input data (here in `marker.line.color`) or the bounds set in `marker.line.cmin` and `marker.line.cmax`  Has an effect only if in `marker.line.color`is set to a numerical array. Defaults to `false` when `marker.line.cmin` and `marker.line.cmax` are set by the user.
            var cauto: Bool?
        
            /// Sets the lower bound of the color domain. Has an effect only if in `marker.line.color`is set to a numerical array. Value should have the same units as in `marker.line.color` and if set, `marker.line.cmax` must be set as well.
            var cmin: Double?
        
            /// Sets the upper bound of the color domain. Has an effect only if in `marker.line.color`is set to a numerical array. Value should have the same units as in `marker.line.color` and if set, `marker.line.cmin` must be set as well.
            var cmax: Double?
        
            /// Sets the mid-point of the color domain by scaling `marker.line.cmin` and/or `marker.line.cmax` to be equidistant to this point. Has an effect only if in `marker.line.color`is set to a numerical array. Value should have the same units as in `marker.line.color`. Has no effect when `marker.line.cauto` is `false`.
            var cmid: Double?
        
            /// Sets the colorscale. Has an effect only if in `marker.line.color`is set to a numerical array. The colorscale must be an array containing arrays mapping a normalized value to an rgb, rgba, hex, hsl, hsv, or named color string. At minimum, a mapping for the lowest (0) and highest (1) values are required. For example, `[[0, 'rgb(0,0,255)'], [1, 'rgb(255,0,0)']]`. To control the bounds of the colorscale in color space, use`marker.line.cmin` and `marker.line.cmax`. Alternatively, `colorscale` may be a palette name string of the following list: Greys,YlGnBu,Greens,YlOrRd,Bluered,RdBu,Reds,Blues,Picnic,Rainbow,Portland,Jet,Hot,Blackbody,Earth,Electric,Viridis,Cividis.
            var colorscale: ColorScale?
        
            /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `marker.line.colorscale`. Has an effect only if in `marker.line.color`is set to a numerical array. In case `colorscale` is unspecified or `autocolorscale` is true, the default  palette will be chosen according to whether numbers in the `color` array are all positive, all negative or mixed.
            var autocolorscale: Bool?
        
            /// Reverses the color mapping if true. Has an effect only if in `marker.line.color`is set to a numerical array. If true, `marker.line.cmin` will correspond to the last color in the array and `marker.line.cmax` will correspond to the first color.
            var reversescale: Bool?
        
            /// Sets a reference to a shared color axis. References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings for these shared color axes are set in the layout, under `layout.coloraxis`, `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
            var coloraxis: SubplotID?
        
            /// Sets the width (in px) of the lines bounding the marker points.
            var width: Double?
        
            /// Sets the source reference on plot.ly for  color .
            var colorsrc: String?
        
            /// Sets the source reference on plot.ly for  width .
            var widthsrc: String?
        
        }
        /// 
        var line: Line?
    
        /// Sets the source reference on plot.ly for  color .
        var colorsrc: String?
    
        /// Sets the source reference on plot.ly for  symbol .
        var symbolsrc: String?
    
        /// Sets the source reference on plot.ly for  size .
        var sizesrc: String?
    
        /// Sets the source reference on plot.ly for  opacity .
        var opacitysrc: String?
    
    }
    /// 
    var marker: Marker?

    /// Determines whether or not gaps (i.e. {nan} or missing values) in the provided data arrays are connected.
    var connectgaps: Bool?

    /// Sets the area to fill with a solid color. Defaults to *none* unless this trace is stacked, then it gets *tonexty* (*tonextx*) if `orientation` is *v* (*h*) Use with `fillcolor` if not *none*. *tozerox* and *tozeroy* fill to x=0 and y=0 respectively. *tonextx* and *tonexty* fill between the endpoints of this trace and the endpoints of the trace before it, connecting those endpoints with straight lines (to make a stacked area graph); if there is no trace before it, they behave like *tozerox* and *tozeroy*. *toself* connects the endpoints of the trace (or each segment of the trace if it has gaps) into a closed shape. *tonext* fills the space between two traces if one completely encloses the other (eg consecutive contour lines), and behaves like *toself* if there is no trace before it. *tonext* should not be used if one trace does not enclose the other. Traces in a `stackgroup` will only fill to (or be filled to) other traces in the same group. With multiple `stackgroup`s or some traces stacked and some not, if fill-linked traces are not already consecutive, the later ones will be pushed down in the drawing order.
    enum Fill: String, Encodable {
        case none
        case tozeroy
        case tozerox
        case tonexty
        case tonextx
        case toself
        case tonext
    }
    /// Sets the area to fill with a solid color. Defaults to *none* unless this trace is stacked, then it gets *tonexty* (*tonextx*) if `orientation` is *v* (*h*) Use with `fillcolor` if not *none*. *tozerox* and *tozeroy* fill to x=0 and y=0 respectively. *tonextx* and *tonexty* fill between the endpoints of this trace and the endpoints of the trace before it, connecting those endpoints with straight lines (to make a stacked area graph); if there is no trace before it, they behave like *tozerox* and *tozeroy*. *toself* connects the endpoints of the trace (or each segment of the trace if it has gaps) into a closed shape. *tonext* fills the space between two traces if one completely encloses the other (eg consecutive contour lines), and behaves like *toself* if there is no trace before it. *tonext* should not be used if one trace does not enclose the other. Traces in a `stackgroup` will only fill to (or be filled to) other traces in the same group. With multiple `stackgroup`s or some traces stacked and some not, if fill-linked traces are not already consecutive, the later ones will be pushed down in the drawing order.
    var fill: Fill?

    /// Sets the fill color. Defaults to a half-transparent variant of the line color, marker color, or marker line color, whichever is available.
    var fillcolor: Color?

    /// 
    struct Selected: Encodable {
        /// 
        struct Marker: Encodable {
            /// Sets the marker opacity of selected points.
            var opacity: Double?
        
            /// Sets the marker color of selected points.
            var color: Color?
        
            /// Sets the marker size of selected points.
            var size: Double?
        
        }
        /// 
        var marker: Marker?
    
        /// 
        struct Textfont: Encodable {
            /// Sets the text font color of selected points.
            var color: Color?
        
        }
        /// 
        var textfont: Textfont?
    
    }
    /// 
    var selected: Selected?

    /// 
    struct Unselected: Encodable {
        /// 
        struct Marker: Encodable {
            /// Sets the marker opacity of unselected points, applied only when a selection exists.
            var opacity: Double?
        
            /// Sets the marker color of unselected points, applied only when a selection exists.
            var color: Color?
        
            /// Sets the marker size of unselected points, applied only when a selection exists.
            var size: Double?
        
        }
        /// 
        var marker: Marker?
    
        /// 
        struct Textfont: Encodable {
            /// Sets the text font color of unselected points, applied only when a selection exists.
            var color: Color?
        
        }
        /// 
        var textfont: Textfont?
    
    }
    /// 
    var unselected: Unselected?

    /// Sets the opacity of the trace.
    var opacity: Double?

    /// Template string used for rendering the information that appear on hover box. Note that this will override `hoverinfo`. Variables are inserted using %{variable}, for example "y: %{y}". Numbers are formatted using d3-format's syntax %{variable:d3-format}, for example "Price: %{y:$.2f}". https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format for details on the formatting syntax. Dates are formatted using d3-time-format's syntax %{variable|d3-time-format}, for example "Day: %{2019-01-01|%A}". https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format for details on the date formatting syntax. The variables available in `hovertemplate` are the ones emitted as event data described at this link https://plot.ly/javascript/plotlyjs-events/#event-data. Additionally, every attributes that can be specified per-point (the ones that are `arrayOk: true`) are available.  Anything contained in tag `<extra>` is displayed in the secondary box, for example "<extra>{fullData.name}</extra>". To hide the secondary box completely, use an empty tag `<extra></extra>`.
    var hovertemplate: String?

    /// Template string used for rendering the information text that appear on points. Note that this will override `textinfo`. Variables are inserted using %{variable}, for example "y: %{y}". Numbers are formatted using d3-format's syntax %{variable:d3-format}, for example "Price: %{y:$.2f}". https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format for details on the formatting syntax. Dates are formatted using d3-time-format's syntax %{variable|d3-time-format}, for example "Day: %{2019-01-01|%A}". https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format for details on the date formatting syntax. Every attributes that can be specified per-point (the ones that are `arrayOk: true`) are available. 
    var texttemplate: String?

    /// 
    struct Error_X: Encodable {
        /// Determines whether or not this set of error bars is visible.
        var visible: Bool?
    
        /// Determines the rule used to generate the error bars. If *constant`, the bar lengths are of a constant value. Set this constant in `value`. If *percent*, the bar lengths correspond to a percentage of underlying data. Set this percentage in `value`. If *sqrt*, the bar lengths correspond to the sqaure of the underlying data. If *data*, the bar lengths are set with data set `array`.
        enum AxisType: String, Encodable {
            case percent
            case constant
            case sqrt
            case data
        }
        /// Determines the rule used to generate the error bars. If *constant`, the bar lengths are of a constant value. Set this constant in `value`. If *percent*, the bar lengths correspond to a percentage of underlying data. Set this percentage in `value`. If *sqrt*, the bar lengths correspond to the sqaure of the underlying data. If *data*, the bar lengths are set with data set `array`.
        var type: AxisType?
    
        /// Determines whether or not the error bars have the same length in both direction (top/bottom for vertical bars, left/right for horizontal bars.
        var symmetric: Bool?
    
        /// Sets the data corresponding the length of each error bar. Values are plotted relative to the underlying data.
        var array: [Double]?
    
        /// Sets the data corresponding the length of each error bar in the bottom (left) direction for vertical (horizontal) bars Values are plotted relative to the underlying data.
        var arrayminus: [Double]?
    
        /// Sets the value of either the percentage (if `type` is set to *percent*) or the constant (if `type` is set to *constant*) corresponding to the lengths of the error bars.
        var value: Double?
    
        /// Sets the value of either the percentage (if `type` is set to *percent*) or the constant (if `type` is set to *constant*) corresponding to the lengths of the error bars in the bottom (left) direction for vertical (horizontal) bars
        var valueminus: Double?
    
        /// 
        var traceref: Int?
    
        /// 
        var tracerefminus: Int?
    
        /// 
        var copy_ystyle: Bool?
    
        /// Sets the stoke color of the error bars.
        var color: Color?
    
        /// Sets the thickness (in px) of the error bars.
        var thickness: Double?
    
        /// Sets the width (in px) of the cross-bar at both ends of the error bars.
        var width: Double?
    
        /// 
        struct _Deprecated: Encodable {
            /// Obsolete. Use the alpha channel in error bar `color` to set the opacity.
            var opacity: Double?
        
        }
        /// 
        var _deprecated: _Deprecated?
    
        /// Sets the source reference on plot.ly for  array .
        var arraysrc: String?
    
        /// Sets the source reference on plot.ly for  arrayminus .
        var arrayminussrc: String?
    
    }
    /// 
    var error_x: Error_X?

    /// 
    struct Error_Y: Encodable {
        /// Determines whether or not this set of error bars is visible.
        var visible: Bool?
    
        /// Determines the rule used to generate the error bars. If *constant`, the bar lengths are of a constant value. Set this constant in `value`. If *percent*, the bar lengths correspond to a percentage of underlying data. Set this percentage in `value`. If *sqrt*, the bar lengths correspond to the sqaure of the underlying data. If *data*, the bar lengths are set with data set `array`.
        enum AxisType: String, Encodable {
            case percent
            case constant
            case sqrt
            case data
        }
        /// Determines the rule used to generate the error bars. If *constant`, the bar lengths are of a constant value. Set this constant in `value`. If *percent*, the bar lengths correspond to a percentage of underlying data. Set this percentage in `value`. If *sqrt*, the bar lengths correspond to the sqaure of the underlying data. If *data*, the bar lengths are set with data set `array`.
        var type: AxisType?
    
        /// Determines whether or not the error bars have the same length in both direction (top/bottom for vertical bars, left/right for horizontal bars.
        var symmetric: Bool?
    
        /// Sets the data corresponding the length of each error bar. Values are plotted relative to the underlying data.
        var array: [Double]?
    
        /// Sets the data corresponding the length of each error bar in the bottom (left) direction for vertical (horizontal) bars Values are plotted relative to the underlying data.
        var arrayminus: [Double]?
    
        /// Sets the value of either the percentage (if `type` is set to *percent*) or the constant (if `type` is set to *constant*) corresponding to the lengths of the error bars.
        var value: Double?
    
        /// Sets the value of either the percentage (if `type` is set to *percent*) or the constant (if `type` is set to *constant*) corresponding to the lengths of the error bars in the bottom (left) direction for vertical (horizontal) bars
        var valueminus: Double?
    
        /// 
        var traceref: Int?
    
        /// 
        var tracerefminus: Int?
    
        /// Sets the stoke color of the error bars.
        var color: Color?
    
        /// Sets the thickness (in px) of the error bars.
        var thickness: Double?
    
        /// Sets the width (in px) of the cross-bar at both ends of the error bars.
        var width: Double?
    
        /// 
        struct _Deprecated: Encodable {
            /// Obsolete. Use the alpha channel in error bar `color` to set the opacity.
            var opacity: Double?
        
        }
        /// 
        var _deprecated: _Deprecated?
    
        /// Sets the source reference on plot.ly for  array .
        var arraysrc: String?
    
        /// Sets the source reference on plot.ly for  arrayminus .
        var arrayminussrc: String?
    
    }
    /// 
    var error_y: Error_Y?

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

    /// Sets the calendar system to use with `y` date data.
    enum Ycalendar: String, Encodable {
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
    /// Sets the calendar system to use with `y` date data.
    var ycalendar: Ycalendar?

    /// Sets a reference between this trace's x coordinates and a 2D cartesian x axis. If *x* (the default value), the x coordinates refer to `layout.xaxis`. If *x2*, the x coordinates refer to `layout.xaxis2`, and so on.
    var xaxis: SubplotID?

    /// Sets a reference between this trace's y coordinates and a 2D cartesian y axis. If *y* (the default value), the y coordinates refer to `layout.yaxis`. If *y2*, the y coordinates refer to `layout.yaxis2`, and so on.
    var yaxis: SubplotID?

    /// Sets the source reference on plot.ly for  ids .
    var idssrc: String?

    /// Sets the source reference on plot.ly for  customdata .
    var customdatasrc: String?

    /// Sets the source reference on plot.ly for  meta .
    var metasrc: String?

    /// Sets the source reference on plot.ly for  hoverinfo .
    var hoverinfosrc: String?

    /// Sets the source reference on plot.ly for  x .
    var xsrc: String?

    /// Sets the source reference on plot.ly for  y .
    var ysrc: String?

    /// Sets the source reference on plot.ly for  text .
    var textsrc: String?

    /// Sets the source reference on plot.ly for  hovertext .
    var hovertextsrc: String?

    /// Sets the source reference on plot.ly for  textposition .
    var textpositionsrc: String?

    /// Sets the source reference on plot.ly for  hovertemplate .
    var hovertemplatesrc: String?

    /// Sets the source reference on plot.ly for  texttemplate .
    var texttemplatesrc: String?

}