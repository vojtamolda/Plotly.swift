public struct Layout: Encodable {
    
    // MARK: - BarPolar Trace

    
    // MARK: - Candlestick Trace

    
    // MARK: - FunnelArea Trace

    
    // MARK: - Treemap Trace

    
    // MARK: - Sunburst Trace

    
    // MARK: - Pie Trace

    
    // MARK: - Waterfall Trace

    
    // MARK: - Funnel Trace

    
    // MARK: - Violin Trace

    
    // MARK: - Histogram Trace

    
    // MARK: - Box Trace

    
    // MARK: - Bar Trace

    
    // MARK: - General

    public var font: Font0?

    /// - layout/layoutAttributes/title
    public struct Title: Encodable {
        /// Sets the plot's title. 
        ///
        /// Note that before the existence of `title.text`, the title's contents used to be defined as the
        /// `title` attribute itself. This behavior has been deprecated.
        public var text: String?
    
        public var font: Font0?
    
        public var xReference: XReference0?
    
        public var yReference: XReference0?
    
        /// Sets the x position with respect to `xref` in normalized coordinates from *0* (left) to *1* (right).
        public var x: Double?
    
        /// Sets the y position with respect to `yref` in normalized coordinates from *0* (bottom) to *1* (top). 
        ///
        /// *auto* places the baseline of the title onto the vertical center of the top margin.
        public var y: Double?
    
        public var xAnchor: XAnchor0?
    
        public var yAnchor: YAnchor0?
    
        public var padding: Padding0?
    
        public init(text: String? = nil, font: Font0? = nil, xReference: XReference0? = nil, yReference: XReference0? = nil, x: Double? = nil, y: Double? = nil, xAnchor: XAnchor0? = nil, yAnchor: YAnchor0? = nil, padding: Padding0? = nil) {
            self.text = text
            self.font = font
            self.xReference = xReference
            self.yReference = yReference
            self.x = x
            self.y = y
            self.xAnchor = xAnchor
            self.yAnchor = yAnchor
            self.padding = padding
        }
    }
    public var title: Title?

    /// Determines whether or not a layout width or height that has been left undefined by the user is initialized on each relayout. 
    ///
    /// Note that, regardless of this attribute, an undefined layout width or height is always
    /// initialized on the first call to plot.
    public var autoSize: Bool?

    /// Sets the plot's width (in px).
    public var width: Double?

    /// Sets the plot's height (in px).
    public var height: Double?

    /// - layout/layoutAttributes/margin
    public struct Margin: Encodable {
        /// Sets the left margin (in px).
        public var l: Double?
    
        /// Sets the right margin (in px).
        public var r: Double?
    
        /// Sets the top margin (in px).
        public var t: Double?
    
        /// Sets the bottom margin (in px).
        public var b: Double?
    
        /// Sets the amount of padding (in px) between the plotting area and the axis lines
        public var padding: Double?
    
        /// Turns on/off margin expansion computations. 
        ///
        /// Legends, colorbars, updatemenus, sliders, axis rangeselector and rangeslider are allowed to push
        /// the margins by defaults.
        public var autoExpand: Bool?
    
        public init(l: Double? = nil, r: Double? = nil, t: Double? = nil, b: Double? = nil, padding: Double? = nil, autoExpand: Bool? = nil) {
            self.l = l
            self.r = r
            self.t = t
            self.b = b
            self.padding = padding
            self.autoExpand = autoExpand
        }
    }
    public var margin: Margin?

    /// Sets the color of paper where the graph is drawn.
    public var paperBackgroundColor: Color?

    /// Sets the color of plotting area in-between x and y axes.
    public var plotBackgroundColor: Color?

    /// Sets the decimal and thousand separators. 
    ///
    /// For example, *. * puts a '.' before decimals and a space between thousands. In English locales,
    /// dflt is *.,* but other locales may alter this default.
    public var separators: String?

    /// Determines whether or not a text link citing the data source is placed at the bottom-right cored of the figure. 
    ///
    /// Has only an effect only on graphs that have been generated via forked graphs from the plotly
    /// service (at https://plot.ly or on-premise).
    public var hideSources: Bool?

    /// Determines whether or not a legend is drawn. 
    ///
    /// Default is `true` if there is a trace to show and any of these: a) Two or more traces would by
    /// default be shown in the legend. b) One pie trace is shown in the legend. c) One trace is
    /// explicitly given with `showlegend: true`.
    public var showLegend: Bool?

    /// Sets the default trace colors.
    public var colorWay: ColorList?

    /// If provided, a changed value tells `Plotly.react` that one or more data arrays has changed. 
    ///
    /// This way you can modify arrays in-place rather than making a complete new copy for an
    /// incremental change. If NOT provided, `Plotly.react` assumes that data arrays are being treated
    /// as immutable, thus any data array with a different identity from its predecessor contains new
    /// data.
    public var dataRevision: Anything?

    /// Used to allow user interactions with the plot to persist after `Plotly.react` calls that are unaware of these interactions. 
    ///
    /// If `uirevision` is omitted, or if it is given and it changed from the previous `Plotly.react`
    /// call, the exact new figure is used. If `uirevision` is truthy and did NOT change, any attribute
    /// that has been affected by user interactions and did not receive a different value in the new
    /// figure will keep the interaction value. `layout.uirevision` attribute serves as the default for
    /// `uirevision` attributes in various sub-containers. For finer control you can set these
    /// sub-attributes directly. For example, if your app separately controls the data on the x and y
    /// axes you might set `xaxis.uirevision=*time*` and `yaxis.uirevision=*cost*`. Then if only the y
    /// data is changed, you can update `yaxis.uirevision=*quantity*` and the y axis range will reset
    /// but the x axis range will retain any user-driven zoom.
    public var uiRevision: Anything?

    /// Controls persistence of user-driven changes in `editable: true` configuration, other than trace names and axis titles. 
    ///
    /// Defaults to `layout.uirevision`.
    public var editRevision: Anything?

    /// Controls persistence of user-driven changes in selected points from all traces.
    public var selectionRevision: Anything?

    /// Default attributes to be applied to the plot. 
    ///
    /// Templates can be created from existing plots using `Plotly.makeTemplate`, or created manually.
    /// They should be objects with format: `{layout: layoutTemplate, data: {[type]: [traceTemplate,
    /// ...]}, ...}` `layoutTemplate` and `traceTemplate` are objects matching the attribute structure
    /// of `layout` and a data trace. Trace templates are applied cyclically to traces of each type.
    /// Container arrays (eg `annotations`) have special handling: An object ending in `defaults` (eg
    /// `annotationdefaults`) is applied to each array item. But if an item has a `templateitemname` key
    /// we look in the template array for an item with matching `name` and apply that instead. If no
    /// matching `name` is found we mark the item invisible. Any named template item not referenced is
    /// appended to the end of the array, so you can use this for a watermark annotation or a logo
    /// image, for example. To omit one of these items on the plot, make an item with matching
    /// `templateitemname` and `visible: false`.
    public var template: Anything?

    /// - layout/layoutAttributes/modebar
    public struct ModeBar: Encodable {
        public var orientation: Orientation0?
    
        /// Sets the background color of the modebar.
        public var backgroundColor: Color?
    
        /// Sets the color of the icons in the modebar.
        public var color: Color?
    
        /// Sets the color of the active or hovered on icons in the modebar.
        public var activeColor: Color?
    
        /// Controls persistence of user-driven changes related to the modebar, including `hovermode`, `dragmode`, and `showspikes` at both the root level and inside subplots. 
        ///
        /// Defaults to `layout.uirevision`.
        public var uiRevision: Anything?
    
        public init(orientation: Orientation0? = nil, backgroundColor: Color? = nil, color: Color? = nil, activeColor: Color? = nil, uiRevision: Anything? = nil) {
            self.orientation = orientation
            self.backgroundColor = backgroundColor
            self.color = color
            self.activeColor = activeColor
            self.uiRevision = uiRevision
        }
    }
    public var modeBar: ModeBar?

    /// Assigns extra meta information that can be used in various `text` attributes. 
    ///
    /// Attributes such as the graph, axis and colorbar `title.text`, annotation `text` `trace.name` in
    /// legend items, `rangeselector`, `updatemenus` and `sliders` `label` text all support `meta`. One
    /// can access `meta` fields using template strings: `%{meta[i]}` where `i` is the index of the
    /// `meta` item in question. `meta` can also be an object for example `{key: value}` which can be
    /// accessed %{meta[key]}.
    public var meta: Anything?

    /// Sets transition options used during Plotly.react updates.
    /// - layout/layoutAttributes/transition
    public struct Transition: Encodable {
        /// The duration of the transition, in milliseconds. 
        ///
        /// If equal to zero, updates are synchronous.
        public var duration: Double?
    
        public var easing: Easing0?
    
        /// Determines whether the figure's layout or traces smoothly transitions during updates that make both traces and layout change.
        /// - layout/layoutAttributes/transition/ordering
        public enum Ordering: String, Encodable {
            case layoutFirst = "layout first"
            case tracesFirst = "traces first"
        }
        public var ordering: Ordering?
    
        public init(duration: Double? = nil, easing: Easing0? = nil, ordering: Ordering? = nil) {
            self.duration = duration
            self.easing = easing
            self.ordering = ordering
        }
    }
    public var transition: Transition?

    /// Determines the mode of single click interactions. 
    ///
    /// *event* is the default value and emits the `plotly_click` event. In addition this mode emits the
    /// `plotly_selected` event in drag modes *lasso* and *select*, but with no event data attached
    /// (kept for compatibility reasons). The *select* flag enables selecting single data points via
    /// click. This mode also supports persistent selections, meaning that pressing Shift while
    /// clicking, adds to / subtracts from an existing selection. *select* with `hovermode`: *x* can be
    /// confusing, consider explicitly setting `hovermode`: *closest* when using this feature. Selection
    /// events are sent accordingly as long as *event* flag is set as well. When the *event* flag is
    /// missing, `plotly_click` and `plotly_selected` events are not fired.
    /// - layout/layoutAttributes/clickmode
    public struct ClickMode: OptionSet, Encodable {
        public let rawValue: Int
    
        public static let event = ClickMode(rawValue: 1 << 0)
        public static let select = ClickMode(rawValue: 1 << 1)
        public static let none = ClickMode(rawValue: 1 << 2)
    
        public init(rawValue: Int) { self.rawValue = rawValue }
    
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["event"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["select"] }
            if (self.rawValue & 1 << 2) != 0 { options += ["none"] }
            var container = encoder.singleValueContainer()
            try container.encode(options.joined(separator: "+"))
        }
    }
    public var clickMode: ClickMode?

    /// Determines the mode of drag interactions. 
    ///
    /// *select* and *lasso* apply only to scatter traces with markers or text. *orbit* and *turntable*
    /// apply only to 3D scenes.
    /// - layout/layoutAttributes/dragmode
    public enum DragMode: String, Encodable {
        case zoom
        case pan
        case select
        case lasso
        case orbit
        case turntable
        case `false` = "false"
    }
    public var dragMode: DragMode?

    /// Determines the mode of hover interactions. 
    ///
    /// If `clickmode` includes the *select* flag, `hovermode` defaults to *closest*. If `clickmode`
    /// lacks the *select* flag, it defaults to *x* or *y* (depending on the trace's `orientation`
    /// value) for plots based on cartesian coordinates. For anything else the default value is
    /// *closest*.
    /// - layout/layoutAttributes/hovermode
    public enum HoverMode: String, Encodable {
        case x
        case y
        case closest
        case `false` = "false"
    }
    public var hoverMode: HoverMode?

    /// Sets the default distance (in pixels) to look for data to add hover labels (-1 means no cutoff, 0 means no looking for data). 
    ///
    /// This is only a real distance for hovering on point-like objects, like scatter points. For
    /// area-like objects (bars, scatter fills, etc) hovering is on inside the area and off outside, but
    /// these objects will not supersede hover on point-like objects in case of conflict.
    public var hoverDistance: Int?

    /// Sets the default distance (in pixels) to look for data to draw spikelines to (-1 means no cutoff, 0 means no looking for data). 
    ///
    /// As with hoverdistance, distance does not apply to area-like objects. In addition, some objects
    /// can be hovered on but will not generate spikelines, such as scatter fills.
    public var spikeDistance: Int?

    /// - layout/layoutAttributes/hoverlabel
    public struct HoverLabel: Encodable {
        /// Sets the background color of all hover labels on graph
        public var backgroundColor: Color?
    
        /// Sets the border color of all hover labels on graph.
        public var borderColor: Color?
    
        public var font: Font0?
    
        public var align: Align0?
    
        /// Sets the default length (in number of characters) of the trace name in the hover labels for all traces. 
        ///
        /// -1 shows the whole name regardless of length. 0-3 shows the first 0-3 characters, and an integer
        /// >3 will show the whole name if it is less than that many characters, but if it is longer, will
        /// truncate to `namelength - 3` characters and add an ellipsis.
        public var nameLength: Int?
    
        public init(backgroundColor: Color? = nil, borderColor: Color? = nil, font: Font0? = nil, align: Align0? = nil, nameLength: Int? = nil) {
            self.backgroundColor = backgroundColor
            self.borderColor = borderColor
            self.font = font
            self.align = align
            self.nameLength = nameLength
        }
    }
    public var hoverLabel: HoverLabel?

    /// When "dragmode" is set to "select", this limits the selection of the drag to horizontal, vertical or diagonal. 
    ///
    /// "h" only allows horizontal selection, "v" only vertical, "d" only diagonal and "any" sets no
    /// limit.
    /// - layout/layoutAttributes/selectdirection
    public enum SelectDirection: String, Encodable {
        case h
        case v
        case d
        case any
    }
    public var selectDirection: SelectDirection?

    /// - layout/layoutAttributes/grid
    public struct Grid: Encodable {
        /// The number of rows in the grid. 
        ///
        /// If you provide a 2D `subplots` array or a `yaxes` array, its length is used as the default. But
        /// it's also possible to have a different length, if you want to leave a row at the end for
        /// non-cartesian subplots.
        public var rows: Int?
    
        /// Is the first row the top or the bottom? Note that columns are always enumerated from left to right.
        /// - layout/layoutAttributes/grid/roworder
        public enum RowOrder: String, Encodable {
            case topToBottom = "top to bottom"
            case bottomToTop = "bottom to top"
        }
        public var rowOrder: RowOrder?
    
        /// The number of columns in the grid. 
        ///
        /// If you provide a 2D `subplots` array, the length of its longest row is used as the default. If
        /// you give an `xaxes` array, its length is used as the default. But it's also possible to have a
        /// different length, if you want to leave a row at the end for non-cartesian subplots.
        public var columns: Int?
    
        /// Used for freeform grids, where some axes may be shared across subplots but others are not. 
        ///
        /// Each entry should be a cartesian subplot id, like *xy* or *x3y2*, or ** to leave that cell
        /// empty. You may reuse x axes within the same column, and y axes within the same row.
        /// Non-cartesian subplots and traces that support `domain` can place themselves in this grid
        /// separately using the `gridcell` attribute.
        public var subPlots: InfoArray?
    
        /// Used with `yaxes` when the x and y axes are shared across columns and rows. 
        ///
        /// Each entry should be an x axis id like *x*, *x2*, etc., or ** to not put an x axis in that
        /// column. Entries other than ** must be unique. Ignored if `subplots` is present. If missing but
        /// `yaxes` is present, will generate consecutive IDs.
        public var xAxes: InfoArray?
    
        /// Used with `yaxes` when the x and y axes are shared across columns and rows. 
        ///
        /// Each entry should be an y axis id like *y*, *y2*, etc., or ** to not put a y axis in that row.
        /// Entries other than ** must be unique. Ignored if `subplots` is present. If missing but `xaxes`
        /// is present, will generate consecutive IDs.
        public var yAxes: InfoArray?
    
        /// If no `subplots`, `xaxes`, or `yaxes` are given but we do have `rows` and `columns`, we can generate defaults using consecutive axis IDs, in two ways: *coupled* gives one x axis per column and one y axis per row. 
        ///
        /// *independent* uses a new xy pair for each cell, left-to-right across each row then iterating
        /// rows according to `roworder`.
        /// - layout/layoutAttributes/grid/pattern
        public enum Pattern: String, Encodable {
            case independent
            case coupled
        }
        public var pattern: Pattern?
    
        /// Horizontal space between grid cells, expressed as a fraction of the total width available to one cell. 
        ///
        /// Defaults to 0.1 for coupled-axes grids and 0.2 for independent grids.
        public var xGap: Double?
    
        /// Vertical space between grid cells, expressed as a fraction of the total height available to one cell. 
        ///
        /// Defaults to 0.1 for coupled-axes grids and 0.3 for independent grids.
        public var yGap: Double?
    
        /// - layout/layoutAttributes/grid/domain
        public struct Domain: Encodable {
            /// Sets the horizontal domain of this grid subplot (in plot fraction). 
            ///
            /// The first and last cells end exactly at the domain edges, with no grout around the edges.
            public var x: InfoArray?
        
            /// Sets the vertical domain of this grid subplot (in plot fraction). 
            ///
            /// The first and last cells end exactly at the domain edges, with no grout around the edges.
            public var y: InfoArray?
        
            public init(x: InfoArray? = nil, y: InfoArray? = nil) {
                self.x = x
                self.y = y
            }
        }
        public var domain: Domain?
    
        /// Sets where the x axis labels and titles go. 
        ///
        /// *bottom* means the very bottom of the grid. *bottom plot* is the lowest plot that each x axis is
        /// used in. *top* and *top plot* are similar.
        /// - layout/layoutAttributes/grid/xside
        public enum XSide: String, Encodable {
            case bottom
            case bottomPlot = "bottom plot"
            case topPlot = "top plot"
            case top
        }
        public var xSide: XSide?
    
        /// Sets where the y axis labels and titles go. 
        ///
        /// *left* means the very left edge of the grid. *left plot* is the leftmost plot that each y axis
        /// is used in. *right* and *right plot* are similar.
        /// - layout/layoutAttributes/grid/yside
        public enum YSide: String, Encodable {
            case left
            case leftPlot = "left plot"
            case rightPlot = "right plot"
            case right
        }
        public var ySide: YSide?
    
        public init(rows: Int? = nil, rowOrder: RowOrder? = nil, columns: Int? = nil, subPlots: InfoArray? = nil, xAxes: InfoArray? = nil, yAxes: InfoArray? = nil, pattern: Pattern? = nil, xGap: Double? = nil, yGap: Double? = nil, domain: Domain? = nil, xSide: XSide? = nil, ySide: YSide? = nil) {
            self.rows = rows
            self.rowOrder = rowOrder
            self.columns = columns
            self.subPlots = subPlots
            self.xAxes = xAxes
            self.yAxes = yAxes
            self.pattern = pattern
            self.xGap = xGap
            self.yGap = yGap
            self.domain = domain
            self.xSide = xSide
            self.ySide = ySide
        }
    }
    public var grid: Grid?

    public var calendar: Calendar0?

    /// - layout/layoutAttributes/xaxis
    public struct XAxis: Encodable {
        /// A single toggle to hide the axis while preserving interaction like dragging. 
        ///
        /// Default is true when a cheater plot is present on the axis, otherwise false
        public var visible: Bool?
    
        /// Sets default for all colors associated with this axis all at once: line, font, tick, and grid colors. 
        ///
        /// Grid color is lightened by blending this with the plot background Individual pieces can override
        /// this.
        public var color: Color?
    
        public var title: Title0?
    
        public var type: Rule0?
    
        public var autoRange: AutoRange0?
    
        public var rangeMode: RangeMode0?
    
        /// Sets the range of this axis. 
        ///
        /// If the axis `type` is *log*, then you must take the log of your desired range (e.g. to set the
        /// range from 1 to 100, set the range from 0 to 2). If the axis `type` is *date*, it should be date
        /// strings, like date data, though Date objects and unix milliseconds will be accepted and
        /// converted to strings. If the axis `type` is *category*, it should be numbers, using the scale
        /// where each category is assigned a serial number from zero in the order it appears.
        public var range: InfoArray?
    
        /// Determines whether or not this axis is zoom-able. 
        ///
        /// If true, then zoom is disabled.
        public var fixedRange: Bool?
    
        public var scaleAnchor: ScaleAnchor0?
    
        /// If this axis is linked to another by `scaleanchor`, this determines the pixel to unit scale ratio. 
        ///
        /// For example, if this value is 10, then every unit on this axis spans 10 times the number of
        /// pixels as a unit on the linked axis. Use this for example to create an elevation profile where
        /// the vertical scale is exaggerated a fixed amount with respect to the horizontal.
        public var scaleRatio: Double?
    
        public var constrain: Constrain0?
    
        public var constrainToward: ConstrainToward0?
    
        public var matches: ScaleAnchor0?
    
        public var tickMode: TickMode0?
    
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
    
        public var ticks: Ticks0?
    
        public var ticksOn: TicksOn0?
    
        public var mirror: Mirror0?
    
        /// Sets the tick length (in px).
        public var tickLength: Double?
    
        /// Sets the tick width (in px).
        public var tickWidth: Double?
    
        /// Sets the tick color.
        public var tickColor: Color?
    
        /// Determines whether or not the tick labels are drawn.
        public var showTickLabels: Bool?
    
        /// Determines whether long tick labels automatically grow the figure margins.
        public var autoMargin: Bool?
    
        /// Determines whether or not spikes (aka droplines) are drawn for this axis. 
        ///
        /// Note: This only takes affect when hovermode = closest
        public var showSpikes: Bool?
    
        /// Sets the spike color. 
        ///
        /// If undefined, will use the series color
        public var spikeColor: Color?
    
        /// Sets the width (in px) of the zero line.
        public var spikeThickness: Double?
    
        /// Sets the dash style of lines. 
        ///
        /// Set to a dash type string (*solid*, *dot*, *dash*, *longdash*, *dashdot*, or *longdashdot*) or a
        /// dash length list in px (eg *5px,10px,2px,2px*).
        public var spikeDash: String?
    
        public var spikeMode: SpikeMode0?
    
        public var spikeSnap: SpikeSnap0?
    
        public var tickFont: Font0?
    
        /// Sets the angle of the tick labels with respect to the horizontal. 
        ///
        /// For example, a `tickangle` of -90 draws the tick labels vertically.
        public var tickAngle: Angle?
    
        /// Sets a tick label prefix.
        public var tickPrefix: String?
    
        public var showTickPrefix: ShowTickPrefix0?
    
        /// Sets a tick label suffix.
        public var tickSuffix: String?
    
        public var showTickSuffix: ShowTickPrefix0?
    
        public var showExponent: ShowTickPrefix0?
    
        public var exponentFormat: ExponentFormat0?
    
        /// If "true", even 4-digit integers are separated
        public var separatethousands: Bool?
    
        /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to those in Python. 
        ///
        /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
        /// And for dates see:
        /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
        /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
        /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
        public var tickFormat: String?
    
        public var tickFormatStops: TickFormatStops0?
    
        /// Sets the hover text formatting rule using d3 formatting mini-languages which are very similar to those in Python. 
        ///
        /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
        /// And for dates see:
        /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
        /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
        /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
        public var hoverFormat: String?
    
        /// Determines whether or not a line bounding this axis is drawn.
        public var showLine: Bool?
    
        /// Sets the axis line color.
        public var lineColor: Color?
    
        /// Sets the width (in px) of the axis line.
        public var lineWidth: Double?
    
        /// Determines whether or not grid lines are drawn. 
        ///
        /// If *true*, the grid lines are drawn at every tick mark.
        public var showGrid: Bool?
    
        /// Sets the color of the grid lines.
        public var gridColor: Color?
    
        /// Sets the width (in px) of the grid lines.
        public var gridWidth: Double?
    
        /// Determines whether or not a line is drawn at along the 0 value of this axis. 
        ///
        /// If *true*, the zero line is drawn on top of the grid lines.
        public var zeroLine: Bool?
    
        /// Sets the line color of the zero line.
        public var zeroLineColor: Color?
    
        /// Sets the width (in px) of the zero line.
        public var zeroLineWidth: Double?
    
        /// Determines whether or not a dividers are drawn between the category levels of this axis. 
        ///
        /// Only has an effect on *multicategory* axes.
        public var showDividers: Bool?
    
        /// Sets the color of the dividers Only has an effect on *multicategory* axes.
        public var dividerColor: Color?
    
        /// Sets the width (in px) of the dividers Only has an effect on *multicategory* axes.
        public var dividerWidth: Double?
    
        public var anchor: Anchor0?
    
        public var side: Side0?
    
        public var overlaying: Anchor0?
    
        public var layer: Layer0?
    
        /// Sets the domain of this axis (in plot fraction).
        public var domain: InfoArray?
    
        /// Sets the position of this axis in the plotting space (in normalized coordinates). 
        ///
        /// Only has an effect if `anchor` is set to *free*.
        public var position: Double?
    
        public var categoryOrder: CategoryOrder0?
    
        /// Sets the order in which categories on this axis appear. 
        ///
        /// Only has an effect if `categoryorder` is set to *array*. Used with `categoryorder`.
        public var categoryArray: [Double]?
    
        /// Controls persistence of user-driven changes in axis `range`, `autorange`, and `title` if in `editable: true` configuration. 
        ///
        /// Defaults to `layout.uirevision`.
        public var uiRevision: Anything?
    
        /// - layout/layoutAttributes/xaxis/rangeslider
        public struct RangeSlider: Encodable {
            /// Sets the background color of the range slider.
            public var backgroundColor: Color?
        
            /// Sets the border color of the range slider.
            public var borderColor: Color?
        
            /// Sets the border width of the range slider.
            public var borderWidth: Int?
        
            /// Determines whether or not the range slider range is computed in relation to the input data. 
            ///
            /// If `range` is provided, then `autorange` is set to *false*.
            public var autoRange: Bool?
        
            /// Sets the range of the range slider. 
            ///
            /// If not set, defaults to the full xaxis range. If the axis `type` is *log*, then you must take
            /// the log of your desired range. If the axis `type` is *date*, it should be date strings, like
            /// date data, though Date objects and unix milliseconds will be accepted and converted to strings.
            /// If the axis `type` is *category*, it should be numbers, using the scale where each category is
            /// assigned a serial number from zero in the order it appears.
            public var range: InfoArray?
        
            /// The height of the range slider as a fraction of the total plot area height.
            public var thickness: Double?
        
            /// Determines whether or not the range slider will be visible. 
            ///
            /// If visible, perpendicular axes will be set to `fixedrange`
            public var visible: Bool?
        
            /// - layout/layoutAttributes/xaxis/rangeslider/yaxis
            public struct YAxis: Encodable {
                /// Determines whether or not the range of this axis in the rangeslider use the same value than in the main plot when zooming in/out. 
                ///
                /// If *auto*, the autorange will be used. If *fixed*, the `range` is used. If *match*, the current
                /// range of the corresponding y-axis on the main subplot is used.
                /// - layout/layoutAttributes/xaxis/rangeslider/yaxis/rangemode
                public enum RangeMode: String, Encodable {
                    case auto
                    case fixed
                    case match
                }
                public var rangeMode: RangeMode?
            
                /// Sets the range of this axis for the rangeslider.
                public var range: InfoArray?
            
                public init(rangeMode: RangeMode? = nil, range: InfoArray? = nil) {
                    self.rangeMode = rangeMode
                    self.range = range
                }
            }
            public var yAxis: YAxis?
        
            public init(backgroundColor: Color? = nil, borderColor: Color? = nil, borderWidth: Int? = nil, autoRange: Bool? = nil, range: InfoArray? = nil, thickness: Double? = nil, visible: Bool? = nil, yAxis: YAxis? = nil) {
                self.backgroundColor = backgroundColor
                self.borderColor = borderColor
                self.borderWidth = borderWidth
                self.autoRange = autoRange
                self.range = range
                self.thickness = thickness
                self.visible = visible
                self.yAxis = yAxis
            }
        }
        public var rangeSlider: RangeSlider?
    
        /// - layout/layoutAttributes/xaxis/rangeselector
        public struct RangeSelector: Encodable {
            /// Determines whether or not this range selector is visible. 
            ///
            /// Note that range selectors are only available for x axes of `type` set to or auto-typed to
            /// *date*.
            public var visible: Bool?
        
            public var buttons: TickFormatStops0?
        
            /// Sets the x position (in normalized coordinates) of the range selector.
            public var x: Double?
        
            public var xAnchor: XAnchor0?
        
            /// Sets the y position (in normalized coordinates) of the range selector.
            public var y: Double?
        
            public var yAnchor: YAnchor0?
        
            public var font: Font0?
        
            /// Sets the background color of the range selector buttons.
            public var backgroundColor: Color?
        
            /// Sets the background color of the active range selector button.
            public var activeColor: Color?
        
            /// Sets the color of the border enclosing the range selector.
            public var borderColor: Color?
        
            /// Sets the width (in px) of the border enclosing the range selector.
            public var borderWidth: Double?
        
            public init(visible: Bool? = nil, buttons: TickFormatStops0? = nil, x: Double? = nil, xAnchor: XAnchor0? = nil, y: Double? = nil, yAnchor: YAnchor0? = nil, font: Font0? = nil, backgroundColor: Color? = nil, activeColor: Color? = nil, borderColor: Color? = nil, borderWidth: Double? = nil) {
                self.visible = visible
                self.buttons = buttons
                self.x = x
                self.xAnchor = xAnchor
                self.y = y
                self.yAnchor = yAnchor
                self.font = font
                self.backgroundColor = backgroundColor
                self.activeColor = activeColor
                self.borderColor = borderColor
                self.borderWidth = borderWidth
            }
        }
        public var rangeSelector: RangeSelector?
    
        public var calendar: Calendar0?
    
        /// Sets the source reference on plot.ly for  tickvals .
        public var tickValuesSource: String?
    
        /// Sets the source reference on plot.ly for  ticktext .
        public var tickTextSource: String?
    
        /// Sets the source reference on plot.ly for  categoryarray .
        public var categoryArraySource: String?
    
        public init(visible: Bool? = nil, color: Color? = nil, title: Title0? = nil, type: Rule0? = nil, autoRange: AutoRange0? = nil, rangeMode: RangeMode0? = nil, range: InfoArray? = nil, fixedRange: Bool? = nil, scaleAnchor: ScaleAnchor0? = nil, scaleRatio: Double? = nil, constrain: Constrain0? = nil, constrainToward: ConstrainToward0? = nil, matches: ScaleAnchor0? = nil, tickMode: TickMode0? = nil, numTicks: Int? = nil, tick0: Anything? = nil, dTick: Anything? = nil, tickValues: [Double]? = nil, tickText: [Double]? = nil, ticks: Ticks0? = nil, ticksOn: TicksOn0? = nil, mirror: Mirror0? = nil, tickLength: Double? = nil, tickWidth: Double? = nil, tickColor: Color? = nil, showTickLabels: Bool? = nil, autoMargin: Bool? = nil, showSpikes: Bool? = nil, spikeColor: Color? = nil, spikeThickness: Double? = nil, spikeDash: String? = nil, spikeMode: SpikeMode0? = nil, spikeSnap: SpikeSnap0? = nil, tickFont: Font0? = nil, tickAngle: Angle? = nil, tickPrefix: String? = nil, showTickPrefix: ShowTickPrefix0? = nil, tickSuffix: String? = nil, showTickSuffix: ShowTickPrefix0? = nil, showExponent: ShowTickPrefix0? = nil, exponentFormat: ExponentFormat0? = nil, separatethousands: Bool? = nil, tickFormat: String? = nil, tickFormatStops: TickFormatStops0? = nil, hoverFormat: String? = nil, showLine: Bool? = nil, lineColor: Color? = nil, lineWidth: Double? = nil, showGrid: Bool? = nil, gridColor: Color? = nil, gridWidth: Double? = nil, zeroLine: Bool? = nil, zeroLineColor: Color? = nil, zeroLineWidth: Double? = nil, showDividers: Bool? = nil, dividerColor: Color? = nil, dividerWidth: Double? = nil, anchor: Anchor0? = nil, side: Side0? = nil, overlaying: Anchor0? = nil, layer: Layer0? = nil, domain: InfoArray? = nil, position: Double? = nil, categoryOrder: CategoryOrder0? = nil, categoryArray: [Double]? = nil, uiRevision: Anything? = nil, rangeSlider: RangeSlider? = nil, rangeSelector: RangeSelector? = nil, calendar: Calendar0? = nil, tickValuesSource: String? = nil, tickTextSource: String? = nil, categoryArraySource: String? = nil) {
            self.visible = visible
            self.color = color
            self.title = title
            self.type = type
            self.autoRange = autoRange
            self.rangeMode = rangeMode
            self.range = range
            self.fixedRange = fixedRange
            self.scaleAnchor = scaleAnchor
            self.scaleRatio = scaleRatio
            self.constrain = constrain
            self.constrainToward = constrainToward
            self.matches = matches
            self.tickMode = tickMode
            self.numTicks = numTicks
            self.tick0 = tick0
            self.dTick = dTick
            self.tickValues = tickValues
            self.tickText = tickText
            self.ticks = ticks
            self.ticksOn = ticksOn
            self.mirror = mirror
            self.tickLength = tickLength
            self.tickWidth = tickWidth
            self.tickColor = tickColor
            self.showTickLabels = showTickLabels
            self.autoMargin = autoMargin
            self.showSpikes = showSpikes
            self.spikeColor = spikeColor
            self.spikeThickness = spikeThickness
            self.spikeDash = spikeDash
            self.spikeMode = spikeMode
            self.spikeSnap = spikeSnap
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
            self.hoverFormat = hoverFormat
            self.showLine = showLine
            self.lineColor = lineColor
            self.lineWidth = lineWidth
            self.showGrid = showGrid
            self.gridColor = gridColor
            self.gridWidth = gridWidth
            self.zeroLine = zeroLine
            self.zeroLineColor = zeroLineColor
            self.zeroLineWidth = zeroLineWidth
            self.showDividers = showDividers
            self.dividerColor = dividerColor
            self.dividerWidth = dividerWidth
            self.anchor = anchor
            self.side = side
            self.overlaying = overlaying
            self.layer = layer
            self.domain = domain
            self.position = position
            self.categoryOrder = categoryOrder
            self.categoryArray = categoryArray
            self.uiRevision = uiRevision
            self.rangeSlider = rangeSlider
            self.rangeSelector = rangeSelector
            self.calendar = calendar
            self.tickValuesSource = tickValuesSource
            self.tickTextSource = tickTextSource
            self.categoryArraySource = categoryArraySource
        }
    }
    public var xAxis: XAxis?

    /// - layout/layoutAttributes/yaxis
    public struct YAxis: Encodable {
        /// A single toggle to hide the axis while preserving interaction like dragging. 
        ///
        /// Default is true when a cheater plot is present on the axis, otherwise false
        public var visible: Bool?
    
        /// Sets default for all colors associated with this axis all at once: line, font, tick, and grid colors. 
        ///
        /// Grid color is lightened by blending this with the plot background Individual pieces can override
        /// this.
        public var color: Color?
    
        public var title: Title0?
    
        public var type: Rule0?
    
        public var autoRange: AutoRange0?
    
        public var rangeMode: RangeMode0?
    
        /// Sets the range of this axis. 
        ///
        /// If the axis `type` is *log*, then you must take the log of your desired range (e.g. to set the
        /// range from 1 to 100, set the range from 0 to 2). If the axis `type` is *date*, it should be date
        /// strings, like date data, though Date objects and unix milliseconds will be accepted and
        /// converted to strings. If the axis `type` is *category*, it should be numbers, using the scale
        /// where each category is assigned a serial number from zero in the order it appears.
        public var range: InfoArray?
    
        /// Determines whether or not this axis is zoom-able. 
        ///
        /// If true, then zoom is disabled.
        public var fixedRange: Bool?
    
        public var scaleAnchor: ScaleAnchor0?
    
        /// If this axis is linked to another by `scaleanchor`, this determines the pixel to unit scale ratio. 
        ///
        /// For example, if this value is 10, then every unit on this axis spans 10 times the number of
        /// pixels as a unit on the linked axis. Use this for example to create an elevation profile where
        /// the vertical scale is exaggerated a fixed amount with respect to the horizontal.
        public var scaleRatio: Double?
    
        public var constrain: Constrain0?
    
        public var constrainToward: ConstrainToward0?
    
        public var matches: ScaleAnchor0?
    
        public var tickMode: TickMode0?
    
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
    
        public var ticks: Ticks0?
    
        public var ticksOn: TicksOn0?
    
        public var mirror: Mirror0?
    
        /// Sets the tick length (in px).
        public var tickLength: Double?
    
        /// Sets the tick width (in px).
        public var tickWidth: Double?
    
        /// Sets the tick color.
        public var tickColor: Color?
    
        /// Determines whether or not the tick labels are drawn.
        public var showTickLabels: Bool?
    
        /// Determines whether long tick labels automatically grow the figure margins.
        public var autoMargin: Bool?
    
        /// Determines whether or not spikes (aka droplines) are drawn for this axis. 
        ///
        /// Note: This only takes affect when hovermode = closest
        public var showSpikes: Bool?
    
        /// Sets the spike color. 
        ///
        /// If undefined, will use the series color
        public var spikeColor: Color?
    
        /// Sets the width (in px) of the zero line.
        public var spikeThickness: Double?
    
        /// Sets the dash style of lines. 
        ///
        /// Set to a dash type string (*solid*, *dot*, *dash*, *longdash*, *dashdot*, or *longdashdot*) or a
        /// dash length list in px (eg *5px,10px,2px,2px*).
        public var spikeDash: String?
    
        public var spikeMode: SpikeMode0?
    
        public var spikeSnap: SpikeSnap0?
    
        public var tickFont: Font0?
    
        /// Sets the angle of the tick labels with respect to the horizontal. 
        ///
        /// For example, a `tickangle` of -90 draws the tick labels vertically.
        public var tickAngle: Angle?
    
        /// Sets a tick label prefix.
        public var tickPrefix: String?
    
        public var showTickPrefix: ShowTickPrefix0?
    
        /// Sets a tick label suffix.
        public var tickSuffix: String?
    
        public var showTickSuffix: ShowTickPrefix0?
    
        public var showExponent: ShowTickPrefix0?
    
        public var exponentFormat: ExponentFormat0?
    
        /// If "true", even 4-digit integers are separated
        public var separatethousands: Bool?
    
        /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to those in Python. 
        ///
        /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
        /// And for dates see:
        /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
        /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
        /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
        public var tickFormat: String?
    
        public var tickFormatStops: TickFormatStops0?
    
        /// Sets the hover text formatting rule using d3 formatting mini-languages which are very similar to those in Python. 
        ///
        /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
        /// And for dates see:
        /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
        /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
        /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
        public var hoverFormat: String?
    
        /// Determines whether or not a line bounding this axis is drawn.
        public var showLine: Bool?
    
        /// Sets the axis line color.
        public var lineColor: Color?
    
        /// Sets the width (in px) of the axis line.
        public var lineWidth: Double?
    
        /// Determines whether or not grid lines are drawn. 
        ///
        /// If *true*, the grid lines are drawn at every tick mark.
        public var showGrid: Bool?
    
        /// Sets the color of the grid lines.
        public var gridColor: Color?
    
        /// Sets the width (in px) of the grid lines.
        public var gridWidth: Double?
    
        /// Determines whether or not a line is drawn at along the 0 value of this axis. 
        ///
        /// If *true*, the zero line is drawn on top of the grid lines.
        public var zeroLine: Bool?
    
        /// Sets the line color of the zero line.
        public var zeroLineColor: Color?
    
        /// Sets the width (in px) of the zero line.
        public var zeroLineWidth: Double?
    
        /// Determines whether or not a dividers are drawn between the category levels of this axis. 
        ///
        /// Only has an effect on *multicategory* axes.
        public var showDividers: Bool?
    
        /// Sets the color of the dividers Only has an effect on *multicategory* axes.
        public var dividerColor: Color?
    
        /// Sets the width (in px) of the dividers Only has an effect on *multicategory* axes.
        public var dividerWidth: Double?
    
        public var anchor: Anchor0?
    
        public var side: Side0?
    
        public var overlaying: Anchor0?
    
        public var layer: Layer0?
    
        /// Sets the domain of this axis (in plot fraction).
        public var domain: InfoArray?
    
        /// Sets the position of this axis in the plotting space (in normalized coordinates). 
        ///
        /// Only has an effect if `anchor` is set to *free*.
        public var position: Double?
    
        public var categoryOrder: CategoryOrder0?
    
        /// Sets the order in which categories on this axis appear. 
        ///
        /// Only has an effect if `categoryorder` is set to *array*. Used with `categoryorder`.
        public var categoryArray: [Double]?
    
        /// Controls persistence of user-driven changes in axis `range`, `autorange`, and `title` if in `editable: true` configuration. 
        ///
        /// Defaults to `layout.uirevision`.
        public var uiRevision: Anything?
    
        public var calendar: Calendar0?
    
        /// Sets the source reference on plot.ly for  tickvals .
        public var tickValuesSource: String?
    
        /// Sets the source reference on plot.ly for  ticktext .
        public var tickTextSource: String?
    
        /// Sets the source reference on plot.ly for  categoryarray .
        public var categoryArraySource: String?
    
        public init(visible: Bool? = nil, color: Color? = nil, title: Title0? = nil, type: Rule0? = nil, autoRange: AutoRange0? = nil, rangeMode: RangeMode0? = nil, range: InfoArray? = nil, fixedRange: Bool? = nil, scaleAnchor: ScaleAnchor0? = nil, scaleRatio: Double? = nil, constrain: Constrain0? = nil, constrainToward: ConstrainToward0? = nil, matches: ScaleAnchor0? = nil, tickMode: TickMode0? = nil, numTicks: Int? = nil, tick0: Anything? = nil, dTick: Anything? = nil, tickValues: [Double]? = nil, tickText: [Double]? = nil, ticks: Ticks0? = nil, ticksOn: TicksOn0? = nil, mirror: Mirror0? = nil, tickLength: Double? = nil, tickWidth: Double? = nil, tickColor: Color? = nil, showTickLabels: Bool? = nil, autoMargin: Bool? = nil, showSpikes: Bool? = nil, spikeColor: Color? = nil, spikeThickness: Double? = nil, spikeDash: String? = nil, spikeMode: SpikeMode0? = nil, spikeSnap: SpikeSnap0? = nil, tickFont: Font0? = nil, tickAngle: Angle? = nil, tickPrefix: String? = nil, showTickPrefix: ShowTickPrefix0? = nil, tickSuffix: String? = nil, showTickSuffix: ShowTickPrefix0? = nil, showExponent: ShowTickPrefix0? = nil, exponentFormat: ExponentFormat0? = nil, separatethousands: Bool? = nil, tickFormat: String? = nil, tickFormatStops: TickFormatStops0? = nil, hoverFormat: String? = nil, showLine: Bool? = nil, lineColor: Color? = nil, lineWidth: Double? = nil, showGrid: Bool? = nil, gridColor: Color? = nil, gridWidth: Double? = nil, zeroLine: Bool? = nil, zeroLineColor: Color? = nil, zeroLineWidth: Double? = nil, showDividers: Bool? = nil, dividerColor: Color? = nil, dividerWidth: Double? = nil, anchor: Anchor0? = nil, side: Side0? = nil, overlaying: Anchor0? = nil, layer: Layer0? = nil, domain: InfoArray? = nil, position: Double? = nil, categoryOrder: CategoryOrder0? = nil, categoryArray: [Double]? = nil, uiRevision: Anything? = nil, calendar: Calendar0? = nil, tickValuesSource: String? = nil, tickTextSource: String? = nil, categoryArraySource: String? = nil) {
            self.visible = visible
            self.color = color
            self.title = title
            self.type = type
            self.autoRange = autoRange
            self.rangeMode = rangeMode
            self.range = range
            self.fixedRange = fixedRange
            self.scaleAnchor = scaleAnchor
            self.scaleRatio = scaleRatio
            self.constrain = constrain
            self.constrainToward = constrainToward
            self.matches = matches
            self.tickMode = tickMode
            self.numTicks = numTicks
            self.tick0 = tick0
            self.dTick = dTick
            self.tickValues = tickValues
            self.tickText = tickText
            self.ticks = ticks
            self.ticksOn = ticksOn
            self.mirror = mirror
            self.tickLength = tickLength
            self.tickWidth = tickWidth
            self.tickColor = tickColor
            self.showTickLabels = showTickLabels
            self.autoMargin = autoMargin
            self.showSpikes = showSpikes
            self.spikeColor = spikeColor
            self.spikeThickness = spikeThickness
            self.spikeDash = spikeDash
            self.spikeMode = spikeMode
            self.spikeSnap = spikeSnap
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
            self.hoverFormat = hoverFormat
            self.showLine = showLine
            self.lineColor = lineColor
            self.lineWidth = lineWidth
            self.showGrid = showGrid
            self.gridColor = gridColor
            self.gridWidth = gridWidth
            self.zeroLine = zeroLine
            self.zeroLineColor = zeroLineColor
            self.zeroLineWidth = zeroLineWidth
            self.showDividers = showDividers
            self.dividerColor = dividerColor
            self.dividerWidth = dividerWidth
            self.anchor = anchor
            self.side = side
            self.overlaying = overlaying
            self.layer = layer
            self.domain = domain
            self.position = position
            self.categoryOrder = categoryOrder
            self.categoryArray = categoryArray
            self.uiRevision = uiRevision
            self.calendar = calendar
            self.tickValuesSource = tickValuesSource
            self.tickTextSource = tickTextSource
            self.categoryArraySource = categoryArraySource
        }
    }
    public var yAxis: YAxis?

    /// - layout/layoutAttributes/ternary
    public struct Ternary: Encodable {
        public var domain: Domain0?
    
        /// Set the background color of the subplot
        public var backgroundColor: Color?
    
        /// The number each triplet should sum to, and the maximum range of each axis
        public var sum: Double?
    
        public var aAxis: AAxis0?
    
        public var bAxis: AAxis0?
    
        public var cAxis: AAxis0?
    
        /// Controls persistence of user-driven changes in axis `min` and `title`, if not overridden in the individual axes. 
        ///
        /// Defaults to `layout.uirevision`.
        public var uiRevision: Anything?
    
        public init(domain: Domain0? = nil, backgroundColor: Color? = nil, sum: Double? = nil, aAxis: AAxis0? = nil, bAxis: AAxis0? = nil, cAxis: AAxis0? = nil, uiRevision: Anything? = nil) {
            self.domain = domain
            self.backgroundColor = backgroundColor
            self.sum = sum
            self.aAxis = aAxis
            self.bAxis = bAxis
            self.cAxis = cAxis
            self.uiRevision = uiRevision
        }
    }
    public var ternary: Ternary?

    /// - layout/layoutAttributes/scene
    public struct Scene: Encodable {
        public var backgroundColor: Color?
    
        /// - layout/layoutAttributes/scene/camera
        public struct Camera: Encodable {
            public var up: Up0?
        
            public var center: Up0?
        
            public var eye: Up0?
        
            /// - layout/layoutAttributes/scene/camera/projection
            public struct Projection: Encodable {
                /// Sets the projection type. 
                ///
                /// The projection type could be either *perspective* or *orthographic*. The default is
                /// *perspective*.
                /// - layout/layoutAttributes/scene/camera/projection/type
                public enum Rule: String, Encodable {
                    case perspective
                    case orthographic
                }
                public var type: Rule?
            
                public init(type: Rule? = nil) {
                    self.type = type
                }
            }
            public var projection: Projection?
        
            public init(up: Up0? = nil, center: Up0? = nil, eye: Up0? = nil, projection: Projection? = nil) {
                self.up = up
                self.center = center
                self.eye = eye
                self.projection = projection
            }
        }
        public var camera: Camera?
    
        public var domain: Domain0?
    
        /// If *cube*, this scene's axes are drawn as a cube, regardless of the axes' ranges. 
        ///
        /// If *data*, this scene's axes are drawn in proportion with the axes' ranges. If *manual*, this
        /// scene's axes are drawn in proportion with the input of *aspectratio* (the default behavior if
        /// *aspectratio* is provided). If *auto*, this scene's axes are drawn using the results of *data*
        /// except when one axis is more than four times the size of the two others, where in that case the
        /// results of *cube* are used.
        /// - layout/layoutAttributes/scene/aspectmode
        public enum AspectMode: String, Encodable {
            case auto
            case cube
            case data
            case manual
        }
        public var aspectMode: AspectMode?
    
        /// Sets this scene's axis aspectratio.
        /// - layout/layoutAttributes/scene/aspectratio
        public struct AspectRatio: Encodable {
            public var x: Double?
        
            public var y: Double?
        
            public var z: Double?
        
            public var impliedEdits: ImpliedEdits0?
        
            public init(x: Double? = nil, y: Double? = nil, z: Double? = nil, impliedEdits: ImpliedEdits0? = nil) {
                self.x = x
                self.y = y
                self.z = z
                self.impliedEdits = impliedEdits
            }
        }
        public var aspectRatio: AspectRatio?
    
        public var xAxis: XAxis0?
    
        public var yAxis: XAxis0?
    
        public var zAxis: XAxis0?
    
        /// Determines the mode of drag interactions for this scene.
        /// - layout/layoutAttributes/scene/dragmode
        public enum DragMode: String, Encodable {
            case orbit
            case turntable
            case zoom
            case pan
            case `false` = "false"
        }
        public var dragMode: DragMode?
    
        /// Determines the mode of hover interactions for this scene.
        /// - layout/layoutAttributes/scene/hovermode
        public enum HoverMode: String, Encodable {
            case closest
            case `false` = "false"
        }
        public var hoverMode: HoverMode?
    
        /// Controls persistence of user-driven changes in camera attributes. 
        ///
        /// Defaults to `layout.uirevision`.
        public var uiRevision: Anything?
    
        public var annotations: TickFormatStops0?
    
        public init(backgroundColor: Color? = nil, camera: Camera? = nil, domain: Domain0? = nil, aspectMode: AspectMode? = nil, aspectRatio: AspectRatio? = nil, xAxis: XAxis0? = nil, yAxis: XAxis0? = nil, zAxis: XAxis0? = nil, dragMode: DragMode? = nil, hoverMode: HoverMode? = nil, uiRevision: Anything? = nil, annotations: TickFormatStops0? = nil) {
            self.backgroundColor = backgroundColor
            self.camera = camera
            self.domain = domain
            self.aspectMode = aspectMode
            self.aspectRatio = aspectRatio
            self.xAxis = xAxis
            self.yAxis = yAxis
            self.zAxis = zAxis
            self.dragMode = dragMode
            self.hoverMode = hoverMode
            self.uiRevision = uiRevision
            self.annotations = annotations
        }
    }
    public var scene: Scene?

    /// - layout/layoutAttributes/geo
    public struct Geo: Encodable {
        public var domain: Domain0?
    
        /// Sets the resolution of the base layers. 
        ///
        /// The values have units of km/mm e.g. 110 corresponds to a scale ratio of 1:110,000,000.
        /// - layout/layoutAttributes/geo/resolution
        public enum Resolution: Int, Encodable {
            case oneOver110M = 110
            case oneOver50M = 50
        }
        public var resolution: Resolution?
    
        /// Set the scope of the map.
        /// - layout/layoutAttributes/geo/scope
        public enum Scope: String, Encodable {
            case world
            case usa
            case europe
            case asia
            case africa
            case northAmerica = "north america"
            case southAmerica = "south america"
        }
        public var scope: Scope?
    
        /// - layout/layoutAttributes/geo/projection
        public struct Projection: Encodable {
            /// Sets the projection type.
            /// - layout/layoutAttributes/geo/projection/type
            public enum Rule: String, Encodable {
                case equirectangular
                case mercator
                case orthographic
                case naturalEarth = "natural earth"
                case kavrayskiy7
                case miller
                case robinson
                case eckert4
                case azimuthalEqualArea = "azimuthal equal area"
                case azimuthalEquidistant = "azimuthal equidistant"
                case conicEqualArea = "conic equal area"
                case conicConformal = "conic conformal"
                case conicEquidistant = "conic equidistant"
                case gnomonic
                case stereographic
                case mollweide
                case hammer
                case transverseMercator = "transverse mercator"
                case albersUSA = "albers usa"
                case winkelTripel = "winkel tripel"
                case aitoff
                case sinusoidal
            }
            public var type: Rule?
        
            /// - layout/layoutAttributes/geo/projection/rotation
            public struct Rotation: Encodable {
                /// Rotates the map along parallels (in degrees East). 
                ///
                /// Defaults to the center of the `lonaxis.range` values.
                public var longitude: Double?
            
                /// Rotates the map along meridians (in degrees North).
                public var latitude: Double?
            
                /// Roll the map (in degrees) For example, a roll of *180* makes the map appear upside down.
                public var roll: Double?
            
                public init(longitude: Double? = nil, latitude: Double? = nil, roll: Double? = nil) {
                    self.longitude = longitude
                    self.latitude = latitude
                    self.roll = roll
                }
            }
            public var rotation: Rotation?
        
            /// For conic projection types only. 
            ///
            /// Sets the parallels (tangent, secant) where the cone intersects the sphere.
            public var parallels: InfoArray?
        
            /// Zooms in or out on the map view. 
            ///
            /// A scale of *1* corresponds to the largest zoom level that fits the map's lon and lat ranges. 
            public var scale: Double?
        
            public init(type: Rule? = nil, rotation: Rotation? = nil, parallels: InfoArray? = nil, scale: Double? = nil) {
                self.type = type
                self.rotation = rotation
                self.parallels = parallels
                self.scale = scale
            }
        }
        public var projection: Projection?
    
        public var center: Center0?
    
        /// Sets whether or not the coastlines are drawn.
        public var showCoastLines: Bool?
    
        /// Sets the coastline color.
        public var coastLineColor: Color?
    
        /// Sets the coastline stroke width (in px).
        public var coastLineWidth: Double?
    
        /// Sets whether or not land masses are filled in color.
        public var showLand: Bool?
    
        /// Sets the land mass color.
        public var landColor: Color?
    
        /// Sets whether or not oceans are filled in color.
        public var showOcean: Bool?
    
        /// Sets the ocean color
        public var oceanColor: Color?
    
        /// Sets whether or not lakes are drawn.
        public var showLakes: Bool?
    
        /// Sets the color of the lakes.
        public var lakeColor: Color?
    
        /// Sets whether or not rivers are drawn.
        public var showRivers: Bool?
    
        /// Sets color of the rivers.
        public var riverColor: Color?
    
        /// Sets the stroke width (in px) of the rivers.
        public var riverWidth: Double?
    
        /// Sets whether or not country boundaries are drawn.
        public var showCountries: Bool?
    
        /// Sets line color of the country boundaries.
        public var countryColor: Color?
    
        /// Sets line width (in px) of the country boundaries.
        public var countryWidth: Double?
    
        /// Sets whether or not boundaries of subunits within countries (e.g. 
        ///
        /// states, provinces) are drawn.
        public var showSubUnits: Bool?
    
        /// Sets the color of the subunits boundaries.
        public var subUnitColor: Color?
    
        /// Sets the stroke width (in px) of the subunits boundaries.
        public var subUnitWidth: Double?
    
        /// Sets whether or not a frame is drawn around the map.
        public var showFrame: Bool?
    
        /// Sets the color the frame.
        public var frameColor: Color?
    
        /// Sets the stroke width (in px) of the frame.
        public var frameWidth: Double?
    
        /// Set the background color of the map
        public var backgroundColor: Color?
    
        public var longitudeAxis: LongitudeAxis0?
    
        public var latitudeAxis: LongitudeAxis0?
    
        /// Controls persistence of user-driven changes in the view (projection and center). 
        ///
        /// Defaults to `layout.uirevision`.
        public var uiRevision: Anything?
    
        public init(domain: Domain0? = nil, resolution: Resolution? = nil, scope: Scope? = nil, projection: Projection? = nil, center: Center0? = nil, showCoastLines: Bool? = nil, coastLineColor: Color? = nil, coastLineWidth: Double? = nil, showLand: Bool? = nil, landColor: Color? = nil, showOcean: Bool? = nil, oceanColor: Color? = nil, showLakes: Bool? = nil, lakeColor: Color? = nil, showRivers: Bool? = nil, riverColor: Color? = nil, riverWidth: Double? = nil, showCountries: Bool? = nil, countryColor: Color? = nil, countryWidth: Double? = nil, showSubUnits: Bool? = nil, subUnitColor: Color? = nil, subUnitWidth: Double? = nil, showFrame: Bool? = nil, frameColor: Color? = nil, frameWidth: Double? = nil, backgroundColor: Color? = nil, longitudeAxis: LongitudeAxis0? = nil, latitudeAxis: LongitudeAxis0? = nil, uiRevision: Anything? = nil) {
            self.domain = domain
            self.resolution = resolution
            self.scope = scope
            self.projection = projection
            self.center = center
            self.showCoastLines = showCoastLines
            self.coastLineColor = coastLineColor
            self.coastLineWidth = coastLineWidth
            self.showLand = showLand
            self.landColor = landColor
            self.showOcean = showOcean
            self.oceanColor = oceanColor
            self.showLakes = showLakes
            self.lakeColor = lakeColor
            self.showRivers = showRivers
            self.riverColor = riverColor
            self.riverWidth = riverWidth
            self.showCountries = showCountries
            self.countryColor = countryColor
            self.countryWidth = countryWidth
            self.showSubUnits = showSubUnits
            self.subUnitColor = subUnitColor
            self.subUnitWidth = subUnitWidth
            self.showFrame = showFrame
            self.frameColor = frameColor
            self.frameWidth = frameWidth
            self.backgroundColor = backgroundColor
            self.longitudeAxis = longitudeAxis
            self.latitudeAxis = latitudeAxis
            self.uiRevision = uiRevision
        }
    }
    public var geo: Geo?

    /// - layout/layoutAttributes/mapbox
    public struct Mapbox: Encodable {
        public var domain: Domain0?
    
        /// Sets the mapbox access token to be used for this mapbox map. 
        ///
        /// Alternatively, the mapbox access token can be set in the configuration options under
        /// `mapboxAccessToken`. Note that accessToken are only required when `style` (e.g with values :
        /// basic, streets, outdoors, light, dark, satellite, satellite-streets ) and/or a layout layer
        /// references the Mapbox server.
        public var accessToken: String?
    
        /// Defines the map layers that are rendered by default below the trace layers defined in `data`, which are themselves by default rendered below the layers defined in `layout.mapbox.layers`. 
        ///
        /// These layers can be defined either explicitly as a Mapbox Style object which can contain
        /// multiple layer definitions that load data from any public or private Tile Map Service (TMS or
        /// XYZ) or Web Map Service (WMS) or implicitly by using one of the built-in style objects which use
        /// WMSes which do not require any access tokens, or by using a default Mapbox style or custom
        /// Mapbox style URL, both of which require a Mapbox access token Note that Mapbox access token can
        /// be set in the `accesstoken` attribute or in the `mapboxAccessToken` config option. Mapbox Style
        /// objects are of the form described in the Mapbox GL JS documentation available at
        /// https://docs.mapbox.com/mapbox-gl-js/style-spec The built-in plotly.js styles objects are:
        /// open-street-map, white-bg, carto-positron, carto-darkmatter, stamen-terrain, stamen-toner,
        /// stamen-watercolor The built-in Mapbox styles are: basic, streets, outdoors, light, dark,
        /// satellite, satellite-streets Mapbox style URLs are of the form:
        /// mapbox://mapbox.mapbox-<name>-<version>
        public var style: Anything?
    
        public var center: Center0?
    
        /// Sets the zoom level of the map (mapbox.zoom).
        public var zoom: Double?
    
        /// Sets the bearing angle of the map in degrees counter-clockwise from North (mapbox.bearing).
        public var bearing: Double?
    
        /// Sets the pitch angle of the map (in degrees, where *0* means perpendicular to the surface of the map) (mapbox.pitch).
        public var pitch: Double?
    
        public var layers: TickFormatStops0?
    
        /// Controls persistence of user-driven changes in the view: `center`, `zoom`, `bearing`, `pitch`. 
        ///
        /// Defaults to `layout.uirevision`.
        public var uiRevision: Anything?
    
        public init(domain: Domain0? = nil, accessToken: String? = nil, style: Anything? = nil, center: Center0? = nil, zoom: Double? = nil, bearing: Double? = nil, pitch: Double? = nil, layers: TickFormatStops0? = nil, uiRevision: Anything? = nil) {
            self.domain = domain
            self.accessToken = accessToken
            self.style = style
            self.center = center
            self.zoom = zoom
            self.bearing = bearing
            self.pitch = pitch
            self.layers = layers
            self.uiRevision = uiRevision
        }
    }
    public var mapbox: Mapbox?

    /// - layout/layoutAttributes/polar
    public struct Polar: Encodable {
        public var domain: Domain0?
    
        /// Sets angular span of this polar subplot with two angles (in degrees). 
        ///
        /// Sector are assumed to be spanned in the counterclockwise direction with *0* corresponding to
        /// rightmost limit of the polar subplot.
        public var sector: InfoArray?
    
        /// Sets the fraction of the radius to cut out of the polar subplot.
        public var hole: Double?
    
        /// Set the background color of the subplot
        public var backgroundColor: Color?
    
        /// - layout/layoutAttributes/polar/radialaxis
        public struct RadialAxis: Encodable {
            /// A single toggle to hide the axis while preserving interaction like dragging. 
            ///
            /// Default is true when a cheater plot is present on the axis, otherwise false
            public var visible: Bool?
        
            public var type: Rule1?
        
            public var autoRange: AutoRange0?
        
            /// If *tozero*`, the range extends to 0, regardless of the input data If *nonnegative*, the range is non-negative, regardless of the input data. 
            ///
            /// If *normal*, the range is computed in relation to the extrema of the input data (same behavior
            /// as for cartesian axes).
            /// - layout/layoutAttributes/polar/radialaxis/rangemode
            public enum RangeMode: String, Encodable {
                case toZero = "tozero"
                case nonNegative = "nonnegative"
                case normal
            }
            public var rangeMode: RangeMode?
        
            /// Sets the range of this axis. 
            ///
            /// If the axis `type` is *log*, then you must take the log of your desired range (e.g. to set the
            /// range from 1 to 100, set the range from 0 to 2). If the axis `type` is *date*, it should be date
            /// strings, like date data, though Date objects and unix milliseconds will be accepted and
            /// converted to strings. If the axis `type` is *category*, it should be numbers, using the scale
            /// where each category is assigned a serial number from zero in the order it appears.
            public var range: InfoArray?
        
            public var categoryOrder: CategoryOrder0?
        
            /// Sets the order in which categories on this axis appear. 
            ///
            /// Only has an effect if `categoryorder` is set to *array*. Used with `categoryorder`.
            public var categoryArray: [Double]?
        
            /// Sets the angle (in degrees) from which the radial axis is drawn. 
            ///
            /// Note that by default, radial axis line on the theta=0 line corresponds to a line pointing right
            /// (like what mathematicians prefer). Defaults to the first `polar.sector` angle.
            public var angle: Angle?
        
            public var side: Side1?
        
            public var title: Title1?
        
            /// Sets the hover text formatting rule using d3 formatting mini-languages which are very similar to those in Python. 
            ///
            /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
            /// And for dates see:
            /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
            /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
            /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            public var hoverFormat: String?
        
            /// Controls persistence of user-driven changes in axis `range`, `autorange`, `angle`, and `title` if in `editable: true` configuration. 
            ///
            /// Defaults to `polar<N>.uirevision`.
            public var uiRevision: Anything?
        
            /// Sets default for all colors associated with this axis all at once: line, font, tick, and grid colors. 
            ///
            /// Grid color is lightened by blending this with the plot background Individual pieces can override
            /// this.
            public var color: Color?
        
            /// Determines whether or not a line bounding this axis is drawn.
            public var showLine: Bool?
        
            /// Sets the axis line color.
            public var lineColor: Color?
        
            /// Sets the width (in px) of the axis line.
            public var lineWidth: Double?
        
            /// Determines whether or not grid lines are drawn. 
            ///
            /// If *true*, the grid lines are drawn at every tick mark.
            public var showGrid: Bool?
        
            /// Sets the color of the grid lines.
            public var gridColor: Color?
        
            /// Sets the width (in px) of the grid lines.
            public var gridWidth: Double?
        
            public var tickMode: TickMode0?
        
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
        
            public var ticks: Ticks0?
        
            /// Sets the tick length (in px).
            public var tickLength: Double?
        
            /// Sets the tick width (in px).
            public var tickWidth: Double?
        
            /// Sets the tick color.
            public var tickColor: Color?
        
            /// Determines whether or not the tick labels are drawn.
            public var showTickLabels: Bool?
        
            public var showTickPrefix: ShowTickPrefix0?
        
            /// Sets a tick label prefix.
            public var tickPrefix: String?
        
            public var showTickSuffix: ShowTickPrefix0?
        
            /// Sets a tick label suffix.
            public var tickSuffix: String?
        
            public var showExponent: ShowTickPrefix0?
        
            public var exponentFormat: ExponentFormat0?
        
            /// If "true", even 4-digit integers are separated
            public var separatethousands: Bool?
        
            public var tickFont: Font0?
        
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
        
            public var tickFormatStops: TickFormatStops0?
        
            public var layer: Layer0?
        
            public var calendar: Calendar0?
        
            /// Sets the source reference on plot.ly for  categoryarray .
            public var categoryArraySource: String?
        
            /// Sets the source reference on plot.ly for  tickvals .
            public var tickValuesSource: String?
        
            /// Sets the source reference on plot.ly for  ticktext .
            public var tickTextSource: String?
        
            public init(visible: Bool? = nil, type: Rule1? = nil, autoRange: AutoRange0? = nil, rangeMode: RangeMode? = nil, range: InfoArray? = nil, categoryOrder: CategoryOrder0? = nil, categoryArray: [Double]? = nil, angle: Angle? = nil, side: Side1? = nil, title: Title1? = nil, hoverFormat: String? = nil, uiRevision: Anything? = nil, color: Color? = nil, showLine: Bool? = nil, lineColor: Color? = nil, lineWidth: Double? = nil, showGrid: Bool? = nil, gridColor: Color? = nil, gridWidth: Double? = nil, tickMode: TickMode0? = nil, numTicks: Int? = nil, tick0: Anything? = nil, dTick: Anything? = nil, tickValues: [Double]? = nil, tickText: [Double]? = nil, ticks: Ticks0? = nil, tickLength: Double? = nil, tickWidth: Double? = nil, tickColor: Color? = nil, showTickLabels: Bool? = nil, showTickPrefix: ShowTickPrefix0? = nil, tickPrefix: String? = nil, showTickSuffix: ShowTickPrefix0? = nil, tickSuffix: String? = nil, showExponent: ShowTickPrefix0? = nil, exponentFormat: ExponentFormat0? = nil, separatethousands: Bool? = nil, tickFont: Font0? = nil, tickAngle: Angle? = nil, tickFormat: String? = nil, tickFormatStops: TickFormatStops0? = nil, layer: Layer0? = nil, calendar: Calendar0? = nil, categoryArraySource: String? = nil, tickValuesSource: String? = nil, tickTextSource: String? = nil) {
                self.visible = visible
                self.type = type
                self.autoRange = autoRange
                self.rangeMode = rangeMode
                self.range = range
                self.categoryOrder = categoryOrder
                self.categoryArray = categoryArray
                self.angle = angle
                self.side = side
                self.title = title
                self.hoverFormat = hoverFormat
                self.uiRevision = uiRevision
                self.color = color
                self.showLine = showLine
                self.lineColor = lineColor
                self.lineWidth = lineWidth
                self.showGrid = showGrid
                self.gridColor = gridColor
                self.gridWidth = gridWidth
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
                self.showTickPrefix = showTickPrefix
                self.tickPrefix = tickPrefix
                self.showTickSuffix = showTickSuffix
                self.tickSuffix = tickSuffix
                self.showExponent = showExponent
                self.exponentFormat = exponentFormat
                self.separatethousands = separatethousands
                self.tickFont = tickFont
                self.tickAngle = tickAngle
                self.tickFormat = tickFormat
                self.tickFormatStops = tickFormatStops
                self.layer = layer
                self.calendar = calendar
                self.categoryArraySource = categoryArraySource
                self.tickValuesSource = tickValuesSource
                self.tickTextSource = tickTextSource
            }
        }
        public var radialAxis: RadialAxis?
    
        /// - layout/layoutAttributes/polar/angularaxis
        public struct AngularAxis: Encodable {
            /// A single toggle to hide the axis while preserving interaction like dragging. 
            ///
            /// Default is true when a cheater plot is present on the axis, otherwise false
            public var visible: Bool?
        
            /// Sets the angular axis type. 
            ///
            /// If *linear*, set `thetaunit` to determine the unit in which axis value are shown. If *category,
            /// use `period` to set the number of integer coordinates around polar axis.
            /// - layout/layoutAttributes/polar/angularaxis/type
            public enum Rule: String, Encodable {
                case auto = "-"
                case linear
                case category
            }
            public var type: Rule?
        
            public var categoryOrder: CategoryOrder0?
        
            /// Sets the order in which categories on this axis appear. 
            ///
            /// Only has an effect if `categoryorder` is set to *array*. Used with `categoryorder`.
            public var categoryArray: [Double]?
        
            /// Sets the format unit of the formatted *theta* values. 
            ///
            /// Has an effect only when `angularaxis.type` is *linear*.
            /// - layout/layoutAttributes/polar/angularaxis/thetaunit
            public enum ThetaUnit: String, Encodable {
                case radians
                case degrees
            }
            public var thetaUnit: ThetaUnit?
        
            /// Set the angular period. 
            ///
            /// Has an effect only when `angularaxis.type` is *category*.
            public var period: Double?
        
            /// Sets the direction corresponding to positive angles.
            /// - layout/layoutAttributes/polar/angularaxis/direction
            public enum Direction: String, Encodable {
                case counterClockwise = "counterclockwise"
                case clockwise
            }
            public var direction: Direction?
        
            /// Sets that start position (in degrees) of the angular axis By default, polar subplots with `direction` set to *counterclockwise* get a `rotation` of *0* which corresponds to due East (like what mathematicians prefer). 
            ///
            /// In turn, polar with `direction` set to *clockwise* get a rotation of *90* which corresponds to
            /// due North (like on a compass),
            public var rotation: Angle?
        
            /// Sets the hover text formatting rule using d3 formatting mini-languages which are very similar to those in Python. 
            ///
            /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
            /// And for dates see:
            /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
            /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
            /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            public var hoverFormat: String?
        
            /// Controls persistence of user-driven changes in axis `rotation`. 
            ///
            /// Defaults to `polar<N>.uirevision`.
            public var uiRevision: Anything?
        
            /// Sets default for all colors associated with this axis all at once: line, font, tick, and grid colors. 
            ///
            /// Grid color is lightened by blending this with the plot background Individual pieces can override
            /// this.
            public var color: Color?
        
            /// Determines whether or not a line bounding this axis is drawn.
            public var showLine: Bool?
        
            /// Sets the axis line color.
            public var lineColor: Color?
        
            /// Sets the width (in px) of the axis line.
            public var lineWidth: Double?
        
            /// Determines whether or not grid lines are drawn. 
            ///
            /// If *true*, the grid lines are drawn at every tick mark.
            public var showGrid: Bool?
        
            /// Sets the color of the grid lines.
            public var gridColor: Color?
        
            /// Sets the width (in px) of the grid lines.
            public var gridWidth: Double?
        
            public var tickMode: TickMode0?
        
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
        
            public var ticks: Ticks0?
        
            /// Sets the tick length (in px).
            public var tickLength: Double?
        
            /// Sets the tick width (in px).
            public var tickWidth: Double?
        
            /// Sets the tick color.
            public var tickColor: Color?
        
            /// Determines whether or not the tick labels are drawn.
            public var showTickLabels: Bool?
        
            public var showTickPrefix: ShowTickPrefix0?
        
            /// Sets a tick label prefix.
            public var tickPrefix: String?
        
            public var showTickSuffix: ShowTickPrefix0?
        
            /// Sets a tick label suffix.
            public var tickSuffix: String?
        
            public var showExponent: ShowTickPrefix0?
        
            public var exponentFormat: ExponentFormat0?
        
            /// If "true", even 4-digit integers are separated
            public var separatethousands: Bool?
        
            public var tickFont: Font0?
        
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
        
            public var tickFormatStops: TickFormatStops0?
        
            public var layer: Layer0?
        
            /// Sets the source reference on plot.ly for  categoryarray .
            public var categoryArraySource: String?
        
            /// Sets the source reference on plot.ly for  tickvals .
            public var tickValuesSource: String?
        
            /// Sets the source reference on plot.ly for  ticktext .
            public var tickTextSource: String?
        
            public init(visible: Bool? = nil, type: Rule? = nil, categoryOrder: CategoryOrder0? = nil, categoryArray: [Double]? = nil, thetaUnit: ThetaUnit? = nil, period: Double? = nil, direction: Direction? = nil, rotation: Angle? = nil, hoverFormat: String? = nil, uiRevision: Anything? = nil, color: Color? = nil, showLine: Bool? = nil, lineColor: Color? = nil, lineWidth: Double? = nil, showGrid: Bool? = nil, gridColor: Color? = nil, gridWidth: Double? = nil, tickMode: TickMode0? = nil, numTicks: Int? = nil, tick0: Anything? = nil, dTick: Anything? = nil, tickValues: [Double]? = nil, tickText: [Double]? = nil, ticks: Ticks0? = nil, tickLength: Double? = nil, tickWidth: Double? = nil, tickColor: Color? = nil, showTickLabels: Bool? = nil, showTickPrefix: ShowTickPrefix0? = nil, tickPrefix: String? = nil, showTickSuffix: ShowTickPrefix0? = nil, tickSuffix: String? = nil, showExponent: ShowTickPrefix0? = nil, exponentFormat: ExponentFormat0? = nil, separatethousands: Bool? = nil, tickFont: Font0? = nil, tickAngle: Angle? = nil, tickFormat: String? = nil, tickFormatStops: TickFormatStops0? = nil, layer: Layer0? = nil, categoryArraySource: String? = nil, tickValuesSource: String? = nil, tickTextSource: String? = nil) {
                self.visible = visible
                self.type = type
                self.categoryOrder = categoryOrder
                self.categoryArray = categoryArray
                self.thetaUnit = thetaUnit
                self.period = period
                self.direction = direction
                self.rotation = rotation
                self.hoverFormat = hoverFormat
                self.uiRevision = uiRevision
                self.color = color
                self.showLine = showLine
                self.lineColor = lineColor
                self.lineWidth = lineWidth
                self.showGrid = showGrid
                self.gridColor = gridColor
                self.gridWidth = gridWidth
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
                self.showTickPrefix = showTickPrefix
                self.tickPrefix = tickPrefix
                self.showTickSuffix = showTickSuffix
                self.tickSuffix = tickSuffix
                self.showExponent = showExponent
                self.exponentFormat = exponentFormat
                self.separatethousands = separatethousands
                self.tickFont = tickFont
                self.tickAngle = tickAngle
                self.tickFormat = tickFormat
                self.tickFormatStops = tickFormatStops
                self.layer = layer
                self.categoryArraySource = categoryArraySource
                self.tickValuesSource = tickValuesSource
                self.tickTextSource = tickTextSource
            }
        }
        public var angularAxis: AngularAxis?
    
        /// Determines if the radial axis grid lines and angular axis line are drawn as *circular* sectors or as *linear* (polygon) sectors. 
        ///
        /// Has an effect only when the angular axis has `type` *category*. Note that `radialaxis.angle` is
        /// snapped to the angle of the closest vertex when `gridshape` is *circular* (so that radial axis
        /// scale is the same as the data scale).
        /// - layout/layoutAttributes/polar/gridshape
        public enum GridShape: String, Encodable {
            case circular
            case linear
        }
        public var gridShape: GridShape?
    
        /// Controls persistence of user-driven changes in axis attributes, if not overridden in the individual axes. 
        ///
        /// Defaults to `layout.uirevision`.
        public var uiRevision: Anything?
    
        public init(domain: Domain0? = nil, sector: InfoArray? = nil, hole: Double? = nil, backgroundColor: Color? = nil, radialAxis: RadialAxis? = nil, angularAxis: AngularAxis? = nil, gridShape: GridShape? = nil, uiRevision: Anything? = nil) {
            self.domain = domain
            self.sector = sector
            self.hole = hole
            self.backgroundColor = backgroundColor
            self.radialAxis = radialAxis
            self.angularAxis = angularAxis
            self.gridShape = gridShape
            self.uiRevision = uiRevision
        }
    }
    public var polar: Polar?

    /// - layout/layoutAttributes/radialaxis
    public struct RadialAxis: Encodable {
        /// Legacy polar charts are deprecated! Please switch to *polar* subplots. 
        ///
        /// Defines the start and end point of this radial axis.
        public var range: InfoArray?
    
        /// Polar chart subplots are not supported yet. 
        ///
        /// This key has currently no effect.
        public var domain: InfoArray?
    
        /// Legacy polar charts are deprecated! Please switch to *polar* subplots. 
        ///
        /// Sets the orientation (an angle with respect to the origin) of the radial axis.
        public var orientation: Double?
    
        /// Legacy polar charts are deprecated! Please switch to *polar* subplots. 
        ///
        /// Determines whether or not the line bounding this radial axis will be shown on the figure.
        public var showLine: Bool?
    
        /// Legacy polar charts are deprecated! Please switch to *polar* subplots. 
        ///
        /// Determines whether or not the radial axis ticks will feature tick labels.
        public var showTickLabels: Bool?
    
        public var tickOrientation: TickOrientation0?
    
        /// Legacy polar charts are deprecated! Please switch to *polar* subplots. 
        ///
        /// Sets the length of the tick lines on this radial axis.
        public var tickLength: Double?
    
        /// Legacy polar charts are deprecated! Please switch to *polar* subplots. 
        ///
        /// Sets the color of the tick lines on this radial axis.
        public var tickColor: Color?
    
        /// Legacy polar charts are deprecated! Please switch to *polar* subplots. 
        ///
        /// Sets the length of the tick lines on this radial axis.
        public var tickSuffix: String?
    
        /// Legacy polar charts are deprecated! Please switch to *polar* subplots.
        public var endPadding: Double?
    
        /// Legacy polar charts are deprecated! Please switch to *polar* subplots. 
        ///
        /// Determines whether or not this axis will be visible.
        public var visible: Bool?
    
        public init(range: InfoArray? = nil, domain: InfoArray? = nil, orientation: Double? = nil, showLine: Bool? = nil, showTickLabels: Bool? = nil, tickOrientation: TickOrientation0? = nil, tickLength: Double? = nil, tickColor: Color? = nil, tickSuffix: String? = nil, endPadding: Double? = nil, visible: Bool? = nil) {
            self.range = range
            self.domain = domain
            self.orientation = orientation
            self.showLine = showLine
            self.showTickLabels = showTickLabels
            self.tickOrientation = tickOrientation
            self.tickLength = tickLength
            self.tickColor = tickColor
            self.tickSuffix = tickSuffix
            self.endPadding = endPadding
            self.visible = visible
        }
    }
    public var radialAxis: RadialAxis?

    /// - layout/layoutAttributes/angularaxis
    public struct AngularAxis: Encodable {
        /// Legacy polar charts are deprecated! Please switch to *polar* subplots. 
        ///
        /// Defines the start and end point of this angular axis.
        public var range: InfoArray?
    
        /// Polar chart subplots are not supported yet. 
        ///
        /// This key has currently no effect.
        public var domain: InfoArray?
    
        /// Legacy polar charts are deprecated! Please switch to *polar* subplots. 
        ///
        /// Determines whether or not the line bounding this angular axis will be shown on the figure.
        public var showLine: Bool?
    
        /// Legacy polar charts are deprecated! Please switch to *polar* subplots. 
        ///
        /// Determines whether or not the angular axis ticks will feature tick labels.
        public var showTickLabels: Bool?
    
        public var tickOrientation: TickOrientation0?
    
        /// Legacy polar charts are deprecated! Please switch to *polar* subplots. 
        ///
        /// Sets the length of the tick lines on this angular axis.
        public var tickLength: Double?
    
        /// Legacy polar charts are deprecated! Please switch to *polar* subplots. 
        ///
        /// Sets the color of the tick lines on this angular axis.
        public var tickColor: Color?
    
        /// Legacy polar charts are deprecated! Please switch to *polar* subplots. 
        ///
        /// Sets the length of the tick lines on this angular axis.
        public var tickSuffix: String?
    
        /// Legacy polar charts are deprecated! Please switch to *polar* subplots.
        public var endPadding: Double?
    
        /// Legacy polar charts are deprecated! Please switch to *polar* subplots. 
        ///
        /// Determines whether or not this axis will be visible.
        public var visible: Bool?
    
        public init(range: InfoArray? = nil, domain: InfoArray? = nil, showLine: Bool? = nil, showTickLabels: Bool? = nil, tickOrientation: TickOrientation0? = nil, tickLength: Double? = nil, tickColor: Color? = nil, tickSuffix: String? = nil, endPadding: Double? = nil, visible: Bool? = nil) {
            self.range = range
            self.domain = domain
            self.showLine = showLine
            self.showTickLabels = showTickLabels
            self.tickOrientation = tickOrientation
            self.tickLength = tickLength
            self.tickColor = tickColor
            self.tickSuffix = tickSuffix
            self.endPadding = endPadding
            self.visible = visible
        }
    }
    public var angularAxis: AngularAxis?

    public var direction: Side1?

    /// Legacy polar charts are deprecated! Please switch to *polar* subplots. 
    ///
    /// Rotates the entire polar by the given angle in legacy polar charts.
    public var orientation: Angle?

    /// - layout/layoutAttributes/legend
    public struct Legend: Encodable {
        /// Sets the legend background color.
        public var backgroundColor: Color?
    
        /// Sets the color of the border enclosing the legend.
        public var borderColor: Color?
    
        /// Sets the width (in px) of the border enclosing the legend.
        public var borderWidth: Double?
    
        public var font: Font0?
    
        public var orientation: Orientation0?
    
        /// Determines the order at which the legend items are displayed. 
        ///
        /// If *normal*, the items are displayed top-to-bottom in the same order as the input data. If
        /// *reversed*, the items are displayed in the opposite order as *normal*. If *grouped*, the items
        /// are displayed in groups (when a trace `legendgroup` is provided). if *grouped+reversed*, the
        /// items are displayed in the opposite order as *grouped*.
        /// - layout/layoutAttributes/legend/traceorder
        public struct TraceOrder: OptionSet, Encodable {
            public let rawValue: Int
        
            public static let reversed = TraceOrder(rawValue: 1 << 0)
            public static let grouped = TraceOrder(rawValue: 1 << 1)
            public static let normal = TraceOrder(rawValue: 1 << 2)
        
            public init(rawValue: Int) { self.rawValue = rawValue }
        
            public func encode(to encoder: Encoder) throws {
                var options = [String]()
                if (self.rawValue & 1 << 0) != 0 { options += ["reversed"] }
                if (self.rawValue & 1 << 1) != 0 { options += ["grouped"] }
                if (self.rawValue & 1 << 2) != 0 { options += ["normal"] }
                var container = encoder.singleValueContainer()
                try container.encode(options.joined(separator: "+"))
            }
        }
        public var traceOrder: TraceOrder?
    
        /// Sets the amount of vertical space (in px) between legend groups.
        public var traceGroupGap: Double?
    
        /// Determines if the legend items symbols scale with their corresponding *trace* attributes or remain *constant* independent of the symbol size on the graph.
        /// - layout/layoutAttributes/legend/itemsizing
        public enum ItemSizing: String, Encodable {
            case trace
            case constant
        }
        public var itemSizing: ItemSizing?
    
        public var itemClick: ItemClick0?
    
        public var itemDoubleClick: ItemClick0?
    
        /// Sets the x position (in normalized coordinates) of the legend. 
        ///
        /// Defaults to *1.02* for vertical legends and defaults to *0* for horizontal legends.
        public var x: Double?
    
        public var xAnchor: XAnchor0?
    
        /// Sets the y position (in normalized coordinates) of the legend. 
        ///
        /// Defaults to *1* for vertical legends, defaults to *-0.1* for horizontal legends on graphs w/o
        /// range sliders and defaults to *1.1* for horizontal legends on graph with one or multiple range
        /// sliders.
        public var y: Double?
    
        public var yAnchor: YAnchor0?
    
        /// Controls persistence of legend-driven changes in trace and pie label visibility. 
        ///
        /// Defaults to `layout.uirevision`.
        public var uiRevision: Anything?
    
        public var verticalAlign: VerticalAlign0?
    
        public init(backgroundColor: Color? = nil, borderColor: Color? = nil, borderWidth: Double? = nil, font: Font0? = nil, orientation: Orientation0? = nil, traceOrder: TraceOrder? = nil, traceGroupGap: Double? = nil, itemSizing: ItemSizing? = nil, itemClick: ItemClick0? = nil, itemDoubleClick: ItemClick0? = nil, x: Double? = nil, xAnchor: XAnchor0? = nil, y: Double? = nil, yAnchor: YAnchor0? = nil, uiRevision: Anything? = nil, verticalAlign: VerticalAlign0? = nil) {
            self.backgroundColor = backgroundColor
            self.borderColor = borderColor
            self.borderWidth = borderWidth
            self.font = font
            self.orientation = orientation
            self.traceOrder = traceOrder
            self.traceGroupGap = traceGroupGap
            self.itemSizing = itemSizing
            self.itemClick = itemClick
            self.itemDoubleClick = itemDoubleClick
            self.x = x
            self.xAnchor = xAnchor
            self.y = y
            self.yAnchor = yAnchor
            self.uiRevision = uiRevision
            self.verticalAlign = verticalAlign
        }
    }
    public var legend: Legend?

    public var annotations: TickFormatStops0?

    public var shapes: TickFormatStops0?

    public var images: TickFormatStops0?

    public var updateMenus: TickFormatStops0?

    public var sliders: TickFormatStops0?

    /// - layout/layoutAttributes/colorscale
    public struct ColorMap: Encodable {
        /// Sets the default sequential colorscale for positive values. 
        ///
        /// Note that `autocolorscale` must be true for this attribute to work.
        public var sequential: ColorScale?
    
        /// Sets the default sequential colorscale for negative values. 
        ///
        /// Note that `autocolorscale` must be true for this attribute to work.
        public var sequentialMinus: ColorScale?
    
        /// Sets the default diverging colorscale. 
        ///
        /// Note that `autocolorscale` must be true for this attribute to work.
        public var diverging: ColorScale?
    
        public init(sequential: ColorScale? = nil, sequentialMinus: ColorScale? = nil, diverging: ColorScale? = nil) {
            self.sequential = sequential
            self.sequentialMinus = sequentialMinus
            self.diverging = diverging
        }
    }
    public var colorScale: ColorMap?

    /// - layout/layoutAttributes/coloraxis
    public struct ColorAxis: Encodable {
        /// Determines whether or not the color domain is computed with respect to the input data (here corresponding trace color array(s)) or the bounds set in `cmin` and `cmax`  Defaults to `false` when `cmin` and `cmax` are set by the user.
        public var cAuto: Bool?
    
        /// Sets the lower bound of the color domain. 
        ///
        /// Value should have the same units as corresponding trace color array(s) and if set, `cmax` must
        /// be set as well.
        public var cMin: Double?
    
        /// Sets the upper bound of the color domain. 
        ///
        /// Value should have the same units as corresponding trace color array(s) and if set, `cmin` must
        /// be set as well.
        public var cMax: Double?
    
        /// Sets the mid-point of the color domain by scaling `cmin` and/or `cmax` to be equidistant to this point. 
        ///
        /// Value should have the same units as corresponding trace color array(s). Has no effect when
        /// `cauto` is `false`.
        public var cMiddle: Double?
    
        /// Sets the colorscale. 
        ///
        /// The colorscale must be an array containing arrays mapping a normalized value to an rgb, rgba,
        /// hex, hsl, hsv, or named color string. At minimum, a mapping for the lowest (0) and highest (1)
        /// values are required. For example, `[[0, 'rgb(0,0,255)'], [1, 'rgb(255,0,0)']]`. To control the
        /// bounds of the colorscale in color space, use`cmin` and `cmax`. Alternatively, `colorscale` may
        /// be a palette name string of the following list:
        /// Greys,YlGnBu,Greens,YlOrRd,Bluered,RdBu,Reds,Blues,Picnic,Rainbow,Portland,Jet,Hot,Blackbody,Earth,Electric,Viridis,Cividis.
        public var colorScale: ColorScale?
    
        /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `colorscale`. 
        ///
        /// In case `colorscale` is unspecified or `autocolorscale` is true, the default palette will be
        /// chosen according to whether numbers in the `color` array are all positive, all negative or
        /// mixed.
        public var autoColorScale: Bool?
    
        /// Reverses the color mapping if true. 
        ///
        /// If true, `cmin` will correspond to the last color in the array and `cmax` will correspond to the
        /// first color.
        public var reverseScale: Bool?
    
        /// Determines whether or not a colorbar is displayed for this trace.
        public var showScale: Bool?
    
        public var colorBar: ColorBar0?
    
        public init(cAuto: Bool? = nil, cMin: Double? = nil, cMax: Double? = nil, cMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: ColorBar0? = nil) {
            self.cAuto = cAuto
            self.cMin = cMin
            self.cMax = cMax
            self.cMiddle = cMiddle
            self.colorScale = colorScale
            self.autoColorScale = autoColorScale
            self.reverseScale = reverseScale
            self.showScale = showScale
            self.colorBar = colorBar
        }
    }
    public var colorAxis: ColorAxis?

    /// Sets the source reference on plot.ly for  meta .
    public var metaSource: String?

    public init(font: Font0? = nil, title: Title? = nil, autoSize: Bool? = nil, width: Double? = nil, height: Double? = nil, margin: Margin? = nil, paperBackgroundColor: Color? = nil, plotBackgroundColor: Color? = nil, separators: String? = nil, hideSources: Bool? = nil, showLegend: Bool? = nil, colorWay: ColorList? = nil, dataRevision: Anything? = nil, uiRevision: Anything? = nil, editRevision: Anything? = nil, selectionRevision: Anything? = nil, template: Anything? = nil, modeBar: ModeBar? = nil, meta: Anything? = nil, transition: Transition? = nil, clickMode: ClickMode? = nil, dragMode: DragMode? = nil, hoverMode: HoverMode? = nil, hoverDistance: Int? = nil, spikeDistance: Int? = nil, hoverLabel: HoverLabel? = nil, selectDirection: SelectDirection? = nil, grid: Grid? = nil, calendar: Calendar0? = nil, xAxis: XAxis? = nil, yAxis: YAxis? = nil, ternary: Ternary? = nil, scene: Scene? = nil, geo: Geo? = nil, mapbox: Mapbox? = nil, polar: Polar? = nil, radialAxis: RadialAxis? = nil, angularAxis: AngularAxis? = nil, direction: Side1? = nil, orientation: Angle? = nil, legend: Legend? = nil, annotations: TickFormatStops0? = nil, shapes: TickFormatStops0? = nil, images: TickFormatStops0? = nil, updateMenus: TickFormatStops0? = nil, sliders: TickFormatStops0? = nil, colorScale: ColorMap? = nil, colorAxis: ColorAxis? = nil, metaSource: String? = nil) {
        self.font = font
        self.title = title
        self.autoSize = autoSize
        self.width = width
        self.height = height
        self.margin = margin
        self.paperBackgroundColor = paperBackgroundColor
        self.plotBackgroundColor = plotBackgroundColor
        self.separators = separators
        self.hideSources = hideSources
        self.showLegend = showLegend
        self.colorWay = colorWay
        self.dataRevision = dataRevision
        self.uiRevision = uiRevision
        self.editRevision = editRevision
        self.selectionRevision = selectionRevision
        self.template = template
        self.modeBar = modeBar
        self.meta = meta
        self.transition = transition
        self.clickMode = clickMode
        self.dragMode = dragMode
        self.hoverMode = hoverMode
        self.hoverDistance = hoverDistance
        self.spikeDistance = spikeDistance
        self.hoverLabel = hoverLabel
        self.selectDirection = selectDirection
        self.grid = grid
        self.calendar = calendar
        self.xAxis = xAxis
        self.yAxis = yAxis
        self.ternary = ternary
        self.scene = scene
        self.geo = geo
        self.mapbox = mapbox
        self.polar = polar
        self.radialAxis = radialAxis
        self.angularAxis = angularAxis
        self.direction = direction
        self.orientation = orientation
        self.legend = legend
        self.annotations = annotations
        self.shapes = shapes
        self.images = images
        self.updateMenus = updateMenus
        self.sliders = sliders
        self.colorScale = colorScale
        self.colorAxis = colorAxis
        self.metaSource = metaSource
    }
}