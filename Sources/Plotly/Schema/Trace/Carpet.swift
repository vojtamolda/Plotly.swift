/// The data describing carpet axis layout is set in `y` and (optionally) also `x`. If only `y` is present, `x` the plot is interpreted as a cheater plot and is filled in using the `y` values. `x` and `y` may either be 2D arrays matching with each dimension matching that of `a` and `b`, or they may be 1D arrays with total length equal to that of `a` and `b`.
struct Carpet: Encodable {
    /// Alternate to `b`. Builds a linear space of a coordinates. Use with `db` where `b0` is the starting coordinate and `db` the step.
    var b0: Double?

    /// Sets the source reference on plot.ly for  meta .
    var metasrc: String?

    /// Assigns extra data each datum. This may be useful when listening to hover, click and selection events. Note that, *scatter* traces also appends customdata items in the markers DOM elements
    var customdata: [Double]?

    /// Sets the source reference on plot.ly for  a .
    var asrc: String?

    /// Sets a reference between this trace's y coordinates and a 2D cartesian y axis. If *y* (the default value), the y coordinates refer to `layout.yaxis`. If *y2*, the y coordinates refer to `layout.yaxis2`, and so on.
    var yaxis: SubplotID?

    /// Sets the trace name. The trace name appear as the legend item and on hover.
    var name: String?

    /// The default font used for axis & tick labels on this carpet
    struct Font: Encodable {
        /// 
        var color: Color?
    
        /// 
        var size: Double?
    
        /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
        var family: String?
    
    }
    /// The default font used for axis & tick labels on this carpet
    var font: Font?

    /// Sets the source reference on plot.ly for  y .
    var ysrc: String?

    /// Sets the source reference on plot.ly for  b .
    var bsrc: String?

    /// Sets the b coordinate step. See `b0` for more info.
    var db: Double?

    /// Assigns extra meta information associated with this trace that can be used in various text attributes. Attributes such as trace `name`, graph, axis and colorbar `title.text`, annotation `text` `rangeselector`, `updatemenues` and `sliders` `label` text all support `meta`. To access the trace `meta` values in an attribute in the same trace, simply use `%{meta[i]}` where `i` is the index or key of the `meta` item in question. To access trace `meta` in layout attributes, use `%{data[n[.meta[i]}` where `i` is the index or key of the `meta` and `n` is the trace index.
    var meta: Anything?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    var uid: String?

    /// An identifier for this carpet, so that `scattercarpet` and `contourcarpet` traces can specify a carpet plot on which they lie
    var carpet: String?

    /// Sets a reference between this trace's x coordinates and a 2D cartesian x axis. If *x* (the default value), the x coordinates refer to `layout.xaxis`. If *x2*, the x coordinates refer to `layout.xaxis2`, and so on.
    var xaxis: SubplotID?

    /// Assigns id labels to each datum. These ids for object constancy of data points during animation. Should be an array of strings, not numbers or any other type.
    var ids: [Double]?

    /// Sets default for all colors associated with this axis all at once: line, font, tick, and grid colors. Grid color is lightened by blending this with the plot background Individual pieces can override this.
    var color: Color?

    /// Sets the source reference on plot.ly for  ids .
    var idssrc: String?

    /// 
    struct Aaxis: Encodable {
        /// Extra padding between label and the axis
        var labelpadding: Int?
    
        /// If *all*, all exponents are shown besides their significands. If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the last tick is shown. If *none*, no exponents appear.
        enum Showexponent: String, Encodable {
            case all
            case first
            case last
            case none
        }
        /// If *all*, all exponents are shown besides their significands. If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the last tick is shown. If *none*, no exponents appear.
        var showexponent: Showexponent?
    
        /// Same as `showtickprefix` but for tick suffixes.
        enum Showticksuffix: String, Encodable {
            case all
            case first
            case last
            case none
        }
        /// Same as `showtickprefix` but for tick suffixes.
        var showticksuffix: Showticksuffix?
    
