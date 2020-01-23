/// The data describing carpet axis layout is set in `y` and (optionally) also `x`. 
///
/// If only `y` is present, `x` the plot is interpreted as a cheater plot and is filled in using the
/// `y` values. `x` and `y` may either be 2D arrays matching with each dimension matching that of
/// `a` and `b`, or they may be 1D arrays with total length equal to that of `a` and `b`.
public struct Carpet<XData, YData>: Trace where XData: Encodable, YData: Encodable {
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#type) |
    /// [Python](https://plot.ly/python/reference/#type) |
    /// [R](https://plot.ly/r/reference/#type)
    public let type: String = "carpet"

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#animatable) |
    /// [Python](https://plot.ly/python/reference/#animatable) |
    /// [R](https://plot.ly/r/reference/#animatable)
    public let animatable: Bool = true

    /// Determines whether or not this trace is visible. 
    ///
    /// If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the
    /// legend itself is visible).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#carpet-visible) |
    /// [Python](https://plot.ly/python/reference/#carpet-visible) |
    /// [R](https://plot.ly/r/reference/#carpet-visible)
    public var visible: Shared.Visible?

    /// Sets the opacity of the trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#carpet-opacity) |
    /// [Python](https://plot.ly/python/reference/#carpet-opacity) |
    /// [R](https://plot.ly/r/reference/#carpet-opacity)
    public var opacity: Double?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#carpet-name) |
    /// [Python](https://plot.ly/python/reference/#carpet-name) |
    /// [R](https://plot.ly/r/reference/#carpet-name)
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#carpet-uid) |
    /// [Python](https://plot.ly/python/reference/#carpet-uid) |
    /// [R](https://plot.ly/r/reference/#carpet-uid)
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#carpet-ids) |
    /// [Python](https://plot.ly/python/reference/#carpet-ids) |
    /// [R](https://plot.ly/r/reference/#carpet-ids)
    public var ids: [Double]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#carpet-customdata) |
    /// [Python](https://plot.ly/python/reference/#carpet-customdata) |
    /// [R](https://plot.ly/r/reference/#carpet-customdata)
    public var customData: [Double]?

    /// Assigns extra meta information associated with this trace that can be used in various text attributes. 
    ///
    /// Attributes such as trace `name`, graph, axis and colorbar `title.text`, annotation `text`
    /// `rangeselector`, `updatemenues` and `sliders` `label` text all support `meta`. To access the
    /// trace `meta` values in an attribute in the same trace, simply use `%{meta[i]}` where `i` is the
    /// index or key of the `meta` item in question. To access trace `meta` in layout attributes, use
    /// `%{data[n[.meta[i]}` where `i` is the index or key of the `meta` and `n` is the trace index.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#carpet-meta) |
    /// [Python](https://plot.ly/python/reference/#carpet-meta) |
    /// [R](https://plot.ly/r/reference/#carpet-meta)
    public var meta: ArrayOrAnything?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#carpet-stream) |
    /// [Python](https://plot.ly/python/reference/#carpet-stream) |
    /// [R](https://plot.ly/r/reference/#carpet-stream)
    public var stream: Shared.Stream?

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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#carpet-uirevision) |
    /// [Python](https://plot.ly/python/reference/#carpet-uirevision) |
    /// [R](https://plot.ly/r/reference/#carpet-uirevision)
    public var uiRevision: Anything?

    /// An identifier for this carpet, so that `scattercarpet` and `contourcarpet` traces can specify a carpet plot on which they lie
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#carpet-carpet) |
    /// [Python](https://plot.ly/python/reference/#carpet-carpet) |
    /// [R](https://plot.ly/r/reference/#carpet-carpet)
    public var carpet: String?

    /// A two dimensional array of x coordinates at each carpet point. 
    ///
    /// If ommitted, the plot is a cheater plot and the xaxis is hidden by default.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#carpet-x) |
    /// [Python](https://plot.ly/python/reference/#carpet-x) |
    /// [R](https://plot.ly/r/reference/#carpet-x)
    public var x: XData?

    /// A two dimensional array of y coordinates at each carpet point.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#carpet-y) |
    /// [Python](https://plot.ly/python/reference/#carpet-y) |
    /// [R](https://plot.ly/r/reference/#carpet-y)
    public var y: YData?

    /// An array containing values of the first parameter value
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#carpet-a) |
    /// [Python](https://plot.ly/python/reference/#carpet-a) |
    /// [R](https://plot.ly/r/reference/#carpet-a)
    public var a: [Double]?

    /// Alternate to `a`. 
    ///
    /// Builds a linear space of a coordinates. Use with `da` where `a0` is the starting coordinate and
    /// `da` the step.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#carpet-a0) |
    /// [Python](https://plot.ly/python/reference/#carpet-a0) |
    /// [R](https://plot.ly/r/reference/#carpet-a0)
    public var a0: Double?

    /// Sets the a coordinate step. 
    ///
    /// See `a0` for more info.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#carpet-da) |
    /// [Python](https://plot.ly/python/reference/#carpet-da) |
    /// [R](https://plot.ly/r/reference/#carpet-da)
    public var da: Double?

    /// A two dimensional array of y coordinates at each carpet point.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#carpet-b) |
    /// [Python](https://plot.ly/python/reference/#carpet-b) |
    /// [R](https://plot.ly/r/reference/#carpet-b)
    public var b: [Double]?

    /// Alternate to `b`. 
    ///
    /// Builds a linear space of a coordinates. Use with `db` where `b0` is the starting coordinate and
    /// `db` the step.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#carpet-b0) |
    /// [Python](https://plot.ly/python/reference/#carpet-b0) |
    /// [R](https://plot.ly/r/reference/#carpet-b0)
    public var b0: Double?

