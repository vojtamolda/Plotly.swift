/// Specification of element arrangement on a `Figure` that applies to all traces.
/// 
/// - SeeAlso:
///   Documentation for 
///   [Python](https://plot.ly/python/reference/#layout), 
///   [JavaScript](https://plot.ly/javascript/reference/#layout) or 
///   [R](https://plot.ly/r/reference/#layout)
public struct Layout: Encodable {
    
    // MARK: FunnelArea

    /// Sets the default funnelarea slice colors.
    /// 
    /// Defaults to the main `colorway` used for trace colors. If you specify a new list here it can
    /// still be extended with lighter and darker colors, see `extendfunnelareacolors`.
    public var funnelAreaColorWay: ColorList? = nil

    /// If `true`, the funnelarea slice colors (whether given by `funnelareacolorway` or inherited from
    /// `colorway`) will be extended to three times its original length by first repeating every color
    /// 20% lighter then each color 20% darker.
    /// 
    /// This is intended to reduce the likelihood of reusing the same color when you have many slices,
    /// but you can set `false` to disable. Colors provided in the trace, using `marker.colors`, are
    /// never extended.
    public var extendFunnelAreaColors: Bool? = nil

    
    // MARK: Treemap

    /// Sets the default treemap slice colors.
    /// 
    /// Defaults to the main `colorway` used for trace colors. If you specify a new list here it can
    /// still be extended with lighter and darker colors, see `extendtreemapcolors`.
    public var treemapColorWay: ColorList? = nil

    /// If `true`, the treemap slice colors (whether given by `treemapcolorway` or inherited from
    /// `colorway`) will be extended to three times its original length by first repeating every color
    /// 20% lighter then each color 20% darker.
    /// 
    /// This is intended to reduce the likelihood of reusing the same color when you have many slices,
    /// but you can set `false` to disable. Colors provided in the trace, using `marker.colors`, are
    /// never extended.
    public var extendTreemapColors: Bool? = nil

    
    // MARK: Sunburst

    /// Sets the default sunburst slice colors.
    /// 
    /// Defaults to the main `colorway` used for trace colors. If you specify a new list here it can
    /// still be extended with lighter and darker colors, see `extendsunburstcolors`.
    public var sunburstColorWay: ColorList? = nil

    /// If `true`, the sunburst slice colors (whether given by `sunburstcolorway` or inherited from
    /// `colorway`) will be extended to three times its original length by first repeating every color
    /// 20% lighter then each color 20% darker.
    /// 
    /// This is intended to reduce the likelihood of reusing the same color when you have many slices,
    /// but you can set `false` to disable. Colors provided in the trace, using `marker.colors`, are
    /// never extended.
    public var extendSunburstColors: Bool? = nil

    
    // MARK: Pie

    /// hiddenlabels is the funnelarea & pie chart analog of visible:'legendonly' but it can contain
    /// many labels, and can simultaneously hide slices from several pies/funnelarea charts
    public var hiddenLabels: [Double]? = nil

    /// Sets the default pie slice colors.
    /// 
    /// Defaults to the main `colorway` used for trace colors. If you specify a new list here it can
    /// still be extended with lighter and darker colors, see `extendpiecolors`.
    public var pieColorWay: ColorList? = nil

    /// If `true`, the pie slice colors (whether given by `piecolorway` or inherited from `colorway`)
    /// will be extended to three times its original length by first repeating every color 20% lighter
    /// then each color 20% darker.
    /// 
    /// This is intended to reduce the likelihood of reusing the same color when you have many slices,
    /// but you can set `false` to disable. Colors provided in the trace, using `marker.colors`, are
    /// never extended.
    public var extendPieColors: Bool? = nil

    
    // MARK: Waterfall

    /// Determines how bars at the same location coordinate are displayed on the graph.
    /// 
    /// With *group*, the bars are plotted next to one another centered around the shared location. With
    /// *overlay*, the bars are plotted over one another, you might need to an *opacity* to see multiple
    /// bars.
    public enum WaterfallMode: String, Encodable {
        case group
        case overlay
    }
    /// Determines how bars at the same location coordinate are displayed on the graph.
    /// 
    /// With *group*, the bars are plotted next to one another centered around the shared location. With
    /// *overlay*, the bars are plotted over one another, you might need to an *opacity* to see multiple
    /// bars.
    public var waterfallMode: WaterfallMode? = nil

    /// Sets the gap (in plot fraction) between bars of adjacent location coordinates.
    public var waterfallGap: Double? = nil

    /// Sets the gap (in plot fraction) between bars of the same location coordinate.
    public var waterfallGroupGap: Double? = nil

    
    // MARK: Funnel

    /// Determines how bars at the same location coordinate are displayed on the graph.
    /// 
    /// With *stack*, the bars are stacked on top of one another With *group*, the bars are plotted next
    /// to one another centered around the shared location. With *overlay*, the bars are plotted over
    /// one another, you might need to an *opacity* to see multiple bars.
    public enum FunnelMode: String, Encodable {
        case stack
        case group
        case overlay
    }
    /// Determines how bars at the same location coordinate are displayed on the graph.
    /// 
    /// With *stack*, the bars are stacked on top of one another With *group*, the bars are plotted next
    /// to one another centered around the shared location. With *overlay*, the bars are plotted over
    /// one another, you might need to an *opacity* to see multiple bars.
    public var funnelMode: FunnelMode? = nil

    /// Sets the gap (in plot fraction) between bars of adjacent location coordinates.
    public var funnelGap: Double? = nil

    /// Sets the gap (in plot fraction) between bars of the same location coordinate.
    public var funnelGroupGap: Double? = nil

    
    // MARK: Violin

    /// Determines how violins at the same location coordinate are displayed on the graph.
    /// 
    /// If *group*, the violins are plotted next to one another centered around the shared location. If
    /// *overlay*, the violins are plotted over one another, you might need to set *opacity* to see them
    /// multiple violins. Has no effect on traces that have *width* set.
    public enum ViolinMode: String, Encodable {
        case group
        case overlay
    }
    /// Determines how violins at the same location coordinate are displayed on the graph.
    /// 
    /// If *group*, the violins are plotted next to one another centered around the shared location. If
    /// *overlay*, the violins are plotted over one another, you might need to set *opacity* to see them
    /// multiple violins. Has no effect on traces that have *width* set.
    public var violinMode: ViolinMode? = nil

    /// Sets the gap (in plot fraction) between violins of adjacent location coordinates.
    /// 
    /// Has no effect on traces that have *width* set.
    public var violinGap: Double? = nil

    /// Sets the gap (in plot fraction) between violins of the same location coordinate.
    /// 
    /// Has no effect on traces that have *width* set.
    public var violinGroupGap: Double? = nil

    
    // MARK: Box and Candlestick

    /// Determines how boxes at the same location coordinate are displayed on the graph.
    /// 
    /// If *group*, the boxes are plotted next to one another centered around the shared location. If
    /// *overlay*, the boxes are plotted over one another, you might need to set *opacity* to see them
    /// multiple boxes. Has no effect on traces that have *width* set.
    public enum BoxMode: String, Encodable {
        case group
        case overlay
    }
    /// Determines how boxes at the same location coordinate are displayed on the graph.
    /// 
    /// If *group*, the boxes are plotted next to one another centered around the shared location. If
    /// *overlay*, the boxes are plotted over one another, you might need to set *opacity* to see them
    /// multiple boxes. Has no effect on traces that have *width* set.
    public var boxMode: BoxMode? = nil

    /// Sets the gap (in plot fraction) between boxes of adjacent location coordinates.
    /// 
    /// Has no effect on traces that have *width* set.
    public var boxGap: Double? = nil

    /// Sets the gap (in plot fraction) between boxes of the same location coordinate.
    /// 
    /// Has no effect on traces that have *width* set.
    public var boxGroupGap: Double? = nil

    
    // MARK: Bar, BarPolar and Histogram

    /// Determines how bars at the same location coordinate are displayed on the graph.
    /// 
    /// With *stack*, the bars are stacked on top of one another With *relative*, the bars are stacked
    /// on top of one another, with negative values below the axis, positive values above With *group*,
    /// the bars are plotted next to one another centered around the shared location. With *overlay*,
    /// the bars are plotted over one another, you might need to an *opacity* to see multiple bars.
    public enum BarMode: String, Encodable {
        case stack
        case group
        case overlay
        case relative
    }
    /// Determines how bars at the same location coordinate are displayed on the graph.
    /// 
    /// With *stack*, the bars are stacked on top of one another With *relative*, the bars are stacked
    /// on top of one another, with negative values below the axis, positive values above With *group*,
    /// the bars are plotted next to one another centered around the shared location. With *overlay*,
    /// the bars are plotted over one another, you might need to an *opacity* to see multiple bars.
    public var barMode: BarMode? = nil

    /// Sets the normalization for bar traces on the graph.
    /// 
    /// With *fraction*, the value of each bar is divided by the sum of all values at that location
    /// coordinate. *percent* is the same but multiplied by 100 to show percentages.
    public enum BarNormalization: String, Encodable {
        case off = ""
        case fraction
        case percent
    }
    /// Sets the normalization for bar traces on the graph.
    /// 
    /// With *fraction*, the value of each bar is divided by the sum of all values at that location
    /// coordinate. *percent* is the same but multiplied by 100 to show percentages.
    public var barNormalization: BarNormalization? = nil

    /// Sets the gap (in plot fraction) between bars of adjacent location coordinates.
    public var barGap: Double? = nil

    /// Sets the gap (in plot fraction) between bars of the same location coordinate.
    public var barGroupGap: Double? = nil

    
    // MARK: - Design, Look and Feel

    /// Sets the global font.
    /// 
    /// Note that fonts used in traces and other layout components inherit from the global font.
    public var font: Shared.Font? = nil

    public struct Title: Encodable {
        /// Sets the plot's title.
        /// 
        /// Note that before the existence of `title.text`, the title's contents used to be defined as the
        /// `title` attribute itself. This behavior has been deprecated.
        public var text: String? = nil
    
        /// Sets the title font.
        /// 
        /// Note that the title's font used to be customized by the now deprecated `titlefont` attribute.
        public var font: Shared.Font? = nil
    
        /// Sets the container `x` refers to.
        /// 
        /// *container* spans the entire `width` of the plot. *paper* refers to the width of the plotting
        /// area only.
        public enum XAxisReference: String, Encodable {
            case container
            case paper
        }
        /// Sets the container `x` refers to.
        /// 
        /// *container* spans the entire `width` of the plot. *paper* refers to the width of the plotting
        /// area only.
        public var xReference: XAxisReference? = nil
    
        /// Sets the container `y` refers to.
        /// 
        /// *container* spans the entire `height` of the plot. *paper* refers to the height of the plotting
        /// area only.
        public enum YAxisReference: String, Encodable {
            case container
            case paper
        }
        /// Sets the container `y` refers to.
        /// 
        /// *container* spans the entire `height` of the plot. *paper* refers to the height of the plotting
        /// area only.
        public var yReference: YAxisReference? = nil
    
        /// Sets the x position with respect to `xref` in normalized coordinates from *0* (left) to *1*
        /// (right).
        public var x: Double? = nil
    
        /// Sets the y position with respect to `yref` in normalized coordinates from *0* (bottom) to *1*
        /// (top).
        /// 
        /// *auto* places the baseline of the title onto the vertical center of the top margin.
        public var y: Double? = nil
    
        /// Sets the title's horizontal alignment with respect to its x position.
        /// 
        /// *left* means that the title starts at x, *right* means that the title ends at x and *center*
        /// means that the title's center is at x. *auto* divides `xref` by three and calculates the
        /// `xanchor` value automatically based on the value of `x`.
        public var xAnchor: Shared.XAutoAnchor? = nil
    
        /// Sets the title's vertical alignment with respect to its y position.
        /// 
        /// *top* means that the title's cap line is at y, *bottom* means that the title's baseline is at y
        /// and *middle* means that the title's midline is at y. *auto* divides `yref` by three and
        /// calculates the `yanchor` value automatically based on the value of `y`.
        public var yAnchor: Shared.YAutoAnchor? = nil
    
        /// Sets the padding of the title.
        /// 
        /// Each padding value only applies when the corresponding `xanchor`/`yanchor` value is set
        /// accordingly. E.g. for left padding to take effect, `xanchor` must be set to *left*. The same
        /// rule applies if `xanchor`/`yanchor` is determined automatically. Padding is muted if the
        /// respective anchor value is *middle*/*center*.
        public var padding: Shared.Padding? = nil
    
        /// Decoding and encoding keys compatible with Plotly schema.
        enum CodingKeys: String, CodingKey {
            case text
            case font
            case xReference = "xref"
            case yReference = "yref"
            case x
            case y
            case xAnchor = "xanchor"
            case yAnchor = "yanchor"
            case padding = "pad"
        }
        
        /// Creates `Title` object with specified properties.
        /// 
        /// - Parameters:
        ///   - text: Sets the plot's title.
        ///   - font: Sets the title font.
        ///   - xReference: Sets the container `x` refers to.
        ///   - yReference: Sets the container `y` refers to.
        ///   - x: Sets the x position with respect to `xref` in normalized coordinates from *0* (left) to *1*
        ///   (right).
        ///   - y: Sets the y position with respect to `yref` in normalized coordinates from *0* (bottom) to
        ///   *1* (top).
        ///   - xAnchor: Sets the title's horizontal alignment with respect to its x position.
        ///   - yAnchor: Sets the title's vertical alignment with respect to its y position.
        ///   - padding: Sets the padding of the title.
        public init(text: String? = nil, font: Shared.Font? = nil, xReference: XAxisReference? = nil,
                yReference: YAxisReference? = nil, x: Double? = nil, y: Double? = nil, xAnchor:
                Shared.XAutoAnchor? = nil, yAnchor: Shared.YAutoAnchor? = nil, padding: Shared.Padding? = nil) {
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
    public var title: Title? = nil

    /// Determines whether or not a layout width or height that has been left undefined by the user is
    /// initialized on each relayout.
    /// 
    /// Note that, regardless of this attribute, an undefined layout width or height is always
    /// initialized on the first call to plot.
    public var autoSize: Bool? = nil

    /// Sets the plot's width (in px).
    public var width: Double? = nil

    /// Sets the plot's height (in px).
    public var height: Double? = nil

    public struct Margin: Encodable {
        /// Sets the left margin (in px).
        public var l: Double? = nil
    
        /// Sets the right margin (in px).
        public var r: Double? = nil
    
        /// Sets the top margin (in px).
        public var t: Double? = nil
    
        /// Sets the bottom margin (in px).
        public var b: Double? = nil
    
        /// Sets the amount of padding (in px) between the plotting area and the axis lines
        public var padding: Double? = nil
    
        /// Turns on/off margin expansion computations.
        /// 
        /// Legends, colorbars, updatemenus, sliders, axis rangeselector and rangeslider are allowed to push
        /// the margins by defaults.
        public var autoExpand: Bool? = nil
    
        /// Decoding and encoding keys compatible with Plotly schema.
        enum CodingKeys: String, CodingKey {
            case l
            case r
            case t
            case b
            case padding = "pad"
            case autoExpand = "autoexpand"
        }
        
        /// Creates `Margin` object with specified properties.
        /// 
        /// - Parameters:
        ///   - l: Sets the left margin (in px).
        ///   - r: Sets the right margin (in px).
        ///   - t: Sets the top margin (in px).
        ///   - b: Sets the bottom margin (in px).
        ///   - padding: Sets the amount of padding (in px) between the plotting area and the axis lines
        ///   - autoExpand: Turns on/off margin expansion computations.
        public init(l: Double? = nil, r: Double? = nil, t: Double? = nil, b: Double? = nil, padding:
                Double? = nil, autoExpand: Bool? = nil) {
            self.l = l
            self.r = r
            self.t = t
            self.b = b
            self.padding = padding
            self.autoExpand = autoExpand
        }
        
    }
    public var margin: Margin? = nil

    /// Sets the color of paper where the graph is drawn.
    public var paperBackgroundColor: Color? = nil

    /// Sets the color of plotting area in-between x and y axes.
    public var plotBackgroundColor: Color? = nil

    /// Sets the decimal and thousand separators.
    /// 
    /// For example, *. * puts a '.' before decimals and a space between thousands. In English locales,
    /// dflt is *.,* but other locales may alter this default.
    public var separators: String? = nil

    /// Determines whether or not a text link citing the data source is placed at the bottom-right cored
    /// of the figure.
    /// 
    /// Has only an effect only on graphs that have been generated via forked graphs from the plotly
    /// service (at https://plot.ly or on-premise).
    public var hideSources: Bool? = nil

    /// Determines whether or not a legend is drawn.
    /// 
    /// Default is `true` if there is a trace to show and any of these: a) Two or more traces would by
    /// default be shown in the legend. b) One pie trace is shown in the legend. c) One trace is
    /// explicitly given with `showlegend: true`.
    public var showLegend: Bool? = nil

    /// Sets the default trace colors.
    public var colorWay: ColorList? = nil

    
    // MARK: - Templating and Events

    /// If provided, a changed value tells `Plotly.react` that one or more data arrays has changed.
    /// 
    /// This way you can modify arrays in-place rather than making a complete new copy for an
    /// incremental change. If NOT provided, `Plotly.react` assumes that data arrays are being treated
    /// as immutable, thus any data array with a different identity from its predecessor contains new
    /// data.
    public var dataRevision: Anything? = nil

    /// Used to allow user interactions with the plot to persist after `Plotly.react` calls that are
    /// unaware of these interactions.
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
    public var uiRevision: Anything? = nil

    /// Controls persistence of user-driven changes in `editable: true` configuration, other than trace
    /// names and axis titles.
    /// 
    /// Defaults to `layout.uirevision`.
    public var editRevision: Anything? = nil

    /// Controls persistence of user-driven changes in selected points from all traces.
    public var selectionRevision: Anything? = nil

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
    public var template: Anything? = nil

    
    // MARK: - User Interface

    public struct ModeBar: Encodable {
        /// Sets the orientation of the modebar.
        public var orientation: Shared.Orientation? = nil
    
        /// Sets the background color of the modebar.
        public var backgroundColor: Color? = nil
    
        /// Sets the color of the icons in the modebar.
        public var color: Color? = nil
    
        /// Sets the color of the active or hovered on icons in the modebar.
        public var activeColor: Color? = nil
    
        /// Controls persistence of user-driven changes related to the modebar, including `hovermode`,
        /// `dragmode`, and `showspikes` at both the root level and inside subplots.
        /// 
        /// Defaults to `layout.uirevision`.
        public var uiRevision: Anything? = nil
    
        /// Decoding and encoding keys compatible with Plotly schema.
        enum CodingKeys: String, CodingKey {
            case orientation
            case backgroundColor = "bgcolor"
            case color
            case activeColor = "activecolor"
            case uiRevision = "uirevision"
        }
        
        /// Creates `ModeBar` object with specified properties.
        /// 
        /// - Parameters:
        ///   - orientation: Sets the orientation of the modebar.
        ///   - backgroundColor: Sets the background color of the modebar.
        ///   - color: Sets the color of the icons in the modebar.
        ///   - activeColor: Sets the color of the active or hovered on icons in the modebar.
        ///   - uiRevision: Controls persistence of user-driven changes related to the modebar, including
        ///   `hovermode`, `dragmode`, and `showspikes` at both the root level and inside subplots.
        public init(orientation: Shared.Orientation? = nil, backgroundColor: Color? = nil, color: Color?
                = nil, activeColor: Color? = nil, uiRevision: Anything? = nil) {
            self.orientation = orientation
            self.backgroundColor = backgroundColor
            self.color = color
            self.activeColor = activeColor
            self.uiRevision = uiRevision
        }
        
    }
    public var modeBar: ModeBar? = nil

    /// Assigns extra meta information that can be used in various `text` attributes.
    /// 
    /// Attributes such as the graph, axis and colorbar `title.text`, annotation `text` `trace.name` in
    /// legend items, `rangeselector`, `updatemenus` and `sliders` `label` text all support `meta`. One
    /// can access `meta` fields using template strings: `%{meta[i]}` where `i` is the index of the
    /// `meta` item in question. `meta` can also be an object for example `{key: value}` which can be
    /// accessed %{meta[key]}.
    public var meta: Data<Anything>? = nil

    /// Sets transition options used during Plotly.react updates.
    public struct Transition: Encodable {
        /// The duration of the transition, in milliseconds.
        /// 
        /// If equal to zero, updates are synchronous.
        public var duration: Double? = nil
    
        /// The easing function used for the transition
        public enum Easing: String, Encodable {
            case linear
            case quad
            case cubic
            case sin
            case exp
            case circle
            case elastic
            case back
            case bounce
            case linearIn = "linear-in"
            case quadIn = "quad-in"
            case cubicIn = "cubic-in"
            case sinIn = "sin-in"
            case expIn = "exp-in"
            case circleIn = "circle-in"
            case elasticIn = "elastic-in"
            case backIn = "back-in"
            case bounceIn = "bounce-in"
            case linearOut = "linear-out"
            case quadOut = "quad-out"
            case cubicOut = "cubic-out"
            case sinOut = "sin-out"
            case expOut = "exp-out"
            case circleOut = "circle-out"
            case elasticOut = "elastic-out"
            case backOut = "back-out"
            case bounceOut = "bounce-out"
            case linearInOut = "linear-in-out"
            case quadInOut = "quad-in-out"
            case cubicInOut = "cubic-in-out"
            case sinInOut = "sin-in-out"
            case expInOut = "exp-in-out"
            case circleInOut = "circle-in-out"
            case elasticInOut = "elastic-in-out"
            case backInOut = "back-in-out"
            case bounceInOut = "bounce-in-out"
        }
        /// The easing function used for the transition
        public var easing: Easing? = nil
    
        /// Determines whether the figure's layout or traces smoothly transitions during updates that make
        /// both traces and layout change.
        public enum Ordering: String, Encodable {
            case layoutFirst = "layout first"
            case tracesFirst = "traces first"
        }
        /// Determines whether the figure's layout or traces smoothly transitions during updates that make
        /// both traces and layout change.
        public var ordering: Ordering? = nil
    
        /// Creates `Transition` object with specified properties.
        /// 
        /// - Parameters:
        ///   - duration: The duration of the transition, in milliseconds.
        ///   - easing: The easing function used for the transition
        ///   - ordering: Determines whether the figure's layout or traces smoothly transitions during updates
        ///   that make both traces and layout change.
        public init(duration: Double? = nil, easing: Easing? = nil, ordering: Ordering? = nil) {
            self.duration = duration
            self.easing = easing
            self.ordering = ordering
        }
        
    }
    /// Sets transition options used during Plotly.react updates.
    public var transition: Transition? = nil

    
    // MARK: - User Interaction

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
    public struct ClickMode: OptionSet, Encodable {
        public let rawValue: Int
        public static var event: ClickMode { ClickMode(rawValue: 1 << 0) }
        public static var select: ClickMode { ClickMode(rawValue: 1 << 1) }
        public static var none: ClickMode { ClickMode(rawValue: 1 << 2) }
        
        public init(rawValue: Int) {
            self.rawValue = rawValue
        }
        
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["event"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["select"] }
            if (self.rawValue & 1 << 2) != 0 { options += ["none"] }
            var container = encoder.singleValueContainer()
            try container.encode(options.joined(separator: "+"))
        }
    }
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
    public var clickMode: ClickMode? = nil

    /// Determines the mode of drag interactions.
    /// 
    /// *select* and *lasso* apply only to scatter traces with markers or text. *orbit* and *turntable*
    /// apply only to 3D scenes.
    public enum DragMode: Encodable {
        case zoom
        case pan
        case select
        case lasso
        case orbit
        case turntable
        case off
        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .zoom:
                try container.encode("zoom")
            case .pan:
                try container.encode("pan")
            case .select:
                try container.encode("select")
            case .lasso:
                try container.encode("lasso")
            case .orbit:
                try container.encode("orbit")
            case .turntable:
                try container.encode("turntable")
            case .off:
                try container.encode(false)
            }
        }
    }
    /// Determines the mode of drag interactions.
    /// 
    /// *select* and *lasso* apply only to scatter traces with markers or text. *orbit* and *turntable*
    /// apply only to 3D scenes.
    public var dragMode: DragMode? = nil

    /// Determines the mode of hover interactions.
    /// 
    /// If `clickmode` includes the *select* flag, `hovermode` defaults to *closest*. If `clickmode`
    /// lacks the *select* flag, it defaults to *x* or *y* (depending on the trace's `orientation`
    /// value) for plots based on cartesian coordinates. For anything else the default value is
    /// *closest*.
    public enum HoverMode: Encodable {
        case x
        case y
        case closest
        case off
        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .x:
                try container.encode("x")
            case .y:
                try container.encode("y")
            case .closest:
                try container.encode("closest")
            case .off:
                try container.encode(false)
            }
        }
    }
    /// Determines the mode of hover interactions.
    /// 
    /// If `clickmode` includes the *select* flag, `hovermode` defaults to *closest*. If `clickmode`
    /// lacks the *select* flag, it defaults to *x* or *y* (depending on the trace's `orientation`
    /// value) for plots based on cartesian coordinates. For anything else the default value is
    /// *closest*.
    public var hoverMode: HoverMode? = nil

    /// Sets the default distance (in pixels) to look for data to add hover labels (-1 means no cutoff,
    /// 0 means no looking for data).
    /// 
    /// This is only a real distance for hovering on point-like objects, like scatter points. For
    /// area-like objects (bars, scatter fills, etc) hovering is on inside the area and off outside, but
    /// these objects will not supersede hover on point-like objects in case of conflict.
    public var hoverDistance: Int? = nil

    /// Sets the default distance (in pixels) to look for data to draw spikelines to (-1 means no
    /// cutoff, 0 means no looking for data).
    /// 
    /// As with hoverdistance, distance does not apply to area-like objects. In addition, some objects
    /// can be hovered on but will not generate spikelines, such as scatter fills.
    public var spikeDistance: Int? = nil

    public var hoverLabel: Shared.HoverLabel? = nil

    /// When "dragmode" is set to "select", this limits the selection of the drag to horizontal,
    /// vertical or diagonal.
    /// 
    /// "h" only allows horizontal selection, "v" only vertical, "d" only diagonal and "any" sets no
    /// limit.
    public enum SelectDirection: String, Encodable {
        case h
        case v
        case d
        case any
    }
    /// When "dragmode" is set to "select", this limits the selection of the drag to horizontal,
    /// vertical or diagonal.
    /// 
    /// "h" only allows horizontal selection, "v" only vertical, "d" only diagonal and "any" sets no
    /// limit.
    public var selectDirection: SelectDirection? = nil

    
    // MARK: - Subplots and Axes

    public struct Grid: Encodable {
        /// The number of rows in the grid.
        /// 
        /// If you provide a 2D `subplots` array or a `yaxes` array, its length is used as the default. But
        /// it's also possible to have a different length, if you want to leave a row at the end for
        /// non-cartesian subplots.
        public var rows: Int? = nil
    
        /// Is the first row the top or the bottom? Note that columns are always enumerated from left to
        /// right.
        public enum RowOrder: String, Encodable {
            case topToBottom = "top to bottom"
            case bottomToTop = "bottom to top"
        }
        /// Is the first row the top or the bottom? Note that columns are always enumerated from left to
        /// right.
        public var rowOrder: RowOrder? = nil
    
        /// The number of columns in the grid.
        /// 
        /// If you provide a 2D `subplots` array, the length of its longest row is used as the default. If
        /// you give an `xaxes` array, its length is used as the default. But it's also possible to have a
        /// different length, if you want to leave a row at the end for non-cartesian subplots.
        public var columns: Int? = nil
    
        /// Used for freeform grids, where some axes may be shared across subplots but others are not.
        /// 
        /// Each entry should be a cartesian subplot id, like *xy* or *x3y2*, or ** to leave that cell
        /// empty. You may reuse x axes within the same column, and y axes within the same row.
        /// Non-cartesian subplots and traces that support `domain` can place themselves in this grid
        /// separately using the `gridcell` attribute.
        public var subplots: InfoArray? = nil
    
        /// Used with `yaxes` when the x and y axes are shared across columns and rows.
        /// 
        /// Each entry should be an x axis id like *x*, *x2*, etc., or ** to not put an x axis in that
        /// column. Entries other than ** must be unique. Ignored if `subplots` is present. If missing but
        /// `yaxes` is present, will generate consecutive IDs.
        public var xAxes: InfoArray? = nil
    
        /// Used with `yaxes` when the x and y axes are shared across columns and rows.
        /// 
        /// Each entry should be an y axis id like *y*, *y2*, etc., or ** to not put a y axis in that row.
        /// Entries other than ** must be unique. Ignored if `subplots` is present. If missing but `xaxes`
        /// is present, will generate consecutive IDs.
        public var yAxes: InfoArray? = nil
    
        /// If no `subplots`, `xaxes`, or `yaxes` are given but we do have `rows` and `columns`, we can
        /// generate defaults using consecutive axis IDs, in two ways: *coupled* gives one x axis per column
        /// and one y axis per row.
        /// 
        /// *independent* uses a new xy pair for each cell, left-to-right across each row then iterating
        /// rows according to `roworder`.
        public enum Pattern: String, Encodable {
            case independent
            case coupled
        }
        /// If no `subplots`, `xaxes`, or `yaxes` are given but we do have `rows` and `columns`, we can
        /// generate defaults using consecutive axis IDs, in two ways: *coupled* gives one x axis per column
        /// and one y axis per row.
        /// 
        /// *independent* uses a new xy pair for each cell, left-to-right across each row then iterating
        /// rows according to `roworder`.
        public var pattern: Pattern? = nil
    
        /// Horizontal space between grid cells, expressed as a fraction of the total width available to one
        /// cell.
        /// 
        /// Defaults to 0.1 for coupled-axes grids and 0.2 for independent grids.
        public var xGap: Double? = nil
    
        /// Vertical space between grid cells, expressed as a fraction of the total height available to one
        /// cell.
        /// 
        /// Defaults to 0.1 for coupled-axes grids and 0.3 for independent grids.
        public var yGap: Double? = nil
    
        public struct Domain: Encodable {
            /// Sets the horizontal domain of this grid subplot (in plot fraction).
            /// 
            /// The first and last cells end exactly at the domain edges, with no grout around the edges.
            public var x: InfoArray? = nil
        
            /// Sets the vertical domain of this grid subplot (in plot fraction).
            /// 
            /// The first and last cells end exactly at the domain edges, with no grout around the edges.
            public var y: InfoArray? = nil
        
            /// Creates `Domain` object with specified properties.
            /// 
            /// - Parameters:
            ///   - x: Sets the horizontal domain of this grid subplot (in plot fraction).
            ///   - y: Sets the vertical domain of this grid subplot (in plot fraction).
            public init(x: InfoArray? = nil, y: InfoArray? = nil) {
                self.x = x
                self.y = y
            }
            
        }
        public var domain: Domain? = nil
    
        /// Sets where the x axis labels and titles go.
        /// 
        /// *bottom* means the very bottom of the grid. *bottom plot* is the lowest plot that each x axis is
        /// used in. *top* and *top plot* are similar.
        public enum XSide: String, Encodable {
            case bottom
            case bottomPlot = "bottom plot"
            case topPlot = "top plot"
            case top
        }
        /// Sets where the x axis labels and titles go.
        /// 
        /// *bottom* means the very bottom of the grid. *bottom plot* is the lowest plot that each x axis is
        /// used in. *top* and *top plot* are similar.
        public var xSide: XSide? = nil
    
        /// Sets where the y axis labels and titles go.
        /// 
        /// *left* means the very left edge of the grid. *left plot* is the leftmost plot that each y axis
        /// is used in. *right* and *right plot* are similar.
        public enum YSide: String, Encodable {
            case left
            case leftPlot = "left plot"
            case rightPlot = "right plot"
            case right
        }
        /// Sets where the y axis labels and titles go.
        /// 
        /// *left* means the very left edge of the grid. *left plot* is the leftmost plot that each y axis
        /// is used in. *right* and *right plot* are similar.
        public var ySide: YSide? = nil
    
        /// Decoding and encoding keys compatible with Plotly schema.
        enum CodingKeys: String, CodingKey {
            case rows
            case rowOrder = "roworder"
            case columns
            case subplots
            case xAxes = "xaxes"
            case yAxes = "yaxes"
            case pattern
            case xGap = "xgap"
            case yGap = "ygap"
            case domain
            case xSide = "xside"
            case ySide = "yside"
        }
        
        /// Creates `Grid` object with specified properties.
        /// 
        /// - Parameters:
        ///   - rows: The number of rows in the grid.
        ///   - rowOrder: Is the first row the top or the bottom? Note that columns are always enumerated from
        ///   left to right.
        ///   - columns: The number of columns in the grid.
        ///   - subplots: Used for freeform grids, where some axes may be shared across subplots but others
        ///   are not.
        ///   - xAxes: Used with `yaxes` when the x and y axes are shared across columns and rows.
        ///   - yAxes: Used with `yaxes` when the x and y axes are shared across columns and rows.
        ///   - pattern: If no `subplots`, `xaxes`, or `yaxes` are given but we do have `rows` and `columns`,
        ///   we can generate defaults using consecutive axis IDs, in two ways: *coupled* gives one x axis per
        ///   column and one y axis per row.
        ///   - xGap: Horizontal space between grid cells, expressed as a fraction of the total width
        ///   available to one cell.
        ///   - yGap: Vertical space between grid cells, expressed as a fraction of the total height available
        ///   to one cell.
        ///   - domain:
        ///   - xSide: Sets where the x axis labels and titles go.
        ///   - ySide: Sets where the y axis labels and titles go.
        public init(rows: Int? = nil, rowOrder: RowOrder? = nil, columns: Int? = nil, subplots:
                InfoArray? = nil, xAxes: InfoArray? = nil, yAxes: InfoArray? = nil, pattern: Pattern? = nil,
                xGap: Double? = nil, yGap: Double? = nil, domain: Domain? = nil, xSide: XSide? = nil, ySide:
                YSide? = nil) {
            self.rows = rows
            self.rowOrder = rowOrder
            self.columns = columns
            self.subplots = subplots
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
    public var grid: Grid? = nil

    /// Sets the default calendar system to use for interpreting and displaying dates throughout the
    /// plot.
    public var calendar: Shared.Calendar? = nil

    public class XAxis: Encodable {
        public var uid: UInt = UInt.random(in: 2...UInt.max)
    
        /// A single toggle to hide the axis while preserving interaction like dragging.
        /// 
        /// Default is true when a cheater plot is present on the axis, otherwise false
        public var visible: Bool? = nil
    
        /// Sets default for all colors associated with this axis all at once: line, font, tick, and grid
        /// colors.
        /// 
        /// Grid color is lightened by blending this with the plot background Individual pieces can override
        /// this.
        public var color: Color? = nil
    
        public struct Title: Encodable {
            /// Sets the title of this axis.
            /// 
            /// Note that before the existence of `title.text`, the title's contents used to be defined as the
            /// `title` attribute itself. This behavior has been deprecated.
            public var text: String? = nil
        
            /// Sets this axis' title font.
            /// 
            /// Note that the title's font used to be customized by the now deprecated `titlefont` attribute.
            public var font: Shared.Font? = nil
        
            /// Sets the standoff distance (in px) between the axis labels and the title text The default value
            /// is a function of the axis tick labels, the title `font.size` and the axis `linewidth`.
            /// 
            /// Note that the axis title position is always constrained within the margins, so the actual
            /// standoff distance is always less than the set or default value. By setting `standoff` and
            /// turning on `automargin`, plotly.js will push the margins to fit the axis title at given standoff
            /// distance.
            public var standoff: Double? = nil
        
            /// Creates `Title` object with specified properties.
            /// 
            /// - Parameters:
            ///   - text: Sets the title of this axis.
            ///   - font: Sets this axis' title font.
            ///   - standoff: Sets the standoff distance (in px) between the axis labels and the title text The
            ///   default value is a function of the axis tick labels, the title `font.size` and the axis
            ///   `linewidth`.
            public init(text: String? = nil, font: Shared.Font? = nil, standoff: Double? = nil) {
                self.text = text
                self.font = font
                self.standoff = standoff
            }
            
        }
        public var title: Title? = nil
    
        /// Sets the axis type.
        /// 
        /// By default, plotly attempts to determined the axis type by looking into the data of the traces
        /// that referenced the axis in question.
        public enum `Type`: String, Encodable {
            case auto = "-"
            case linear
            case log
            case date
            case category
            case multiCategory = "multicategory"
        }
        /// Sets the axis type.
        /// 
        /// By default, plotly attempts to determined the axis type by looking into the data of the traces
        /// that referenced the axis in question.
        public var type: `Type`? = nil
    
        /// Determines whether or not the range of this axis is computed in relation to the input data.
        /// 
        /// See `rangemode` for more info. If `range` is provided, then `autorange` is set to *false*.
        public var autoRange: Shared.AutoRange? = nil
    
        /// If *normal*, the range is computed in relation to the extrema of the input data.
        /// 
        /// If *tozero*`, the range extends to 0, regardless of the input data If *nonnegative*, the range
        /// is non-negative, regardless of the input data. Applies only to linear axes.
        public var rangeMode: Shared.RangeMode? = nil
    
        /// Sets the range of this axis.
        /// 
        /// If the axis `type` is *log*, then you must take the log of your desired range (e.g. to set the
        /// range from 1 to 100, set the range from 0 to 2). If the axis `type` is *date*, it should be date
        /// strings, like date data, though Date objects and unix milliseconds will be accepted and
        /// converted to strings. If the axis `type` is *category*, it should be numbers, using the scale
        /// where each category is assigned a serial number from zero in the order it appears.
        public var range: InfoArray? = nil
    
        /// Determines whether or not this axis is zoom-able.
        /// 
        /// If true, then zoom is disabled.
        public var fixedRange: Bool? = nil
    
        /// If set to another axis id (e.g.
        /// 
        /// `x2`, `y`), the range of this axis changes together with the range of the corresponding axis
        /// such that the scale of pixels per unit is in a constant ratio. Both axes are still zoomable, but
        /// when you zoom one, the other will zoom the same amount, keeping a fixed midpoint. `constrain`
        /// and `constraintoward` determine how we enforce the constraint. You can chain these, ie `yaxis:
        /// {scaleanchor: *x*}, xaxis2: {scaleanchor: *y*}` but you can only link axes of the same `type`.
        /// The linked axis can have the opposite letter (to constrain the aspect ratio) or the same letter
        /// (to match scales across subplots). Loops (`yaxis: {scaleanchor: *x*}, xaxis: {scaleanchor: *y*}`
        /// or longer) are redundant and the last constraint encountered will be ignored to avoid possible
        /// inconsistent constraints via `scaleratio`. Note that setting axes simultaneously in both a
        /// `scaleanchor` and a `matches` constraint is currently forbidden.
        public enum ScaleAnchor: Encodable {
            case xAxis(Layout.XAxis)
            case yAxis(Layout.YAxis)
            public func encode(to encoder: Encoder) throws {
                var container = encoder.singleValueContainer()
                switch self {
                case .xAxis(let axis):
                    try container.encode("x\(axis.uid)")
                case .yAxis(let axis):
                    try container.encode("y\(axis.uid)")
                }
            }
        }
        /// If set to another axis id (e.g.
        /// 
        /// `x2`, `y`), the range of this axis changes together with the range of the corresponding axis
        /// such that the scale of pixels per unit is in a constant ratio. Both axes are still zoomable, but
        /// when you zoom one, the other will zoom the same amount, keeping a fixed midpoint. `constrain`
        /// and `constraintoward` determine how we enforce the constraint. You can chain these, ie `yaxis:
        /// {scaleanchor: *x*}, xaxis2: {scaleanchor: *y*}` but you can only link axes of the same `type`.
        /// The linked axis can have the opposite letter (to constrain the aspect ratio) or the same letter
        /// (to match scales across subplots). Loops (`yaxis: {scaleanchor: *x*}, xaxis: {scaleanchor: *y*}`
        /// or longer) are redundant and the last constraint encountered will be ignored to avoid possible
        /// inconsistent constraints via `scaleratio`. Note that setting axes simultaneously in both a
        /// `scaleanchor` and a `matches` constraint is currently forbidden.
        public var scaleAnchor: ScaleAnchor? = nil
    
        /// If this axis is linked to another by `scaleanchor`, this determines the pixel to unit scale
        /// ratio.
        /// 
        /// For example, if this value is 10, then every unit on this axis spans 10 times the number of
        /// pixels as a unit on the linked axis. Use this for example to create an elevation profile where
        /// the vertical scale is exaggerated a fixed amount with respect to the horizontal.
        public var scaleRatio: Double? = nil
    
        /// If this axis needs to be compressed (either due to its own `scaleanchor` and `scaleratio` or
        /// those of the other axis), determines how that happens: by increasing the *range* (default), or
        /// by decreasing the *domain*.
        public enum Constrain: String, Encodable {
            case range
            case domain
        }
        /// If this axis needs to be compressed (either due to its own `scaleanchor` and `scaleratio` or
        /// those of the other axis), determines how that happens: by increasing the *range* (default), or
        /// by decreasing the *domain*.
        public var constrain: Constrain? = nil
    
        /// If this axis needs to be compressed (either due to its own `scaleanchor` and `scaleratio` or
        /// those of the other axis), determines which direction we push the originally specified plot area.
        /// 
        /// Options are *left*, *center* (default), and *right* for x axes, and *top*, *middle* (default),
        /// and *bottom* for y axes.
        public enum ConstrainToward: String, Encodable {
            case left
            case center
            case right
            case top
            case middle
            case bottom
        }
        /// If this axis needs to be compressed (either due to its own `scaleanchor` and `scaleratio` or
        /// those of the other axis), determines which direction we push the originally specified plot area.
        /// 
        /// Options are *left*, *center* (default), and *right* for x axes, and *top*, *middle* (default),
        /// and *bottom* for y axes.
        public var constrainToward: ConstrainToward? = nil
    
        /// If set to another axis id (e.g.
        /// 
        /// `x2`, `y`), the range of this axis will match the range of the corresponding axis in
        /// data-coordinates space. Moreover, matching axes share auto-range values, category lists and
        /// histogram auto-bins. Note that setting axes simultaneously in both a `scaleanchor` and a
        /// `matches` constraint is currently forbidden. Moreover, note that matching axes must have the
        /// same `type`.
        public enum Matches: Encodable {
            case xAxis(Layout.XAxis)
            case yAxis(Layout.YAxis)
            public func encode(to encoder: Encoder) throws {
                var container = encoder.singleValueContainer()
                switch self {
                case .xAxis(let axis):
                    try container.encode("x\(axis.uid)")
                case .yAxis(let axis):
                    try container.encode("y\(axis.uid)")
                }
            }
        }
        /// If set to another axis id (e.g.
        /// 
        /// `x2`, `y`), the range of this axis will match the range of the corresponding axis in
        /// data-coordinates space. Moreover, matching axes share auto-range values, category lists and
        /// histogram auto-bins. Note that setting axes simultaneously in both a `scaleanchor` and a
        /// `matches` constraint is currently forbidden. Moreover, note that matching axes must have the
        /// same `type`.
        public var matches: Matches? = nil
    
        /// Sets the tick mode for this axis.
        /// 
        /// If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is
        /// determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value
        /// if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via
        /// `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is
        /// provided).
        public var tickMode: Shared.TickMode? = nil
    
        /// Specifies the maximum number of ticks for the particular axis.
        /// 
        /// The actual number of ticks will be chosen automatically to be less than or equal to `nticks`.
        /// Has an effect only if `tickmode` is set to *auto*.
        public var numTicks: Int? = nil
    
        /// Sets the placement of the first tick on this axis.
        /// 
        /// Use with `dtick`. If the axis `type` is *log*, then you must take the log of your starting tick
        /// (e.g. to set the starting tick to 100, set the `tick0` to 2) except when `dtick`=*L<f>* (see
        /// `dtick` for more info). If the axis `type` is *date*, it should be a date string, like date
        /// data. If the axis `type` is *category*, it should be a number, using the scale where each
        /// category is assigned a serial number from zero in the order it appears.
        public var tick0: Anything? = nil
    
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
        public var dTick: Anything? = nil
    
        /// Sets the values at which ticks on this axis appear.
        /// 
        /// Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
        public var tickValues: [Double]? = nil
    
        /// Sets the text displayed at the ticks position via `tickvals`.
        /// 
        /// Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
        public var tickText: [Double]? = nil
    
        /// Determines whether ticks are drawn or not.
        /// 
        /// If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside
        /// (inside) the axis lines.
        public var ticks: Shared.Ticks? = nil
    
        /// Determines where ticks and grid lines are drawn with respect to their corresponding tick labels.
        /// 
        /// Only has an effect for axes of `type` *category* or *multicategory*. When set to *boundaries*,
        /// ticks and grid lines are drawn half a category to the left/bottom of labels.
        public enum TicksOn: String, Encodable {
            case labels
            case boundaries
        }
        /// Determines where ticks and grid lines are drawn with respect to their corresponding tick labels.
        /// 
        /// Only has an effect for axes of `type` *category* or *multicategory*. When set to *boundaries*,
        /// ticks and grid lines are drawn half a category to the left/bottom of labels.
        public var ticksOn: TicksOn? = nil
    
        /// Determines if the axis lines or/and ticks are mirrored to the opposite side of the plotting
        /// area.
        /// 
        /// If *true*, the axis lines are mirrored. If *ticks*, the axis lines and ticks are mirrored. If
        /// *false*, mirroring is disable. If *all*, axis lines are mirrored on all shared-axes subplots. If
        /// *allticks*, axis lines and ticks are mirrored on all shared-axes subplots.
        public var mirror: Shared.Mirror? = nil
    
        /// Sets the tick length (in px).
        public var tickLength: Double? = nil
    
        /// Sets the tick width (in px).
        public var tickWidth: Double? = nil
    
        /// Sets the tick color.
        public var tickColor: Color? = nil
    
        /// Determines whether or not the tick labels are drawn.
        public var showTickLabels: Bool? = nil
    
        /// Determines whether long tick labels automatically grow the figure margins.
        public var autoMargin: Bool? = nil
    
        /// Determines whether or not spikes (aka droplines) are drawn for this axis.
        /// 
        /// Note: This only takes affect when hovermode = closest
        public var showSpikes: Bool? = nil
    
        /// Sets the spike color.
        /// 
        /// If undefined, will use the series color
        public var spikeColor: Color? = nil
    
        /// Sets the width (in px) of the zero line.
        public var spikeThickness: Double? = nil
    
        /// Sets the dash style of lines.
        /// 
        /// Set to a dash type string (*solid*, *dot*, *dash*, *longdash*, *dashdot*, or *longdashdot*) or a
        /// dash length list in px (eg *5px,10px,2px,2px*).
        public var spikeDash: String? = nil
    
        /// Determines the drawing mode for the spike line If *toaxis*, the line is drawn from the data
        /// point to the axis the series is plotted on.
        /// 
        /// If *across*, the line is drawn across the entire plot area, and supercedes *toaxis*. If
        /// *marker*, then a marker dot is drawn on the axis the series is plotted on
        public struct SpikeMode: OptionSet, Encodable {
            public let rawValue: Int
            public static var toAxis: SpikeMode { SpikeMode(rawValue: 1 << 0) }
            public static var across: SpikeMode { SpikeMode(rawValue: 1 << 1) }
            public static var marker: SpikeMode { SpikeMode(rawValue: 1 << 2) }
            
            public init(rawValue: Int) {
                self.rawValue = rawValue
            }
            
            public func encode(to encoder: Encoder) throws {
                var options = [String]()
                if (self.rawValue & 1 << 0) != 0 { options += ["toaxis"] }
                if (self.rawValue & 1 << 1) != 0 { options += ["across"] }
                if (self.rawValue & 1 << 2) != 0 { options += ["marker"] }
                var container = encoder.singleValueContainer()
                try container.encode(options.joined(separator: "+"))
            }
        }
        /// Determines the drawing mode for the spike line If *toaxis*, the line is drawn from the data
        /// point to the axis the series is plotted on.
        /// 
        /// If *across*, the line is drawn across the entire plot area, and supercedes *toaxis*. If
        /// *marker*, then a marker dot is drawn on the axis the series is plotted on
        public var spikeMode: SpikeMode? = nil
    
        /// Determines whether spikelines are stuck to the cursor or to the closest datapoints.
        public enum SpikeSnap: String, Encodable {
            case data
            case cursor
        }
        /// Determines whether spikelines are stuck to the cursor or to the closest datapoints.
        public var spikeSnap: SpikeSnap? = nil
    
        /// Sets the tick font.
        public var tickFont: Shared.Font? = nil
    
        /// Sets the angle of the tick labels with respect to the horizontal.
        /// 
        /// For example, a `tickangle` of -90 draws the tick labels vertically.
        public var tickAngle: Angle? = nil
    
        /// Sets a tick label prefix.
        public var tickPrefix: String? = nil
    
        /// If *all*, all tick labels are displayed with a prefix.
        /// 
        /// If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is
        /// displayed with a suffix. If *none*, tick prefixes are hidden.
        public var showTickPrefix: Shared.ShowTickPrefix? = nil
    
        /// Sets a tick label suffix.
        public var tickSuffix: String? = nil
    
        /// Same as `showtickprefix` but for tick suffixes.
        public var showTickSuffix: Shared.ShowTickSuffix? = nil
    
        /// If *all*, all exponents are shown besides their significands.
        /// 
        /// If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the
        /// last tick is shown. If *none*, no exponents appear.
        public var showExponent: Shared.ShowExponent? = nil
    
        /// Determines a formatting rule for the tick exponents.
        /// 
        /// For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*,
        /// 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
        public var exponentFormat: Shared.ExponentFormat? = nil
    
        /// If "true", even 4-digit integers are separated
        public var separateThousands: Bool? = nil
    
        /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to
        /// those in Python.
        /// 
        /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
        /// And for dates see:
        /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
        /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
        /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
        public var tickFormat: String? = nil
    
        public var tickFormatStops: [Shared.TickFormatStop]? = nil
    
        /// Sets the hover text formatting rule using d3 formatting mini-languages which are very similar to
        /// those in Python.
        /// 
        /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
        /// And for dates see:
        /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
        /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
        /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
        public var hoverFormat: String? = nil
    
        /// Determines whether or not a line bounding this axis is drawn.
        public var showLine: Bool? = nil
    
        /// Sets the axis line color.
        public var lineColor: Color? = nil
    
        /// Sets the width (in px) of the axis line.
        public var lineWidth: Double? = nil
    
        /// Determines whether or not grid lines are drawn.
        /// 
        /// If *true*, the grid lines are drawn at every tick mark.
        public var showGrid: Bool? = nil
    
        /// Sets the color of the grid lines.
        public var gridColor: Color? = nil
    
        /// Sets the width (in px) of the grid lines.
        public var gridWidth: Double? = nil
    
        /// Determines whether or not a line is drawn at along the 0 value of this axis.
        /// 
        /// If *true*, the zero line is drawn on top of the grid lines.
        public var zeroLine: Bool? = nil
    
        /// Sets the line color of the zero line.
        public var zeroLineColor: Color? = nil
    
        /// Sets the width (in px) of the zero line.
        public var zeroLineWidth: Double? = nil
    
        /// Determines whether or not a dividers are drawn between the category levels of this axis.
        /// 
        /// Only has an effect on *multicategory* axes.
        public var showDividers: Bool? = nil
    
        /// Sets the color of the dividers Only has an effect on *multicategory* axes.
        public var dividerColor: Color? = nil
    
        /// Sets the width (in px) of the dividers Only has an effect on *multicategory* axes.
        public var dividerWidth: Double? = nil
    
        /// If set to an opposite-letter axis id (e.g.
        /// 
        /// `x2`, `y`), this axis is bound to the corresponding opposite-letter axis. If set to *free*, this
        /// axis' position is determined by `position`.
        public enum Anchor: Encodable {
            case free
            case xAxis(Layout.XAxis)
            case yAxis(Layout.YAxis)
            public func encode(to encoder: Encoder) throws {
                var container = encoder.singleValueContainer()
                switch self {
                case .free:
                    try container.encode("free")
                case .xAxis(let axis):
                    try container.encode("x\(axis.uid)")
                case .yAxis(let axis):
                    try container.encode("y\(axis.uid)")
                }
            }
        }
        /// If set to an opposite-letter axis id (e.g.
        /// 
        /// `x2`, `y`), this axis is bound to the corresponding opposite-letter axis. If set to *free*, this
        /// axis' position is determined by `position`.
        public var anchor: Anchor? = nil
    
        /// Determines whether a x (y) axis is positioned at the *bottom* (*left*) or *top* (*right*) of the
        /// plotting area.
        public enum Side: String, Encodable {
            case top
            case bottom
            case left
            case right
        }
        /// Determines whether a x (y) axis is positioned at the *bottom* (*left*) or *top* (*right*) of the
        /// plotting area.
        public var side: Side? = nil
    
        /// If set a same-letter axis id, this axis is overlaid on top of the corresponding same-letter
        /// axis, with traces and axes visible for both axes.
        /// 
        /// If *false*, this axis does not overlay any same-letter axes. In this case, for axes with
        /// overlapping domains only the highest-numbered axis will be visible.
        public enum Overlaying: Encodable {
            case free
            case xAxis(Layout.XAxis)
            case yAxis(Layout.YAxis)
            public func encode(to encoder: Encoder) throws {
                var container = encoder.singleValueContainer()
                switch self {
                case .free:
                    try container.encode("free")
                case .xAxis(let axis):
                    try container.encode("x\(axis.uid)")
                case .yAxis(let axis):
                    try container.encode("y\(axis.uid)")
                }
            }
        }
        /// If set a same-letter axis id, this axis is overlaid on top of the corresponding same-letter
        /// axis, with traces and axes visible for both axes.
        /// 
        /// If *false*, this axis does not overlay any same-letter axes. In this case, for axes with
        /// overlapping domains only the highest-numbered axis will be visible.
        public var overlaying: Overlaying? = nil
    
        /// Sets the layer on which this axis is displayed.
        /// 
        /// If *above traces*, this axis is displayed above all the subplot's traces If *below traces*, this
        /// axis is displayed below all the subplot's traces, but above the grid lines. Useful when used
        /// together with scatter-like traces with `cliponaxis` set to *false* to show markers and/or text
        /// nodes above this axis.
        public var layer: Shared.Layer? = nil
    
        /// Sets the domain of this axis (in plot fraction).
        public var domain: InfoArray? = nil
    
        /// Sets the position of this axis in the plotting space (in normalized coordinates).
        /// 
        /// Only has an effect if `anchor` is set to *free*.
        public var position: Double? = nil
    
        /// Specifies the ordering logic for the case of categorical variables.
        /// 
        /// By default, plotly uses *trace*, which specifies the order that is present in the data supplied.
        /// Set `categoryorder` to *category ascending* or *category descending* if order should be
        /// determined by the alphanumerical order of the category names. Set `categoryorder` to *array* to
        /// derive the ordering from the attribute `categoryarray`. If a category is not found in the
        /// `categoryarray` array, the sorting behavior for that attribute will be identical to the *trace*
        /// mode. The unspecified categories will follow the categories in `categoryarray`. Set
        /// `categoryorder` to *total ascending* or *total descending* if order should be determined by the
        /// numerical order of the values. Similarly, the order can be determined by the min, max, sum, mean
        /// or median of all the values.
        public var categoryOrder: Shared.CategoryOrder? = nil
    
        /// Sets the order in which categories on this axis appear.
        /// 
        /// Only has an effect if `categoryorder` is set to *array*. Used with `categoryorder`.
        public var categoryArray: [Double]? = nil
    
        /// Controls persistence of user-driven changes in axis `range`, `autorange`, and `title` if in
        /// `editable: true` configuration.
        /// 
        /// Defaults to `layout.uirevision`.
        public var uiRevision: Anything? = nil
    
        public struct RangeSlider: Encodable {
            /// Sets the background color of the range slider.
            public var backgroundColor: Color? = nil
        
            /// Sets the border color of the range slider.
            public var borderColor: Color? = nil
        
            /// Sets the border width of the range slider.
            public var borderWidth: Int? = nil
        
            /// Determines whether or not the range slider range is computed in relation to the input data.
            /// 
            /// If `range` is provided, then `autorange` is set to *false*.
            public var autoRange: Bool? = nil
        
            /// Sets the range of the range slider.
            /// 
            /// If not set, defaults to the full xaxis range. If the axis `type` is *log*, then you must take
            /// the log of your desired range. If the axis `type` is *date*, it should be date strings, like
            /// date data, though Date objects and unix milliseconds will be accepted and converted to strings.
            /// If the axis `type` is *category*, it should be numbers, using the scale where each category is
            /// assigned a serial number from zero in the order it appears.
            public var range: InfoArray? = nil
        
            /// The height of the range slider as a fraction of the total plot area height.
            public var thickness: Double? = nil
        
            /// Determines whether or not the range slider will be visible.
            /// 
            /// If visible, perpendicular axes will be set to `fixedrange`
            public var visible: Bool? = nil
        
            public struct YAxis: Encodable {
                /// Determines whether or not the range of this axis in the rangeslider use the same value than in
                /// the main plot when zooming in/out.
                /// 
                /// If *auto*, the autorange will be used. If *fixed*, the `range` is used. If *match*, the current
                /// range of the corresponding y-axis on the main subplot is used.
                public enum RangeMode: String, Encodable {
                    case auto
                    case fixed
                    case match
                }
                /// Determines whether or not the range of this axis in the rangeslider use the same value than in
                /// the main plot when zooming in/out.
                /// 
                /// If *auto*, the autorange will be used. If *fixed*, the `range` is used. If *match*, the current
                /// range of the corresponding y-axis on the main subplot is used.
                public var rangeMode: RangeMode? = nil
            
                /// Sets the range of this axis for the rangeslider.
                public var range: InfoArray? = nil
            
                /// Decoding and encoding keys compatible with Plotly schema.
                enum CodingKeys: String, CodingKey {
                    case rangeMode = "rangemode"
                    case range
                }
                
                /// Creates `YAxis` object with specified properties.
                /// 
                /// - Parameters:
                ///   - rangeMode: Determines whether or not the range of this axis in the rangeslider use the same
                ///   value than in the main plot when zooming in/out.
                ///   - range: Sets the range of this axis for the rangeslider.
                public init(rangeMode: RangeMode? = nil, range: InfoArray? = nil) {
                    self.rangeMode = rangeMode
                    self.range = range
                }
                
            }
            public var yAxis: YAxis? = nil
        
            /// Decoding and encoding keys compatible with Plotly schema.
            enum CodingKeys: String, CodingKey {
                case backgroundColor = "bgcolor"
                case borderColor = "bordercolor"
                case borderWidth = "borderwidth"
                case autoRange = "autorange"
                case range
                case thickness
                case visible
                case yAxis = "yaxis"
            }
            
            /// Creates `RangeSlider` object with specified properties.
            /// 
            /// - Parameters:
            ///   - backgroundColor: Sets the background color of the range slider.
            ///   - borderColor: Sets the border color of the range slider.
            ///   - borderWidth: Sets the border width of the range slider.
            ///   - autoRange: Determines whether or not the range slider range is computed in relation to the
            ///   input data.
            ///   - range: Sets the range of the range slider.
            ///   - thickness: The height of the range slider as a fraction of the total plot area height.
            ///   - visible: Determines whether or not the range slider will be visible.
            ///   - yAxis:
            public init(backgroundColor: Color? = nil, borderColor: Color? = nil, borderWidth: Int? = nil,
                    autoRange: Bool? = nil, range: InfoArray? = nil, thickness: Double? = nil, visible: Bool? = nil,
                    yAxis: YAxis? = nil) {
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
        public var rangeSlider: RangeSlider? = nil
    
        public struct RangeSelector: Encodable {
            /// Determines whether or not this range selector is visible.
            /// 
            /// Note that range selectors are only available for x axes of `type` set to or auto-typed to
            /// *date*.
            public var visible: Bool? = nil
        
            /// Sets the specifications for each buttons.
            /// 
            /// By default, a range selector comes with no buttons.
            public struct Button: Encodable {
                /// Determines whether or not this button is visible.
                public var visible: Bool? = nil
            
                /// The unit of measurement that the `count` value will set the range by.
                public enum Step: String, Encodable {
                    case month
                    case year
                    case day
                    case hour
                    case minute
                    case second
                    case all
                }
                /// The unit of measurement that the `count` value will set the range by.
                public var step: Step? = nil
            
                /// Sets the range update mode.
                /// 
                /// If *backward*, the range update shifts the start of range back *count* times *step*
                /// milliseconds. If *todate*, the range update shifts the start of range back to the first
                /// timestamp from *count* times *step* milliseconds back. For example, with `step` set to *year*
                /// and `count` set to *1* the range update shifts the start of the range back to January 01 of the
                /// current year. Month and year *todate* are currently available only for the built-in (Gregorian)
                /// calendar.
                public enum StepMode: String, Encodable {
                    case backward
                    case todate
                }
                /// Sets the range update mode.
                /// 
                /// If *backward*, the range update shifts the start of range back *count* times *step*
                /// milliseconds. If *todate*, the range update shifts the start of range back to the first
                /// timestamp from *count* times *step* milliseconds back. For example, with `step` set to *year*
                /// and `count` set to *1* the range update shifts the start of the range back to January 01 of the
                /// current year. Month and year *todate* are currently available only for the built-in (Gregorian)
                /// calendar.
                public var stepMode: StepMode? = nil
            
                /// Sets the number of steps to take to update the range.
                /// 
                /// Use with `step` to specify the update interval.
                public var count: Double? = nil
            
                /// Sets the text label to appear on the button.
                public var label: String? = nil
            
                /// When used in a template, named items are created in the output figure in addition to any items
                /// the figure already has in this array.
                /// 
                /// You can modify these items in the output figure by making your own item with `templateitemname`
                /// matching this `name` alongside your modifications (including `visible: false` or `enabled:
                /// false` to hide it). Has no effect outside of a template.
                public var name: String? = nil
            
                /// Used to refer to a named item in this array in the template.
                /// 
                /// Named items from the template will be created even without a matching item in the input figure,
                /// but you can modify one by making an item with `templateitemname` matching its `name`, alongside
                /// your modifications (including `visible: false` or `enabled: false` to hide it). If there is no
                /// template or no matching item, this item will be hidden unless you explicitly show it with
                /// `visible: true`.
                public var templateItemName: String? = nil
            
                /// Decoding and encoding keys compatible with Plotly schema.
                enum CodingKeys: String, CodingKey {
                    case visible
                    case step
                    case stepMode = "stepmode"
                    case count
                    case label
                    case name
                    case templateItemName = "templateitemname"
                }
                
                /// Creates `Button` object with specified properties.
                /// 
                /// - Parameters:
                ///   - visible: Determines whether or not this button is visible.
                ///   - step: The unit of measurement that the `count` value will set the range by.
                ///   - stepMode: Sets the range update mode.
                ///   - count: Sets the number of steps to take to update the range.
                ///   - label: Sets the text label to appear on the button.
                ///   - name: When used in a template, named items are created in the output figure in addition to any
                ///   items the figure already has in this array.
                ///   - templateItemName: Used to refer to a named item in this array in the template.
                public init(visible: Bool? = nil, step: Step? = nil, stepMode: StepMode? = nil, count: Double? =
                        nil, label: String? = nil, name: String? = nil, templateItemName: String? = nil) {
                    self.visible = visible
                    self.step = step
                    self.stepMode = stepMode
                    self.count = count
                    self.label = label
                    self.name = name
                    self.templateItemName = templateItemName
                }
                
            }
            public var buttons: [Button]? = nil
        
            /// Sets the x position (in normalized coordinates) of the range selector.
            public var x: Double? = nil
        
            /// Sets the range selector's horizontal position anchor.
            /// 
            /// This anchor binds the `x` position to the *left*, *center* or *right* of the range selector.
            public var xAnchor: Shared.XAutoAnchor? = nil
        
            /// Sets the y position (in normalized coordinates) of the range selector.
            public var y: Double? = nil
        
            /// Sets the range selector's vertical position anchor This anchor binds the `y` position to the
            /// *top*, *middle* or *bottom* of the range selector.
            public var yAnchor: Shared.YAutoAnchor? = nil
        
            /// Sets the font of the range selector button text.
            public var font: Shared.Font? = nil
        
            /// Sets the background color of the range selector buttons.
            public var backgroundColor: Color? = nil
        
            /// Sets the background color of the active range selector button.
            public var activeColor: Color? = nil
        
            /// Sets the color of the border enclosing the range selector.
            public var borderColor: Color? = nil
        
            /// Sets the width (in px) of the border enclosing the range selector.
            public var borderWidth: Double? = nil
        
            /// Decoding and encoding keys compatible with Plotly schema.
            enum CodingKeys: String, CodingKey {
                case visible
                case buttons
                case x
                case xAnchor = "xanchor"
                case y
                case yAnchor = "yanchor"
                case font
                case backgroundColor = "bgcolor"
                case activeColor = "activecolor"
                case borderColor = "bordercolor"
                case borderWidth = "borderwidth"
            }
            
            /// Creates `RangeSelector` object with specified properties.
            /// 
            /// - Parameters:
            ///   - visible: Determines whether or not this range selector is visible.
            ///   - buttons:
            ///   - x: Sets the x position (in normalized coordinates) of the range selector.
            ///   - xAnchor: Sets the range selector's horizontal position anchor.
            ///   - y: Sets the y position (in normalized coordinates) of the range selector.
            ///   - yAnchor: Sets the range selector's vertical position anchor This anchor binds the `y` position
            ///   to the *top*, *middle* or *bottom* of the range selector.
            ///   - font: Sets the font of the range selector button text.
            ///   - backgroundColor: Sets the background color of the range selector buttons.
            ///   - activeColor: Sets the background color of the active range selector button.
            ///   - borderColor: Sets the color of the border enclosing the range selector.
            ///   - borderWidth: Sets the width (in px) of the border enclosing the range selector.
            public init(visible: Bool? = nil, buttons: [Button]? = nil, x: Double? = nil, xAnchor:
                    Shared.XAutoAnchor? = nil, y: Double? = nil, yAnchor: Shared.YAutoAnchor? = nil, font:
                    Shared.Font? = nil, backgroundColor: Color? = nil, activeColor: Color? = nil, borderColor:
                    Color? = nil, borderWidth: Double? = nil) {
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
        public var rangeSelector: RangeSelector? = nil
    
        /// Sets the calendar system to use for `range` and `tick0` if this is a date axis.
        /// 
        /// This does not set the calendar for interpreting data on this axis, that's specified in the trace
        /// or via the global `layout.calendar`
        public var calendar: Shared.Calendar? = nil
    
        /// Decoding and encoding keys compatible with Plotly schema.
        enum CodingKeys: String, CodingKey {
            case visible
            case color
            case title
            case type
            case autoRange = "autorange"
            case rangeMode = "rangemode"
            case range
            case fixedRange = "fixedrange"
            case scaleAnchor = "scaleanchor"
            case scaleRatio = "scaleratio"
            case constrain
            case constrainToward = "constraintoward"
            case matches
            case tickMode = "tickmode"
            case numTicks = "nticks"
            case tick0
            case dTick = "dtick"
            case tickValues = "tickvals"
            case tickText = "ticktext"
            case ticks
            case ticksOn = "tickson"
            case mirror
            case tickLength = "ticklen"
            case tickWidth = "tickwidth"
            case tickColor = "tickcolor"
            case showTickLabels = "showticklabels"
            case autoMargin = "automargin"
            case showSpikes = "showspikes"
            case spikeColor = "spikecolor"
            case spikeThickness = "spikethickness"
            case spikeDash = "spikedash"
            case spikeMode = "spikemode"
            case spikeSnap = "spikesnap"
            case tickFont = "tickfont"
            case tickAngle = "tickangle"
            case tickPrefix = "tickprefix"
            case showTickPrefix = "showtickprefix"
            case tickSuffix = "ticksuffix"
            case showTickSuffix = "showticksuffix"
            case showExponent = "showexponent"
            case exponentFormat = "exponentformat"
            case separateThousands = "separatethousands"
            case tickFormat = "tickformat"
            case tickFormatStops = "tickformatstops"
            case hoverFormat = "hoverformat"
            case showLine = "showline"
            case lineColor = "linecolor"
            case lineWidth = "linewidth"
            case showGrid = "showgrid"
            case gridColor = "gridcolor"
            case gridWidth = "gridwidth"
            case zeroLine = "zeroline"
            case zeroLineColor = "zerolinecolor"
            case zeroLineWidth = "zerolinewidth"
            case showDividers = "showdividers"
            case dividerColor = "dividercolor"
            case dividerWidth = "dividerwidth"
            case anchor
            case side
            case overlaying
            case layer
            case domain
            case position
            case categoryOrder = "categoryorder"
            case categoryArray = "categoryarray"
            case uiRevision = "uirevision"
            case rangeSlider = "rangeslider"
            case rangeSelector = "rangeselector"
            case calendar
        }
        
        /// Creates `XAxis` object with specified properties.
        /// 
        /// - Parameters:
        ///   - uid:
        ///   - visible: A single toggle to hide the axis while preserving interaction like dragging.
        ///   - color: Sets default for all colors associated with this axis all at once: line, font, tick,
        ///   and grid colors.
        ///   - title:
        ///   - type: Sets the axis type.
        ///   - autoRange: Determines whether or not the range of this axis is computed in relation to the
        ///   input data.
        ///   - rangeMode: If *normal*, the range is computed in relation to the extrema of the input data.
        ///   - range: Sets the range of this axis.
        ///   - fixedRange: Determines whether or not this axis is zoom-able.
        ///   - scaleAnchor: If set to another axis id (e.g.
        ///   - scaleRatio: If this axis is linked to another by `scaleanchor`, this determines the pixel to
        ///   unit scale ratio.
        ///   - constrain: If this axis needs to be compressed (either due to its own `scaleanchor` and
        ///   `scaleratio` or those of the other axis), determines how that happens: by increasing the *range*
        ///   (default), or by decreasing the *domain*.
        ///   - constrainToward: If this axis needs to be compressed (either due to its own `scaleanchor` and
        ///   `scaleratio` or those of the other axis), determines which direction we push the originally
        ///   specified plot area.
        ///   - matches: If set to another axis id (e.g.
        ///   - tickMode: Sets the tick mode for this axis.
        ///   - numTicks: Specifies the maximum number of ticks for the particular axis.
        ///   - tick0: Sets the placement of the first tick on this axis.
        ///   - dTick: Sets the step in-between ticks on this axis.
        ///   - tickValues: Sets the values at which ticks on this axis appear.
        ///   - tickText: Sets the text displayed at the ticks position via `tickvals`.
        ///   - ticks: Determines whether ticks are drawn or not.
        ///   - ticksOn: Determines where ticks and grid lines are drawn with respect to their corresponding
        ///   tick labels.
        ///   - mirror: Determines if the axis lines or/and ticks are mirrored to the opposite side of the
        ///   plotting area.
        ///   - tickLength: Sets the tick length (in px).
        ///   - tickWidth: Sets the tick width (in px).
        ///   - tickColor: Sets the tick color.
        ///   - showTickLabels: Determines whether or not the tick labels are drawn.
        ///   - autoMargin: Determines whether long tick labels automatically grow the figure margins.
        ///   - showSpikes: Determines whether or not spikes (aka droplines) are drawn for this axis.
        ///   - spikeColor: Sets the spike color.
        ///   - spikeThickness: Sets the width (in px) of the zero line.
        ///   - spikeDash: Sets the dash style of lines.
        ///   - spikeMode: Determines the drawing mode for the spike line If *toaxis*, the line is drawn from
        ///   the data point to the axis the series is plotted on.
        ///   - spikeSnap: Determines whether spikelines are stuck to the cursor or to the closest datapoints.
        ///   - tickFont: Sets the tick font.
        ///   - tickAngle: Sets the angle of the tick labels with respect to the horizontal.
        ///   - tickPrefix: Sets a tick label prefix.
        ///   - showTickPrefix: If *all*, all tick labels are displayed with a prefix.
        ///   - tickSuffix: Sets a tick label suffix.
        ///   - showTickSuffix: Same as `showtickprefix` but for tick suffixes.
        ///   - showExponent: If *all*, all exponents are shown besides their significands.
        ///   - exponentFormat: Determines a formatting rule for the tick exponents.
        ///   - separateThousands: If "true", even 4-digit integers are separated
        ///   - tickFormat: Sets the tick label formatting rule using d3 formatting mini-languages which are
        ///   very similar to those in Python.
        ///   - tickFormatStops:
        ///   - hoverFormat: Sets the hover text formatting rule using d3 formatting mini-languages which are
        ///   very similar to those in Python.
        ///   - showLine: Determines whether or not a line bounding this axis is drawn.
        ///   - lineColor: Sets the axis line color.
        ///   - lineWidth: Sets the width (in px) of the axis line.
        ///   - showGrid: Determines whether or not grid lines are drawn.
        ///   - gridColor: Sets the color of the grid lines.
        ///   - gridWidth: Sets the width (in px) of the grid lines.
        ///   - zeroLine: Determines whether or not a line is drawn at along the 0 value of this axis.
        ///   - zeroLineColor: Sets the line color of the zero line.
        ///   - zeroLineWidth: Sets the width (in px) of the zero line.
        ///   - showDividers: Determines whether or not a dividers are drawn between the category levels of
        ///   this axis.
        ///   - dividerColor: Sets the color of the dividers Only has an effect on *multicategory* axes.
        ///   - dividerWidth: Sets the width (in px) of the dividers Only has an effect on *multicategory*
        ///   axes.
        ///   - anchor: If set to an opposite-letter axis id (e.g.
        ///   - side: Determines whether a x (y) axis is positioned at the *bottom* (*left*) or *top*
        ///   (*right*) of the plotting area.
        ///   - overlaying: If set a same-letter axis id, this axis is overlaid on top of the corresponding
        ///   same-letter axis, with traces and axes visible for both axes.
        ///   - layer: Sets the layer on which this axis is displayed.
        ///   - domain: Sets the domain of this axis (in plot fraction).
        ///   - position: Sets the position of this axis in the plotting space (in normalized coordinates).
        ///   - categoryOrder: Specifies the ordering logic for the case of categorical variables.
        ///   - categoryArray: Sets the order in which categories on this axis appear.
        ///   - uiRevision: Controls persistence of user-driven changes in axis `range`, `autorange`, and
        ///   `title` if in `editable: true` configuration.
        ///   - rangeSlider:
        ///   - rangeSelector:
        ///   - calendar: Sets the calendar system to use for `range` and `tick0` if this is a date axis.
        public init(uid: UInt = UInt.random(in: 2...UInt.max), visible: Bool? = nil, color: Color? =
                nil, title: Title? = nil, type: `Type`? = nil, autoRange: Shared.AutoRange? = nil, rangeMode:
                Shared.RangeMode? = nil, range: InfoArray? = nil, fixedRange: Bool? = nil, scaleAnchor:
                ScaleAnchor? = nil, scaleRatio: Double? = nil, constrain: Constrain? = nil, constrainToward:
                ConstrainToward? = nil, matches: Matches? = nil, tickMode: Shared.TickMode? = nil, numTicks:
                Int? = nil, tick0: Anything? = nil, dTick: Anything? = nil, tickValues: [Double]? = nil,
                tickText: [Double]? = nil, ticks: Shared.Ticks? = nil, ticksOn: TicksOn? = nil, mirror:
                Shared.Mirror? = nil, tickLength: Double? = nil, tickWidth: Double? = nil, tickColor: Color? =
                nil, showTickLabels: Bool? = nil, autoMargin: Bool? = nil, showSpikes: Bool? = nil, spikeColor:
                Color? = nil, spikeThickness: Double? = nil, spikeDash: String? = nil, spikeMode: SpikeMode? =
                nil, spikeSnap: SpikeSnap? = nil, tickFont: Shared.Font? = nil, tickAngle: Angle? = nil,
                tickPrefix: String? = nil, showTickPrefix: Shared.ShowTickPrefix? = nil, tickSuffix: String? =
                nil, showTickSuffix: Shared.ShowTickSuffix? = nil, showExponent: Shared.ShowExponent? = nil,
                exponentFormat: Shared.ExponentFormat? = nil, separateThousands: Bool? = nil, tickFormat:
                String? = nil, tickFormatStops: [Shared.TickFormatStop]? = nil, hoverFormat: String? = nil,
                showLine: Bool? = nil, lineColor: Color? = nil, lineWidth: Double? = nil, showGrid: Bool? = nil,
                gridColor: Color? = nil, gridWidth: Double? = nil, zeroLine: Bool? = nil, zeroLineColor: Color?
                = nil, zeroLineWidth: Double? = nil, showDividers: Bool? = nil, dividerColor: Color? = nil,
                dividerWidth: Double? = nil, anchor: Anchor? = nil, side: Side? = nil, overlaying: Overlaying? =
                nil, layer: Shared.Layer? = nil, domain: InfoArray? = nil, position: Double? = nil,
                categoryOrder: Shared.CategoryOrder? = nil, categoryArray: [Double]? = nil, uiRevision:
                Anything? = nil, rangeSlider: RangeSlider? = nil, rangeSelector: RangeSelector? = nil, calendar:
                Shared.Calendar? = nil) {
            self.uid = uid
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
            self.separateThousands = separateThousands
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
        }
        
    }
    public var xAxis: [XAxis] = []

    public class YAxis: Encodable {
        public var uid: UInt = UInt.random(in: 2...UInt.max)
    
        /// A single toggle to hide the axis while preserving interaction like dragging.
        /// 
        /// Default is true when a cheater plot is present on the axis, otherwise false
        public var visible: Bool? = nil
    
        /// Sets default for all colors associated with this axis all at once: line, font, tick, and grid
        /// colors.
        /// 
        /// Grid color is lightened by blending this with the plot background Individual pieces can override
        /// this.
        public var color: Color? = nil
    
        public struct Title: Encodable {
            /// Sets the title of this axis.
            /// 
            /// Note that before the existence of `title.text`, the title's contents used to be defined as the
            /// `title` attribute itself. This behavior has been deprecated.
            public var text: String? = nil
        
            /// Sets this axis' title font.
            /// 
            /// Note that the title's font used to be customized by the now deprecated `titlefont` attribute.
            public var font: Shared.Font? = nil
        
            /// Sets the standoff distance (in px) between the axis labels and the title text The default value
            /// is a function of the axis tick labels, the title `font.size` and the axis `linewidth`.
            /// 
            /// Note that the axis title position is always constrained within the margins, so the actual
            /// standoff distance is always less than the set or default value. By setting `standoff` and
            /// turning on `automargin`, plotly.js will push the margins to fit the axis title at given standoff
            /// distance.
            public var standoff: Double? = nil
        
            /// Creates `Title` object with specified properties.
            /// 
            /// - Parameters:
            ///   - text: Sets the title of this axis.
            ///   - font: Sets this axis' title font.
            ///   - standoff: Sets the standoff distance (in px) between the axis labels and the title text The
            ///   default value is a function of the axis tick labels, the title `font.size` and the axis
            ///   `linewidth`.
            public init(text: String? = nil, font: Shared.Font? = nil, standoff: Double? = nil) {
                self.text = text
                self.font = font
                self.standoff = standoff
            }
            
        }
        public var title: Title? = nil
    
        /// Sets the axis type.
        /// 
        /// By default, plotly attempts to determined the axis type by looking into the data of the traces
        /// that referenced the axis in question.
        public enum `Type`: String, Encodable {
            case auto = "-"
            case linear
            case log
            case date
            case category
            case multiCategory = "multicategory"
        }
        /// Sets the axis type.
        /// 
        /// By default, plotly attempts to determined the axis type by looking into the data of the traces
        /// that referenced the axis in question.
        public var type: `Type`? = nil
    
        /// Determines whether or not the range of this axis is computed in relation to the input data.
        /// 
        /// See `rangemode` for more info. If `range` is provided, then `autorange` is set to *false*.
        public var autoRange: Shared.AutoRange? = nil
    
        /// If *normal*, the range is computed in relation to the extrema of the input data.
        /// 
        /// If *tozero*`, the range extends to 0, regardless of the input data If *nonnegative*, the range
        /// is non-negative, regardless of the input data. Applies only to linear axes.
        public var rangeMode: Shared.RangeMode? = nil
    
        /// Sets the range of this axis.
        /// 
        /// If the axis `type` is *log*, then you must take the log of your desired range (e.g. to set the
        /// range from 1 to 100, set the range from 0 to 2). If the axis `type` is *date*, it should be date
        /// strings, like date data, though Date objects and unix milliseconds will be accepted and
        /// converted to strings. If the axis `type` is *category*, it should be numbers, using the scale
        /// where each category is assigned a serial number from zero in the order it appears.
        public var range: InfoArray? = nil
    
        /// Determines whether or not this axis is zoom-able.
        /// 
        /// If true, then zoom is disabled.
        public var fixedRange: Bool? = nil
    
        /// If set to another axis id (e.g.
        /// 
        /// `x2`, `y`), the range of this axis changes together with the range of the corresponding axis
        /// such that the scale of pixels per unit is in a constant ratio. Both axes are still zoomable, but
        /// when you zoom one, the other will zoom the same amount, keeping a fixed midpoint. `constrain`
        /// and `constraintoward` determine how we enforce the constraint. You can chain these, ie `yaxis:
        /// {scaleanchor: *x*}, xaxis2: {scaleanchor: *y*}` but you can only link axes of the same `type`.
        /// The linked axis can have the opposite letter (to constrain the aspect ratio) or the same letter
        /// (to match scales across subplots). Loops (`yaxis: {scaleanchor: *x*}, xaxis: {scaleanchor: *y*}`
        /// or longer) are redundant and the last constraint encountered will be ignored to avoid possible
        /// inconsistent constraints via `scaleratio`. Note that setting axes simultaneously in both a
        /// `scaleanchor` and a `matches` constraint is currently forbidden.
        public enum ScaleAnchor: Encodable {
            case xAxis(Layout.XAxis)
            case yAxis(Layout.YAxis)
            public func encode(to encoder: Encoder) throws {
                var container = encoder.singleValueContainer()
                switch self {
                case .xAxis(let axis):
                    try container.encode("x\(axis.uid)")
                case .yAxis(let axis):
                    try container.encode("y\(axis.uid)")
                }
            }
        }
        /// If set to another axis id (e.g.
        /// 
        /// `x2`, `y`), the range of this axis changes together with the range of the corresponding axis
        /// such that the scale of pixels per unit is in a constant ratio. Both axes are still zoomable, but
        /// when you zoom one, the other will zoom the same amount, keeping a fixed midpoint. `constrain`
        /// and `constraintoward` determine how we enforce the constraint. You can chain these, ie `yaxis:
        /// {scaleanchor: *x*}, xaxis2: {scaleanchor: *y*}` but you can only link axes of the same `type`.
        /// The linked axis can have the opposite letter (to constrain the aspect ratio) or the same letter
        /// (to match scales across subplots). Loops (`yaxis: {scaleanchor: *x*}, xaxis: {scaleanchor: *y*}`
        /// or longer) are redundant and the last constraint encountered will be ignored to avoid possible
        /// inconsistent constraints via `scaleratio`. Note that setting axes simultaneously in both a
        /// `scaleanchor` and a `matches` constraint is currently forbidden.
        public var scaleAnchor: ScaleAnchor? = nil
    
        /// If this axis is linked to another by `scaleanchor`, this determines the pixel to unit scale
        /// ratio.
        /// 
        /// For example, if this value is 10, then every unit on this axis spans 10 times the number of
        /// pixels as a unit on the linked axis. Use this for example to create an elevation profile where
        /// the vertical scale is exaggerated a fixed amount with respect to the horizontal.
        public var scaleRatio: Double? = nil
    
        /// If this axis needs to be compressed (either due to its own `scaleanchor` and `scaleratio` or
        /// those of the other axis), determines how that happens: by increasing the *range* (default), or
        /// by decreasing the *domain*.
        public enum Constrain: String, Encodable {
            case range
            case domain
        }
        /// If this axis needs to be compressed (either due to its own `scaleanchor` and `scaleratio` or
        /// those of the other axis), determines how that happens: by increasing the *range* (default), or
        /// by decreasing the *domain*.
        public var constrain: Constrain? = nil
    
        /// If this axis needs to be compressed (either due to its own `scaleanchor` and `scaleratio` or
        /// those of the other axis), determines which direction we push the originally specified plot area.
        /// 
        /// Options are *left*, *center* (default), and *right* for x axes, and *top*, *middle* (default),
        /// and *bottom* for y axes.
        public enum ConstrainToward: String, Encodable {
            case left
            case center
            case right
            case top
            case middle
            case bottom
        }
        /// If this axis needs to be compressed (either due to its own `scaleanchor` and `scaleratio` or
        /// those of the other axis), determines which direction we push the originally specified plot area.
        /// 
        /// Options are *left*, *center* (default), and *right* for x axes, and *top*, *middle* (default),
        /// and *bottom* for y axes.
        public var constrainToward: ConstrainToward? = nil
    
        /// If set to another axis id (e.g.
        /// 
        /// `x2`, `y`), the range of this axis will match the range of the corresponding axis in
        /// data-coordinates space. Moreover, matching axes share auto-range values, category lists and
        /// histogram auto-bins. Note that setting axes simultaneously in both a `scaleanchor` and a
        /// `matches` constraint is currently forbidden. Moreover, note that matching axes must have the
        /// same `type`.
        public enum Matches: Encodable {
            case xAxis(Layout.XAxis)
            case yAxis(Layout.YAxis)
            public func encode(to encoder: Encoder) throws {
                var container = encoder.singleValueContainer()
                switch self {
                case .xAxis(let axis):
                    try container.encode("x\(axis.uid)")
                case .yAxis(let axis):
                    try container.encode("y\(axis.uid)")
                }
            }
        }
        /// If set to another axis id (e.g.
        /// 
        /// `x2`, `y`), the range of this axis will match the range of the corresponding axis in
        /// data-coordinates space. Moreover, matching axes share auto-range values, category lists and
        /// histogram auto-bins. Note that setting axes simultaneously in both a `scaleanchor` and a
        /// `matches` constraint is currently forbidden. Moreover, note that matching axes must have the
        /// same `type`.
        public var matches: Matches? = nil
    
        /// Sets the tick mode for this axis.
        /// 
        /// If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is
        /// determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value
        /// if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via
        /// `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is
        /// provided).
        public var tickMode: Shared.TickMode? = nil
    
        /// Specifies the maximum number of ticks for the particular axis.
        /// 
        /// The actual number of ticks will be chosen automatically to be less than or equal to `nticks`.
        /// Has an effect only if `tickmode` is set to *auto*.
        public var numTicks: Int? = nil
    
        /// Sets the placement of the first tick on this axis.
        /// 
        /// Use with `dtick`. If the axis `type` is *log*, then you must take the log of your starting tick
        /// (e.g. to set the starting tick to 100, set the `tick0` to 2) except when `dtick`=*L<f>* (see
        /// `dtick` for more info). If the axis `type` is *date*, it should be a date string, like date
        /// data. If the axis `type` is *category*, it should be a number, using the scale where each
        /// category is assigned a serial number from zero in the order it appears.
        public var tick0: Anything? = nil
    
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
        public var dTick: Anything? = nil
    
        /// Sets the values at which ticks on this axis appear.
        /// 
        /// Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
        public var tickValues: [Double]? = nil
    
        /// Sets the text displayed at the ticks position via `tickvals`.
        /// 
        /// Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
        public var tickText: [Double]? = nil
    
        /// Determines whether ticks are drawn or not.
        /// 
        /// If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside
        /// (inside) the axis lines.
        public var ticks: Shared.Ticks? = nil
    
        /// Determines where ticks and grid lines are drawn with respect to their corresponding tick labels.
        /// 
        /// Only has an effect for axes of `type` *category* or *multicategory*. When set to *boundaries*,
        /// ticks and grid lines are drawn half a category to the left/bottom of labels.
        public enum TicksOn: String, Encodable {
            case labels
            case boundaries
        }
        /// Determines where ticks and grid lines are drawn with respect to their corresponding tick labels.
        /// 
        /// Only has an effect for axes of `type` *category* or *multicategory*. When set to *boundaries*,
        /// ticks and grid lines are drawn half a category to the left/bottom of labels.
        public var ticksOn: TicksOn? = nil
    
        /// Determines if the axis lines or/and ticks are mirrored to the opposite side of the plotting
        /// area.
        /// 
        /// If *true*, the axis lines are mirrored. If *ticks*, the axis lines and ticks are mirrored. If
        /// *false*, mirroring is disable. If *all*, axis lines are mirrored on all shared-axes subplots. If
        /// *allticks*, axis lines and ticks are mirrored on all shared-axes subplots.
        public var mirror: Shared.Mirror? = nil
    
        /// Sets the tick length (in px).
        public var tickLength: Double? = nil
    
        /// Sets the tick width (in px).
        public var tickWidth: Double? = nil
    
        /// Sets the tick color.
        public var tickColor: Color? = nil
    
        /// Determines whether or not the tick labels are drawn.
        public var showTickLabels: Bool? = nil
    
        /// Determines whether long tick labels automatically grow the figure margins.
        public var autoMargin: Bool? = nil
    
        /// Determines whether or not spikes (aka droplines) are drawn for this axis.
        /// 
        /// Note: This only takes affect when hovermode = closest
        public var showSpikes: Bool? = nil
    
        /// Sets the spike color.
        /// 
        /// If undefined, will use the series color
        public var spikeColor: Color? = nil
    
        /// Sets the width (in px) of the zero line.
        public var spikeThickness: Double? = nil
    
        /// Sets the dash style of lines.
        /// 
        /// Set to a dash type string (*solid*, *dot*, *dash*, *longdash*, *dashdot*, or *longdashdot*) or a
        /// dash length list in px (eg *5px,10px,2px,2px*).
        public var spikeDash: String? = nil
    
        /// Determines the drawing mode for the spike line If *toaxis*, the line is drawn from the data
        /// point to the axis the series is plotted on.
        /// 
        /// If *across*, the line is drawn across the entire plot area, and supercedes *toaxis*. If
        /// *marker*, then a marker dot is drawn on the axis the series is plotted on
        public struct SpikeMode: OptionSet, Encodable {
            public let rawValue: Int
            public static var toAxis: SpikeMode { SpikeMode(rawValue: 1 << 0) }
            public static var across: SpikeMode { SpikeMode(rawValue: 1 << 1) }
            public static var marker: SpikeMode { SpikeMode(rawValue: 1 << 2) }
            
            public init(rawValue: Int) {
                self.rawValue = rawValue
            }
            
            public func encode(to encoder: Encoder) throws {
                var options = [String]()
                if (self.rawValue & 1 << 0) != 0 { options += ["toaxis"] }
                if (self.rawValue & 1 << 1) != 0 { options += ["across"] }
                if (self.rawValue & 1 << 2) != 0 { options += ["marker"] }
                var container = encoder.singleValueContainer()
                try container.encode(options.joined(separator: "+"))
            }
        }
        /// Determines the drawing mode for the spike line If *toaxis*, the line is drawn from the data
        /// point to the axis the series is plotted on.
        /// 
        /// If *across*, the line is drawn across the entire plot area, and supercedes *toaxis*. If
        /// *marker*, then a marker dot is drawn on the axis the series is plotted on
        public var spikeMode: SpikeMode? = nil
    
        /// Determines whether spikelines are stuck to the cursor or to the closest datapoints.
        public enum SpikeSnap: String, Encodable {
            case data
            case cursor
        }
        /// Determines whether spikelines are stuck to the cursor or to the closest datapoints.
        public var spikeSnap: SpikeSnap? = nil
    
        /// Sets the tick font.
        public var tickFont: Shared.Font? = nil
    
        /// Sets the angle of the tick labels with respect to the horizontal.
        /// 
        /// For example, a `tickangle` of -90 draws the tick labels vertically.
        public var tickAngle: Angle? = nil
    
        /// Sets a tick label prefix.
        public var tickPrefix: String? = nil
    
        /// If *all*, all tick labels are displayed with a prefix.
        /// 
        /// If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is
        /// displayed with a suffix. If *none*, tick prefixes are hidden.
        public var showTickPrefix: Shared.ShowTickPrefix? = nil
    
        /// Sets a tick label suffix.
        public var tickSuffix: String? = nil
    
        /// Same as `showtickprefix` but for tick suffixes.
        public var showTickSuffix: Shared.ShowTickSuffix? = nil
    
        /// If *all*, all exponents are shown besides their significands.
        /// 
        /// If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the
        /// last tick is shown. If *none*, no exponents appear.
        public var showExponent: Shared.ShowExponent? = nil
    
        /// Determines a formatting rule for the tick exponents.
        /// 
        /// For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*,
        /// 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
        public var exponentFormat: Shared.ExponentFormat? = nil
    
        /// If "true", even 4-digit integers are separated
        public var separateThousands: Bool? = nil
    
        /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to
        /// those in Python.
        /// 
        /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
        /// And for dates see:
        /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
        /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
        /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
        public var tickFormat: String? = nil
    
        public var tickFormatStops: [Shared.TickFormatStop]? = nil
    
        /// Sets the hover text formatting rule using d3 formatting mini-languages which are very similar to
        /// those in Python.
        /// 
        /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
        /// And for dates see:
        /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
        /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
        /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
        public var hoverFormat: String? = nil
    
        /// Determines whether or not a line bounding this axis is drawn.
        public var showLine: Bool? = nil
    
        /// Sets the axis line color.
        public var lineColor: Color? = nil
    
        /// Sets the width (in px) of the axis line.
        public var lineWidth: Double? = nil
    
        /// Determines whether or not grid lines are drawn.
        /// 
        /// If *true*, the grid lines are drawn at every tick mark.
        public var showGrid: Bool? = nil
    
        /// Sets the color of the grid lines.
        public var gridColor: Color? = nil
    
        /// Sets the width (in px) of the grid lines.
        public var gridWidth: Double? = nil
    
        /// Determines whether or not a line is drawn at along the 0 value of this axis.
        /// 
        /// If *true*, the zero line is drawn on top of the grid lines.
        public var zeroLine: Bool? = nil
    
        /// Sets the line color of the zero line.
        public var zeroLineColor: Color? = nil
    
        /// Sets the width (in px) of the zero line.
        public var zeroLineWidth: Double? = nil
    
        /// Determines whether or not a dividers are drawn between the category levels of this axis.
        /// 
        /// Only has an effect on *multicategory* axes.
        public var showDividers: Bool? = nil
    
        /// Sets the color of the dividers Only has an effect on *multicategory* axes.
        public var dividerColor: Color? = nil
    
        /// Sets the width (in px) of the dividers Only has an effect on *multicategory* axes.
        public var dividerWidth: Double? = nil
    
        /// If set to an opposite-letter axis id (e.g.
        /// 
        /// `x2`, `y`), this axis is bound to the corresponding opposite-letter axis. If set to *free*, this
        /// axis' position is determined by `position`.
        public enum Anchor: Encodable {
            case free
            case xAxis(Layout.XAxis)
            case yAxis(Layout.YAxis)
            public func encode(to encoder: Encoder) throws {
                var container = encoder.singleValueContainer()
                switch self {
                case .free:
                    try container.encode("free")
                case .xAxis(let axis):
                    try container.encode("x\(axis.uid)")
                case .yAxis(let axis):
                    try container.encode("y\(axis.uid)")
                }
            }
        }
        /// If set to an opposite-letter axis id (e.g.
        /// 
        /// `x2`, `y`), this axis is bound to the corresponding opposite-letter axis. If set to *free*, this
        /// axis' position is determined by `position`.
        public var anchor: Anchor? = nil
    
        /// Determines whether a x (y) axis is positioned at the *bottom* (*left*) or *top* (*right*) of the
        /// plotting area.
        public enum Side: String, Encodable {
            case top
            case bottom
            case left
            case right
        }
        /// Determines whether a x (y) axis is positioned at the *bottom* (*left*) or *top* (*right*) of the
        /// plotting area.
        public var side: Side? = nil
    
        /// If set a same-letter axis id, this axis is overlaid on top of the corresponding same-letter
        /// axis, with traces and axes visible for both axes.
        /// 
        /// If *false*, this axis does not overlay any same-letter axes. In this case, for axes with
        /// overlapping domains only the highest-numbered axis will be visible.
        public enum Overlaying: Encodable {
            case free
            case xAxis(Layout.XAxis)
            case yAxis(Layout.YAxis)
            public func encode(to encoder: Encoder) throws {
                var container = encoder.singleValueContainer()
                switch self {
                case .free:
                    try container.encode("free")
                case .xAxis(let axis):
                    try container.encode("x\(axis.uid)")
                case .yAxis(let axis):
                    try container.encode("y\(axis.uid)")
                }
            }
        }
        /// If set a same-letter axis id, this axis is overlaid on top of the corresponding same-letter
        /// axis, with traces and axes visible for both axes.
        /// 
        /// If *false*, this axis does not overlay any same-letter axes. In this case, for axes with
        /// overlapping domains only the highest-numbered axis will be visible.
        public var overlaying: Overlaying? = nil
    
        /// Sets the layer on which this axis is displayed.
        /// 
        /// If *above traces*, this axis is displayed above all the subplot's traces If *below traces*, this
        /// axis is displayed below all the subplot's traces, but above the grid lines. Useful when used
        /// together with scatter-like traces with `cliponaxis` set to *false* to show markers and/or text
        /// nodes above this axis.
        public var layer: Shared.Layer? = nil
    
        /// Sets the domain of this axis (in plot fraction).
        public var domain: InfoArray? = nil
    
        /// Sets the position of this axis in the plotting space (in normalized coordinates).
        /// 
        /// Only has an effect if `anchor` is set to *free*.
        public var position: Double? = nil
    
        /// Specifies the ordering logic for the case of categorical variables.
        /// 
        /// By default, plotly uses *trace*, which specifies the order that is present in the data supplied.
        /// Set `categoryorder` to *category ascending* or *category descending* if order should be
        /// determined by the alphanumerical order of the category names. Set `categoryorder` to *array* to
        /// derive the ordering from the attribute `categoryarray`. If a category is not found in the
        /// `categoryarray` array, the sorting behavior for that attribute will be identical to the *trace*
        /// mode. The unspecified categories will follow the categories in `categoryarray`. Set
        /// `categoryorder` to *total ascending* or *total descending* if order should be determined by the
        /// numerical order of the values. Similarly, the order can be determined by the min, max, sum, mean
        /// or median of all the values.
        public var categoryOrder: Shared.CategoryOrder? = nil
    
        /// Sets the order in which categories on this axis appear.
        /// 
        /// Only has an effect if `categoryorder` is set to *array*. Used with `categoryorder`.
        public var categoryArray: [Double]? = nil
    
        /// Controls persistence of user-driven changes in axis `range`, `autorange`, and `title` if in
        /// `editable: true` configuration.
        /// 
        /// Defaults to `layout.uirevision`.
        public var uiRevision: Anything? = nil
    
        /// Sets the calendar system to use for `range` and `tick0` if this is a date axis.
        /// 
        /// This does not set the calendar for interpreting data on this axis, that's specified in the trace
        /// or via the global `layout.calendar`
        public var calendar: Shared.Calendar? = nil
    
        /// Decoding and encoding keys compatible with Plotly schema.
        enum CodingKeys: String, CodingKey {
            case visible
            case color
            case title
            case type
            case autoRange = "autorange"
            case rangeMode = "rangemode"
            case range
            case fixedRange = "fixedrange"
            case scaleAnchor = "scaleanchor"
            case scaleRatio = "scaleratio"
            case constrain
            case constrainToward = "constraintoward"
            case matches
            case tickMode = "tickmode"
            case numTicks = "nticks"
            case tick0
            case dTick = "dtick"
            case tickValues = "tickvals"
            case tickText = "ticktext"
            case ticks
            case ticksOn = "tickson"
            case mirror
            case tickLength = "ticklen"
            case tickWidth = "tickwidth"
            case tickColor = "tickcolor"
            case showTickLabels = "showticklabels"
            case autoMargin = "automargin"
            case showSpikes = "showspikes"
            case spikeColor = "spikecolor"
            case spikeThickness = "spikethickness"
            case spikeDash = "spikedash"
            case spikeMode = "spikemode"
            case spikeSnap = "spikesnap"
            case tickFont = "tickfont"
            case tickAngle = "tickangle"
            case tickPrefix = "tickprefix"
            case showTickPrefix = "showtickprefix"
            case tickSuffix = "ticksuffix"
            case showTickSuffix = "showticksuffix"
            case showExponent = "showexponent"
            case exponentFormat = "exponentformat"
            case separateThousands = "separatethousands"
            case tickFormat = "tickformat"
            case tickFormatStops = "tickformatstops"
            case hoverFormat = "hoverformat"
            case showLine = "showline"
            case lineColor = "linecolor"
            case lineWidth = "linewidth"
            case showGrid = "showgrid"
            case gridColor = "gridcolor"
            case gridWidth = "gridwidth"
            case zeroLine = "zeroline"
            case zeroLineColor = "zerolinecolor"
            case zeroLineWidth = "zerolinewidth"
            case showDividers = "showdividers"
            case dividerColor = "dividercolor"
            case dividerWidth = "dividerwidth"
            case anchor
            case side
            case overlaying
            case layer
            case domain
            case position
            case categoryOrder = "categoryorder"
            case categoryArray = "categoryarray"
            case uiRevision = "uirevision"
            case calendar
        }
        
        /// Creates `YAxis` object with specified properties.
        /// 
        /// - Parameters:
        ///   - uid:
        ///   - visible: A single toggle to hide the axis while preserving interaction like dragging.
        ///   - color: Sets default for all colors associated with this axis all at once: line, font, tick,
        ///   and grid colors.
        ///   - title:
        ///   - type: Sets the axis type.
        ///   - autoRange: Determines whether or not the range of this axis is computed in relation to the
        ///   input data.
        ///   - rangeMode: If *normal*, the range is computed in relation to the extrema of the input data.
        ///   - range: Sets the range of this axis.
        ///   - fixedRange: Determines whether or not this axis is zoom-able.
        ///   - scaleAnchor: If set to another axis id (e.g.
        ///   - scaleRatio: If this axis is linked to another by `scaleanchor`, this determines the pixel to
        ///   unit scale ratio.
        ///   - constrain: If this axis needs to be compressed (either due to its own `scaleanchor` and
        ///   `scaleratio` or those of the other axis), determines how that happens: by increasing the *range*
        ///   (default), or by decreasing the *domain*.
        ///   - constrainToward: If this axis needs to be compressed (either due to its own `scaleanchor` and
        ///   `scaleratio` or those of the other axis), determines which direction we push the originally
        ///   specified plot area.
        ///   - matches: If set to another axis id (e.g.
        ///   - tickMode: Sets the tick mode for this axis.
        ///   - numTicks: Specifies the maximum number of ticks for the particular axis.
        ///   - tick0: Sets the placement of the first tick on this axis.
        ///   - dTick: Sets the step in-between ticks on this axis.
        ///   - tickValues: Sets the values at which ticks on this axis appear.
        ///   - tickText: Sets the text displayed at the ticks position via `tickvals`.
        ///   - ticks: Determines whether ticks are drawn or not.
        ///   - ticksOn: Determines where ticks and grid lines are drawn with respect to their corresponding
        ///   tick labels.
        ///   - mirror: Determines if the axis lines or/and ticks are mirrored to the opposite side of the
        ///   plotting area.
        ///   - tickLength: Sets the tick length (in px).
        ///   - tickWidth: Sets the tick width (in px).
        ///   - tickColor: Sets the tick color.
        ///   - showTickLabels: Determines whether or not the tick labels are drawn.
        ///   - autoMargin: Determines whether long tick labels automatically grow the figure margins.
        ///   - showSpikes: Determines whether or not spikes (aka droplines) are drawn for this axis.
        ///   - spikeColor: Sets the spike color.
        ///   - spikeThickness: Sets the width (in px) of the zero line.
        ///   - spikeDash: Sets the dash style of lines.
        ///   - spikeMode: Determines the drawing mode for the spike line If *toaxis*, the line is drawn from
        ///   the data point to the axis the series is plotted on.
        ///   - spikeSnap: Determines whether spikelines are stuck to the cursor or to the closest datapoints.
        ///   - tickFont: Sets the tick font.
        ///   - tickAngle: Sets the angle of the tick labels with respect to the horizontal.
        ///   - tickPrefix: Sets a tick label prefix.
        ///   - showTickPrefix: If *all*, all tick labels are displayed with a prefix.
        ///   - tickSuffix: Sets a tick label suffix.
        ///   - showTickSuffix: Same as `showtickprefix` but for tick suffixes.
        ///   - showExponent: If *all*, all exponents are shown besides their significands.
        ///   - exponentFormat: Determines a formatting rule for the tick exponents.
        ///   - separateThousands: If "true", even 4-digit integers are separated
        ///   - tickFormat: Sets the tick label formatting rule using d3 formatting mini-languages which are
        ///   very similar to those in Python.
        ///   - tickFormatStops:
        ///   - hoverFormat: Sets the hover text formatting rule using d3 formatting mini-languages which are
        ///   very similar to those in Python.
        ///   - showLine: Determines whether or not a line bounding this axis is drawn.
        ///   - lineColor: Sets the axis line color.
        ///   - lineWidth: Sets the width (in px) of the axis line.
        ///   - showGrid: Determines whether or not grid lines are drawn.
        ///   - gridColor: Sets the color of the grid lines.
        ///   - gridWidth: Sets the width (in px) of the grid lines.
        ///   - zeroLine: Determines whether or not a line is drawn at along the 0 value of this axis.
        ///   - zeroLineColor: Sets the line color of the zero line.
        ///   - zeroLineWidth: Sets the width (in px) of the zero line.
        ///   - showDividers: Determines whether or not a dividers are drawn between the category levels of
        ///   this axis.
        ///   - dividerColor: Sets the color of the dividers Only has an effect on *multicategory* axes.
        ///   - dividerWidth: Sets the width (in px) of the dividers Only has an effect on *multicategory*
        ///   axes.
        ///   - anchor: If set to an opposite-letter axis id (e.g.
        ///   - side: Determines whether a x (y) axis is positioned at the *bottom* (*left*) or *top*
        ///   (*right*) of the plotting area.
        ///   - overlaying: If set a same-letter axis id, this axis is overlaid on top of the corresponding
        ///   same-letter axis, with traces and axes visible for both axes.
        ///   - layer: Sets the layer on which this axis is displayed.
        ///   - domain: Sets the domain of this axis (in plot fraction).
        ///   - position: Sets the position of this axis in the plotting space (in normalized coordinates).
        ///   - categoryOrder: Specifies the ordering logic for the case of categorical variables.
        ///   - categoryArray: Sets the order in which categories on this axis appear.
        ///   - uiRevision: Controls persistence of user-driven changes in axis `range`, `autorange`, and
        ///   `title` if in `editable: true` configuration.
        ///   - calendar: Sets the calendar system to use for `range` and `tick0` if this is a date axis.
        public init(uid: UInt = UInt.random(in: 2...UInt.max), visible: Bool? = nil, color: Color? =
                nil, title: Title? = nil, type: `Type`? = nil, autoRange: Shared.AutoRange? = nil, rangeMode:
                Shared.RangeMode? = nil, range: InfoArray? = nil, fixedRange: Bool? = nil, scaleAnchor:
                ScaleAnchor? = nil, scaleRatio: Double? = nil, constrain: Constrain? = nil, constrainToward:
                ConstrainToward? = nil, matches: Matches? = nil, tickMode: Shared.TickMode? = nil, numTicks:
                Int? = nil, tick0: Anything? = nil, dTick: Anything? = nil, tickValues: [Double]? = nil,
                tickText: [Double]? = nil, ticks: Shared.Ticks? = nil, ticksOn: TicksOn? = nil, mirror:
                Shared.Mirror? = nil, tickLength: Double? = nil, tickWidth: Double? = nil, tickColor: Color? =
                nil, showTickLabels: Bool? = nil, autoMargin: Bool? = nil, showSpikes: Bool? = nil, spikeColor:
                Color? = nil, spikeThickness: Double? = nil, spikeDash: String? = nil, spikeMode: SpikeMode? =
                nil, spikeSnap: SpikeSnap? = nil, tickFont: Shared.Font? = nil, tickAngle: Angle? = nil,
                tickPrefix: String? = nil, showTickPrefix: Shared.ShowTickPrefix? = nil, tickSuffix: String? =
                nil, showTickSuffix: Shared.ShowTickSuffix? = nil, showExponent: Shared.ShowExponent? = nil,
                exponentFormat: Shared.ExponentFormat? = nil, separateThousands: Bool? = nil, tickFormat:
                String? = nil, tickFormatStops: [Shared.TickFormatStop]? = nil, hoverFormat: String? = nil,
                showLine: Bool? = nil, lineColor: Color? = nil, lineWidth: Double? = nil, showGrid: Bool? = nil,
                gridColor: Color? = nil, gridWidth: Double? = nil, zeroLine: Bool? = nil, zeroLineColor: Color?
                = nil, zeroLineWidth: Double? = nil, showDividers: Bool? = nil, dividerColor: Color? = nil,
                dividerWidth: Double? = nil, anchor: Anchor? = nil, side: Side? = nil, overlaying: Overlaying? =
                nil, layer: Shared.Layer? = nil, domain: InfoArray? = nil, position: Double? = nil,
                categoryOrder: Shared.CategoryOrder? = nil, categoryArray: [Double]? = nil, uiRevision:
                Anything? = nil, calendar: Shared.Calendar? = nil) {
            self.uid = uid
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
            self.separateThousands = separateThousands
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
        }
        
    }
    public var yAxis: [YAxis] = []

    public class Ternary: Encodable {
        public var uid: UInt = UInt.random(in: 2...UInt.max)
    
        public var domain: Shared.Domain? = nil
    
        /// Set the background color of the subplot
        public var backgroundColor: Color? = nil
    
        /// The number each triplet should sum to, and the maximum range of each axis
        public var sum: Double? = nil
    
        public struct AAxis: Encodable {
            public var title: Shared.Title? = nil
        
            /// Sets default for all colors associated with this axis all at once: line, font, tick, and grid
            /// colors.
            /// 
            /// Grid color is lightened by blending this with the plot background Individual pieces can override
            /// this.
            public var color: Color? = nil
        
            /// Sets the tick mode for this axis.
            /// 
            /// If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is
            /// determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value
            /// if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via
            /// `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is
            /// provided).
            public var tickMode: Shared.TickMode? = nil
        
            /// Specifies the maximum number of ticks for the particular axis.
            /// 
            /// The actual number of ticks will be chosen automatically to be less than or equal to `nticks`.
            /// Has an effect only if `tickmode` is set to *auto*.
            public var numTicks: Int? = nil
        
            /// Sets the placement of the first tick on this axis.
            /// 
            /// Use with `dtick`. If the axis `type` is *log*, then you must take the log of your starting tick
            /// (e.g. to set the starting tick to 100, set the `tick0` to 2) except when `dtick`=*L<f>* (see
            /// `dtick` for more info). If the axis `type` is *date*, it should be a date string, like date
            /// data. If the axis `type` is *category*, it should be a number, using the scale where each
            /// category is assigned a serial number from zero in the order it appears.
            public var tick0: Anything? = nil
        
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
            public var dTick: Anything? = nil
        
            /// Sets the values at which ticks on this axis appear.
            /// 
            /// Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
            public var tickValues: [Double]? = nil
        
            /// Sets the text displayed at the ticks position via `tickvals`.
            /// 
            /// Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
            public var tickText: [Double]? = nil
        
            /// Determines whether ticks are drawn or not.
            /// 
            /// If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside
            /// (inside) the axis lines.
            public var ticks: Shared.Ticks? = nil
        
            /// Sets the tick length (in px).
            public var tickLength: Double? = nil
        
            /// Sets the tick width (in px).
            public var tickWidth: Double? = nil
        
            /// Sets the tick color.
            public var tickColor: Color? = nil
        
            /// Determines whether or not the tick labels are drawn.
            public var showTickLabels: Bool? = nil
        
            /// If *all*, all tick labels are displayed with a prefix.
            /// 
            /// If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is
            /// displayed with a suffix. If *none*, tick prefixes are hidden.
            public var showTickPrefix: Shared.ShowTickPrefix? = nil
        
            /// Sets a tick label prefix.
            public var tickPrefix: String? = nil
        
            /// Same as `showtickprefix` but for tick suffixes.
            public var showTickSuffix: Shared.ShowTickSuffix? = nil
        
            /// Sets a tick label suffix.
            public var tickSuffix: String? = nil
        
            /// If *all*, all exponents are shown besides their significands.
            /// 
            /// If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the
            /// last tick is shown. If *none*, no exponents appear.
            public var showExponent: Shared.ShowExponent? = nil
        
            /// Determines a formatting rule for the tick exponents.
            /// 
            /// For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*,
            /// 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
            public var exponentFormat: Shared.ExponentFormat? = nil
        
            /// If "true", even 4-digit integers are separated
            public var separateThousands: Bool? = nil
        
            /// Sets the tick font.
            public var tickFont: Shared.Font? = nil
        
            /// Sets the angle of the tick labels with respect to the horizontal.
            /// 
            /// For example, a `tickangle` of -90 draws the tick labels vertically.
            public var tickAngle: Angle? = nil
        
            /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to
            /// those in Python.
            /// 
            /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
            /// And for dates see:
            /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
            /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
            /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            public var tickFormat: String? = nil
        
            public var tickFormatStops: [Shared.TickFormatStop]? = nil
        
            /// Sets the hover text formatting rule using d3 formatting mini-languages which are very similar to
            /// those in Python.
            /// 
            /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
            /// And for dates see:
            /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
            /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
            /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            public var hoverFormat: String? = nil
        
            /// Determines whether or not a line bounding this axis is drawn.
            public var showLine: Bool? = nil
        
            /// Sets the axis line color.
            public var lineColor: Color? = nil
        
            /// Sets the width (in px) of the axis line.
            public var lineWidth: Double? = nil
        
            /// Determines whether or not grid lines are drawn.
            /// 
            /// If *true*, the grid lines are drawn at every tick mark.
            public var showGrid: Bool? = nil
        
            /// Sets the color of the grid lines.
            public var gridColor: Color? = nil
        
            /// Sets the width (in px) of the grid lines.
            public var gridWidth: Double? = nil
        
            /// Sets the layer on which this axis is displayed.
            /// 
            /// If *above traces*, this axis is displayed above all the subplot's traces If *below traces*, this
            /// axis is displayed below all the subplot's traces, but above the grid lines. Useful when used
            /// together with scatter-like traces with `cliponaxis` set to *false* to show markers and/or text
            /// nodes above this axis.
            public var layer: Shared.Layer? = nil
        
            /// The minimum value visible on this axis.
            /// 
            /// The maximum is determined by the sum minus the minimum values of the other two axes. The full
            /// view corresponds to all the minima set to zero.
            public var min: Double? = nil
        
            /// Controls persistence of user-driven changes in axis `min`, and `title` if in `editable: true`
            /// configuration.
            /// 
            /// Defaults to `ternary<N>.uirevision`.
            public var uiRevision: Anything? = nil
        
            /// Decoding and encoding keys compatible with Plotly schema.
            enum CodingKeys: String, CodingKey {
                case title
                case color
                case tickMode = "tickmode"
                case numTicks = "nticks"
                case tick0
                case dTick = "dtick"
                case tickValues = "tickvals"
                case tickText = "ticktext"
                case ticks
                case tickLength = "ticklen"
                case tickWidth = "tickwidth"
                case tickColor = "tickcolor"
                case showTickLabels = "showticklabels"
                case showTickPrefix = "showtickprefix"
                case tickPrefix = "tickprefix"
                case showTickSuffix = "showticksuffix"
                case tickSuffix = "ticksuffix"
                case showExponent = "showexponent"
                case exponentFormat = "exponentformat"
                case separateThousands = "separatethousands"
                case tickFont = "tickfont"
                case tickAngle = "tickangle"
                case tickFormat = "tickformat"
                case tickFormatStops = "tickformatstops"
                case hoverFormat = "hoverformat"
                case showLine = "showline"
                case lineColor = "linecolor"
                case lineWidth = "linewidth"
                case showGrid = "showgrid"
                case gridColor = "gridcolor"
                case gridWidth = "gridwidth"
                case layer
                case min
                case uiRevision = "uirevision"
            }
            
            /// Creates `AAxis` object with specified properties.
            /// 
            /// - Parameters:
            ///   - title:
            ///   - color: Sets default for all colors associated with this axis all at once: line, font, tick,
            ///   and grid colors.
            ///   - tickMode: Sets the tick mode for this axis.
            ///   - numTicks: Specifies the maximum number of ticks for the particular axis.
            ///   - tick0: Sets the placement of the first tick on this axis.
            ///   - dTick: Sets the step in-between ticks on this axis.
            ///   - tickValues: Sets the values at which ticks on this axis appear.
            ///   - tickText: Sets the text displayed at the ticks position via `tickvals`.
            ///   - ticks: Determines whether ticks are drawn or not.
            ///   - tickLength: Sets the tick length (in px).
            ///   - tickWidth: Sets the tick width (in px).
            ///   - tickColor: Sets the tick color.
            ///   - showTickLabels: Determines whether or not the tick labels are drawn.
            ///   - showTickPrefix: If *all*, all tick labels are displayed with a prefix.
            ///   - tickPrefix: Sets a tick label prefix.
            ///   - showTickSuffix: Same as `showtickprefix` but for tick suffixes.
            ///   - tickSuffix: Sets a tick label suffix.
            ///   - showExponent: If *all*, all exponents are shown besides their significands.
            ///   - exponentFormat: Determines a formatting rule for the tick exponents.
            ///   - separateThousands: If "true", even 4-digit integers are separated
            ///   - tickFont: Sets the tick font.
            ///   - tickAngle: Sets the angle of the tick labels with respect to the horizontal.
            ///   - tickFormat: Sets the tick label formatting rule using d3 formatting mini-languages which are
            ///   very similar to those in Python.
            ///   - tickFormatStops:
            ///   - hoverFormat: Sets the hover text formatting rule using d3 formatting mini-languages which are
            ///   very similar to those in Python.
            ///   - showLine: Determines whether or not a line bounding this axis is drawn.
            ///   - lineColor: Sets the axis line color.
            ///   - lineWidth: Sets the width (in px) of the axis line.
            ///   - showGrid: Determines whether or not grid lines are drawn.
            ///   - gridColor: Sets the color of the grid lines.
            ///   - gridWidth: Sets the width (in px) of the grid lines.
            ///   - layer: Sets the layer on which this axis is displayed.
            ///   - min: The minimum value visible on this axis.
            ///   - uiRevision: Controls persistence of user-driven changes in axis `min`, and `title` if in
            ///   `editable: true` configuration.
            public init(title: Shared.Title? = nil, color: Color? = nil, tickMode: Shared.TickMode? = nil,
                    numTicks: Int? = nil, tick0: Anything? = nil, dTick: Anything? = nil, tickValues: [Double]? =
                    nil, tickText: [Double]? = nil, ticks: Shared.Ticks? = nil, tickLength: Double? = nil,
                    tickWidth: Double? = nil, tickColor: Color? = nil, showTickLabels: Bool? = nil, showTickPrefix:
                    Shared.ShowTickPrefix? = nil, tickPrefix: String? = nil, showTickSuffix: Shared.ShowTickSuffix?
                    = nil, tickSuffix: String? = nil, showExponent: Shared.ShowExponent? = nil, exponentFormat:
                    Shared.ExponentFormat? = nil, separateThousands: Bool? = nil, tickFont: Shared.Font? = nil,
                    tickAngle: Angle? = nil, tickFormat: String? = nil, tickFormatStops: [Shared.TickFormatStop]? =
                    nil, hoverFormat: String? = nil, showLine: Bool? = nil, lineColor: Color? = nil, lineWidth:
                    Double? = nil, showGrid: Bool? = nil, gridColor: Color? = nil, gridWidth: Double? = nil, layer:
                    Shared.Layer? = nil, min: Double? = nil, uiRevision: Anything? = nil) {
                self.title = title
                self.color = color
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
                self.separateThousands = separateThousands
                self.tickFont = tickFont
                self.tickAngle = tickAngle
                self.tickFormat = tickFormat
                self.tickFormatStops = tickFormatStops
                self.hoverFormat = hoverFormat
                self.showLine = showLine
                self.lineColor = lineColor
                self.lineWidth = lineWidth
                self.showGrid = showGrid
                self.gridColor = gridColor
                self.gridWidth = gridWidth
                self.layer = layer
                self.min = min
                self.uiRevision = uiRevision
            }
            
        }
        public var aAxis: AAxis? = nil
    
        public struct BAxis: Encodable {
            public var title: Shared.Title? = nil
        
            /// Sets default for all colors associated with this axis all at once: line, font, tick, and grid
            /// colors.
            /// 
            /// Grid color is lightened by blending this with the plot background Individual pieces can override
            /// this.
            public var color: Color? = nil
        
            /// Sets the tick mode for this axis.
            /// 
            /// If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is
            /// determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value
            /// if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via
            /// `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is
            /// provided).
            public var tickMode: Shared.TickMode? = nil
        
            /// Specifies the maximum number of ticks for the particular axis.
            /// 
            /// The actual number of ticks will be chosen automatically to be less than or equal to `nticks`.
            /// Has an effect only if `tickmode` is set to *auto*.
            public var numTicks: Int? = nil
        
            /// Sets the placement of the first tick on this axis.
            /// 
            /// Use with `dtick`. If the axis `type` is *log*, then you must take the log of your starting tick
            /// (e.g. to set the starting tick to 100, set the `tick0` to 2) except when `dtick`=*L<f>* (see
            /// `dtick` for more info). If the axis `type` is *date*, it should be a date string, like date
            /// data. If the axis `type` is *category*, it should be a number, using the scale where each
            /// category is assigned a serial number from zero in the order it appears.
            public var tick0: Anything? = nil
        
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
            public var dTick: Anything? = nil
        
            /// Sets the values at which ticks on this axis appear.
            /// 
            /// Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
            public var tickValues: [Double]? = nil
        
            /// Sets the text displayed at the ticks position via `tickvals`.
            /// 
            /// Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
            public var tickText: [Double]? = nil
        
            /// Determines whether ticks are drawn or not.
            /// 
            /// If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside
            /// (inside) the axis lines.
            public var ticks: Shared.Ticks? = nil
        
            /// Sets the tick length (in px).
            public var tickLength: Double? = nil
        
            /// Sets the tick width (in px).
            public var tickWidth: Double? = nil
        
            /// Sets the tick color.
            public var tickColor: Color? = nil
        
            /// Determines whether or not the tick labels are drawn.
            public var showTickLabels: Bool? = nil
        
            /// If *all*, all tick labels are displayed with a prefix.
            /// 
            /// If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is
            /// displayed with a suffix. If *none*, tick prefixes are hidden.
            public var showTickPrefix: Shared.ShowTickPrefix? = nil
        
            /// Sets a tick label prefix.
            public var tickPrefix: String? = nil
        
            /// Same as `showtickprefix` but for tick suffixes.
            public var showTickSuffix: Shared.ShowTickSuffix? = nil
        
            /// Sets a tick label suffix.
            public var tickSuffix: String? = nil
        
            /// If *all*, all exponents are shown besides their significands.
            /// 
            /// If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the
            /// last tick is shown. If *none*, no exponents appear.
            public var showExponent: Shared.ShowExponent? = nil
        
            /// Determines a formatting rule for the tick exponents.
            /// 
            /// For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*,
            /// 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
            public var exponentFormat: Shared.ExponentFormat? = nil
        
            /// If "true", even 4-digit integers are separated
            public var separateThousands: Bool? = nil
        
            /// Sets the tick font.
            public var tickFont: Shared.Font? = nil
        
            /// Sets the angle of the tick labels with respect to the horizontal.
            /// 
            /// For example, a `tickangle` of -90 draws the tick labels vertically.
            public var tickAngle: Angle? = nil
        
            /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to
            /// those in Python.
            /// 
            /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
            /// And for dates see:
            /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
            /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
            /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            public var tickFormat: String? = nil
        
            public var tickFormatStops: [Shared.TickFormatStop]? = nil
        
            /// Sets the hover text formatting rule using d3 formatting mini-languages which are very similar to
            /// those in Python.
            /// 
            /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
            /// And for dates see:
            /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
            /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
            /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            public var hoverFormat: String? = nil
        
            /// Determines whether or not a line bounding this axis is drawn.
            public var showLine: Bool? = nil
        
            /// Sets the axis line color.
            public var lineColor: Color? = nil
        
            /// Sets the width (in px) of the axis line.
            public var lineWidth: Double? = nil
        
            /// Determines whether or not grid lines are drawn.
            /// 
            /// If *true*, the grid lines are drawn at every tick mark.
            public var showGrid: Bool? = nil
        
            /// Sets the color of the grid lines.
            public var gridColor: Color? = nil
        
            /// Sets the width (in px) of the grid lines.
            public var gridWidth: Double? = nil
        
            /// Sets the layer on which this axis is displayed.
            /// 
            /// If *above traces*, this axis is displayed above all the subplot's traces If *below traces*, this
            /// axis is displayed below all the subplot's traces, but above the grid lines. Useful when used
            /// together with scatter-like traces with `cliponaxis` set to *false* to show markers and/or text
            /// nodes above this axis.
            public var layer: Shared.Layer? = nil
        
            /// The minimum value visible on this axis.
            /// 
            /// The maximum is determined by the sum minus the minimum values of the other two axes. The full
            /// view corresponds to all the minima set to zero.
            public var min: Double? = nil
        
            /// Controls persistence of user-driven changes in axis `min`, and `title` if in `editable: true`
            /// configuration.
            /// 
            /// Defaults to `ternary<N>.uirevision`.
            public var uiRevision: Anything? = nil
        
            /// Decoding and encoding keys compatible with Plotly schema.
            enum CodingKeys: String, CodingKey {
                case title
                case color
                case tickMode = "tickmode"
                case numTicks = "nticks"
                case tick0
                case dTick = "dtick"
                case tickValues = "tickvals"
                case tickText = "ticktext"
                case ticks
                case tickLength = "ticklen"
                case tickWidth = "tickwidth"
                case tickColor = "tickcolor"
                case showTickLabels = "showticklabels"
                case showTickPrefix = "showtickprefix"
                case tickPrefix = "tickprefix"
                case showTickSuffix = "showticksuffix"
                case tickSuffix = "ticksuffix"
                case showExponent = "showexponent"
                case exponentFormat = "exponentformat"
                case separateThousands = "separatethousands"
                case tickFont = "tickfont"
                case tickAngle = "tickangle"
                case tickFormat = "tickformat"
                case tickFormatStops = "tickformatstops"
                case hoverFormat = "hoverformat"
                case showLine = "showline"
                case lineColor = "linecolor"
                case lineWidth = "linewidth"
                case showGrid = "showgrid"
                case gridColor = "gridcolor"
                case gridWidth = "gridwidth"
                case layer
                case min
                case uiRevision = "uirevision"
            }
            
            /// Creates `BAxis` object with specified properties.
            /// 
            /// - Parameters:
            ///   - title:
            ///   - color: Sets default for all colors associated with this axis all at once: line, font, tick,
            ///   and grid colors.
            ///   - tickMode: Sets the tick mode for this axis.
            ///   - numTicks: Specifies the maximum number of ticks for the particular axis.
            ///   - tick0: Sets the placement of the first tick on this axis.
            ///   - dTick: Sets the step in-between ticks on this axis.
            ///   - tickValues: Sets the values at which ticks on this axis appear.
            ///   - tickText: Sets the text displayed at the ticks position via `tickvals`.
            ///   - ticks: Determines whether ticks are drawn or not.
            ///   - tickLength: Sets the tick length (in px).
            ///   - tickWidth: Sets the tick width (in px).
            ///   - tickColor: Sets the tick color.
            ///   - showTickLabels: Determines whether or not the tick labels are drawn.
            ///   - showTickPrefix: If *all*, all tick labels are displayed with a prefix.
            ///   - tickPrefix: Sets a tick label prefix.
            ///   - showTickSuffix: Same as `showtickprefix` but for tick suffixes.
            ///   - tickSuffix: Sets a tick label suffix.
            ///   - showExponent: If *all*, all exponents are shown besides their significands.
            ///   - exponentFormat: Determines a formatting rule for the tick exponents.
            ///   - separateThousands: If "true", even 4-digit integers are separated
            ///   - tickFont: Sets the tick font.
            ///   - tickAngle: Sets the angle of the tick labels with respect to the horizontal.
            ///   - tickFormat: Sets the tick label formatting rule using d3 formatting mini-languages which are
            ///   very similar to those in Python.
            ///   - tickFormatStops:
            ///   - hoverFormat: Sets the hover text formatting rule using d3 formatting mini-languages which are
            ///   very similar to those in Python.
            ///   - showLine: Determines whether or not a line bounding this axis is drawn.
            ///   - lineColor: Sets the axis line color.
            ///   - lineWidth: Sets the width (in px) of the axis line.
            ///   - showGrid: Determines whether or not grid lines are drawn.
            ///   - gridColor: Sets the color of the grid lines.
            ///   - gridWidth: Sets the width (in px) of the grid lines.
            ///   - layer: Sets the layer on which this axis is displayed.
            ///   - min: The minimum value visible on this axis.
            ///   - uiRevision: Controls persistence of user-driven changes in axis `min`, and `title` if in
            ///   `editable: true` configuration.
            public init(title: Shared.Title? = nil, color: Color? = nil, tickMode: Shared.TickMode? = nil,
                    numTicks: Int? = nil, tick0: Anything? = nil, dTick: Anything? = nil, tickValues: [Double]? =
                    nil, tickText: [Double]? = nil, ticks: Shared.Ticks? = nil, tickLength: Double? = nil,
                    tickWidth: Double? = nil, tickColor: Color? = nil, showTickLabels: Bool? = nil, showTickPrefix:
                    Shared.ShowTickPrefix? = nil, tickPrefix: String? = nil, showTickSuffix: Shared.ShowTickSuffix?
                    = nil, tickSuffix: String? = nil, showExponent: Shared.ShowExponent? = nil, exponentFormat:
                    Shared.ExponentFormat? = nil, separateThousands: Bool? = nil, tickFont: Shared.Font? = nil,
                    tickAngle: Angle? = nil, tickFormat: String? = nil, tickFormatStops: [Shared.TickFormatStop]? =
                    nil, hoverFormat: String? = nil, showLine: Bool? = nil, lineColor: Color? = nil, lineWidth:
                    Double? = nil, showGrid: Bool? = nil, gridColor: Color? = nil, gridWidth: Double? = nil, layer:
                    Shared.Layer? = nil, min: Double? = nil, uiRevision: Anything? = nil) {
                self.title = title
                self.color = color
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
                self.separateThousands = separateThousands
                self.tickFont = tickFont
                self.tickAngle = tickAngle
                self.tickFormat = tickFormat
                self.tickFormatStops = tickFormatStops
                self.hoverFormat = hoverFormat
                self.showLine = showLine
                self.lineColor = lineColor
                self.lineWidth = lineWidth
                self.showGrid = showGrid
                self.gridColor = gridColor
                self.gridWidth = gridWidth
                self.layer = layer
                self.min = min
                self.uiRevision = uiRevision
            }
            
        }
        public var bAxis: BAxis? = nil
    
        public struct CAxis: Encodable {
            public var title: Shared.Title? = nil
        
            /// Sets default for all colors associated with this axis all at once: line, font, tick, and grid
            /// colors.
            /// 
            /// Grid color is lightened by blending this with the plot background Individual pieces can override
            /// this.
            public var color: Color? = nil
        
            /// Sets the tick mode for this axis.
            /// 
            /// If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is
            /// determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value
            /// if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via
            /// `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is
            /// provided).
            public var tickMode: Shared.TickMode? = nil
        
            /// Specifies the maximum number of ticks for the particular axis.
            /// 
            /// The actual number of ticks will be chosen automatically to be less than or equal to `nticks`.
            /// Has an effect only if `tickmode` is set to *auto*.
            public var numTicks: Int? = nil
        
            /// Sets the placement of the first tick on this axis.
            /// 
            /// Use with `dtick`. If the axis `type` is *log*, then you must take the log of your starting tick
            /// (e.g. to set the starting tick to 100, set the `tick0` to 2) except when `dtick`=*L<f>* (see
            /// `dtick` for more info). If the axis `type` is *date*, it should be a date string, like date
            /// data. If the axis `type` is *category*, it should be a number, using the scale where each
            /// category is assigned a serial number from zero in the order it appears.
            public var tick0: Anything? = nil
        
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
            public var dTick: Anything? = nil
        
            /// Sets the values at which ticks on this axis appear.
            /// 
            /// Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
            public var tickValues: [Double]? = nil
        
            /// Sets the text displayed at the ticks position via `tickvals`.
            /// 
            /// Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
            public var tickText: [Double]? = nil
        
            /// Determines whether ticks are drawn or not.
            /// 
            /// If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside
            /// (inside) the axis lines.
            public var ticks: Shared.Ticks? = nil
        
            /// Sets the tick length (in px).
            public var tickLength: Double? = nil
        
            /// Sets the tick width (in px).
            public var tickWidth: Double? = nil
        
            /// Sets the tick color.
            public var tickColor: Color? = nil
        
            /// Determines whether or not the tick labels are drawn.
            public var showTickLabels: Bool? = nil
        
            /// If *all*, all tick labels are displayed with a prefix.
            /// 
            /// If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is
            /// displayed with a suffix. If *none*, tick prefixes are hidden.
            public var showTickPrefix: Shared.ShowTickPrefix? = nil
        
            /// Sets a tick label prefix.
            public var tickPrefix: String? = nil
        
            /// Same as `showtickprefix` but for tick suffixes.
            public var showTickSuffix: Shared.ShowTickSuffix? = nil
        
            /// Sets a tick label suffix.
            public var tickSuffix: String? = nil
        
            /// If *all*, all exponents are shown besides their significands.
            /// 
            /// If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the
            /// last tick is shown. If *none*, no exponents appear.
            public var showExponent: Shared.ShowExponent? = nil
        
            /// Determines a formatting rule for the tick exponents.
            /// 
            /// For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*,
            /// 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
            public var exponentFormat: Shared.ExponentFormat? = nil
        
            /// If "true", even 4-digit integers are separated
            public var separateThousands: Bool? = nil
        
            /// Sets the tick font.
            public var tickFont: Shared.Font? = nil
        
            /// Sets the angle of the tick labels with respect to the horizontal.
            /// 
            /// For example, a `tickangle` of -90 draws the tick labels vertically.
            public var tickAngle: Angle? = nil
        
            /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to
            /// those in Python.
            /// 
            /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
            /// And for dates see:
            /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
            /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
            /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            public var tickFormat: String? = nil
        
            public var tickFormatStops: [Shared.TickFormatStop]? = nil
        
            /// Sets the hover text formatting rule using d3 formatting mini-languages which are very similar to
            /// those in Python.
            /// 
            /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
            /// And for dates see:
            /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
            /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
            /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            public var hoverFormat: String? = nil
        
            /// Determines whether or not a line bounding this axis is drawn.
            public var showLine: Bool? = nil
        
            /// Sets the axis line color.
            public var lineColor: Color? = nil
        
            /// Sets the width (in px) of the axis line.
            public var lineWidth: Double? = nil
        
            /// Determines whether or not grid lines are drawn.
            /// 
            /// If *true*, the grid lines are drawn at every tick mark.
            public var showGrid: Bool? = nil
        
            /// Sets the color of the grid lines.
            public var gridColor: Color? = nil
        
            /// Sets the width (in px) of the grid lines.
            public var gridWidth: Double? = nil
        
            /// Sets the layer on which this axis is displayed.
            /// 
            /// If *above traces*, this axis is displayed above all the subplot's traces If *below traces*, this
            /// axis is displayed below all the subplot's traces, but above the grid lines. Useful when used
            /// together with scatter-like traces with `cliponaxis` set to *false* to show markers and/or text
            /// nodes above this axis.
            public var layer: Shared.Layer? = nil
        
            /// The minimum value visible on this axis.
            /// 
            /// The maximum is determined by the sum minus the minimum values of the other two axes. The full
            /// view corresponds to all the minima set to zero.
            public var min: Double? = nil
        
            /// Controls persistence of user-driven changes in axis `min`, and `title` if in `editable: true`
            /// configuration.
            /// 
            /// Defaults to `ternary<N>.uirevision`.
            public var uiRevision: Anything? = nil
        
            /// Decoding and encoding keys compatible with Plotly schema.
            enum CodingKeys: String, CodingKey {
                case title
                case color
                case tickMode = "tickmode"
                case numTicks = "nticks"
                case tick0
                case dTick = "dtick"
                case tickValues = "tickvals"
                case tickText = "ticktext"
                case ticks
                case tickLength = "ticklen"
                case tickWidth = "tickwidth"
                case tickColor = "tickcolor"
                case showTickLabels = "showticklabels"
                case showTickPrefix = "showtickprefix"
                case tickPrefix = "tickprefix"
                case showTickSuffix = "showticksuffix"
                case tickSuffix = "ticksuffix"
                case showExponent = "showexponent"
                case exponentFormat = "exponentformat"
                case separateThousands = "separatethousands"
                case tickFont = "tickfont"
                case tickAngle = "tickangle"
                case tickFormat = "tickformat"
                case tickFormatStops = "tickformatstops"
                case hoverFormat = "hoverformat"
                case showLine = "showline"
                case lineColor = "linecolor"
                case lineWidth = "linewidth"
                case showGrid = "showgrid"
                case gridColor = "gridcolor"
                case gridWidth = "gridwidth"
                case layer
                case min
                case uiRevision = "uirevision"
            }
            
            /// Creates `CAxis` object with specified properties.
            /// 
            /// - Parameters:
            ///   - title:
            ///   - color: Sets default for all colors associated with this axis all at once: line, font, tick,
            ///   and grid colors.
            ///   - tickMode: Sets the tick mode for this axis.
            ///   - numTicks: Specifies the maximum number of ticks for the particular axis.
            ///   - tick0: Sets the placement of the first tick on this axis.
            ///   - dTick: Sets the step in-between ticks on this axis.
            ///   - tickValues: Sets the values at which ticks on this axis appear.
            ///   - tickText: Sets the text displayed at the ticks position via `tickvals`.
            ///   - ticks: Determines whether ticks are drawn or not.
            ///   - tickLength: Sets the tick length (in px).
            ///   - tickWidth: Sets the tick width (in px).
            ///   - tickColor: Sets the tick color.
            ///   - showTickLabels: Determines whether or not the tick labels are drawn.
            ///   - showTickPrefix: If *all*, all tick labels are displayed with a prefix.
            ///   - tickPrefix: Sets a tick label prefix.
            ///   - showTickSuffix: Same as `showtickprefix` but for tick suffixes.
            ///   - tickSuffix: Sets a tick label suffix.
            ///   - showExponent: If *all*, all exponents are shown besides their significands.
            ///   - exponentFormat: Determines a formatting rule for the tick exponents.
            ///   - separateThousands: If "true", even 4-digit integers are separated
            ///   - tickFont: Sets the tick font.
            ///   - tickAngle: Sets the angle of the tick labels with respect to the horizontal.
            ///   - tickFormat: Sets the tick label formatting rule using d3 formatting mini-languages which are
            ///   very similar to those in Python.
            ///   - tickFormatStops:
            ///   - hoverFormat: Sets the hover text formatting rule using d3 formatting mini-languages which are
            ///   very similar to those in Python.
            ///   - showLine: Determines whether or not a line bounding this axis is drawn.
            ///   - lineColor: Sets the axis line color.
            ///   - lineWidth: Sets the width (in px) of the axis line.
            ///   - showGrid: Determines whether or not grid lines are drawn.
            ///   - gridColor: Sets the color of the grid lines.
            ///   - gridWidth: Sets the width (in px) of the grid lines.
            ///   - layer: Sets the layer on which this axis is displayed.
            ///   - min: The minimum value visible on this axis.
            ///   - uiRevision: Controls persistence of user-driven changes in axis `min`, and `title` if in
            ///   `editable: true` configuration.
            public init(title: Shared.Title? = nil, color: Color? = nil, tickMode: Shared.TickMode? = nil,
                    numTicks: Int? = nil, tick0: Anything? = nil, dTick: Anything? = nil, tickValues: [Double]? =
                    nil, tickText: [Double]? = nil, ticks: Shared.Ticks? = nil, tickLength: Double? = nil,
                    tickWidth: Double? = nil, tickColor: Color? = nil, showTickLabels: Bool? = nil, showTickPrefix:
                    Shared.ShowTickPrefix? = nil, tickPrefix: String? = nil, showTickSuffix: Shared.ShowTickSuffix?
                    = nil, tickSuffix: String? = nil, showExponent: Shared.ShowExponent? = nil, exponentFormat:
                    Shared.ExponentFormat? = nil, separateThousands: Bool? = nil, tickFont: Shared.Font? = nil,
                    tickAngle: Angle? = nil, tickFormat: String? = nil, tickFormatStops: [Shared.TickFormatStop]? =
                    nil, hoverFormat: String? = nil, showLine: Bool? = nil, lineColor: Color? = nil, lineWidth:
                    Double? = nil, showGrid: Bool? = nil, gridColor: Color? = nil, gridWidth: Double? = nil, layer:
                    Shared.Layer? = nil, min: Double? = nil, uiRevision: Anything? = nil) {
                self.title = title
                self.color = color
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
                self.separateThousands = separateThousands
                self.tickFont = tickFont
                self.tickAngle = tickAngle
                self.tickFormat = tickFormat
                self.tickFormatStops = tickFormatStops
                self.hoverFormat = hoverFormat
                self.showLine = showLine
                self.lineColor = lineColor
                self.lineWidth = lineWidth
                self.showGrid = showGrid
                self.gridColor = gridColor
                self.gridWidth = gridWidth
                self.layer = layer
                self.min = min
                self.uiRevision = uiRevision
            }
            
        }
        public var cAxis: CAxis? = nil
    
        /// Controls persistence of user-driven changes in axis `min` and `title`, if not overridden in the
        /// individual axes.
        /// 
        /// Defaults to `layout.uirevision`.
        public var uiRevision: Anything? = nil
    
        /// Decoding and encoding keys compatible with Plotly schema.
        enum CodingKeys: String, CodingKey {
            case domain
            case backgroundColor = "bgcolor"
            case sum
            case aAxis = "aaxis"
            case bAxis = "baxis"
            case cAxis = "caxis"
            case uiRevision = "uirevision"
        }
        
        /// Creates `Ternary` object with specified properties.
        /// 
        /// - Parameters:
        ///   - uid:
        ///   - domain:
        ///   - backgroundColor: Set the background color of the subplot
        ///   - sum: The number each triplet should sum to, and the maximum range of each axis
        ///   - aAxis:
        ///   - bAxis:
        ///   - cAxis:
        ///   - uiRevision: Controls persistence of user-driven changes in axis `min` and `title`, if not
        ///   overridden in the individual axes.
        public init(uid: UInt = UInt.random(in: 2...UInt.max), domain: Shared.Domain? = nil,
                backgroundColor: Color? = nil, sum: Double? = nil, aAxis: AAxis? = nil, bAxis: BAxis? = nil,
                cAxis: CAxis? = nil, uiRevision: Anything? = nil) {
            self.uid = uid
            self.domain = domain
            self.backgroundColor = backgroundColor
            self.sum = sum
            self.aAxis = aAxis
            self.bAxis = bAxis
            self.cAxis = cAxis
            self.uiRevision = uiRevision
        }
        
    }
    public var ternary: [Ternary] = []

    public class Scene: Encodable {
        public var uid: UInt = UInt.random(in: 2...UInt.max)
    
        public var backgroundColor: Color? = nil
    
        public struct Camera: Encodable {
            /// Sets the (x,y,z) components of the 'up' camera vector.
            /// 
            /// This vector determines the up direction of this scene with respect to the page. The default is
            /// *{x: 0, y: 0, z: 1}* which means that the z axis points up.
            public struct Up: Encodable {
                public var x: Double? = nil
            
                public var y: Double? = nil
            
                public var z: Double? = nil
            
                /// Creates `Up` object with specified properties.
                public init(x: Double? = nil, y: Double? = nil, z: Double? = nil) {
                    self.x = x
                    self.y = y
                    self.z = z
                }
                
            }
            /// Sets the (x,y,z) components of the 'up' camera vector.
            /// 
            /// This vector determines the up direction of this scene with respect to the page. The default is
            /// *{x: 0, y: 0, z: 1}* which means that the z axis points up.
            public var up: Up? = nil
        
            /// Sets the (x,y,z) components of the 'center' camera vector This vector determines the translation
            /// (x,y,z) space about the center of this scene.
            /// 
            /// By default, there is no such translation.
            public struct Center: Encodable {
                public var x: Double? = nil
            
                public var y: Double? = nil
            
                public var z: Double? = nil
            
                /// Creates `Center` object with specified properties.
                public init(x: Double? = nil, y: Double? = nil, z: Double? = nil) {
                    self.x = x
                    self.y = y
                    self.z = z
                }
                
            }
            /// Sets the (x,y,z) components of the 'center' camera vector This vector determines the translation
            /// (x,y,z) space about the center of this scene.
            /// 
            /// By default, there is no such translation.
            public var center: Center? = nil
        
            /// Sets the (x,y,z) components of the 'eye' camera vector.
            /// 
            /// This vector determines the view point about the origin of this scene.
            public struct Eye: Encodable {
                public var x: Double? = nil
            
                public var y: Double? = nil
            
                public var z: Double? = nil
            
                /// Creates `Eye` object with specified properties.
                public init(x: Double? = nil, y: Double? = nil, z: Double? = nil) {
                    self.x = x
                    self.y = y
                    self.z = z
                }
                
            }
            /// Sets the (x,y,z) components of the 'eye' camera vector.
            /// 
            /// This vector determines the view point about the origin of this scene.
            public var eye: Eye? = nil
        
            public struct Projection: Encodable {
                /// Sets the projection type.
                /// 
                /// The projection type could be either *perspective* or *orthographic*. The default is
                /// *perspective*.
                public enum `Type`: String, Encodable {
                    case perspective
                    case orthographic
                }
                /// Sets the projection type.
                /// 
                /// The projection type could be either *perspective* or *orthographic*. The default is
                /// *perspective*.
                public var type: `Type`? = nil
            
                /// Creates `Projection` object with specified properties.
                /// 
                /// - Parameters:
                ///   - type: Sets the projection type.
                public init(type: `Type`? = nil) {
                    self.type = type
                }
                
            }
            public var projection: Projection? = nil
        
            /// Creates `Camera` object with specified properties.
            /// 
            /// - Parameters:
            ///   - up: Sets the (x,y,z) components of the 'up' camera vector.
            ///   - center: Sets the (x,y,z) components of the 'center' camera vector This vector determines the
            ///   translation (x,y,z) space about the center of this scene.
            ///   - eye: Sets the (x,y,z) components of the 'eye' camera vector.
            ///   - projection:
            public init(up: Up? = nil, center: Center? = nil, eye: Eye? = nil, projection: Projection? =
                    nil) {
                self.up = up
                self.center = center
                self.eye = eye
                self.projection = projection
            }
            
        }
        public var camera: Camera? = nil
    
        public var domain: Shared.Domain? = nil
    
        /// If *cube*, this scene's axes are drawn as a cube, regardless of the axes' ranges.
        /// 
        /// If *data*, this scene's axes are drawn in proportion with the axes' ranges. If *manual*, this
        /// scene's axes are drawn in proportion with the input of *aspectratio* (the default behavior if
        /// *aspectratio* is provided). If *auto*, this scene's axes are drawn using the results of *data*
        /// except when one axis is more than four times the size of the two others, where in that case the
        /// results of *cube* are used.
        public enum AspectMode: String, Encodable {
            case auto
            case cube
            case data
            case manual
        }
        /// If *cube*, this scene's axes are drawn as a cube, regardless of the axes' ranges.
        /// 
        /// If *data*, this scene's axes are drawn in proportion with the axes' ranges. If *manual*, this
        /// scene's axes are drawn in proportion with the input of *aspectratio* (the default behavior if
        /// *aspectratio* is provided). If *auto*, this scene's axes are drawn using the results of *data*
        /// except when one axis is more than four times the size of the two others, where in that case the
        /// results of *cube* are used.
        public var aspectMode: AspectMode? = nil
    
        /// Sets this scene's axis aspectratio.
        public struct AspectRatio: Encodable {
            public var x: Double? = nil
        
            public var y: Double? = nil
        
            public var z: Double? = nil
        
            /// Creates `AspectRatio` object with specified properties.
            public init(x: Double? = nil, y: Double? = nil, z: Double? = nil) {
                self.x = x
                self.y = y
                self.z = z
            }
            
        }
        /// Sets this scene's axis aspectratio.
        public var aspectRatio: AspectRatio? = nil
    
        public struct XAxis: Encodable {
            /// A single toggle to hide the axis while preserving interaction like dragging.
            /// 
            /// Default is true when a cheater plot is present on the axis, otherwise false
            public var visible: Bool? = nil
        
            /// Sets whether or not spikes starting from data points to this axis' wall are shown on hover.
            public var showSpikes: Bool? = nil
        
            /// Sets whether or not spikes extending from the projection data points to this axis' wall
            /// boundaries are shown on hover.
            public var spikeSides: Bool? = nil
        
            /// Sets the thickness (in px) of the spikes.
            public var spikeThickness: Double? = nil
        
            /// Sets the color of the spikes.
            public var spikeColor: Color? = nil
        
            /// Sets whether or not this axis' wall has a background color.
            public var showBackground: Bool? = nil
        
            /// Sets the background color of this axis' wall.
            public var backgroundColor: Color? = nil
        
            /// Sets whether or not this axis is labeled
            public var showAxesLabels: Bool? = nil
        
            /// Sets default for all colors associated with this axis all at once: line, font, tick, and grid
            /// colors.
            /// 
            /// Grid color is lightened by blending this with the plot background Individual pieces can override
            /// this.
            public var color: Color? = nil
        
            /// Specifies the ordering logic for the case of categorical variables.
            /// 
            /// By default, plotly uses *trace*, which specifies the order that is present in the data supplied.
            /// Set `categoryorder` to *category ascending* or *category descending* if order should be
            /// determined by the alphanumerical order of the category names. Set `categoryorder` to *array* to
            /// derive the ordering from the attribute `categoryarray`. If a category is not found in the
            /// `categoryarray` array, the sorting behavior for that attribute will be identical to the *trace*
            /// mode. The unspecified categories will follow the categories in `categoryarray`. Set
            /// `categoryorder` to *total ascending* or *total descending* if order should be determined by the
            /// numerical order of the values. Similarly, the order can be determined by the min, max, sum, mean
            /// or median of all the values.
            public var categoryOrder: Shared.CategoryOrder? = nil
        
            /// Sets the order in which categories on this axis appear.
            /// 
            /// Only has an effect if `categoryorder` is set to *array*. Used with `categoryorder`.
            public var categoryArray: [Double]? = nil
        
            public var title: Shared.Title? = nil
        
            /// Sets the axis type.
            /// 
            /// By default, plotly attempts to determined the axis type by looking into the data of the traces
            /// that referenced the axis in question.
            public enum `Type`: String, Encodable {
                case auto = "-"
                case linear
                case log
                case date
                case category
            }
            /// Sets the axis type.
            /// 
            /// By default, plotly attempts to determined the axis type by looking into the data of the traces
            /// that referenced the axis in question.
            public var type: `Type`? = nil
        
            /// Determines whether or not the range of this axis is computed in relation to the input data.
            /// 
            /// See `rangemode` for more info. If `range` is provided, then `autorange` is set to *false*.
            public var autoRange: Shared.AutoRange? = nil
        
            /// If *normal*, the range is computed in relation to the extrema of the input data.
            /// 
            /// If *tozero*`, the range extends to 0, regardless of the input data If *nonnegative*, the range
            /// is non-negative, regardless of the input data. Applies only to linear axes.
            public var rangeMode: Shared.RangeMode? = nil
        
            /// Sets the range of this axis.
            /// 
            /// If the axis `type` is *log*, then you must take the log of your desired range (e.g. to set the
            /// range from 1 to 100, set the range from 0 to 2). If the axis `type` is *date*, it should be date
            /// strings, like date data, though Date objects and unix milliseconds will be accepted and
            /// converted to strings. If the axis `type` is *category*, it should be numbers, using the scale
            /// where each category is assigned a serial number from zero in the order it appears.
            public var range: InfoArray? = nil
        
            /// Sets the tick mode for this axis.
            /// 
            /// If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is
            /// determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value
            /// if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via
            /// `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is
            /// provided).
            public var tickMode: Shared.TickMode? = nil
        
            /// Specifies the maximum number of ticks for the particular axis.
            /// 
            /// The actual number of ticks will be chosen automatically to be less than or equal to `nticks`.
            /// Has an effect only if `tickmode` is set to *auto*.
            public var numTicks: Int? = nil
        
            /// Sets the placement of the first tick on this axis.
            /// 
            /// Use with `dtick`. If the axis `type` is *log*, then you must take the log of your starting tick
            /// (e.g. to set the starting tick to 100, set the `tick0` to 2) except when `dtick`=*L<f>* (see
            /// `dtick` for more info). If the axis `type` is *date*, it should be a date string, like date
            /// data. If the axis `type` is *category*, it should be a number, using the scale where each
            /// category is assigned a serial number from zero in the order it appears.
            public var tick0: Anything? = nil
        
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
            public var dTick: Anything? = nil
        
            /// Sets the values at which ticks on this axis appear.
            /// 
            /// Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
            public var tickValues: [Double]? = nil
        
            /// Sets the text displayed at the ticks position via `tickvals`.
            /// 
            /// Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
            public var tickText: [Double]? = nil
        
            /// Determines whether ticks are drawn or not.
            /// 
            /// If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside
            /// (inside) the axis lines.
            public var ticks: Shared.Ticks? = nil
        
            /// Determines if the axis lines or/and ticks are mirrored to the opposite side of the plotting
            /// area.
            /// 
            /// If *true*, the axis lines are mirrored. If *ticks*, the axis lines and ticks are mirrored. If
            /// *false*, mirroring is disable. If *all*, axis lines are mirrored on all shared-axes subplots. If
            /// *allticks*, axis lines and ticks are mirrored on all shared-axes subplots.
            public var mirror: Shared.Mirror? = nil
        
            /// Sets the tick length (in px).
            public var tickLength: Double? = nil
        
            /// Sets the tick width (in px).
            public var tickWidth: Double? = nil
        
            /// Sets the tick color.
            public var tickColor: Color? = nil
        
            /// Determines whether or not the tick labels are drawn.
            public var showTickLabels: Bool? = nil
        
            /// Sets the tick font.
            public var tickFont: Shared.Font? = nil
        
            /// Sets the angle of the tick labels with respect to the horizontal.
            /// 
            /// For example, a `tickangle` of -90 draws the tick labels vertically.
            public var tickAngle: Angle? = nil
        
            /// Sets a tick label prefix.
            public var tickPrefix: String? = nil
        
            /// If *all*, all tick labels are displayed with a prefix.
            /// 
            /// If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is
            /// displayed with a suffix. If *none*, tick prefixes are hidden.
            public var showTickPrefix: Shared.ShowTickPrefix? = nil
        
            /// Sets a tick label suffix.
            public var tickSuffix: String? = nil
        
            /// Same as `showtickprefix` but for tick suffixes.
            public var showTickSuffix: Shared.ShowTickSuffix? = nil
        
            /// If *all*, all exponents are shown besides their significands.
            /// 
            /// If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the
            /// last tick is shown. If *none*, no exponents appear.
            public var showExponent: Shared.ShowExponent? = nil
        
            /// Determines a formatting rule for the tick exponents.
            /// 
            /// For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*,
            /// 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
            public var exponentFormat: Shared.ExponentFormat? = nil
        
            /// If "true", even 4-digit integers are separated
            public var separateThousands: Bool? = nil
        
            /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to
            /// those in Python.
            /// 
            /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
            /// And for dates see:
            /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
            /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
            /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            public var tickFormat: String? = nil
        
            public var tickFormatStops: [Shared.TickFormatStop]? = nil
        
            /// Sets the hover text formatting rule using d3 formatting mini-languages which are very similar to
            /// those in Python.
            /// 
            /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
            /// And for dates see:
            /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
            /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
            /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            public var hoverFormat: String? = nil
        
            /// Determines whether or not a line bounding this axis is drawn.
            public var showLine: Bool? = nil
        
            /// Sets the axis line color.
            public var lineColor: Color? = nil
        
            /// Sets the width (in px) of the axis line.
            public var lineWidth: Double? = nil
        
            /// Determines whether or not grid lines are drawn.
            /// 
            /// If *true*, the grid lines are drawn at every tick mark.
            public var showGrid: Bool? = nil
        
            /// Sets the color of the grid lines.
            public var gridColor: Color? = nil
        
            /// Sets the width (in px) of the grid lines.
            public var gridWidth: Double? = nil
        
            /// Determines whether or not a line is drawn at along the 0 value of this axis.
            /// 
            /// If *true*, the zero line is drawn on top of the grid lines.
            public var zeroLine: Bool? = nil
        
            /// Sets the line color of the zero line.
            public var zeroLineColor: Color? = nil
        
            /// Sets the width (in px) of the zero line.
            public var zeroLineWidth: Double? = nil
        
            /// Sets the calendar system to use for `range` and `tick0` if this is a date axis.
            /// 
            /// This does not set the calendar for interpreting data on this axis, that's specified in the trace
            /// or via the global `layout.calendar`
            public var calendar: Shared.Calendar? = nil
        
            /// Decoding and encoding keys compatible with Plotly schema.
            enum CodingKeys: String, CodingKey {
                case visible
                case showSpikes = "showspikes"
                case spikeSides = "spikesides"
                case spikeThickness = "spikethickness"
                case spikeColor = "spikecolor"
                case showBackground = "showbackground"
                case backgroundColor = "backgroundcolor"
                case showAxesLabels = "showaxeslabels"
                case color
                case categoryOrder = "categoryorder"
                case categoryArray = "categoryarray"
                case title
                case type
                case autoRange = "autorange"
                case rangeMode = "rangemode"
                case range
                case tickMode = "tickmode"
                case numTicks = "nticks"
                case tick0
                case dTick = "dtick"
                case tickValues = "tickvals"
                case tickText = "ticktext"
                case ticks
                case mirror
                case tickLength = "ticklen"
                case tickWidth = "tickwidth"
                case tickColor = "tickcolor"
                case showTickLabels = "showticklabels"
                case tickFont = "tickfont"
                case tickAngle = "tickangle"
                case tickPrefix = "tickprefix"
                case showTickPrefix = "showtickprefix"
                case tickSuffix = "ticksuffix"
                case showTickSuffix = "showticksuffix"
                case showExponent = "showexponent"
                case exponentFormat = "exponentformat"
                case separateThousands = "separatethousands"
                case tickFormat = "tickformat"
                case tickFormatStops = "tickformatstops"
                case hoverFormat = "hoverformat"
                case showLine = "showline"
                case lineColor = "linecolor"
                case lineWidth = "linewidth"
                case showGrid = "showgrid"
                case gridColor = "gridcolor"
                case gridWidth = "gridwidth"
                case zeroLine = "zeroline"
                case zeroLineColor = "zerolinecolor"
                case zeroLineWidth = "zerolinewidth"
                case calendar
            }
            
            /// Creates `XAxis` object with specified properties.
            /// 
            /// - Parameters:
            ///   - visible: A single toggle to hide the axis while preserving interaction like dragging.
            ///   - showSpikes: Sets whether or not spikes starting from data points to this axis' wall are shown
            ///   on hover.
            ///   - spikeSides: Sets whether or not spikes extending from the projection data points to this axis'
            ///   wall boundaries are shown on hover.
            ///   - spikeThickness: Sets the thickness (in px) of the spikes.
            ///   - spikeColor: Sets the color of the spikes.
            ///   - showBackground: Sets whether or not this axis' wall has a background color.
            ///   - backgroundColor: Sets the background color of this axis' wall.
            ///   - showAxesLabels: Sets whether or not this axis is labeled
            ///   - color: Sets default for all colors associated with this axis all at once: line, font, tick,
            ///   and grid colors.
            ///   - categoryOrder: Specifies the ordering logic for the case of categorical variables.
            ///   - categoryArray: Sets the order in which categories on this axis appear.
            ///   - title:
            ///   - type: Sets the axis type.
            ///   - autoRange: Determines whether or not the range of this axis is computed in relation to the
            ///   input data.
            ///   - rangeMode: If *normal*, the range is computed in relation to the extrema of the input data.
            ///   - range: Sets the range of this axis.
            ///   - tickMode: Sets the tick mode for this axis.
            ///   - numTicks: Specifies the maximum number of ticks for the particular axis.
            ///   - tick0: Sets the placement of the first tick on this axis.
            ///   - dTick: Sets the step in-between ticks on this axis.
            ///   - tickValues: Sets the values at which ticks on this axis appear.
            ///   - tickText: Sets the text displayed at the ticks position via `tickvals`.
            ///   - ticks: Determines whether ticks are drawn or not.
            ///   - mirror: Determines if the axis lines or/and ticks are mirrored to the opposite side of the
            ///   plotting area.
            ///   - tickLength: Sets the tick length (in px).
            ///   - tickWidth: Sets the tick width (in px).
            ///   - tickColor: Sets the tick color.
            ///   - showTickLabels: Determines whether or not the tick labels are drawn.
            ///   - tickFont: Sets the tick font.
            ///   - tickAngle: Sets the angle of the tick labels with respect to the horizontal.
            ///   - tickPrefix: Sets a tick label prefix.
            ///   - showTickPrefix: If *all*, all tick labels are displayed with a prefix.
            ///   - tickSuffix: Sets a tick label suffix.
            ///   - showTickSuffix: Same as `showtickprefix` but for tick suffixes.
            ///   - showExponent: If *all*, all exponents are shown besides their significands.
            ///   - exponentFormat: Determines a formatting rule for the tick exponents.
            ///   - separateThousands: If "true", even 4-digit integers are separated
            ///   - tickFormat: Sets the tick label formatting rule using d3 formatting mini-languages which are
            ///   very similar to those in Python.
            ///   - tickFormatStops:
            ///   - hoverFormat: Sets the hover text formatting rule using d3 formatting mini-languages which are
            ///   very similar to those in Python.
            ///   - showLine: Determines whether or not a line bounding this axis is drawn.
            ///   - lineColor: Sets the axis line color.
            ///   - lineWidth: Sets the width (in px) of the axis line.
            ///   - showGrid: Determines whether or not grid lines are drawn.
            ///   - gridColor: Sets the color of the grid lines.
            ///   - gridWidth: Sets the width (in px) of the grid lines.
            ///   - zeroLine: Determines whether or not a line is drawn at along the 0 value of this axis.
            ///   - zeroLineColor: Sets the line color of the zero line.
            ///   - zeroLineWidth: Sets the width (in px) of the zero line.
            ///   - calendar: Sets the calendar system to use for `range` and `tick0` if this is a date axis.
            public init(visible: Bool? = nil, showSpikes: Bool? = nil, spikeSides: Bool? = nil,
                    spikeThickness: Double? = nil, spikeColor: Color? = nil, showBackground: Bool? = nil,
                    backgroundColor: Color? = nil, showAxesLabels: Bool? = nil, color: Color? = nil, categoryOrder:
                    Shared.CategoryOrder? = nil, categoryArray: [Double]? = nil, title: Shared.Title? = nil, type:
                    `Type`? = nil, autoRange: Shared.AutoRange? = nil, rangeMode: Shared.RangeMode? = nil, range:
                    InfoArray? = nil, tickMode: Shared.TickMode? = nil, numTicks: Int? = nil, tick0: Anything? =
                    nil, dTick: Anything? = nil, tickValues: [Double]? = nil, tickText: [Double]? = nil, ticks:
                    Shared.Ticks? = nil, mirror: Shared.Mirror? = nil, tickLength: Double? = nil, tickWidth: Double?
                    = nil, tickColor: Color? = nil, showTickLabels: Bool? = nil, tickFont: Shared.Font? = nil,
                    tickAngle: Angle? = nil, tickPrefix: String? = nil, showTickPrefix: Shared.ShowTickPrefix? =
                    nil, tickSuffix: String? = nil, showTickSuffix: Shared.ShowTickSuffix? = nil, showExponent:
                    Shared.ShowExponent? = nil, exponentFormat: Shared.ExponentFormat? = nil, separateThousands:
                    Bool? = nil, tickFormat: String? = nil, tickFormatStops: [Shared.TickFormatStop]? = nil,
                    hoverFormat: String? = nil, showLine: Bool? = nil, lineColor: Color? = nil, lineWidth: Double? =
                    nil, showGrid: Bool? = nil, gridColor: Color? = nil, gridWidth: Double? = nil, zeroLine: Bool? =
                    nil, zeroLineColor: Color? = nil, zeroLineWidth: Double? = nil, calendar: Shared.Calendar? =
                    nil) {
                self.visible = visible
                self.showSpikes = showSpikes
                self.spikeSides = spikeSides
                self.spikeThickness = spikeThickness
                self.spikeColor = spikeColor
                self.showBackground = showBackground
                self.backgroundColor = backgroundColor
                self.showAxesLabels = showAxesLabels
                self.color = color
                self.categoryOrder = categoryOrder
                self.categoryArray = categoryArray
                self.title = title
                self.type = type
                self.autoRange = autoRange
                self.rangeMode = rangeMode
                self.range = range
                self.tickMode = tickMode
                self.numTicks = numTicks
                self.tick0 = tick0
                self.dTick = dTick
                self.tickValues = tickValues
                self.tickText = tickText
                self.ticks = ticks
                self.mirror = mirror
                self.tickLength = tickLength
                self.tickWidth = tickWidth
                self.tickColor = tickColor
                self.showTickLabels = showTickLabels
                self.tickFont = tickFont
                self.tickAngle = tickAngle
                self.tickPrefix = tickPrefix
                self.showTickPrefix = showTickPrefix
                self.tickSuffix = tickSuffix
                self.showTickSuffix = showTickSuffix
                self.showExponent = showExponent
                self.exponentFormat = exponentFormat
                self.separateThousands = separateThousands
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
                self.calendar = calendar
            }
            
        }
        public var xAxis: XAxis? = nil
    
        public struct YAxis: Encodable {
            /// A single toggle to hide the axis while preserving interaction like dragging.
            /// 
            /// Default is true when a cheater plot is present on the axis, otherwise false
            public var visible: Bool? = nil
        
            /// Sets whether or not spikes starting from data points to this axis' wall are shown on hover.
            public var showSpikes: Bool? = nil
        
            /// Sets whether or not spikes extending from the projection data points to this axis' wall
            /// boundaries are shown on hover.
            public var spikeSides: Bool? = nil
        
            /// Sets the thickness (in px) of the spikes.
            public var spikeThickness: Double? = nil
        
            /// Sets the color of the spikes.
            public var spikeColor: Color? = nil
        
            /// Sets whether or not this axis' wall has a background color.
            public var showBackground: Bool? = nil
        
            /// Sets the background color of this axis' wall.
            public var backgroundColor: Color? = nil
        
            /// Sets whether or not this axis is labeled
            public var showAxesLabels: Bool? = nil
        
            /// Sets default for all colors associated with this axis all at once: line, font, tick, and grid
            /// colors.
            /// 
            /// Grid color is lightened by blending this with the plot background Individual pieces can override
            /// this.
            public var color: Color? = nil
        
            /// Specifies the ordering logic for the case of categorical variables.
            /// 
            /// By default, plotly uses *trace*, which specifies the order that is present in the data supplied.
            /// Set `categoryorder` to *category ascending* or *category descending* if order should be
            /// determined by the alphanumerical order of the category names. Set `categoryorder` to *array* to
            /// derive the ordering from the attribute `categoryarray`. If a category is not found in the
            /// `categoryarray` array, the sorting behavior for that attribute will be identical to the *trace*
            /// mode. The unspecified categories will follow the categories in `categoryarray`. Set
            /// `categoryorder` to *total ascending* or *total descending* if order should be determined by the
            /// numerical order of the values. Similarly, the order can be determined by the min, max, sum, mean
            /// or median of all the values.
            public var categoryOrder: Shared.CategoryOrder? = nil
        
            /// Sets the order in which categories on this axis appear.
            /// 
            /// Only has an effect if `categoryorder` is set to *array*. Used with `categoryorder`.
            public var categoryArray: [Double]? = nil
        
            public var title: Shared.Title? = nil
        
            /// Sets the axis type.
            /// 
            /// By default, plotly attempts to determined the axis type by looking into the data of the traces
            /// that referenced the axis in question.
            public enum `Type`: String, Encodable {
                case auto = "-"
                case linear
                case log
                case date
                case category
            }
            /// Sets the axis type.
            /// 
            /// By default, plotly attempts to determined the axis type by looking into the data of the traces
            /// that referenced the axis in question.
            public var type: `Type`? = nil
        
            /// Determines whether or not the range of this axis is computed in relation to the input data.
            /// 
            /// See `rangemode` for more info. If `range` is provided, then `autorange` is set to *false*.
            public var autoRange: Shared.AutoRange? = nil
        
            /// If *normal*, the range is computed in relation to the extrema of the input data.
            /// 
            /// If *tozero*`, the range extends to 0, regardless of the input data If *nonnegative*, the range
            /// is non-negative, regardless of the input data. Applies only to linear axes.
            public var rangeMode: Shared.RangeMode? = nil
        
            /// Sets the range of this axis.
            /// 
            /// If the axis `type` is *log*, then you must take the log of your desired range (e.g. to set the
            /// range from 1 to 100, set the range from 0 to 2). If the axis `type` is *date*, it should be date
            /// strings, like date data, though Date objects and unix milliseconds will be accepted and
            /// converted to strings. If the axis `type` is *category*, it should be numbers, using the scale
            /// where each category is assigned a serial number from zero in the order it appears.
            public var range: InfoArray? = nil
        
            /// Sets the tick mode for this axis.
            /// 
            /// If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is
            /// determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value
            /// if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via
            /// `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is
            /// provided).
            public var tickMode: Shared.TickMode? = nil
        
            /// Specifies the maximum number of ticks for the particular axis.
            /// 
            /// The actual number of ticks will be chosen automatically to be less than or equal to `nticks`.
            /// Has an effect only if `tickmode` is set to *auto*.
            public var numTicks: Int? = nil
        
            /// Sets the placement of the first tick on this axis.
            /// 
            /// Use with `dtick`. If the axis `type` is *log*, then you must take the log of your starting tick
            /// (e.g. to set the starting tick to 100, set the `tick0` to 2) except when `dtick`=*L<f>* (see
            /// `dtick` for more info). If the axis `type` is *date*, it should be a date string, like date
            /// data. If the axis `type` is *category*, it should be a number, using the scale where each
            /// category is assigned a serial number from zero in the order it appears.
            public var tick0: Anything? = nil
        
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
            public var dTick: Anything? = nil
        
            /// Sets the values at which ticks on this axis appear.
            /// 
            /// Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
            public var tickValues: [Double]? = nil
        
            /// Sets the text displayed at the ticks position via `tickvals`.
            /// 
            /// Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
            public var tickText: [Double]? = nil
        
            /// Determines whether ticks are drawn or not.
            /// 
            /// If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside
            /// (inside) the axis lines.
            public var ticks: Shared.Ticks? = nil
        
            /// Determines if the axis lines or/and ticks are mirrored to the opposite side of the plotting
            /// area.
            /// 
            /// If *true*, the axis lines are mirrored. If *ticks*, the axis lines and ticks are mirrored. If
            /// *false*, mirroring is disable. If *all*, axis lines are mirrored on all shared-axes subplots. If
            /// *allticks*, axis lines and ticks are mirrored on all shared-axes subplots.
            public var mirror: Shared.Mirror? = nil
        
            /// Sets the tick length (in px).
            public var tickLength: Double? = nil
        
            /// Sets the tick width (in px).
            public var tickWidth: Double? = nil
        
            /// Sets the tick color.
            public var tickColor: Color? = nil
        
            /// Determines whether or not the tick labels are drawn.
            public var showTickLabels: Bool? = nil
        
            /// Sets the tick font.
            public var tickFont: Shared.Font? = nil
        
            /// Sets the angle of the tick labels with respect to the horizontal.
            /// 
            /// For example, a `tickangle` of -90 draws the tick labels vertically.
            public var tickAngle: Angle? = nil
        
            /// Sets a tick label prefix.
            public var tickPrefix: String? = nil
        
            /// If *all*, all tick labels are displayed with a prefix.
            /// 
            /// If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is
            /// displayed with a suffix. If *none*, tick prefixes are hidden.
            public var showTickPrefix: Shared.ShowTickPrefix? = nil
        
            /// Sets a tick label suffix.
            public var tickSuffix: String? = nil
        
            /// Same as `showtickprefix` but for tick suffixes.
            public var showTickSuffix: Shared.ShowTickSuffix? = nil
        
            /// If *all*, all exponents are shown besides their significands.
            /// 
            /// If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the
            /// last tick is shown. If *none*, no exponents appear.
            public var showExponent: Shared.ShowExponent? = nil
        
            /// Determines a formatting rule for the tick exponents.
            /// 
            /// For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*,
            /// 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
            public var exponentFormat: Shared.ExponentFormat? = nil
        
            /// If "true", even 4-digit integers are separated
            public var separateThousands: Bool? = nil
        
            /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to
            /// those in Python.
            /// 
            /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
            /// And for dates see:
            /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
            /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
            /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            public var tickFormat: String? = nil
        
            public var tickFormatStops: [Shared.TickFormatStop]? = nil
        
            /// Sets the hover text formatting rule using d3 formatting mini-languages which are very similar to
            /// those in Python.
            /// 
            /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
            /// And for dates see:
            /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
            /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
            /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            public var hoverFormat: String? = nil
        
            /// Determines whether or not a line bounding this axis is drawn.
            public var showLine: Bool? = nil
        
            /// Sets the axis line color.
            public var lineColor: Color? = nil
        
            /// Sets the width (in px) of the axis line.
            public var lineWidth: Double? = nil
        
            /// Determines whether or not grid lines are drawn.
            /// 
            /// If *true*, the grid lines are drawn at every tick mark.
            public var showGrid: Bool? = nil
        
            /// Sets the color of the grid lines.
            public var gridColor: Color? = nil
        
            /// Sets the width (in px) of the grid lines.
            public var gridWidth: Double? = nil
        
            /// Determines whether or not a line is drawn at along the 0 value of this axis.
            /// 
            /// If *true*, the zero line is drawn on top of the grid lines.
            public var zeroLine: Bool? = nil
        
            /// Sets the line color of the zero line.
            public var zeroLineColor: Color? = nil
        
            /// Sets the width (in px) of the zero line.
            public var zeroLineWidth: Double? = nil
        
            /// Sets the calendar system to use for `range` and `tick0` if this is a date axis.
            /// 
            /// This does not set the calendar for interpreting data on this axis, that's specified in the trace
            /// or via the global `layout.calendar`
            public var calendar: Shared.Calendar? = nil
        
            /// Decoding and encoding keys compatible with Plotly schema.
            enum CodingKeys: String, CodingKey {
                case visible
                case showSpikes = "showspikes"
                case spikeSides = "spikesides"
                case spikeThickness = "spikethickness"
                case spikeColor = "spikecolor"
                case showBackground = "showbackground"
                case backgroundColor = "backgroundcolor"
                case showAxesLabels = "showaxeslabels"
                case color
                case categoryOrder = "categoryorder"
                case categoryArray = "categoryarray"
                case title
                case type
                case autoRange = "autorange"
                case rangeMode = "rangemode"
                case range
                case tickMode = "tickmode"
                case numTicks = "nticks"
                case tick0
                case dTick = "dtick"
                case tickValues = "tickvals"
                case tickText = "ticktext"
                case ticks
                case mirror
                case tickLength = "ticklen"
                case tickWidth = "tickwidth"
                case tickColor = "tickcolor"
                case showTickLabels = "showticklabels"
                case tickFont = "tickfont"
                case tickAngle = "tickangle"
                case tickPrefix = "tickprefix"
                case showTickPrefix = "showtickprefix"
                case tickSuffix = "ticksuffix"
                case showTickSuffix = "showticksuffix"
                case showExponent = "showexponent"
                case exponentFormat = "exponentformat"
                case separateThousands = "separatethousands"
                case tickFormat = "tickformat"
                case tickFormatStops = "tickformatstops"
                case hoverFormat = "hoverformat"
                case showLine = "showline"
                case lineColor = "linecolor"
                case lineWidth = "linewidth"
                case showGrid = "showgrid"
                case gridColor = "gridcolor"
                case gridWidth = "gridwidth"
                case zeroLine = "zeroline"
                case zeroLineColor = "zerolinecolor"
                case zeroLineWidth = "zerolinewidth"
                case calendar
            }
            
            /// Creates `YAxis` object with specified properties.
            /// 
            /// - Parameters:
            ///   - visible: A single toggle to hide the axis while preserving interaction like dragging.
            ///   - showSpikes: Sets whether or not spikes starting from data points to this axis' wall are shown
            ///   on hover.
            ///   - spikeSides: Sets whether or not spikes extending from the projection data points to this axis'
            ///   wall boundaries are shown on hover.
            ///   - spikeThickness: Sets the thickness (in px) of the spikes.
            ///   - spikeColor: Sets the color of the spikes.
            ///   - showBackground: Sets whether or not this axis' wall has a background color.
            ///   - backgroundColor: Sets the background color of this axis' wall.
            ///   - showAxesLabels: Sets whether or not this axis is labeled
            ///   - color: Sets default for all colors associated with this axis all at once: line, font, tick,
            ///   and grid colors.
            ///   - categoryOrder: Specifies the ordering logic for the case of categorical variables.
            ///   - categoryArray: Sets the order in which categories on this axis appear.
            ///   - title:
            ///   - type: Sets the axis type.
            ///   - autoRange: Determines whether or not the range of this axis is computed in relation to the
            ///   input data.
            ///   - rangeMode: If *normal*, the range is computed in relation to the extrema of the input data.
            ///   - range: Sets the range of this axis.
            ///   - tickMode: Sets the tick mode for this axis.
            ///   - numTicks: Specifies the maximum number of ticks for the particular axis.
            ///   - tick0: Sets the placement of the first tick on this axis.
            ///   - dTick: Sets the step in-between ticks on this axis.
            ///   - tickValues: Sets the values at which ticks on this axis appear.
            ///   - tickText: Sets the text displayed at the ticks position via `tickvals`.
            ///   - ticks: Determines whether ticks are drawn or not.
            ///   - mirror: Determines if the axis lines or/and ticks are mirrored to the opposite side of the
            ///   plotting area.
            ///   - tickLength: Sets the tick length (in px).
            ///   - tickWidth: Sets the tick width (in px).
            ///   - tickColor: Sets the tick color.
            ///   - showTickLabels: Determines whether or not the tick labels are drawn.
            ///   - tickFont: Sets the tick font.
            ///   - tickAngle: Sets the angle of the tick labels with respect to the horizontal.
            ///   - tickPrefix: Sets a tick label prefix.
            ///   - showTickPrefix: If *all*, all tick labels are displayed with a prefix.
            ///   - tickSuffix: Sets a tick label suffix.
            ///   - showTickSuffix: Same as `showtickprefix` but for tick suffixes.
            ///   - showExponent: If *all*, all exponents are shown besides their significands.
            ///   - exponentFormat: Determines a formatting rule for the tick exponents.
            ///   - separateThousands: If "true", even 4-digit integers are separated
            ///   - tickFormat: Sets the tick label formatting rule using d3 formatting mini-languages which are
            ///   very similar to those in Python.
            ///   - tickFormatStops:
            ///   - hoverFormat: Sets the hover text formatting rule using d3 formatting mini-languages which are
            ///   very similar to those in Python.
            ///   - showLine: Determines whether or not a line bounding this axis is drawn.
            ///   - lineColor: Sets the axis line color.
            ///   - lineWidth: Sets the width (in px) of the axis line.
            ///   - showGrid: Determines whether or not grid lines are drawn.
            ///   - gridColor: Sets the color of the grid lines.
            ///   - gridWidth: Sets the width (in px) of the grid lines.
            ///   - zeroLine: Determines whether or not a line is drawn at along the 0 value of this axis.
            ///   - zeroLineColor: Sets the line color of the zero line.
            ///   - zeroLineWidth: Sets the width (in px) of the zero line.
            ///   - calendar: Sets the calendar system to use for `range` and `tick0` if this is a date axis.
            public init(visible: Bool? = nil, showSpikes: Bool? = nil, spikeSides: Bool? = nil,
                    spikeThickness: Double? = nil, spikeColor: Color? = nil, showBackground: Bool? = nil,
                    backgroundColor: Color? = nil, showAxesLabels: Bool? = nil, color: Color? = nil, categoryOrder:
                    Shared.CategoryOrder? = nil, categoryArray: [Double]? = nil, title: Shared.Title? = nil, type:
                    `Type`? = nil, autoRange: Shared.AutoRange? = nil, rangeMode: Shared.RangeMode? = nil, range:
                    InfoArray? = nil, tickMode: Shared.TickMode? = nil, numTicks: Int? = nil, tick0: Anything? =
                    nil, dTick: Anything? = nil, tickValues: [Double]? = nil, tickText: [Double]? = nil, ticks:
                    Shared.Ticks? = nil, mirror: Shared.Mirror? = nil, tickLength: Double? = nil, tickWidth: Double?
                    = nil, tickColor: Color? = nil, showTickLabels: Bool? = nil, tickFont: Shared.Font? = nil,
                    tickAngle: Angle? = nil, tickPrefix: String? = nil, showTickPrefix: Shared.ShowTickPrefix? =
                    nil, tickSuffix: String? = nil, showTickSuffix: Shared.ShowTickSuffix? = nil, showExponent:
                    Shared.ShowExponent? = nil, exponentFormat: Shared.ExponentFormat? = nil, separateThousands:
                    Bool? = nil, tickFormat: String? = nil, tickFormatStops: [Shared.TickFormatStop]? = nil,
                    hoverFormat: String? = nil, showLine: Bool? = nil, lineColor: Color? = nil, lineWidth: Double? =
                    nil, showGrid: Bool? = nil, gridColor: Color? = nil, gridWidth: Double? = nil, zeroLine: Bool? =
                    nil, zeroLineColor: Color? = nil, zeroLineWidth: Double? = nil, calendar: Shared.Calendar? =
                    nil) {
                self.visible = visible
                self.showSpikes = showSpikes
                self.spikeSides = spikeSides
                self.spikeThickness = spikeThickness
                self.spikeColor = spikeColor
                self.showBackground = showBackground
                self.backgroundColor = backgroundColor
                self.showAxesLabels = showAxesLabels
                self.color = color
                self.categoryOrder = categoryOrder
                self.categoryArray = categoryArray
                self.title = title
                self.type = type
                self.autoRange = autoRange
                self.rangeMode = rangeMode
                self.range = range
                self.tickMode = tickMode
                self.numTicks = numTicks
                self.tick0 = tick0
                self.dTick = dTick
                self.tickValues = tickValues
                self.tickText = tickText
                self.ticks = ticks
                self.mirror = mirror
                self.tickLength = tickLength
                self.tickWidth = tickWidth
                self.tickColor = tickColor
                self.showTickLabels = showTickLabels
                self.tickFont = tickFont
                self.tickAngle = tickAngle
                self.tickPrefix = tickPrefix
                self.showTickPrefix = showTickPrefix
                self.tickSuffix = tickSuffix
                self.showTickSuffix = showTickSuffix
                self.showExponent = showExponent
                self.exponentFormat = exponentFormat
                self.separateThousands = separateThousands
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
                self.calendar = calendar
            }
            
        }
        public var yAxis: YAxis? = nil
    
        public struct ZAxis: Encodable {
            /// A single toggle to hide the axis while preserving interaction like dragging.
            /// 
            /// Default is true when a cheater plot is present on the axis, otherwise false
            public var visible: Bool? = nil
        
            /// Sets whether or not spikes starting from data points to this axis' wall are shown on hover.
            public var showSpikes: Bool? = nil
        
            /// Sets whether or not spikes extending from the projection data points to this axis' wall
            /// boundaries are shown on hover.
            public var spikeSides: Bool? = nil
        
            /// Sets the thickness (in px) of the spikes.
            public var spikeThickness: Double? = nil
        
            /// Sets the color of the spikes.
            public var spikeColor: Color? = nil
        
            /// Sets whether or not this axis' wall has a background color.
            public var showBackground: Bool? = nil
        
            /// Sets the background color of this axis' wall.
            public var backgroundColor: Color? = nil
        
            /// Sets whether or not this axis is labeled
            public var showAxesLabels: Bool? = nil
        
            /// Sets default for all colors associated with this axis all at once: line, font, tick, and grid
            /// colors.
            /// 
            /// Grid color is lightened by blending this with the plot background Individual pieces can override
            /// this.
            public var color: Color? = nil
        
            /// Specifies the ordering logic for the case of categorical variables.
            /// 
            /// By default, plotly uses *trace*, which specifies the order that is present in the data supplied.
            /// Set `categoryorder` to *category ascending* or *category descending* if order should be
            /// determined by the alphanumerical order of the category names. Set `categoryorder` to *array* to
            /// derive the ordering from the attribute `categoryarray`. If a category is not found in the
            /// `categoryarray` array, the sorting behavior for that attribute will be identical to the *trace*
            /// mode. The unspecified categories will follow the categories in `categoryarray`. Set
            /// `categoryorder` to *total ascending* or *total descending* if order should be determined by the
            /// numerical order of the values. Similarly, the order can be determined by the min, max, sum, mean
            /// or median of all the values.
            public var categoryOrder: Shared.CategoryOrder? = nil
        
            /// Sets the order in which categories on this axis appear.
            /// 
            /// Only has an effect if `categoryorder` is set to *array*. Used with `categoryorder`.
            public var categoryArray: [Double]? = nil
        
            public var title: Shared.Title? = nil
        
            /// Sets the axis type.
            /// 
            /// By default, plotly attempts to determined the axis type by looking into the data of the traces
            /// that referenced the axis in question.
            public enum `Type`: String, Encodable {
                case auto = "-"
                case linear
                case log
                case date
                case category
            }
            /// Sets the axis type.
            /// 
            /// By default, plotly attempts to determined the axis type by looking into the data of the traces
            /// that referenced the axis in question.
            public var type: `Type`? = nil
        
            /// Determines whether or not the range of this axis is computed in relation to the input data.
            /// 
            /// See `rangemode` for more info. If `range` is provided, then `autorange` is set to *false*.
            public var autoRange: Shared.AutoRange? = nil
        
            /// If *normal*, the range is computed in relation to the extrema of the input data.
            /// 
            /// If *tozero*`, the range extends to 0, regardless of the input data If *nonnegative*, the range
            /// is non-negative, regardless of the input data. Applies only to linear axes.
            public var rangeMode: Shared.RangeMode? = nil
        
            /// Sets the range of this axis.
            /// 
            /// If the axis `type` is *log*, then you must take the log of your desired range (e.g. to set the
            /// range from 1 to 100, set the range from 0 to 2). If the axis `type` is *date*, it should be date
            /// strings, like date data, though Date objects and unix milliseconds will be accepted and
            /// converted to strings. If the axis `type` is *category*, it should be numbers, using the scale
            /// where each category is assigned a serial number from zero in the order it appears.
            public var range: InfoArray? = nil
        
            /// Sets the tick mode for this axis.
            /// 
            /// If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is
            /// determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value
            /// if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via
            /// `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is
            /// provided).
            public var tickMode: Shared.TickMode? = nil
        
            /// Specifies the maximum number of ticks for the particular axis.
            /// 
            /// The actual number of ticks will be chosen automatically to be less than or equal to `nticks`.
            /// Has an effect only if `tickmode` is set to *auto*.
            public var numTicks: Int? = nil
        
            /// Sets the placement of the first tick on this axis.
            /// 
            /// Use with `dtick`. If the axis `type` is *log*, then you must take the log of your starting tick
            /// (e.g. to set the starting tick to 100, set the `tick0` to 2) except when `dtick`=*L<f>* (see
            /// `dtick` for more info). If the axis `type` is *date*, it should be a date string, like date
            /// data. If the axis `type` is *category*, it should be a number, using the scale where each
            /// category is assigned a serial number from zero in the order it appears.
            public var tick0: Anything? = nil
        
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
            public var dTick: Anything? = nil
        
            /// Sets the values at which ticks on this axis appear.
            /// 
            /// Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
            public var tickValues: [Double]? = nil
        
            /// Sets the text displayed at the ticks position via `tickvals`.
            /// 
            /// Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
            public var tickText: [Double]? = nil
        
            /// Determines whether ticks are drawn or not.
            /// 
            /// If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside
            /// (inside) the axis lines.
            public var ticks: Shared.Ticks? = nil
        
            /// Determines if the axis lines or/and ticks are mirrored to the opposite side of the plotting
            /// area.
            /// 
            /// If *true*, the axis lines are mirrored. If *ticks*, the axis lines and ticks are mirrored. If
            /// *false*, mirroring is disable. If *all*, axis lines are mirrored on all shared-axes subplots. If
            /// *allticks*, axis lines and ticks are mirrored on all shared-axes subplots.
            public var mirror: Shared.Mirror? = nil
        
            /// Sets the tick length (in px).
            public var tickLength: Double? = nil
        
            /// Sets the tick width (in px).
            public var tickWidth: Double? = nil
        
            /// Sets the tick color.
            public var tickColor: Color? = nil
        
            /// Determines whether or not the tick labels are drawn.
            public var showTickLabels: Bool? = nil
        
            /// Sets the tick font.
            public var tickFont: Shared.Font? = nil
        
            /// Sets the angle of the tick labels with respect to the horizontal.
            /// 
            /// For example, a `tickangle` of -90 draws the tick labels vertically.
            public var tickAngle: Angle? = nil
        
            /// Sets a tick label prefix.
            public var tickPrefix: String? = nil
        
            /// If *all*, all tick labels are displayed with a prefix.
            /// 
            /// If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is
            /// displayed with a suffix. If *none*, tick prefixes are hidden.
            public var showTickPrefix: Shared.ShowTickPrefix? = nil
        
            /// Sets a tick label suffix.
            public var tickSuffix: String? = nil
        
            /// Same as `showtickprefix` but for tick suffixes.
            public var showTickSuffix: Shared.ShowTickSuffix? = nil
        
            /// If *all*, all exponents are shown besides their significands.
            /// 
            /// If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the
            /// last tick is shown. If *none*, no exponents appear.
            public var showExponent: Shared.ShowExponent? = nil
        
            /// Determines a formatting rule for the tick exponents.
            /// 
            /// For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*,
            /// 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
            public var exponentFormat: Shared.ExponentFormat? = nil
        
            /// If "true", even 4-digit integers are separated
            public var separateThousands: Bool? = nil
        
            /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to
            /// those in Python.
            /// 
            /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
            /// And for dates see:
            /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
            /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
            /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            public var tickFormat: String? = nil
        
            public var tickFormatStops: [Shared.TickFormatStop]? = nil
        
            /// Sets the hover text formatting rule using d3 formatting mini-languages which are very similar to
            /// those in Python.
            /// 
            /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
            /// And for dates see:
            /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
            /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
            /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            public var hoverFormat: String? = nil
        
            /// Determines whether or not a line bounding this axis is drawn.
            public var showLine: Bool? = nil
        
            /// Sets the axis line color.
            public var lineColor: Color? = nil
        
            /// Sets the width (in px) of the axis line.
            public var lineWidth: Double? = nil
        
            /// Determines whether or not grid lines are drawn.
            /// 
            /// If *true*, the grid lines are drawn at every tick mark.
            public var showGrid: Bool? = nil
        
            /// Sets the color of the grid lines.
            public var gridColor: Color? = nil
        
            /// Sets the width (in px) of the grid lines.
            public var gridWidth: Double? = nil
        
            /// Determines whether or not a line is drawn at along the 0 value of this axis.
            /// 
            /// If *true*, the zero line is drawn on top of the grid lines.
            public var zeroLine: Bool? = nil
        
            /// Sets the line color of the zero line.
            public var zeroLineColor: Color? = nil
        
            /// Sets the width (in px) of the zero line.
            public var zeroLineWidth: Double? = nil
        
            /// Sets the calendar system to use for `range` and `tick0` if this is a date axis.
            /// 
            /// This does not set the calendar for interpreting data on this axis, that's specified in the trace
            /// or via the global `layout.calendar`
            public var calendar: Shared.Calendar? = nil
        
            /// Decoding and encoding keys compatible with Plotly schema.
            enum CodingKeys: String, CodingKey {
                case visible
                case showSpikes = "showspikes"
                case spikeSides = "spikesides"
                case spikeThickness = "spikethickness"
                case spikeColor = "spikecolor"
                case showBackground = "showbackground"
                case backgroundColor = "backgroundcolor"
                case showAxesLabels = "showaxeslabels"
                case color
                case categoryOrder = "categoryorder"
                case categoryArray = "categoryarray"
                case title
                case type
                case autoRange = "autorange"
                case rangeMode = "rangemode"
                case range
                case tickMode = "tickmode"
                case numTicks = "nticks"
                case tick0
                case dTick = "dtick"
                case tickValues = "tickvals"
                case tickText = "ticktext"
                case ticks
                case mirror
                case tickLength = "ticklen"
                case tickWidth = "tickwidth"
                case tickColor = "tickcolor"
                case showTickLabels = "showticklabels"
                case tickFont = "tickfont"
                case tickAngle = "tickangle"
                case tickPrefix = "tickprefix"
                case showTickPrefix = "showtickprefix"
                case tickSuffix = "ticksuffix"
                case showTickSuffix = "showticksuffix"
                case showExponent = "showexponent"
                case exponentFormat = "exponentformat"
                case separateThousands = "separatethousands"
                case tickFormat = "tickformat"
                case tickFormatStops = "tickformatstops"
                case hoverFormat = "hoverformat"
                case showLine = "showline"
                case lineColor = "linecolor"
                case lineWidth = "linewidth"
                case showGrid = "showgrid"
                case gridColor = "gridcolor"
                case gridWidth = "gridwidth"
                case zeroLine = "zeroline"
                case zeroLineColor = "zerolinecolor"
                case zeroLineWidth = "zerolinewidth"
                case calendar
            }
            
            /// Creates `ZAxis` object with specified properties.
            /// 
            /// - Parameters:
            ///   - visible: A single toggle to hide the axis while preserving interaction like dragging.
            ///   - showSpikes: Sets whether or not spikes starting from data points to this axis' wall are shown
            ///   on hover.
            ///   - spikeSides: Sets whether or not spikes extending from the projection data points to this axis'
            ///   wall boundaries are shown on hover.
            ///   - spikeThickness: Sets the thickness (in px) of the spikes.
            ///   - spikeColor: Sets the color of the spikes.
            ///   - showBackground: Sets whether or not this axis' wall has a background color.
            ///   - backgroundColor: Sets the background color of this axis' wall.
            ///   - showAxesLabels: Sets whether or not this axis is labeled
            ///   - color: Sets default for all colors associated with this axis all at once: line, font, tick,
            ///   and grid colors.
            ///   - categoryOrder: Specifies the ordering logic for the case of categorical variables.
            ///   - categoryArray: Sets the order in which categories on this axis appear.
            ///   - title:
            ///   - type: Sets the axis type.
            ///   - autoRange: Determines whether or not the range of this axis is computed in relation to the
            ///   input data.
            ///   - rangeMode: If *normal*, the range is computed in relation to the extrema of the input data.
            ///   - range: Sets the range of this axis.
            ///   - tickMode: Sets the tick mode for this axis.
            ///   - numTicks: Specifies the maximum number of ticks for the particular axis.
            ///   - tick0: Sets the placement of the first tick on this axis.
            ///   - dTick: Sets the step in-between ticks on this axis.
            ///   - tickValues: Sets the values at which ticks on this axis appear.
            ///   - tickText: Sets the text displayed at the ticks position via `tickvals`.
            ///   - ticks: Determines whether ticks are drawn or not.
            ///   - mirror: Determines if the axis lines or/and ticks are mirrored to the opposite side of the
            ///   plotting area.
            ///   - tickLength: Sets the tick length (in px).
            ///   - tickWidth: Sets the tick width (in px).
            ///   - tickColor: Sets the tick color.
            ///   - showTickLabels: Determines whether or not the tick labels are drawn.
            ///   - tickFont: Sets the tick font.
            ///   - tickAngle: Sets the angle of the tick labels with respect to the horizontal.
            ///   - tickPrefix: Sets a tick label prefix.
            ///   - showTickPrefix: If *all*, all tick labels are displayed with a prefix.
            ///   - tickSuffix: Sets a tick label suffix.
            ///   - showTickSuffix: Same as `showtickprefix` but for tick suffixes.
            ///   - showExponent: If *all*, all exponents are shown besides their significands.
            ///   - exponentFormat: Determines a formatting rule for the tick exponents.
            ///   - separateThousands: If "true", even 4-digit integers are separated
            ///   - tickFormat: Sets the tick label formatting rule using d3 formatting mini-languages which are
            ///   very similar to those in Python.
            ///   - tickFormatStops:
            ///   - hoverFormat: Sets the hover text formatting rule using d3 formatting mini-languages which are
            ///   very similar to those in Python.
            ///   - showLine: Determines whether or not a line bounding this axis is drawn.
            ///   - lineColor: Sets the axis line color.
            ///   - lineWidth: Sets the width (in px) of the axis line.
            ///   - showGrid: Determines whether or not grid lines are drawn.
            ///   - gridColor: Sets the color of the grid lines.
            ///   - gridWidth: Sets the width (in px) of the grid lines.
            ///   - zeroLine: Determines whether or not a line is drawn at along the 0 value of this axis.
            ///   - zeroLineColor: Sets the line color of the zero line.
            ///   - zeroLineWidth: Sets the width (in px) of the zero line.
            ///   - calendar: Sets the calendar system to use for `range` and `tick0` if this is a date axis.
            public init(visible: Bool? = nil, showSpikes: Bool? = nil, spikeSides: Bool? = nil,
                    spikeThickness: Double? = nil, spikeColor: Color? = nil, showBackground: Bool? = nil,
                    backgroundColor: Color? = nil, showAxesLabels: Bool? = nil, color: Color? = nil, categoryOrder:
                    Shared.CategoryOrder? = nil, categoryArray: [Double]? = nil, title: Shared.Title? = nil, type:
                    `Type`? = nil, autoRange: Shared.AutoRange? = nil, rangeMode: Shared.RangeMode? = nil, range:
                    InfoArray? = nil, tickMode: Shared.TickMode? = nil, numTicks: Int? = nil, tick0: Anything? =
                    nil, dTick: Anything? = nil, tickValues: [Double]? = nil, tickText: [Double]? = nil, ticks:
                    Shared.Ticks? = nil, mirror: Shared.Mirror? = nil, tickLength: Double? = nil, tickWidth: Double?
                    = nil, tickColor: Color? = nil, showTickLabels: Bool? = nil, tickFont: Shared.Font? = nil,
                    tickAngle: Angle? = nil, tickPrefix: String? = nil, showTickPrefix: Shared.ShowTickPrefix? =
                    nil, tickSuffix: String? = nil, showTickSuffix: Shared.ShowTickSuffix? = nil, showExponent:
                    Shared.ShowExponent? = nil, exponentFormat: Shared.ExponentFormat? = nil, separateThousands:
                    Bool? = nil, tickFormat: String? = nil, tickFormatStops: [Shared.TickFormatStop]? = nil,
                    hoverFormat: String? = nil, showLine: Bool? = nil, lineColor: Color? = nil, lineWidth: Double? =
                    nil, showGrid: Bool? = nil, gridColor: Color? = nil, gridWidth: Double? = nil, zeroLine: Bool? =
                    nil, zeroLineColor: Color? = nil, zeroLineWidth: Double? = nil, calendar: Shared.Calendar? =
                    nil) {
                self.visible = visible
                self.showSpikes = showSpikes
                self.spikeSides = spikeSides
                self.spikeThickness = spikeThickness
                self.spikeColor = spikeColor
                self.showBackground = showBackground
                self.backgroundColor = backgroundColor
                self.showAxesLabels = showAxesLabels
                self.color = color
                self.categoryOrder = categoryOrder
                self.categoryArray = categoryArray
                self.title = title
                self.type = type
                self.autoRange = autoRange
                self.rangeMode = rangeMode
                self.range = range
                self.tickMode = tickMode
                self.numTicks = numTicks
                self.tick0 = tick0
                self.dTick = dTick
                self.tickValues = tickValues
                self.tickText = tickText
                self.ticks = ticks
                self.mirror = mirror
                self.tickLength = tickLength
                self.tickWidth = tickWidth
                self.tickColor = tickColor
                self.showTickLabels = showTickLabels
                self.tickFont = tickFont
                self.tickAngle = tickAngle
                self.tickPrefix = tickPrefix
                self.showTickPrefix = showTickPrefix
                self.tickSuffix = tickSuffix
                self.showTickSuffix = showTickSuffix
                self.showExponent = showExponent
                self.exponentFormat = exponentFormat
                self.separateThousands = separateThousands
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
                self.calendar = calendar
            }
            
        }
        public var zAxis: ZAxis? = nil
    
        /// Determines the mode of drag interactions for this scene.
        public enum DragMode: Encodable {
            case orbit
            case turntable
            case zoom
            case pan
            case off
            public func encode(to encoder: Encoder) throws {
                var container = encoder.singleValueContainer()
                switch self {
                case .orbit:
                    try container.encode("orbit")
                case .turntable:
                    try container.encode("turntable")
                case .zoom:
                    try container.encode("zoom")
                case .pan:
                    try container.encode("pan")
                case .off:
                    try container.encode(false)
                }
            }
        }
        /// Determines the mode of drag interactions for this scene.
        public var dragMode: DragMode? = nil
    
        /// Determines the mode of hover interactions for this scene.
        public enum HoverMode: Encodable {
            case closest
            case off
            public func encode(to encoder: Encoder) throws {
                var container = encoder.singleValueContainer()
                switch self {
                case .closest:
                    try container.encode("closest")
                case .off:
                    try container.encode(false)
                }
            }
        }
        /// Determines the mode of hover interactions for this scene.
        public var hoverMode: HoverMode? = nil
    
        /// Controls persistence of user-driven changes in camera attributes.
        /// 
        /// Defaults to `layout.uirevision`.
        public var uiRevision: Anything? = nil
    
        public struct Annotation: Encodable {
            /// Determines whether or not this annotation is visible.
            public var visible: Bool? = nil
        
            /// Sets the annotation's x position.
            public var x: Anything? = nil
        
            /// Sets the annotation's y position.
            public var y: Anything? = nil
        
            /// Sets the annotation's z position.
            public var z: Anything? = nil
        
            /// Sets the x component of the arrow tail about the arrow head (in pixels).
            public var ax: Double? = nil
        
            /// Sets the y component of the arrow tail about the arrow head (in pixels).
            public var ay: Double? = nil
        
            /// Sets the text box's horizontal position anchor This anchor binds the `x` position to the *left*,
            /// *center* or *right* of the annotation.
            /// 
            /// For example, if `x` is set to 1, `xref` to *paper* and `xanchor` to *right* then the right-most
            /// portion of the annotation lines up with the right-most edge of the plotting area. If *auto*, the
            /// anchor is equivalent to *center* for data-referenced annotations or if there is an arrow,
            /// whereas for paper-referenced with no arrow, the anchor picked corresponds to the closest side.
            public var xAnchor: Shared.XAutoAnchor? = nil
        
            /// Shifts the position of the whole annotation and arrow to the right (positive) or left (negative)
            /// by this many pixels.
            public var xShift: Double? = nil
        
            /// Sets the text box's vertical position anchor This anchor binds the `y` position to the *top*,
            /// *middle* or *bottom* of the annotation.
            /// 
            /// For example, if `y` is set to 1, `yref` to *paper* and `yanchor` to *top* then the top-most
            /// portion of the annotation lines up with the top-most edge of the plotting area. If *auto*, the
            /// anchor is equivalent to *middle* for data-referenced annotations or if there is an arrow,
            /// whereas for paper-referenced with no arrow, the anchor picked corresponds to the closest side.
            public var yAnchor: Shared.YAutoAnchor? = nil
        
            /// Shifts the position of the whole annotation and arrow up (positive) or down (negative) by this
            /// many pixels.
            public var yShift: Double? = nil
        
            /// Sets the text associated with this annotation.
            /// 
            /// Plotly uses a subset of HTML tags to do things like newline (<br>), bold (<b></b>), italics
            /// (<i></i>), hyperlinks (<a href='...'></a>). Tags <em>, <sup>, <sub> <span> are also supported.
            public var text: String? = nil
        
            /// Sets the angle at which the `text` is drawn with respect to the horizontal.
            public var textAngle: Angle? = nil
        
            /// Sets the annotation text font.
            public var font: Shared.Font? = nil
        
            /// Sets an explicit width for the text box.
            /// 
            /// null (default) lets the text set the box width. Wider text will be clipped. There is no
            /// automatic wrapping; use <br> to start a new line.
            public var width: Double? = nil
        
            /// Sets an explicit height for the text box.
            /// 
            /// null (default) lets the text set the box height. Taller text will be clipped.
            public var height: Double? = nil
        
            /// Sets the opacity of the annotation (text + arrow).
            public var opacity: Double? = nil
        
            /// Sets the horizontal alignment of the `text` within the box.
            /// 
            /// Has an effect only if `text` spans more two or more lines (i.e. `text` contains one or more <br>
            /// HTML tags) or if an explicit width is set to override the text width.
            public var align: Shared.HorizontalAlign? = nil
        
            /// Sets the vertical alignment of the `text` within the box.
            /// 
            /// Has an effect only if an explicit height is set to override the text height.
            public var verticalAlign: Shared.VerticalAlign? = nil
        
            /// Sets the background color of the annotation.
            public var backgroundColor: Color? = nil
        
            /// Sets the color of the border enclosing the annotation `text`.
            public var borderColor: Color? = nil
        
            /// Sets the padding (in px) between the `text` and the enclosing border.
            public var borderPadding: Double? = nil
        
            /// Sets the width (in px) of the border enclosing the annotation `text`.
            public var borderWidth: Double? = nil
        
            /// Determines whether or not the annotation is drawn with an arrow.
            /// 
            /// If *true*, `text` is placed near the arrow's tail. If *false*, `text` lines up with the `x` and
            /// `y` provided.
            public var showArrow: Bool? = nil
        
            /// Sets the color of the annotation arrow.
            public var arrowColor: Color? = nil
        
            /// Sets the end annotation arrow head style.
            public var arrowHead: Int? = nil
        
            /// Sets the start annotation arrow head style.
            public var startArrowHead: Int? = nil
        
            /// Sets the annotation arrow head position.
            public struct ArrowSide: OptionSet, Encodable {
                public let rawValue: Int
                public static var end: ArrowSide { ArrowSide(rawValue: 1 << 0) }
                public static var start: ArrowSide { ArrowSide(rawValue: 1 << 1) }
                public static var none: ArrowSide { ArrowSide(rawValue: 1 << 2) }
                
                public init(rawValue: Int) {
                    self.rawValue = rawValue
                }
                
                public func encode(to encoder: Encoder) throws {
                    var options = [String]()
                    if (self.rawValue & 1 << 0) != 0 { options += ["end"] }
                    if (self.rawValue & 1 << 1) != 0 { options += ["start"] }
                    if (self.rawValue & 1 << 2) != 0 { options += ["none"] }
                    var container = encoder.singleValueContainer()
                    try container.encode(options.joined(separator: "+"))
                }
            }
            /// Sets the annotation arrow head position.
            public var arrowSide: ArrowSide? = nil
        
            /// Sets the size of the end annotation arrow head, relative to `arrowwidth`.
            /// 
            /// A value of 1 (default) gives a head about 3x as wide as the line.
            public var arrowSize: Double? = nil
        
            /// Sets the size of the start annotation arrow head, relative to `arrowwidth`.
            /// 
            /// A value of 1 (default) gives a head about 3x as wide as the line.
            public var startArrowSize: Double? = nil
        
            /// Sets the width (in px) of annotation arrow line.
            public var arrowWidth: Double? = nil
        
            /// Sets a distance, in pixels, to move the end arrowhead away from the position it is pointing at,
            /// for example to point at the edge of a marker independent of zoom.
            /// 
            /// Note that this shortens the arrow from the `ax` / `ay` vector, in contrast to `xshift` /
            /// `yshift` which moves everything by this amount.
            public var standoff: Double? = nil
        
            /// Sets a distance, in pixels, to move the start arrowhead away from the position it is pointing
            /// at, for example to point at the edge of a marker independent of zoom.
            /// 
            /// Note that this shortens the arrow from the `ax` / `ay` vector, in contrast to `xshift` /
            /// `yshift` which moves everything by this amount.
            public var startStandoff: Double? = nil
        
            /// Sets text to appear when hovering over this annotation.
            /// 
            /// If omitted or blank, no hover label will appear.
            public var hoverText: String? = nil
        
            public struct HoverLabel: Encodable {
                /// Sets the background color of the hover label.
                /// 
                /// By default uses the annotation's `bgcolor` made opaque, or white if it was transparent.
                public var backgroundColor: Color? = nil
            
                /// Sets the border color of the hover label.
                /// 
                /// By default uses either dark grey or white, for maximum contrast with `hoverlabel.bgcolor`.
                public var borderColor: Color? = nil
            
                /// Sets the hover label text font.
                /// 
                /// By default uses the global hover font and size, with color from `hoverlabel.bordercolor`.
                public var font: Shared.Font? = nil
            
                /// Decoding and encoding keys compatible with Plotly schema.
                enum CodingKeys: String, CodingKey {
                    case backgroundColor = "bgcolor"
                    case borderColor = "bordercolor"
                    case font
                }
                
                /// Creates `HoverLabel` object with specified properties.
                /// 
                /// - Parameters:
                ///   - backgroundColor: Sets the background color of the hover label.
                ///   - borderColor: Sets the border color of the hover label.
                ///   - font: Sets the hover label text font.
                public init(backgroundColor: Color? = nil, borderColor: Color? = nil, font: Shared.Font? = nil)
                        {
                    self.backgroundColor = backgroundColor
                    self.borderColor = borderColor
                    self.font = font
                }
                
            }
            public var hoverLabel: HoverLabel? = nil
        
            /// Determines whether the annotation text box captures mouse move and click events, or allows those
            /// events to pass through to data points in the plot that may be behind the annotation.
            /// 
            /// By default `captureevents` is *false* unless `hovertext` is provided. If you use the event
            /// `plotly_clickannotation` without `hovertext` you must explicitly enable `captureevents`.
            public var captureEvents: Bool? = nil
        
            /// When used in a template, named items are created in the output figure in addition to any items
            /// the figure already has in this array.
            /// 
            /// You can modify these items in the output figure by making your own item with `templateitemname`
            /// matching this `name` alongside your modifications (including `visible: false` or `enabled:
            /// false` to hide it). Has no effect outside of a template.
            public var name: String? = nil
        
            /// Used to refer to a named item in this array in the template.
            /// 
            /// Named items from the template will be created even without a matching item in the input figure,
            /// but you can modify one by making an item with `templateitemname` matching its `name`, alongside
            /// your modifications (including `visible: false` or `enabled: false` to hide it). If there is no
            /// template or no matching item, this item will be hidden unless you explicitly show it with
            /// `visible: true`.
            public var templateItemName: String? = nil
        
            /// Decoding and encoding keys compatible with Plotly schema.
            enum CodingKeys: String, CodingKey {
                case visible
                case x
                case y
                case z
                case ax
                case ay
                case xAnchor = "xanchor"
                case xShift = "xshift"
                case yAnchor = "yanchor"
                case yShift = "yshift"
                case text
                case textAngle = "textangle"
                case font
                case width
                case height
                case opacity
                case align
                case verticalAlign = "valign"
                case backgroundColor = "bgcolor"
                case borderColor = "bordercolor"
                case borderPadding = "borderpad"
                case borderWidth = "borderwidth"
                case showArrow = "showarrow"
                case arrowColor = "arrowcolor"
                case arrowHead = "arrowhead"
                case startArrowHead = "startarrowhead"
                case arrowSide = "arrowside"
                case arrowSize = "arrowsize"
                case startArrowSize = "startarrowsize"
                case arrowWidth = "arrowwidth"
                case standoff
                case startStandoff = "startstandoff"
                case hoverText = "hovertext"
                case hoverLabel = "hoverlabel"
                case captureEvents = "captureevents"
                case name
                case templateItemName = "templateitemname"
            }
            
            /// Creates `Annotation` object with specified properties.
            /// 
            /// - Parameters:
            ///   - visible: Determines whether or not this annotation is visible.
            ///   - x: Sets the annotation's x position.
            ///   - y: Sets the annotation's y position.
            ///   - z: Sets the annotation's z position.
            ///   - ax: Sets the x component of the arrow tail about the arrow head (in pixels).
            ///   - ay: Sets the y component of the arrow tail about the arrow head (in pixels).
            ///   - xAnchor: Sets the text box's horizontal position anchor This anchor binds the `x` position to
            ///   the *left*, *center* or *right* of the annotation.
            ///   - xShift: Shifts the position of the whole annotation and arrow to the right (positive) or left
            ///   (negative) by this many pixels.
            ///   - yAnchor: Sets the text box's vertical position anchor This anchor binds the `y` position to
            ///   the *top*, *middle* or *bottom* of the annotation.
            ///   - yShift: Shifts the position of the whole annotation and arrow up (positive) or down (negative)
            ///   by this many pixels.
            ///   - text: Sets the text associated with this annotation.
            ///   - textAngle: Sets the angle at which the `text` is drawn with respect to the horizontal.
            ///   - font: Sets the annotation text font.
            ///   - width: Sets an explicit width for the text box.
            ///   - height: Sets an explicit height for the text box.
            ///   - opacity: Sets the opacity of the annotation (text + arrow).
            ///   - align: Sets the horizontal alignment of the `text` within the box.
            ///   - verticalAlign: Sets the vertical alignment of the `text` within the box.
            ///   - backgroundColor: Sets the background color of the annotation.
            ///   - borderColor: Sets the color of the border enclosing the annotation `text`.
            ///   - borderPadding: Sets the padding (in px) between the `text` and the enclosing border.
            ///   - borderWidth: Sets the width (in px) of the border enclosing the annotation `text`.
            ///   - showArrow: Determines whether or not the annotation is drawn with an arrow.
            ///   - arrowColor: Sets the color of the annotation arrow.
            ///   - arrowHead: Sets the end annotation arrow head style.
            ///   - startArrowHead: Sets the start annotation arrow head style.
            ///   - arrowSide: Sets the annotation arrow head position.
            ///   - arrowSize: Sets the size of the end annotation arrow head, relative to `arrowwidth`.
            ///   - startArrowSize: Sets the size of the start annotation arrow head, relative to `arrowwidth`.
            ///   - arrowWidth: Sets the width (in px) of annotation arrow line.
            ///   - standoff: Sets a distance, in pixels, to move the end arrowhead away from the position it is
            ///   pointing at, for example to point at the edge of a marker independent of zoom.
            ///   - startStandoff: Sets a distance, in pixels, to move the start arrowhead away from the position
            ///   it is pointing at, for example to point at the edge of a marker independent of zoom.
            ///   - hoverText: Sets text to appear when hovering over this annotation.
            ///   - hoverLabel:
            ///   - captureEvents: Determines whether the annotation text box captures mouse move and click
            ///   events, or allows those events to pass through to data points in the plot that may be behind the
            ///   annotation.
            ///   - name: When used in a template, named items are created in the output figure in addition to any
            ///   items the figure already has in this array.
            ///   - templateItemName: Used to refer to a named item in this array in the template.
            public init(visible: Bool? = nil, x: Anything? = nil, y: Anything? = nil, z: Anything? = nil,
                    ax: Double? = nil, ay: Double? = nil, xAnchor: Shared.XAutoAnchor? = nil, xShift: Double? = nil,
                    yAnchor: Shared.YAutoAnchor? = nil, yShift: Double? = nil, text: String? = nil, textAngle:
                    Angle? = nil, font: Shared.Font? = nil, width: Double? = nil, height: Double? = nil, opacity:
                    Double? = nil, align: Shared.HorizontalAlign? = nil, verticalAlign: Shared.VerticalAlign? = nil,
                    backgroundColor: Color? = nil, borderColor: Color? = nil, borderPadding: Double? = nil,
                    borderWidth: Double? = nil, showArrow: Bool? = nil, arrowColor: Color? = nil, arrowHead: Int? =
                    nil, startArrowHead: Int? = nil, arrowSide: ArrowSide? = nil, arrowSize: Double? = nil,
                    startArrowSize: Double? = nil, arrowWidth: Double? = nil, standoff: Double? = nil,
                    startStandoff: Double? = nil, hoverText: String? = nil, hoverLabel: HoverLabel? = nil,
                    captureEvents: Bool? = nil, name: String? = nil, templateItemName: String? = nil) {
                self.visible = visible
                self.x = x
                self.y = y
                self.z = z
                self.ax = ax
                self.ay = ay
                self.xAnchor = xAnchor
                self.xShift = xShift
                self.yAnchor = yAnchor
                self.yShift = yShift
                self.text = text
                self.textAngle = textAngle
                self.font = font
                self.width = width
                self.height = height
                self.opacity = opacity
                self.align = align
                self.verticalAlign = verticalAlign
                self.backgroundColor = backgroundColor
                self.borderColor = borderColor
                self.borderPadding = borderPadding
                self.borderWidth = borderWidth
                self.showArrow = showArrow
                self.arrowColor = arrowColor
                self.arrowHead = arrowHead
                self.startArrowHead = startArrowHead
                self.arrowSide = arrowSide
                self.arrowSize = arrowSize
                self.startArrowSize = startArrowSize
                self.arrowWidth = arrowWidth
                self.standoff = standoff
                self.startStandoff = startStandoff
                self.hoverText = hoverText
                self.hoverLabel = hoverLabel
                self.captureEvents = captureEvents
                self.name = name
                self.templateItemName = templateItemName
            }
            
        }
        public var annotations: [Annotation]? = nil
    
        /// Decoding and encoding keys compatible with Plotly schema.
        enum CodingKeys: String, CodingKey {
            case backgroundColor = "bgcolor"
            case camera
            case domain
            case aspectMode = "aspectmode"
            case aspectRatio = "aspectratio"
            case xAxis = "xaxis"
            case yAxis = "yaxis"
            case zAxis = "zaxis"
            case dragMode = "dragmode"
            case hoverMode = "hovermode"
            case uiRevision = "uirevision"
            case annotations
        }
        
        /// Creates `Scene` object with specified properties.
        /// 
        /// - Parameters:
        ///   - uid:
        ///   - backgroundColor:
        ///   - camera:
        ///   - domain:
        ///   - aspectMode: If *cube*, this scene's axes are drawn as a cube, regardless of the axes' ranges.
        ///   - aspectRatio: Sets this scene's axis aspectratio.
        ///   - xAxis:
        ///   - yAxis:
        ///   - zAxis:
        ///   - dragMode: Determines the mode of drag interactions for this scene.
        ///   - hoverMode: Determines the mode of hover interactions for this scene.
        ///   - uiRevision: Controls persistence of user-driven changes in camera attributes.
        ///   - annotations:
        public init(uid: UInt = UInt.random(in: 2...UInt.max), backgroundColor: Color? = nil, camera:
                Camera? = nil, domain: Shared.Domain? = nil, aspectMode: AspectMode? = nil, aspectRatio:
                AspectRatio? = nil, xAxis: XAxis? = nil, yAxis: YAxis? = nil, zAxis: ZAxis? = nil, dragMode:
                DragMode? = nil, hoverMode: HoverMode? = nil, uiRevision: Anything? = nil, annotations:
                [Annotation]? = nil) {
            self.uid = uid
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
    public var scene: [Scene] = []

    public class Geo: Encodable {
        public var uid: UInt = UInt.random(in: 2...UInt.max)
    
        public var domain: Shared.Domain? = nil
    
        /// Sets the resolution of the base layers.
        /// 
        /// The values have units of km/mm e.g. 110 corresponds to a scale ratio of 1:110,000,000.
        public enum Resolution: Int, Encodable {
            case oneOver110M = 110
            case oneOver50M = 50
        }
        /// Sets the resolution of the base layers.
        /// 
        /// The values have units of km/mm e.g. 110 corresponds to a scale ratio of 1:110,000,000.
        public var resolution: Resolution? = nil
    
        /// Set the scope of the map.
        public enum Scope: String, Encodable {
            case world
            case usa
            case europe
            case asia
            case africa
            case northAmerica = "north america"
            case southAmerica = "south america"
        }
        /// Set the scope of the map.
        public var scope: Scope? = nil
    
        public struct Projection: Encodable {
            /// Sets the projection type.
            public enum `Type`: String, Encodable {
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
            /// Sets the projection type.
            public var type: `Type`? = nil
        
            public struct Rotation: Encodable {
                /// Rotates the map along parallels (in degrees East).
                /// 
                /// Defaults to the center of the `lonaxis.range` values.
                public var longitude: Double? = nil
            
                /// Rotates the map along meridians (in degrees North).
                public var latitude: Double? = nil
            
                /// Roll the map (in degrees) For example, a roll of *180* makes the map appear upside down.
                public var roll: Double? = nil
            
                /// Decoding and encoding keys compatible with Plotly schema.
                enum CodingKeys: String, CodingKey {
                    case longitude = "lon"
                    case latitude = "lat"
                    case roll
                }
                
                /// Creates `Rotation` object with specified properties.
                /// 
                /// - Parameters:
                ///   - longitude: Rotates the map along parallels (in degrees East).
                ///   - latitude: Rotates the map along meridians (in degrees North).
                ///   - roll: Roll the map (in degrees) For example, a roll of *180* makes the map appear upside down.
                public init(longitude: Double? = nil, latitude: Double? = nil, roll: Double? = nil) {
                    self.longitude = longitude
                    self.latitude = latitude
                    self.roll = roll
                }
                
            }
            public var rotation: Rotation? = nil
        
            /// For conic projection types only.
            /// 
            /// Sets the parallels (tangent, secant) where the cone intersects the sphere.
            public var parallels: InfoArray? = nil
        
            /// Zooms in or out on the map view.
            /// 
            /// A scale of *1* corresponds to the largest zoom level that fits the map's lon and lat ranges.
            public var scale: Double? = nil
        
            /// Creates `Projection` object with specified properties.
            /// 
            /// - Parameters:
            ///   - type: Sets the projection type.
            ///   - rotation:
            ///   - parallels: For conic projection types only.
            ///   - scale: Zooms in or out on the map view.
            public init(type: `Type`? = nil, rotation: Rotation? = nil, parallels: InfoArray? = nil, scale:
                    Double? = nil) {
                self.type = type
                self.rotation = rotation
                self.parallels = parallels
                self.scale = scale
            }
            
        }
        public var projection: Projection? = nil
    
        public struct Center: Encodable {
            /// Sets the longitude of the map's center.
            /// 
            /// By default, the map's longitude center lies at the middle of the longitude range for scoped
            /// projection and above `projection.rotation.lon` otherwise.
            public var longitude: Double? = nil
        
            /// Sets the latitude of the map's center.
            /// 
            /// For all projection types, the map's latitude center lies at the middle of the latitude range by
            /// default.
            public var latitude: Double? = nil
        
            /// Decoding and encoding keys compatible with Plotly schema.
            enum CodingKeys: String, CodingKey {
                case longitude = "lon"
                case latitude = "lat"
            }
            
            /// Creates `Center` object with specified properties.
            /// 
            /// - Parameters:
            ///   - longitude: Sets the longitude of the map's center.
            ///   - latitude: Sets the latitude of the map's center.
            public init(longitude: Double? = nil, latitude: Double? = nil) {
                self.longitude = longitude
                self.latitude = latitude
            }
            
        }
        public var center: Center? = nil
    
        /// Sets whether or not the coastlines are drawn.
        public var showCoastLines: Bool? = nil
    
        /// Sets the coastline color.
        public var coastLineColor: Color? = nil
    
        /// Sets the coastline stroke width (in px).
        public var coastLineWidth: Double? = nil
    
        /// Sets whether or not land masses are filled in color.
        public var showLand: Bool? = nil
    
        /// Sets the land mass color.
        public var landColor: Color? = nil
    
        /// Sets whether or not oceans are filled in color.
        public var showOcean: Bool? = nil
    
        /// Sets the ocean color
        public var oceanColor: Color? = nil
    
        /// Sets whether or not lakes are drawn.
        public var showLakes: Bool? = nil
    
        /// Sets the color of the lakes.
        public var lakeColor: Color? = nil
    
        /// Sets whether or not rivers are drawn.
        public var showRivers: Bool? = nil
    
        /// Sets color of the rivers.
        public var riverColor: Color? = nil
    
        /// Sets the stroke width (in px) of the rivers.
        public var riverWidth: Double? = nil
    
        /// Sets whether or not country boundaries are drawn.
        public var showCountries: Bool? = nil
    
        /// Sets line color of the country boundaries.
        public var countryColor: Color? = nil
    
        /// Sets line width (in px) of the country boundaries.
        public var countryWidth: Double? = nil
    
        /// Sets whether or not boundaries of subunits within countries (e.g.
        /// 
        /// states, provinces) are drawn.
        public var showSubunits: Bool? = nil
    
        /// Sets the color of the subunits boundaries.
        public var subUnitColor: Color? = nil
    
        /// Sets the stroke width (in px) of the subunits boundaries.
        public var subUnitWidth: Double? = nil
    
        /// Sets whether or not a frame is drawn around the map.
        public var showFrame: Bool? = nil
    
        /// Sets the color the frame.
        public var frameColor: Color? = nil
    
        /// Sets the stroke width (in px) of the frame.
        public var frameWidth: Double? = nil
    
        /// Set the background color of the map
        public var backgroundColor: Color? = nil
    
        public struct LongitudeAxis: Encodable {
            /// Sets the range of this axis (in degrees), sets the map's clipped coordinates.
            public var range: InfoArray? = nil
        
            /// Sets whether or not graticule are shown on the map.
            public var showGrid: Bool? = nil
        
            /// Sets the graticule's starting tick longitude/latitude.
            public var tick0: Double? = nil
        
            /// Sets the graticule's longitude/latitude tick step.
            public var dTick: Double? = nil
        
            /// Sets the graticule's stroke color.
            public var gridColor: Color? = nil
        
            /// Sets the graticule's stroke width (in px).
            public var gridWidth: Double? = nil
        
            /// Decoding and encoding keys compatible with Plotly schema.
            enum CodingKeys: String, CodingKey {
                case range
                case showGrid = "showgrid"
                case tick0
                case dTick = "dtick"
                case gridColor = "gridcolor"
                case gridWidth = "gridwidth"
            }
            
            /// Creates `LongitudeAxis` object with specified properties.
            /// 
            /// - Parameters:
            ///   - range: Sets the range of this axis (in degrees), sets the map's clipped coordinates.
            ///   - showGrid: Sets whether or not graticule are shown on the map.
            ///   - tick0: Sets the graticule's starting tick longitude/latitude.
            ///   - dTick: Sets the graticule's longitude/latitude tick step.
            ///   - gridColor: Sets the graticule's stroke color.
            ///   - gridWidth: Sets the graticule's stroke width (in px).
            public init(range: InfoArray? = nil, showGrid: Bool? = nil, tick0: Double? = nil, dTick: Double?
                    = nil, gridColor: Color? = nil, gridWidth: Double? = nil) {
                self.range = range
                self.showGrid = showGrid
                self.tick0 = tick0
                self.dTick = dTick
                self.gridColor = gridColor
                self.gridWidth = gridWidth
            }
            
        }
        public var longitudeAxis: LongitudeAxis? = nil
    
        public struct LatitudeAxis: Encodable {
            /// Sets the range of this axis (in degrees), sets the map's clipped coordinates.
            public var range: InfoArray? = nil
        
            /// Sets whether or not graticule are shown on the map.
            public var showGrid: Bool? = nil
        
            /// Sets the graticule's starting tick longitude/latitude.
            public var tick0: Double? = nil
        
            /// Sets the graticule's longitude/latitude tick step.
            public var dTick: Double? = nil
        
            /// Sets the graticule's stroke color.
            public var gridColor: Color? = nil
        
            /// Sets the graticule's stroke width (in px).
            public var gridWidth: Double? = nil
        
            /// Decoding and encoding keys compatible with Plotly schema.
            enum CodingKeys: String, CodingKey {
                case range
                case showGrid = "showgrid"
                case tick0
                case dTick = "dtick"
                case gridColor = "gridcolor"
                case gridWidth = "gridwidth"
            }
            
            /// Creates `LatitudeAxis` object with specified properties.
            /// 
            /// - Parameters:
            ///   - range: Sets the range of this axis (in degrees), sets the map's clipped coordinates.
            ///   - showGrid: Sets whether or not graticule are shown on the map.
            ///   - tick0: Sets the graticule's starting tick longitude/latitude.
            ///   - dTick: Sets the graticule's longitude/latitude tick step.
            ///   - gridColor: Sets the graticule's stroke color.
            ///   - gridWidth: Sets the graticule's stroke width (in px).
            public init(range: InfoArray? = nil, showGrid: Bool? = nil, tick0: Double? = nil, dTick: Double?
                    = nil, gridColor: Color? = nil, gridWidth: Double? = nil) {
                self.range = range
                self.showGrid = showGrid
                self.tick0 = tick0
                self.dTick = dTick
                self.gridColor = gridColor
                self.gridWidth = gridWidth
            }
            
        }
        public var latitudeAxis: LatitudeAxis? = nil
    
        /// Controls persistence of user-driven changes in the view (projection and center).
        /// 
        /// Defaults to `layout.uirevision`.
        public var uiRevision: Anything? = nil
    
        /// Decoding and encoding keys compatible with Plotly schema.
        enum CodingKeys: String, CodingKey {
            case domain
            case resolution
            case scope
            case projection
            case center
            case showCoastLines = "showcoastlines"
            case coastLineColor = "coastlinecolor"
            case coastLineWidth = "coastlinewidth"
            case showLand = "showland"
            case landColor = "landcolor"
            case showOcean = "showocean"
            case oceanColor = "oceancolor"
            case showLakes = "showlakes"
            case lakeColor = "lakecolor"
            case showRivers = "showrivers"
            case riverColor = "rivercolor"
            case riverWidth = "riverwidth"
            case showCountries = "showcountries"
            case countryColor = "countrycolor"
            case countryWidth = "countrywidth"
            case showSubunits = "showsubunits"
            case subUnitColor = "subunitcolor"
            case subUnitWidth = "subunitwidth"
            case showFrame = "showframe"
            case frameColor = "framecolor"
            case frameWidth = "framewidth"
            case backgroundColor = "bgcolor"
            case longitudeAxis = "lonaxis"
            case latitudeAxis = "lataxis"
            case uiRevision = "uirevision"
        }
        
        /// Creates `Geo` object with specified properties.
        /// 
        /// - Parameters:
        ///   - uid:
        ///   - domain:
        ///   - resolution: Sets the resolution of the base layers.
        ///   - scope: Set the scope of the map.
        ///   - projection:
        ///   - center:
        ///   - showCoastLines: Sets whether or not the coastlines are drawn.
        ///   - coastLineColor: Sets the coastline color.
        ///   - coastLineWidth: Sets the coastline stroke width (in px).
        ///   - showLand: Sets whether or not land masses are filled in color.
        ///   - landColor: Sets the land mass color.
        ///   - showOcean: Sets whether or not oceans are filled in color.
        ///   - oceanColor: Sets the ocean color
        ///   - showLakes: Sets whether or not lakes are drawn.
        ///   - lakeColor: Sets the color of the lakes.
        ///   - showRivers: Sets whether or not rivers are drawn.
        ///   - riverColor: Sets color of the rivers.
        ///   - riverWidth: Sets the stroke width (in px) of the rivers.
        ///   - showCountries: Sets whether or not country boundaries are drawn.
        ///   - countryColor: Sets line color of the country boundaries.
        ///   - countryWidth: Sets line width (in px) of the country boundaries.
        ///   - showSubunits: Sets whether or not boundaries of subunits within countries (e.g.
        ///   - subUnitColor: Sets the color of the subunits boundaries.
        ///   - subUnitWidth: Sets the stroke width (in px) of the subunits boundaries.
        ///   - showFrame: Sets whether or not a frame is drawn around the map.
        ///   - frameColor: Sets the color the frame.
        ///   - frameWidth: Sets the stroke width (in px) of the frame.
        ///   - backgroundColor: Set the background color of the map
        ///   - longitudeAxis:
        ///   - latitudeAxis:
        ///   - uiRevision: Controls persistence of user-driven changes in the view (projection and center).
        public init(uid: UInt = UInt.random(in: 2...UInt.max), domain: Shared.Domain? = nil, resolution:
                Resolution? = nil, scope: Scope? = nil, projection: Projection? = nil, center: Center? = nil,
                showCoastLines: Bool? = nil, coastLineColor: Color? = nil, coastLineWidth: Double? = nil,
                showLand: Bool? = nil, landColor: Color? = nil, showOcean: Bool? = nil, oceanColor: Color? =
                nil, showLakes: Bool? = nil, lakeColor: Color? = nil, showRivers: Bool? = nil, riverColor:
                Color? = nil, riverWidth: Double? = nil, showCountries: Bool? = nil, countryColor: Color? = nil,
                countryWidth: Double? = nil, showSubunits: Bool? = nil, subUnitColor: Color? = nil,
                subUnitWidth: Double? = nil, showFrame: Bool? = nil, frameColor: Color? = nil, frameWidth:
                Double? = nil, backgroundColor: Color? = nil, longitudeAxis: LongitudeAxis? = nil, latitudeAxis:
                LatitudeAxis? = nil, uiRevision: Anything? = nil) {
            self.uid = uid
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
            self.showSubunits = showSubunits
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
    public var geo: [Geo] = []

    public class Mapbox: Encodable {
        public var uid: UInt = UInt.random(in: 2...UInt.max)
    
        public var domain: Shared.Domain? = nil
    
        /// Sets the mapbox access token to be used for this mapbox map.
        /// 
        /// Alternatively, the mapbox access token can be set in the configuration options under
        /// `mapboxAccessToken`. Note that accessToken are only required when `style` (e.g with values :
        /// basic, streets, outdoors, light, dark, satellite, satellite-streets ) and/or a layout layer
        /// references the Mapbox server.
        public var accessToken: String? = nil
    
        /// Defines the map layers that are rendered by default below the trace layers defined in `data`,
        /// which are themselves by default rendered below the layers defined in `layout.mapbox.layers`.
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
        public var style: Anything? = nil
    
        public struct Center: Encodable {
            /// Sets the longitude of the center of the map (in degrees East).
            public var longitude: Double? = nil
        
            /// Sets the latitude of the center of the map (in degrees North).
            public var latitude: Double? = nil
        
            /// Decoding and encoding keys compatible with Plotly schema.
            enum CodingKeys: String, CodingKey {
                case longitude = "lon"
                case latitude = "lat"
            }
            
            /// Creates `Center` object with specified properties.
            /// 
            /// - Parameters:
            ///   - longitude: Sets the longitude of the center of the map (in degrees East).
            ///   - latitude: Sets the latitude of the center of the map (in degrees North).
            public init(longitude: Double? = nil, latitude: Double? = nil) {
                self.longitude = longitude
                self.latitude = latitude
            }
            
        }
        public var center: Center? = nil
    
        /// Sets the zoom level of the map (mapbox.zoom).
        public var zoom: Double? = nil
    
        /// Sets the bearing angle of the map in degrees counter-clockwise from North (mapbox.bearing).
        public var bearing: Double? = nil
    
        /// Sets the pitch angle of the map (in degrees, where *0* means perpendicular to the surface of the
        /// map) (mapbox.pitch).
        public var pitch: Double? = nil
    
        public struct Layer: Encodable {
            /// Determines whether this layer is displayed
            public var visible: Bool? = nil
        
            /// Sets the source type for this layer, that is the type of the layer data.
            public enum SourceType: String, Encodable {
                case geoJson = "geojson"
                case vector
                case raster
                case image
            }
            /// Sets the source type for this layer, that is the type of the layer data.
            public var sourceType: SourceType? = nil
        
            /// Sets the source data for this layer (mapbox.layer.source).
            /// 
            /// When `sourcetype` is set to *geojson*, `source` can be a URL to a GeoJSON or a GeoJSON object.
            /// When `sourcetype` is set to *vector* or *raster*, `source` can be a URL or an array of tile
            /// URLs. When `sourcetype` is set to *image*, `source` can be a URL to an image.
            public var source: Anything? = nil
        
            /// Specifies the layer to use from a vector tile source (mapbox.layer.source-layer).
            /// 
            /// Required for *vector* source type that supports multiple layers.
            public var sourceLayer: String? = nil
        
            /// Sets the attribution for this source.
            public var sourceAttribution: String? = nil
        
            /// Sets the layer type, that is the how the layer data set in `source` will be rendered With
            /// `sourcetype` set to *geojson*, the following values are allowed: *circle*, *line*, *fill* and
            /// *symbol*.
            /// 
            /// but note that *line* and *fill* are not compatible with Point GeoJSON geometries. With
            /// `sourcetype` set to *vector*, the following values are allowed: *circle*, *line*, *fill* and
            /// *symbol*. With `sourcetype` set to *raster* or `*image*`, only the *raster* value is allowed.
            public enum `Type`: String, Encodable {
                case circle
                case line
                case fill
                case symbol
                case raster
            }
            /// Sets the layer type, that is the how the layer data set in `source` will be rendered With
            /// `sourcetype` set to *geojson*, the following values are allowed: *circle*, *line*, *fill* and
            /// *symbol*.
            /// 
            /// but note that *line* and *fill* are not compatible with Point GeoJSON geometries. With
            /// `sourcetype` set to *vector*, the following values are allowed: *circle*, *line*, *fill* and
            /// *symbol*. With `sourcetype` set to *raster* or `*image*`, only the *raster* value is allowed.
            public var type: `Type`? = nil
        
            /// Sets the coordinates array contains [longitude, latitude] pairs for the image corners listed in
            /// clockwise order: top left, top right, bottom right, bottom left.
            /// 
            /// Only has an effect for *image* `sourcetype`.
            public var coordinates: Anything? = nil
        
            /// Determines if the layer will be inserted before the layer with the specified ID.
            /// 
            /// If omitted or set to '', the layer will be inserted above every existing layer.
            public var below: String? = nil
        
            /// Sets the primary layer color.
            /// 
            /// If `type` is *circle*, color corresponds to the circle color (mapbox.layer.paint.circle-color)
            /// If `type` is *line*, color corresponds to the line color (mapbox.layer.paint.line-color) If
            /// `type` is *fill*, color corresponds to the fill color (mapbox.layer.paint.fill-color) If `type`
            /// is *symbol*, color corresponds to the icon color (mapbox.layer.paint.icon-color)
            public var color: Color? = nil
        
            /// Sets the opacity of the layer.
            /// 
            /// If `type` is *circle*, opacity corresponds to the circle opacity
            /// (mapbox.layer.paint.circle-opacity) If `type` is *line*, opacity corresponds to the line opacity
            /// (mapbox.layer.paint.line-opacity) If `type` is *fill*, opacity corresponds to the fill opacity
            /// (mapbox.layer.paint.fill-opacity) If `type` is *symbol*, opacity corresponds to the icon/text
            /// opacity (mapbox.layer.paint.text-opacity)
            public var opacity: Double? = nil
        
            /// Sets the minimum zoom level (mapbox.layer.minzoom).
            /// 
            /// At zoom levels less than the minzoom, the layer will be hidden.
            public var minZoom: Double? = nil
        
            /// Sets the maximum zoom level (mapbox.layer.maxzoom).
            /// 
            /// At zoom levels equal to or greater than the maxzoom, the layer will be hidden.
            public var maxZoom: Double? = nil
        
            public struct Circle: Encodable {
                /// Sets the circle radius (mapbox.layer.paint.circle-radius).
                /// 
                /// Has an effect only when `type` is set to *circle*.
                public var radius: Double? = nil
            
                /// Creates `Circle` object with specified properties.
                /// 
                /// - Parameters:
                ///   - radius: Sets the circle radius (mapbox.layer.paint.circle-radius).
                public init(radius: Double? = nil) {
                    self.radius = radius
                }
                
            }
            public var circle: Circle? = nil
        
            public struct DashedLine: Encodable {
                /// Sets the line width (mapbox.layer.paint.line-width).
                /// 
                /// Has an effect only when `type` is set to *line*.
                public var width: Double? = nil
            
                /// Sets the length of dashes and gaps (mapbox.layer.paint.line-dasharray).
                /// 
                /// Has an effect only when `type` is set to *line*.
                public var dash: [Double]? = nil
            
                /// Creates `DashedLine` object with specified properties.
                /// 
                /// - Parameters:
                ///   - width: Sets the line width (mapbox.layer.paint.line-width).
                ///   - dash: Sets the length of dashes and gaps (mapbox.layer.paint.line-dasharray).
                public init(width: Double? = nil, dash: [Double]? = nil) {
                    self.width = width
                    self.dash = dash
                }
                
            }
            public var line: DashedLine? = nil
        
            public struct Fill: Encodable {
                /// Sets the fill outline color (mapbox.layer.paint.fill-outline-color).
                /// 
                /// Has an effect only when `type` is set to *fill*.
                public var outlineColor: Color? = nil
            
                /// Decoding and encoding keys compatible with Plotly schema.
                enum CodingKeys: String, CodingKey {
                    case outlineColor = "outlinecolor"
                }
                
                /// Creates `Fill` object with specified properties.
                /// 
                /// - Parameters:
                ///   - outlineColor: Sets the fill outline color (mapbox.layer.paint.fill-outline-color).
                public init(outlineColor: Color? = nil) {
                    self.outlineColor = outlineColor
                }
                
            }
            public var fill: Fill? = nil
        
            public struct Symbol: Encodable {
                /// Sets the symbol icon image (mapbox.layer.layout.icon-image).
                /// 
                /// Full list: https://www.mapbox.com/maki-icons/
                public var icon: String? = nil
            
                /// Sets the symbol icon size (mapbox.layer.layout.icon-size).
                /// 
                /// Has an effect only when `type` is set to *symbol*.
                public var iconSize: Double? = nil
            
                /// Sets the symbol text (mapbox.layer.layout.text-field).
                public var text: String? = nil
            
                /// Sets the symbol and/or text placement (mapbox.layer.layout.symbol-placement).
                /// 
                /// If `placement` is *point*, the label is placed where the geometry is located If `placement` is
                /// *line*, the label is placed along the line of the geometry If `placement` is *line-center*, the
                /// label is placed on the center of the geometry
                public enum Placement: String, Encodable {
                    case point
                    case line
                    case lineCenter = "line-center"
                }
                /// Sets the symbol and/or text placement (mapbox.layer.layout.symbol-placement).
                /// 
                /// If `placement` is *point*, the label is placed where the geometry is located If `placement` is
                /// *line*, the label is placed along the line of the geometry If `placement` is *line-center*, the
                /// label is placed on the center of the geometry
                public var placement: Placement? = nil
            
                /// Sets the icon text font (color=mapbox.layer.paint.text-color,
                /// size=mapbox.layer.layout.text-size).
                /// 
                /// Has an effect only when `type` is set to *symbol*.
                public var textFont: Shared.Font? = nil
            
                /// Sets the positions of the `text` elements with respects to the (x,y) coordinates.
                public var textPosition: Shared.TextPosition? = nil
            
                /// Decoding and encoding keys compatible with Plotly schema.
                enum CodingKeys: String, CodingKey {
                    case icon
                    case iconSize = "iconsize"
                    case text
                    case placement
                    case textFont = "textfont"
                    case textPosition = "textposition"
                }
                
                /// Creates `Symbol` object with specified properties.
                /// 
                /// - Parameters:
                ///   - icon: Sets the symbol icon image (mapbox.layer.layout.icon-image).
                ///   - iconSize: Sets the symbol icon size (mapbox.layer.layout.icon-size).
                ///   - text: Sets the symbol text (mapbox.layer.layout.text-field).
                ///   - placement: Sets the symbol and/or text placement (mapbox.layer.layout.symbol-placement).
                ///   - textFont: Sets the icon text font (color=mapbox.layer.paint.text-color,
                ///   size=mapbox.layer.layout.text-size).
                ///   - textPosition: Sets the positions of the `text` elements with respects to the (x,y)
                ///   coordinates.
                public init(icon: String? = nil, iconSize: Double? = nil, text: String? = nil, placement:
                        Placement? = nil, textFont: Shared.Font? = nil, textPosition: Shared.TextPosition? = nil) {
                    self.icon = icon
                    self.iconSize = iconSize
                    self.text = text
                    self.placement = placement
                    self.textFont = textFont
                    self.textPosition = textPosition
                }
                
            }
            public var symbol: Symbol? = nil
        
            /// When used in a template, named items are created in the output figure in addition to any items
            /// the figure already has in this array.
            /// 
            /// You can modify these items in the output figure by making your own item with `templateitemname`
            /// matching this `name` alongside your modifications (including `visible: false` or `enabled:
            /// false` to hide it). Has no effect outside of a template.
            public var name: String? = nil
        
            /// Used to refer to a named item in this array in the template.
            /// 
            /// Named items from the template will be created even without a matching item in the input figure,
            /// but you can modify one by making an item with `templateitemname` matching its `name`, alongside
            /// your modifications (including `visible: false` or `enabled: false` to hide it). If there is no
            /// template or no matching item, this item will be hidden unless you explicitly show it with
            /// `visible: true`.
            public var templateItemName: String? = nil
        
            /// Decoding and encoding keys compatible with Plotly schema.
            enum CodingKeys: String, CodingKey {
                case visible
                case sourceType = "sourcetype"
                case source
                case sourceLayer = "sourcelayer"
                case sourceAttribution = "sourceattribution"
                case type
                case coordinates
                case below
                case color
                case opacity
                case minZoom = "minzoom"
                case maxZoom = "maxzoom"
                case circle
                case line
                case fill
                case symbol
                case name
                case templateItemName = "templateitemname"
            }
            
            /// Creates `Layer` object with specified properties.
            /// 
            /// - Parameters:
            ///   - visible: Determines whether this layer is displayed
            ///   - sourceType: Sets the source type for this layer, that is the type of the layer data.
            ///   - source: Sets the source data for this layer (mapbox.layer.source).
            ///   - sourceLayer: Specifies the layer to use from a vector tile source (mapbox.layer.source-layer).
            ///   - sourceAttribution: Sets the attribution for this source.
            ///   - type: Sets the layer type, that is the how the layer data set in `source` will be rendered
            ///   With `sourcetype` set to *geojson*, the following values are allowed: *circle*, *line*, *fill*
            ///   and *symbol*.
            ///   - coordinates: Sets the coordinates array contains [longitude, latitude] pairs for the image
            ///   corners listed in clockwise order: top left, top right, bottom right, bottom left.
            ///   - below: Determines if the layer will be inserted before the layer with the specified ID.
            ///   - color: Sets the primary layer color.
            ///   - opacity: Sets the opacity of the layer.
            ///   - minZoom: Sets the minimum zoom level (mapbox.layer.minzoom).
            ///   - maxZoom: Sets the maximum zoom level (mapbox.layer.maxzoom).
            ///   - circle:
            ///   - line:
            ///   - fill:
            ///   - symbol:
            ///   - name: When used in a template, named items are created in the output figure in addition to any
            ///   items the figure already has in this array.
            ///   - templateItemName: Used to refer to a named item in this array in the template.
            public init(visible: Bool? = nil, sourceType: SourceType? = nil, source: Anything? = nil,
                    sourceLayer: String? = nil, sourceAttribution: String? = nil, type: `Type`? = nil, coordinates:
                    Anything? = nil, below: String? = nil, color: Color? = nil, opacity: Double? = nil, minZoom:
                    Double? = nil, maxZoom: Double? = nil, circle: Circle? = nil, line: DashedLine? = nil, fill:
                    Fill? = nil, symbol: Symbol? = nil, name: String? = nil, templateItemName: String? = nil) {
                self.visible = visible
                self.sourceType = sourceType
                self.source = source
                self.sourceLayer = sourceLayer
                self.sourceAttribution = sourceAttribution
                self.type = type
                self.coordinates = coordinates
                self.below = below
                self.color = color
                self.opacity = opacity
                self.minZoom = minZoom
                self.maxZoom = maxZoom
                self.circle = circle
                self.line = line
                self.fill = fill
                self.symbol = symbol
                self.name = name
                self.templateItemName = templateItemName
            }
            
        }
        public var layers: [Layer]? = nil
    
        /// Controls persistence of user-driven changes in the view: `center`, `zoom`, `bearing`, `pitch`.
        /// 
        /// Defaults to `layout.uirevision`.
        public var uiRevision: Anything? = nil
    
        /// Decoding and encoding keys compatible with Plotly schema.
        enum CodingKeys: String, CodingKey {
            case domain
            case accessToken = "accesstoken"
            case style
            case center
            case zoom
            case bearing
            case pitch
            case layers
            case uiRevision = "uirevision"
        }
        
        /// Creates `Mapbox` object with specified properties.
        /// 
        /// - Parameters:
        ///   - uid:
        ///   - domain:
        ///   - accessToken: Sets the mapbox access token to be used for this mapbox map.
        ///   - style: Defines the map layers that are rendered by default below the trace layers defined in
        ///   `data`, which are themselves by default rendered below the layers defined in
        ///   `layout.mapbox.layers`.
        ///   - center:
        ///   - zoom: Sets the zoom level of the map (mapbox.zoom).
        ///   - bearing: Sets the bearing angle of the map in degrees counter-clockwise from North
        ///   (mapbox.bearing).
        ///   - pitch: Sets the pitch angle of the map (in degrees, where *0* means perpendicular to the
        ///   surface of the map) (mapbox.pitch).
        ///   - layers:
        ///   - uiRevision: Controls persistence of user-driven changes in the view: `center`, `zoom`,
        ///   `bearing`, `pitch`.
        public init(uid: UInt = UInt.random(in: 2...UInt.max), domain: Shared.Domain? = nil,
                accessToken: String? = nil, style: Anything? = nil, center: Center? = nil, zoom: Double? = nil,
                bearing: Double? = nil, pitch: Double? = nil, layers: [Layer]? = nil, uiRevision: Anything? =
                nil) {
            self.uid = uid
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
    public var mapbox: [Mapbox] = []

    public class Polar: Encodable {
        public var uid: UInt = UInt.random(in: 2...UInt.max)
    
        public var domain: Shared.Domain? = nil
    
        /// Sets angular span of this polar subplot with two angles (in degrees).
        /// 
        /// Sector are assumed to be spanned in the counterclockwise direction with *0* corresponding to
        /// rightmost limit of the polar subplot.
        public var sector: InfoArray? = nil
    
        /// Sets the fraction of the radius to cut out of the polar subplot.
        public var hole: Double? = nil
    
        /// Set the background color of the subplot
        public var backgroundColor: Color? = nil
    
        public struct RadialAxis: Encodable {
            /// A single toggle to hide the axis while preserving interaction like dragging.
            /// 
            /// Default is true when a cheater plot is present on the axis, otherwise false
            public var visible: Bool? = nil
        
            /// Sets the axis type.
            /// 
            /// By default, plotly attempts to determined the axis type by looking into the data of the traces
            /// that referenced the axis in question.
            public enum `Type`: String, Encodable {
                case auto = "-"
                case linear
                case log
                case date
                case category
            }
            /// Sets the axis type.
            /// 
            /// By default, plotly attempts to determined the axis type by looking into the data of the traces
            /// that referenced the axis in question.
            public var type: `Type`? = nil
        
            /// Determines whether or not the range of this axis is computed in relation to the input data.
            /// 
            /// See `rangemode` for more info. If `range` is provided, then `autorange` is set to *false*.
            public var autoRange: Shared.AutoRange? = nil
        
            /// If *tozero*`, the range extends to 0, regardless of the input data If *nonnegative*, the range
            /// is non-negative, regardless of the input data.
            /// 
            /// If *normal*, the range is computed in relation to the extrema of the input data (same behavior
            /// as for cartesian axes).
            public enum RangeMode: String, Encodable {
                case toZero = "tozero"
                case nonNegative = "nonnegative"
                case normal
            }
            /// If *tozero*`, the range extends to 0, regardless of the input data If *nonnegative*, the range
            /// is non-negative, regardless of the input data.
            /// 
            /// If *normal*, the range is computed in relation to the extrema of the input data (same behavior
            /// as for cartesian axes).
            public var rangeMode: RangeMode? = nil
        
            /// Sets the range of this axis.
            /// 
            /// If the axis `type` is *log*, then you must take the log of your desired range (e.g. to set the
            /// range from 1 to 100, set the range from 0 to 2). If the axis `type` is *date*, it should be date
            /// strings, like date data, though Date objects and unix milliseconds will be accepted and
            /// converted to strings. If the axis `type` is *category*, it should be numbers, using the scale
            /// where each category is assigned a serial number from zero in the order it appears.
            public var range: InfoArray? = nil
        
            /// Specifies the ordering logic for the case of categorical variables.
            /// 
            /// By default, plotly uses *trace*, which specifies the order that is present in the data supplied.
            /// Set `categoryorder` to *category ascending* or *category descending* if order should be
            /// determined by the alphanumerical order of the category names. Set `categoryorder` to *array* to
            /// derive the ordering from the attribute `categoryarray`. If a category is not found in the
            /// `categoryarray` array, the sorting behavior for that attribute will be identical to the *trace*
            /// mode. The unspecified categories will follow the categories in `categoryarray`. Set
            /// `categoryorder` to *total ascending* or *total descending* if order should be determined by the
            /// numerical order of the values. Similarly, the order can be determined by the min, max, sum, mean
            /// or median of all the values.
            public var categoryOrder: Shared.CategoryOrder? = nil
        
            /// Sets the order in which categories on this axis appear.
            /// 
            /// Only has an effect if `categoryorder` is set to *array*. Used with `categoryorder`.
            public var categoryArray: [Double]? = nil
        
            /// Sets the angle (in degrees) from which the radial axis is drawn.
            /// 
            /// Note that by default, radial axis line on the theta=0 line corresponds to a line pointing right
            /// (like what mathematicians prefer). Defaults to the first `polar.sector` angle.
            public var angle: Angle? = nil
        
            /// Determines on which side of radial axis line the tick and tick labels appear.
            public enum Side: String, Encodable {
                case clockwise
                case counterClockwise = "counterclockwise"
            }
            /// Determines on which side of radial axis line the tick and tick labels appear.
            public var side: Side? = nil
        
            public var title: Shared.Title? = nil
        
            /// Sets the hover text formatting rule using d3 formatting mini-languages which are very similar to
            /// those in Python.
            /// 
            /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
            /// And for dates see:
            /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
            /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
            /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            public var hoverFormat: String? = nil
        
            /// Controls persistence of user-driven changes in axis `range`, `autorange`, `angle`, and `title`
            /// if in `editable: true` configuration.
            /// 
            /// Defaults to `polar<N>.uirevision`.
            public var uiRevision: Anything? = nil
        
            /// Sets default for all colors associated with this axis all at once: line, font, tick, and grid
            /// colors.
            /// 
            /// Grid color is lightened by blending this with the plot background Individual pieces can override
            /// this.
            public var color: Color? = nil
        
            /// Determines whether or not a line bounding this axis is drawn.
            public var showLine: Bool? = nil
        
            /// Sets the axis line color.
            public var lineColor: Color? = nil
        
            /// Sets the width (in px) of the axis line.
            public var lineWidth: Double? = nil
        
            /// Determines whether or not grid lines are drawn.
            /// 
            /// If *true*, the grid lines are drawn at every tick mark.
            public var showGrid: Bool? = nil
        
            /// Sets the color of the grid lines.
            public var gridColor: Color? = nil
        
            /// Sets the width (in px) of the grid lines.
            public var gridWidth: Double? = nil
        
            /// Sets the tick mode for this axis.
            /// 
            /// If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is
            /// determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value
            /// if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via
            /// `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is
            /// provided).
            public var tickMode: Shared.TickMode? = nil
        
            /// Specifies the maximum number of ticks for the particular axis.
            /// 
            /// The actual number of ticks will be chosen automatically to be less than or equal to `nticks`.
            /// Has an effect only if `tickmode` is set to *auto*.
            public var numTicks: Int? = nil
        
            /// Sets the placement of the first tick on this axis.
            /// 
            /// Use with `dtick`. If the axis `type` is *log*, then you must take the log of your starting tick
            /// (e.g. to set the starting tick to 100, set the `tick0` to 2) except when `dtick`=*L<f>* (see
            /// `dtick` for more info). If the axis `type` is *date*, it should be a date string, like date
            /// data. If the axis `type` is *category*, it should be a number, using the scale where each
            /// category is assigned a serial number from zero in the order it appears.
            public var tick0: Anything? = nil
        
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
            public var dTick: Anything? = nil
        
            /// Sets the values at which ticks on this axis appear.
            /// 
            /// Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
            public var tickValues: [Double]? = nil
        
            /// Sets the text displayed at the ticks position via `tickvals`.
            /// 
            /// Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
            public var tickText: [Double]? = nil
        
            /// Determines whether ticks are drawn or not.
            /// 
            /// If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside
            /// (inside) the axis lines.
            public var ticks: Shared.Ticks? = nil
        
            /// Sets the tick length (in px).
            public var tickLength: Double? = nil
        
            /// Sets the tick width (in px).
            public var tickWidth: Double? = nil
        
            /// Sets the tick color.
            public var tickColor: Color? = nil
        
            /// Determines whether or not the tick labels are drawn.
            public var showTickLabels: Bool? = nil
        
            /// If *all*, all tick labels are displayed with a prefix.
            /// 
            /// If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is
            /// displayed with a suffix. If *none*, tick prefixes are hidden.
            public var showTickPrefix: Shared.ShowTickPrefix? = nil
        
            /// Sets a tick label prefix.
            public var tickPrefix: String? = nil
        
            /// Same as `showtickprefix` but for tick suffixes.
            public var showTickSuffix: Shared.ShowTickSuffix? = nil
        
            /// Sets a tick label suffix.
            public var tickSuffix: String? = nil
        
            /// If *all*, all exponents are shown besides their significands.
            /// 
            /// If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the
            /// last tick is shown. If *none*, no exponents appear.
            public var showExponent: Shared.ShowExponent? = nil
        
            /// Determines a formatting rule for the tick exponents.
            /// 
            /// For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*,
            /// 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
            public var exponentFormat: Shared.ExponentFormat? = nil
        
            /// If "true", even 4-digit integers are separated
            public var separateThousands: Bool? = nil
        
            /// Sets the tick font.
            public var tickFont: Shared.Font? = nil
        
            /// Sets the angle of the tick labels with respect to the horizontal.
            /// 
            /// For example, a `tickangle` of -90 draws the tick labels vertically.
            public var tickAngle: Angle? = nil
        
            /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to
            /// those in Python.
            /// 
            /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
            /// And for dates see:
            /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
            /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
            /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            public var tickFormat: String? = nil
        
            public var tickFormatStops: [Shared.TickFormatStop]? = nil
        
            /// Sets the layer on which this axis is displayed.
            /// 
            /// If *above traces*, this axis is displayed above all the subplot's traces If *below traces*, this
            /// axis is displayed below all the subplot's traces, but above the grid lines. Useful when used
            /// together with scatter-like traces with `cliponaxis` set to *false* to show markers and/or text
            /// nodes above this axis.
            public var layer: Shared.Layer? = nil
        
            /// Sets the calendar system to use for `range` and `tick0` if this is a date axis.
            /// 
            /// This does not set the calendar for interpreting data on this axis, that's specified in the trace
            /// or via the global `layout.calendar`
            public var calendar: Shared.Calendar? = nil
        
            /// Decoding and encoding keys compatible with Plotly schema.
            enum CodingKeys: String, CodingKey {
                case visible
                case type
                case autoRange = "autorange"
                case rangeMode = "rangemode"
                case range
                case categoryOrder = "categoryorder"
                case categoryArray = "categoryarray"
                case angle
                case side
                case title
                case hoverFormat = "hoverformat"
                case uiRevision = "uirevision"
                case color
                case showLine = "showline"
                case lineColor = "linecolor"
                case lineWidth = "linewidth"
                case showGrid = "showgrid"
                case gridColor = "gridcolor"
                case gridWidth = "gridwidth"
                case tickMode = "tickmode"
                case numTicks = "nticks"
                case tick0
                case dTick = "dtick"
                case tickValues = "tickvals"
                case tickText = "ticktext"
                case ticks
                case tickLength = "ticklen"
                case tickWidth = "tickwidth"
                case tickColor = "tickcolor"
                case showTickLabels = "showticklabels"
                case showTickPrefix = "showtickprefix"
                case tickPrefix = "tickprefix"
                case showTickSuffix = "showticksuffix"
                case tickSuffix = "ticksuffix"
                case showExponent = "showexponent"
                case exponentFormat = "exponentformat"
                case separateThousands = "separatethousands"
                case tickFont = "tickfont"
                case tickAngle = "tickangle"
                case tickFormat = "tickformat"
                case tickFormatStops = "tickformatstops"
                case layer
                case calendar
            }
            
            /// Creates `RadialAxis` object with specified properties.
            /// 
            /// - Parameters:
            ///   - visible: A single toggle to hide the axis while preserving interaction like dragging.
            ///   - type: Sets the axis type.
            ///   - autoRange: Determines whether or not the range of this axis is computed in relation to the
            ///   input data.
            ///   - rangeMode: If *tozero*`, the range extends to 0, regardless of the input data If
            ///   *nonnegative*, the range is non-negative, regardless of the input data.
            ///   - range: Sets the range of this axis.
            ///   - categoryOrder: Specifies the ordering logic for the case of categorical variables.
            ///   - categoryArray: Sets the order in which categories on this axis appear.
            ///   - angle: Sets the angle (in degrees) from which the radial axis is drawn.
            ///   - side: Determines on which side of radial axis line the tick and tick labels appear.
            ///   - title:
            ///   - hoverFormat: Sets the hover text formatting rule using d3 formatting mini-languages which are
            ///   very similar to those in Python.
            ///   - uiRevision: Controls persistence of user-driven changes in axis `range`, `autorange`, `angle`,
            ///   and `title` if in `editable: true` configuration.
            ///   - color: Sets default for all colors associated with this axis all at once: line, font, tick,
            ///   and grid colors.
            ///   - showLine: Determines whether or not a line bounding this axis is drawn.
            ///   - lineColor: Sets the axis line color.
            ///   - lineWidth: Sets the width (in px) of the axis line.
            ///   - showGrid: Determines whether or not grid lines are drawn.
            ///   - gridColor: Sets the color of the grid lines.
            ///   - gridWidth: Sets the width (in px) of the grid lines.
            ///   - tickMode: Sets the tick mode for this axis.
            ///   - numTicks: Specifies the maximum number of ticks for the particular axis.
            ///   - tick0: Sets the placement of the first tick on this axis.
            ///   - dTick: Sets the step in-between ticks on this axis.
            ///   - tickValues: Sets the values at which ticks on this axis appear.
            ///   - tickText: Sets the text displayed at the ticks position via `tickvals`.
            ///   - ticks: Determines whether ticks are drawn or not.
            ///   - tickLength: Sets the tick length (in px).
            ///   - tickWidth: Sets the tick width (in px).
            ///   - tickColor: Sets the tick color.
            ///   - showTickLabels: Determines whether or not the tick labels are drawn.
            ///   - showTickPrefix: If *all*, all tick labels are displayed with a prefix.
            ///   - tickPrefix: Sets a tick label prefix.
            ///   - showTickSuffix: Same as `showtickprefix` but for tick suffixes.
            ///   - tickSuffix: Sets a tick label suffix.
            ///   - showExponent: If *all*, all exponents are shown besides their significands.
            ///   - exponentFormat: Determines a formatting rule for the tick exponents.
            ///   - separateThousands: If "true", even 4-digit integers are separated
            ///   - tickFont: Sets the tick font.
            ///   - tickAngle: Sets the angle of the tick labels with respect to the horizontal.
            ///   - tickFormat: Sets the tick label formatting rule using d3 formatting mini-languages which are
            ///   very similar to those in Python.
            ///   - tickFormatStops:
            ///   - layer: Sets the layer on which this axis is displayed.
            ///   - calendar: Sets the calendar system to use for `range` and `tick0` if this is a date axis.
            public init(visible: Bool? = nil, type: `Type`? = nil, autoRange: Shared.AutoRange? = nil,
                    rangeMode: RangeMode? = nil, range: InfoArray? = nil, categoryOrder: Shared.CategoryOrder? =
                    nil, categoryArray: [Double]? = nil, angle: Angle? = nil, side: Side? = nil, title:
                    Shared.Title? = nil, hoverFormat: String? = nil, uiRevision: Anything? = nil, color: Color? =
                    nil, showLine: Bool? = nil, lineColor: Color? = nil, lineWidth: Double? = nil, showGrid: Bool? =
                    nil, gridColor: Color? = nil, gridWidth: Double? = nil, tickMode: Shared.TickMode? = nil,
                    numTicks: Int? = nil, tick0: Anything? = nil, dTick: Anything? = nil, tickValues: [Double]? =
                    nil, tickText: [Double]? = nil, ticks: Shared.Ticks? = nil, tickLength: Double? = nil,
                    tickWidth: Double? = nil, tickColor: Color? = nil, showTickLabels: Bool? = nil, showTickPrefix:
                    Shared.ShowTickPrefix? = nil, tickPrefix: String? = nil, showTickSuffix: Shared.ShowTickSuffix?
                    = nil, tickSuffix: String? = nil, showExponent: Shared.ShowExponent? = nil, exponentFormat:
                    Shared.ExponentFormat? = nil, separateThousands: Bool? = nil, tickFont: Shared.Font? = nil,
                    tickAngle: Angle? = nil, tickFormat: String? = nil, tickFormatStops: [Shared.TickFormatStop]? =
                    nil, layer: Shared.Layer? = nil, calendar: Shared.Calendar? = nil) {
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
                self.separateThousands = separateThousands
                self.tickFont = tickFont
                self.tickAngle = tickAngle
                self.tickFormat = tickFormat
                self.tickFormatStops = tickFormatStops
                self.layer = layer
                self.calendar = calendar
            }
            
        }
        public var radialAxis: RadialAxis? = nil
    
        public struct AngularAxis: Encodable {
            /// A single toggle to hide the axis while preserving interaction like dragging.
            /// 
            /// Default is true when a cheater plot is present on the axis, otherwise false
            public var visible: Bool? = nil
        
            /// Sets the angular axis type.
            /// 
            /// If *linear*, set `thetaunit` to determine the unit in which axis value are shown. If *category,
            /// use `period` to set the number of integer coordinates around polar axis.
            public enum `Type`: String, Encodable {
                case auto = "-"
                case linear
                case category
            }
            /// Sets the angular axis type.
            /// 
            /// If *linear*, set `thetaunit` to determine the unit in which axis value are shown. If *category,
            /// use `period` to set the number of integer coordinates around polar axis.
            public var type: `Type`? = nil
        
            /// Specifies the ordering logic for the case of categorical variables.
            /// 
            /// By default, plotly uses *trace*, which specifies the order that is present in the data supplied.
            /// Set `categoryorder` to *category ascending* or *category descending* if order should be
            /// determined by the alphanumerical order of the category names. Set `categoryorder` to *array* to
            /// derive the ordering from the attribute `categoryarray`. If a category is not found in the
            /// `categoryarray` array, the sorting behavior for that attribute will be identical to the *trace*
            /// mode. The unspecified categories will follow the categories in `categoryarray`. Set
            /// `categoryorder` to *total ascending* or *total descending* if order should be determined by the
            /// numerical order of the values. Similarly, the order can be determined by the min, max, sum, mean
            /// or median of all the values.
            public var categoryOrder: Shared.CategoryOrder? = nil
        
            /// Sets the order in which categories on this axis appear.
            /// 
            /// Only has an effect if `categoryorder` is set to *array*. Used with `categoryorder`.
            public var categoryArray: [Double]? = nil
        
            /// Sets the format unit of the formatted *theta* values.
            /// 
            /// Has an effect only when `angularaxis.type` is *linear*.
            public enum ThetaUnit: String, Encodable {
                case radians
                case degrees
            }
            /// Sets the format unit of the formatted *theta* values.
            /// 
            /// Has an effect only when `angularaxis.type` is *linear*.
            public var thetaUnit: ThetaUnit? = nil
        
            /// Set the angular period.
            /// 
            /// Has an effect only when `angularaxis.type` is *category*.
            public var period: Double? = nil
        
            /// Sets the direction corresponding to positive angles.
            public enum Direction: String, Encodable {
                case counterClockwise = "counterclockwise"
                case clockwise
            }
            /// Sets the direction corresponding to positive angles.
            public var direction: Direction? = nil
        
            /// Sets that start position (in degrees) of the angular axis By default, polar subplots with
            /// `direction` set to *counterclockwise* get a `rotation` of *0* which corresponds to due East
            /// (like what mathematicians prefer).
            /// 
            /// In turn, polar with `direction` set to *clockwise* get a rotation of *90* which corresponds to
            /// due North (like on a compass),
            public var rotation: Angle? = nil
        
            /// Sets the hover text formatting rule using d3 formatting mini-languages which are very similar to
            /// those in Python.
            /// 
            /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
            /// And for dates see:
            /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
            /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
            /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            public var hoverFormat: String? = nil
        
            /// Controls persistence of user-driven changes in axis `rotation`.
            /// 
            /// Defaults to `polar<N>.uirevision`.
            public var uiRevision: Anything? = nil
        
            /// Sets default for all colors associated with this axis all at once: line, font, tick, and grid
            /// colors.
            /// 
            /// Grid color is lightened by blending this with the plot background Individual pieces can override
            /// this.
            public var color: Color? = nil
        
            /// Determines whether or not a line bounding this axis is drawn.
            public var showLine: Bool? = nil
        
            /// Sets the axis line color.
            public var lineColor: Color? = nil
        
            /// Sets the width (in px) of the axis line.
            public var lineWidth: Double? = nil
        
            /// Determines whether or not grid lines are drawn.
            /// 
            /// If *true*, the grid lines are drawn at every tick mark.
            public var showGrid: Bool? = nil
        
            /// Sets the color of the grid lines.
            public var gridColor: Color? = nil
        
            /// Sets the width (in px) of the grid lines.
            public var gridWidth: Double? = nil
        
            /// Sets the tick mode for this axis.
            /// 
            /// If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is
            /// determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value
            /// if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via
            /// `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is
            /// provided).
            public var tickMode: Shared.TickMode? = nil
        
            /// Specifies the maximum number of ticks for the particular axis.
            /// 
            /// The actual number of ticks will be chosen automatically to be less than or equal to `nticks`.
            /// Has an effect only if `tickmode` is set to *auto*.
            public var numTicks: Int? = nil
        
            /// Sets the placement of the first tick on this axis.
            /// 
            /// Use with `dtick`. If the axis `type` is *log*, then you must take the log of your starting tick
            /// (e.g. to set the starting tick to 100, set the `tick0` to 2) except when `dtick`=*L<f>* (see
            /// `dtick` for more info). If the axis `type` is *date*, it should be a date string, like date
            /// data. If the axis `type` is *category*, it should be a number, using the scale where each
            /// category is assigned a serial number from zero in the order it appears.
            public var tick0: Anything? = nil
        
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
            public var dTick: Anything? = nil
        
            /// Sets the values at which ticks on this axis appear.
            /// 
            /// Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
            public var tickValues: [Double]? = nil
        
            /// Sets the text displayed at the ticks position via `tickvals`.
            /// 
            /// Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
            public var tickText: [Double]? = nil
        
            /// Determines whether ticks are drawn or not.
            /// 
            /// If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside
            /// (inside) the axis lines.
            public var ticks: Shared.Ticks? = nil
        
            /// Sets the tick length (in px).
            public var tickLength: Double? = nil
        
            /// Sets the tick width (in px).
            public var tickWidth: Double? = nil
        
            /// Sets the tick color.
            public var tickColor: Color? = nil
        
            /// Determines whether or not the tick labels are drawn.
            public var showTickLabels: Bool? = nil
        
            /// If *all*, all tick labels are displayed with a prefix.
            /// 
            /// If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is
            /// displayed with a suffix. If *none*, tick prefixes are hidden.
            public var showTickPrefix: Shared.ShowTickPrefix? = nil
        
            /// Sets a tick label prefix.
            public var tickPrefix: String? = nil
        
            /// Same as `showtickprefix` but for tick suffixes.
            public var showTickSuffix: Shared.ShowTickSuffix? = nil
        
            /// Sets a tick label suffix.
            public var tickSuffix: String? = nil
        
            /// If *all*, all exponents are shown besides their significands.
            /// 
            /// If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the
            /// last tick is shown. If *none*, no exponents appear.
            public var showExponent: Shared.ShowExponent? = nil
        
            /// Determines a formatting rule for the tick exponents.
            /// 
            /// For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*,
            /// 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
            public var exponentFormat: Shared.ExponentFormat? = nil
        
            /// If "true", even 4-digit integers are separated
            public var separateThousands: Bool? = nil
        
            /// Sets the tick font.
            public var tickFont: Shared.Font? = nil
        
            /// Sets the angle of the tick labels with respect to the horizontal.
            /// 
            /// For example, a `tickangle` of -90 draws the tick labels vertically.
            public var tickAngle: Angle? = nil
        
            /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to
            /// those in Python.
            /// 
            /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
            /// And for dates see:
            /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
            /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
            /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            public var tickFormat: String? = nil
        
            public var tickFormatStops: [Shared.TickFormatStop]? = nil
        
            /// Sets the layer on which this axis is displayed.
            /// 
            /// If *above traces*, this axis is displayed above all the subplot's traces If *below traces*, this
            /// axis is displayed below all the subplot's traces, but above the grid lines. Useful when used
            /// together with scatter-like traces with `cliponaxis` set to *false* to show markers and/or text
            /// nodes above this axis.
            public var layer: Shared.Layer? = nil
        
            /// Decoding and encoding keys compatible with Plotly schema.
            enum CodingKeys: String, CodingKey {
                case visible
                case type
                case categoryOrder = "categoryorder"
                case categoryArray = "categoryarray"
                case thetaUnit = "thetaunit"
                case period
                case direction
                case rotation
                case hoverFormat = "hoverformat"
                case uiRevision = "uirevision"
                case color
                case showLine = "showline"
                case lineColor = "linecolor"
                case lineWidth = "linewidth"
                case showGrid = "showgrid"
                case gridColor = "gridcolor"
                case gridWidth = "gridwidth"
                case tickMode = "tickmode"
                case numTicks = "nticks"
                case tick0
                case dTick = "dtick"
                case tickValues = "tickvals"
                case tickText = "ticktext"
                case ticks
                case tickLength = "ticklen"
                case tickWidth = "tickwidth"
                case tickColor = "tickcolor"
                case showTickLabels = "showticklabels"
                case showTickPrefix = "showtickprefix"
                case tickPrefix = "tickprefix"
                case showTickSuffix = "showticksuffix"
                case tickSuffix = "ticksuffix"
                case showExponent = "showexponent"
                case exponentFormat = "exponentformat"
                case separateThousands = "separatethousands"
                case tickFont = "tickfont"
                case tickAngle = "tickangle"
                case tickFormat = "tickformat"
                case tickFormatStops = "tickformatstops"
                case layer
            }
            
            /// Creates `AngularAxis` object with specified properties.
            /// 
            /// - Parameters:
            ///   - visible: A single toggle to hide the axis while preserving interaction like dragging.
            ///   - type: Sets the angular axis type.
            ///   - categoryOrder: Specifies the ordering logic for the case of categorical variables.
            ///   - categoryArray: Sets the order in which categories on this axis appear.
            ///   - thetaUnit: Sets the format unit of the formatted *theta* values.
            ///   - period: Set the angular period.
            ///   - direction: Sets the direction corresponding to positive angles.
            ///   - rotation: Sets that start position (in degrees) of the angular axis By default, polar subplots
            ///   with `direction` set to *counterclockwise* get a `rotation` of *0* which corresponds to due East
            ///   (like what mathematicians prefer).
            ///   - hoverFormat: Sets the hover text formatting rule using d3 formatting mini-languages which are
            ///   very similar to those in Python.
            ///   - uiRevision: Controls persistence of user-driven changes in axis `rotation`.
            ///   - color: Sets default for all colors associated with this axis all at once: line, font, tick,
            ///   and grid colors.
            ///   - showLine: Determines whether or not a line bounding this axis is drawn.
            ///   - lineColor: Sets the axis line color.
            ///   - lineWidth: Sets the width (in px) of the axis line.
            ///   - showGrid: Determines whether or not grid lines are drawn.
            ///   - gridColor: Sets the color of the grid lines.
            ///   - gridWidth: Sets the width (in px) of the grid lines.
            ///   - tickMode: Sets the tick mode for this axis.
            ///   - numTicks: Specifies the maximum number of ticks for the particular axis.
            ///   - tick0: Sets the placement of the first tick on this axis.
            ///   - dTick: Sets the step in-between ticks on this axis.
            ///   - tickValues: Sets the values at which ticks on this axis appear.
            ///   - tickText: Sets the text displayed at the ticks position via `tickvals`.
            ///   - ticks: Determines whether ticks are drawn or not.
            ///   - tickLength: Sets the tick length (in px).
            ///   - tickWidth: Sets the tick width (in px).
            ///   - tickColor: Sets the tick color.
            ///   - showTickLabels: Determines whether or not the tick labels are drawn.
            ///   - showTickPrefix: If *all*, all tick labels are displayed with a prefix.
            ///   - tickPrefix: Sets a tick label prefix.
            ///   - showTickSuffix: Same as `showtickprefix` but for tick suffixes.
            ///   - tickSuffix: Sets a tick label suffix.
            ///   - showExponent: If *all*, all exponents are shown besides their significands.
            ///   - exponentFormat: Determines a formatting rule for the tick exponents.
            ///   - separateThousands: If "true", even 4-digit integers are separated
            ///   - tickFont: Sets the tick font.
            ///   - tickAngle: Sets the angle of the tick labels with respect to the horizontal.
            ///   - tickFormat: Sets the tick label formatting rule using d3 formatting mini-languages which are
            ///   very similar to those in Python.
            ///   - tickFormatStops:
            ///   - layer: Sets the layer on which this axis is displayed.
            public init(visible: Bool? = nil, type: `Type`? = nil, categoryOrder: Shared.CategoryOrder? =
                    nil, categoryArray: [Double]? = nil, thetaUnit: ThetaUnit? = nil, period: Double? = nil,
                    direction: Direction? = nil, rotation: Angle? = nil, hoverFormat: String? = nil, uiRevision:
                    Anything? = nil, color: Color? = nil, showLine: Bool? = nil, lineColor: Color? = nil, lineWidth:
                    Double? = nil, showGrid: Bool? = nil, gridColor: Color? = nil, gridWidth: Double? = nil,
                    tickMode: Shared.TickMode? = nil, numTicks: Int? = nil, tick0: Anything? = nil, dTick: Anything?
                    = nil, tickValues: [Double]? = nil, tickText: [Double]? = nil, ticks: Shared.Ticks? = nil,
                    tickLength: Double? = nil, tickWidth: Double? = nil, tickColor: Color? = nil, showTickLabels:
                    Bool? = nil, showTickPrefix: Shared.ShowTickPrefix? = nil, tickPrefix: String? = nil,
                    showTickSuffix: Shared.ShowTickSuffix? = nil, tickSuffix: String? = nil, showExponent:
                    Shared.ShowExponent? = nil, exponentFormat: Shared.ExponentFormat? = nil, separateThousands:
                    Bool? = nil, tickFont: Shared.Font? = nil, tickAngle: Angle? = nil, tickFormat: String? = nil,
                    tickFormatStops: [Shared.TickFormatStop]? = nil, layer: Shared.Layer? = nil) {
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
                self.separateThousands = separateThousands
                self.tickFont = tickFont
                self.tickAngle = tickAngle
                self.tickFormat = tickFormat
                self.tickFormatStops = tickFormatStops
                self.layer = layer
            }
            
        }
        public var angularAxis: AngularAxis? = nil
    
        /// Determines if the radial axis grid lines and angular axis line are drawn as *circular* sectors
        /// or as *linear* (polygon) sectors.
        /// 
        /// Has an effect only when the angular axis has `type` *category*. Note that `radialaxis.angle` is
        /// snapped to the angle of the closest vertex when `gridshape` is *circular* (so that radial axis
        /// scale is the same as the data scale).
        public enum GridShape: String, Encodable {
            case circular
            case linear
        }
        /// Determines if the radial axis grid lines and angular axis line are drawn as *circular* sectors
        /// or as *linear* (polygon) sectors.
        /// 
        /// Has an effect only when the angular axis has `type` *category*. Note that `radialaxis.angle` is
        /// snapped to the angle of the closest vertex when `gridshape` is *circular* (so that radial axis
        /// scale is the same as the data scale).
        public var gridShape: GridShape? = nil
    
        /// Controls persistence of user-driven changes in axis attributes, if not overridden in the
        /// individual axes.
        /// 
        /// Defaults to `layout.uirevision`.
        public var uiRevision: Anything? = nil
    
        /// Decoding and encoding keys compatible with Plotly schema.
        enum CodingKeys: String, CodingKey {
            case domain
            case sector
            case hole
            case backgroundColor = "bgcolor"
            case radialAxis = "radialaxis"
            case angularAxis = "angularaxis"
            case gridShape = "gridshape"
            case uiRevision = "uirevision"
        }
        
        /// Creates `Polar` object with specified properties.
        /// 
        /// - Parameters:
        ///   - uid:
        ///   - domain:
        ///   - sector: Sets angular span of this polar subplot with two angles (in degrees).
        ///   - hole: Sets the fraction of the radius to cut out of the polar subplot.
        ///   - backgroundColor: Set the background color of the subplot
        ///   - radialAxis:
        ///   - angularAxis:
        ///   - gridShape: Determines if the radial axis grid lines and angular axis line are drawn as
        ///   *circular* sectors or as *linear* (polygon) sectors.
        ///   - uiRevision: Controls persistence of user-driven changes in axis attributes, if not overridden
        ///   in the individual axes.
        public init(uid: UInt = UInt.random(in: 2...UInt.max), domain: Shared.Domain? = nil, sector:
                InfoArray? = nil, hole: Double? = nil, backgroundColor: Color? = nil, radialAxis: RadialAxis? =
                nil, angularAxis: AngularAxis? = nil, gridShape: GridShape? = nil, uiRevision: Anything? = nil)
                {
            self.uid = uid
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
    public var polar: [Polar] = []

    
    // MARK: - Legend, Labels and Shapes

    public struct Legend: Encodable {
        /// Sets the legend background color.
        public var backgroundColor: Color? = nil
    
        /// Sets the color of the border enclosing the legend.
        public var borderColor: Color? = nil
    
        /// Sets the width (in px) of the border enclosing the legend.
        public var borderWidth: Double? = nil
    
        /// Sets the font used to text the legend items.
        public var font: Shared.Font? = nil
    
        /// Sets the orientation of the legend.
        public var orientation: Shared.Orientation? = nil
    
        /// Determines the order at which the legend items are displayed.
        /// 
        /// If *normal*, the items are displayed top-to-bottom in the same order as the input data. If
        /// *reversed*, the items are displayed in the opposite order as *normal*. If *grouped*, the items
        /// are displayed in groups (when a trace `legendgroup` is provided). if *grouped+reversed*, the
        /// items are displayed in the opposite order as *grouped*.
        public struct TraceOrder: OptionSet, Encodable {
            public let rawValue: Int
            public static var reversed: TraceOrder { TraceOrder(rawValue: 1 << 0) }
            public static var grouped: TraceOrder { TraceOrder(rawValue: 1 << 1) }
            public static var normal: TraceOrder { TraceOrder(rawValue: 1 << 2) }
            
            public init(rawValue: Int) {
                self.rawValue = rawValue
            }
            
            public func encode(to encoder: Encoder) throws {
                var options = [String]()
                if (self.rawValue & 1 << 0) != 0 { options += ["reversed"] }
                if (self.rawValue & 1 << 1) != 0 { options += ["grouped"] }
                if (self.rawValue & 1 << 2) != 0 { options += ["normal"] }
                var container = encoder.singleValueContainer()
                try container.encode(options.joined(separator: "+"))
            }
        }
        /// Determines the order at which the legend items are displayed.
        /// 
        /// If *normal*, the items are displayed top-to-bottom in the same order as the input data. If
        /// *reversed*, the items are displayed in the opposite order as *normal*. If *grouped*, the items
        /// are displayed in groups (when a trace `legendgroup` is provided). if *grouped+reversed*, the
        /// items are displayed in the opposite order as *grouped*.
        public var traceOrder: TraceOrder? = nil
    
        /// Sets the amount of vertical space (in px) between legend groups.
        public var traceGroupGap: Double? = nil
    
        /// Determines if the legend items symbols scale with their corresponding *trace* attributes or
        /// remain *constant* independent of the symbol size on the graph.
        public enum ItemSizing: String, Encodable {
            case trace
            case constant
        }
        /// Determines if the legend items symbols scale with their corresponding *trace* attributes or
        /// remain *constant* independent of the symbol size on the graph.
        public var itemSizing: ItemSizing? = nil
    
        /// Determines the behavior on legend item click.
        /// 
        /// *toggle* toggles the visibility of the item clicked on the graph. *toggleothers* makes the
        /// clicked item the sole visible item on the graph. *false* disable legend item click interactions.
        public enum ItemClick: Encodable {
            case toggle
            case toggleOthers
            case off
            public func encode(to encoder: Encoder) throws {
                var container = encoder.singleValueContainer()
                switch self {
                case .toggle:
                    try container.encode("toggle")
                case .toggleOthers:
                    try container.encode("toggleothers")
                case .off:
                    try container.encode(false)
                }
            }
        }
        /// Determines the behavior on legend item click.
        /// 
        /// *toggle* toggles the visibility of the item clicked on the graph. *toggleothers* makes the
        /// clicked item the sole visible item on the graph. *false* disable legend item click interactions.
        public var itemClick: ItemClick? = nil
    
        /// Determines the behavior on legend item double-click.
        /// 
        /// *toggle* toggles the visibility of the item clicked on the graph. *toggleothers* makes the
        /// clicked item the sole visible item on the graph. *false* disable legend item double-click
        /// interactions.
        public enum ItemDoubleClick: Encodable {
            case toggle
            case toggleOthers
            case off
            public func encode(to encoder: Encoder) throws {
                var container = encoder.singleValueContainer()
                switch self {
                case .toggle:
                    try container.encode("toggle")
                case .toggleOthers:
                    try container.encode("toggleothers")
                case .off:
                    try container.encode(false)
                }
            }
        }
        /// Determines the behavior on legend item double-click.
        /// 
        /// *toggle* toggles the visibility of the item clicked on the graph. *toggleothers* makes the
        /// clicked item the sole visible item on the graph. *false* disable legend item double-click
        /// interactions.
        public var itemDoubleClick: ItemDoubleClick? = nil
    
        /// Sets the x position (in normalized coordinates) of the legend.
        /// 
        /// Defaults to *1.02* for vertical legends and defaults to *0* for horizontal legends.
        public var x: Double? = nil
    
        /// Sets the legend's horizontal position anchor.
        /// 
        /// This anchor binds the `x` position to the *left*, *center* or *right* of the legend. Value
        /// *auto* anchors legends to the right for `x` values greater than or equal to 2/3, anchors legends
        /// to the left for `x` values less than or equal to 1/3 and anchors legends with respect to their
        /// center otherwise.
        public var xAnchor: Shared.XAutoAnchor? = nil
    
        /// Sets the y position (in normalized coordinates) of the legend.
        /// 
        /// Defaults to *1* for vertical legends, defaults to *-0.1* for horizontal legends on graphs w/o
        /// range sliders and defaults to *1.1* for horizontal legends on graph with one or multiple range
        /// sliders.
        public var y: Double? = nil
    
        /// Sets the legend's vertical position anchor This anchor binds the `y` position to the *top*,
        /// *middle* or *bottom* of the legend.
        /// 
        /// Value *auto* anchors legends at their bottom for `y` values less than or equal to 1/3, anchors
        /// legends to at their top for `y` values greater than or equal to 2/3 and anchors legends with
        /// respect to their middle otherwise.
        public var yAnchor: Shared.YAutoAnchor? = nil
    
        /// Controls persistence of legend-driven changes in trace and pie label visibility.
        /// 
        /// Defaults to `layout.uirevision`.
        public var uiRevision: Anything? = nil
    
        /// Sets the vertical alignment of the symbols with respect to their associated text.
        public var verticalAlign: Shared.VerticalAlign? = nil
    
        /// Decoding and encoding keys compatible with Plotly schema.
        enum CodingKeys: String, CodingKey {
            case backgroundColor = "bgcolor"
            case borderColor = "bordercolor"
            case borderWidth = "borderwidth"
            case font
            case orientation
            case traceOrder = "traceorder"
            case traceGroupGap = "tracegroupgap"
            case itemSizing = "itemsizing"
            case itemClick = "itemclick"
            case itemDoubleClick = "itemdoubleclick"
            case x
            case xAnchor = "xanchor"
            case y
            case yAnchor = "yanchor"
            case uiRevision = "uirevision"
            case verticalAlign = "valign"
        }
        
        /// Creates `Legend` object with specified properties.
        /// 
        /// - Parameters:
        ///   - backgroundColor: Sets the legend background color.
        ///   - borderColor: Sets the color of the border enclosing the legend.
        ///   - borderWidth: Sets the width (in px) of the border enclosing the legend.
        ///   - font: Sets the font used to text the legend items.
        ///   - orientation: Sets the orientation of the legend.
        ///   - traceOrder: Determines the order at which the legend items are displayed.
        ///   - traceGroupGap: Sets the amount of vertical space (in px) between legend groups.
        ///   - itemSizing: Determines if the legend items symbols scale with their corresponding *trace*
        ///   attributes or remain *constant* independent of the symbol size on the graph.
        ///   - itemClick: Determines the behavior on legend item click.
        ///   - itemDoubleClick: Determines the behavior on legend item double-click.
        ///   - x: Sets the x position (in normalized coordinates) of the legend.
        ///   - xAnchor: Sets the legend's horizontal position anchor.
        ///   - y: Sets the y position (in normalized coordinates) of the legend.
        ///   - yAnchor: Sets the legend's vertical position anchor This anchor binds the `y` position to the
        ///   *top*, *middle* or *bottom* of the legend.
        ///   - uiRevision: Controls persistence of legend-driven changes in trace and pie label visibility.
        ///   - verticalAlign: Sets the vertical alignment of the symbols with respect to their associated
        ///   text.
        public init(backgroundColor: Color? = nil, borderColor: Color? = nil, borderWidth: Double? =
                nil, font: Shared.Font? = nil, orientation: Shared.Orientation? = nil, traceOrder: TraceOrder? =
                nil, traceGroupGap: Double? = nil, itemSizing: ItemSizing? = nil, itemClick: ItemClick? = nil,
                itemDoubleClick: ItemDoubleClick? = nil, x: Double? = nil, xAnchor: Shared.XAutoAnchor? = nil,
                y: Double? = nil, yAnchor: Shared.YAutoAnchor? = nil, uiRevision: Anything? = nil,
                verticalAlign: Shared.VerticalAlign? = nil) {
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
    public var legend: Legend? = nil

    public struct Annotation: Encodable {
        /// Determines whether or not this annotation is visible.
        public var visible: Bool? = nil
    
        /// Sets the text associated with this annotation.
        /// 
        /// Plotly uses a subset of HTML tags to do things like newline (<br>), bold (<b></b>), italics
        /// (<i></i>), hyperlinks (<a href='...'></a>). Tags <em>, <sup>, <sub> <span> are also supported.
        public var text: String? = nil
    
        /// Sets the angle at which the `text` is drawn with respect to the horizontal.
        public var textAngle: Angle? = nil
    
        /// Sets the annotation text font.
        public var font: Shared.Font? = nil
    
        /// Sets an explicit width for the text box.
        /// 
        /// null (default) lets the text set the box width. Wider text will be clipped. There is no
        /// automatic wrapping; use <br> to start a new line.
        public var width: Double? = nil
    
        /// Sets an explicit height for the text box.
        /// 
        /// null (default) lets the text set the box height. Taller text will be clipped.
        public var height: Double? = nil
    
        /// Sets the opacity of the annotation (text + arrow).
        public var opacity: Double? = nil
    
        /// Sets the horizontal alignment of the `text` within the box.
        /// 
        /// Has an effect only if `text` spans more two or more lines (i.e. `text` contains one or more <br>
        /// HTML tags) or if an explicit width is set to override the text width.
        public var align: Shared.HorizontalAlign? = nil
    
        /// Sets the vertical alignment of the `text` within the box.
        /// 
        /// Has an effect only if an explicit height is set to override the text height.
        public var verticalAlign: Shared.VerticalAlign? = nil
    
        /// Sets the background color of the annotation.
        public var backgroundColor: Color? = nil
    
        /// Sets the color of the border enclosing the annotation `text`.
        public var borderColor: Color? = nil
    
        /// Sets the padding (in px) between the `text` and the enclosing border.
        public var borderPadding: Double? = nil
    
        /// Sets the width (in px) of the border enclosing the annotation `text`.
        public var borderWidth: Double? = nil
    
        /// Determines whether or not the annotation is drawn with an arrow.
        /// 
        /// If *true*, `text` is placed near the arrow's tail. If *false*, `text` lines up with the `x` and
        /// `y` provided.
        public var showArrow: Bool? = nil
    
        /// Sets the color of the annotation arrow.
        public var arrowColor: Color? = nil
    
        /// Sets the end annotation arrow head style.
        public var arrowHead: Int? = nil
    
        /// Sets the start annotation arrow head style.
        public var startArrowHead: Int? = nil
    
        /// Sets the annotation arrow head position.
        public struct ArrowSide: OptionSet, Encodable {
            public let rawValue: Int
            public static var end: ArrowSide { ArrowSide(rawValue: 1 << 0) }
            public static var start: ArrowSide { ArrowSide(rawValue: 1 << 1) }
            public static var none: ArrowSide { ArrowSide(rawValue: 1 << 2) }
            
            public init(rawValue: Int) {
                self.rawValue = rawValue
            }
            
            public func encode(to encoder: Encoder) throws {
                var options = [String]()
                if (self.rawValue & 1 << 0) != 0 { options += ["end"] }
                if (self.rawValue & 1 << 1) != 0 { options += ["start"] }
                if (self.rawValue & 1 << 2) != 0 { options += ["none"] }
                var container = encoder.singleValueContainer()
                try container.encode(options.joined(separator: "+"))
            }
        }
        /// Sets the annotation arrow head position.
        public var arrowSide: ArrowSide? = nil
    
        /// Sets the size of the end annotation arrow head, relative to `arrowwidth`.
        /// 
        /// A value of 1 (default) gives a head about 3x as wide as the line.
        public var arrowSize: Double? = nil
    
        /// Sets the size of the start annotation arrow head, relative to `arrowwidth`.
        /// 
        /// A value of 1 (default) gives a head about 3x as wide as the line.
        public var startArrowSize: Double? = nil
    
        /// Sets the width (in px) of annotation arrow line.
        public var arrowWidth: Double? = nil
    
        /// Sets a distance, in pixels, to move the end arrowhead away from the position it is pointing at,
        /// for example to point at the edge of a marker independent of zoom.
        /// 
        /// Note that this shortens the arrow from the `ax` / `ay` vector, in contrast to `xshift` /
        /// `yshift` which moves everything by this amount.
        public var standoff: Double? = nil
    
        /// Sets a distance, in pixels, to move the start arrowhead away from the position it is pointing
        /// at, for example to point at the edge of a marker independent of zoom.
        /// 
        /// Note that this shortens the arrow from the `ax` / `ay` vector, in contrast to `xshift` /
        /// `yshift` which moves everything by this amount.
        public var startStandoff: Double? = nil
    
        /// Sets the x component of the arrow tail about the arrow head.
        /// 
        /// If `axref` is `pixel`, a positive (negative) component corresponds to an arrow pointing from
        /// right to left (left to right). If `axref` is an axis, this is an absolute value on that axis,
        /// like `x`, NOT a relative value.
        public var ax: Anything? = nil
    
        /// Sets the y component of the arrow tail about the arrow head.
        /// 
        /// If `ayref` is `pixel`, a positive (negative) component corresponds to an arrow pointing from
        /// bottom to top (top to bottom). If `ayref` is an axis, this is an absolute value on that axis,
        /// like `y`, NOT a relative value.
        public var ay: Anything? = nil
    
        /// Indicates in what terms the tail of the annotation (ax,ay) is specified.
        /// 
        /// If `pixel`, `ax` is a relative offset in pixels from `x`. If set to an x axis id (e.g. *x* or
        /// *x2*), `ax` is specified in the same terms as that axis. This is useful for trendline
        /// annotations which should continue to indicate the correct trend when zoomed.
        public enum AxReference: Encodable {
            case pixel
            case xAxis(Layout.XAxis)
            public func encode(to encoder: Encoder) throws {
                var container = encoder.singleValueContainer()
                switch self {
                case .pixel:
                    try container.encode("pixel")
                case .xAxis(let axis):
                    try container.encode("x\(axis.uid)")
                }
            }
        }
        /// Indicates in what terms the tail of the annotation (ax,ay) is specified.
        /// 
        /// If `pixel`, `ax` is a relative offset in pixels from `x`. If set to an x axis id (e.g. *x* or
        /// *x2*), `ax` is specified in the same terms as that axis. This is useful for trendline
        /// annotations which should continue to indicate the correct trend when zoomed.
        public var axReference: AxReference? = nil
    
        /// Indicates in what terms the tail of the annotation (ax,ay) is specified.
        /// 
        /// If `pixel`, `ay` is a relative offset in pixels from `y`. If set to a y axis id (e.g. *y* or
        /// *y2*), `ay` is specified in the same terms as that axis. This is useful for trendline
        /// annotations which should continue to indicate the correct trend when zoomed.
        public enum AyReference: Encodable {
            case pixel
            case yAxis(Layout.YAxis)
            public func encode(to encoder: Encoder) throws {
                var container = encoder.singleValueContainer()
                switch self {
                case .pixel:
                    try container.encode("pixel")
                case .yAxis(let axis):
                    try container.encode("y\(axis.uid)")
                }
            }
        }
        /// Indicates in what terms the tail of the annotation (ax,ay) is specified.
        /// 
        /// If `pixel`, `ay` is a relative offset in pixels from `y`. If set to a y axis id (e.g. *y* or
        /// *y2*), `ay` is specified in the same terms as that axis. This is useful for trendline
        /// annotations which should continue to indicate the correct trend when zoomed.
        public var ayReference: AyReference? = nil
    
        /// Sets the annotation's x coordinate axis.
        /// 
        /// If set to an x axis id (e.g. *x* or *x2*), the `x` position refers to an x coordinate If set to
        /// *paper*, the `x` position refers to the distance from the left side of the plotting area in
        /// normalized coordinates where 0 (1) corresponds to the left (right) side.
        public var xReference: Shared.XAxisReference? = nil
    
        /// Sets the annotation's x position.
        /// 
        /// If the axis `type` is *log*, then you must take the log of your desired range. If the axis
        /// `type` is *date*, it should be date strings, like date data, though Date objects and unix
        /// milliseconds will be accepted and converted to strings. If the axis `type` is *category*, it
        /// should be numbers, using the scale where each category is assigned a serial number from zero in
        /// the order it appears.
        public var x: Anything? = nil
    
        /// Sets the text box's horizontal position anchor This anchor binds the `x` position to the *left*,
        /// *center* or *right* of the annotation.
        /// 
        /// For example, if `x` is set to 1, `xref` to *paper* and `xanchor` to *right* then the right-most
        /// portion of the annotation lines up with the right-most edge of the plotting area. If *auto*, the
        /// anchor is equivalent to *center* for data-referenced annotations or if there is an arrow,
        /// whereas for paper-referenced with no arrow, the anchor picked corresponds to the closest side.
        public var xAnchor: Shared.XAutoAnchor? = nil
    
        /// Shifts the position of the whole annotation and arrow to the right (positive) or left (negative)
        /// by this many pixels.
        public var xShift: Double? = nil
    
        /// Sets the annotation's y coordinate axis.
        /// 
        /// If set to an y axis id (e.g. *y* or *y2*), the `y` position refers to an y coordinate If set to
        /// *paper*, the `y` position refers to the distance from the bottom of the plotting area in
        /// normalized coordinates where 0 (1) corresponds to the bottom (top).
        public var yReference: Shared.YAxisReference? = nil
    
        /// Sets the annotation's y position.
        /// 
        /// If the axis `type` is *log*, then you must take the log of your desired range. If the axis
        /// `type` is *date*, it should be date strings, like date data, though Date objects and unix
        /// milliseconds will be accepted and converted to strings. If the axis `type` is *category*, it
        /// should be numbers, using the scale where each category is assigned a serial number from zero in
        /// the order it appears.
        public var y: Anything? = nil
    
        /// Sets the text box's vertical position anchor This anchor binds the `y` position to the *top*,
        /// *middle* or *bottom* of the annotation.
        /// 
        /// For example, if `y` is set to 1, `yref` to *paper* and `yanchor` to *top* then the top-most
        /// portion of the annotation lines up with the top-most edge of the plotting area. If *auto*, the
        /// anchor is equivalent to *middle* for data-referenced annotations or if there is an arrow,
        /// whereas for paper-referenced with no arrow, the anchor picked corresponds to the closest side.
        public var yAnchor: Shared.YAutoAnchor? = nil
    
        /// Shifts the position of the whole annotation and arrow up (positive) or down (negative) by this
        /// many pixels.
        public var yShift: Double? = nil
    
        /// Makes this annotation respond to clicks on the plot.
        /// 
        /// If you click a data point that exactly matches the `x` and `y` values of this annotation, and it
        /// is hidden (visible: false), it will appear. In *onoff* mode, you must click the same point again
        /// to make it disappear, so if you click multiple points, you can show multiple annotations. In
        /// *onout* mode, a click anywhere else in the plot (on another data point or not) will hide this
        /// annotation. If you need to show/hide this annotation in response to different `x` or `y` values,
        /// you can set `xclick` and/or `yclick`. This is useful for example to label the side of a bar. To
        /// label markers though, `standoff` is preferred over `xclick` and `yclick`.
        public enum ClickToShow: Encodable {
            case off
            case onOff
            case onOut
            public func encode(to encoder: Encoder) throws {
                var container = encoder.singleValueContainer()
                switch self {
                case .off:
                    try container.encode(false)
                case .onOff:
                    try container.encode("onoff")
                case .onOut:
                    try container.encode("onout")
                }
            }
        }
        /// Makes this annotation respond to clicks on the plot.
        /// 
        /// If you click a data point that exactly matches the `x` and `y` values of this annotation, and it
        /// is hidden (visible: false), it will appear. In *onoff* mode, you must click the same point again
        /// to make it disappear, so if you click multiple points, you can show multiple annotations. In
        /// *onout* mode, a click anywhere else in the plot (on another data point or not) will hide this
        /// annotation. If you need to show/hide this annotation in response to different `x` or `y` values,
        /// you can set `xclick` and/or `yclick`. This is useful for example to label the side of a bar. To
        /// label markers though, `standoff` is preferred over `xclick` and `yclick`.
        public var clickToShow: ClickToShow? = nil
    
        /// Toggle this annotation when clicking a data point whose `x` value is `xclick` rather than the
        /// annotation's `x` value.
        public var xClick: Anything? = nil
    
        /// Toggle this annotation when clicking a data point whose `y` value is `yclick` rather than the
        /// annotation's `y` value.
        public var yClick: Anything? = nil
    
        /// Sets text to appear when hovering over this annotation.
        /// 
        /// If omitted or blank, no hover label will appear.
        public var hoverText: String? = nil
    
        public struct HoverLabel: Encodable {
            /// Sets the background color of the hover label.
            /// 
            /// By default uses the annotation's `bgcolor` made opaque, or white if it was transparent.
            public var backgroundColor: Color? = nil
        
            /// Sets the border color of the hover label.
            /// 
            /// By default uses either dark grey or white, for maximum contrast with `hoverlabel.bgcolor`.
            public var borderColor: Color? = nil
        
            /// Sets the hover label text font.
            /// 
            /// By default uses the global hover font and size, with color from `hoverlabel.bordercolor`.
            public var font: Shared.Font? = nil
        
            /// Decoding and encoding keys compatible with Plotly schema.
            enum CodingKeys: String, CodingKey {
                case backgroundColor = "bgcolor"
                case borderColor = "bordercolor"
                case font
            }
            
            /// Creates `HoverLabel` object with specified properties.
            /// 
            /// - Parameters:
            ///   - backgroundColor: Sets the background color of the hover label.
            ///   - borderColor: Sets the border color of the hover label.
            ///   - font: Sets the hover label text font.
            public init(backgroundColor: Color? = nil, borderColor: Color? = nil, font: Shared.Font? = nil)
                    {
                self.backgroundColor = backgroundColor
                self.borderColor = borderColor
                self.font = font
            }
            
        }
        public var hoverLabel: HoverLabel? = nil
    
        /// Determines whether the annotation text box captures mouse move and click events, or allows those
        /// events to pass through to data points in the plot that may be behind the annotation.
        /// 
        /// By default `captureevents` is *false* unless `hovertext` is provided. If you use the event
        /// `plotly_clickannotation` without `hovertext` you must explicitly enable `captureevents`.
        public var captureEvents: Bool? = nil
    
        /// When used in a template, named items are created in the output figure in addition to any items
        /// the figure already has in this array.
        /// 
        /// You can modify these items in the output figure by making your own item with `templateitemname`
        /// matching this `name` alongside your modifications (including `visible: false` or `enabled:
        /// false` to hide it). Has no effect outside of a template.
        public var name: String? = nil
    
        /// Used to refer to a named item in this array in the template.
        /// 
        /// Named items from the template will be created even without a matching item in the input figure,
        /// but you can modify one by making an item with `templateitemname` matching its `name`, alongside
        /// your modifications (including `visible: false` or `enabled: false` to hide it). If there is no
        /// template or no matching item, this item will be hidden unless you explicitly show it with
        /// `visible: true`.
        public var templateItemName: String? = nil
    
        /// Decoding and encoding keys compatible with Plotly schema.
        enum CodingKeys: String, CodingKey {
            case visible
            case text
            case textAngle = "textangle"
            case font
            case width
            case height
            case opacity
            case align
            case verticalAlign = "valign"
            case backgroundColor = "bgcolor"
            case borderColor = "bordercolor"
            case borderPadding = "borderpad"
            case borderWidth = "borderwidth"
            case showArrow = "showarrow"
            case arrowColor = "arrowcolor"
            case arrowHead = "arrowhead"
            case startArrowHead = "startarrowhead"
            case arrowSide = "arrowside"
            case arrowSize = "arrowsize"
            case startArrowSize = "startarrowsize"
            case arrowWidth = "arrowwidth"
            case standoff
            case startStandoff = "startstandoff"
            case ax
            case ay
            case axReference = "axref"
            case ayReference = "ayref"
            case xReference = "xref"
            case x
            case xAnchor = "xanchor"
            case xShift = "xshift"
            case yReference = "yref"
            case y
            case yAnchor = "yanchor"
            case yShift = "yshift"
            case clickToShow = "clicktoshow"
            case xClick = "xclick"
            case yClick = "yclick"
            case hoverText = "hovertext"
            case hoverLabel = "hoverlabel"
            case captureEvents = "captureevents"
            case name
            case templateItemName = "templateitemname"
        }
        
        /// Creates `Annotation` object with specified properties.
        /// 
        /// - Parameters:
        ///   - visible: Determines whether or not this annotation is visible.
        ///   - text: Sets the text associated with this annotation.
        ///   - textAngle: Sets the angle at which the `text` is drawn with respect to the horizontal.
        ///   - font: Sets the annotation text font.
        ///   - width: Sets an explicit width for the text box.
        ///   - height: Sets an explicit height for the text box.
        ///   - opacity: Sets the opacity of the annotation (text + arrow).
        ///   - align: Sets the horizontal alignment of the `text` within the box.
        ///   - verticalAlign: Sets the vertical alignment of the `text` within the box.
        ///   - backgroundColor: Sets the background color of the annotation.
        ///   - borderColor: Sets the color of the border enclosing the annotation `text`.
        ///   - borderPadding: Sets the padding (in px) between the `text` and the enclosing border.
        ///   - borderWidth: Sets the width (in px) of the border enclosing the annotation `text`.
        ///   - showArrow: Determines whether or not the annotation is drawn with an arrow.
        ///   - arrowColor: Sets the color of the annotation arrow.
        ///   - arrowHead: Sets the end annotation arrow head style.
        ///   - startArrowHead: Sets the start annotation arrow head style.
        ///   - arrowSide: Sets the annotation arrow head position.
        ///   - arrowSize: Sets the size of the end annotation arrow head, relative to `arrowwidth`.
        ///   - startArrowSize: Sets the size of the start annotation arrow head, relative to `arrowwidth`.
        ///   - arrowWidth: Sets the width (in px) of annotation arrow line.
        ///   - standoff: Sets a distance, in pixels, to move the end arrowhead away from the position it is
        ///   pointing at, for example to point at the edge of a marker independent of zoom.
        ///   - startStandoff: Sets a distance, in pixels, to move the start arrowhead away from the position
        ///   it is pointing at, for example to point at the edge of a marker independent of zoom.
        ///   - ax: Sets the x component of the arrow tail about the arrow head.
        ///   - ay: Sets the y component of the arrow tail about the arrow head.
        ///   - axReference: Indicates in what terms the tail of the annotation (ax,ay) is specified.
        ///   - ayReference: Indicates in what terms the tail of the annotation (ax,ay) is specified.
        ///   - xReference: Sets the annotation's x coordinate axis.
        ///   - x: Sets the annotation's x position.
        ///   - xAnchor: Sets the text box's horizontal position anchor This anchor binds the `x` position to
        ///   the *left*, *center* or *right* of the annotation.
        ///   - xShift: Shifts the position of the whole annotation and arrow to the right (positive) or left
        ///   (negative) by this many pixels.
        ///   - yReference: Sets the annotation's y coordinate axis.
        ///   - y: Sets the annotation's y position.
        ///   - yAnchor: Sets the text box's vertical position anchor This anchor binds the `y` position to
        ///   the *top*, *middle* or *bottom* of the annotation.
        ///   - yShift: Shifts the position of the whole annotation and arrow up (positive) or down (negative)
        ///   by this many pixels.
        ///   - clickToShow: Makes this annotation respond to clicks on the plot.
        ///   - xClick: Toggle this annotation when clicking a data point whose `x` value is `xclick` rather
        ///   than the annotation's `x` value.
        ///   - yClick: Toggle this annotation when clicking a data point whose `y` value is `yclick` rather
        ///   than the annotation's `y` value.
        ///   - hoverText: Sets text to appear when hovering over this annotation.
        ///   - hoverLabel:
        ///   - captureEvents: Determines whether the annotation text box captures mouse move and click
        ///   events, or allows those events to pass through to data points in the plot that may be behind the
        ///   annotation.
        ///   - name: When used in a template, named items are created in the output figure in addition to any
        ///   items the figure already has in this array.
        ///   - templateItemName: Used to refer to a named item in this array in the template.
        public init(visible: Bool? = nil, text: String? = nil, textAngle: Angle? = nil, font:
                Shared.Font? = nil, width: Double? = nil, height: Double? = nil, opacity: Double? = nil, align:
                Shared.HorizontalAlign? = nil, verticalAlign: Shared.VerticalAlign? = nil, backgroundColor:
                Color? = nil, borderColor: Color? = nil, borderPadding: Double? = nil, borderWidth: Double? =
                nil, showArrow: Bool? = nil, arrowColor: Color? = nil, arrowHead: Int? = nil, startArrowHead:
                Int? = nil, arrowSide: ArrowSide? = nil, arrowSize: Double? = nil, startArrowSize: Double? =
                nil, arrowWidth: Double? = nil, standoff: Double? = nil, startStandoff: Double? = nil, ax:
                Anything? = nil, ay: Anything? = nil, axReference: AxReference? = nil, ayReference: AyReference?
                = nil, xReference: Shared.XAxisReference? = nil, x: Anything? = nil, xAnchor:
                Shared.XAutoAnchor? = nil, xShift: Double? = nil, yReference: Shared.YAxisReference? = nil, y:
                Anything? = nil, yAnchor: Shared.YAutoAnchor? = nil, yShift: Double? = nil, clickToShow:
                ClickToShow? = nil, xClick: Anything? = nil, yClick: Anything? = nil, hoverText: String? = nil,
                hoverLabel: HoverLabel? = nil, captureEvents: Bool? = nil, name: String? = nil,
                templateItemName: String? = nil) {
            self.visible = visible
            self.text = text
            self.textAngle = textAngle
            self.font = font
            self.width = width
            self.height = height
            self.opacity = opacity
            self.align = align
            self.verticalAlign = verticalAlign
            self.backgroundColor = backgroundColor
            self.borderColor = borderColor
            self.borderPadding = borderPadding
            self.borderWidth = borderWidth
            self.showArrow = showArrow
            self.arrowColor = arrowColor
            self.arrowHead = arrowHead
            self.startArrowHead = startArrowHead
            self.arrowSide = arrowSide
            self.arrowSize = arrowSize
            self.startArrowSize = startArrowSize
            self.arrowWidth = arrowWidth
            self.standoff = standoff
            self.startStandoff = startStandoff
            self.ax = ax
            self.ay = ay
            self.axReference = axReference
            self.ayReference = ayReference
            self.xReference = xReference
            self.x = x
            self.xAnchor = xAnchor
            self.xShift = xShift
            self.yReference = yReference
            self.y = y
            self.yAnchor = yAnchor
            self.yShift = yShift
            self.clickToShow = clickToShow
            self.xClick = xClick
            self.yClick = yClick
            self.hoverText = hoverText
            self.hoverLabel = hoverLabel
            self.captureEvents = captureEvents
            self.name = name
            self.templateItemName = templateItemName
        }
        
    }
    public var annotations: [Annotation]? = nil

    public struct Shape: Encodable {
        /// Determines whether or not this shape is visible.
        public var visible: Bool? = nil
    
        /// Specifies the shape type to be drawn.
        /// 
        /// If *line*, a line is drawn from (`x0`,`y0`) to (`x1`,`y1`) with respect to the axes' sizing
        /// mode. If *circle*, a circle is drawn from ((`x0`+`x1`)/2, (`y0`+`y1`)/2)) with radius
        /// (|(`x0`+`x1`)/2 - `x0`|, |(`y0`+`y1`)/2 -`y0`)|) with respect to the axes' sizing mode. If
        /// *rect*, a rectangle is drawn linking (`x0`,`y0`), (`x1`,`y0`), (`x1`,`y1`), (`x0`,`y1`),
        /// (`x0`,`y0`) with respect to the axes' sizing mode. If *path*, draw a custom SVG path using
        /// `path`. with respect to the axes' sizing mode.
        public enum `Type`: String, Encodable {
            case circle
            case rect
            case path
            case line
        }
        /// Specifies the shape type to be drawn.
        /// 
        /// If *line*, a line is drawn from (`x0`,`y0`) to (`x1`,`y1`) with respect to the axes' sizing
        /// mode. If *circle*, a circle is drawn from ((`x0`+`x1`)/2, (`y0`+`y1`)/2)) with radius
        /// (|(`x0`+`x1`)/2 - `x0`|, |(`y0`+`y1`)/2 -`y0`)|) with respect to the axes' sizing mode. If
        /// *rect*, a rectangle is drawn linking (`x0`,`y0`), (`x1`,`y0`), (`x1`,`y1`), (`x0`,`y1`),
        /// (`x0`,`y0`) with respect to the axes' sizing mode. If *path*, draw a custom SVG path using
        /// `path`. with respect to the axes' sizing mode.
        public var type: `Type`? = nil
    
        /// Specifies whether shapes are drawn below or above traces.
        public enum Layer: String, Encodable {
            case below
            case above
        }
        /// Specifies whether shapes are drawn below or above traces.
        public var layer: Layer? = nil
    
        /// Sets the shape's x coordinate axis.
        /// 
        /// If set to an x axis id (e.g. *x* or *x2*), the `x` position refers to an x coordinate. If set to
        /// *paper*, the `x` position refers to the distance from the left side of the plotting area in
        /// normalized coordinates where *0* (*1*) corresponds to the left (right) side. If the axis `type`
        /// is *log*, then you must take the log of your desired range. If the axis `type` is *date*, then
        /// you must convert the date to unix time in milliseconds.
        public var xReference: Shared.XAxisReference? = nil
    
        /// Sets the shapes's sizing mode along the x axis.
        /// 
        /// If set to *scaled*, `x0`, `x1` and x coordinates within `path` refer to data values on the x
        /// axis or a fraction of the plot area's width (`xref` set to *paper*). If set to *pixel*,
        /// `xanchor` specifies the x position in terms of data or plot fraction but `x0`, `x1` and x
        /// coordinates within `path` are pixels relative to `xanchor`. This way, the shape can have a fixed
        /// width while maintaining a position relative to data or plot fraction.
        public enum XSizeMode: String, Encodable {
            case scaled
            case pixel
        }
        /// Sets the shapes's sizing mode along the x axis.
        /// 
        /// If set to *scaled*, `x0`, `x1` and x coordinates within `path` refer to data values on the x
        /// axis or a fraction of the plot area's width (`xref` set to *paper*). If set to *pixel*,
        /// `xanchor` specifies the x position in terms of data or plot fraction but `x0`, `x1` and x
        /// coordinates within `path` are pixels relative to `xanchor`. This way, the shape can have a fixed
        /// width while maintaining a position relative to data or plot fraction.
        public var xSizeMode: XSizeMode? = nil
    
        /// Only relevant in conjunction with `xsizemode` set to *pixel*.
        /// 
        /// Specifies the anchor point on the x axis to which `x0`, `x1` and x coordinates within `path` are
        /// relative to. E.g. useful to attach a pixel sized shape to a certain data value. No effect when
        /// `xsizemode` not set to *pixel*.
        public var xAnchor: Anything? = nil
    
        /// Sets the shape's starting x position.
        /// 
        /// See `type` and `xsizemode` for more info.
        public var x0: Anything? = nil
    
        /// Sets the shape's end x position.
        /// 
        /// See `type` and `xsizemode` for more info.
        public var x1: Anything? = nil
    
        /// Sets the annotation's y coordinate axis.
        /// 
        /// If set to an y axis id (e.g. *y* or *y2*), the `y` position refers to an y coordinate If set to
        /// *paper*, the `y` position refers to the distance from the bottom of the plotting area in
        /// normalized coordinates where *0* (*1*) corresponds to the bottom (top).
        public var yReference: Shared.YAxisReference? = nil
    
        /// Sets the shapes's sizing mode along the y axis.
        /// 
        /// If set to *scaled*, `y0`, `y1` and y coordinates within `path` refer to data values on the y
        /// axis or a fraction of the plot area's height (`yref` set to *paper*). If set to *pixel*,
        /// `yanchor` specifies the y position in terms of data or plot fraction but `y0`, `y1` and y
        /// coordinates within `path` are pixels relative to `yanchor`. This way, the shape can have a fixed
        /// height while maintaining a position relative to data or plot fraction.
        public enum YSizeMode: String, Encodable {
            case scaled
            case pixel
        }
        /// Sets the shapes's sizing mode along the y axis.
        /// 
        /// If set to *scaled*, `y0`, `y1` and y coordinates within `path` refer to data values on the y
        /// axis or a fraction of the plot area's height (`yref` set to *paper*). If set to *pixel*,
        /// `yanchor` specifies the y position in terms of data or plot fraction but `y0`, `y1` and y
        /// coordinates within `path` are pixels relative to `yanchor`. This way, the shape can have a fixed
        /// height while maintaining a position relative to data or plot fraction.
        public var ySizeMode: YSizeMode? = nil
    
        /// Only relevant in conjunction with `ysizemode` set to *pixel*.
        /// 
        /// Specifies the anchor point on the y axis to which `y0`, `y1` and y coordinates within `path` are
        /// relative to. E.g. useful to attach a pixel sized shape to a certain data value. No effect when
        /// `ysizemode` not set to *pixel*.
        public var yAnchor: Anything? = nil
    
        /// Sets the shape's starting y position.
        /// 
        /// See `type` and `ysizemode` for more info.
        public var y0: Anything? = nil
    
        /// Sets the shape's end y position.
        /// 
        /// See `type` and `ysizemode` for more info.
        public var y1: Anything? = nil
    
        /// For `type` *path* - a valid SVG path with the pixel values replaced by data values in
        /// `xsizemode`/`ysizemode` being *scaled* and taken unmodified as pixels relative to `xanchor` and
        /// `yanchor` in case of *pixel* size mode.
        /// 
        /// There are a few restrictions / quirks only absolute instructions, not relative. So the allowed
        /// segments are: M, L, H, V, Q, C, T, S, and Z arcs (A) are not allowed because radius rx and ry
        /// are relative. In the future we could consider supporting relative commands, but we would have to
        /// decide on how to handle date and log axes. Note that even as is, Q and C Bezier paths that are
        /// smooth on linear axes may not be smooth on log, and vice versa. no chained "polybezier" commands
        /// - specify the segment type for each one. On category axes, values are numbers scaled to the
        /// serial numbers of categories because using the categories themselves there would be no way to
        /// describe fractional positions On data axes: because space and T are both normal components of
        /// path strings, we can't use either to separate date from time parts. Therefore we'll use
        /// underscore for this purpose: 2015-02-21_13:45:56.789
        public var path: String? = nil
    
        /// Sets the opacity of the shape.
        public var opacity: Double? = nil
    
        public var line: Shared.DashedLine? = nil
    
        /// Sets the color filling the shape's interior.
        public var fillColor: Color? = nil
    
        /// When used in a template, named items are created in the output figure in addition to any items
        /// the figure already has in this array.
        /// 
        /// You can modify these items in the output figure by making your own item with `templateitemname`
        /// matching this `name` alongside your modifications (including `visible: false` or `enabled:
        /// false` to hide it). Has no effect outside of a template.
        public var name: String? = nil
    
        /// Used to refer to a named item in this array in the template.
        /// 
        /// Named items from the template will be created even without a matching item in the input figure,
        /// but you can modify one by making an item with `templateitemname` matching its `name`, alongside
        /// your modifications (including `visible: false` or `enabled: false` to hide it). If there is no
        /// template or no matching item, this item will be hidden unless you explicitly show it with
        /// `visible: true`.
        public var templateItemName: String? = nil
    
        /// Decoding and encoding keys compatible with Plotly schema.
        enum CodingKeys: String, CodingKey {
            case visible
            case type
            case layer
            case xReference = "xref"
            case xSizeMode = "xsizemode"
            case xAnchor = "xanchor"
            case x0
            case x1
            case yReference = "yref"
            case ySizeMode = "ysizemode"
            case yAnchor = "yanchor"
            case y0
            case y1
            case path
            case opacity
            case line
            case fillColor = "fillcolor"
            case name
            case templateItemName = "templateitemname"
        }
        
        /// Creates `Shape` object with specified properties.
        /// 
        /// - Parameters:
        ///   - visible: Determines whether or not this shape is visible.
        ///   - type: Specifies the shape type to be drawn.
        ///   - layer: Specifies whether shapes are drawn below or above traces.
        ///   - xReference: Sets the shape's x coordinate axis.
        ///   - xSizeMode: Sets the shapes's sizing mode along the x axis.
        ///   - xAnchor: Only relevant in conjunction with `xsizemode` set to *pixel*.
        ///   - x0: Sets the shape's starting x position.
        ///   - x1: Sets the shape's end x position.
        ///   - yReference: Sets the annotation's y coordinate axis.
        ///   - ySizeMode: Sets the shapes's sizing mode along the y axis.
        ///   - yAnchor: Only relevant in conjunction with `ysizemode` set to *pixel*.
        ///   - y0: Sets the shape's starting y position.
        ///   - y1: Sets the shape's end y position.
        ///   - path: For `type` *path* - a valid SVG path with the pixel values replaced by data values in
        ///   `xsizemode`/`ysizemode` being *scaled* and taken unmodified as pixels relative to `xanchor` and
        ///   `yanchor` in case of *pixel* size mode.
        ///   - opacity: Sets the opacity of the shape.
        ///   - line:
        ///   - fillColor: Sets the color filling the shape's interior.
        ///   - name: When used in a template, named items are created in the output figure in addition to any
        ///   items the figure already has in this array.
        ///   - templateItemName: Used to refer to a named item in this array in the template.
        public init(visible: Bool? = nil, type: `Type`? = nil, layer: Layer? = nil, xReference:
                Shared.XAxisReference? = nil, xSizeMode: XSizeMode? = nil, xAnchor: Anything? = nil, x0:
                Anything? = nil, x1: Anything? = nil, yReference: Shared.YAxisReference? = nil, ySizeMode:
                YSizeMode? = nil, yAnchor: Anything? = nil, y0: Anything? = nil, y1: Anything? = nil, path:
                String? = nil, opacity: Double? = nil, line: Shared.DashedLine? = nil, fillColor: Color? = nil,
                name: String? = nil, templateItemName: String? = nil) {
            self.visible = visible
            self.type = type
            self.layer = layer
            self.xReference = xReference
            self.xSizeMode = xSizeMode
            self.xAnchor = xAnchor
            self.x0 = x0
            self.x1 = x1
            self.yReference = yReference
            self.ySizeMode = ySizeMode
            self.yAnchor = yAnchor
            self.y0 = y0
            self.y1 = y1
            self.path = path
            self.opacity = opacity
            self.line = line
            self.fillColor = fillColor
            self.name = name
            self.templateItemName = templateItemName
        }
        
    }
    public var shapes: [Shape]? = nil

    public struct Image: Encodable {
        /// Determines whether or not this image is visible.
        public var visible: Bool? = nil
    
        /// Specifies the URL of the image to be used.
        /// 
        /// The URL must be accessible from the domain where the plot code is run, and can be either
        /// relative or absolute.
        public var source: String? = nil
    
        /// Specifies whether images are drawn below or above traces.
        /// 
        /// When `xref` and `yref` are both set to `paper`, image is drawn below the entire plot area.
        public enum Layer: String, Encodable {
            case below
            case above
        }
        /// Specifies whether images are drawn below or above traces.
        /// 
        /// When `xref` and `yref` are both set to `paper`, image is drawn below the entire plot area.
        public var layer: Layer? = nil
    
        /// Sets the image container size horizontally.
        /// 
        /// The image will be sized based on the `position` value. When `xref` is set to `paper`, units are
        /// sized relative to the plot width.
        public var xSize: Double? = nil
    
        /// Sets the image container size vertically.
        /// 
        /// The image will be sized based on the `position` value. When `yref` is set to `paper`, units are
        /// sized relative to the plot height.
        public var ySize: Double? = nil
    
        /// Specifies which dimension of the image to constrain.
        public enum Sizing: String, Encodable {
            case fill
            case contain
            case stretch
        }
        /// Specifies which dimension of the image to constrain.
        public var sizing: Sizing? = nil
    
        /// Sets the opacity of the image.
        public var opacity: Double? = nil
    
        /// Sets the image's x position.
        /// 
        /// When `xref` is set to `paper`, units are sized relative to the plot height. See `xref` for more
        /// info
        public var x: Anything? = nil
    
        /// Sets the image's y position.
        /// 
        /// When `yref` is set to `paper`, units are sized relative to the plot height. See `yref` for more
        /// info
        public var y: Anything? = nil
    
        /// Sets the anchor for the x position
        public var xAnchor: Shared.XAnchor? = nil
    
        /// Sets the anchor for the y position.
        public var yAnchor: Shared.YAnchor? = nil
    
        /// Sets the images's x coordinate axis.
        /// 
        /// If set to a x axis id (e.g. *x* or *x2*), the `x` position refers to an x data coordinate If set
        /// to *paper*, the `x` position refers to the distance from the left of plot in normalized
        /// coordinates where *0* (*1*) corresponds to the left (right).
        public var xReference: Shared.XAxisReference? = nil
    
        /// Sets the images's y coordinate axis.
        /// 
        /// If set to a y axis id (e.g. *y* or *y2*), the `y` position refers to a y data coordinate. If set
        /// to *paper*, the `y` position refers to the distance from the bottom of the plot in normalized
        /// coordinates where *0* (*1*) corresponds to the bottom (top).
        public var yReference: Shared.YAxisReference? = nil
    
        /// When used in a template, named items are created in the output figure in addition to any items
        /// the figure already has in this array.
        /// 
        /// You can modify these items in the output figure by making your own item with `templateitemname`
        /// matching this `name` alongside your modifications (including `visible: false` or `enabled:
        /// false` to hide it). Has no effect outside of a template.
        public var name: String? = nil
    
        /// Used to refer to a named item in this array in the template.
        /// 
        /// Named items from the template will be created even without a matching item in the input figure,
        /// but you can modify one by making an item with `templateitemname` matching its `name`, alongside
        /// your modifications (including `visible: false` or `enabled: false` to hide it). If there is no
        /// template or no matching item, this item will be hidden unless you explicitly show it with
        /// `visible: true`.
        public var templateItemName: String? = nil
    
        /// Decoding and encoding keys compatible with Plotly schema.
        enum CodingKeys: String, CodingKey {
            case visible
            case source
            case layer
            case xSize = "sizex"
            case ySize = "sizey"
            case sizing
            case opacity
            case x
            case y
            case xAnchor = "xanchor"
            case yAnchor = "yanchor"
            case xReference = "xref"
            case yReference = "yref"
            case name
            case templateItemName = "templateitemname"
        }
        
        /// Creates `Image` object with specified properties.
        /// 
        /// - Parameters:
        ///   - visible: Determines whether or not this image is visible.
        ///   - source: Specifies the URL of the image to be used.
        ///   - layer: Specifies whether images are drawn below or above traces.
        ///   - xSize: Sets the image container size horizontally.
        ///   - ySize: Sets the image container size vertically.
        ///   - sizing: Specifies which dimension of the image to constrain.
        ///   - opacity: Sets the opacity of the image.
        ///   - x: Sets the image's x position.
        ///   - y: Sets the image's y position.
        ///   - xAnchor: Sets the anchor for the x position
        ///   - yAnchor: Sets the anchor for the y position.
        ///   - xReference: Sets the images's x coordinate axis.
        ///   - yReference: Sets the images's y coordinate axis.
        ///   - name: When used in a template, named items are created in the output figure in addition to any
        ///   items the figure already has in this array.
        ///   - templateItemName: Used to refer to a named item in this array in the template.
        public init(visible: Bool? = nil, source: String? = nil, layer: Layer? = nil, xSize: Double? =
                nil, ySize: Double? = nil, sizing: Sizing? = nil, opacity: Double? = nil, x: Anything? = nil, y:
                Anything? = nil, xAnchor: Shared.XAnchor? = nil, yAnchor: Shared.YAnchor? = nil, xReference:
                Shared.XAxisReference? = nil, yReference: Shared.YAxisReference? = nil, name: String? = nil,
                templateItemName: String? = nil) {
            self.visible = visible
            self.source = source
            self.layer = layer
            self.xSize = xSize
            self.ySize = ySize
            self.sizing = sizing
            self.opacity = opacity
            self.x = x
            self.y = y
            self.xAnchor = xAnchor
            self.yAnchor = yAnchor
            self.xReference = xReference
            self.yReference = yReference
            self.name = name
            self.templateItemName = templateItemName
        }
        
    }
    public var images: [Image]? = nil

    public struct UpdateMenu: Encodable {
        /// Determines whether or not the update menu is visible.
        public var visible: Bool? = nil
    
        /// Determines whether the buttons are accessible via a dropdown menu or whether the buttons are
        /// stacked horizontally or vertically
        public enum `Type`: String, Encodable {
            case dropDown = "dropdown"
            case buttons
        }
        /// Determines whether the buttons are accessible via a dropdown menu or whether the buttons are
        /// stacked horizontally or vertically
        public var type: `Type`? = nil
    
        /// Determines the direction in which the buttons are laid out, whether in a dropdown menu or a
        /// row/column of buttons.
        /// 
        /// For `left` and `up`, the buttons will still appear in left-to-right or top-to-bottom order
        /// respectively.
        public enum Direction: String, Encodable {
            case left
            case right
            case up
            case down
        }
        /// Determines the direction in which the buttons are laid out, whether in a dropdown menu or a
        /// row/column of buttons.
        /// 
        /// For `left` and `up`, the buttons will still appear in left-to-right or top-to-bottom order
        /// respectively.
        public var direction: Direction? = nil
    
        /// Determines which button (by index starting from 0) is considered active.
        public var active: Int? = nil
    
        /// Highlights active dropdown item or active button if true.
        public var showActive: Bool? = nil
    
        public struct Button: Encodable {
            /// Determines whether or not this button is visible.
            public var visible: Bool? = nil
        
            /// Sets the Plotly method to be called on click.
            /// 
            /// If the `skip` method is used, the API updatemenu will function as normal but will perform no API
            /// calls and will not bind automatically to state updates. This may be used to create a component
            /// interface and attach to updatemenu events manually via JavaScript.
            public enum Method: String, Encodable {
                case restyle
                case relayout
                case animate
                case update
                case skip
            }
            /// Sets the Plotly method to be called on click.
            /// 
            /// If the `skip` method is used, the API updatemenu will function as normal but will perform no API
            /// calls and will not bind automatically to state updates. This may be used to create a component
            /// interface and attach to updatemenu events manually via JavaScript.
            public var method: Method? = nil
        
            /// Sets the arguments values to be passed to the Plotly method set in `method` on click.
            public var args: InfoArray? = nil
        
            /// Sets a 2nd set of `args`, these arguments values are passed to the Plotly method set in `method`
            /// when clicking this button while in the active state.
            /// 
            /// Use this to create toggle buttons.
            public var args2: InfoArray? = nil
        
            /// Sets the text label to appear on the button.
            public var label: String? = nil
        
            /// When true, the API method is executed.
            /// 
            /// When false, all other behaviors are the same and command execution is skipped. This may be
            /// useful when hooking into, for example, the `plotly_buttonclicked` method and executing the API
            /// command manually without losing the benefit of the updatemenu automatically binding to the state
            /// of the plot through the specification of `method` and `args`.
            public var execute: Bool? = nil
        
            /// When used in a template, named items are created in the output figure in addition to any items
            /// the figure already has in this array.
            /// 
            /// You can modify these items in the output figure by making your own item with `templateitemname`
            /// matching this `name` alongside your modifications (including `visible: false` or `enabled:
            /// false` to hide it). Has no effect outside of a template.
            public var name: String? = nil
        
            /// Used to refer to a named item in this array in the template.
            /// 
            /// Named items from the template will be created even without a matching item in the input figure,
            /// but you can modify one by making an item with `templateitemname` matching its `name`, alongside
            /// your modifications (including `visible: false` or `enabled: false` to hide it). If there is no
            /// template or no matching item, this item will be hidden unless you explicitly show it with
            /// `visible: true`.
            public var templateItemName: String? = nil
        
            /// Decoding and encoding keys compatible with Plotly schema.
            enum CodingKeys: String, CodingKey {
                case visible
                case method
                case args
                case args2
                case label
                case execute
                case name
                case templateItemName = "templateitemname"
            }
            
            /// Creates `Button` object with specified properties.
            /// 
            /// - Parameters:
            ///   - visible: Determines whether or not this button is visible.
            ///   - method: Sets the Plotly method to be called on click.
            ///   - args: Sets the arguments values to be passed to the Plotly method set in `method` on click.
            ///   - args2: Sets a 2nd set of `args`, these arguments values are passed to the Plotly method set in
            ///   `method` when clicking this button while in the active state.
            ///   - label: Sets the text label to appear on the button.
            ///   - execute: When true, the API method is executed.
            ///   - name: When used in a template, named items are created in the output figure in addition to any
            ///   items the figure already has in this array.
            ///   - templateItemName: Used to refer to a named item in this array in the template.
            public init(visible: Bool? = nil, method: Method? = nil, args: InfoArray? = nil, args2:
                    InfoArray? = nil, label: String? = nil, execute: Bool? = nil, name: String? = nil,
                    templateItemName: String? = nil) {
                self.visible = visible
                self.method = method
                self.args = args
                self.args2 = args2
                self.label = label
                self.execute = execute
                self.name = name
                self.templateItemName = templateItemName
            }
            
        }
        public var buttons: [Button]? = nil
    
        /// Sets the x position (in normalized coordinates) of the update menu.
        public var x: Double? = nil
    
        /// Sets the update menu's horizontal position anchor.
        /// 
        /// This anchor binds the `x` position to the *left*, *center* or *right* of the range selector.
        public var xAnchor: Shared.XAutoAnchor? = nil
    
        /// Sets the y position (in normalized coordinates) of the update menu.
        public var y: Double? = nil
    
        /// Sets the update menu's vertical position anchor This anchor binds the `y` position to the *top*,
        /// *middle* or *bottom* of the range selector.
        public var yAnchor: Shared.YAutoAnchor? = nil
    
        /// Sets the padding around the buttons or dropdown menu.
        public var padding: Shared.Padding? = nil
    
        /// Sets the font of the update menu button text.
        public var font: Shared.Font? = nil
    
        /// Sets the background color of the update menu buttons.
        public var backgroundColor: Color? = nil
    
        /// Sets the color of the border enclosing the update menu.
        public var borderColor: Color? = nil
    
        /// Sets the width (in px) of the border enclosing the update menu.
        public var borderWidth: Double? = nil
    
        /// When used in a template, named items are created in the output figure in addition to any items
        /// the figure already has in this array.
        /// 
        /// You can modify these items in the output figure by making your own item with `templateitemname`
        /// matching this `name` alongside your modifications (including `visible: false` or `enabled:
        /// false` to hide it). Has no effect outside of a template.
        public var name: String? = nil
    
        /// Used to refer to a named item in this array in the template.
        /// 
        /// Named items from the template will be created even without a matching item in the input figure,
        /// but you can modify one by making an item with `templateitemname` matching its `name`, alongside
        /// your modifications (including `visible: false` or `enabled: false` to hide it). If there is no
        /// template or no matching item, this item will be hidden unless you explicitly show it with
        /// `visible: true`.
        public var templateItemName: String? = nil
    
        /// Decoding and encoding keys compatible with Plotly schema.
        enum CodingKeys: String, CodingKey {
            case visible
            case type
            case direction
            case active
            case showActive = "showactive"
            case buttons
            case x
            case xAnchor = "xanchor"
            case y
            case yAnchor = "yanchor"
            case padding = "pad"
            case font
            case backgroundColor = "bgcolor"
            case borderColor = "bordercolor"
            case borderWidth = "borderwidth"
            case name
            case templateItemName = "templateitemname"
        }
        
        /// Creates `UpdateMenu` object with specified properties.
        /// 
        /// - Parameters:
        ///   - visible: Determines whether or not the update menu is visible.
        ///   - type: Determines whether the buttons are accessible via a dropdown menu or whether the buttons
        ///   are stacked horizontally or vertically
        ///   - direction: Determines the direction in which the buttons are laid out, whether in a dropdown
        ///   menu or a row/column of buttons.
        ///   - active: Determines which button (by index starting from 0) is considered active.
        ///   - showActive: Highlights active dropdown item or active button if true.
        ///   - buttons:
        ///   - x: Sets the x position (in normalized coordinates) of the update menu.
        ///   - xAnchor: Sets the update menu's horizontal position anchor.
        ///   - y: Sets the y position (in normalized coordinates) of the update menu.
        ///   - yAnchor: Sets the update menu's vertical position anchor This anchor binds the `y` position to
        ///   the *top*, *middle* or *bottom* of the range selector.
        ///   - padding: Sets the padding around the buttons or dropdown menu.
        ///   - font: Sets the font of the update menu button text.
        ///   - backgroundColor: Sets the background color of the update menu buttons.
        ///   - borderColor: Sets the color of the border enclosing the update menu.
        ///   - borderWidth: Sets the width (in px) of the border enclosing the update menu.
        ///   - name: When used in a template, named items are created in the output figure in addition to any
        ///   items the figure already has in this array.
        ///   - templateItemName: Used to refer to a named item in this array in the template.
        public init(visible: Bool? = nil, type: `Type`? = nil, direction: Direction? = nil, active: Int?
                = nil, showActive: Bool? = nil, buttons: [Button]? = nil, x: Double? = nil, xAnchor:
                Shared.XAutoAnchor? = nil, y: Double? = nil, yAnchor: Shared.YAutoAnchor? = nil, padding:
                Shared.Padding? = nil, font: Shared.Font? = nil, backgroundColor: Color? = nil, borderColor:
                Color? = nil, borderWidth: Double? = nil, name: String? = nil, templateItemName: String? = nil)
                {
            self.visible = visible
            self.type = type
            self.direction = direction
            self.active = active
            self.showActive = showActive
            self.buttons = buttons
            self.x = x
            self.xAnchor = xAnchor
            self.y = y
            self.yAnchor = yAnchor
            self.padding = padding
            self.font = font
            self.backgroundColor = backgroundColor
            self.borderColor = borderColor
            self.borderWidth = borderWidth
            self.name = name
            self.templateItemName = templateItemName
        }
        
    }
    public var updateMenus: [UpdateMenu]? = nil

    public struct Slider: Encodable {
        /// Determines whether or not the slider is visible.
        public var visible: Bool? = nil
    
        /// Determines which button (by index starting from 0) is considered active.
        public var active: Double? = nil
    
        public struct Step: Encodable {
            /// Determines whether or not this step is included in the slider.
            public var visible: Bool? = nil
        
            /// Sets the Plotly method to be called when the slider value is changed.
            /// 
            /// If the `skip` method is used, the API slider will function as normal but will perform no API
            /// calls and will not bind automatically to state updates. This may be used to create a component
            /// interface and attach to slider events manually via JavaScript.
            public enum Method: String, Encodable {
                case restyle
                case relayout
                case animate
                case update
                case skip
            }
            /// Sets the Plotly method to be called when the slider value is changed.
            /// 
            /// If the `skip` method is used, the API slider will function as normal but will perform no API
            /// calls and will not bind automatically to state updates. This may be used to create a component
            /// interface and attach to slider events manually via JavaScript.
            public var method: Method? = nil
        
            /// Sets the arguments values to be passed to the Plotly method set in `method` on slide.
            public var args: InfoArray? = nil
        
            /// Sets the text label to appear on the slider
            public var label: String? = nil
        
            /// Sets the value of the slider step, used to refer to the step programatically.
            /// 
            /// Defaults to the slider label if not provided.
            public var value: String? = nil
        
            /// When true, the API method is executed.
            /// 
            /// When false, all other behaviors are the same and command execution is skipped. This may be
            /// useful when hooking into, for example, the `plotly_sliderchange` method and executing the API
            /// command manually without losing the benefit of the slider automatically binding to the state of
            /// the plot through the specification of `method` and `args`.
            public var execute: Bool? = nil
        
            /// When used in a template, named items are created in the output figure in addition to any items
            /// the figure already has in this array.
            /// 
            /// You can modify these items in the output figure by making your own item with `templateitemname`
            /// matching this `name` alongside your modifications (including `visible: false` or `enabled:
            /// false` to hide it). Has no effect outside of a template.
            public var name: String? = nil
        
            /// Used to refer to a named item in this array in the template.
            /// 
            /// Named items from the template will be created even without a matching item in the input figure,
            /// but you can modify one by making an item with `templateitemname` matching its `name`, alongside
            /// your modifications (including `visible: false` or `enabled: false` to hide it). If there is no
            /// template or no matching item, this item will be hidden unless you explicitly show it with
            /// `visible: true`.
            public var templateItemName: String? = nil
        
            /// Decoding and encoding keys compatible with Plotly schema.
            enum CodingKeys: String, CodingKey {
                case visible
                case method
                case args
                case label
                case value
                case execute
                case name
                case templateItemName = "templateitemname"
            }
            
            /// Creates `Step` object with specified properties.
            /// 
            /// - Parameters:
            ///   - visible: Determines whether or not this step is included in the slider.
            ///   - method: Sets the Plotly method to be called when the slider value is changed.
            ///   - args: Sets the arguments values to be passed to the Plotly method set in `method` on slide.
            ///   - label: Sets the text label to appear on the slider
            ///   - value: Sets the value of the slider step, used to refer to the step programatically.
            ///   - execute: When true, the API method is executed.
            ///   - name: When used in a template, named items are created in the output figure in addition to any
            ///   items the figure already has in this array.
            ///   - templateItemName: Used to refer to a named item in this array in the template.
            public init(visible: Bool? = nil, method: Method? = nil, args: InfoArray? = nil, label: String?
                    = nil, value: String? = nil, execute: Bool? = nil, name: String? = nil, templateItemName:
                    String? = nil) {
                self.visible = visible
                self.method = method
                self.args = args
                self.label = label
                self.value = value
                self.execute = execute
                self.name = name
                self.templateItemName = templateItemName
            }
            
        }
        public var steps: [Step]? = nil
    
        /// Determines whether this slider length is set in units of plot *fraction* or in *pixels.
        /// 
        /// Use `len` to set the value.
        public var lengthMode: Shared.LengthMode? = nil
    
        /// Sets the length of the slider This measure excludes the padding of both ends.
        /// 
        /// That is, the slider's length is this length minus the padding on both ends.
        public var length: Double? = nil
    
        /// Sets the x position (in normalized coordinates) of the slider.
        public var x: Double? = nil
    
        /// Set the padding of the slider component along each side.
        public var padding: Shared.Padding? = nil
    
        /// Sets the slider's horizontal position anchor.
        /// 
        /// This anchor binds the `x` position to the *left*, *center* or *right* of the range selector.
        public var xAnchor: Shared.XAutoAnchor? = nil
    
        /// Sets the y position (in normalized coordinates) of the slider.
        public var y: Double? = nil
    
        /// Sets the slider's vertical position anchor This anchor binds the `y` position to the *top*,
        /// *middle* or *bottom* of the range selector.
        public var yAnchor: Shared.YAutoAnchor? = nil
    
        public struct Transition: Encodable {
            /// Sets the duration of the slider transition
            public var duration: Double? = nil
        
            /// Sets the easing function of the slider transition
            public enum Easing: String, Encodable {
                case linear
                case quad
                case cubic
                case sin
                case exp
                case circle
                case elastic
                case back
                case bounce
                case linearIn = "linear-in"
                case quadIn = "quad-in"
                case cubicIn = "cubic-in"
                case sinIn = "sin-in"
                case expIn = "exp-in"
                case circleIn = "circle-in"
                case elasticIn = "elastic-in"
                case backIn = "back-in"
                case bounceIn = "bounce-in"
                case linearOut = "linear-out"
                case quadOut = "quad-out"
                case cubicOut = "cubic-out"
                case sinOut = "sin-out"
                case expOut = "exp-out"
                case circleOut = "circle-out"
                case elasticOut = "elastic-out"
                case backOut = "back-out"
                case bounceOut = "bounce-out"
                case linearInOut = "linear-in-out"
                case quadInOut = "quad-in-out"
                case cubicInOut = "cubic-in-out"
                case sinInOut = "sin-in-out"
                case expInOut = "exp-in-out"
                case circleInOut = "circle-in-out"
                case elasticInOut = "elastic-in-out"
                case backInOut = "back-in-out"
                case bounceInOut = "bounce-in-out"
            }
            /// Sets the easing function of the slider transition
            public var easing: Easing? = nil
        
            /// Creates `Transition` object with specified properties.
            /// 
            /// - Parameters:
            ///   - duration: Sets the duration of the slider transition
            ///   - easing: Sets the easing function of the slider transition
            public init(duration: Double? = nil, easing: Easing? = nil) {
                self.duration = duration
                self.easing = easing
            }
            
        }
        public var transition: Transition? = nil
    
        public struct CurrentValue: Encodable {
            /// Shows the currently-selected value above the slider.
            public var visible: Bool? = nil
        
            /// The alignment of the value readout relative to the length of the slider.
            public var xAnchor: Shared.XAnchor? = nil
        
            /// The amount of space, in pixels, between the current value label and the slider.
            public var offset: Double? = nil
        
            /// When currentvalue.visible is true, this sets the prefix of the label.
            public var prefix: String? = nil
        
            /// When currentvalue.visible is true, this sets the suffix of the label.
            public var suffix: String? = nil
        
            /// Sets the font of the current value label text.
            public var font: Shared.Font? = nil
        
            /// Decoding and encoding keys compatible with Plotly schema.
            enum CodingKeys: String, CodingKey {
                case visible
                case xAnchor = "xanchor"
                case offset
                case prefix
                case suffix
                case font
            }
            
            /// Creates `CurrentValue` object with specified properties.
            /// 
            /// - Parameters:
            ///   - visible: Shows the currently-selected value above the slider.
            ///   - xAnchor: The alignment of the value readout relative to the length of the slider.
            ///   - offset: The amount of space, in pixels, between the current value label and the slider.
            ///   - prefix: When currentvalue.visible is true, this sets the prefix of the label.
            ///   - suffix: When currentvalue.visible is true, this sets the suffix of the label.
            ///   - font: Sets the font of the current value label text.
            public init(visible: Bool? = nil, xAnchor: Shared.XAnchor? = nil, offset: Double? = nil, prefix:
                    String? = nil, suffix: String? = nil, font: Shared.Font? = nil) {
                self.visible = visible
                self.xAnchor = xAnchor
                self.offset = offset
                self.prefix = prefix
                self.suffix = suffix
                self.font = font
            }
            
        }
        public var currentValue: CurrentValue? = nil
    
        /// Sets the font of the slider step labels.
        public var font: Shared.Font? = nil
    
        /// Sets the background color of the slider grip while dragging.
        public var activeBackgroundColor: Color? = nil
    
        /// Sets the background color of the slider.
        public var backgroundColor: Color? = nil
    
        /// Sets the color of the border enclosing the slider.
        public var borderColor: Color? = nil
    
        /// Sets the width (in px) of the border enclosing the slider.
        public var borderWidth: Double? = nil
    
        /// Sets the length in pixels of step tick marks
        public var tickLength: Double? = nil
    
        /// Sets the color of the border enclosing the slider.
        public var tickColor: Color? = nil
    
        /// Sets the tick width (in px).
        public var tickWidth: Double? = nil
    
        /// Sets the length in pixels of minor step tick marks
        public var minorTickLength: Double? = nil
    
        /// When used in a template, named items are created in the output figure in addition to any items
        /// the figure already has in this array.
        /// 
        /// You can modify these items in the output figure by making your own item with `templateitemname`
        /// matching this `name` alongside your modifications (including `visible: false` or `enabled:
        /// false` to hide it). Has no effect outside of a template.
        public var name: String? = nil
    
        /// Used to refer to a named item in this array in the template.
        /// 
        /// Named items from the template will be created even without a matching item in the input figure,
        /// but you can modify one by making an item with `templateitemname` matching its `name`, alongside
        /// your modifications (including `visible: false` or `enabled: false` to hide it). If there is no
        /// template or no matching item, this item will be hidden unless you explicitly show it with
        /// `visible: true`.
        public var templateItemName: String? = nil
    
        /// Decoding and encoding keys compatible with Plotly schema.
        enum CodingKeys: String, CodingKey {
            case visible
            case active
            case steps
            case lengthMode = "lenmode"
            case length = "len"
            case x
            case padding = "pad"
            case xAnchor = "xanchor"
            case y
            case yAnchor = "yanchor"
            case transition
            case currentValue = "currentvalue"
            case font
            case activeBackgroundColor = "activebgcolor"
            case backgroundColor = "bgcolor"
            case borderColor = "bordercolor"
            case borderWidth = "borderwidth"
            case tickLength = "ticklen"
            case tickColor = "tickcolor"
            case tickWidth = "tickwidth"
            case minorTickLength = "minorticklen"
            case name
            case templateItemName = "templateitemname"
        }
        
        /// Creates `Slider` object with specified properties.
        /// 
        /// - Parameters:
        ///   - visible: Determines whether or not the slider is visible.
        ///   - active: Determines which button (by index starting from 0) is considered active.
        ///   - steps:
        ///   - lengthMode: Determines whether this slider length is set in units of plot *fraction* or in
        ///   *pixels.
        ///   - length: Sets the length of the slider This measure excludes the padding of both ends.
        ///   - x: Sets the x position (in normalized coordinates) of the slider.
        ///   - padding: Set the padding of the slider component along each side.
        ///   - xAnchor: Sets the slider's horizontal position anchor.
        ///   - y: Sets the y position (in normalized coordinates) of the slider.
        ///   - yAnchor: Sets the slider's vertical position anchor This anchor binds the `y` position to the
        ///   *top*, *middle* or *bottom* of the range selector.
        ///   - transition:
        ///   - currentValue:
        ///   - font: Sets the font of the slider step labels.
        ///   - activeBackgroundColor: Sets the background color of the slider grip while dragging.
        ///   - backgroundColor: Sets the background color of the slider.
        ///   - borderColor: Sets the color of the border enclosing the slider.
        ///   - borderWidth: Sets the width (in px) of the border enclosing the slider.
        ///   - tickLength: Sets the length in pixels of step tick marks
        ///   - tickColor: Sets the color of the border enclosing the slider.
        ///   - tickWidth: Sets the tick width (in px).
        ///   - minorTickLength: Sets the length in pixels of minor step tick marks
        ///   - name: When used in a template, named items are created in the output figure in addition to any
        ///   items the figure already has in this array.
        ///   - templateItemName: Used to refer to a named item in this array in the template.
        public init(visible: Bool? = nil, active: Double? = nil, steps: [Step]? = nil, lengthMode:
                Shared.LengthMode? = nil, length: Double? = nil, x: Double? = nil, padding: Shared.Padding? =
                nil, xAnchor: Shared.XAutoAnchor? = nil, y: Double? = nil, yAnchor: Shared.YAutoAnchor? = nil,
                transition: Transition? = nil, currentValue: CurrentValue? = nil, font: Shared.Font? = nil,
                activeBackgroundColor: Color? = nil, backgroundColor: Color? = nil, borderColor: Color? = nil,
                borderWidth: Double? = nil, tickLength: Double? = nil, tickColor: Color? = nil, tickWidth:
                Double? = nil, minorTickLength: Double? = nil, name: String? = nil, templateItemName: String? =
                nil) {
            self.visible = visible
            self.active = active
            self.steps = steps
            self.lengthMode = lengthMode
            self.length = length
            self.x = x
            self.padding = padding
            self.xAnchor = xAnchor
            self.y = y
            self.yAnchor = yAnchor
            self.transition = transition
            self.currentValue = currentValue
            self.font = font
            self.activeBackgroundColor = activeBackgroundColor
            self.backgroundColor = backgroundColor
            self.borderColor = borderColor
            self.borderWidth = borderWidth
            self.tickLength = tickLength
            self.tickColor = tickColor
            self.tickWidth = tickWidth
            self.minorTickLength = minorTickLength
            self.name = name
            self.templateItemName = templateItemName
        }
        
    }
    public var sliders: [Slider]? = nil

    
    // MARK: - Color Visualization

    public struct ColorMap: Encodable {
        /// Sets the default sequential colorscale for positive values.
        /// 
        /// Note that `autocolorscale` must be true for this attribute to work.
        public var sequential: ColorScale? = nil
    
        /// Sets the default sequential colorscale for negative values.
        /// 
        /// Note that `autocolorscale` must be true for this attribute to work.
        public var sequentialMinus: ColorScale? = nil
    
        /// Sets the default diverging colorscale.
        /// 
        /// Note that `autocolorscale` must be true for this attribute to work.
        public var diverging: ColorScale? = nil
    
        /// Decoding and encoding keys compatible with Plotly schema.
        enum CodingKeys: String, CodingKey {
            case sequential
            case sequentialMinus = "sequentialminus"
            case diverging
        }
        
        /// Creates `ColorMap` object with specified properties.
        /// 
        /// - Parameters:
        ///   - sequential: Sets the default sequential colorscale for positive values.
        ///   - sequentialMinus: Sets the default sequential colorscale for negative values.
        ///   - diverging: Sets the default diverging colorscale.
        public init(sequential: ColorScale? = nil, sequentialMinus: ColorScale? = nil, diverging:
                ColorScale? = nil) {
            self.sequential = sequential
            self.sequentialMinus = sequentialMinus
            self.diverging = diverging
        }
        
    }
    public var colorScale: ColorMap? = nil

    public class ColorAxis: Encodable {
        public var uid: UInt = UInt.random(in: 2...UInt.max)
    
        /// Determines whether or not the color domain is computed with respect to the input data (here
        /// corresponding trace color array(s)) or the bounds set in `cmin` and `cmax` Defaults to `false`
        /// when `cmin` and `cmax` are set by the user.
        public var cAuto: Bool? = nil
    
        /// Sets the lower bound of the color domain.
        /// 
        /// Value should have the same units as corresponding trace color array(s) and if set, `cmax` must
        /// be set as well.
        public var cMin: Double? = nil
    
        /// Sets the upper bound of the color domain.
        /// 
        /// Value should have the same units as corresponding trace color array(s) and if set, `cmin` must
        /// be set as well.
        public var cMax: Double? = nil
    
        /// Sets the mid-point of the color domain by scaling `cmin` and/or `cmax` to be equidistant to this
        /// point.
        /// 
        /// Value should have the same units as corresponding trace color array(s). Has no effect when
        /// `cauto` is `false`.
        public var cMiddle: Double? = nil
    
        /// Sets the colorscale.
        /// 
        /// The colorscale must be an array containing arrays mapping a normalized value to an rgb, rgba,
        /// hex, hsl, hsv, or named color string. At minimum, a mapping for the lowest (0) and highest (1)
        /// values are required. For example, `[[0, 'rgb(0,0,255)'], [1, 'rgb(255,0,0)']]`. To control the
        /// bounds of the colorscale in color space, use`cmin` and `cmax`. Alternatively, `colorscale` may
        /// be a palette name string of the following list:
        /// Greys,YlGnBu,Greens,YlOrRd,Bluered,RdBu,Reds,Blues,Picnic,Rainbow,Portland,Jet,Hot,Blackbody,Earth,Electric,Viridis,Cividis.
        public var colorScale: ColorScale? = nil
    
        /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette
        /// determined by `colorscale`.
        /// 
        /// In case `colorscale` is unspecified or `autocolorscale` is true, the default palette will be
        /// chosen according to whether numbers in the `color` array are all positive, all negative or
        /// mixed.
        public var autoColorScale: Bool? = nil
    
        /// Reverses the color mapping if true.
        /// 
        /// If true, `cmin` will correspond to the last color in the array and `cmax` will correspond to the
        /// first color.
        public var reverseScale: Bool? = nil
    
        /// Determines whether or not a colorbar is displayed for this trace.
        public var showScale: Bool? = nil
    
        public var colorBar: Shared.ColorBar? = nil
    
        /// Decoding and encoding keys compatible with Plotly schema.
        enum CodingKeys: String, CodingKey {
            case cAuto = "cauto"
            case cMin = "cmin"
            case cMax = "cmax"
            case cMiddle = "cmid"
            case colorScale = "colorscale"
            case autoColorScale = "autocolorscale"
            case reverseScale = "reversescale"
            case showScale = "showscale"
            case colorBar = "colorbar"
        }
        
        /// Creates `ColorAxis` object with specified properties.
        /// 
        /// - Parameters:
        ///   - uid:
        ///   - cAuto: Determines whether or not the color domain is computed with respect to the input data
        ///   (here corresponding trace color array(s)) or the bounds set in `cmin` and `cmax` Defaults to
        ///   `false` when `cmin` and `cmax` are set by the user.
        ///   - cMin: Sets the lower bound of the color domain.
        ///   - cMax: Sets the upper bound of the color domain.
        ///   - cMiddle: Sets the mid-point of the color domain by scaling `cmin` and/or `cmax` to be
        ///   equidistant to this point.
        ///   - colorScale: Sets the colorscale.
        ///   - autoColorScale: Determines whether the colorscale is a default palette (`autocolorscale:
        ///   true`) or the palette determined by `colorscale`.
        ///   - reverseScale: Reverses the color mapping if true.
        ///   - showScale: Determines whether or not a colorbar is displayed for this trace.
        ///   - colorBar:
        public init(uid: UInt = UInt.random(in: 2...UInt.max), cAuto: Bool? = nil, cMin: Double? = nil,
                cMax: Double? = nil, cMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale:
                Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: Shared.ColorBar? =
                nil) {
            self.uid = uid
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
    public var colorAxis: [ColorAxis] = []

    /// Decoding and encoding keys compatible with Plotly schema.
    enum CodingKeys: String, CodingKey {
        case funnelAreaColorWay = "funnelareacolorway"
        case extendFunnelAreaColors = "extendfunnelareacolors"
        case treemapColorWay = "treemapcolorway"
        case extendTreemapColors = "extendtreemapcolors"
        case sunburstColorWay = "sunburstcolorway"
        case extendSunburstColors = "extendsunburstcolors"
        case hiddenLabels = "hiddenlabels"
        case pieColorWay = "piecolorway"
        case extendPieColors = "extendpiecolors"
        case waterfallMode = "waterfallmode"
        case waterfallGap = "waterfallgap"
        case waterfallGroupGap = "waterfallgroupgap"
        case funnelMode = "funnelmode"
        case funnelGap = "funnelgap"
        case funnelGroupGap = "funnelgroupgap"
        case violinMode = "violinmode"
        case violinGap = "violingap"
        case violinGroupGap = "violingroupgap"
        case boxMode = "boxmode"
        case boxGap = "boxgap"
        case boxGroupGap = "boxgroupgap"
        case barMode = "barmode"
        case barNormalization = "barnorm"
        case barGap = "bargap"
        case barGroupGap = "bargroupgap"
        case font
        case title
        case autoSize = "autosize"
        case width
        case height
        case margin
        case paperBackgroundColor = "paper_bgcolor"
        case plotBackgroundColor = "plot_bgcolor"
        case separators
        case hideSources = "hidesources"
        case showLegend = "showlegend"
        case colorWay = "colorway"
        case dataRevision = "datarevision"
        case uiRevision = "uirevision"
        case editRevision = "editrevision"
        case selectionRevision = "selectionrevision"
        case template
        case modeBar = "modebar"
        case meta
        case transition
        case clickMode = "clickmode"
        case dragMode = "dragmode"
        case hoverMode = "hovermode"
        case hoverDistance = "hoverdistance"
        case spikeDistance = "spikedistance"
        case hoverLabel = "hoverlabel"
        case selectDirection = "selectdirection"
        case grid
        case calendar
        case xAxis = "xaxis"
        case yAxis = "yaxis"
        case ternary
        case scene
        case geo
        case mapbox
        case polar
        case legend
        case annotations
        case shapes
        case images
        case updateMenus = "updatemenus"
        case sliders
        case colorScale = "colorscale"
        case colorAxis = "coloraxis"
    }
    
    /// Creates `Layout` object with specified properties.
    /// 
    /// - Parameters:
    ///   - funnelAreaColorWay: Sets the default funnelarea slice colors.
    ///   - extendFunnelAreaColors: If `true`, the funnelarea slice colors (whether given by
    ///   `funnelareacolorway` or inherited from `colorway`) will be extended to three times its original
    ///   length by first repeating every color 20% lighter then each color 20% darker.
    ///   - treemapColorWay: Sets the default treemap slice colors.
    ///   - extendTreemapColors: If `true`, the treemap slice colors (whether given by `treemapcolorway`
    ///   or inherited from `colorway`) will be extended to three times its original length by first
    ///   repeating every color 20% lighter then each color 20% darker.
    ///   - sunburstColorWay: Sets the default sunburst slice colors.
    ///   - extendSunburstColors: If `true`, the sunburst slice colors (whether given by
    ///   `sunburstcolorway` or inherited from `colorway`) will be extended to three times its original
    ///   length by first repeating every color 20% lighter then each color 20% darker.
    ///   - hiddenLabels: hiddenlabels is the funnelarea & pie chart analog of visible:'legendonly' but it
    ///   can contain many labels, and can simultaneously hide slices from several pies/funnelarea charts
    ///   - pieColorWay: Sets the default pie slice colors.
    ///   - extendPieColors: If `true`, the pie slice colors (whether given by `piecolorway` or inherited
    ///   from `colorway`) will be extended to three times its original length by first repeating every
    ///   color 20% lighter then each color 20% darker.
    ///   - waterfallMode: Determines how bars at the same location coordinate are displayed on the graph.
    ///   - waterfallGap: Sets the gap (in plot fraction) between bars of adjacent location coordinates.
    ///   - waterfallGroupGap: Sets the gap (in plot fraction) between bars of the same location
    ///   coordinate.
    ///   - funnelMode: Determines how bars at the same location coordinate are displayed on the graph.
    ///   - funnelGap: Sets the gap (in plot fraction) between bars of adjacent location coordinates.
    ///   - funnelGroupGap: Sets the gap (in plot fraction) between bars of the same location coordinate.
    ///   - violinMode: Determines how violins at the same location coordinate are displayed on the graph.
    ///   - violinGap: Sets the gap (in plot fraction) between violins of adjacent location coordinates.
    ///   - violinGroupGap: Sets the gap (in plot fraction) between violins of the same location
    ///   coordinate.
    ///   - boxMode: Determines how boxes at the same location coordinate are displayed on the graph.
    ///   - boxGap: Sets the gap (in plot fraction) between boxes of adjacent location coordinates.
    ///   - boxGroupGap: Sets the gap (in plot fraction) between boxes of the same location coordinate.
    ///   - barMode: Determines how bars at the same location coordinate are displayed on the graph.
    ///   - barNormalization: Sets the normalization for bar traces on the graph.
    ///   - barGap: Sets the gap (in plot fraction) between bars of adjacent location coordinates.
    ///   - barGroupGap: Sets the gap (in plot fraction) between bars of the same location coordinate.
    ///   - font: Sets the global font.
    ///   - title:
    ///   - autoSize: Determines whether or not a layout width or height that has been left undefined by
    ///   the user is initialized on each relayout.
    ///   - width: Sets the plot's width (in px).
    ///   - height: Sets the plot's height (in px).
    ///   - margin:
    ///   - paperBackgroundColor: Sets the color of paper where the graph is drawn.
    ///   - plotBackgroundColor: Sets the color of plotting area in-between x and y axes.
    ///   - separators: Sets the decimal and thousand separators.
    ///   - hideSources: Determines whether or not a text link citing the data source is placed at the
    ///   bottom-right cored of the figure.
    ///   - showLegend: Determines whether or not a legend is drawn.
    ///   - colorWay: Sets the default trace colors.
    ///   - dataRevision: If provided, a changed value tells `Plotly.react` that one or more data arrays
    ///   has changed.
    ///   - uiRevision: Used to allow user interactions with the plot to persist after `Plotly.react`
    ///   calls that are unaware of these interactions.
    ///   - editRevision: Controls persistence of user-driven changes in `editable: true` configuration,
    ///   other than trace names and axis titles.
    ///   - selectionRevision: Controls persistence of user-driven changes in selected points from all
    ///   traces.
    ///   - template: Default attributes to be applied to the plot.
    ///   - modeBar:
    ///   - meta: Assigns extra meta information that can be used in various `text` attributes.
    ///   - transition: Sets transition options used during Plotly.react updates.
    ///   - clickMode: Determines the mode of single click interactions.
    ///   - dragMode: Determines the mode of drag interactions.
    ///   - hoverMode: Determines the mode of hover interactions.
    ///   - hoverDistance: Sets the default distance (in pixels) to look for data to add hover labels (-1
    ///   means no cutoff, 0 means no looking for data).
    ///   - spikeDistance: Sets the default distance (in pixels) to look for data to draw spikelines to
    ///   (-1 means no cutoff, 0 means no looking for data).
    ///   - hoverLabel:
    ///   - selectDirection: When "dragmode" is set to "select", this limits the selection of the drag to
    ///   horizontal, vertical or diagonal.
    ///   - grid:
    ///   - calendar: Sets the default calendar system to use for interpreting and displaying dates
    ///   throughout the plot.
    ///   - xAxis:
    ///   - yAxis:
    ///   - ternary:
    ///   - scene:
    ///   - geo:
    ///   - mapbox:
    ///   - polar:
    ///   - legend:
    ///   - annotations:
    ///   - shapes:
    ///   - images:
    ///   - updateMenus:
    ///   - sliders:
    ///   - colorScale:
    ///   - colorAxis:
    public init(funnelAreaColorWay: ColorList? = nil, extendFunnelAreaColors: Bool? = nil,
            treemapColorWay: ColorList? = nil, extendTreemapColors: Bool? = nil, sunburstColorWay:
            ColorList? = nil, extendSunburstColors: Bool? = nil, hiddenLabels: [Double]? = nil, pieColorWay:
            ColorList? = nil, extendPieColors: Bool? = nil, waterfallMode: WaterfallMode? = nil,
            waterfallGap: Double? = nil, waterfallGroupGap: Double? = nil, funnelMode: FunnelMode? = nil,
            funnelGap: Double? = nil, funnelGroupGap: Double? = nil, violinMode: ViolinMode? = nil,
            violinGap: Double? = nil, violinGroupGap: Double? = nil, boxMode: BoxMode? = nil, boxGap:
            Double? = nil, boxGroupGap: Double? = nil, barMode: BarMode? = nil, barNormalization:
            BarNormalization? = nil, barGap: Double? = nil, barGroupGap: Double? = nil, font: Shared.Font? =
            nil, title: Title? = nil, autoSize: Bool? = nil, width: Double? = nil, height: Double? = nil,
            margin: Margin? = nil, paperBackgroundColor: Color? = nil, plotBackgroundColor: Color? = nil,
            separators: String? = nil, hideSources: Bool? = nil, showLegend: Bool? = nil, colorWay:
            ColorList? = nil, dataRevision: Anything? = nil, uiRevision: Anything? = nil, editRevision:
            Anything? = nil, selectionRevision: Anything? = nil, template: Anything? = nil, modeBar:
            ModeBar? = nil, meta: Data<Anything>? = nil, transition: Transition? = nil, clickMode:
            ClickMode? = nil, dragMode: DragMode? = nil, hoverMode: HoverMode? = nil, hoverDistance: Int? =
            nil, spikeDistance: Int? = nil, hoverLabel: Shared.HoverLabel? = nil, selectDirection:
            SelectDirection? = nil, grid: Grid? = nil, calendar: Shared.Calendar? = nil, xAxis: [XAxis] =
            [], yAxis: [YAxis] = [], ternary: [Ternary] = [], scene: [Scene] = [], geo: [Geo] = [], mapbox:
            [Mapbox] = [], polar: [Polar] = [], legend: Legend? = nil, annotations: [Annotation]? = nil,
            shapes: [Shape]? = nil, images: [Image]? = nil, updateMenus: [UpdateMenu]? = nil, sliders:
            [Slider]? = nil, colorScale: ColorMap? = nil, colorAxis: [ColorAxis] = []) {
        self.funnelAreaColorWay = funnelAreaColorWay
        self.extendFunnelAreaColors = extendFunnelAreaColors
        self.treemapColorWay = treemapColorWay
        self.extendTreemapColors = extendTreemapColors
        self.sunburstColorWay = sunburstColorWay
        self.extendSunburstColors = extendSunburstColors
        self.hiddenLabels = hiddenLabels
        self.pieColorWay = pieColorWay
        self.extendPieColors = extendPieColors
        self.waterfallMode = waterfallMode
        self.waterfallGap = waterfallGap
        self.waterfallGroupGap = waterfallGroupGap
        self.funnelMode = funnelMode
        self.funnelGap = funnelGap
        self.funnelGroupGap = funnelGroupGap
        self.violinMode = violinMode
        self.violinGap = violinGap
        self.violinGroupGap = violinGroupGap
        self.boxMode = boxMode
        self.boxGap = boxGap
        self.boxGroupGap = boxGroupGap
        self.barMode = barMode
        self.barNormalization = barNormalization
        self.barGap = barGap
        self.barGroupGap = barGroupGap
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
        self.legend = legend
        self.annotations = annotations
        self.shapes = shapes
        self.images = images
        self.updateMenus = updateMenus
        self.sliders = sliders
        self.colorScale = colorScale
        self.colorAxis = colorAxis
    }
    
    /// Encodes the object in a format compatible with Plotly.
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        var axisContainer = encoder.container(keyedBy: AxisKeys.self)
        try container.encodeIfPresent(funnelAreaColorWay, forKey: .funnelAreaColorWay)
        try container.encodeIfPresent(extendFunnelAreaColors, forKey: .extendFunnelAreaColors)
        try container.encodeIfPresent(treemapColorWay, forKey: .treemapColorWay)
        try container.encodeIfPresent(extendTreemapColors, forKey: .extendTreemapColors)
        try container.encodeIfPresent(sunburstColorWay, forKey: .sunburstColorWay)
        try container.encodeIfPresent(extendSunburstColors, forKey: .extendSunburstColors)
        try container.encodeIfPresent(hiddenLabels, forKey: .hiddenLabels)
        try container.encodeIfPresent(pieColorWay, forKey: .pieColorWay)
        try container.encodeIfPresent(extendPieColors, forKey: .extendPieColors)
        try container.encodeIfPresent(waterfallMode, forKey: .waterfallMode)
        try container.encodeIfPresent(waterfallGap, forKey: .waterfallGap)
        try container.encodeIfPresent(waterfallGroupGap, forKey: .waterfallGroupGap)
        try container.encodeIfPresent(funnelMode, forKey: .funnelMode)
        try container.encodeIfPresent(funnelGap, forKey: .funnelGap)
        try container.encodeIfPresent(funnelGroupGap, forKey: .funnelGroupGap)
        try container.encodeIfPresent(violinMode, forKey: .violinMode)
        try container.encodeIfPresent(violinGap, forKey: .violinGap)
        try container.encodeIfPresent(violinGroupGap, forKey: .violinGroupGap)
        try container.encodeIfPresent(boxMode, forKey: .boxMode)
        try container.encodeIfPresent(boxGap, forKey: .boxGap)
        try container.encodeIfPresent(boxGroupGap, forKey: .boxGroupGap)
        try container.encodeIfPresent(barMode, forKey: .barMode)
        try container.encodeIfPresent(barNormalization, forKey: .barNormalization)
        try container.encodeIfPresent(barGap, forKey: .barGap)
        try container.encodeIfPresent(barGroupGap, forKey: .barGroupGap)
        try container.encodeIfPresent(font, forKey: .font)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(autoSize, forKey: .autoSize)
        try container.encodeIfPresent(width, forKey: .width)
        try container.encodeIfPresent(height, forKey: .height)
        try container.encodeIfPresent(margin, forKey: .margin)
        try container.encodeIfPresent(paperBackgroundColor, forKey: .paperBackgroundColor)
        try container.encodeIfPresent(plotBackgroundColor, forKey: .plotBackgroundColor)
        try container.encodeIfPresent(separators, forKey: .separators)
        try container.encodeIfPresent(hideSources, forKey: .hideSources)
        try container.encodeIfPresent(showLegend, forKey: .showLegend)
        try container.encodeIfPresent(colorWay, forKey: .colorWay)
        try container.encodeIfPresent(dataRevision, forKey: .dataRevision)
        try container.encodeIfPresent(uiRevision, forKey: .uiRevision)
        try container.encodeIfPresent(editRevision, forKey: .editRevision)
        try container.encodeIfPresent(selectionRevision, forKey: .selectionRevision)
        try container.encodeIfPresent(template, forKey: .template)
        try container.encodeIfPresent(modeBar, forKey: .modeBar)
        try container.encodeIfPresent(meta, forKey: .meta)
        try container.encodeIfPresent(transition, forKey: .transition)
        try container.encodeIfPresent(clickMode, forKey: .clickMode)
        try container.encodeIfPresent(dragMode, forKey: .dragMode)
        try container.encodeIfPresent(hoverMode, forKey: .hoverMode)
        try container.encodeIfPresent(hoverDistance, forKey: .hoverDistance)
        try container.encodeIfPresent(spikeDistance, forKey: .spikeDistance)
        try container.encodeIfPresent(hoverLabel, forKey: .hoverLabel)
        try container.encodeIfPresent(selectDirection, forKey: .selectDirection)
        try container.encodeIfPresent(grid, forKey: .grid)
        try container.encodeIfPresent(calendar, forKey: .calendar)
        for axis in self.xAxis {
            try axisContainer.encode(axis, forKey: AxisKeys(.xAxis, axis.uid))
        }
        for axis in self.yAxis {
            try axisContainer.encode(axis, forKey: AxisKeys(.yAxis, axis.uid))
        }
        for axis in self.ternary {
            try axisContainer.encode(axis, forKey: AxisKeys(.ternary, axis.uid))
        }
        for axis in self.scene {
            try axisContainer.encode(axis, forKey: AxisKeys(.scene, axis.uid))
        }
        for axis in self.geo {
            try axisContainer.encode(axis, forKey: AxisKeys(.geo, axis.uid))
        }
        for axis in self.mapbox {
            try axisContainer.encode(axis, forKey: AxisKeys(.mapbox, axis.uid))
        }
        for axis in self.polar {
            try axisContainer.encode(axis, forKey: AxisKeys(.polar, axis.uid))
        }
        try container.encodeIfPresent(legend, forKey: .legend)
        try container.encodeIfPresent(annotations, forKey: .annotations)
        try container.encodeIfPresent(shapes, forKey: .shapes)
        try container.encodeIfPresent(images, forKey: .images)
        try container.encodeIfPresent(updateMenus, forKey: .updateMenus)
        try container.encodeIfPresent(sliders, forKey: .sliders)
        try container.encodeIfPresent(colorScale, forKey: .colorScale)
        for axis in self.colorAxis {
            try axisContainer.encode(axis, forKey: AxisKeys(.colorAxis, axis.uid))
        }
        /// Convenience type that appends integer UID to a coding key.
        struct AxisKeys: CodingKey {
            var intValue: Int?
            var stringValue: String
        
            init(intValue: Int) {
                self.intValue = intValue
                self.stringValue = String(intValue)
            }
        
            init(stringValue: String) {
                self.stringValue = stringValue
            }
        
            init(_ key: CodingKeys, _ uid: UInt) {
                self.init(stringValue: key.rawValue + String(uid))
            }
        }
    }
}