        /// Sets the values at which ticks on this axis appear. Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
        var tickvals: [Double]?
    
        /// Sets the width (in px) of the grid lines.
        var minorgridwidth: Double?
    
        /// Sets the source reference on plot.ly for  tickvals .
        var tickvalssrc: String?
    
        /// Sets the line color of the start line.
        var startlinecolor: Color?
    
        /// 
        var smoothing: Double?
    
        /// Sets default for all colors associated with this axis all at once: line, font, tick, and grid colors. Grid color is lightened by blending this with the plot background Individual pieces can override this.
        var color: Color?
    
        /// The stride between grid lines along the axis
        var dtick: Double?
    
        /// Sets the text displayed at the ticks position via `tickvals`. Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
        var ticktext: [Double]?
    
        /// Sets the range of this axis. If the axis `type` is *log*, then you must take the log of your desired range (e.g. to set the range from 1 to 100, set the range from 0 to 2). If the axis `type` is *date*, it should be date strings, like date data, though Date objects and unix milliseconds will be accepted and converted to strings. If the axis `type` is *category*, it should be numbers, using the scale where each category is assigned a serial number from zero in the order it appears.
        var range: InfoArray?
    
        /// Specifies the ordering logic for the case of categorical variables. By default, plotly uses *trace*, which specifies the order that is present in the data supplied. Set `categoryorder` to *category ascending* or *category descending* if order should be determined by the alphanumerical order of the category names. Set `categoryorder` to *array* to derive the ordering from the attribute `categoryarray`. If a category is not found in the `categoryarray` array, the sorting behavior for that attribute will be identical to the *trace* mode. The unspecified categories will follow the categories in `categoryarray`.
        enum Categoryorder: String, Encodable {
            case trace
            case categoryascending
            case categorydescending
            case array
        }
        /// Specifies the ordering logic for the case of categorical variables. By default, plotly uses *trace*, which specifies the order that is present in the data supplied. Set `categoryorder` to *category ascending* or *category descending* if order should be determined by the alphanumerical order of the category names. Set `categoryorder` to *array* to derive the ordering from the attribute `categoryarray`. If a category is not found in the `categoryarray` array, the sorting behavior for that attribute will be identical to the *trace* mode. The unspecified categories will follow the categories in `categoryarray`.
        var categoryorder: Categoryorder?
    
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
    
        /// Sets the order in which categories on this axis appear. Only has an effect if `categoryorder` is set to *array*. Used with `categoryorder`.
        var categoryarray: [Double]?
    
        /// The starting index of grid lines along the axis
        var arraytick0: Int?
    
        /// 
        struct Title: Encodable {
            /// Sets the title of this axis. Note that before the existence of `title.text`, the title's contents used to be defined as the `title` attribute itself. This behavior has been deprecated.
            var text: String?
        
            /// Sets this axis' title font. Note that the title's font used to be set by the now deprecated `titlefont` attribute.
            struct Font: Encodable {
                /// 
                var color: Color?
            
                /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                var family: String?
            
                /// 
                var size: Double?
            
            }
            /// Sets this axis' title font. Note that the title's font used to be set by the now deprecated `titlefont` attribute.
            var font: Font?
        
            /// An additional amount by which to offset the title from the tick labels, given in pixels. Note that this used to be set by the now deprecated `titleoffset` attribute.
            var offset: Double?
        
        }
        /// 
        var title: Title?
    
        /// The stride between grid lines along the axis
        var arraydtick: Int?
    
        /// If "true", even 4-digit integers are separated
        var separatethousands: Bool?
    
        /// The starting index of grid lines along the axis
        var tick0: Double?
    
        /// Determines whether or not this axis is zoom-able. If true, then zoom is disabled.
        var fixedrange: Bool?
    
        /// Specifies the maximum number of ticks for the particular axis. The actual number of ticks will be chosen automatically to be less than or equal to `nticks`. Has an effect only if `tickmode` is set to *auto*.
        var nticks: Int?
    