    /// Sets the b coordinate step. 
    ///
    /// See `b0` for more info.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#carpet-db) |
    /// [Python](https://plot.ly/python/reference/#carpet-db) |
    /// [R](https://plot.ly/r/reference/#carpet-db)
    public var db: Double?

    /// The shift applied to each successive row of data in creating a cheater plot. 
    ///
    /// Only used if `x` is been ommitted.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#carpet-cheaterslope) |
    /// [Python](https://plot.ly/python/reference/#carpet-cheaterslope) |
    /// [R](https://plot.ly/r/reference/#carpet-cheaterslope)
    public var cheaterSlope: Double?

    /// # Used By
    /// `Carpet.aAxis` |
    public struct AAxis: Encodable {
        /// Sets default for all colors associated with this axis all at once: line, font, tick, and grid colors. 
        ///
        /// Grid color is lightened by blending this with the plot background Individual pieces can override
        /// this.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-color) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-color) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-color)
        public var color: Color?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-smoothing) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-smoothing) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-smoothing)
        public var smoothing: Double?
    
        /// # Used By
        /// `Carpet.AAxis.title` |
        public struct Title: Encodable {
            /// Sets the title of this axis. 
            ///
            /// Note that before the existence of `title.text`, the title's contents used to be defined as the
            /// `title` attribute itself. This behavior has been deprecated.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-title-text) |
            /// [Python](https://plot.ly/python/reference/#carpet-aaxis-title-text) |
            /// [R](https://plot.ly/r/reference/#carpet-aaxis-title-text)
            public var text: String?
        
            /// Sets this axis' title font. 
            ///
            /// Note that the title's font used to be set by the now deprecated `titlefont` attribute.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-title-font) |
            /// [Python](https://plot.ly/python/reference/#carpet-aaxis-title-font) |
            /// [R](https://plot.ly/r/reference/#carpet-aaxis-title-font)
            public var font: Shared.Font?
        
            /// An additional amount by which to offset the title from the tick labels, given in pixels. 
            ///
            /// Note that this used to be set by the now deprecated `titleoffset` attribute.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-title-offset) |
            /// [Python](https://plot.ly/python/reference/#carpet-aaxis-title-offset) |
            /// [R](https://plot.ly/r/reference/#carpet-aaxis-title-offset)
            public var offset: Double?
        
            public init(text: String? = nil, font: Shared.Font? = nil, offset: Double? = nil) {
                self.text = text
                self.font = font
                self.offset = offset
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-title) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-title) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-title)
        public var title: Title?
    
        /// Sets the axis type. 
        ///
        /// By default, plotly attempts to determined the axis type by looking into the data of the traces
        /// that referenced the axis in question.
        ///
        /// # Used By
        /// `Carpet.AAxis.type` |
        public enum `Type`: String, Encodable {
            case auto = "-"
            case linear
            case date
            case category
        }
        /// Sets the axis type. 
        ///
        /// By default, plotly attempts to determined the axis type by looking into the data of the traces
        /// that referenced the axis in question.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-type) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-type) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-type)
        public var type: `Type`?
    
        /// Determines whether or not the range of this axis is computed in relation to the input data. 
        ///
        /// See `rangemode` for more info. If `range` is provided, then `autorange` is set to *false*.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-autorange) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-autorange) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-autorange)
        public var autoRange: Shared.AutoRange?
    
        /// If *normal*, the range is computed in relation to the extrema of the input data. 
        ///
        /// If *tozero*`, the range extends to 0, regardless of the input data If *nonnegative*, the range
        /// is non-negative, regardless of the input data.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-rangemode) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-rangemode) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-rangemode)
        public var rangeMode: Shared.RangeMode?
    
        /// Sets the range of this axis. 
        ///
        /// If the axis `type` is *log*, then you must take the log of your desired range (e.g. to set the
        /// range from 1 to 100, set the range from 0 to 2). If the axis `type` is *date*, it should be date
        /// strings, like date data, though Date objects and unix milliseconds will be accepted and
        /// converted to strings. If the axis `type` is *category*, it should be numbers, using the scale
        /// where each category is assigned a serial number from zero in the order it appears.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-range) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-range) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-range)
        public var range: InfoArray?
    
        /// Determines whether or not this axis is zoom-able. 
        ///
        /// If true, then zoom is disabled.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-fixedrange) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-fixedrange) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-fixedrange)
        public var fixedRange: Bool?
    
        /// # Used By
        /// `Carpet.AAxis.cheaterType` |
        public enum CheaterType: String, Encodable {
            case index
            case value
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-cheatertype) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-cheatertype) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-cheatertype)
        public var cheaterType: CheaterType?
    
        /// # Used By
        /// `Carpet.AAxis.tickMode` |
        public enum TickMode: String, Encodable {
            case linear
            case array
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-tickmode) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-tickmode) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-tickmode)
        public var tickMode: TickMode?
    
        /// Specifies the maximum number of ticks for the particular axis. 
        ///
        /// The actual number of ticks will be chosen automatically to be less than or equal to `nticks`.
        /// Has an effect only if `tickmode` is set to *auto*.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-nticks) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-nticks) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-nticks)
        public var numTicks: Int?
    
        /// Sets the values at which ticks on this axis appear. 
        ///
        /// Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-tickvals) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-tickvals) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-tickvals)
        public var tickValues: [Double]?
    
        /// Sets the text displayed at the ticks position via `tickvals`. 
        ///
        /// Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-ticktext) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-ticktext) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-ticktext)
        public var tickText: [Double]?
    
        /// Determines whether axis labels are drawn on the low side, the high side, both, or neither side of the axis.
        ///
        /// # Used By
        /// `Carpet.AAxis.showTickLabels` |
        public enum ShowTickLabels: String, Encodable {
            case start
            case end
            case both
            case none
        }
        /// Determines whether axis labels are drawn on the low side, the high side, both, or neither side of the axis.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-showticklabels) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-showticklabels) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-showticklabels)
        public var showTickLabels: ShowTickLabels?
    
        /// Sets the tick font.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-tickfont) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-tickfont) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-tickfont)
        public var tickFont: Shared.Font?
    
        /// Sets the angle of the tick labels with respect to the horizontal. 
        ///
        /// For example, a `tickangle` of -90 draws the tick labels vertically.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-tickangle) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-tickangle) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-tickangle)
        public var tickAngle: Angle?
    
        /// Sets a tick label prefix.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-tickprefix) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-tickprefix) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-tickprefix)
        public var tickPrefix: String?
    
        /// If *all*, all tick labels are displayed with a prefix. 
        ///
        /// If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is
        /// displayed with a suffix. If *none*, tick prefixes are hidden.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-showtickprefix) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-showtickprefix) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-showtickprefix)
        public var showTickPrefix: Shared.ShowTickPrefix?
    
        /// Sets a tick label suffix.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-ticksuffix) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-ticksuffix) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-ticksuffix)
        public var tickSuffix: String?
    
        /// Same as `showtickprefix` but for tick suffixes.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-showticksuffix) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-showticksuffix) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-showticksuffix)
        public var showTickSuffix: Shared.ShowTickSuffix?
    
        /// If *all*, all exponents are shown besides their significands. 
        ///
        /// If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the
        /// last tick is shown. If *none*, no exponents appear.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-showexponent) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-showexponent) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-showexponent)
        public var showExponent: Shared.ShowExponent?
    
        /// Determines a formatting rule for the tick exponents. 
        ///
        /// For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*,
        /// 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-exponentformat) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-exponentformat) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-exponentformat)
        public var exponentFormat: Shared.ExponentFormat?
    
        /// If "true", even 4-digit integers are separated
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-separatethousands) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-separatethousands) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-separatethousands)
        public var separatethousands: Bool?
    
        /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to those in Python. 
        ///
        /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
        /// And for dates see: We add one item to d3's date formatter: *%{n}f* for fractional seconds with n
        /// digits. For example, *2016-10-13 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display
        /// *09~15~23.46*
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-tickformat) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-tickformat) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-tickformat)
        public var tickFormat: String?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-tickformatstops) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-tickformatstops) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-tickformatstops)
        public var tickFormatStops: [Shared.TickFormatStop]?
    
        /// Specifies the ordering logic for the case of categorical variables. 
        ///
        /// By default, plotly uses *trace*, which specifies the order that is present in the data supplied.
        /// Set `categoryorder` to *category ascending* or *category descending* if order should be
        /// determined by the alphanumerical order of the category names. Set `categoryorder` to *array* to
        /// derive the ordering from the attribute `categoryarray`. If a category is not found in the
        /// `categoryarray` array, the sorting behavior for that attribute will be identical to the *trace*
        /// mode. The unspecified categories will follow the categories in `categoryarray`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-categoryorder) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-categoryorder) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-categoryorder)
        public var categoryOrder: Shared.CarpetCategoryOrder?
    
        /// Sets the order in which categories on this axis appear. 
        ///
        /// Only has an effect if `categoryorder` is set to *array*. Used with `categoryorder`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-categoryarray) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-categoryarray) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-categoryarray)
        public var categoryArray: [Double]?
    
        /// Extra padding between label and the axis
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-labelpadding) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-labelpadding) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-labelpadding)
        public var labelPadding: Int?
    
        /// Sets a axis label prefix.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-labelprefix) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-labelprefix) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-labelprefix)
        public var labelPrefix: String?
    
        /// Sets a axis label suffix.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-labelsuffix) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-labelsuffix) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-labelsuffix)
        public var labelSuffix: String?
    
        /// Determines whether or not a line bounding this axis is drawn.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-showline) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-showline) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-showline)
        public var showLine: Bool?
    
        /// Sets the axis line color.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-linecolor) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-linecolor) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-linecolor)
        public var lineColor: Color?
    
        /// Sets the width (in px) of the axis line.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-linewidth) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-linewidth) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-linewidth)
        public var lineWidth: Double?
    
        /// Sets the axis line color.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-gridcolor) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-gridcolor) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-gridcolor)
        public var gridColor: Color?
    
        /// Sets the width (in px) of the axis line.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-gridwidth) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-gridwidth) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-gridwidth)
        public var gridWidth: Double?
    
        /// Determines whether or not grid lines are drawn. 
        ///
        /// If *true*, the grid lines are drawn at every tick mark.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-showgrid) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-showgrid) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-showgrid)
        public var showGrid: Bool?
    
        /// Sets the number of minor grid ticks per major grid tick
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-minorgridcount) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-minorgridcount) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-minorgridcount)
        public var minorGridCount: Int?
    
        /// Sets the width (in px) of the grid lines.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-minorgridwidth) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-minorgridwidth) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-minorgridwidth)
        public var minorGridWidth: Double?
    
        /// Sets the color of the grid lines.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-minorgridcolor) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-minorgridcolor) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-minorgridcolor)
        public var minorGridColor: Color?
    
        /// Determines whether or not a line is drawn at along the starting value of this axis. 
        ///
        /// If *true*, the start line is drawn on top of the grid lines.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-startline) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-startline) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-startline)
        public var startLine: Bool?
    
        /// Sets the line color of the start line.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-startlinecolor) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-startlinecolor) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-startlinecolor)
        public var startLineColor: Color?
    
        /// Sets the width (in px) of the start line.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-startlinewidth) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-startlinewidth) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-startlinewidth)
        public var startLineWidth: Double?
    
        /// Determines whether or not a line is drawn at along the final value of this axis. 
        ///
        /// If *true*, the end line is drawn on top of the grid lines.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-endline) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-endline) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-endline)
        public var endLine: Bool?
    
        /// Sets the width (in px) of the end line.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-endlinewidth) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-endlinewidth) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-endlinewidth)
        public var endLineWidth: Double?
    
        /// Sets the line color of the end line.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-endlinecolor) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-endlinecolor) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-endlinecolor)
        public var endLineColor: Color?
    
        /// The starting index of grid lines along the axis
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-tick0) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-tick0) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-tick0)
        public var tick0: Double?
    
        /// The stride between grid lines along the axis
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-dtick) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-dtick) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-dtick)
        public var dTick: Double?
    
        /// The starting index of grid lines along the axis
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-arraytick0) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-arraytick0) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-arraytick0)
        public var arrayTick0: Int?
    
        /// The stride between grid lines along the axis
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis-arraydtick) |
        /// [Python](https://plot.ly/python/reference/#carpet-aaxis-arraydtick) |
        /// [R](https://plot.ly/r/reference/#carpet-aaxis-arraydtick)
        public var arraydTick: Int?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case color
            case smoothing
            case title
            case type
            case autoRange = "autorange"
            case rangeMode = "rangemode"
            case range
            case fixedRange = "fixedrange"
            case cheaterType = "cheatertype"
            case tickMode = "tickmode"
            case numTicks = "nticks"
            case tickValues = "tickvals"
            case tickText = "ticktext"
            case showTickLabels = "showticklabels"
            case tickFont = "tickfont"
            case tickAngle = "tickangle"
            case tickPrefix = "tickprefix"
            case showTickPrefix = "showtickprefix"
            case tickSuffix = "ticksuffix"
            case showTickSuffix = "showticksuffix"
            case showExponent = "showexponent"
            case exponentFormat = "exponentformat"
            case separatethousands
            case tickFormat = "tickformat"
            case tickFormatStops = "tickformatstops"
            case categoryOrder = "categoryorder"
            case categoryArray = "categoryarray"
            case labelPadding = "labelpadding"
            case labelPrefix = "labelprefix"
            case labelSuffix = "labelsuffix"
            case showLine = "showline"
            case lineColor = "linecolor"
            case lineWidth = "linewidth"
            case gridColor = "gridcolor"
            case gridWidth = "gridwidth"
            case showGrid = "showgrid"
            case minorGridCount = "minorgridcount"
            case minorGridWidth = "minorgridwidth"
            case minorGridColor = "minorgridcolor"
            case startLine = "startline"
            case startLineColor = "startlinecolor"
            case startLineWidth = "startlinewidth"
            case endLine = "endline"
            case endLineWidth = "endlinewidth"
            case endLineColor = "endlinecolor"
            case tick0
            case dTick = "dtick"
            case arrayTick0 = "arraytick0"
            case arraydTick = "arraydtick"
        }
        
        public init(color: Color? = nil, smoothing: Double? = nil, title: Title? = nil, type: `Type`? = nil, autoRange: Shared.AutoRange? = nil, rangeMode: Shared.RangeMode? = nil, range: InfoArray? = nil, fixedRange: Bool? = nil, cheaterType: CheaterType? = nil, tickMode: TickMode? = nil, numTicks: Int? = nil, tickValues: [Double]? = nil, tickText: [Double]? = nil, showTickLabels: ShowTickLabels? = nil, tickFont: Shared.Font? = nil, tickAngle: Angle? = nil, tickPrefix: String? = nil, showTickPrefix: Shared.ShowTickPrefix? = nil, tickSuffix: String? = nil, showTickSuffix: Shared.ShowTickSuffix? = nil, showExponent: Shared.ShowExponent? = nil, exponentFormat: Shared.ExponentFormat? = nil, separatethousands: Bool? = nil, tickFormat: String? = nil, tickFormatStops: [Shared.TickFormatStop]? = nil, categoryOrder: Shared.CarpetCategoryOrder? = nil, categoryArray: [Double]? = nil, labelPadding: Int? = nil, labelPrefix: String? = nil, labelSuffix: String? = nil, showLine: Bool? = nil, lineColor: Color? = nil, lineWidth: Double? = nil, gridColor: Color? = nil, gridWidth: Double? = nil, showGrid: Bool? = nil, minorGridCount: Int? = nil, minorGridWidth: Double? = nil, minorGridColor: Color? = nil, startLine: Bool? = nil, startLineColor: Color? = nil, startLineWidth: Double? = nil, endLine: Bool? = nil, endLineWidth: Double? = nil, endLineColor: Color? = nil, tick0: Double? = nil, dTick: Double? = nil, arrayTick0: Int? = nil, arraydTick: Int? = nil) {
            self.color = color
            self.smoothing = smoothing
            self.title = title
            self.type = type
            self.autoRange = autoRange
            self.rangeMode = rangeMode
            self.range = range
            self.fixedRange = fixedRange
            self.cheaterType = cheaterType
            self.tickMode = tickMode
            self.numTicks = numTicks
            self.tickValues = tickValues
            self.tickText = tickText
            self.showTickLabels = showTickLabels
            self.tickFont = tickFont
            self.tickAngle = tickAngle
            self.tickPrefix = tickPrefix
            self.showTickPrefix = showTickPrefix
            self.tickSuffix = tickSuffix
            self.showTickSuffix = showTickSuffix
            self.showExponent = showExponent
            self.exponentFormat = exponentFormat
            self.separatethousands = separatethousands
            self.tickFormat = tickFormat
            self.tickFormatStops = tickFormatStops
            self.categoryOrder = categoryOrder
            self.categoryArray = categoryArray
            self.labelPadding = labelPadding
            self.labelPrefix = labelPrefix
            self.labelSuffix = labelSuffix
            self.showLine = showLine
            self.lineColor = lineColor
            self.lineWidth = lineWidth
            self.gridColor = gridColor
            self.gridWidth = gridWidth
            self.showGrid = showGrid
            self.minorGridCount = minorGridCount
            self.minorGridWidth = minorGridWidth
            self.minorGridColor = minorGridColor
            self.startLine = startLine
            self.startLineColor = startLineColor
            self.startLineWidth = startLineWidth
            self.endLine = endLine
            self.endLineWidth = endLineWidth
            self.endLineColor = endLineColor
            self.tick0 = tick0
            self.dTick = dTick
            self.arrayTick0 = arrayTick0
            self.arraydTick = arraydTick
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#carpet-aaxis) |
    /// [Python](https://plot.ly/python/reference/#carpet-aaxis) |
    /// [R](https://plot.ly/r/reference/#carpet-aaxis)
    public var aAxis: AAxis?

    /// # Used By
    /// `Carpet.bAxis` |
    public struct BAxis: Encodable {
        /// Sets default for all colors associated with this axis all at once: line, font, tick, and grid colors. 
        ///
        /// Grid color is lightened by blending this with the plot background Individual pieces can override
        /// this.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-color) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-color) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-color)
        public var color: Color?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-smoothing) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-smoothing) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-smoothing)
        public var smoothing: Double?
    
        /// # Used By
        /// `Carpet.BAxis.title` |
        public struct Title: Encodable {
            /// Sets the title of this axis. 
            ///
            /// Note that before the existence of `title.text`, the title's contents used to be defined as the
            /// `title` attribute itself. This behavior has been deprecated.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-title-text) |
            /// [Python](https://plot.ly/python/reference/#carpet-baxis-title-text) |
            /// [R](https://plot.ly/r/reference/#carpet-baxis-title-text)
            public var text: String?
        
            /// Sets this axis' title font. 
            ///
            /// Note that the title's font used to be set by the now deprecated `titlefont` attribute.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-title-font) |
            /// [Python](https://plot.ly/python/reference/#carpet-baxis-title-font) |
            /// [R](https://plot.ly/r/reference/#carpet-baxis-title-font)
            public var font: Shared.Font?
        
            /// An additional amount by which to offset the title from the tick labels, given in pixels. 
            ///
            /// Note that this used to be set by the now deprecated `titleoffset` attribute.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-title-offset) |
            /// [Python](https://plot.ly/python/reference/#carpet-baxis-title-offset) |
            /// [R](https://plot.ly/r/reference/#carpet-baxis-title-offset)
            public var offset: Double?
        
            public init(text: String? = nil, font: Shared.Font? = nil, offset: Double? = nil) {
                self.text = text
                self.font = font
                self.offset = offset
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-title) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-title) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-title)
        public var title: Title?
    
        /// Sets the axis type. 
        ///
        /// By default, plotly attempts to determined the axis type by looking into the data of the traces
        /// that referenced the axis in question.
        ///
        /// # Used By
        /// `Carpet.BAxis.type` |
        public enum `Type`: String, Encodable {
            case auto = "-"
            case linear
            case date
            case category
        }
        /// Sets the axis type. 
        ///
        /// By default, plotly attempts to determined the axis type by looking into the data of the traces
        /// that referenced the axis in question.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-type) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-type) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-type)
        public var type: `Type`?
    
        /// Determines whether or not the range of this axis is computed in relation to the input data. 
        ///
        /// See `rangemode` for more info. If `range` is provided, then `autorange` is set to *false*.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-autorange) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-autorange) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-autorange)
        public var autoRange: Shared.AutoRange?
    
        /// If *normal*, the range is computed in relation to the extrema of the input data. 
        ///
        /// If *tozero*`, the range extends to 0, regardless of the input data If *nonnegative*, the range
        /// is non-negative, regardless of the input data.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-rangemode) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-rangemode) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-rangemode)
        public var rangeMode: Shared.RangeMode?
    
        /// Sets the range of this axis. 
        ///
        /// If the axis `type` is *log*, then you must take the log of your desired range (e.g. to set the
        /// range from 1 to 100, set the range from 0 to 2). If the axis `type` is *date*, it should be date
        /// strings, like date data, though Date objects and unix milliseconds will be accepted and
        /// converted to strings. If the axis `type` is *category*, it should be numbers, using the scale
        /// where each category is assigned a serial number from zero in the order it appears.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-range) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-range) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-range)
        public var range: InfoArray?
    
        /// Determines whether or not this axis is zoom-able. 
        ///
        /// If true, then zoom is disabled.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-fixedrange) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-fixedrange) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-fixedrange)
        public var fixedRange: Bool?
    
        /// # Used By
        /// `Carpet.BAxis.cheaterType` |
        public enum CheaterType: String, Encodable {
            case index
            case value
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-cheatertype) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-cheatertype) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-cheatertype)
        public var cheaterType: CheaterType?
    
        /// # Used By
        /// `Carpet.BAxis.tickMode` |
        public enum TickMode: String, Encodable {
            case linear
            case array
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-tickmode) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-tickmode) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-tickmode)
        public var tickMode: TickMode?
    
        /// Specifies the maximum number of ticks for the particular axis. 
        ///
        /// The actual number of ticks will be chosen automatically to be less than or equal to `nticks`.
        /// Has an effect only if `tickmode` is set to *auto*.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-nticks) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-nticks) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-nticks)
        public var numTicks: Int?
    
        /// Sets the values at which ticks on this axis appear. 
        ///
        /// Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-tickvals) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-tickvals) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-tickvals)
        public var tickValues: [Double]?
    
        /// Sets the text displayed at the ticks position via `tickvals`. 
        ///
        /// Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-ticktext) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-ticktext) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-ticktext)
        public var tickText: [Double]?
    
        /// Determines whether axis labels are drawn on the low side, the high side, both, or neither side of the axis.
        ///
        /// # Used By
        /// `Carpet.BAxis.showTickLabels` |
        public enum ShowTickLabels: String, Encodable {
            case start
            case end
            case both
            case none
        }
        /// Determines whether axis labels are drawn on the low side, the high side, both, or neither side of the axis.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-showticklabels) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-showticklabels) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-showticklabels)
        public var showTickLabels: ShowTickLabels?
    
        /// Sets the tick font.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-tickfont) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-tickfont) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-tickfont)
        public var tickFont: Shared.Font?
    
        /// Sets the angle of the tick labels with respect to the horizontal. 
        ///
        /// For example, a `tickangle` of -90 draws the tick labels vertically.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-tickangle) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-tickangle) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-tickangle)
        public var tickAngle: Angle?
    
        /// Sets a tick label prefix.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-tickprefix) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-tickprefix) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-tickprefix)
        public var tickPrefix: String?
    
        /// If *all*, all tick labels are displayed with a prefix. 
        ///
        /// If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is
        /// displayed with a suffix. If *none*, tick prefixes are hidden.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-showtickprefix) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-showtickprefix) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-showtickprefix)
        public var showTickPrefix: Shared.ShowTickPrefix?
    
        /// Sets a tick label suffix.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-ticksuffix) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-ticksuffix) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-ticksuffix)
        public var tickSuffix: String?
    
        /// Same as `showtickprefix` but for tick suffixes.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-showticksuffix) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-showticksuffix) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-showticksuffix)
        public var showTickSuffix: Shared.ShowTickSuffix?
    
        /// If *all*, all exponents are shown besides their significands. 
        ///
        /// If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the
        /// last tick is shown. If *none*, no exponents appear.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-showexponent) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-showexponent) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-showexponent)
        public var showExponent: Shared.ShowExponent?
    
        /// Determines a formatting rule for the tick exponents. 
        ///
        /// For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*,
        /// 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-exponentformat) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-exponentformat) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-exponentformat)
        public var exponentFormat: Shared.ExponentFormat?
    
        /// If "true", even 4-digit integers are separated
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-separatethousands) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-separatethousands) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-separatethousands)
        public var separatethousands: Bool?
    
        /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to those in Python. 
        ///
        /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
        /// And for dates see: We add one item to d3's date formatter: *%{n}f* for fractional seconds with n
        /// digits. For example, *2016-10-13 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display
        /// *09~15~23.46*
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-tickformat) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-tickformat) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-tickformat)
        public var tickFormat: String?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-tickformatstops) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-tickformatstops) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-tickformatstops)
        public var tickFormatStops: [Shared.TickFormatStop]?
    
        /// Specifies the ordering logic for the case of categorical variables. 
        ///
        /// By default, plotly uses *trace*, which specifies the order that is present in the data supplied.
        /// Set `categoryorder` to *category ascending* or *category descending* if order should be
        /// determined by the alphanumerical order of the category names. Set `categoryorder` to *array* to
        /// derive the ordering from the attribute `categoryarray`. If a category is not found in the
        /// `categoryarray` array, the sorting behavior for that attribute will be identical to the *trace*
        /// mode. The unspecified categories will follow the categories in `categoryarray`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-categoryorder) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-categoryorder) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-categoryorder)
        public var categoryOrder: Shared.CarpetCategoryOrder?
    
        /// Sets the order in which categories on this axis appear. 
        ///
        /// Only has an effect if `categoryorder` is set to *array*. Used with `categoryorder`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-categoryarray) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-categoryarray) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-categoryarray)
        public var categoryArray: [Double]?
    
        /// Extra padding between label and the axis
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-labelpadding) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-labelpadding) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-labelpadding)
        public var labelPadding: Int?
    
        /// Sets a axis label prefix.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-labelprefix) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-labelprefix) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-labelprefix)
        public var labelPrefix: String?
    
        /// Sets a axis label suffix.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-labelsuffix) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-labelsuffix) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-labelsuffix)
        public var labelSuffix: String?
    
        /// Determines whether or not a line bounding this axis is drawn.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-showline) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-showline) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-showline)
        public var showLine: Bool?
    
        /// Sets the axis line color.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-linecolor) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-linecolor) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-linecolor)
        public var lineColor: Color?
    
        /// Sets the width (in px) of the axis line.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-linewidth) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-linewidth) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-linewidth)
        public var lineWidth: Double?
    
        /// Sets the axis line color.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-gridcolor) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-gridcolor) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-gridcolor)
        public var gridColor: Color?
    
        /// Sets the width (in px) of the axis line.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-gridwidth) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-gridwidth) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-gridwidth)
        public var gridWidth: Double?
    
        /// Determines whether or not grid lines are drawn. 
        ///
        /// If *true*, the grid lines are drawn at every tick mark.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-showgrid) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-showgrid) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-showgrid)
        public var showGrid: Bool?
    
        /// Sets the number of minor grid ticks per major grid tick
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-minorgridcount) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-minorgridcount) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-minorgridcount)
        public var minorGridCount: Int?
    
        /// Sets the width (in px) of the grid lines.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-minorgridwidth) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-minorgridwidth) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-minorgridwidth)
        public var minorGridWidth: Double?
    
        /// Sets the color of the grid lines.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-minorgridcolor) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-minorgridcolor) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-minorgridcolor)
        public var minorGridColor: Color?
    
        /// Determines whether or not a line is drawn at along the starting value of this axis. 
        ///
        /// If *true*, the start line is drawn on top of the grid lines.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-startline) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-startline) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-startline)
        public var startLine: Bool?
    
        /// Sets the line color of the start line.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-startlinecolor) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-startlinecolor) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-startlinecolor)
        public var startLineColor: Color?
    
        /// Sets the width (in px) of the start line.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-startlinewidth) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-startlinewidth) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-startlinewidth)
        public var startLineWidth: Double?
    
        /// Determines whether or not a line is drawn at along the final value of this axis. 
        ///
        /// If *true*, the end line is drawn on top of the grid lines.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-endline) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-endline) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-endline)
        public var endLine: Bool?
    
        /// Sets the width (in px) of the end line.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-endlinewidth) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-endlinewidth) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-endlinewidth)
        public var endLineWidth: Double?
    
        /// Sets the line color of the end line.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-endlinecolor) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-endlinecolor) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-endlinecolor)
        public var endLineColor: Color?
    
        /// The starting index of grid lines along the axis
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-tick0) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-tick0) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-tick0)
        public var tick0: Double?
    
        /// The stride between grid lines along the axis
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-dtick) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-dtick) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-dtick)
        public var dTick: Double?
    
        /// The starting index of grid lines along the axis
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-arraytick0) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-arraytick0) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-arraytick0)
        public var arrayTick0: Int?
    
        /// The stride between grid lines along the axis
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis-arraydtick) |
        /// [Python](https://plot.ly/python/reference/#carpet-baxis-arraydtick) |
        /// [R](https://plot.ly/r/reference/#carpet-baxis-arraydtick)
        public var arraydTick: Int?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case color
            case smoothing
            case title
            case type
            case autoRange = "autorange"
            case rangeMode = "rangemode"
            case range
            case fixedRange = "fixedrange"
            case cheaterType = "cheatertype"
            case tickMode = "tickmode"
            case numTicks = "nticks"
            case tickValues = "tickvals"
            case tickText = "ticktext"
            case showTickLabels = "showticklabels"
            case tickFont = "tickfont"
            case tickAngle = "tickangle"
            case tickPrefix = "tickprefix"
            case showTickPrefix = "showtickprefix"
            case tickSuffix = "ticksuffix"
            case showTickSuffix = "showticksuffix"
            case showExponent = "showexponent"
            case exponentFormat = "exponentformat"
            case separatethousands
            case tickFormat = "tickformat"
            case tickFormatStops = "tickformatstops"
            case categoryOrder = "categoryorder"
            case categoryArray = "categoryarray"
            case labelPadding = "labelpadding"
            case labelPrefix = "labelprefix"
            case labelSuffix = "labelsuffix"
            case showLine = "showline"
            case lineColor = "linecolor"
            case lineWidth = "linewidth"
            case gridColor = "gridcolor"
            case gridWidth = "gridwidth"
            case showGrid = "showgrid"
            case minorGridCount = "minorgridcount"
            case minorGridWidth = "minorgridwidth"
            case minorGridColor = "minorgridcolor"
            case startLine = "startline"
            case startLineColor = "startlinecolor"
            case startLineWidth = "startlinewidth"
            case endLine = "endline"
            case endLineWidth = "endlinewidth"
            case endLineColor = "endlinecolor"
            case tick0
            case dTick = "dtick"
            case arrayTick0 = "arraytick0"
            case arraydTick = "arraydtick"
        }
        
        public init(color: Color? = nil, smoothing: Double? = nil, title: Title? = nil, type: `Type`? = nil, autoRange: Shared.AutoRange? = nil, rangeMode: Shared.RangeMode? = nil, range: InfoArray? = nil, fixedRange: Bool? = nil, cheaterType: CheaterType? = nil, tickMode: TickMode? = nil, numTicks: Int? = nil, tickValues: [Double]? = nil, tickText: [Double]? = nil, showTickLabels: ShowTickLabels? = nil, tickFont: Shared.Font? = nil, tickAngle: Angle? = nil, tickPrefix: String? = nil, showTickPrefix: Shared.ShowTickPrefix? = nil, tickSuffix: String? = nil, showTickSuffix: Shared.ShowTickSuffix? = nil, showExponent: Shared.ShowExponent? = nil, exponentFormat: Shared.ExponentFormat? = nil, separatethousands: Bool? = nil, tickFormat: String? = nil, tickFormatStops: [Shared.TickFormatStop]? = nil, categoryOrder: Shared.CarpetCategoryOrder? = nil, categoryArray: [Double]? = nil, labelPadding: Int? = nil, labelPrefix: String? = nil, labelSuffix: String? = nil, showLine: Bool? = nil, lineColor: Color? = nil, lineWidth: Double? = nil, gridColor: Color? = nil, gridWidth: Double? = nil, showGrid: Bool? = nil, minorGridCount: Int? = nil, minorGridWidth: Double? = nil, minorGridColor: Color? = nil, startLine: Bool? = nil, startLineColor: Color? = nil, startLineWidth: Double? = nil, endLine: Bool? = nil, endLineWidth: Double? = nil, endLineColor: Color? = nil, tick0: Double? = nil, dTick: Double? = nil, arrayTick0: Int? = nil, arraydTick: Int? = nil) {
            self.color = color
            self.smoothing = smoothing
            self.title = title
            self.type = type
            self.autoRange = autoRange
            self.rangeMode = rangeMode
            self.range = range
            self.fixedRange = fixedRange
            self.cheaterType = cheaterType
            self.tickMode = tickMode
            self.numTicks = numTicks
            self.tickValues = tickValues
            self.tickText = tickText
            self.showTickLabels = showTickLabels
            self.tickFont = tickFont
            self.tickAngle = tickAngle
            self.tickPrefix = tickPrefix
            self.showTickPrefix = showTickPrefix
            self.tickSuffix = tickSuffix
            self.showTickSuffix = showTickSuffix
            self.showExponent = showExponent
            self.exponentFormat = exponentFormat
            self.separatethousands = separatethousands
            self.tickFormat = tickFormat
            self.tickFormatStops = tickFormatStops
            self.categoryOrder = categoryOrder
            self.categoryArray = categoryArray
            self.labelPadding = labelPadding
            self.labelPrefix = labelPrefix
            self.labelSuffix = labelSuffix
            self.showLine = showLine
            self.lineColor = lineColor
            self.lineWidth = lineWidth
            self.gridColor = gridColor
            self.gridWidth = gridWidth
            self.showGrid = showGrid
            self.minorGridCount = minorGridCount
            self.minorGridWidth = minorGridWidth
            self.minorGridColor = minorGridColor
            self.startLine = startLine
            self.startLineColor = startLineColor
            self.startLineWidth = startLineWidth
            self.endLine = endLine
            self.endLineWidth = endLineWidth
            self.endLineColor = endLineColor
            self.tick0 = tick0
            self.dTick = dTick
            self.arrayTick0 = arrayTick0
            self.arraydTick = arraydTick
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#carpet-baxis) |
    /// [Python](https://plot.ly/python/reference/#carpet-baxis) |
    /// [R](https://plot.ly/r/reference/#carpet-baxis)
    public var bAxis: BAxis?

    /// The default font used for axis & tick labels on this carpet
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#carpet-font) |
    /// [Python](https://plot.ly/python/reference/#carpet-font) |
    /// [R](https://plot.ly/r/reference/#carpet-font)
    public var font: Shared.Font?

    /// Sets default for all colors associated with this axis all at once: line, font, tick, and grid colors. 
    ///
    /// Grid color is lightened by blending this with the plot background Individual pieces can override
    /// this.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#carpet-color) |
    /// [Python](https://plot.ly/python/reference/#carpet-color) |
    /// [R](https://plot.ly/r/reference/#carpet-color)
    public var color: Color?

    /// Sets a reference between this trace's x coordinates and a 2D cartesian x axis. 
    ///
    /// If *x* (the default value), the x coordinates refer to `layout.xaxis`. If *x2*, the x
    /// coordinates refer to `layout.xaxis2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#carpet-xaxis) |
    /// [Python](https://plot.ly/python/reference/#carpet-xaxis) |
    /// [R](https://plot.ly/r/reference/#carpet-xaxis)
    public var xAxis: SubPlotID?

    /// Sets a reference between this trace's y coordinates and a 2D cartesian y axis. 
    ///
    /// If *y* (the default value), the y coordinates refer to `layout.yaxis`. If *y2*, the y
    /// coordinates refer to `layout.yaxis2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#carpet-yaxis) |
    /// [Python](https://plot.ly/python/reference/#carpet-yaxis) |
    /// [R](https://plot.ly/r/reference/#carpet-yaxis)
    public var yAxis: SubPlotID?

    /// Plotly compatible property encoding
    enum CodingKeys: String, CodingKey {
        case type
        case animatable
        case visible
        case opacity
        case name
        case uid
        case ids
        case customData = "customdata"
        case meta
        case stream
        case uiRevision = "uirevision"
        case carpet
        case x
        case y
        case a
        case a0
        case da
        case b
        case b0
        case db
        case cheaterSlope = "cheaterslope"
        case aAxis = "aaxis"
        case bAxis = "baxis"
        case font
        case color
        case xAxis = "xaxis"
        case yAxis = "yaxis"
    }
    
    public init(visible: Shared.Visible? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: ArrayOrAnything? = nil, stream: Shared.Stream? = nil, uiRevision: Anything? = nil, carpet: String? = nil, x: XData? = nil, y: YData? = nil, a: [Double]? = nil, a0: Double? = nil, da: Double? = nil, b: [Double]? = nil, b0: Double? = nil, db: Double? = nil, cheaterSlope: Double? = nil, aAxis: AAxis? = nil, bAxis: BAxis? = nil, font: Shared.Font? = nil, color: Color? = nil, xAxis: SubPlotID? = nil, yAxis: SubPlotID? = nil) {
        self.visible = visible
        self.opacity = opacity
        self.name = name
        self.uid = uid
        self.ids = ids
        self.customData = customData
        self.meta = meta
        self.stream = stream
        self.uiRevision = uiRevision
        self.carpet = carpet
        self.x = x
        self.y = y
        self.a = a
        self.a0 = a0
        self.da = da
        self.b = b
        self.b0 = b0
        self.db = db
        self.cheaterSlope = cheaterSlope
        self.aAxis = aAxis
        self.bAxis = bAxis
        self.font = font
        self.color = color
        self.xAxis = xAxis
        self.yAxis = yAxis
    }
}