        /// If *normal*, the range is computed in relation to the extrema of the input data. If *tozero*`, the range extends to 0, regardless of the input data If *nonnegative*, the range is non-negative, regardless of the input data.
        enum Rangemode: String, Encodable {
            case normal
            case tozero
            case nonnegative
        }
        /// If *normal*, the range is computed in relation to the extrema of the input data. If *tozero*`, the range extends to 0, regardless of the input data If *nonnegative*, the range is non-negative, regardless of the input data.
        var rangemode: Rangemode?
    
        /// Sets the width (in px) of the start line.
        var startlinewidth: Double?
    
        /// Sets the width (in px) of the end line.
        var endlinewidth: Double?
    
        /// 
        struct Tickformatstops: Encodable {
            /// 
            struct Items: Encodable {
                /// 
                struct Tickformatstop: Encodable {
                    /// string - dtickformat for described zoom level, the same as *tickformat*
                    var value: String?
                
                    /// Used to refer to a named item in this array in the template. Named items from the template will be created even without a matching item in the input figure, but you can modify one by making an item with `templateitemname` matching its `name`, alongside your modifications (including `visible: false` or `enabled: false` to hide it). If there is no template or no matching item, this item will be hidden unless you explicitly show it with `visible: true`.
                    var templateitemname: String?
                
                    /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. You can modify these items in the output figure by making your own item with `templateitemname` matching this `name` alongside your modifications (including `visible: false` or `enabled: false` to hide it). Has no effect outside of a template.
                    var name: String?
                
                    /// range [*min*, *max*], where *min*, *max* - dtick values which describe some zoom level, it is possible to omit *min* or *max* value by passing *null*
                    var dtickrange: InfoArray?
                
                    /// Determines whether or not this stop is used. If `false`, this stop is ignored even within its `dtickrange`.
                    var enabled: Bool?
                
                }
                /// 
                var tickformatstop: Tickformatstop?
            
            }
            /// 
            var items: Items?
        
        }
        /// 
        var tickformatstops: Tickformatstops?
    
        /// 
        enum Tickmode: String, Encodable {
            case linear
            case array
        }
        /// 
        var tickmode: Tickmode?
    
        /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to those in Python. For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format And for dates see:  We add one item to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
        var tickformat: String?
    
        /// Sets the source reference on plot.ly for  ticktext .
        var ticktextsrc: String?
    
        /// Sets a tick label prefix.
        var tickprefix: String?
    
        /// Sets the axis type. By default, plotly attempts to determined the axis type by looking into the data of the traces that referenced the axis in question.
        enum AxisType: String, Encodable {
            case auto
            case linear
            case date
            case category
        }
        /// Sets the axis type. By default, plotly attempts to determined the axis type by looking into the data of the traces that referenced the axis in question.
        var type: AxisType?
    
        /// Sets the axis line color.
        var linecolor: Color?
    
        /// Sets the width (in px) of the axis line.
        var gridwidth: Double?
    
        /// If *all*, all tick labels are displayed with a prefix. If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is displayed with a suffix. If *none*, tick prefixes are hidden.
        enum Showtickprefix: String, Encodable {
            case all
            case first
            case last
            case none
        }
        /// If *all*, all tick labels are displayed with a prefix. If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is displayed with a suffix. If *none*, tick prefixes are hidden.
        var showtickprefix: Showtickprefix?
    
        /// Determines whether or not grid lines are drawn. If *true*, the grid lines are drawn at every tick mark.
        var showgrid: Bool?
    
        /// 
        enum Cheatertype: String, Encodable {
            case index
            case value
        }
        /// 
        var cheatertype: Cheatertype?
    
        /// Determines whether or not a line is drawn at along the starting value of this axis. If *true*, the start line is drawn on top of the grid lines.
        var startline: Bool?
    
        /// Sets a tick label suffix.
        var ticksuffix: String?
    
        /// 
        struct _Deprecated: Encodable {
            /// Deprecated in favor of `title.offset`.
            var titleoffset: Double?
        
            /// Deprecated in favor of `title.font`.
            struct Titlefont: Encodable {
                /// 
                var size: Double?
            
                /// 
                var color: Color?
            
                /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                var family: String?
            
            }
            /// Deprecated in favor of `title.font`.
            var titlefont: Titlefont?
        
            /// Deprecated in favor of `title.text`. Note that value of `title` is no longer a simple *string* but a set of sub-attributes.
            var title: String?
        
        }
        /// 
        var _deprecated: _Deprecated?
    
        /// Determines whether axis labels are drawn on the low side, the high side, both, or neither side of the axis.
        enum Showticklabels: String, Encodable {
            case start
            case end
            case both
            case none
        }
        /// Determines whether axis labels are drawn on the low side, the high side, both, or neither side of the axis.
        var showticklabels: Showticklabels?
    
        /// Sets the source reference on plot.ly for  categoryarray .
        var categoryarraysrc: String?
    
        /// Sets the number of minor grid ticks per major grid tick
        var minorgridcount: Int?
    
        /// Determines whether or not a line is drawn at along the final value of this axis. If *true*, the end line is drawn on top of the grid lines.
        var endline: Bool?
    
        /// Sets the angle of the tick labels with respect to the horizontal. For example, a `tickangle` of -90 draws the tick labels vertically.
        var tickangle: Angle?
    
        /// Sets a axis label prefix.
        var labelprefix: String?
    
        /// Sets the line color of the end line.
        var endlinecolor: Color?
    
        /// Sets a axis label suffix.
        var labelsuffix: String?
    
        /// Determines whether or not a line bounding this axis is drawn.
        var showline: Bool?
    
        /// Determines whether or not the range of this axis is computed in relation to the input data. See `rangemode` for more info. If `range` is provided, then `autorange` is set to *false*.
        enum Autorange: String, Encodable {
            case yes
            case no
            case reversed
        }
        /// Determines whether or not the range of this axis is computed in relation to the input data. See `rangemode` for more info. If `range` is provided, then `autorange` is set to *false*.
        var autorange: Autorange?
    
        /// Sets the tick font.
        struct Tickfont: Encodable {
            /// 
            var color: Color?
        
            /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
            var family: String?
        
            /// 
            var size: Double?
        
        }
        /// Sets the tick font.
        var tickfont: Tickfont?
    
        /// Sets the color of the grid lines.
        var minorgridcolor: Color?
    
        /// Sets the width (in px) of the axis line.
        var linewidth: Double?
    
        /// Sets the axis line color.
        var gridcolor: Color?
    
    }
    /// 
    var aaxis: Aaxis?

    /// The shift applied to each successive row of data in creating a cheater plot. Only used if `x` is been ommitted.
    var cheaterslope: Double?

    /// Sets the source reference on plot.ly for  x .
    var xsrc: String?

    /// Sets the opacity of the trace.
    var opacity: Double?

    /// 
    struct Stream: Encodable {
        /// The stream id number links a data trace on a plot with a stream. See https://plot.ly/settings for more details.
        var token: String?
    
        /// Sets the maximum number of points to keep on the plots from an incoming stream. If `maxpoints` is set to *50*, only the newest 50 points will be displayed on the plot.
        var maxpoints: Double?
    
    }
    /// 
    var stream: Stream?

    /// Alternate to `a`. Builds a linear space of a coordinates. Use with `da` where `a0` is the starting coordinate and `da` the step.
    var a0: Double?

    /// A two dimensional array of x coordinates at each carpet point. If ommitted, the plot is a cheater plot and the xaxis is hidden by default.
    var x: [Double]?

    /// Sets the source reference on plot.ly for  customdata .
    var customdatasrc: String?

    /// Controls persistence of some user-driven changes to the trace: `constraintrange` in `parcoords` traces, as well as some `editable: true` modifications such as `name` and `colorbar.title`. Defaults to `layout.uirevision`. Note that other user-driven trace attribute changes are controlled by `layout` attributes: `trace.visible` is controlled by `layout.legend.uirevision`, `selectedpoints` is controlled by `layout.selectionrevision`, and `colorbar.(x|y)` (accessible with `config: {editable: true}`) is controlled by `layout.editrevision`. Trace changes are tracked by `uid`, which only falls back on trace index if no `uid` is provided. So if your app can add/remove traces before the end of the `data` array, such that the same trace has a different index, you can still preserve user-driven changes if you give each trace a `uid` that stays with it as it moves.
    var uirevision: Anything?

    /// 
    struct Baxis: Encodable {
        /// The stride between grid lines along the axis
        var dtick: Double?
    
        /// Sets the width (in px) of the axis line.
        var linewidth: Double?
    
        /// Determines whether or not grid lines are drawn. If *true*, the grid lines are drawn at every tick mark.
        var showgrid: Bool?
    
        /// 
        enum Tickmode: String, Encodable {
            case linear
            case array
        }
        /// 
        var tickmode: Tickmode?
    
        /// Sets the tick font.
        struct Tickfont: Encodable {
            /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
            var family: String?
        
            /// 
            var color: Color?
        
            /// 
            var size: Double?
        
        }
        /// Sets the tick font.
        var tickfont: Tickfont?
    
        /// Sets the color of the grid lines.
        var minorgridcolor: Color?
    
        /// Sets the number of minor grid ticks per major grid tick
        var minorgridcount: Int?
    
        /// Determines whether or not a line is drawn at along the starting value of this axis. If *true*, the start line is drawn on top of the grid lines.
        var startline: Bool?
    
        /// The stride between grid lines along the axis
        var arraydtick: Int?
    
        /// Same as `showtickprefix` but for tick suffixes.
        enum Showticksuffix: String, Encodable {
            case all
            case first
            case last
            case none
        }
        /// Same as `showtickprefix` but for tick suffixes.
        var showticksuffix: Showticksuffix?
    
        /// Sets the axis type. By default, plotly attempts to determined the axis type by looking into the data of the traces that referenced the axis in question.
        enum AxisType: String, Encodable {
            case auto
            case linear
            case date
            case category
        }
        /// Sets the axis type. By default, plotly attempts to determined the axis type by looking into the data of the traces that referenced the axis in question.
        var type: AxisType?
    
        /// Determines whether or not a line bounding this axis is drawn.
        var showline: Bool?
    
        /// If "true", even 4-digit integers are separated
        var separatethousands: Bool?
    
        /// If *all*, all tick labels are displayed with a prefix. If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is displayed with a suffix. If *none*, tick prefixes are hidden.
        enum Showtickprefix: String, Encodable {
            case all
            case first
            case last
            case none
        }
        /// If *all*, all tick labels are displayed with a prefix. If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is displayed with a suffix. If *none*, tick prefixes are hidden.
        var showtickprefix: Showtickprefix?
    
        /// Sets the line color of the start line.
        var startlinecolor: Color?
    
        /// If *all*, all exponents are shown besides their significands. If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the last tick is shown. If *none*, no exponents appear.
        enum Showexponent: String, Encodable {
            case all
            case first
            case last
            case none
        }
        /// If *all*, all exponents are shown besides their significands. If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the last tick is shown. If *none*, no exponents appear.
        var showexponent: Showexponent?
    
        /// Sets a axis label suffix.
        var labelsuffix: String?
    
        /// If *normal*, the range is computed in relation to the extrema of the input data. If *tozero*`, the range extends to 0, regardless of the input data If *nonnegative*, the range is non-negative, regardless of the input data.
        enum Rangemode: String, Encodable {
            case normal
            case tozero
            case nonnegative
        }
        /// If *normal*, the range is computed in relation to the extrema of the input data. If *tozero*`, the range extends to 0, regardless of the input data If *nonnegative*, the range is non-negative, regardless of the input data.
        var rangemode: Rangemode?
    
        /// Sets the range of this axis. If the axis `type` is *log*, then you must take the log of your desired range (e.g. to set the range from 1 to 100, set the range from 0 to 2). If the axis `type` is *date*, it should be date strings, like date data, though Date objects and unix milliseconds will be accepted and converted to strings. If the axis `type` is *category*, it should be numbers, using the scale where each category is assigned a serial number from zero in the order it appears.
        var range: InfoArray?
    
        /// Determines whether axis labels are drawn on the low side, the high side, both, or neither side of the axis.
        enum Showticklabels: String, Encodable {
            case start
            case end
            case both
            case none
        }
        /// Determines whether axis labels are drawn on the low side, the high side, both, or neither side of the axis.
        var showticklabels: Showticklabels?
    
        /// Specifies the ordering logic for the case of categorical variables. By default, plotly uses *trace*, which specifies the order that is present in the data supplied. Set `categoryorder` to *category ascending* or *category descending* if order should be determined by the alphanumerical order of the category names. Set `categoryorder` to *array* to derive the ordering from the attribute `categoryarray`. If a category is not found in the `categoryarray` array, the sorting behavior for that attribute will be identical to the *trace* mode. The unspecified categories will follow the categories in `categoryarray`.
        enum Categoryorder: String, Encodable {
            case trace
            case categoryascending
            case categorydescending
            case array
        }
        /// Specifies the ordering logic for the case of categorical variables. By default, plotly uses *trace*, which specifies the order that is present in the data supplied. Set `categoryorder` to *category ascending* or *category descending* if order should be determined by the alphanumerical order of the category names. Set `categoryorder` to *array* to derive the ordering from the attribute `categoryarray`. If a category is not found in the `categoryarray` array, the sorting behavior for that attribute will be identical to the *trace* mode. The unspecified categories will follow the categories in `categoryarray`.
        var categoryorder: Categoryorder?
    
        /// Sets the angle of the tick labels with respect to the horizontal. For example, a `tickangle` of -90 draws the tick labels vertically.
        var tickangle: Angle?
    
        /// Sets default for all colors associated with this axis all at once: line, font, tick, and grid colors. Grid color is lightened by blending this with the plot background Individual pieces can override this.
        var color: Color?
    
        /// Sets a tick label prefix.
        var tickprefix: String?
    
        /// Sets the width (in px) of the start line.
        var startlinewidth: Double?
    
        /// Sets a tick label suffix.
        var ticksuffix: String?
    
        /// Sets a axis label prefix.
        var labelprefix: String?
    
        /// 
        enum Cheatertype: String, Encodable {
            case index
            case value
        }
        /// 
        var cheatertype: Cheatertype?
    
        /// Determines whether or not a line is drawn at along the final value of this axis. If *true*, the end line is drawn on top of the grid lines.
        var endline: Bool?
    
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
    
        /// Sets the source reference on plot.ly for  tickvals .
        var tickvalssrc: String?
    
        /// 
        var smoothing: Double?
    
        /// Sets the width (in px) of the end line.
        var endlinewidth: Double?
    
        /// 
        struct Title: Encodable {
            /// An additional amount by which to offset the title from the tick labels, given in pixels. Note that this used to be set by the now deprecated `titleoffset` attribute.
            var offset: Double?
        
            /// Sets this axis' title font. Note that the title's font used to be set by the now deprecated `titlefont` attribute.
            struct Font: Encodable {
                /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                var family: String?
            
                /// 
                var color: Color?
            
                /// 
                var size: Double?
            
            }
            /// Sets this axis' title font. Note that the title's font used to be set by the now deprecated `titlefont` attribute.
            var font: Font?
        
            /// Sets the title of this axis. Note that before the existence of `title.text`, the title's contents used to be defined as the `title` attribute itself. This behavior has been deprecated.
            var text: String?
        
        }
        /// 
        var title: Title?
    
        /// 
        struct Tickformatstops: Encodable {
            /// 
            struct Items: Encodable {
                /// 
                struct Tickformatstop: Encodable {
                    /// string - dtickformat for described zoom level, the same as *tickformat*
                    var value: String?
                
                    /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. You can modify these items in the output figure by making your own item with `templateitemname` matching this `name` alongside your modifications (including `visible: false` or `enabled: false` to hide it). Has no effect outside of a template.
                    var name: String?
                
                    /// range [*min*, *max*], where *min*, *max* - dtick values which describe some zoom level, it is possible to omit *min* or *max* value by passing *null*
                    var dtickrange: InfoArray?
                
                    /// Determines whether or not this stop is used. If `false`, this stop is ignored even within its `dtickrange`.
                    var enabled: Bool?
                
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
    
        /// Sets the axis line color.
        var linecolor: Color?
    
        /// Sets the width (in px) of the grid lines.
        var minorgridwidth: Double?
    
        /// Sets the line color of the end line.
        var endlinecolor: Color?
    
        /// Specifies the maximum number of ticks for the particular axis. The actual number of ticks will be chosen automatically to be less than or equal to `nticks`. Has an effect only if `tickmode` is set to *auto*.
        var nticks: Int?
    
        /// 
        struct _Deprecated: Encodable {
            /// Deprecated in favor of `title.text`. Note that value of `title` is no longer a simple *string* but a set of sub-attributes.
            var title: String?
        
            /// Deprecated in favor of `title.font`.
            struct Titlefont: Encodable {
                /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                var family: String?
            
                /// 
                var color: Color?
            
                /// 
                var size: Double?
            
            }
            /// Deprecated in favor of `title.font`.
            var titlefont: Titlefont?
        
            /// Deprecated in favor of `title.offset`.
            var titleoffset: Double?
        
        }
        /// 
        var _deprecated: _Deprecated?
    
        /// Sets the width (in px) of the axis line.
        var gridwidth: Double?
    
        /// Sets the axis line color.
        var gridcolor: Color?
    
        /// The starting index of grid lines along the axis
        var arraytick0: Int?
    
        /// Sets the values at which ticks on this axis appear. Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
        var tickvals: [Double]?
    
        /// Determines whether or not the range of this axis is computed in relation to the input data. See `rangemode` for more info. If `range` is provided, then `autorange` is set to *false*.
        enum Autorange: String, Encodable {
            case yes
            case no
            case reversed
        }
        /// Determines whether or not the range of this axis is computed in relation to the input data. See `rangemode` for more info. If `range` is provided, then `autorange` is set to *false*.
        var autorange: Autorange?
    
        /// Sets the source reference on plot.ly for  categoryarray .
        var categoryarraysrc: String?
    
        /// Sets the source reference on plot.ly for  ticktext .
        var ticktextsrc: String?
    
        /// Sets the text displayed at the ticks position via `tickvals`. Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
        var ticktext: [Double]?
    
        /// The starting index of grid lines along the axis
        var tick0: Double?
    
        /// Determines whether or not this axis is zoom-able. If true, then zoom is disabled.
        var fixedrange: Bool?
    
        /// Extra padding between label and the axis
        var labelpadding: Int?
    
        /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to those in Python. For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format And for dates see:  We add one item to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
        var tickformat: String?
    
        /// Sets the order in which categories on this axis appear. Only has an effect if `categoryorder` is set to *array*. Used with `categoryorder`.
        var categoryarray: [Double]?
    
    }
    /// 
    var baxis: Baxis?

    /// A two dimensional array of y coordinates at each carpet point.
    var y: [Double]?

    /// An array containing values of the first parameter value
    var a: [Double]?

    /// A two dimensional array of y coordinates at each carpet point.
    var b: [Double]?

    /// Determines whether or not this trace is visible. If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the legend itself is visible).
    enum Visible: String, Encodable {
        case yes
        case no
        case legendonly
    }
    /// Determines whether or not this trace is visible. If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the legend itself is visible).
    var visible: Visible?

    /// Sets the a coordinate step. See `a0` for more info.
    var da: Double?

}