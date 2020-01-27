public struct Layout: Encodable {
    
    // MARK: - FunnelArea

    /// Sets the default funnelarea slice colors. 
    ///
    /// Defaults to the main `colorway` used for trace colors. If you specify a new list here it can
    /// still be extended with lighter and darker colors, see `extendfunnelareacolors`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnelarea-funnelareacolorway) |
    /// [Python](https://plot.ly/python/reference/#funnelarea-funnelareacolorway) |
    /// [R](https://plot.ly/r/reference/#funnelarea-funnelareacolorway)
    public var funnelAreaColorWay: ColorList?

    /// If `true`, the funnelarea slice colors (whether given by `funnelareacolorway` or inherited from `colorway`) will be extended to three times its original length by first repeating every color 20% lighter then each color 20% darker. 
    ///
    /// This is intended to reduce the likelihood of reusing the same color when you have many slices,
    /// but you can set `false` to disable. Colors provided in the trace, using `marker.colors`, are
    /// never extended.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnelarea-extendfunnelareacolors) |
    /// [Python](https://plot.ly/python/reference/#funnelarea-extendfunnelareacolors) |
    /// [R](https://plot.ly/r/reference/#funnelarea-extendfunnelareacolors)
    public var extendFunnelAreaColors: Bool?

    
    // MARK: - Treemap

    /// Sets the default treemap slice colors. 
    ///
    /// Defaults to the main `colorway` used for trace colors. If you specify a new list here it can
    /// still be extended with lighter and darker colors, see `extendtreemapcolors`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#treemap-treemapcolorway) |
    /// [Python](https://plot.ly/python/reference/#treemap-treemapcolorway) |
    /// [R](https://plot.ly/r/reference/#treemap-treemapcolorway)
    public var treemapColorWay: ColorList?

    /// If `true`, the treemap slice colors (whether given by `treemapcolorway` or inherited from `colorway`) will be extended to three times its original length by first repeating every color 20% lighter then each color 20% darker. 
    ///
    /// This is intended to reduce the likelihood of reusing the same color when you have many slices,
    /// but you can set `false` to disable. Colors provided in the trace, using `marker.colors`, are
    /// never extended.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#treemap-extendtreemapcolors) |
    /// [Python](https://plot.ly/python/reference/#treemap-extendtreemapcolors) |
    /// [R](https://plot.ly/r/reference/#treemap-extendtreemapcolors)
    public var extendTreemapColors: Bool?

    
    // MARK: - Sunburst

    /// Sets the default sunburst slice colors. 
    ///
    /// Defaults to the main `colorway` used for trace colors. If you specify a new list here it can
    /// still be extended with lighter and darker colors, see `extendsunburstcolors`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#sunburst-sunburstcolorway) |
    /// [Python](https://plot.ly/python/reference/#sunburst-sunburstcolorway) |
    /// [R](https://plot.ly/r/reference/#sunburst-sunburstcolorway)
    public var sunburstColorWay: ColorList?

    /// If `true`, the sunburst slice colors (whether given by `sunburstcolorway` or inherited from `colorway`) will be extended to three times its original length by first repeating every color 20% lighter then each color 20% darker. 
    ///
    /// This is intended to reduce the likelihood of reusing the same color when you have many slices,
    /// but you can set `false` to disable. Colors provided in the trace, using `marker.colors`, are
    /// never extended.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#sunburst-extendsunburstcolors) |
    /// [Python](https://plot.ly/python/reference/#sunburst-extendsunburstcolors) |
    /// [R](https://plot.ly/r/reference/#sunburst-extendsunburstcolors)
    public var extendSunburstColors: Bool?

    
    // MARK: - Pie

    /// hiddenlabels is the funnelarea & pie chart analog of visible:'legendonly' but it can contain many labels, and can simultaneously hide slices from several pies/funnelarea charts
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pie-hiddenlabels) |
    /// [Python](https://plot.ly/python/reference/#pie-hiddenlabels) |
    /// [R](https://plot.ly/r/reference/#pie-hiddenlabels)
    public var hiddenLabels: [Double]?

    /// Sets the default pie slice colors. 
    ///
    /// Defaults to the main `colorway` used for trace colors. If you specify a new list here it can
    /// still be extended with lighter and darker colors, see `extendpiecolors`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pie-piecolorway) |
    /// [Python](https://plot.ly/python/reference/#pie-piecolorway) |
    /// [R](https://plot.ly/r/reference/#pie-piecolorway)
    public var pieColorWay: ColorList?

    /// If `true`, the pie slice colors (whether given by `piecolorway` or inherited from `colorway`) will be extended to three times its original length by first repeating every color 20% lighter then each color 20% darker. 
    ///
    /// This is intended to reduce the likelihood of reusing the same color when you have many slices,
    /// but you can set `false` to disable. Colors provided in the trace, using `marker.colors`, are
    /// never extended.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pie-extendpiecolors) |
    /// [Python](https://plot.ly/python/reference/#pie-extendpiecolors) |
    /// [R](https://plot.ly/r/reference/#pie-extendpiecolors)
    public var extendPieColors: Bool?

    
    // MARK: - Waterfall

    /// Determines how bars at the same location coordinate are displayed on the graph. 
    ///
    /// With *group*, the bars are plotted next to one another centered around the shared location. With
    /// *overlay*, the bars are plotted over one another, you might need to an *opacity* to see multiple
    /// bars.
    ///
    /// # Used By
    /// `Layout.waterfallMode` |
    public enum WaterfallMode: String, Encodable {
        case group
        case overlay
    }
    /// Determines how bars at the same location coordinate are displayed on the graph. 
    ///
    /// With *group*, the bars are plotted next to one another centered around the shared location. With
    /// *overlay*, the bars are plotted over one another, you might need to an *opacity* to see multiple
    /// bars.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#waterfall-waterfallmode) |
    /// [Python](https://plot.ly/python/reference/#waterfall-waterfallmode) |
    /// [R](https://plot.ly/r/reference/#waterfall-waterfallmode)
    public var waterfallMode: WaterfallMode?

    /// Sets the gap (in plot fraction) between bars of adjacent location coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#waterfall-waterfallgap) |
    /// [Python](https://plot.ly/python/reference/#waterfall-waterfallgap) |
    /// [R](https://plot.ly/r/reference/#waterfall-waterfallgap)
    public var waterfallGap: Double?

    /// Sets the gap (in plot fraction) between bars of the same location coordinate.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#waterfall-waterfallgroupgap) |
    /// [Python](https://plot.ly/python/reference/#waterfall-waterfallgroupgap) |
    /// [R](https://plot.ly/r/reference/#waterfall-waterfallgroupgap)
    public var waterfallGroupGap: Double?

    
    // MARK: - Funnel

    /// Determines how bars at the same location coordinate are displayed on the graph. 
    ///
    /// With *stack*, the bars are stacked on top of one another With *group*, the bars are plotted next
    /// to one another centered around the shared location. With *overlay*, the bars are plotted over
    /// one another, you might need to an *opacity* to see multiple bars.
    ///
    /// # Used By
    /// `Layout.funnelMode` |
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnel-funnelmode) |
    /// [Python](https://plot.ly/python/reference/#funnel-funnelmode) |
    /// [R](https://plot.ly/r/reference/#funnel-funnelmode)
    public var funnelMode: FunnelMode?

    /// Sets the gap (in plot fraction) between bars of adjacent location coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnel-funnelgap) |
    /// [Python](https://plot.ly/python/reference/#funnel-funnelgap) |
    /// [R](https://plot.ly/r/reference/#funnel-funnelgap)
    public var funnelGap: Double?

    /// Sets the gap (in plot fraction) between bars of the same location coordinate.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnel-funnelgroupgap) |
    /// [Python](https://plot.ly/python/reference/#funnel-funnelgroupgap) |
    /// [R](https://plot.ly/r/reference/#funnel-funnelgroupgap)
    public var funnelGroupGap: Double?

    
    // MARK: - Violin

    /// Determines how violins at the same location coordinate are displayed on the graph. 
    ///
    /// If *group*, the violins are plotted next to one another centered around the shared location. If
    /// *overlay*, the violins are plotted over one another, you might need to set *opacity* to see them
    /// multiple violins. Has no effect on traces that have *width* set.
    ///
    /// # Used By
    /// `Layout.violinMode` |
    public enum ViolinMode: String, Encodable {
        case group
        case overlay
    }
    /// Determines how violins at the same location coordinate are displayed on the graph. 
    ///
    /// If *group*, the violins are plotted next to one another centered around the shared location. If
    /// *overlay*, the violins are plotted over one another, you might need to set *opacity* to see them
    /// multiple violins. Has no effect on traces that have *width* set.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-violinmode) |
    /// [Python](https://plot.ly/python/reference/#violin-violinmode) |
    /// [R](https://plot.ly/r/reference/#violin-violinmode)
    public var violinMode: ViolinMode?

    /// Sets the gap (in plot fraction) between violins of adjacent location coordinates. 
    ///
    /// Has no effect on traces that have *width* set.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-violingap) |
    /// [Python](https://plot.ly/python/reference/#violin-violingap) |
    /// [R](https://plot.ly/r/reference/#violin-violingap)
    public var violinGap: Double?

    /// Sets the gap (in plot fraction) between violins of the same location coordinate. 
    ///
    /// Has no effect on traces that have *width* set.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-violingroupgap) |
    /// [Python](https://plot.ly/python/reference/#violin-violingroupgap) |
    /// [R](https://plot.ly/r/reference/#violin-violingroupgap)
    public var violinGroupGap: Double?

    
    // MARK: - Box and Candlestick

    /// Determines how boxes at the same location coordinate are displayed on the graph. 
    ///
    /// If *group*, the boxes are plotted next to one another centered around the shared location. If
    /// *overlay*, the boxes are plotted over one another, you might need to set *opacity* to see them
    /// multiple boxes. Has no effect on traces that have *width* set.
    ///
    /// # Used By
    /// `Layout.boxMode` |
    public enum BoxMode: String, Encodable {
        case group
        case overlay
    }
    /// Determines how boxes at the same location coordinate are displayed on the graph. 
    ///
    /// If *group*, the boxes are plotted next to one another centered around the shared location. If
    /// *overlay*, the boxes are plotted over one another, you might need to set *opacity* to see them
    /// multiple boxes. Has no effect on traces that have *width* set.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#box-boxmode) |
    /// [Python](https://plot.ly/python/reference/#box-boxmode) |
    /// [R](https://plot.ly/r/reference/#box-boxmode)
    public var boxMode: BoxMode?

    /// Sets the gap (in plot fraction) between boxes of adjacent location coordinates. 
    ///
    /// Has no effect on traces that have *width* set.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#box-boxgap) |
    /// [Python](https://plot.ly/python/reference/#box-boxgap) |
    /// [R](https://plot.ly/r/reference/#box-boxgap)
    public var boxGap: Double?

    /// Sets the gap (in plot fraction) between boxes of the same location coordinate. 
    ///
    /// Has no effect on traces that have *width* set.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#box-boxgroupgap) |
    /// [Python](https://plot.ly/python/reference/#box-boxgroupgap) |
    /// [R](https://plot.ly/r/reference/#box-boxgroupgap)
    public var boxGroupGap: Double?

    
    // MARK: - Bar, BarPolar and Histogram

    /// Determines how bars at the same location coordinate are displayed on the graph. 
    ///
    /// With *stack*, the bars are stacked on top of one another With *relative*, the bars are stacked
    /// on top of one another, with negative values below the axis, positive values above With *group*,
    /// the bars are plotted next to one another centered around the shared location. With *overlay*,
    /// the bars are plotted over one another, you might need to an *opacity* to see multiple bars.
    ///
    /// # Used By
    /// `Layout.barMode` |
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-barmode) |
    /// [Python](https://plot.ly/python/reference/#bar-barmode) |
    /// [R](https://plot.ly/r/reference/#bar-barmode)
    public var barMode: BarMode?

    /// Sets the normalization for bar traces on the graph. 
    ///
    /// With *fraction*, the value of each bar is divided by the sum of all values at that location
    /// coordinate. *percent* is the same but multiplied by 100 to show percentages.
    ///
    /// # Used By
    /// `Layout.barNormalization` |
    public enum BarNormalization: String, Encodable {
        case none = ""
        case fraction
        case percent
    }
    /// Sets the normalization for bar traces on the graph. 
    ///
    /// With *fraction*, the value of each bar is divided by the sum of all values at that location
    /// coordinate. *percent* is the same but multiplied by 100 to show percentages.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-barnorm) |
    /// [Python](https://plot.ly/python/reference/#bar-barnorm) |
    /// [R](https://plot.ly/r/reference/#bar-barnorm)
    public var barNormalization: BarNormalization?

    /// Sets the gap (in plot fraction) between bars of adjacent location coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-bargap) |
    /// [Python](https://plot.ly/python/reference/#bar-bargap) |
    /// [R](https://plot.ly/r/reference/#bar-bargap)
    public var barGap: Double?

    /// Sets the gap (in plot fraction) between bars of the same location coordinate.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-bargroupgap) |
    /// [Python](https://plot.ly/python/reference/#bar-bargroupgap) |
    /// [R](https://plot.ly/r/reference/#bar-bargroupgap)
    public var barGroupGap: Double?

    
    // MARK: - General

    /// Sets the global font. 
    ///
    /// Note that fonts used in traces and other layout components inherit from the global font.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-font) |
    /// [Python](https://plot.ly/python/reference/#layout-font) |
    /// [R](https://plot.ly/r/reference/#layout-font)
    public var font: Shared.Font?

    /// # Used By
    /// `Layout.title` |
    public struct Title: Encodable {
        /// Sets the plot's title. 
        ///
        /// Note that before the existence of `title.text`, the title's contents used to be defined as the
        /// `title` attribute itself. This behavior has been deprecated.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-title-text) |
        /// [Python](https://plot.ly/python/reference/#layout-title-text) |
        /// [R](https://plot.ly/r/reference/#layout-title-text)
        public var text: String?
    
        /// Sets the title font. 
        ///
        /// Note that the title's font used to be customized by the now deprecated `titlefont` attribute.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-title-font) |
        /// [Python](https://plot.ly/python/reference/#layout-title-font) |
        /// [R](https://plot.ly/r/reference/#layout-title-font)
        public var font: Shared.Font?
    
        /// Sets the container `x` refers to. 
        ///
        /// *container* spans the entire `width` of the plot. *paper* refers to the width of the plotting
        /// area only.
        ///
        /// # Used By
        /// `Layout.Title.xReference` |
        public enum XAxisReference: String, Encodable {
            case container
            case paper
        }
        /// Sets the container `x` refers to. 
        ///
        /// *container* spans the entire `width` of the plot. *paper* refers to the width of the plotting
        /// area only.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-title-xref) |
        /// [Python](https://plot.ly/python/reference/#layout-title-xref) |
        /// [R](https://plot.ly/r/reference/#layout-title-xref)
        public var xReference: XAxisReference?
    
        /// Sets the container `y` refers to. 
        ///
        /// *container* spans the entire `height` of the plot. *paper* refers to the height of the plotting
        /// area only.
        ///
        /// # Used By
        /// `Layout.Title.yReference` |
        public enum YAxisReference: String, Encodable {
            case container
            case paper
        }
        /// Sets the container `y` refers to. 
        ///
        /// *container* spans the entire `height` of the plot. *paper* refers to the height of the plotting
        /// area only.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-title-yref) |
        /// [Python](https://plot.ly/python/reference/#layout-title-yref) |
        /// [R](https://plot.ly/r/reference/#layout-title-yref)
        public var yReference: YAxisReference?
    
        /// Sets the x position with respect to `xref` in normalized coordinates from *0* (left) to *1* (right).
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-title-x) |
        /// [Python](https://plot.ly/python/reference/#layout-title-x) |
        /// [R](https://plot.ly/r/reference/#layout-title-x)
        public var x: Double?
    
        /// Sets the y position with respect to `yref` in normalized coordinates from *0* (bottom) to *1* (top). 
        ///
        /// *auto* places the baseline of the title onto the vertical center of the top margin.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-title-y) |
        /// [Python](https://plot.ly/python/reference/#layout-title-y) |
        /// [R](https://plot.ly/r/reference/#layout-title-y)
        public var y: Double?
    
        /// Sets the title's horizontal alignment with respect to its x position. 
        ///
        /// *left* means that the title starts at x, *right* means that the title ends at x and *center*
        /// means that the title's center is at x. *auto* divides `xref` by three and calculates the
        /// `xanchor` value automatically based on the value of `x`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-title-xanchor) |
        /// [Python](https://plot.ly/python/reference/#layout-title-xanchor) |
        /// [R](https://plot.ly/r/reference/#layout-title-xanchor)
        public var xAnchor: Shared.XAutoAnchor?
    
        /// Sets the title's vertical alignment with respect to its y position. 
        ///
        /// *top* means that the title's cap line is at y, *bottom* means that the title's baseline is at y
        /// and *middle* means that the title's midline is at y. *auto* divides `yref` by three and
        /// calculates the `yanchor` value automatically based on the value of `y`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-title-yanchor) |
        /// [Python](https://plot.ly/python/reference/#layout-title-yanchor) |
        /// [R](https://plot.ly/r/reference/#layout-title-yanchor)
        public var yAnchor: Shared.YAutoAnchor?
    
        /// Sets the padding of the title. 
        ///
        /// Each padding value only applies when the corresponding `xanchor`/`yanchor` value is set
        /// accordingly. E.g. for left padding to take effect, `xanchor` must be set to *left*. The same
        /// rule applies if `xanchor`/`yanchor` is determined automatically. Padding is muted if the
        /// respective anchor value is *middle*/*center*.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-title-pad) |
        /// [Python](https://plot.ly/python/reference/#layout-title-pad) |
        /// [R](https://plot.ly/r/reference/#layout-title-pad)
        public var padding: Shared.Padding?
    
        /// Plotly compatible property encoding
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
        
        public init(text: String? = nil, font: Shared.Font? = nil, xReference: XAxisReference? = nil, yReference: YAxisReference? = nil, x: Double? = nil, y: Double? = nil, xAnchor: Shared.XAutoAnchor? = nil, yAnchor: Shared.YAutoAnchor? = nil, padding: Shared.Padding? = nil) {
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-title) |
    /// [Python](https://plot.ly/python/reference/#layout-title) |
    /// [R](https://plot.ly/r/reference/#layout-title)
    public var title: Title?

    /// Determines whether or not a layout width or height that has been left undefined by the user is initialized on each relayout. 
    ///
    /// Note that, regardless of this attribute, an undefined layout width or height is always
    /// initialized on the first call to plot.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-autosize) |
    /// [Python](https://plot.ly/python/reference/#layout-autosize) |
    /// [R](https://plot.ly/r/reference/#layout-autosize)
    public var autoSize: Bool?

    /// Sets the plot's width (in px).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-width) |
    /// [Python](https://plot.ly/python/reference/#layout-width) |
    /// [R](https://plot.ly/r/reference/#layout-width)
    public var width: Double?

    /// Sets the plot's height (in px).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-height) |
    /// [Python](https://plot.ly/python/reference/#layout-height) |
    /// [R](https://plot.ly/r/reference/#layout-height)
    public var height: Double?

    /// # Used By
    /// `Layout.margin` |
    public struct Margin: Encodable {
        /// Sets the left margin (in px).
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-margin-l) |
        /// [Python](https://plot.ly/python/reference/#layout-margin-l) |
        /// [R](https://plot.ly/r/reference/#layout-margin-l)
        public var l: Double?
    
        /// Sets the right margin (in px).
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-margin-r) |
        /// [Python](https://plot.ly/python/reference/#layout-margin-r) |
        /// [R](https://plot.ly/r/reference/#layout-margin-r)
        public var r: Double?
    
        /// Sets the top margin (in px).
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-margin-t) |
        /// [Python](https://plot.ly/python/reference/#layout-margin-t) |
        /// [R](https://plot.ly/r/reference/#layout-margin-t)
        public var t: Double?
    
        /// Sets the bottom margin (in px).
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-margin-b) |
        /// [Python](https://plot.ly/python/reference/#layout-margin-b) |
        /// [R](https://plot.ly/r/reference/#layout-margin-b)
        public var b: Double?
    
        /// Sets the amount of padding (in px) between the plotting area and the axis lines
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-margin-pad) |
        /// [Python](https://plot.ly/python/reference/#layout-margin-pad) |
        /// [R](https://plot.ly/r/reference/#layout-margin-pad)
        public var padding: Double?
    
        /// Turns on/off margin expansion computations. 
        ///
        /// Legends, colorbars, updatemenus, sliders, axis rangeselector and rangeslider are allowed to push
        /// the margins by defaults.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-margin-autoexpand) |
        /// [Python](https://plot.ly/python/reference/#layout-margin-autoexpand) |
        /// [R](https://plot.ly/r/reference/#layout-margin-autoexpand)
        public var autoExpand: Bool?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case l
            case r
            case t
            case b
            case padding = "pad"
            case autoExpand = "autoexpand"
        }
        
        public init(l: Double? = nil, r: Double? = nil, t: Double? = nil, b: Double? = nil, padding: Double? = nil, autoExpand: Bool? = nil) {
            self.l = l
            self.r = r
            self.t = t
            self.b = b
            self.padding = padding
            self.autoExpand = autoExpand
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-margin) |
    /// [Python](https://plot.ly/python/reference/#layout-margin) |
    /// [R](https://plot.ly/r/reference/#layout-margin)
    public var margin: Margin?

    /// Sets the color of paper where the graph is drawn.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-paper_bgcolor) |
    /// [Python](https://plot.ly/python/reference/#layout-paper_bgcolor) |
    /// [R](https://plot.ly/r/reference/#layout-paper_bgcolor)
    public var paperBackgroundColor: Color?

    /// Sets the color of plotting area in-between x and y axes.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-plot_bgcolor) |
    /// [Python](https://plot.ly/python/reference/#layout-plot_bgcolor) |
    /// [R](https://plot.ly/r/reference/#layout-plot_bgcolor)
    public var plotBackgroundColor: Color?

    /// Sets the decimal and thousand separators. 
    ///
    /// For example, *. * puts a '.' before decimals and a space between thousands. In English locales,
    /// dflt is *.,* but other locales may alter this default.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-separators) |
    /// [Python](https://plot.ly/python/reference/#layout-separators) |
    /// [R](https://plot.ly/r/reference/#layout-separators)
    public var separators: String?

    /// Determines whether or not a text link citing the data source is placed at the bottom-right cored of the figure. 
    ///
    /// Has only an effect only on graphs that have been generated via forked graphs from the plotly
    /// service (at https://plot.ly or on-premise).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-hidesources) |
    /// [Python](https://plot.ly/python/reference/#layout-hidesources) |
    /// [R](https://plot.ly/r/reference/#layout-hidesources)
    public var hideSources: Bool?

    /// Determines whether or not a legend is drawn. 
    ///
    /// Default is `true` if there is a trace to show and any of these: a) Two or more traces would by
    /// default be shown in the legend. b) One pie trace is shown in the legend. c) One trace is
    /// explicitly given with `showlegend: true`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-showlegend) |
    /// [Python](https://plot.ly/python/reference/#layout-showlegend) |
    /// [R](https://plot.ly/r/reference/#layout-showlegend)
    public var showLegend: Bool?

    /// Sets the default trace colors.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-colorway) |
    /// [Python](https://plot.ly/python/reference/#layout-colorway) |
    /// [R](https://plot.ly/r/reference/#layout-colorway)
    public var colorWay: ColorList?

    /// If provided, a changed value tells `Plotly.react` that one or more data arrays has changed. 
    ///
    /// This way you can modify arrays in-place rather than making a complete new copy for an
    /// incremental change. If NOT provided, `Plotly.react` assumes that data arrays are being treated
    /// as immutable, thus any data array with a different identity from its predecessor contains new
    /// data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-datarevision) |
    /// [Python](https://plot.ly/python/reference/#layout-datarevision) |
    /// [R](https://plot.ly/r/reference/#layout-datarevision)
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-uirevision) |
    /// [Python](https://plot.ly/python/reference/#layout-uirevision) |
    /// [R](https://plot.ly/r/reference/#layout-uirevision)
    public var uiRevision: Anything?

    /// Controls persistence of user-driven changes in `editable: true` configuration, other than trace names and axis titles. 
    ///
    /// Defaults to `layout.uirevision`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-editrevision) |
    /// [Python](https://plot.ly/python/reference/#layout-editrevision) |
    /// [R](https://plot.ly/r/reference/#layout-editrevision)
    public var editRevision: Anything?

    /// Controls persistence of user-driven changes in selected points from all traces.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-selectionrevision) |
    /// [Python](https://plot.ly/python/reference/#layout-selectionrevision) |
    /// [R](https://plot.ly/r/reference/#layout-selectionrevision)
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-template) |
    /// [Python](https://plot.ly/python/reference/#layout-template) |
    /// [R](https://plot.ly/r/reference/#layout-template)
    public var template: Anything?

    /// # Used By
    /// `Layout.modeBar` |
    public struct ModeBar: Encodable {
        /// Sets the orientation of the modebar.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-modebar-orientation) |
        /// [Python](https://plot.ly/python/reference/#layout-modebar-orientation) |
        /// [R](https://plot.ly/r/reference/#layout-modebar-orientation)
        public var orientation: Shared.Orientation?
    
        /// Sets the background color of the modebar.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-modebar-bgcolor) |
        /// [Python](https://plot.ly/python/reference/#layout-modebar-bgcolor) |
        /// [R](https://plot.ly/r/reference/#layout-modebar-bgcolor)
        public var backgroundColor: Color?
    
        /// Sets the color of the icons in the modebar.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-modebar-color) |
        /// [Python](https://plot.ly/python/reference/#layout-modebar-color) |
        /// [R](https://plot.ly/r/reference/#layout-modebar-color)
        public var color: Color?
    
        /// Sets the color of the active or hovered on icons in the modebar.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-modebar-activecolor) |
        /// [Python](https://plot.ly/python/reference/#layout-modebar-activecolor) |
        /// [R](https://plot.ly/r/reference/#layout-modebar-activecolor)
        public var activeColor: Color?
    
        /// Controls persistence of user-driven changes related to the modebar, including `hovermode`, `dragmode`, and `showspikes` at both the root level and inside subplots. 
        ///
        /// Defaults to `layout.uirevision`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-modebar-uirevision) |
        /// [Python](https://plot.ly/python/reference/#layout-modebar-uirevision) |
        /// [R](https://plot.ly/r/reference/#layout-modebar-uirevision)
        public var uiRevision: Anything?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case orientation
            case backgroundColor = "bgcolor"
            case color
            case activeColor = "activecolor"
            case uiRevision = "uirevision"
        }
        
        public init(orientation: Shared.Orientation? = nil, backgroundColor: Color? = nil, color: Color? = nil, activeColor: Color? = nil, uiRevision: Anything? = nil) {
            self.orientation = orientation
            self.backgroundColor = backgroundColor
            self.color = color
            self.activeColor = activeColor
            self.uiRevision = uiRevision
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-modebar) |
    /// [Python](https://plot.ly/python/reference/#layout-modebar) |
    /// [R](https://plot.ly/r/reference/#layout-modebar)
    public var modeBar: ModeBar?

    /// Assigns extra meta information that can be used in various `text` attributes. 
    ///
    /// Attributes such as the graph, axis and colorbar `title.text`, annotation `text` `trace.name` in
    /// legend items, `rangeselector`, `updatemenus` and `sliders` `label` text all support `meta`. One
    /// can access `meta` fields using template strings: `%{meta[i]}` where `i` is the index of the
    /// `meta` item in question. `meta` can also be an object for example `{key: value}` which can be
    /// accessed %{meta[key]}.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-meta) |
    /// [Python](https://plot.ly/python/reference/#layout-meta) |
    /// [R](https://plot.ly/r/reference/#layout-meta)
    public var meta: ArrayOrAnything?

    /// Sets transition options used during Plotly.react updates.
    ///
    /// # Used By
    /// `Layout.transition` |
    public struct Transition: Encodable {
        /// The duration of the transition, in milliseconds. 
        ///
        /// If equal to zero, updates are synchronous.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-transition-duration) |
        /// [Python](https://plot.ly/python/reference/#layout-transition-duration) |
        /// [R](https://plot.ly/r/reference/#layout-transition-duration)
        public var duration: Double?
    
        /// The easing function used for the transition
        ///
        /// # Used By
        /// `Layout.Transition.easing` |
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
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-transition-easing) |
        /// [Python](https://plot.ly/python/reference/#layout-transition-easing) |
        /// [R](https://plot.ly/r/reference/#layout-transition-easing)
        public var easing: Easing?
    
        /// Determines whether the figure's layout or traces smoothly transitions during updates that make both traces and layout change.
        ///
        /// # Used By
        /// `Layout.Transition.ordering` |
        public enum Ordering: String, Encodable {
            case layoutFirst = "layout first"
            case tracesFirst = "traces first"
        }
        /// Determines whether the figure's layout or traces smoothly transitions during updates that make both traces and layout change.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-transition-ordering) |
        /// [Python](https://plot.ly/python/reference/#layout-transition-ordering) |
        /// [R](https://plot.ly/r/reference/#layout-transition-ordering)
        public var ordering: Ordering?
    
        public init(duration: Double? = nil, easing: Easing? = nil, ordering: Ordering? = nil) {
            self.duration = duration
            self.easing = easing
            self.ordering = ordering
        }
    }
    /// Sets transition options used during Plotly.react updates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-transition) |
    /// [Python](https://plot.ly/python/reference/#layout-transition) |
    /// [R](https://plot.ly/r/reference/#layout-transition)
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
    ///
    /// # Used By
    /// `Layout.clickMode` |
    public struct ClickMode: OptionSet, Encodable {
        public let rawValue: Int
    
        public static var event: ClickMode { ClickMode(rawValue: 1 << 0) }
        public static var select: ClickMode { ClickMode(rawValue: 1 << 1) }
        public static var none: ClickMode { ClickMode(rawValue: 1 << 2) }
    
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-clickmode) |
    /// [Python](https://plot.ly/python/reference/#layout-clickmode) |
    /// [R](https://plot.ly/r/reference/#layout-clickmode)
    public var clickMode: ClickMode?

    /// Determines the mode of drag interactions. 
    ///
    /// *select* and *lasso* apply only to scatter traces with markers or text. *orbit* and *turntable*
    /// apply only to 3D scenes.
    ///
    /// # Used By
    /// `Layout.dragMode` |
    public enum DragMode: Encodable {
        case zoom
        case pan
        case select
        case lasso
        case orbit
        case turntable
        case `false`
        
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
            case .`false`:
                try container.encode(false)
            }
        }
    }
    /// Determines the mode of drag interactions. 
    ///
    /// *select* and *lasso* apply only to scatter traces with markers or text. *orbit* and *turntable*
    /// apply only to 3D scenes.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-dragmode) |
    /// [Python](https://plot.ly/python/reference/#layout-dragmode) |
    /// [R](https://plot.ly/r/reference/#layout-dragmode)
    public var dragMode: DragMode?

    /// Determines the mode of hover interactions. 
    ///
    /// If `clickmode` includes the *select* flag, `hovermode` defaults to *closest*. If `clickmode`
    /// lacks the *select* flag, it defaults to *x* or *y* (depending on the trace's `orientation`
    /// value) for plots based on cartesian coordinates. For anything else the default value is
    /// *closest*.
    ///
    /// # Used By
    /// `Layout.hoverMode` |
    public enum HoverMode: Encodable {
        case x
        case y
        case closest
        case `false`
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .x:
                try container.encode("x")
            case .y:
                try container.encode("y")
            case .closest:
                try container.encode("closest")
            case .`false`:
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-hovermode) |
    /// [Python](https://plot.ly/python/reference/#layout-hovermode) |
    /// [R](https://plot.ly/r/reference/#layout-hovermode)
    public var hoverMode: HoverMode?

    /// Sets the default distance (in pixels) to look for data to add hover labels (-1 means no cutoff, 0 means no looking for data). 
    ///
    /// This is only a real distance for hovering on point-like objects, like scatter points. For
    /// area-like objects (bars, scatter fills, etc) hovering is on inside the area and off outside, but
    /// these objects will not supersede hover on point-like objects in case of conflict.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-hoverdistance) |
    /// [Python](https://plot.ly/python/reference/#layout-hoverdistance) |
    /// [R](https://plot.ly/r/reference/#layout-hoverdistance)
    public var hoverDistance: Int?

    /// Sets the default distance (in pixels) to look for data to draw spikelines to (-1 means no cutoff, 0 means no looking for data). 
    ///
    /// As with hoverdistance, distance does not apply to area-like objects. In addition, some objects
    /// can be hovered on but will not generate spikelines, such as scatter fills.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-spikedistance) |
    /// [Python](https://plot.ly/python/reference/#layout-spikedistance) |
    /// [R](https://plot.ly/r/reference/#layout-spikedistance)
    public var spikeDistance: Int?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#layout-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#layout-hoverlabel)
    public var hoverLabel: Shared.HoverLabel?

    /// When "dragmode" is set to "select", this limits the selection of the drag to horizontal, vertical or diagonal. 
    ///
    /// "h" only allows horizontal selection, "v" only vertical, "d" only diagonal and "any" sets no
    /// limit.
    ///
    /// # Used By
    /// `Layout.selectDirection` |
    public enum SelectDirection: String, Encodable {
        case h
        case v
        case d
        case any
    }
    /// When "dragmode" is set to "select", this limits the selection of the drag to horizontal, vertical or diagonal. 
    ///
    /// "h" only allows horizontal selection, "v" only vertical, "d" only diagonal and "any" sets no
    /// limit.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-selectdirection) |
    /// [Python](https://plot.ly/python/reference/#layout-selectdirection) |
    /// [R](https://plot.ly/r/reference/#layout-selectdirection)
    public var selectDirection: SelectDirection?

    /// # Used By
    /// `Layout.grid` |
    public struct Grid: Encodable {
        /// The number of rows in the grid. 
        ///
        /// If you provide a 2D `subplots` array or a `yaxes` array, its length is used as the default. But
        /// it's also possible to have a different length, if you want to leave a row at the end for
        /// non-cartesian subplots.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-grid-rows) |
        /// [Python](https://plot.ly/python/reference/#layout-grid-rows) |
        /// [R](https://plot.ly/r/reference/#layout-grid-rows)
        public var rows: Int?
    
        /// Is the first row the top or the bottom? Note that columns are always enumerated from left to right.
        ///
        /// # Used By
        /// `Layout.Grid.rowOrder` |
        public enum RowOrder: String, Encodable {
            case topToBottom = "top to bottom"
            case bottomToTop = "bottom to top"
        }
        /// Is the first row the top or the bottom? Note that columns are always enumerated from left to right.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-grid-roworder) |
        /// [Python](https://plot.ly/python/reference/#layout-grid-roworder) |
        /// [R](https://plot.ly/r/reference/#layout-grid-roworder)
        public var rowOrder: RowOrder?
    
        /// The number of columns in the grid. 
        ///
        /// If you provide a 2D `subplots` array, the length of its longest row is used as the default. If
        /// you give an `xaxes` array, its length is used as the default. But it's also possible to have a
        /// different length, if you want to leave a row at the end for non-cartesian subplots.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-grid-columns) |
        /// [Python](https://plot.ly/python/reference/#layout-grid-columns) |
        /// [R](https://plot.ly/r/reference/#layout-grid-columns)
        public var columns: Int?
    
        /// Used for freeform grids, where some axes may be shared across subplots but others are not. 
        ///
        /// Each entry should be a cartesian subplot id, like *xy* or *x3y2*, or ** to leave that cell
        /// empty. You may reuse x axes within the same column, and y axes within the same row.
        /// Non-cartesian subplots and traces that support `domain` can place themselves in this grid
        /// separately using the `gridcell` attribute.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-grid-subplots) |
        /// [Python](https://plot.ly/python/reference/#layout-grid-subplots) |
        /// [R](https://plot.ly/r/reference/#layout-grid-subplots)
        public var subPlots: InfoArray?
    
        /// Used with `yaxes` when the x and y axes are shared across columns and rows. 
        ///
        /// Each entry should be an x axis id like *x*, *x2*, etc., or ** to not put an x axis in that
        /// column. Entries other than ** must be unique. Ignored if `subplots` is present. If missing but
        /// `yaxes` is present, will generate consecutive IDs.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-grid-xaxes) |
        /// [Python](https://plot.ly/python/reference/#layout-grid-xaxes) |
        /// [R](https://plot.ly/r/reference/#layout-grid-xaxes)
        public var xAxes: InfoArray?
    
        /// Used with `yaxes` when the x and y axes are shared across columns and rows. 
        ///
        /// Each entry should be an y axis id like *y*, *y2*, etc., or ** to not put a y axis in that row.
        /// Entries other than ** must be unique. Ignored if `subplots` is present. If missing but `xaxes`
        /// is present, will generate consecutive IDs.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-grid-yaxes) |
        /// [Python](https://plot.ly/python/reference/#layout-grid-yaxes) |
        /// [R](https://plot.ly/r/reference/#layout-grid-yaxes)
        public var yAxes: InfoArray?
    
        /// If no `subplots`, `xaxes`, or `yaxes` are given but we do have `rows` and `columns`, we can generate defaults using consecutive axis IDs, in two ways: *coupled* gives one x axis per column and one y axis per row. 
        ///
        /// *independent* uses a new xy pair for each cell, left-to-right across each row then iterating
        /// rows according to `roworder`.
        ///
        /// # Used By
        /// `Layout.Grid.pattern` |
        public enum Pattern: String, Encodable {
            case independent
            case coupled
        }
        /// If no `subplots`, `xaxes`, or `yaxes` are given but we do have `rows` and `columns`, we can generate defaults using consecutive axis IDs, in two ways: *coupled* gives one x axis per column and one y axis per row. 
        ///
        /// *independent* uses a new xy pair for each cell, left-to-right across each row then iterating
        /// rows according to `roworder`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-grid-pattern) |
        /// [Python](https://plot.ly/python/reference/#layout-grid-pattern) |
        /// [R](https://plot.ly/r/reference/#layout-grid-pattern)
        public var pattern: Pattern?
    
        /// Horizontal space between grid cells, expressed as a fraction of the total width available to one cell. 
        ///
        /// Defaults to 0.1 for coupled-axes grids and 0.2 for independent grids.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-grid-xgap) |
        /// [Python](https://plot.ly/python/reference/#layout-grid-xgap) |
        /// [R](https://plot.ly/r/reference/#layout-grid-xgap)
        public var xGap: Double?
    
        /// Vertical space between grid cells, expressed as a fraction of the total height available to one cell. 
        ///
        /// Defaults to 0.1 for coupled-axes grids and 0.3 for independent grids.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-grid-ygap) |
        /// [Python](https://plot.ly/python/reference/#layout-grid-ygap) |
        /// [R](https://plot.ly/r/reference/#layout-grid-ygap)
        public var yGap: Double?
    
        /// # Used By
        /// `Layout.Grid.domain` |
        public struct Domain: Encodable {
            /// Sets the horizontal domain of this grid subplot (in plot fraction). 
            ///
            /// The first and last cells end exactly at the domain edges, with no grout around the edges.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-grid-domain-x) |
            /// [Python](https://plot.ly/python/reference/#layout-grid-domain-x) |
            /// [R](https://plot.ly/r/reference/#layout-grid-domain-x)
            public var x: InfoArray?
        
            /// Sets the vertical domain of this grid subplot (in plot fraction). 
            ///
            /// The first and last cells end exactly at the domain edges, with no grout around the edges.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-grid-domain-y) |
            /// [Python](https://plot.ly/python/reference/#layout-grid-domain-y) |
            /// [R](https://plot.ly/r/reference/#layout-grid-domain-y)
            public var y: InfoArray?
        
            public init(x: InfoArray? = nil, y: InfoArray? = nil) {
                self.x = x
                self.y = y
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-grid-domain) |
        /// [Python](https://plot.ly/python/reference/#layout-grid-domain) |
        /// [R](https://plot.ly/r/reference/#layout-grid-domain)
        public var domain: Domain?
    
        /// Sets where the x axis labels and titles go. 
        ///
        /// *bottom* means the very bottom of the grid. *bottom plot* is the lowest plot that each x axis is
        /// used in. *top* and *top plot* are similar.
        ///
        /// # Used By
        /// `Layout.Grid.xSide` |
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
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-grid-xside) |
        /// [Python](https://plot.ly/python/reference/#layout-grid-xside) |
        /// [R](https://plot.ly/r/reference/#layout-grid-xside)
        public var xSide: XSide?
    
        /// Sets where the y axis labels and titles go. 
        ///
        /// *left* means the very left edge of the grid. *left plot* is the leftmost plot that each y axis
        /// is used in. *right* and *right plot* are similar.
        ///
        /// # Used By
        /// `Layout.Grid.ySide` |
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
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-grid-yside) |
        /// [Python](https://plot.ly/python/reference/#layout-grid-yside) |
        /// [R](https://plot.ly/r/reference/#layout-grid-yside)
        public var ySide: YSide?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case rows
            case rowOrder = "roworder"
            case columns
            case subPlots = "subplots"
            case xAxes = "xaxes"
            case yAxes = "yaxes"
            case pattern
            case xGap = "xgap"
            case yGap = "ygap"
            case domain
            case xSide = "xside"
            case ySide = "yside"
        }
        
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-grid) |
    /// [Python](https://plot.ly/python/reference/#layout-grid) |
    /// [R](https://plot.ly/r/reference/#layout-grid)
    public var grid: Grid?

    /// Sets the default calendar system to use for interpreting and displaying dates throughout the plot.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-calendar) |
    /// [Python](https://plot.ly/python/reference/#layout-calendar) |
    /// [R](https://plot.ly/r/reference/#layout-calendar)
    public var calendar: Shared.Calendar?

    /// # Used By
    /// `Layout.xAxis` |
    public struct XAxis: Encodable {
        /// A single toggle to hide the axis while preserving interaction like dragging. 
        ///
        /// Default is true when a cheater plot is present on the axis, otherwise false
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-visible) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-visible) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-visible)
        public var visible: Bool?
    
        /// Sets default for all colors associated with this axis all at once: line, font, tick, and grid colors. 
        ///
        /// Grid color is lightened by blending this with the plot background Individual pieces can override
        /// this.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-color) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-color) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-color)
        public var color: Color?
    
        /// # Used By
        /// `Layout.XAxis.title` |
        public struct Title: Encodable {
            /// Sets the title of this axis. 
            ///
            /// Note that before the existence of `title.text`, the title's contents used to be defined as the
            /// `title` attribute itself. This behavior has been deprecated.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-title-text) |
            /// [Python](https://plot.ly/python/reference/#layout-xaxis-title-text) |
            /// [R](https://plot.ly/r/reference/#layout-xaxis-title-text)
            public var text: String?
        
            /// Sets this axis' title font. 
            ///
            /// Note that the title's font used to be customized by the now deprecated `titlefont` attribute.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-title-font) |
            /// [Python](https://plot.ly/python/reference/#layout-xaxis-title-font) |
            /// [R](https://plot.ly/r/reference/#layout-xaxis-title-font)
            public var font: Shared.Font?
        
            /// Sets the standoff distance (in px) between the axis labels and the title text The default value is a function of the axis tick labels, the title `font.size` and the axis `linewidth`. 
            ///
            /// Note that the axis title position is always constrained within the margins, so the actual
            /// standoff distance is always less than the set or default value. By setting `standoff` and
            /// turning on `automargin`, plotly.js will push the margins to fit the axis title at given standoff
            /// distance.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-title-standoff) |
            /// [Python](https://plot.ly/python/reference/#layout-xaxis-title-standoff) |
            /// [R](https://plot.ly/r/reference/#layout-xaxis-title-standoff)
            public var standoff: Double?
        
            public init(text: String? = nil, font: Shared.Font? = nil, standoff: Double? = nil) {
                self.text = text
                self.font = font
                self.standoff = standoff
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-title) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-title) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-title)
        public var title: Title?
    
        /// Sets the axis type. 
        ///
        /// By default, plotly attempts to determined the axis type by looking into the data of the traces
        /// that referenced the axis in question.
        ///
        /// # Used By
        /// `Layout.XAxis.type` |
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
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-type) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-type) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-type)
        public var type: `Type`?
    
        /// Determines whether or not the range of this axis is computed in relation to the input data. 
        ///
        /// See `rangemode` for more info. If `range` is provided, then `autorange` is set to *false*.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-autorange) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-autorange) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-autorange)
        public var autoRange: Shared.AutoRange?
    
        /// If *normal*, the range is computed in relation to the extrema of the input data. 
        ///
        /// If *tozero*`, the range extends to 0, regardless of the input data If *nonnegative*, the range
        /// is non-negative, regardless of the input data. Applies only to linear axes.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-rangemode) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-rangemode) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-rangemode)
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
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-range) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-range) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-range)
        public var range: InfoArray?
    
        /// Determines whether or not this axis is zoom-able. 
        ///
        /// If true, then zoom is disabled.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-fixedrange) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-fixedrange) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-fixedrange)
        public var fixedRange: Bool?
    
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
        ///
        /// # Used By
        /// `Layout.XAxis.scaleAnchor` |
        public enum ScaleAnchor: String, Encodable {
            case xSubPlotID = "/^x([2-9]|[1-9][0-9]+)?$/"
            case ySubPlotID = "/^y([2-9]|[1-9][0-9]+)?$/"
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
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-scaleanchor) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-scaleanchor) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-scaleanchor)
        public var scaleAnchor: ScaleAnchor?
    
        /// If this axis is linked to another by `scaleanchor`, this determines the pixel to unit scale ratio. 
        ///
        /// For example, if this value is 10, then every unit on this axis spans 10 times the number of
        /// pixels as a unit on the linked axis. Use this for example to create an elevation profile where
        /// the vertical scale is exaggerated a fixed amount with respect to the horizontal.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-scaleratio) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-scaleratio) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-scaleratio)
        public var scaleRatio: Double?
    
        /// If this axis needs to be compressed (either due to its own `scaleanchor` and `scaleratio` or those of the other axis), determines how that happens: by increasing the *range* (default), or by decreasing the *domain*.
        ///
        /// # Used By
        /// `Layout.XAxis.constrain` |
        public enum Constrain: String, Encodable {
            case range
            case domain
        }
        /// If this axis needs to be compressed (either due to its own `scaleanchor` and `scaleratio` or those of the other axis), determines how that happens: by increasing the *range* (default), or by decreasing the *domain*.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-constrain) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-constrain) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-constrain)
        public var constrain: Constrain?
    
        /// If this axis needs to be compressed (either due to its own `scaleanchor` and `scaleratio` or those of the other axis), determines which direction we push the originally specified plot area. 
        ///
        /// Options are *left*, *center* (default), and *right* for x axes, and *top*, *middle* (default),
        /// and *bottom* for y axes.
        ///
        /// # Used By
        /// `Layout.XAxis.constrainToward` |
        public enum ConstrainToward: String, Encodable {
            case left
            case center
            case right
            case top
            case middle
            case bottom
        }
        /// If this axis needs to be compressed (either due to its own `scaleanchor` and `scaleratio` or those of the other axis), determines which direction we push the originally specified plot area. 
        ///
        /// Options are *left*, *center* (default), and *right* for x axes, and *top*, *middle* (default),
        /// and *bottom* for y axes.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-constraintoward) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-constraintoward) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-constraintoward)
        public var constrainToward: ConstrainToward?
    
        /// If set to another axis id (e.g. 
        ///
        /// `x2`, `y`), the range of this axis will match the range of the corresponding axis in
        /// data-coordinates space. Moreover, matching axes share auto-range values, category lists and
        /// histogram auto-bins. Note that setting axes simultaneously in both a `scaleanchor` and a
        /// `matches` constraint is currently forbidden. Moreover, note that matching axes must have the
        /// same `type`.
        ///
        /// # Used By
        /// `Layout.XAxis.matches` |
        public enum Matches: String, Encodable {
            case xSubPlotID = "/^x([2-9]|[1-9][0-9]+)?$/"
            case ySubPlotID = "/^y([2-9]|[1-9][0-9]+)?$/"
        }
        /// If set to another axis id (e.g. 
        ///
        /// `x2`, `y`), the range of this axis will match the range of the corresponding axis in
        /// data-coordinates space. Moreover, matching axes share auto-range values, category lists and
        /// histogram auto-bins. Note that setting axes simultaneously in both a `scaleanchor` and a
        /// `matches` constraint is currently forbidden. Moreover, note that matching axes must have the
        /// same `type`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-matches) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-matches) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-matches)
        public var matches: Matches?
    
        /// Sets the tick mode for this axis. 
        ///
        /// If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is
        /// determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value
        /// if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via
        /// `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is
        /// provided).
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-tickmode) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-tickmode) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-tickmode)
        public var tickMode: Shared.TickMode?
    
        /// Specifies the maximum number of ticks for the particular axis. 
        ///
        /// The actual number of ticks will be chosen automatically to be less than or equal to `nticks`.
        /// Has an effect only if `tickmode` is set to *auto*.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-nticks) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-nticks) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-nticks)
        public var numTicks: Int?
    
        /// Sets the placement of the first tick on this axis. 
        ///
        /// Use with `dtick`. If the axis `type` is *log*, then you must take the log of your starting tick
        /// (e.g. to set the starting tick to 100, set the `tick0` to 2) except when `dtick`=*L<f>* (see
        /// `dtick` for more info). If the axis `type` is *date*, it should be a date string, like date
        /// data. If the axis `type` is *category*, it should be a number, using the scale where each
        /// category is assigned a serial number from zero in the order it appears.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-tick0) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-tick0) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-tick0)
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
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-dtick) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-dtick) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-dtick)
        public var dTick: Anything?
    
        /// Sets the values at which ticks on this axis appear. 
        ///
        /// Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-tickvals) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-tickvals) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-tickvals)
        public var tickValues: [Double]?
    
        /// Sets the text displayed at the ticks position via `tickvals`. 
        ///
        /// Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-ticktext) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-ticktext) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-ticktext)
        public var tickText: [Double]?
    
        /// Determines whether ticks are drawn or not. 
        ///
        /// If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside
        /// (inside) the axis lines.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-ticks) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-ticks) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-ticks)
        public var ticks: Shared.Ticks?
    
        /// Determines where ticks and grid lines are drawn with respect to their corresponding tick labels. 
        ///
        /// Only has an effect for axes of `type` *category* or *multicategory*. When set to *boundaries*,
        /// ticks and grid lines are drawn half a category to the left/bottom of labels.
        ///
        /// # Used By
        /// `Layout.XAxis.ticksOn` |
        public enum TicksOn: String, Encodable {
            case labels
            case boundaries
        }
        /// Determines where ticks and grid lines are drawn with respect to their corresponding tick labels. 
        ///
        /// Only has an effect for axes of `type` *category* or *multicategory*. When set to *boundaries*,
        /// ticks and grid lines are drawn half a category to the left/bottom of labels.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-tickson) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-tickson) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-tickson)
        public var ticksOn: TicksOn?
    
        /// Determines if the axis lines or/and ticks are mirrored to the opposite side of the plotting area. 
        ///
        /// If *true*, the axis lines are mirrored. If *ticks*, the axis lines and ticks are mirrored. If
        /// *false*, mirroring is disable. If *all*, axis lines are mirrored on all shared-axes subplots. If
        /// *allticks*, axis lines and ticks are mirrored on all shared-axes subplots.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-mirror) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-mirror) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-mirror)
        public var mirror: Shared.Mirror?
    
        /// Sets the tick length (in px).
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-ticklen) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-ticklen) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-ticklen)
        public var tickLength: Double?
    
        /// Sets the tick width (in px).
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-tickwidth) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-tickwidth) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-tickwidth)
        public var tickWidth: Double?
    
        /// Sets the tick color.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-tickcolor) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-tickcolor) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-tickcolor)
        public var tickColor: Color?
    
        /// Determines whether or not the tick labels are drawn.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-showticklabels) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-showticklabels) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-showticklabels)
        public var showTickLabels: Bool?
    
        /// Determines whether long tick labels automatically grow the figure margins.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-automargin) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-automargin) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-automargin)
        public var autoMargin: Bool?
    
        /// Determines whether or not spikes (aka droplines) are drawn for this axis. 
        ///
        /// Note: This only takes affect when hovermode = closest
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-showspikes) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-showspikes) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-showspikes)
        public var showSpikes: Bool?
    
        /// Sets the spike color. 
        ///
        /// If undefined, will use the series color
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-spikecolor) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-spikecolor) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-spikecolor)
        public var spikeColor: Color?
    
        /// Sets the width (in px) of the zero line.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-spikethickness) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-spikethickness) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-spikethickness)
        public var spikeThickness: Double?
    
        /// Sets the dash style of lines. 
        ///
        /// Set to a dash type string (*solid*, *dot*, *dash*, *longdash*, *dashdot*, or *longdashdot*) or a
        /// dash length list in px (eg *5px,10px,2px,2px*).
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-spikedash) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-spikedash) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-spikedash)
        public var spikeDash: String?
    
        /// Determines the drawing mode for the spike line If *toaxis*, the line is drawn from the data point to the axis the  series is plotted on. 
        ///
        /// If *across*, the line is drawn across the entire plot area, and supercedes *toaxis*. If
        /// *marker*, then a marker dot is drawn on the axis the series is plotted on
        ///
        /// # Used By
        /// `Layout.XAxis.spikeMode` |
        public struct SpikeMode: OptionSet, Encodable {
            public let rawValue: Int
        
            public static var toAxis: SpikeMode { SpikeMode(rawValue: 1 << 0) }
            public static var across: SpikeMode { SpikeMode(rawValue: 1 << 1) }
            public static var marker: SpikeMode { SpikeMode(rawValue: 1 << 2) }
        
            public init(rawValue: Int) { self.rawValue = rawValue }
        
            public func encode(to encoder: Encoder) throws {
                var options = [String]()
                if (self.rawValue & 1 << 0) != 0 { options += ["toaxis"] }
                if (self.rawValue & 1 << 1) != 0 { options += ["across"] }
                if (self.rawValue & 1 << 2) != 0 { options += ["marker"] }
                var container = encoder.singleValueContainer()
                try container.encode(options.joined(separator: "+"))
            }
        }
        /// Determines the drawing mode for the spike line If *toaxis*, the line is drawn from the data point to the axis the  series is plotted on. 
        ///
        /// If *across*, the line is drawn across the entire plot area, and supercedes *toaxis*. If
        /// *marker*, then a marker dot is drawn on the axis the series is plotted on
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-spikemode) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-spikemode) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-spikemode)
        public var spikeMode: SpikeMode?
    
        /// Determines whether spikelines are stuck to the cursor or to the closest datapoints.
        ///
        /// # Used By
        /// `Layout.XAxis.spikeSnap` |
        public enum SpikeSnap: String, Encodable {
            case data
            case cursor
        }
        /// Determines whether spikelines are stuck to the cursor or to the closest datapoints.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-spikesnap) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-spikesnap) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-spikesnap)
        public var spikeSnap: SpikeSnap?
    
        /// Sets the tick font.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-tickfont) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-tickfont) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-tickfont)
        public var tickFont: Shared.Font?
    
        /// Sets the angle of the tick labels with respect to the horizontal. 
        ///
        /// For example, a `tickangle` of -90 draws the tick labels vertically.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-tickangle) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-tickangle) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-tickangle)
        public var tickAngle: Angle?
    
        /// Sets a tick label prefix.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-tickprefix) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-tickprefix) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-tickprefix)
        public var tickPrefix: String?
    
        /// If *all*, all tick labels are displayed with a prefix. 
        ///
        /// If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is
        /// displayed with a suffix. If *none*, tick prefixes are hidden.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-showtickprefix) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-showtickprefix) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-showtickprefix)
        public var showTickPrefix: Shared.ShowTickPrefix?
    
        /// Sets a tick label suffix.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-ticksuffix) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-ticksuffix) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-ticksuffix)
        public var tickSuffix: String?
    
        /// Same as `showtickprefix` but for tick suffixes.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-showticksuffix) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-showticksuffix) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-showticksuffix)
        public var showTickSuffix: Shared.ShowTickSuffix?
    
        /// If *all*, all exponents are shown besides their significands. 
        ///
        /// If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the
        /// last tick is shown. If *none*, no exponents appear.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-showexponent) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-showexponent) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-showexponent)
        public var showExponent: Shared.ShowExponent?
    
        /// Determines a formatting rule for the tick exponents. 
        ///
        /// For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*,
        /// 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-exponentformat) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-exponentformat) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-exponentformat)
        public var exponentFormat: Shared.ExponentFormat?
    
        /// If "true", even 4-digit integers are separated
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-separatethousands) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-separatethousands) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-separatethousands)
        public var separatethousands: Bool?
    
        /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to those in Python. 
        ///
        /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
        /// And for dates see:
        /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
        /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
        /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-tickformat) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-tickformat) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-tickformat)
        public var tickFormat: String?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-tickformatstops) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-tickformatstops) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-tickformatstops)
        public var tickFormatStops: [Shared.TickFormatStop]?
    
        /// Sets the hover text formatting rule using d3 formatting mini-languages which are very similar to those in Python. 
        ///
        /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
        /// And for dates see:
        /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
        /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
        /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-hoverformat) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-hoverformat) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-hoverformat)
        public var hoverFormat: String?
    
        /// Determines whether or not a line bounding this axis is drawn.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-showline) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-showline) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-showline)
        public var showLine: Bool?
    
        /// Sets the axis line color.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-linecolor) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-linecolor) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-linecolor)
        public var lineColor: Color?
    
        /// Sets the width (in px) of the axis line.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-linewidth) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-linewidth) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-linewidth)
        public var lineWidth: Double?
    
        /// Determines whether or not grid lines are drawn. 
        ///
        /// If *true*, the grid lines are drawn at every tick mark.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-showgrid) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-showgrid) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-showgrid)
        public var showGrid: Bool?
    
        /// Sets the color of the grid lines.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-gridcolor) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-gridcolor) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-gridcolor)
        public var gridColor: Color?
    
        /// Sets the width (in px) of the grid lines.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-gridwidth) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-gridwidth) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-gridwidth)
        public var gridWidth: Double?
    
        /// Determines whether or not a line is drawn at along the 0 value of this axis. 
        ///
        /// If *true*, the zero line is drawn on top of the grid lines.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-zeroline) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-zeroline) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-zeroline)
        public var zeroLine: Bool?
    
        /// Sets the line color of the zero line.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-zerolinecolor) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-zerolinecolor) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-zerolinecolor)
        public var zeroLineColor: Color?
    
        /// Sets the width (in px) of the zero line.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-zerolinewidth) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-zerolinewidth) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-zerolinewidth)
        public var zeroLineWidth: Double?
    
        /// Determines whether or not a dividers are drawn between the category levels of this axis. 
        ///
        /// Only has an effect on *multicategory* axes.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-showdividers) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-showdividers) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-showdividers)
        public var showDividers: Bool?
    
        /// Sets the color of the dividers Only has an effect on *multicategory* axes.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-dividercolor) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-dividercolor) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-dividercolor)
        public var dividerColor: Color?
    
        /// Sets the width (in px) of the dividers Only has an effect on *multicategory* axes.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-dividerwidth) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-dividerwidth) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-dividerwidth)
        public var dividerWidth: Double?
    
        /// If set to an opposite-letter axis id (e.g. 
        ///
        /// `x2`, `y`), this axis is bound to the corresponding opposite-letter axis. If set to *free*, this
        /// axis' position is determined by `position`.
        ///
        /// # Used By
        /// `Layout.XAxis.anchor` |
        public enum Anchor: String, Encodable {
            case free
            case xSubPlotID = "/^x([2-9]|[1-9][0-9]+)?$/"
            case ySubPlotID = "/^y([2-9]|[1-9][0-9]+)?$/"
        }
        /// If set to an opposite-letter axis id (e.g. 
        ///
        /// `x2`, `y`), this axis is bound to the corresponding opposite-letter axis. If set to *free*, this
        /// axis' position is determined by `position`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-anchor) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-anchor) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-anchor)
        public var anchor: Anchor?
    
        /// Determines whether a x (y) axis is positioned at the *bottom* (*left*) or *top* (*right*) of the plotting area.
        ///
        /// # Used By
        /// `Layout.XAxis.side` |
        public enum Side: String, Encodable {
            case top
            case bottom
            case left
            case right
        }
        /// Determines whether a x (y) axis is positioned at the *bottom* (*left*) or *top* (*right*) of the plotting area.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-side) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-side) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-side)
        public var side: Side?
    
        /// If set a same-letter axis id, this axis is overlaid on top of the corresponding same-letter axis, with traces and axes visible for both axes. 
        ///
        /// If *false*, this axis does not overlay any same-letter axes. In this case, for axes with
        /// overlapping domains only the highest-numbered axis will be visible.
        ///
        /// # Used By
        /// `Layout.XAxis.overlaying` |
        public enum Overlaying: String, Encodable {
            case free
            case xSubPlotID = "/^x([2-9]|[1-9][0-9]+)?$/"
            case ySubPlotID = "/^y([2-9]|[1-9][0-9]+)?$/"
        }
        /// If set a same-letter axis id, this axis is overlaid on top of the corresponding same-letter axis, with traces and axes visible for both axes. 
        ///
        /// If *false*, this axis does not overlay any same-letter axes. In this case, for axes with
        /// overlapping domains only the highest-numbered axis will be visible.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-overlaying) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-overlaying) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-overlaying)
        public var overlaying: Overlaying?
    
        /// Sets the layer on which this axis is displayed. 
        ///
        /// If *above traces*, this axis is displayed above all the subplot's traces If *below traces*, this
        /// axis is displayed below all the subplot's traces, but above the grid lines. Useful when used
        /// together with scatter-like traces with `cliponaxis` set to *false* to show markers and/or text
        /// nodes above this axis.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-layer) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-layer) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-layer)
        public var layer: Shared.Layer?
    
        /// Sets the domain of this axis (in plot fraction).
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-domain) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-domain) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-domain)
        public var domain: InfoArray?
    
        /// Sets the position of this axis in the plotting space (in normalized coordinates). 
        ///
        /// Only has an effect if `anchor` is set to *free*.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-position) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-position) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-position)
        public var position: Double?
    
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
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-categoryorder) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-categoryorder) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-categoryorder)
        public var categoryOrder: Shared.CategoryOrder?
    
        /// Sets the order in which categories on this axis appear. 
        ///
        /// Only has an effect if `categoryorder` is set to *array*. Used with `categoryorder`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-categoryarray) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-categoryarray) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-categoryarray)
        public var categoryArray: [Double]?
    
        /// Controls persistence of user-driven changes in axis `range`, `autorange`, and `title` if in `editable: true` configuration. 
        ///
        /// Defaults to `layout.uirevision`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-uirevision) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-uirevision) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-uirevision)
        public var uiRevision: Anything?
    
        /// # Used By
        /// `Layout.XAxis.rangeSlider` |
        public struct RangeSlider: Encodable {
            /// Sets the background color of the range slider.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-rangeslider-bgcolor) |
            /// [Python](https://plot.ly/python/reference/#layout-xaxis-rangeslider-bgcolor) |
            /// [R](https://plot.ly/r/reference/#layout-xaxis-rangeslider-bgcolor)
            public var backgroundColor: Color?
        
            /// Sets the border color of the range slider.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-rangeslider-bordercolor) |
            /// [Python](https://plot.ly/python/reference/#layout-xaxis-rangeslider-bordercolor) |
            /// [R](https://plot.ly/r/reference/#layout-xaxis-rangeslider-bordercolor)
            public var borderColor: Color?
        
            /// Sets the border width of the range slider.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-rangeslider-borderwidth) |
            /// [Python](https://plot.ly/python/reference/#layout-xaxis-rangeslider-borderwidth) |
            /// [R](https://plot.ly/r/reference/#layout-xaxis-rangeslider-borderwidth)
            public var borderWidth: Int?
        
            /// Determines whether or not the range slider range is computed in relation to the input data. 
            ///
            /// If `range` is provided, then `autorange` is set to *false*.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-rangeslider-autorange) |
            /// [Python](https://plot.ly/python/reference/#layout-xaxis-rangeslider-autorange) |
            /// [R](https://plot.ly/r/reference/#layout-xaxis-rangeslider-autorange)
            public var autoRange: Bool?
        
            /// Sets the range of the range slider. 
            ///
            /// If not set, defaults to the full xaxis range. If the axis `type` is *log*, then you must take
            /// the log of your desired range. If the axis `type` is *date*, it should be date strings, like
            /// date data, though Date objects and unix milliseconds will be accepted and converted to strings.
            /// If the axis `type` is *category*, it should be numbers, using the scale where each category is
            /// assigned a serial number from zero in the order it appears.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-rangeslider-range) |
            /// [Python](https://plot.ly/python/reference/#layout-xaxis-rangeslider-range) |
            /// [R](https://plot.ly/r/reference/#layout-xaxis-rangeslider-range)
            public var range: InfoArray?
        
            /// The height of the range slider as a fraction of the total plot area height.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-rangeslider-thickness) |
            /// [Python](https://plot.ly/python/reference/#layout-xaxis-rangeslider-thickness) |
            /// [R](https://plot.ly/r/reference/#layout-xaxis-rangeslider-thickness)
            public var thickness: Double?
        
            /// Determines whether or not the range slider will be visible. 
            ///
            /// If visible, perpendicular axes will be set to `fixedrange`
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-rangeslider-visible) |
            /// [Python](https://plot.ly/python/reference/#layout-xaxis-rangeslider-visible) |
            /// [R](https://plot.ly/r/reference/#layout-xaxis-rangeslider-visible)
            public var visible: Bool?
        
            /// # Used By
            /// `Layout.XAxis.RangeSlider.yAxis` |
            public struct YAxis: Encodable {
                /// Determines whether or not the range of this axis in the rangeslider use the same value than in the main plot when zooming in/out. 
                ///
                /// If *auto*, the autorange will be used. If *fixed*, the `range` is used. If *match*, the current
                /// range of the corresponding y-axis on the main subplot is used.
                ///
                /// # Used By
                /// `Layout.XAxis.RangeSlider.YAxis.rangeMode` |
                public enum RangeMode: String, Encodable {
                    case auto
                    case fixed
                    case match
                }
                /// Determines whether or not the range of this axis in the rangeslider use the same value than in the main plot when zooming in/out. 
                ///
                /// If *auto*, the autorange will be used. If *fixed*, the `range` is used. If *match*, the current
                /// range of the corresponding y-axis on the main subplot is used.
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-rangeslider-yaxis-rangemode) |
                /// [Python](https://plot.ly/python/reference/#layout-xaxis-rangeslider-yaxis-rangemode) |
                /// [R](https://plot.ly/r/reference/#layout-xaxis-rangeslider-yaxis-rangemode)
                public var rangeMode: RangeMode?
            
                /// Sets the range of this axis for the rangeslider.
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-rangeslider-yaxis-range) |
                /// [Python](https://plot.ly/python/reference/#layout-xaxis-rangeslider-yaxis-range) |
                /// [R](https://plot.ly/r/reference/#layout-xaxis-rangeslider-yaxis-range)
                public var range: InfoArray?
            
                /// Plotly compatible property encoding
                enum CodingKeys: String, CodingKey {
                    case rangeMode = "rangemode"
                    case range
                }
                
                public init(rangeMode: RangeMode? = nil, range: InfoArray? = nil) {
                    self.rangeMode = rangeMode
                    self.range = range
                }
            }
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-rangeslider-yaxis) |
            /// [Python](https://plot.ly/python/reference/#layout-xaxis-rangeslider-yaxis) |
            /// [R](https://plot.ly/r/reference/#layout-xaxis-rangeslider-yaxis)
            public var yAxis: YAxis?
        
            /// Plotly compatible property encoding
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
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-rangeslider) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-rangeslider) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-rangeslider)
        public var rangeSlider: RangeSlider?
    
        /// # Used By
        /// `Layout.XAxis.rangeSelector` |
        public struct RangeSelector: Encodable {
            /// Determines whether or not this range selector is visible. 
            ///
            /// Note that range selectors are only available for x axes of `type` set to or auto-typed to
            /// *date*.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-rangeselector-visible) |
            /// [Python](https://plot.ly/python/reference/#layout-xaxis-rangeselector-visible) |
            /// [R](https://plot.ly/r/reference/#layout-xaxis-rangeselector-visible)
            public var visible: Bool?
        
            /// Sets the specifications for each buttons. 
            ///
            /// By default, a range selector comes with no buttons.
            ///
            /// # Used By
            /// `Layout.XAxis.RangeSelector.buttons` |
            public struct Button: Encodable {
                /// Determines whether or not this button is visible.
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-rangeselector-buttons-items-button-visible) |
                /// [Python](https://plot.ly/python/reference/#layout-xaxis-rangeselector-buttons-items-button-visible) |
                /// [R](https://plot.ly/r/reference/#layout-xaxis-rangeselector-buttons-items-button-visible)
                public var visible: Bool?
            
                /// The unit of measurement that the `count` value will set the range by.
                ///
                /// # Used By
                /// `Layout.XAxis.RangeSelector.Button.step` |
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
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-rangeselector-buttons-items-button-step) |
                /// [Python](https://plot.ly/python/reference/#layout-xaxis-rangeselector-buttons-items-button-step) |
                /// [R](https://plot.ly/r/reference/#layout-xaxis-rangeselector-buttons-items-button-step)
                public var step: Step?
            
                /// Sets the range update mode. 
                ///
                /// If *backward*, the range update shifts the start of range back *count* times *step*
                /// milliseconds. If *todate*, the range update shifts the start of range back to the first
                /// timestamp from *count* times *step* milliseconds back. For example, with `step` set to *year*
                /// and `count` set to *1* the range update shifts the start of the range back to January 01 of the
                /// current year. Month and year *todate* are currently available only for the built-in (Gregorian)
                /// calendar.
                ///
                /// # Used By
                /// `Layout.XAxis.RangeSelector.Button.stepMode` |
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
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-rangeselector-buttons-items-button-stepmode) |
                /// [Python](https://plot.ly/python/reference/#layout-xaxis-rangeselector-buttons-items-button-stepmode) |
                /// [R](https://plot.ly/r/reference/#layout-xaxis-rangeselector-buttons-items-button-stepmode)
                public var stepMode: StepMode?
            
                /// Sets the number of steps to take to update the range. 
                ///
                /// Use with `step` to specify the update interval.
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-rangeselector-buttons-items-button-count) |
                /// [Python](https://plot.ly/python/reference/#layout-xaxis-rangeselector-buttons-items-button-count) |
                /// [R](https://plot.ly/r/reference/#layout-xaxis-rangeselector-buttons-items-button-count)
                public var count: Double?
            
                /// Sets the text label to appear on the button.
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-rangeselector-buttons-items-button-label) |
                /// [Python](https://plot.ly/python/reference/#layout-xaxis-rangeselector-buttons-items-button-label) |
                /// [R](https://plot.ly/r/reference/#layout-xaxis-rangeselector-buttons-items-button-label)
                public var label: String?
            
                /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. 
                ///
                /// You can modify these items in the output figure by making your own item with `templateitemname`
                /// matching this `name` alongside your modifications (including `visible: false` or `enabled:
                /// false` to hide it). Has no effect outside of a template.
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-rangeselector-buttons-items-button-name) |
                /// [Python](https://plot.ly/python/reference/#layout-xaxis-rangeselector-buttons-items-button-name) |
                /// [R](https://plot.ly/r/reference/#layout-xaxis-rangeselector-buttons-items-button-name)
                public var name: String?
            
                /// Used to refer to a named item in this array in the template. 
                ///
                /// Named items from the template will be created even without a matching item in the input figure,
                /// but you can modify one by making an item with `templateitemname` matching its `name`, alongside
                /// your modifications (including `visible: false` or `enabled: false` to hide it). If there is no
                /// template or no matching item, this item will be hidden unless you explicitly show it with
                /// `visible: true`.
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-rangeselector-buttons-items-button-templateitemname) |
                /// [Python](https://plot.ly/python/reference/#layout-xaxis-rangeselector-buttons-items-button-templateitemname) |
                /// [R](https://plot.ly/r/reference/#layout-xaxis-rangeselector-buttons-items-button-templateitemname)
                public var templateItemName: String?
            
                /// Plotly compatible property encoding
                enum CodingKeys: String, CodingKey {
                    case visible
                    case step
                    case stepMode = "stepmode"
                    case count
                    case label
                    case name
                    case templateItemName = "templateitemname"
                }
                
                public init(visible: Bool? = nil, step: Step? = nil, stepMode: StepMode? = nil, count: Double? = nil, label: String? = nil, name: String? = nil, templateItemName: String? = nil) {
                    self.visible = visible
                    self.step = step
                    self.stepMode = stepMode
                    self.count = count
                    self.label = label
                    self.name = name
                    self.templateItemName = templateItemName
                }
            }
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-rangeselector-buttons) |
            /// [Python](https://plot.ly/python/reference/#layout-xaxis-rangeselector-buttons) |
            /// [R](https://plot.ly/r/reference/#layout-xaxis-rangeselector-buttons)
            public var buttons: [Button]?
        
            /// Sets the x position (in normalized coordinates) of the range selector.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-rangeselector-x) |
            /// [Python](https://plot.ly/python/reference/#layout-xaxis-rangeselector-x) |
            /// [R](https://plot.ly/r/reference/#layout-xaxis-rangeselector-x)
            public var x: Double?
        
            /// Sets the range selector's horizontal position anchor. 
            ///
            /// This anchor binds the `x` position to the *left*, *center* or *right* of the range selector.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-rangeselector-xanchor) |
            /// [Python](https://plot.ly/python/reference/#layout-xaxis-rangeselector-xanchor) |
            /// [R](https://plot.ly/r/reference/#layout-xaxis-rangeselector-xanchor)
            public var xAnchor: Shared.XAutoAnchor?
        
            /// Sets the y position (in normalized coordinates) of the range selector.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-rangeselector-y) |
            /// [Python](https://plot.ly/python/reference/#layout-xaxis-rangeselector-y) |
            /// [R](https://plot.ly/r/reference/#layout-xaxis-rangeselector-y)
            public var y: Double?
        
            /// Sets the range selector's vertical position anchor This anchor binds the `y` position to the *top*, *middle* or *bottom* of the range selector.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-rangeselector-yanchor) |
            /// [Python](https://plot.ly/python/reference/#layout-xaxis-rangeselector-yanchor) |
            /// [R](https://plot.ly/r/reference/#layout-xaxis-rangeselector-yanchor)
            public var yAnchor: Shared.YAutoAnchor?
        
            /// Sets the font of the range selector button text.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-rangeselector-font) |
            /// [Python](https://plot.ly/python/reference/#layout-xaxis-rangeselector-font) |
            /// [R](https://plot.ly/r/reference/#layout-xaxis-rangeselector-font)
            public var font: Shared.Font?
        
            /// Sets the background color of the range selector buttons.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-rangeselector-bgcolor) |
            /// [Python](https://plot.ly/python/reference/#layout-xaxis-rangeselector-bgcolor) |
            /// [R](https://plot.ly/r/reference/#layout-xaxis-rangeselector-bgcolor)
            public var backgroundColor: Color?
        
            /// Sets the background color of the active range selector button.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-rangeselector-activecolor) |
            /// [Python](https://plot.ly/python/reference/#layout-xaxis-rangeselector-activecolor) |
            /// [R](https://plot.ly/r/reference/#layout-xaxis-rangeselector-activecolor)
            public var activeColor: Color?
        
            /// Sets the color of the border enclosing the range selector.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-rangeselector-bordercolor) |
            /// [Python](https://plot.ly/python/reference/#layout-xaxis-rangeselector-bordercolor) |
            /// [R](https://plot.ly/r/reference/#layout-xaxis-rangeselector-bordercolor)
            public var borderColor: Color?
        
            /// Sets the width (in px) of the border enclosing the range selector.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-rangeselector-borderwidth) |
            /// [Python](https://plot.ly/python/reference/#layout-xaxis-rangeselector-borderwidth) |
            /// [R](https://plot.ly/r/reference/#layout-xaxis-rangeselector-borderwidth)
            public var borderWidth: Double?
        
            /// Plotly compatible property encoding
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
            
            public init(visible: Bool? = nil, buttons: [Button]? = nil, x: Double? = nil, xAnchor: Shared.XAutoAnchor? = nil, y: Double? = nil, yAnchor: Shared.YAutoAnchor? = nil, font: Shared.Font? = nil, backgroundColor: Color? = nil, activeColor: Color? = nil, borderColor: Color? = nil, borderWidth: Double? = nil) {
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
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-rangeselector) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-rangeselector) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-rangeselector)
        public var rangeSelector: RangeSelector?
    
        /// Sets the calendar system to use for `range` and `tick0` if this is a date axis. 
        ///
        /// This does not set the calendar for interpreting data on this axis, that's specified in the trace
        /// or via the global `layout.calendar`
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-calendar) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-calendar) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-calendar)
        public var calendar: Shared.Calendar?
    
        /// Plotly compatible property encoding
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
            case separatethousands
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
        
        public init(visible: Bool? = nil, color: Color? = nil, title: Title? = nil, type: `Type`? = nil, autoRange: Shared.AutoRange? = nil, rangeMode: Shared.RangeMode? = nil, range: InfoArray? = nil, fixedRange: Bool? = nil, scaleAnchor: ScaleAnchor? = nil, scaleRatio: Double? = nil, constrain: Constrain? = nil, constrainToward: ConstrainToward? = nil, matches: Matches? = nil, tickMode: Shared.TickMode? = nil, numTicks: Int? = nil, tick0: Anything? = nil, dTick: Anything? = nil, tickValues: [Double]? = nil, tickText: [Double]? = nil, ticks: Shared.Ticks? = nil, ticksOn: TicksOn? = nil, mirror: Shared.Mirror? = nil, tickLength: Double? = nil, tickWidth: Double? = nil, tickColor: Color? = nil, showTickLabels: Bool? = nil, autoMargin: Bool? = nil, showSpikes: Bool? = nil, spikeColor: Color? = nil, spikeThickness: Double? = nil, spikeDash: String? = nil, spikeMode: SpikeMode? = nil, spikeSnap: SpikeSnap? = nil, tickFont: Shared.Font? = nil, tickAngle: Angle? = nil, tickPrefix: String? = nil, showTickPrefix: Shared.ShowTickPrefix? = nil, tickSuffix: String? = nil, showTickSuffix: Shared.ShowTickSuffix? = nil, showExponent: Shared.ShowExponent? = nil, exponentFormat: Shared.ExponentFormat? = nil, separatethousands: Bool? = nil, tickFormat: String? = nil, tickFormatStops: [Shared.TickFormatStop]? = nil, hoverFormat: String? = nil, showLine: Bool? = nil, lineColor: Color? = nil, lineWidth: Double? = nil, showGrid: Bool? = nil, gridColor: Color? = nil, gridWidth: Double? = nil, zeroLine: Bool? = nil, zeroLineColor: Color? = nil, zeroLineWidth: Double? = nil, showDividers: Bool? = nil, dividerColor: Color? = nil, dividerWidth: Double? = nil, anchor: Anchor? = nil, side: Side? = nil, overlaying: Overlaying? = nil, layer: Shared.Layer? = nil, domain: InfoArray? = nil, position: Double? = nil, categoryOrder: Shared.CategoryOrder? = nil, categoryArray: [Double]? = nil, uiRevision: Anything? = nil, rangeSlider: RangeSlider? = nil, rangeSelector: RangeSelector? = nil, calendar: Shared.Calendar? = nil) {
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
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis) |
    /// [Python](https://plot.ly/python/reference/#layout-xaxis) |
    /// [R](https://plot.ly/r/reference/#layout-xaxis)
    public var xAxis: XAxis?

    /// # Used By
    /// `Layout.yAxis` |
    public struct YAxis: Encodable {
        /// A single toggle to hide the axis while preserving interaction like dragging. 
        ///
        /// Default is true when a cheater plot is present on the axis, otherwise false
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-visible) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-visible) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-visible)
        public var visible: Bool?
    
        /// Sets default for all colors associated with this axis all at once: line, font, tick, and grid colors. 
        ///
        /// Grid color is lightened by blending this with the plot background Individual pieces can override
        /// this.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-color) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-color) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-color)
        public var color: Color?
    
        /// # Used By
        /// `Layout.YAxis.title` |
        public struct Title: Encodable {
            /// Sets the title of this axis. 
            ///
            /// Note that before the existence of `title.text`, the title's contents used to be defined as the
            /// `title` attribute itself. This behavior has been deprecated.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-title-text) |
            /// [Python](https://plot.ly/python/reference/#layout-yaxis-title-text) |
            /// [R](https://plot.ly/r/reference/#layout-yaxis-title-text)
            public var text: String?
        
            /// Sets this axis' title font. 
            ///
            /// Note that the title's font used to be customized by the now deprecated `titlefont` attribute.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-title-font) |
            /// [Python](https://plot.ly/python/reference/#layout-yaxis-title-font) |
            /// [R](https://plot.ly/r/reference/#layout-yaxis-title-font)
            public var font: Shared.Font?
        
            /// Sets the standoff distance (in px) between the axis labels and the title text The default value is a function of the axis tick labels, the title `font.size` and the axis `linewidth`. 
            ///
            /// Note that the axis title position is always constrained within the margins, so the actual
            /// standoff distance is always less than the set or default value. By setting `standoff` and
            /// turning on `automargin`, plotly.js will push the margins to fit the axis title at given standoff
            /// distance.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-title-standoff) |
            /// [Python](https://plot.ly/python/reference/#layout-yaxis-title-standoff) |
            /// [R](https://plot.ly/r/reference/#layout-yaxis-title-standoff)
            public var standoff: Double?
        
            public init(text: String? = nil, font: Shared.Font? = nil, standoff: Double? = nil) {
                self.text = text
                self.font = font
                self.standoff = standoff
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-title) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-title) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-title)
        public var title: Title?
    
        /// Sets the axis type. 
        ///
        /// By default, plotly attempts to determined the axis type by looking into the data of the traces
        /// that referenced the axis in question.
        ///
        /// # Used By
        /// `Layout.YAxis.type` |
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
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-type) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-type) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-type)
        public var type: `Type`?
    
        /// Determines whether or not the range of this axis is computed in relation to the input data. 
        ///
        /// See `rangemode` for more info. If `range` is provided, then `autorange` is set to *false*.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-autorange) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-autorange) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-autorange)
        public var autoRange: Shared.AutoRange?
    
        /// If *normal*, the range is computed in relation to the extrema of the input data. 
        ///
        /// If *tozero*`, the range extends to 0, regardless of the input data If *nonnegative*, the range
        /// is non-negative, regardless of the input data. Applies only to linear axes.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-rangemode) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-rangemode) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-rangemode)
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
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-range) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-range) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-range)
        public var range: InfoArray?
    
        /// Determines whether or not this axis is zoom-able. 
        ///
        /// If true, then zoom is disabled.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-fixedrange) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-fixedrange) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-fixedrange)
        public var fixedRange: Bool?
    
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
        ///
        /// # Used By
        /// `Layout.YAxis.scaleAnchor` |
        public enum ScaleAnchor: String, Encodable {
            case xSubPlotID = "/^x([2-9]|[1-9][0-9]+)?$/"
            case ySubPlotID = "/^y([2-9]|[1-9][0-9]+)?$/"
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
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-scaleanchor) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-scaleanchor) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-scaleanchor)
        public var scaleAnchor: ScaleAnchor?
    
        /// If this axis is linked to another by `scaleanchor`, this determines the pixel to unit scale ratio. 
        ///
        /// For example, if this value is 10, then every unit on this axis spans 10 times the number of
        /// pixels as a unit on the linked axis. Use this for example to create an elevation profile where
        /// the vertical scale is exaggerated a fixed amount with respect to the horizontal.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-scaleratio) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-scaleratio) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-scaleratio)
        public var scaleRatio: Double?
    
        /// If this axis needs to be compressed (either due to its own `scaleanchor` and `scaleratio` or those of the other axis), determines how that happens: by increasing the *range* (default), or by decreasing the *domain*.
        ///
        /// # Used By
        /// `Layout.YAxis.constrain` |
        public enum Constrain: String, Encodable {
            case range
            case domain
        }
        /// If this axis needs to be compressed (either due to its own `scaleanchor` and `scaleratio` or those of the other axis), determines how that happens: by increasing the *range* (default), or by decreasing the *domain*.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-constrain) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-constrain) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-constrain)
        public var constrain: Constrain?
    
        /// If this axis needs to be compressed (either due to its own `scaleanchor` and `scaleratio` or those of the other axis), determines which direction we push the originally specified plot area. 
        ///
        /// Options are *left*, *center* (default), and *right* for x axes, and *top*, *middle* (default),
        /// and *bottom* for y axes.
        ///
        /// # Used By
        /// `Layout.YAxis.constrainToward` |
        public enum ConstrainToward: String, Encodable {
            case left
            case center
            case right
            case top
            case middle
            case bottom
        }
        /// If this axis needs to be compressed (either due to its own `scaleanchor` and `scaleratio` or those of the other axis), determines which direction we push the originally specified plot area. 
        ///
        /// Options are *left*, *center* (default), and *right* for x axes, and *top*, *middle* (default),
        /// and *bottom* for y axes.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-constraintoward) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-constraintoward) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-constraintoward)
        public var constrainToward: ConstrainToward?
    
        /// If set to another axis id (e.g. 
        ///
        /// `x2`, `y`), the range of this axis will match the range of the corresponding axis in
        /// data-coordinates space. Moreover, matching axes share auto-range values, category lists and
        /// histogram auto-bins. Note that setting axes simultaneously in both a `scaleanchor` and a
        /// `matches` constraint is currently forbidden. Moreover, note that matching axes must have the
        /// same `type`.
        ///
        /// # Used By
        /// `Layout.YAxis.matches` |
        public enum Matches: String, Encodable {
            case xSubPlotID = "/^x([2-9]|[1-9][0-9]+)?$/"
            case ySubPlotID = "/^y([2-9]|[1-9][0-9]+)?$/"
        }
        /// If set to another axis id (e.g. 
        ///
        /// `x2`, `y`), the range of this axis will match the range of the corresponding axis in
        /// data-coordinates space. Moreover, matching axes share auto-range values, category lists and
        /// histogram auto-bins. Note that setting axes simultaneously in both a `scaleanchor` and a
        /// `matches` constraint is currently forbidden. Moreover, note that matching axes must have the
        /// same `type`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-matches) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-matches) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-matches)
        public var matches: Matches?
    
        /// Sets the tick mode for this axis. 
        ///
        /// If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is
        /// determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value
        /// if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via
        /// `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is
        /// provided).
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-tickmode) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-tickmode) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-tickmode)
        public var tickMode: Shared.TickMode?
    
        /// Specifies the maximum number of ticks for the particular axis. 
        ///
        /// The actual number of ticks will be chosen automatically to be less than or equal to `nticks`.
        /// Has an effect only if `tickmode` is set to *auto*.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-nticks) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-nticks) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-nticks)
        public var numTicks: Int?
    
        /// Sets the placement of the first tick on this axis. 
        ///
        /// Use with `dtick`. If the axis `type` is *log*, then you must take the log of your starting tick
        /// (e.g. to set the starting tick to 100, set the `tick0` to 2) except when `dtick`=*L<f>* (see
        /// `dtick` for more info). If the axis `type` is *date*, it should be a date string, like date
        /// data. If the axis `type` is *category*, it should be a number, using the scale where each
        /// category is assigned a serial number from zero in the order it appears.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-tick0) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-tick0) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-tick0)
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
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-dtick) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-dtick) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-dtick)
        public var dTick: Anything?
    
        /// Sets the values at which ticks on this axis appear. 
        ///
        /// Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-tickvals) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-tickvals) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-tickvals)
        public var tickValues: [Double]?
    
        /// Sets the text displayed at the ticks position via `tickvals`. 
        ///
        /// Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-ticktext) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-ticktext) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-ticktext)
        public var tickText: [Double]?
    
        /// Determines whether ticks are drawn or not. 
        ///
        /// If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside
        /// (inside) the axis lines.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-ticks) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-ticks) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-ticks)
        public var ticks: Shared.Ticks?
    
        /// Determines where ticks and grid lines are drawn with respect to their corresponding tick labels. 
        ///
        /// Only has an effect for axes of `type` *category* or *multicategory*. When set to *boundaries*,
        /// ticks and grid lines are drawn half a category to the left/bottom of labels.
        ///
        /// # Used By
        /// `Layout.YAxis.ticksOn` |
        public enum TicksOn: String, Encodable {
            case labels
            case boundaries
        }
        /// Determines where ticks and grid lines are drawn with respect to their corresponding tick labels. 
        ///
        /// Only has an effect for axes of `type` *category* or *multicategory*. When set to *boundaries*,
        /// ticks and grid lines are drawn half a category to the left/bottom of labels.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-tickson) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-tickson) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-tickson)
        public var ticksOn: TicksOn?
    
        /// Determines if the axis lines or/and ticks are mirrored to the opposite side of the plotting area. 
        ///
        /// If *true*, the axis lines are mirrored. If *ticks*, the axis lines and ticks are mirrored. If
        /// *false*, mirroring is disable. If *all*, axis lines are mirrored on all shared-axes subplots. If
        /// *allticks*, axis lines and ticks are mirrored on all shared-axes subplots.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-mirror) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-mirror) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-mirror)
        public var mirror: Shared.Mirror?
    
        /// Sets the tick length (in px).
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-ticklen) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-ticklen) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-ticklen)
        public var tickLength: Double?
    
        /// Sets the tick width (in px).
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-tickwidth) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-tickwidth) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-tickwidth)
        public var tickWidth: Double?
    
        /// Sets the tick color.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-tickcolor) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-tickcolor) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-tickcolor)
        public var tickColor: Color?
    
        /// Determines whether or not the tick labels are drawn.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-showticklabels) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-showticklabels) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-showticklabels)
        public var showTickLabels: Bool?
    
        /// Determines whether long tick labels automatically grow the figure margins.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-automargin) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-automargin) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-automargin)
        public var autoMargin: Bool?
    
        /// Determines whether or not spikes (aka droplines) are drawn for this axis. 
        ///
        /// Note: This only takes affect when hovermode = closest
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-showspikes) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-showspikes) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-showspikes)
        public var showSpikes: Bool?
    
        /// Sets the spike color. 
        ///
        /// If undefined, will use the series color
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-spikecolor) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-spikecolor) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-spikecolor)
        public var spikeColor: Color?
    
        /// Sets the width (in px) of the zero line.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-spikethickness) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-spikethickness) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-spikethickness)
        public var spikeThickness: Double?
    
        /// Sets the dash style of lines. 
        ///
        /// Set to a dash type string (*solid*, *dot*, *dash*, *longdash*, *dashdot*, or *longdashdot*) or a
        /// dash length list in px (eg *5px,10px,2px,2px*).
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-spikedash) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-spikedash) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-spikedash)
        public var spikeDash: String?
    
        /// Determines the drawing mode for the spike line If *toaxis*, the line is drawn from the data point to the axis the  series is plotted on. 
        ///
        /// If *across*, the line is drawn across the entire plot area, and supercedes *toaxis*. If
        /// *marker*, then a marker dot is drawn on the axis the series is plotted on
        ///
        /// # Used By
        /// `Layout.YAxis.spikeMode` |
        public struct SpikeMode: OptionSet, Encodable {
            public let rawValue: Int
        
            public static var toAxis: SpikeMode { SpikeMode(rawValue: 1 << 0) }
            public static var across: SpikeMode { SpikeMode(rawValue: 1 << 1) }
            public static var marker: SpikeMode { SpikeMode(rawValue: 1 << 2) }
        
            public init(rawValue: Int) { self.rawValue = rawValue }
        
            public func encode(to encoder: Encoder) throws {
                var options = [String]()
                if (self.rawValue & 1 << 0) != 0 { options += ["toaxis"] }
                if (self.rawValue & 1 << 1) != 0 { options += ["across"] }
                if (self.rawValue & 1 << 2) != 0 { options += ["marker"] }
                var container = encoder.singleValueContainer()
                try container.encode(options.joined(separator: "+"))
            }
        }
        /// Determines the drawing mode for the spike line If *toaxis*, the line is drawn from the data point to the axis the  series is plotted on. 
        ///
        /// If *across*, the line is drawn across the entire plot area, and supercedes *toaxis*. If
        /// *marker*, then a marker dot is drawn on the axis the series is plotted on
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-spikemode) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-spikemode) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-spikemode)
        public var spikeMode: SpikeMode?
    
        /// Determines whether spikelines are stuck to the cursor or to the closest datapoints.
        ///
        /// # Used By
        /// `Layout.YAxis.spikeSnap` |
        public enum SpikeSnap: String, Encodable {
            case data
            case cursor
        }
        /// Determines whether spikelines are stuck to the cursor or to the closest datapoints.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-spikesnap) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-spikesnap) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-spikesnap)
        public var spikeSnap: SpikeSnap?
    
        /// Sets the tick font.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-tickfont) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-tickfont) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-tickfont)
        public var tickFont: Shared.Font?
    
        /// Sets the angle of the tick labels with respect to the horizontal. 
        ///
        /// For example, a `tickangle` of -90 draws the tick labels vertically.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-tickangle) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-tickangle) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-tickangle)
        public var tickAngle: Angle?
    
        /// Sets a tick label prefix.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-tickprefix) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-tickprefix) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-tickprefix)
        public var tickPrefix: String?
    
        /// If *all*, all tick labels are displayed with a prefix. 
        ///
        /// If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is
        /// displayed with a suffix. If *none*, tick prefixes are hidden.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-showtickprefix) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-showtickprefix) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-showtickprefix)
        public var showTickPrefix: Shared.ShowTickPrefix?
    
        /// Sets a tick label suffix.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-ticksuffix) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-ticksuffix) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-ticksuffix)
        public var tickSuffix: String?
    
        /// Same as `showtickprefix` but for tick suffixes.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-showticksuffix) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-showticksuffix) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-showticksuffix)
        public var showTickSuffix: Shared.ShowTickSuffix?
    
        /// If *all*, all exponents are shown besides their significands. 
        ///
        /// If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the
        /// last tick is shown. If *none*, no exponents appear.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-showexponent) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-showexponent) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-showexponent)
        public var showExponent: Shared.ShowExponent?
    
        /// Determines a formatting rule for the tick exponents. 
        ///
        /// For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*,
        /// 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-exponentformat) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-exponentformat) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-exponentformat)
        public var exponentFormat: Shared.ExponentFormat?
    
        /// If "true", even 4-digit integers are separated
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-separatethousands) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-separatethousands) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-separatethousands)
        public var separatethousands: Bool?
    
        /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to those in Python. 
        ///
        /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
        /// And for dates see:
        /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
        /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
        /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-tickformat) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-tickformat) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-tickformat)
        public var tickFormat: String?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-tickformatstops) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-tickformatstops) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-tickformatstops)
        public var tickFormatStops: [Shared.TickFormatStop]?
    
        /// Sets the hover text formatting rule using d3 formatting mini-languages which are very similar to those in Python. 
        ///
        /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
        /// And for dates see:
        /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
        /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
        /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-hoverformat) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-hoverformat) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-hoverformat)
        public var hoverFormat: String?
    
        /// Determines whether or not a line bounding this axis is drawn.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-showline) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-showline) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-showline)
        public var showLine: Bool?
    
        /// Sets the axis line color.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-linecolor) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-linecolor) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-linecolor)
        public var lineColor: Color?
    
        /// Sets the width (in px) of the axis line.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-linewidth) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-linewidth) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-linewidth)
        public var lineWidth: Double?
    
        /// Determines whether or not grid lines are drawn. 
        ///
        /// If *true*, the grid lines are drawn at every tick mark.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-showgrid) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-showgrid) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-showgrid)
        public var showGrid: Bool?
    
        /// Sets the color of the grid lines.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-gridcolor) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-gridcolor) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-gridcolor)
        public var gridColor: Color?
    
        /// Sets the width (in px) of the grid lines.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-gridwidth) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-gridwidth) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-gridwidth)
        public var gridWidth: Double?
    
        /// Determines whether or not a line is drawn at along the 0 value of this axis. 
        ///
        /// If *true*, the zero line is drawn on top of the grid lines.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-zeroline) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-zeroline) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-zeroline)
        public var zeroLine: Bool?
    
        /// Sets the line color of the zero line.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-zerolinecolor) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-zerolinecolor) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-zerolinecolor)
        public var zeroLineColor: Color?
    
        /// Sets the width (in px) of the zero line.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-zerolinewidth) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-zerolinewidth) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-zerolinewidth)
        public var zeroLineWidth: Double?
    
        /// Determines whether or not a dividers are drawn between the category levels of this axis. 
        ///
        /// Only has an effect on *multicategory* axes.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-showdividers) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-showdividers) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-showdividers)
        public var showDividers: Bool?
    
        /// Sets the color of the dividers Only has an effect on *multicategory* axes.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-dividercolor) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-dividercolor) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-dividercolor)
        public var dividerColor: Color?
    
        /// Sets the width (in px) of the dividers Only has an effect on *multicategory* axes.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-dividerwidth) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-dividerwidth) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-dividerwidth)
        public var dividerWidth: Double?
    
        /// If set to an opposite-letter axis id (e.g. 
        ///
        /// `x2`, `y`), this axis is bound to the corresponding opposite-letter axis. If set to *free*, this
        /// axis' position is determined by `position`.
        ///
        /// # Used By
        /// `Layout.YAxis.anchor` |
        public enum Anchor: String, Encodable {
            case free
            case xSubPlotID = "/^x([2-9]|[1-9][0-9]+)?$/"
            case ySubPlotID = "/^y([2-9]|[1-9][0-9]+)?$/"
        }
        /// If set to an opposite-letter axis id (e.g. 
        ///
        /// `x2`, `y`), this axis is bound to the corresponding opposite-letter axis. If set to *free*, this
        /// axis' position is determined by `position`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-anchor) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-anchor) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-anchor)
        public var anchor: Anchor?
    
        /// Determines whether a x (y) axis is positioned at the *bottom* (*left*) or *top* (*right*) of the plotting area.
        ///
        /// # Used By
        /// `Layout.YAxis.side` |
        public enum Side: String, Encodable {
            case top
            case bottom
            case left
            case right
        }
        /// Determines whether a x (y) axis is positioned at the *bottom* (*left*) or *top* (*right*) of the plotting area.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-side) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-side) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-side)
        public var side: Side?
    
        /// If set a same-letter axis id, this axis is overlaid on top of the corresponding same-letter axis, with traces and axes visible for both axes. 
        ///
        /// If *false*, this axis does not overlay any same-letter axes. In this case, for axes with
        /// overlapping domains only the highest-numbered axis will be visible.
        ///
        /// # Used By
        /// `Layout.YAxis.overlaying` |
        public enum Overlaying: String, Encodable {
            case free
            case xSubPlotID = "/^x([2-9]|[1-9][0-9]+)?$/"
            case ySubPlotID = "/^y([2-9]|[1-9][0-9]+)?$/"
        }
        /// If set a same-letter axis id, this axis is overlaid on top of the corresponding same-letter axis, with traces and axes visible for both axes. 
        ///
        /// If *false*, this axis does not overlay any same-letter axes. In this case, for axes with
        /// overlapping domains only the highest-numbered axis will be visible.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-overlaying) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-overlaying) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-overlaying)
        public var overlaying: Overlaying?
    
        /// Sets the layer on which this axis is displayed. 
        ///
        /// If *above traces*, this axis is displayed above all the subplot's traces If *below traces*, this
        /// axis is displayed below all the subplot's traces, but above the grid lines. Useful when used
        /// together with scatter-like traces with `cliponaxis` set to *false* to show markers and/or text
        /// nodes above this axis.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-layer) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-layer) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-layer)
        public var layer: Shared.Layer?
    
        /// Sets the domain of this axis (in plot fraction).
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-domain) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-domain) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-domain)
        public var domain: InfoArray?
    
        /// Sets the position of this axis in the plotting space (in normalized coordinates). 
        ///
        /// Only has an effect if `anchor` is set to *free*.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-position) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-position) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-position)
        public var position: Double?
    
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
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-categoryorder) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-categoryorder) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-categoryorder)
        public var categoryOrder: Shared.CategoryOrder?
    
        /// Sets the order in which categories on this axis appear. 
        ///
        /// Only has an effect if `categoryorder` is set to *array*. Used with `categoryorder`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-categoryarray) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-categoryarray) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-categoryarray)
        public var categoryArray: [Double]?
    
        /// Controls persistence of user-driven changes in axis `range`, `autorange`, and `title` if in `editable: true` configuration. 
        ///
        /// Defaults to `layout.uirevision`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-uirevision) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-uirevision) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-uirevision)
        public var uiRevision: Anything?
    
        /// Sets the calendar system to use for `range` and `tick0` if this is a date axis. 
        ///
        /// This does not set the calendar for interpreting data on this axis, that's specified in the trace
        /// or via the global `layout.calendar`
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis-calendar) |
        /// [Python](https://plot.ly/python/reference/#layout-yaxis-calendar) |
        /// [R](https://plot.ly/r/reference/#layout-yaxis-calendar)
        public var calendar: Shared.Calendar?
    
        /// Plotly compatible property encoding
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
            case separatethousands
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
        
        public init(visible: Bool? = nil, color: Color? = nil, title: Title? = nil, type: `Type`? = nil, autoRange: Shared.AutoRange? = nil, rangeMode: Shared.RangeMode? = nil, range: InfoArray? = nil, fixedRange: Bool? = nil, scaleAnchor: ScaleAnchor? = nil, scaleRatio: Double? = nil, constrain: Constrain? = nil, constrainToward: ConstrainToward? = nil, matches: Matches? = nil, tickMode: Shared.TickMode? = nil, numTicks: Int? = nil, tick0: Anything? = nil, dTick: Anything? = nil, tickValues: [Double]? = nil, tickText: [Double]? = nil, ticks: Shared.Ticks? = nil, ticksOn: TicksOn? = nil, mirror: Shared.Mirror? = nil, tickLength: Double? = nil, tickWidth: Double? = nil, tickColor: Color? = nil, showTickLabels: Bool? = nil, autoMargin: Bool? = nil, showSpikes: Bool? = nil, spikeColor: Color? = nil, spikeThickness: Double? = nil, spikeDash: String? = nil, spikeMode: SpikeMode? = nil, spikeSnap: SpikeSnap? = nil, tickFont: Shared.Font? = nil, tickAngle: Angle? = nil, tickPrefix: String? = nil, showTickPrefix: Shared.ShowTickPrefix? = nil, tickSuffix: String? = nil, showTickSuffix: Shared.ShowTickSuffix? = nil, showExponent: Shared.ShowExponent? = nil, exponentFormat: Shared.ExponentFormat? = nil, separatethousands: Bool? = nil, tickFormat: String? = nil, tickFormatStops: [Shared.TickFormatStop]? = nil, hoverFormat: String? = nil, showLine: Bool? = nil, lineColor: Color? = nil, lineWidth: Double? = nil, showGrid: Bool? = nil, gridColor: Color? = nil, gridWidth: Double? = nil, zeroLine: Bool? = nil, zeroLineColor: Color? = nil, zeroLineWidth: Double? = nil, showDividers: Bool? = nil, dividerColor: Color? = nil, dividerWidth: Double? = nil, anchor: Anchor? = nil, side: Side? = nil, overlaying: Overlaying? = nil, layer: Shared.Layer? = nil, domain: InfoArray? = nil, position: Double? = nil, categoryOrder: Shared.CategoryOrder? = nil, categoryArray: [Double]? = nil, uiRevision: Anything? = nil, calendar: Shared.Calendar? = nil) {
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
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-yaxis) |
    /// [Python](https://plot.ly/python/reference/#layout-yaxis) |
    /// [R](https://plot.ly/r/reference/#layout-yaxis)
    public var yAxis: YAxis?

    /// # Used By
    /// `Layout.ternary` |
    public struct Ternary: Encodable {
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-domain) |
        /// [Python](https://plot.ly/python/reference/#layout-ternary-domain) |
        /// [R](https://plot.ly/r/reference/#layout-ternary-domain)
        public var domain: Shared.Domain?
    
        /// Set the background color of the subplot
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-bgcolor) |
        /// [Python](https://plot.ly/python/reference/#layout-ternary-bgcolor) |
        /// [R](https://plot.ly/r/reference/#layout-ternary-bgcolor)
        public var backgroundColor: Color?
    
        /// The number each triplet should sum to, and the maximum range of each axis
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-sum) |
        /// [Python](https://plot.ly/python/reference/#layout-ternary-sum) |
        /// [R](https://plot.ly/r/reference/#layout-ternary-sum)
        public var sum: Double?
    
        /// # Used By
        /// `Layout.Ternary.aAxis` |
        public struct AAxis: Encodable {
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-aaxis-title) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-aaxis-title) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-aaxis-title)
            public var title: Shared.Title?
        
            /// Sets default for all colors associated with this axis all at once: line, font, tick, and grid colors. 
            ///
            /// Grid color is lightened by blending this with the plot background Individual pieces can override
            /// this.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-aaxis-color) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-aaxis-color) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-aaxis-color)
            public var color: Color?
        
            /// Sets the tick mode for this axis. 
            ///
            /// If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is
            /// determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value
            /// if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via
            /// `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is
            /// provided).
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-aaxis-tickmode) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-aaxis-tickmode) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-aaxis-tickmode)
            public var tickMode: Shared.TickMode?
        
            /// Specifies the maximum number of ticks for the particular axis. 
            ///
            /// The actual number of ticks will be chosen automatically to be less than or equal to `nticks`.
            /// Has an effect only if `tickmode` is set to *auto*.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-aaxis-nticks) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-aaxis-nticks) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-aaxis-nticks)
            public var numTicks: Int?
        
            /// Sets the placement of the first tick on this axis. 
            ///
            /// Use with `dtick`. If the axis `type` is *log*, then you must take the log of your starting tick
            /// (e.g. to set the starting tick to 100, set the `tick0` to 2) except when `dtick`=*L<f>* (see
            /// `dtick` for more info). If the axis `type` is *date*, it should be a date string, like date
            /// data. If the axis `type` is *category*, it should be a number, using the scale where each
            /// category is assigned a serial number from zero in the order it appears.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-aaxis-tick0) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-aaxis-tick0) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-aaxis-tick0)
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
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-aaxis-dtick) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-aaxis-dtick) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-aaxis-dtick)
            public var dTick: Anything?
        
            /// Sets the values at which ticks on this axis appear. 
            ///
            /// Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-aaxis-tickvals) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-aaxis-tickvals) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-aaxis-tickvals)
            public var tickValues: [Double]?
        
            /// Sets the text displayed at the ticks position via `tickvals`. 
            ///
            /// Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-aaxis-ticktext) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-aaxis-ticktext) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-aaxis-ticktext)
            public var tickText: [Double]?
        
            /// Determines whether ticks are drawn or not. 
            ///
            /// If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside
            /// (inside) the axis lines.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-aaxis-ticks) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-aaxis-ticks) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-aaxis-ticks)
            public var ticks: Shared.Ticks?
        
            /// Sets the tick length (in px).
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-aaxis-ticklen) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-aaxis-ticklen) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-aaxis-ticklen)
            public var tickLength: Double?
        
            /// Sets the tick width (in px).
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-aaxis-tickwidth) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-aaxis-tickwidth) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-aaxis-tickwidth)
            public var tickWidth: Double?
        
            /// Sets the tick color.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-aaxis-tickcolor) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-aaxis-tickcolor) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-aaxis-tickcolor)
            public var tickColor: Color?
        
            /// Determines whether or not the tick labels are drawn.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-aaxis-showticklabels) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-aaxis-showticklabels) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-aaxis-showticklabels)
            public var showTickLabels: Bool?
        
            /// If *all*, all tick labels are displayed with a prefix. 
            ///
            /// If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is
            /// displayed with a suffix. If *none*, tick prefixes are hidden.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-aaxis-showtickprefix) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-aaxis-showtickprefix) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-aaxis-showtickprefix)
            public var showTickPrefix: Shared.ShowTickPrefix?
        
            /// Sets a tick label prefix.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-aaxis-tickprefix) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-aaxis-tickprefix) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-aaxis-tickprefix)
            public var tickPrefix: String?
        
            /// Same as `showtickprefix` but for tick suffixes.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-aaxis-showticksuffix) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-aaxis-showticksuffix) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-aaxis-showticksuffix)
            public var showTickSuffix: Shared.ShowTickSuffix?
        
            /// Sets a tick label suffix.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-aaxis-ticksuffix) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-aaxis-ticksuffix) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-aaxis-ticksuffix)
            public var tickSuffix: String?
        
            /// If *all*, all exponents are shown besides their significands. 
            ///
            /// If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the
            /// last tick is shown. If *none*, no exponents appear.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-aaxis-showexponent) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-aaxis-showexponent) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-aaxis-showexponent)
            public var showExponent: Shared.ShowExponent?
        
            /// Determines a formatting rule for the tick exponents. 
            ///
            /// For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*,
            /// 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-aaxis-exponentformat) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-aaxis-exponentformat) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-aaxis-exponentformat)
            public var exponentFormat: Shared.ExponentFormat?
        
            /// If "true", even 4-digit integers are separated
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-aaxis-separatethousands) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-aaxis-separatethousands) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-aaxis-separatethousands)
            public var separatethousands: Bool?
        
            /// Sets the tick font.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-aaxis-tickfont) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-aaxis-tickfont) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-aaxis-tickfont)
            public var tickFont: Shared.Font?
        
            /// Sets the angle of the tick labels with respect to the horizontal. 
            ///
            /// For example, a `tickangle` of -90 draws the tick labels vertically.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-aaxis-tickangle) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-aaxis-tickangle) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-aaxis-tickangle)
            public var tickAngle: Angle?
        
            /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to those in Python. 
            ///
            /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
            /// And for dates see:
            /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
            /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
            /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-aaxis-tickformat) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-aaxis-tickformat) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-aaxis-tickformat)
            public var tickFormat: String?
        
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-aaxis-tickformatstops) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-aaxis-tickformatstops) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-aaxis-tickformatstops)
            public var tickFormatStops: [Shared.TickFormatStop]?
        
            /// Sets the hover text formatting rule using d3 formatting mini-languages which are very similar to those in Python. 
            ///
            /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
            /// And for dates see:
            /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
            /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
            /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-aaxis-hoverformat) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-aaxis-hoverformat) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-aaxis-hoverformat)
            public var hoverFormat: String?
        
            /// Determines whether or not a line bounding this axis is drawn.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-aaxis-showline) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-aaxis-showline) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-aaxis-showline)
            public var showLine: Bool?
        
            /// Sets the axis line color.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-aaxis-linecolor) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-aaxis-linecolor) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-aaxis-linecolor)
            public var lineColor: Color?
        
            /// Sets the width (in px) of the axis line.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-aaxis-linewidth) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-aaxis-linewidth) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-aaxis-linewidth)
            public var lineWidth: Double?
        
            /// Determines whether or not grid lines are drawn. 
            ///
            /// If *true*, the grid lines are drawn at every tick mark.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-aaxis-showgrid) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-aaxis-showgrid) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-aaxis-showgrid)
            public var showGrid: Bool?
        
            /// Sets the color of the grid lines.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-aaxis-gridcolor) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-aaxis-gridcolor) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-aaxis-gridcolor)
            public var gridColor: Color?
        
            /// Sets the width (in px) of the grid lines.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-aaxis-gridwidth) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-aaxis-gridwidth) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-aaxis-gridwidth)
            public var gridWidth: Double?
        
            /// Sets the layer on which this axis is displayed. 
            ///
            /// If *above traces*, this axis is displayed above all the subplot's traces If *below traces*, this
            /// axis is displayed below all the subplot's traces, but above the grid lines. Useful when used
            /// together with scatter-like traces with `cliponaxis` set to *false* to show markers and/or text
            /// nodes above this axis.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-aaxis-layer) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-aaxis-layer) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-aaxis-layer)
            public var layer: Shared.Layer?
        
            /// The minimum value visible on this axis. 
            ///
            /// The maximum is determined by the sum minus the minimum values of the other two axes. The full
            /// view corresponds to all the minima set to zero.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-aaxis-min) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-aaxis-min) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-aaxis-min)
            public var min: Double?
        
            /// Controls persistence of user-driven changes in axis `min`, and `title` if in `editable: true` configuration. 
            ///
            /// Defaults to `ternary<N>.uirevision`.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-aaxis-uirevision) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-aaxis-uirevision) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-aaxis-uirevision)
            public var uiRevision: Anything?
        
            /// Plotly compatible property encoding
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
                case separatethousands
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
            
            public init(title: Shared.Title? = nil, color: Color? = nil, tickMode: Shared.TickMode? = nil, numTicks: Int? = nil, tick0: Anything? = nil, dTick: Anything? = nil, tickValues: [Double]? = nil, tickText: [Double]? = nil, ticks: Shared.Ticks? = nil, tickLength: Double? = nil, tickWidth: Double? = nil, tickColor: Color? = nil, showTickLabels: Bool? = nil, showTickPrefix: Shared.ShowTickPrefix? = nil, tickPrefix: String? = nil, showTickSuffix: Shared.ShowTickSuffix? = nil, tickSuffix: String? = nil, showExponent: Shared.ShowExponent? = nil, exponentFormat: Shared.ExponentFormat? = nil, separatethousands: Bool? = nil, tickFont: Shared.Font? = nil, tickAngle: Angle? = nil, tickFormat: String? = nil, tickFormatStops: [Shared.TickFormatStop]? = nil, hoverFormat: String? = nil, showLine: Bool? = nil, lineColor: Color? = nil, lineWidth: Double? = nil, showGrid: Bool? = nil, gridColor: Color? = nil, gridWidth: Double? = nil, layer: Shared.Layer? = nil, min: Double? = nil, uiRevision: Anything? = nil) {
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
                self.separatethousands = separatethousands
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
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-aaxis) |
        /// [Python](https://plot.ly/python/reference/#layout-ternary-aaxis) |
        /// [R](https://plot.ly/r/reference/#layout-ternary-aaxis)
        public var aAxis: AAxis?
    
        /// # Used By
        /// `Layout.Ternary.bAxis` |
        public struct BAxis: Encodable {
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-baxis-title) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-baxis-title) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-baxis-title)
            public var title: Shared.Title?
        
            /// Sets default for all colors associated with this axis all at once: line, font, tick, and grid colors. 
            ///
            /// Grid color is lightened by blending this with the plot background Individual pieces can override
            /// this.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-baxis-color) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-baxis-color) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-baxis-color)
            public var color: Color?
        
            /// Sets the tick mode for this axis. 
            ///
            /// If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is
            /// determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value
            /// if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via
            /// `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is
            /// provided).
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-baxis-tickmode) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-baxis-tickmode) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-baxis-tickmode)
            public var tickMode: Shared.TickMode?
        
            /// Specifies the maximum number of ticks for the particular axis. 
            ///
            /// The actual number of ticks will be chosen automatically to be less than or equal to `nticks`.
            /// Has an effect only if `tickmode` is set to *auto*.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-baxis-nticks) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-baxis-nticks) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-baxis-nticks)
            public var numTicks: Int?
        
            /// Sets the placement of the first tick on this axis. 
            ///
            /// Use with `dtick`. If the axis `type` is *log*, then you must take the log of your starting tick
            /// (e.g. to set the starting tick to 100, set the `tick0` to 2) except when `dtick`=*L<f>* (see
            /// `dtick` for more info). If the axis `type` is *date*, it should be a date string, like date
            /// data. If the axis `type` is *category*, it should be a number, using the scale where each
            /// category is assigned a serial number from zero in the order it appears.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-baxis-tick0) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-baxis-tick0) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-baxis-tick0)
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
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-baxis-dtick) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-baxis-dtick) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-baxis-dtick)
            public var dTick: Anything?
        
            /// Sets the values at which ticks on this axis appear. 
            ///
            /// Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-baxis-tickvals) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-baxis-tickvals) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-baxis-tickvals)
            public var tickValues: [Double]?
        
            /// Sets the text displayed at the ticks position via `tickvals`. 
            ///
            /// Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-baxis-ticktext) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-baxis-ticktext) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-baxis-ticktext)
            public var tickText: [Double]?
        
            /// Determines whether ticks are drawn or not. 
            ///
            /// If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside
            /// (inside) the axis lines.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-baxis-ticks) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-baxis-ticks) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-baxis-ticks)
            public var ticks: Shared.Ticks?
        
            /// Sets the tick length (in px).
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-baxis-ticklen) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-baxis-ticklen) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-baxis-ticklen)
            public var tickLength: Double?
        
            /// Sets the tick width (in px).
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-baxis-tickwidth) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-baxis-tickwidth) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-baxis-tickwidth)
            public var tickWidth: Double?
        
            /// Sets the tick color.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-baxis-tickcolor) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-baxis-tickcolor) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-baxis-tickcolor)
            public var tickColor: Color?
        
            /// Determines whether or not the tick labels are drawn.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-baxis-showticklabels) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-baxis-showticklabels) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-baxis-showticklabels)
            public var showTickLabels: Bool?
        
            /// If *all*, all tick labels are displayed with a prefix. 
            ///
            /// If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is
            /// displayed with a suffix. If *none*, tick prefixes are hidden.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-baxis-showtickprefix) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-baxis-showtickprefix) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-baxis-showtickprefix)
            public var showTickPrefix: Shared.ShowTickPrefix?
        
            /// Sets a tick label prefix.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-baxis-tickprefix) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-baxis-tickprefix) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-baxis-tickprefix)
            public var tickPrefix: String?
        
            /// Same as `showtickprefix` but for tick suffixes.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-baxis-showticksuffix) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-baxis-showticksuffix) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-baxis-showticksuffix)
            public var showTickSuffix: Shared.ShowTickSuffix?
        
            /// Sets a tick label suffix.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-baxis-ticksuffix) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-baxis-ticksuffix) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-baxis-ticksuffix)
            public var tickSuffix: String?
        
            /// If *all*, all exponents are shown besides their significands. 
            ///
            /// If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the
            /// last tick is shown. If *none*, no exponents appear.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-baxis-showexponent) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-baxis-showexponent) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-baxis-showexponent)
            public var showExponent: Shared.ShowExponent?
        
            /// Determines a formatting rule for the tick exponents. 
            ///
            /// For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*,
            /// 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-baxis-exponentformat) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-baxis-exponentformat) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-baxis-exponentformat)
            public var exponentFormat: Shared.ExponentFormat?
        
            /// If "true", even 4-digit integers are separated
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-baxis-separatethousands) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-baxis-separatethousands) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-baxis-separatethousands)
            public var separatethousands: Bool?
        
            /// Sets the tick font.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-baxis-tickfont) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-baxis-tickfont) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-baxis-tickfont)
            public var tickFont: Shared.Font?
        
            /// Sets the angle of the tick labels with respect to the horizontal. 
            ///
            /// For example, a `tickangle` of -90 draws the tick labels vertically.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-baxis-tickangle) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-baxis-tickangle) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-baxis-tickangle)
            public var tickAngle: Angle?
        
            /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to those in Python. 
            ///
            /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
            /// And for dates see:
            /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
            /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
            /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-baxis-tickformat) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-baxis-tickformat) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-baxis-tickformat)
            public var tickFormat: String?
        
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-baxis-tickformatstops) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-baxis-tickformatstops) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-baxis-tickformatstops)
            public var tickFormatStops: [Shared.TickFormatStop]?
        
            /// Sets the hover text formatting rule using d3 formatting mini-languages which are very similar to those in Python. 
            ///
            /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
            /// And for dates see:
            /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
            /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
            /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-baxis-hoverformat) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-baxis-hoverformat) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-baxis-hoverformat)
            public var hoverFormat: String?
        
            /// Determines whether or not a line bounding this axis is drawn.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-baxis-showline) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-baxis-showline) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-baxis-showline)
            public var showLine: Bool?
        
            /// Sets the axis line color.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-baxis-linecolor) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-baxis-linecolor) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-baxis-linecolor)
            public var lineColor: Color?
        
            /// Sets the width (in px) of the axis line.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-baxis-linewidth) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-baxis-linewidth) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-baxis-linewidth)
            public var lineWidth: Double?
        
            /// Determines whether or not grid lines are drawn. 
            ///
            /// If *true*, the grid lines are drawn at every tick mark.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-baxis-showgrid) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-baxis-showgrid) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-baxis-showgrid)
            public var showGrid: Bool?
        
            /// Sets the color of the grid lines.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-baxis-gridcolor) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-baxis-gridcolor) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-baxis-gridcolor)
            public var gridColor: Color?
        
            /// Sets the width (in px) of the grid lines.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-baxis-gridwidth) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-baxis-gridwidth) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-baxis-gridwidth)
            public var gridWidth: Double?
        
            /// Sets the layer on which this axis is displayed. 
            ///
            /// If *above traces*, this axis is displayed above all the subplot's traces If *below traces*, this
            /// axis is displayed below all the subplot's traces, but above the grid lines. Useful when used
            /// together with scatter-like traces with `cliponaxis` set to *false* to show markers and/or text
            /// nodes above this axis.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-baxis-layer) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-baxis-layer) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-baxis-layer)
            public var layer: Shared.Layer?
        
            /// The minimum value visible on this axis. 
            ///
            /// The maximum is determined by the sum minus the minimum values of the other two axes. The full
            /// view corresponds to all the minima set to zero.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-baxis-min) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-baxis-min) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-baxis-min)
            public var min: Double?
        
            /// Controls persistence of user-driven changes in axis `min`, and `title` if in `editable: true` configuration. 
            ///
            /// Defaults to `ternary<N>.uirevision`.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-baxis-uirevision) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-baxis-uirevision) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-baxis-uirevision)
            public var uiRevision: Anything?
        
            /// Plotly compatible property encoding
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
                case separatethousands
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
            
            public init(title: Shared.Title? = nil, color: Color? = nil, tickMode: Shared.TickMode? = nil, numTicks: Int? = nil, tick0: Anything? = nil, dTick: Anything? = nil, tickValues: [Double]? = nil, tickText: [Double]? = nil, ticks: Shared.Ticks? = nil, tickLength: Double? = nil, tickWidth: Double? = nil, tickColor: Color? = nil, showTickLabels: Bool? = nil, showTickPrefix: Shared.ShowTickPrefix? = nil, tickPrefix: String? = nil, showTickSuffix: Shared.ShowTickSuffix? = nil, tickSuffix: String? = nil, showExponent: Shared.ShowExponent? = nil, exponentFormat: Shared.ExponentFormat? = nil, separatethousands: Bool? = nil, tickFont: Shared.Font? = nil, tickAngle: Angle? = nil, tickFormat: String? = nil, tickFormatStops: [Shared.TickFormatStop]? = nil, hoverFormat: String? = nil, showLine: Bool? = nil, lineColor: Color? = nil, lineWidth: Double? = nil, showGrid: Bool? = nil, gridColor: Color? = nil, gridWidth: Double? = nil, layer: Shared.Layer? = nil, min: Double? = nil, uiRevision: Anything? = nil) {
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
                self.separatethousands = separatethousands
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
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-baxis) |
        /// [Python](https://plot.ly/python/reference/#layout-ternary-baxis) |
        /// [R](https://plot.ly/r/reference/#layout-ternary-baxis)
        public var bAxis: BAxis?
    
        /// # Used By
        /// `Layout.Ternary.cAxis` |
        public struct CAxis: Encodable {
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-caxis-title) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-caxis-title) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-caxis-title)
            public var title: Shared.Title?
        
            /// Sets default for all colors associated with this axis all at once: line, font, tick, and grid colors. 
            ///
            /// Grid color is lightened by blending this with the plot background Individual pieces can override
            /// this.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-caxis-color) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-caxis-color) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-caxis-color)
            public var color: Color?
        
            /// Sets the tick mode for this axis. 
            ///
            /// If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is
            /// determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value
            /// if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via
            /// `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is
            /// provided).
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-caxis-tickmode) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-caxis-tickmode) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-caxis-tickmode)
            public var tickMode: Shared.TickMode?
        
            /// Specifies the maximum number of ticks for the particular axis. 
            ///
            /// The actual number of ticks will be chosen automatically to be less than or equal to `nticks`.
            /// Has an effect only if `tickmode` is set to *auto*.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-caxis-nticks) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-caxis-nticks) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-caxis-nticks)
            public var numTicks: Int?
        
            /// Sets the placement of the first tick on this axis. 
            ///
            /// Use with `dtick`. If the axis `type` is *log*, then you must take the log of your starting tick
            /// (e.g. to set the starting tick to 100, set the `tick0` to 2) except when `dtick`=*L<f>* (see
            /// `dtick` for more info). If the axis `type` is *date*, it should be a date string, like date
            /// data. If the axis `type` is *category*, it should be a number, using the scale where each
            /// category is assigned a serial number from zero in the order it appears.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-caxis-tick0) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-caxis-tick0) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-caxis-tick0)
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
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-caxis-dtick) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-caxis-dtick) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-caxis-dtick)
            public var dTick: Anything?
        
            /// Sets the values at which ticks on this axis appear. 
            ///
            /// Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-caxis-tickvals) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-caxis-tickvals) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-caxis-tickvals)
            public var tickValues: [Double]?
        
            /// Sets the text displayed at the ticks position via `tickvals`. 
            ///
            /// Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-caxis-ticktext) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-caxis-ticktext) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-caxis-ticktext)
            public var tickText: [Double]?
        
            /// Determines whether ticks are drawn or not. 
            ///
            /// If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside
            /// (inside) the axis lines.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-caxis-ticks) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-caxis-ticks) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-caxis-ticks)
            public var ticks: Shared.Ticks?
        
            /// Sets the tick length (in px).
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-caxis-ticklen) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-caxis-ticklen) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-caxis-ticklen)
            public var tickLength: Double?
        
            /// Sets the tick width (in px).
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-caxis-tickwidth) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-caxis-tickwidth) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-caxis-tickwidth)
            public var tickWidth: Double?
        
            /// Sets the tick color.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-caxis-tickcolor) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-caxis-tickcolor) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-caxis-tickcolor)
            public var tickColor: Color?
        
            /// Determines whether or not the tick labels are drawn.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-caxis-showticklabels) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-caxis-showticklabels) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-caxis-showticklabels)
            public var showTickLabels: Bool?
        
            /// If *all*, all tick labels are displayed with a prefix. 
            ///
            /// If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is
            /// displayed with a suffix. If *none*, tick prefixes are hidden.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-caxis-showtickprefix) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-caxis-showtickprefix) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-caxis-showtickprefix)
            public var showTickPrefix: Shared.ShowTickPrefix?
        
            /// Sets a tick label prefix.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-caxis-tickprefix) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-caxis-tickprefix) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-caxis-tickprefix)
            public var tickPrefix: String?
        
            /// Same as `showtickprefix` but for tick suffixes.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-caxis-showticksuffix) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-caxis-showticksuffix) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-caxis-showticksuffix)
            public var showTickSuffix: Shared.ShowTickSuffix?
        
            /// Sets a tick label suffix.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-caxis-ticksuffix) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-caxis-ticksuffix) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-caxis-ticksuffix)
            public var tickSuffix: String?
        
            /// If *all*, all exponents are shown besides their significands. 
            ///
            /// If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the
            /// last tick is shown. If *none*, no exponents appear.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-caxis-showexponent) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-caxis-showexponent) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-caxis-showexponent)
            public var showExponent: Shared.ShowExponent?
        
            /// Determines a formatting rule for the tick exponents. 
            ///
            /// For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*,
            /// 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-caxis-exponentformat) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-caxis-exponentformat) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-caxis-exponentformat)
            public var exponentFormat: Shared.ExponentFormat?
        
            /// If "true", even 4-digit integers are separated
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-caxis-separatethousands) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-caxis-separatethousands) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-caxis-separatethousands)
            public var separatethousands: Bool?
        
            /// Sets the tick font.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-caxis-tickfont) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-caxis-tickfont) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-caxis-tickfont)
            public var tickFont: Shared.Font?
        
            /// Sets the angle of the tick labels with respect to the horizontal. 
            ///
            /// For example, a `tickangle` of -90 draws the tick labels vertically.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-caxis-tickangle) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-caxis-tickangle) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-caxis-tickangle)
            public var tickAngle: Angle?
        
            /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to those in Python. 
            ///
            /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
            /// And for dates see:
            /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
            /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
            /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-caxis-tickformat) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-caxis-tickformat) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-caxis-tickformat)
            public var tickFormat: String?
        
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-caxis-tickformatstops) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-caxis-tickformatstops) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-caxis-tickformatstops)
            public var tickFormatStops: [Shared.TickFormatStop]?
        
            /// Sets the hover text formatting rule using d3 formatting mini-languages which are very similar to those in Python. 
            ///
            /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
            /// And for dates see:
            /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
            /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
            /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-caxis-hoverformat) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-caxis-hoverformat) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-caxis-hoverformat)
            public var hoverFormat: String?
        
            /// Determines whether or not a line bounding this axis is drawn.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-caxis-showline) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-caxis-showline) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-caxis-showline)
            public var showLine: Bool?
        
            /// Sets the axis line color.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-caxis-linecolor) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-caxis-linecolor) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-caxis-linecolor)
            public var lineColor: Color?
        
            /// Sets the width (in px) of the axis line.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-caxis-linewidth) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-caxis-linewidth) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-caxis-linewidth)
            public var lineWidth: Double?
        
            /// Determines whether or not grid lines are drawn. 
            ///
            /// If *true*, the grid lines are drawn at every tick mark.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-caxis-showgrid) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-caxis-showgrid) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-caxis-showgrid)
            public var showGrid: Bool?
        
            /// Sets the color of the grid lines.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-caxis-gridcolor) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-caxis-gridcolor) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-caxis-gridcolor)
            public var gridColor: Color?
        
            /// Sets the width (in px) of the grid lines.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-caxis-gridwidth) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-caxis-gridwidth) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-caxis-gridwidth)
            public var gridWidth: Double?
        
            /// Sets the layer on which this axis is displayed. 
            ///
            /// If *above traces*, this axis is displayed above all the subplot's traces If *below traces*, this
            /// axis is displayed below all the subplot's traces, but above the grid lines. Useful when used
            /// together with scatter-like traces with `cliponaxis` set to *false* to show markers and/or text
            /// nodes above this axis.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-caxis-layer) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-caxis-layer) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-caxis-layer)
            public var layer: Shared.Layer?
        
            /// The minimum value visible on this axis. 
            ///
            /// The maximum is determined by the sum minus the minimum values of the other two axes. The full
            /// view corresponds to all the minima set to zero.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-caxis-min) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-caxis-min) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-caxis-min)
            public var min: Double?
        
            /// Controls persistence of user-driven changes in axis `min`, and `title` if in `editable: true` configuration. 
            ///
            /// Defaults to `ternary<N>.uirevision`.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-caxis-uirevision) |
            /// [Python](https://plot.ly/python/reference/#layout-ternary-caxis-uirevision) |
            /// [R](https://plot.ly/r/reference/#layout-ternary-caxis-uirevision)
            public var uiRevision: Anything?
        
            /// Plotly compatible property encoding
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
                case separatethousands
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
            
            public init(title: Shared.Title? = nil, color: Color? = nil, tickMode: Shared.TickMode? = nil, numTicks: Int? = nil, tick0: Anything? = nil, dTick: Anything? = nil, tickValues: [Double]? = nil, tickText: [Double]? = nil, ticks: Shared.Ticks? = nil, tickLength: Double? = nil, tickWidth: Double? = nil, tickColor: Color? = nil, showTickLabels: Bool? = nil, showTickPrefix: Shared.ShowTickPrefix? = nil, tickPrefix: String? = nil, showTickSuffix: Shared.ShowTickSuffix? = nil, tickSuffix: String? = nil, showExponent: Shared.ShowExponent? = nil, exponentFormat: Shared.ExponentFormat? = nil, separatethousands: Bool? = nil, tickFont: Shared.Font? = nil, tickAngle: Angle? = nil, tickFormat: String? = nil, tickFormatStops: [Shared.TickFormatStop]? = nil, hoverFormat: String? = nil, showLine: Bool? = nil, lineColor: Color? = nil, lineWidth: Double? = nil, showGrid: Bool? = nil, gridColor: Color? = nil, gridWidth: Double? = nil, layer: Shared.Layer? = nil, min: Double? = nil, uiRevision: Anything? = nil) {
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
                self.separatethousands = separatethousands
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
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-caxis) |
        /// [Python](https://plot.ly/python/reference/#layout-ternary-caxis) |
        /// [R](https://plot.ly/r/reference/#layout-ternary-caxis)
        public var cAxis: CAxis?
    
        /// Controls persistence of user-driven changes in axis `min` and `title`, if not overridden in the individual axes. 
        ///
        /// Defaults to `layout.uirevision`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-uirevision) |
        /// [Python](https://plot.ly/python/reference/#layout-ternary-uirevision) |
        /// [R](https://plot.ly/r/reference/#layout-ternary-uirevision)
        public var uiRevision: Anything?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case domain
            case backgroundColor = "bgcolor"
            case sum
            case aAxis = "aaxis"
            case bAxis = "baxis"
            case cAxis = "caxis"
            case uiRevision = "uirevision"
        }
        
        public init(domain: Shared.Domain? = nil, backgroundColor: Color? = nil, sum: Double? = nil, aAxis: AAxis? = nil, bAxis: BAxis? = nil, cAxis: CAxis? = nil, uiRevision: Anything? = nil) {
            self.domain = domain
            self.backgroundColor = backgroundColor
            self.sum = sum
            self.aAxis = aAxis
            self.bAxis = bAxis
            self.cAxis = cAxis
            self.uiRevision = uiRevision
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary) |
    /// [Python](https://plot.ly/python/reference/#layout-ternary) |
    /// [R](https://plot.ly/r/reference/#layout-ternary)
    public var ternary: Ternary?

    /// # Used By
    /// `Layout.scene` |
    public struct Scene: Encodable {
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-bgcolor) |
        /// [Python](https://plot.ly/python/reference/#layout-scene-bgcolor) |
        /// [R](https://plot.ly/r/reference/#layout-scene-bgcolor)
        public var backgroundColor: Color?
    
        /// # Used By
        /// `Layout.Scene.camera` |
        public struct Camera: Encodable {
            /// Sets the (x,y,z) components of the 'up' camera vector. 
            ///
            /// This vector determines the up direction of this scene with respect to the page. The default is
            /// *{x: 0, y: 0, z: 1}* which means that the z axis points up.
            ///
            /// # Used By
            /// `Layout.Scene.Camera.up` |
            public struct Up: Encodable {
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-camera-up-x) |
                /// [Python](https://plot.ly/python/reference/#layout-scene-camera-up-x) |
                /// [R](https://plot.ly/r/reference/#layout-scene-camera-up-x)
                public var x: Double?
            
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-camera-up-y) |
                /// [Python](https://plot.ly/python/reference/#layout-scene-camera-up-y) |
                /// [R](https://plot.ly/r/reference/#layout-scene-camera-up-y)
                public var y: Double?
            
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-camera-up-z) |
                /// [Python](https://plot.ly/python/reference/#layout-scene-camera-up-z) |
                /// [R](https://plot.ly/r/reference/#layout-scene-camera-up-z)
                public var z: Double?
            
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
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-camera-up) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-camera-up) |
            /// [R](https://plot.ly/r/reference/#layout-scene-camera-up)
            public var up: Up?
        
            /// Sets the (x,y,z) components of the 'center' camera vector This vector determines the translation (x,y,z) space about the center of this scene. 
            ///
            /// By default, there is no such translation.
            ///
            /// # Used By
            /// `Layout.Scene.Camera.center` |
            public struct Center: Encodable {
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-camera-center-x) |
                /// [Python](https://plot.ly/python/reference/#layout-scene-camera-center-x) |
                /// [R](https://plot.ly/r/reference/#layout-scene-camera-center-x)
                public var x: Double?
            
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-camera-center-y) |
                /// [Python](https://plot.ly/python/reference/#layout-scene-camera-center-y) |
                /// [R](https://plot.ly/r/reference/#layout-scene-camera-center-y)
                public var y: Double?
            
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-camera-center-z) |
                /// [Python](https://plot.ly/python/reference/#layout-scene-camera-center-z) |
                /// [R](https://plot.ly/r/reference/#layout-scene-camera-center-z)
                public var z: Double?
            
                public init(x: Double? = nil, y: Double? = nil, z: Double? = nil) {
                    self.x = x
                    self.y = y
                    self.z = z
                }
            }
            /// Sets the (x,y,z) components of the 'center' camera vector This vector determines the translation (x,y,z) space about the center of this scene. 
            ///
            /// By default, there is no such translation.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-camera-center) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-camera-center) |
            /// [R](https://plot.ly/r/reference/#layout-scene-camera-center)
            public var center: Center?
        
            /// Sets the (x,y,z) components of the 'eye' camera vector. 
            ///
            /// This vector determines the view point about the origin of this scene.
            ///
            /// # Used By
            /// `Layout.Scene.Camera.eye` |
            public struct Eye: Encodable {
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-camera-eye-x) |
                /// [Python](https://plot.ly/python/reference/#layout-scene-camera-eye-x) |
                /// [R](https://plot.ly/r/reference/#layout-scene-camera-eye-x)
                public var x: Double?
            
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-camera-eye-y) |
                /// [Python](https://plot.ly/python/reference/#layout-scene-camera-eye-y) |
                /// [R](https://plot.ly/r/reference/#layout-scene-camera-eye-y)
                public var y: Double?
            
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-camera-eye-z) |
                /// [Python](https://plot.ly/python/reference/#layout-scene-camera-eye-z) |
                /// [R](https://plot.ly/r/reference/#layout-scene-camera-eye-z)
                public var z: Double?
            
                public init(x: Double? = nil, y: Double? = nil, z: Double? = nil) {
                    self.x = x
                    self.y = y
                    self.z = z
                }
            }
            /// Sets the (x,y,z) components of the 'eye' camera vector. 
            ///
            /// This vector determines the view point about the origin of this scene.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-camera-eye) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-camera-eye) |
            /// [R](https://plot.ly/r/reference/#layout-scene-camera-eye)
            public var eye: Eye?
        
            /// # Used By
            /// `Layout.Scene.Camera.projection` |
            public struct Projection: Encodable {
                /// Sets the projection type. 
                ///
                /// The projection type could be either *perspective* or *orthographic*. The default is
                /// *perspective*.
                ///
                /// # Used By
                /// `Layout.Scene.Camera.Projection.type` |
                public enum `Type`: String, Encodable {
                    case perspective
                    case orthographic
                }
                /// Sets the projection type. 
                ///
                /// The projection type could be either *perspective* or *orthographic*. The default is
                /// *perspective*.
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-camera-projection-type) |
                /// [Python](https://plot.ly/python/reference/#layout-scene-camera-projection-type) |
                /// [R](https://plot.ly/r/reference/#layout-scene-camera-projection-type)
                public var type: `Type`?
            
                public init(type: `Type`? = nil) {
                    self.type = type
                }
            }
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-camera-projection) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-camera-projection) |
            /// [R](https://plot.ly/r/reference/#layout-scene-camera-projection)
            public var projection: Projection?
        
            public init(up: Up? = nil, center: Center? = nil, eye: Eye? = nil, projection: Projection? = nil) {
                self.up = up
                self.center = center
                self.eye = eye
                self.projection = projection
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-camera) |
        /// [Python](https://plot.ly/python/reference/#layout-scene-camera) |
        /// [R](https://plot.ly/r/reference/#layout-scene-camera)
        public var camera: Camera?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-domain) |
        /// [Python](https://plot.ly/python/reference/#layout-scene-domain) |
        /// [R](https://plot.ly/r/reference/#layout-scene-domain)
        public var domain: Shared.Domain?
    
        /// If *cube*, this scene's axes are drawn as a cube, regardless of the axes' ranges. 
        ///
        /// If *data*, this scene's axes are drawn in proportion with the axes' ranges. If *manual*, this
        /// scene's axes are drawn in proportion with the input of *aspectratio* (the default behavior if
        /// *aspectratio* is provided). If *auto*, this scene's axes are drawn using the results of *data*
        /// except when one axis is more than four times the size of the two others, where in that case the
        /// results of *cube* are used.
        ///
        /// # Used By
        /// `Layout.Scene.aspectMode` |
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
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-aspectmode) |
        /// [Python](https://plot.ly/python/reference/#layout-scene-aspectmode) |
        /// [R](https://plot.ly/r/reference/#layout-scene-aspectmode)
        public var aspectMode: AspectMode?
    
        /// Sets this scene's axis aspectratio.
        ///
        /// # Used By
        /// `Layout.Scene.aspectRatio` |
        public struct AspectRatio: Encodable {
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-aspectratio-x) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-aspectratio-x) |
            /// [R](https://plot.ly/r/reference/#layout-scene-aspectratio-x)
            public var x: Double?
        
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-aspectratio-y) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-aspectratio-y) |
            /// [R](https://plot.ly/r/reference/#layout-scene-aspectratio-y)
            public var y: Double?
        
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-aspectratio-z) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-aspectratio-z) |
            /// [R](https://plot.ly/r/reference/#layout-scene-aspectratio-z)
            public var z: Double?
        
            public init(x: Double? = nil, y: Double? = nil, z: Double? = nil) {
                self.x = x
                self.y = y
                self.z = z
            }
        }
        /// Sets this scene's axis aspectratio.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-aspectratio) |
        /// [Python](https://plot.ly/python/reference/#layout-scene-aspectratio) |
        /// [R](https://plot.ly/r/reference/#layout-scene-aspectratio)
        public var aspectRatio: AspectRatio?
    
        /// # Used By
        /// `Layout.Scene.xAxis` |
        public struct XAxis: Encodable {
            /// A single toggle to hide the axis while preserving interaction like dragging. 
            ///
            /// Default is true when a cheater plot is present on the axis, otherwise false
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-visible) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-visible) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-visible)
            public var visible: Bool?
        
            /// Sets whether or not spikes starting from data points to this axis' wall are shown on hover.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-showspikes) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-showspikes) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-showspikes)
            public var showSpikes: Bool?
        
            /// Sets whether or not spikes extending from the projection data points to this axis' wall boundaries are shown on hover.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-spikesides) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-spikesides) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-spikesides)
            public var spikeSides: Bool?
        
            /// Sets the thickness (in px) of the spikes.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-spikethickness) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-spikethickness) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-spikethickness)
            public var spikeThickness: Double?
        
            /// Sets the color of the spikes.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-spikecolor) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-spikecolor) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-spikecolor)
            public var spikeColor: Color?
        
            /// Sets whether or not this axis' wall has a background color.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-showbackground) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-showbackground) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-showbackground)
            public var showBackground: Bool?
        
            /// Sets the background color of this axis' wall.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-backgroundcolor) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-backgroundcolor) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-backgroundcolor)
            public var backgroundColor: Color?
        
            /// Sets whether or not this axis is labeled
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-showaxeslabels) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-showaxeslabels) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-showaxeslabels)
            public var showAxesLabels: Bool?
        
            /// Sets default for all colors associated with this axis all at once: line, font, tick, and grid colors. 
            ///
            /// Grid color is lightened by blending this with the plot background Individual pieces can override
            /// this.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-color) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-color) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-color)
            public var color: Color?
        
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
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-categoryorder) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-categoryorder) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-categoryorder)
            public var categoryOrder: Shared.CategoryOrder?
        
            /// Sets the order in which categories on this axis appear. 
            ///
            /// Only has an effect if `categoryorder` is set to *array*. Used with `categoryorder`.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-categoryarray) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-categoryarray) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-categoryarray)
            public var categoryArray: [Double]?
        
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-title) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-title) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-title)
            public var title: Shared.Title?
        
            /// Sets the axis type. 
            ///
            /// By default, plotly attempts to determined the axis type by looking into the data of the traces
            /// that referenced the axis in question.
            ///
            /// # Used By
            /// `Layout.Scene.XAxis.type` |
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
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-type) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-type) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-type)
            public var type: `Type`?
        
            /// Determines whether or not the range of this axis is computed in relation to the input data. 
            ///
            /// See `rangemode` for more info. If `range` is provided, then `autorange` is set to *false*.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-autorange) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-autorange) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-autorange)
            public var autoRange: Shared.AutoRange?
        
            /// If *normal*, the range is computed in relation to the extrema of the input data. 
            ///
            /// If *tozero*`, the range extends to 0, regardless of the input data If *nonnegative*, the range
            /// is non-negative, regardless of the input data. Applies only to linear axes.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-rangemode) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-rangemode) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-rangemode)
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
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-range) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-range) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-range)
            public var range: InfoArray?
        
            /// Sets the tick mode for this axis. 
            ///
            /// If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is
            /// determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value
            /// if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via
            /// `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is
            /// provided).
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-tickmode) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-tickmode) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-tickmode)
            public var tickMode: Shared.TickMode?
        
            /// Specifies the maximum number of ticks for the particular axis. 
            ///
            /// The actual number of ticks will be chosen automatically to be less than or equal to `nticks`.
            /// Has an effect only if `tickmode` is set to *auto*.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-nticks) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-nticks) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-nticks)
            public var numTicks: Int?
        
            /// Sets the placement of the first tick on this axis. 
            ///
            /// Use with `dtick`. If the axis `type` is *log*, then you must take the log of your starting tick
            /// (e.g. to set the starting tick to 100, set the `tick0` to 2) except when `dtick`=*L<f>* (see
            /// `dtick` for more info). If the axis `type` is *date*, it should be a date string, like date
            /// data. If the axis `type` is *category*, it should be a number, using the scale where each
            /// category is assigned a serial number from zero in the order it appears.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-tick0) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-tick0) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-tick0)
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
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-dtick) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-dtick) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-dtick)
            public var dTick: Anything?
        
            /// Sets the values at which ticks on this axis appear. 
            ///
            /// Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-tickvals) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-tickvals) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-tickvals)
            public var tickValues: [Double]?
        
            /// Sets the text displayed at the ticks position via `tickvals`. 
            ///
            /// Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-ticktext) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-ticktext) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-ticktext)
            public var tickText: [Double]?
        
            /// Determines whether ticks are drawn or not. 
            ///
            /// If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside
            /// (inside) the axis lines.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-ticks) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-ticks) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-ticks)
            public var ticks: Shared.Ticks?
        
            /// Determines if the axis lines or/and ticks are mirrored to the opposite side of the plotting area. 
            ///
            /// If *true*, the axis lines are mirrored. If *ticks*, the axis lines and ticks are mirrored. If
            /// *false*, mirroring is disable. If *all*, axis lines are mirrored on all shared-axes subplots. If
            /// *allticks*, axis lines and ticks are mirrored on all shared-axes subplots.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-mirror) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-mirror) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-mirror)
            public var mirror: Shared.Mirror?
        
            /// Sets the tick length (in px).
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-ticklen) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-ticklen) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-ticklen)
            public var tickLength: Double?
        
            /// Sets the tick width (in px).
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-tickwidth) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-tickwidth) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-tickwidth)
            public var tickWidth: Double?
        
            /// Sets the tick color.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-tickcolor) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-tickcolor) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-tickcolor)
            public var tickColor: Color?
        
            /// Determines whether or not the tick labels are drawn.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-showticklabels) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-showticklabels) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-showticklabels)
            public var showTickLabels: Bool?
        
            /// Sets the tick font.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-tickfont) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-tickfont) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-tickfont)
            public var tickFont: Shared.Font?
        
            /// Sets the angle of the tick labels with respect to the horizontal. 
            ///
            /// For example, a `tickangle` of -90 draws the tick labels vertically.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-tickangle) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-tickangle) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-tickangle)
            public var tickAngle: Angle?
        
            /// Sets a tick label prefix.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-tickprefix) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-tickprefix) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-tickprefix)
            public var tickPrefix: String?
        
            /// If *all*, all tick labels are displayed with a prefix. 
            ///
            /// If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is
            /// displayed with a suffix. If *none*, tick prefixes are hidden.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-showtickprefix) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-showtickprefix) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-showtickprefix)
            public var showTickPrefix: Shared.ShowTickPrefix?
        
            /// Sets a tick label suffix.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-ticksuffix) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-ticksuffix) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-ticksuffix)
            public var tickSuffix: String?
        
            /// Same as `showtickprefix` but for tick suffixes.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-showticksuffix) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-showticksuffix) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-showticksuffix)
            public var showTickSuffix: Shared.ShowTickSuffix?
        
            /// If *all*, all exponents are shown besides their significands. 
            ///
            /// If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the
            /// last tick is shown. If *none*, no exponents appear.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-showexponent) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-showexponent) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-showexponent)
            public var showExponent: Shared.ShowExponent?
        
            /// Determines a formatting rule for the tick exponents. 
            ///
            /// For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*,
            /// 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-exponentformat) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-exponentformat) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-exponentformat)
            public var exponentFormat: Shared.ExponentFormat?
        
            /// If "true", even 4-digit integers are separated
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-separatethousands) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-separatethousands) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-separatethousands)
            public var separatethousands: Bool?
        
            /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to those in Python. 
            ///
            /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
            /// And for dates see:
            /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
            /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
            /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-tickformat) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-tickformat) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-tickformat)
            public var tickFormat: String?
        
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-tickformatstops) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-tickformatstops) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-tickformatstops)
            public var tickFormatStops: [Shared.TickFormatStop]?
        
            /// Sets the hover text formatting rule using d3 formatting mini-languages which are very similar to those in Python. 
            ///
            /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
            /// And for dates see:
            /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
            /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
            /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-hoverformat) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-hoverformat) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-hoverformat)
            public var hoverFormat: String?
        
            /// Determines whether or not a line bounding this axis is drawn.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-showline) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-showline) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-showline)
            public var showLine: Bool?
        
            /// Sets the axis line color.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-linecolor) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-linecolor) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-linecolor)
            public var lineColor: Color?
        
            /// Sets the width (in px) of the axis line.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-linewidth) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-linewidth) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-linewidth)
            public var lineWidth: Double?
        
            /// Determines whether or not grid lines are drawn. 
            ///
            /// If *true*, the grid lines are drawn at every tick mark.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-showgrid) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-showgrid) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-showgrid)
            public var showGrid: Bool?
        
            /// Sets the color of the grid lines.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-gridcolor) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-gridcolor) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-gridcolor)
            public var gridColor: Color?
        
            /// Sets the width (in px) of the grid lines.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-gridwidth) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-gridwidth) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-gridwidth)
            public var gridWidth: Double?
        
            /// Determines whether or not a line is drawn at along the 0 value of this axis. 
            ///
            /// If *true*, the zero line is drawn on top of the grid lines.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-zeroline) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-zeroline) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-zeroline)
            public var zeroLine: Bool?
        
            /// Sets the line color of the zero line.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-zerolinecolor) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-zerolinecolor) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-zerolinecolor)
            public var zeroLineColor: Color?
        
            /// Sets the width (in px) of the zero line.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-zerolinewidth) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-zerolinewidth) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-zerolinewidth)
            public var zeroLineWidth: Double?
        
            /// Sets the calendar system to use for `range` and `tick0` if this is a date axis. 
            ///
            /// This does not set the calendar for interpreting data on this axis, that's specified in the trace
            /// or via the global `layout.calendar`
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis-calendar) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis-calendar) |
            /// [R](https://plot.ly/r/reference/#layout-scene-xaxis-calendar)
            public var calendar: Shared.Calendar?
        
            /// Plotly compatible property encoding
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
                case separatethousands
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
            
            public init(visible: Bool? = nil, showSpikes: Bool? = nil, spikeSides: Bool? = nil, spikeThickness: Double? = nil, spikeColor: Color? = nil, showBackground: Bool? = nil, backgroundColor: Color? = nil, showAxesLabels: Bool? = nil, color: Color? = nil, categoryOrder: Shared.CategoryOrder? = nil, categoryArray: [Double]? = nil, title: Shared.Title? = nil, type: `Type`? = nil, autoRange: Shared.AutoRange? = nil, rangeMode: Shared.RangeMode? = nil, range: InfoArray? = nil, tickMode: Shared.TickMode? = nil, numTicks: Int? = nil, tick0: Anything? = nil, dTick: Anything? = nil, tickValues: [Double]? = nil, tickText: [Double]? = nil, ticks: Shared.Ticks? = nil, mirror: Shared.Mirror? = nil, tickLength: Double? = nil, tickWidth: Double? = nil, tickColor: Color? = nil, showTickLabels: Bool? = nil, tickFont: Shared.Font? = nil, tickAngle: Angle? = nil, tickPrefix: String? = nil, showTickPrefix: Shared.ShowTickPrefix? = nil, tickSuffix: String? = nil, showTickSuffix: Shared.ShowTickSuffix? = nil, showExponent: Shared.ShowExponent? = nil, exponentFormat: Shared.ExponentFormat? = nil, separatethousands: Bool? = nil, tickFormat: String? = nil, tickFormatStops: [Shared.TickFormatStop]? = nil, hoverFormat: String? = nil, showLine: Bool? = nil, lineColor: Color? = nil, lineWidth: Double? = nil, showGrid: Bool? = nil, gridColor: Color? = nil, gridWidth: Double? = nil, zeroLine: Bool? = nil, zeroLineColor: Color? = nil, zeroLineWidth: Double? = nil, calendar: Shared.Calendar? = nil) {
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
                self.calendar = calendar
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-xaxis) |
        /// [Python](https://plot.ly/python/reference/#layout-scene-xaxis) |
        /// [R](https://plot.ly/r/reference/#layout-scene-xaxis)
        public var xAxis: XAxis?
    
        /// # Used By
        /// `Layout.Scene.yAxis` |
        public struct YAxis: Encodable {
            /// A single toggle to hide the axis while preserving interaction like dragging. 
            ///
            /// Default is true when a cheater plot is present on the axis, otherwise false
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-visible) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-visible) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-visible)
            public var visible: Bool?
        
            /// Sets whether or not spikes starting from data points to this axis' wall are shown on hover.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-showspikes) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-showspikes) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-showspikes)
            public var showSpikes: Bool?
        
            /// Sets whether or not spikes extending from the projection data points to this axis' wall boundaries are shown on hover.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-spikesides) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-spikesides) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-spikesides)
            public var spikeSides: Bool?
        
            /// Sets the thickness (in px) of the spikes.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-spikethickness) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-spikethickness) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-spikethickness)
            public var spikeThickness: Double?
        
            /// Sets the color of the spikes.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-spikecolor) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-spikecolor) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-spikecolor)
            public var spikeColor: Color?
        
            /// Sets whether or not this axis' wall has a background color.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-showbackground) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-showbackground) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-showbackground)
            public var showBackground: Bool?
        
            /// Sets the background color of this axis' wall.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-backgroundcolor) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-backgroundcolor) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-backgroundcolor)
            public var backgroundColor: Color?
        
            /// Sets whether or not this axis is labeled
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-showaxeslabels) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-showaxeslabels) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-showaxeslabels)
            public var showAxesLabels: Bool?
        
            /// Sets default for all colors associated with this axis all at once: line, font, tick, and grid colors. 
            ///
            /// Grid color is lightened by blending this with the plot background Individual pieces can override
            /// this.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-color) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-color) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-color)
            public var color: Color?
        
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
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-categoryorder) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-categoryorder) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-categoryorder)
            public var categoryOrder: Shared.CategoryOrder?
        
            /// Sets the order in which categories on this axis appear. 
            ///
            /// Only has an effect if `categoryorder` is set to *array*. Used with `categoryorder`.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-categoryarray) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-categoryarray) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-categoryarray)
            public var categoryArray: [Double]?
        
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-title) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-title) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-title)
            public var title: Shared.Title?
        
            /// Sets the axis type. 
            ///
            /// By default, plotly attempts to determined the axis type by looking into the data of the traces
            /// that referenced the axis in question.
            ///
            /// # Used By
            /// `Layout.Scene.YAxis.type` |
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
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-type) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-type) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-type)
            public var type: `Type`?
        
            /// Determines whether or not the range of this axis is computed in relation to the input data. 
            ///
            /// See `rangemode` for more info. If `range` is provided, then `autorange` is set to *false*.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-autorange) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-autorange) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-autorange)
            public var autoRange: Shared.AutoRange?
        
            /// If *normal*, the range is computed in relation to the extrema of the input data. 
            ///
            /// If *tozero*`, the range extends to 0, regardless of the input data If *nonnegative*, the range
            /// is non-negative, regardless of the input data. Applies only to linear axes.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-rangemode) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-rangemode) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-rangemode)
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
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-range) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-range) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-range)
            public var range: InfoArray?
        
            /// Sets the tick mode for this axis. 
            ///
            /// If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is
            /// determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value
            /// if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via
            /// `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is
            /// provided).
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-tickmode) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-tickmode) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-tickmode)
            public var tickMode: Shared.TickMode?
        
            /// Specifies the maximum number of ticks for the particular axis. 
            ///
            /// The actual number of ticks will be chosen automatically to be less than or equal to `nticks`.
            /// Has an effect only if `tickmode` is set to *auto*.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-nticks) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-nticks) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-nticks)
            public var numTicks: Int?
        
            /// Sets the placement of the first tick on this axis. 
            ///
            /// Use with `dtick`. If the axis `type` is *log*, then you must take the log of your starting tick
            /// (e.g. to set the starting tick to 100, set the `tick0` to 2) except when `dtick`=*L<f>* (see
            /// `dtick` for more info). If the axis `type` is *date*, it should be a date string, like date
            /// data. If the axis `type` is *category*, it should be a number, using the scale where each
            /// category is assigned a serial number from zero in the order it appears.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-tick0) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-tick0) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-tick0)
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
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-dtick) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-dtick) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-dtick)
            public var dTick: Anything?
        
            /// Sets the values at which ticks on this axis appear. 
            ///
            /// Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-tickvals) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-tickvals) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-tickvals)
            public var tickValues: [Double]?
        
            /// Sets the text displayed at the ticks position via `tickvals`. 
            ///
            /// Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-ticktext) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-ticktext) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-ticktext)
            public var tickText: [Double]?
        
            /// Determines whether ticks are drawn or not. 
            ///
            /// If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside
            /// (inside) the axis lines.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-ticks) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-ticks) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-ticks)
            public var ticks: Shared.Ticks?
        
            /// Determines if the axis lines or/and ticks are mirrored to the opposite side of the plotting area. 
            ///
            /// If *true*, the axis lines are mirrored. If *ticks*, the axis lines and ticks are mirrored. If
            /// *false*, mirroring is disable. If *all*, axis lines are mirrored on all shared-axes subplots. If
            /// *allticks*, axis lines and ticks are mirrored on all shared-axes subplots.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-mirror) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-mirror) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-mirror)
            public var mirror: Shared.Mirror?
        
            /// Sets the tick length (in px).
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-ticklen) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-ticklen) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-ticklen)
            public var tickLength: Double?
        
            /// Sets the tick width (in px).
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-tickwidth) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-tickwidth) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-tickwidth)
            public var tickWidth: Double?
        
            /// Sets the tick color.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-tickcolor) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-tickcolor) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-tickcolor)
            public var tickColor: Color?
        
            /// Determines whether or not the tick labels are drawn.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-showticklabels) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-showticklabels) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-showticklabels)
            public var showTickLabels: Bool?
        
            /// Sets the tick font.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-tickfont) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-tickfont) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-tickfont)
            public var tickFont: Shared.Font?
        
            /// Sets the angle of the tick labels with respect to the horizontal. 
            ///
            /// For example, a `tickangle` of -90 draws the tick labels vertically.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-tickangle) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-tickangle) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-tickangle)
            public var tickAngle: Angle?
        
            /// Sets a tick label prefix.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-tickprefix) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-tickprefix) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-tickprefix)
            public var tickPrefix: String?
        
            /// If *all*, all tick labels are displayed with a prefix. 
            ///
            /// If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is
            /// displayed with a suffix. If *none*, tick prefixes are hidden.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-showtickprefix) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-showtickprefix) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-showtickprefix)
            public var showTickPrefix: Shared.ShowTickPrefix?
        
            /// Sets a tick label suffix.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-ticksuffix) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-ticksuffix) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-ticksuffix)
            public var tickSuffix: String?
        
            /// Same as `showtickprefix` but for tick suffixes.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-showticksuffix) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-showticksuffix) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-showticksuffix)
            public var showTickSuffix: Shared.ShowTickSuffix?
        
            /// If *all*, all exponents are shown besides their significands. 
            ///
            /// If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the
            /// last tick is shown. If *none*, no exponents appear.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-showexponent) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-showexponent) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-showexponent)
            public var showExponent: Shared.ShowExponent?
        
            /// Determines a formatting rule for the tick exponents. 
            ///
            /// For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*,
            /// 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-exponentformat) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-exponentformat) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-exponentformat)
            public var exponentFormat: Shared.ExponentFormat?
        
            /// If "true", even 4-digit integers are separated
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-separatethousands) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-separatethousands) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-separatethousands)
            public var separatethousands: Bool?
        
            /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to those in Python. 
            ///
            /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
            /// And for dates see:
            /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
            /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
            /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-tickformat) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-tickformat) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-tickformat)
            public var tickFormat: String?
        
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-tickformatstops) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-tickformatstops) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-tickformatstops)
            public var tickFormatStops: [Shared.TickFormatStop]?
        
            /// Sets the hover text formatting rule using d3 formatting mini-languages which are very similar to those in Python. 
            ///
            /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
            /// And for dates see:
            /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
            /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
            /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-hoverformat) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-hoverformat) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-hoverformat)
            public var hoverFormat: String?
        
            /// Determines whether or not a line bounding this axis is drawn.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-showline) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-showline) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-showline)
            public var showLine: Bool?
        
            /// Sets the axis line color.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-linecolor) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-linecolor) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-linecolor)
            public var lineColor: Color?
        
            /// Sets the width (in px) of the axis line.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-linewidth) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-linewidth) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-linewidth)
            public var lineWidth: Double?
        
            /// Determines whether or not grid lines are drawn. 
            ///
            /// If *true*, the grid lines are drawn at every tick mark.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-showgrid) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-showgrid) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-showgrid)
            public var showGrid: Bool?
        
            /// Sets the color of the grid lines.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-gridcolor) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-gridcolor) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-gridcolor)
            public var gridColor: Color?
        
            /// Sets the width (in px) of the grid lines.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-gridwidth) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-gridwidth) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-gridwidth)
            public var gridWidth: Double?
        
            /// Determines whether or not a line is drawn at along the 0 value of this axis. 
            ///
            /// If *true*, the zero line is drawn on top of the grid lines.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-zeroline) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-zeroline) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-zeroline)
            public var zeroLine: Bool?
        
            /// Sets the line color of the zero line.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-zerolinecolor) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-zerolinecolor) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-zerolinecolor)
            public var zeroLineColor: Color?
        
            /// Sets the width (in px) of the zero line.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-zerolinewidth) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-zerolinewidth) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-zerolinewidth)
            public var zeroLineWidth: Double?
        
            /// Sets the calendar system to use for `range` and `tick0` if this is a date axis. 
            ///
            /// This does not set the calendar for interpreting data on this axis, that's specified in the trace
            /// or via the global `layout.calendar`
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis-calendar) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis-calendar) |
            /// [R](https://plot.ly/r/reference/#layout-scene-yaxis-calendar)
            public var calendar: Shared.Calendar?
        
            /// Plotly compatible property encoding
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
                case separatethousands
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
            
            public init(visible: Bool? = nil, showSpikes: Bool? = nil, spikeSides: Bool? = nil, spikeThickness: Double? = nil, spikeColor: Color? = nil, showBackground: Bool? = nil, backgroundColor: Color? = nil, showAxesLabels: Bool? = nil, color: Color? = nil, categoryOrder: Shared.CategoryOrder? = nil, categoryArray: [Double]? = nil, title: Shared.Title? = nil, type: `Type`? = nil, autoRange: Shared.AutoRange? = nil, rangeMode: Shared.RangeMode? = nil, range: InfoArray? = nil, tickMode: Shared.TickMode? = nil, numTicks: Int? = nil, tick0: Anything? = nil, dTick: Anything? = nil, tickValues: [Double]? = nil, tickText: [Double]? = nil, ticks: Shared.Ticks? = nil, mirror: Shared.Mirror? = nil, tickLength: Double? = nil, tickWidth: Double? = nil, tickColor: Color? = nil, showTickLabels: Bool? = nil, tickFont: Shared.Font? = nil, tickAngle: Angle? = nil, tickPrefix: String? = nil, showTickPrefix: Shared.ShowTickPrefix? = nil, tickSuffix: String? = nil, showTickSuffix: Shared.ShowTickSuffix? = nil, showExponent: Shared.ShowExponent? = nil, exponentFormat: Shared.ExponentFormat? = nil, separatethousands: Bool? = nil, tickFormat: String? = nil, tickFormatStops: [Shared.TickFormatStop]? = nil, hoverFormat: String? = nil, showLine: Bool? = nil, lineColor: Color? = nil, lineWidth: Double? = nil, showGrid: Bool? = nil, gridColor: Color? = nil, gridWidth: Double? = nil, zeroLine: Bool? = nil, zeroLineColor: Color? = nil, zeroLineWidth: Double? = nil, calendar: Shared.Calendar? = nil) {
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
                self.calendar = calendar
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-yaxis) |
        /// [Python](https://plot.ly/python/reference/#layout-scene-yaxis) |
        /// [R](https://plot.ly/r/reference/#layout-scene-yaxis)
        public var yAxis: YAxis?
    
        /// # Used By
        /// `Layout.Scene.zAxis` |
        public struct ZAxis: Encodable {
            /// A single toggle to hide the axis while preserving interaction like dragging. 
            ///
            /// Default is true when a cheater plot is present on the axis, otherwise false
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-visible) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-visible) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-visible)
            public var visible: Bool?
        
            /// Sets whether or not spikes starting from data points to this axis' wall are shown on hover.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-showspikes) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-showspikes) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-showspikes)
            public var showSpikes: Bool?
        
            /// Sets whether or not spikes extending from the projection data points to this axis' wall boundaries are shown on hover.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-spikesides) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-spikesides) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-spikesides)
            public var spikeSides: Bool?
        
            /// Sets the thickness (in px) of the spikes.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-spikethickness) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-spikethickness) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-spikethickness)
            public var spikeThickness: Double?
        
            /// Sets the color of the spikes.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-spikecolor) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-spikecolor) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-spikecolor)
            public var spikeColor: Color?
        
            /// Sets whether or not this axis' wall has a background color.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-showbackground) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-showbackground) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-showbackground)
            public var showBackground: Bool?
        
            /// Sets the background color of this axis' wall.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-backgroundcolor) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-backgroundcolor) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-backgroundcolor)
            public var backgroundColor: Color?
        
            /// Sets whether or not this axis is labeled
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-showaxeslabels) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-showaxeslabels) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-showaxeslabels)
            public var showAxesLabels: Bool?
        
            /// Sets default for all colors associated with this axis all at once: line, font, tick, and grid colors. 
            ///
            /// Grid color is lightened by blending this with the plot background Individual pieces can override
            /// this.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-color) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-color) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-color)
            public var color: Color?
        
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
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-categoryorder) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-categoryorder) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-categoryorder)
            public var categoryOrder: Shared.CategoryOrder?
        
            /// Sets the order in which categories on this axis appear. 
            ///
            /// Only has an effect if `categoryorder` is set to *array*. Used with `categoryorder`.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-categoryarray) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-categoryarray) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-categoryarray)
            public var categoryArray: [Double]?
        
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-title) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-title) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-title)
            public var title: Shared.Title?
        
            /// Sets the axis type. 
            ///
            /// By default, plotly attempts to determined the axis type by looking into the data of the traces
            /// that referenced the axis in question.
            ///
            /// # Used By
            /// `Layout.Scene.ZAxis.type` |
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
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-type) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-type) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-type)
            public var type: `Type`?
        
            /// Determines whether or not the range of this axis is computed in relation to the input data. 
            ///
            /// See `rangemode` for more info. If `range` is provided, then `autorange` is set to *false*.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-autorange) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-autorange) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-autorange)
            public var autoRange: Shared.AutoRange?
        
            /// If *normal*, the range is computed in relation to the extrema of the input data. 
            ///
            /// If *tozero*`, the range extends to 0, regardless of the input data If *nonnegative*, the range
            /// is non-negative, regardless of the input data. Applies only to linear axes.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-rangemode) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-rangemode) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-rangemode)
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
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-range) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-range) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-range)
            public var range: InfoArray?
        
            /// Sets the tick mode for this axis. 
            ///
            /// If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is
            /// determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value
            /// if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via
            /// `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is
            /// provided).
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-tickmode) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-tickmode) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-tickmode)
            public var tickMode: Shared.TickMode?
        
            /// Specifies the maximum number of ticks for the particular axis. 
            ///
            /// The actual number of ticks will be chosen automatically to be less than or equal to `nticks`.
            /// Has an effect only if `tickmode` is set to *auto*.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-nticks) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-nticks) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-nticks)
            public var numTicks: Int?
        
            /// Sets the placement of the first tick on this axis. 
            ///
            /// Use with `dtick`. If the axis `type` is *log*, then you must take the log of your starting tick
            /// (e.g. to set the starting tick to 100, set the `tick0` to 2) except when `dtick`=*L<f>* (see
            /// `dtick` for more info). If the axis `type` is *date*, it should be a date string, like date
            /// data. If the axis `type` is *category*, it should be a number, using the scale where each
            /// category is assigned a serial number from zero in the order it appears.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-tick0) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-tick0) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-tick0)
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
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-dtick) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-dtick) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-dtick)
            public var dTick: Anything?
        
            /// Sets the values at which ticks on this axis appear. 
            ///
            /// Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-tickvals) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-tickvals) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-tickvals)
            public var tickValues: [Double]?
        
            /// Sets the text displayed at the ticks position via `tickvals`. 
            ///
            /// Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-ticktext) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-ticktext) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-ticktext)
            public var tickText: [Double]?
        
            /// Determines whether ticks are drawn or not. 
            ///
            /// If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside
            /// (inside) the axis lines.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-ticks) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-ticks) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-ticks)
            public var ticks: Shared.Ticks?
        
            /// Determines if the axis lines or/and ticks are mirrored to the opposite side of the plotting area. 
            ///
            /// If *true*, the axis lines are mirrored. If *ticks*, the axis lines and ticks are mirrored. If
            /// *false*, mirroring is disable. If *all*, axis lines are mirrored on all shared-axes subplots. If
            /// *allticks*, axis lines and ticks are mirrored on all shared-axes subplots.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-mirror) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-mirror) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-mirror)
            public var mirror: Shared.Mirror?
        
            /// Sets the tick length (in px).
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-ticklen) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-ticklen) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-ticklen)
            public var tickLength: Double?
        
            /// Sets the tick width (in px).
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-tickwidth) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-tickwidth) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-tickwidth)
            public var tickWidth: Double?
        
            /// Sets the tick color.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-tickcolor) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-tickcolor) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-tickcolor)
            public var tickColor: Color?
        
            /// Determines whether or not the tick labels are drawn.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-showticklabels) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-showticklabels) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-showticklabels)
            public var showTickLabels: Bool?
        
            /// Sets the tick font.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-tickfont) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-tickfont) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-tickfont)
            public var tickFont: Shared.Font?
        
            /// Sets the angle of the tick labels with respect to the horizontal. 
            ///
            /// For example, a `tickangle` of -90 draws the tick labels vertically.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-tickangle) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-tickangle) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-tickangle)
            public var tickAngle: Angle?
        
            /// Sets a tick label prefix.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-tickprefix) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-tickprefix) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-tickprefix)
            public var tickPrefix: String?
        
            /// If *all*, all tick labels are displayed with a prefix. 
            ///
            /// If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is
            /// displayed with a suffix. If *none*, tick prefixes are hidden.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-showtickprefix) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-showtickprefix) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-showtickprefix)
            public var showTickPrefix: Shared.ShowTickPrefix?
        
            /// Sets a tick label suffix.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-ticksuffix) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-ticksuffix) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-ticksuffix)
            public var tickSuffix: String?
        
            /// Same as `showtickprefix` but for tick suffixes.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-showticksuffix) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-showticksuffix) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-showticksuffix)
            public var showTickSuffix: Shared.ShowTickSuffix?
        
            /// If *all*, all exponents are shown besides their significands. 
            ///
            /// If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the
            /// last tick is shown. If *none*, no exponents appear.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-showexponent) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-showexponent) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-showexponent)
            public var showExponent: Shared.ShowExponent?
        
            /// Determines a formatting rule for the tick exponents. 
            ///
            /// For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*,
            /// 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-exponentformat) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-exponentformat) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-exponentformat)
            public var exponentFormat: Shared.ExponentFormat?
        
            /// If "true", even 4-digit integers are separated
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-separatethousands) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-separatethousands) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-separatethousands)
            public var separatethousands: Bool?
        
            /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to those in Python. 
            ///
            /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
            /// And for dates see:
            /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
            /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
            /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-tickformat) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-tickformat) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-tickformat)
            public var tickFormat: String?
        
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-tickformatstops) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-tickformatstops) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-tickformatstops)
            public var tickFormatStops: [Shared.TickFormatStop]?
        
            /// Sets the hover text formatting rule using d3 formatting mini-languages which are very similar to those in Python. 
            ///
            /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
            /// And for dates see:
            /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
            /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
            /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-hoverformat) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-hoverformat) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-hoverformat)
            public var hoverFormat: String?
        
            /// Determines whether or not a line bounding this axis is drawn.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-showline) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-showline) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-showline)
            public var showLine: Bool?
        
            /// Sets the axis line color.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-linecolor) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-linecolor) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-linecolor)
            public var lineColor: Color?
        
            /// Sets the width (in px) of the axis line.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-linewidth) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-linewidth) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-linewidth)
            public var lineWidth: Double?
        
            /// Determines whether or not grid lines are drawn. 
            ///
            /// If *true*, the grid lines are drawn at every tick mark.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-showgrid) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-showgrid) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-showgrid)
            public var showGrid: Bool?
        
            /// Sets the color of the grid lines.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-gridcolor) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-gridcolor) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-gridcolor)
            public var gridColor: Color?
        
            /// Sets the width (in px) of the grid lines.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-gridwidth) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-gridwidth) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-gridwidth)
            public var gridWidth: Double?
        
            /// Determines whether or not a line is drawn at along the 0 value of this axis. 
            ///
            /// If *true*, the zero line is drawn on top of the grid lines.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-zeroline) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-zeroline) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-zeroline)
            public var zeroLine: Bool?
        
            /// Sets the line color of the zero line.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-zerolinecolor) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-zerolinecolor) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-zerolinecolor)
            public var zeroLineColor: Color?
        
            /// Sets the width (in px) of the zero line.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-zerolinewidth) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-zerolinewidth) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-zerolinewidth)
            public var zeroLineWidth: Double?
        
            /// Sets the calendar system to use for `range` and `tick0` if this is a date axis. 
            ///
            /// This does not set the calendar for interpreting data on this axis, that's specified in the trace
            /// or via the global `layout.calendar`
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis-calendar) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis-calendar) |
            /// [R](https://plot.ly/r/reference/#layout-scene-zaxis-calendar)
            public var calendar: Shared.Calendar?
        
            /// Plotly compatible property encoding
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
                case separatethousands
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
            
            public init(visible: Bool? = nil, showSpikes: Bool? = nil, spikeSides: Bool? = nil, spikeThickness: Double? = nil, spikeColor: Color? = nil, showBackground: Bool? = nil, backgroundColor: Color? = nil, showAxesLabels: Bool? = nil, color: Color? = nil, categoryOrder: Shared.CategoryOrder? = nil, categoryArray: [Double]? = nil, title: Shared.Title? = nil, type: `Type`? = nil, autoRange: Shared.AutoRange? = nil, rangeMode: Shared.RangeMode? = nil, range: InfoArray? = nil, tickMode: Shared.TickMode? = nil, numTicks: Int? = nil, tick0: Anything? = nil, dTick: Anything? = nil, tickValues: [Double]? = nil, tickText: [Double]? = nil, ticks: Shared.Ticks? = nil, mirror: Shared.Mirror? = nil, tickLength: Double? = nil, tickWidth: Double? = nil, tickColor: Color? = nil, showTickLabels: Bool? = nil, tickFont: Shared.Font? = nil, tickAngle: Angle? = nil, tickPrefix: String? = nil, showTickPrefix: Shared.ShowTickPrefix? = nil, tickSuffix: String? = nil, showTickSuffix: Shared.ShowTickSuffix? = nil, showExponent: Shared.ShowExponent? = nil, exponentFormat: Shared.ExponentFormat? = nil, separatethousands: Bool? = nil, tickFormat: String? = nil, tickFormatStops: [Shared.TickFormatStop]? = nil, hoverFormat: String? = nil, showLine: Bool? = nil, lineColor: Color? = nil, lineWidth: Double? = nil, showGrid: Bool? = nil, gridColor: Color? = nil, gridWidth: Double? = nil, zeroLine: Bool? = nil, zeroLineColor: Color? = nil, zeroLineWidth: Double? = nil, calendar: Shared.Calendar? = nil) {
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
                self.calendar = calendar
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-zaxis) |
        /// [Python](https://plot.ly/python/reference/#layout-scene-zaxis) |
        /// [R](https://plot.ly/r/reference/#layout-scene-zaxis)
        public var zAxis: ZAxis?
    
        /// Determines the mode of drag interactions for this scene.
        ///
        /// # Used By
        /// `Layout.Scene.dragMode` |
        public enum DragMode: Encodable {
            case orbit
            case turntable
            case zoom
            case pan
            case `false`
            
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
                case .`false`:
                    try container.encode(false)
                }
            }
        }
        /// Determines the mode of drag interactions for this scene.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-dragmode) |
        /// [Python](https://plot.ly/python/reference/#layout-scene-dragmode) |
        /// [R](https://plot.ly/r/reference/#layout-scene-dragmode)
        public var dragMode: DragMode?
    
        /// Determines the mode of hover interactions for this scene.
        ///
        /// # Used By
        /// `Layout.Scene.hoverMode` |
        public enum HoverMode: Encodable {
            case closest
            case `false`
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.singleValueContainer()
                switch self {
                case .closest:
                    try container.encode("closest")
                case .`false`:
                    try container.encode(false)
                }
            }
        }
        /// Determines the mode of hover interactions for this scene.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-hovermode) |
        /// [Python](https://plot.ly/python/reference/#layout-scene-hovermode) |
        /// [R](https://plot.ly/r/reference/#layout-scene-hovermode)
        public var hoverMode: HoverMode?
    
        /// Controls persistence of user-driven changes in camera attributes. 
        ///
        /// Defaults to `layout.uirevision`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-uirevision) |
        /// [Python](https://plot.ly/python/reference/#layout-scene-uirevision) |
        /// [R](https://plot.ly/r/reference/#layout-scene-uirevision)
        public var uiRevision: Anything?
    
        /// # Used By
        /// `Layout.Scene.annotations` |
        public struct Annotation: Encodable {
            /// Determines whether or not this annotation is visible.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-annotations-items-annotation-visible) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-annotations-items-annotation-visible) |
            /// [R](https://plot.ly/r/reference/#layout-scene-annotations-items-annotation-visible)
            public var visible: Bool?
        
            /// Sets the annotation's x position.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-annotations-items-annotation-x) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-annotations-items-annotation-x) |
            /// [R](https://plot.ly/r/reference/#layout-scene-annotations-items-annotation-x)
            public var x: Anything?
        
            /// Sets the annotation's y position.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-annotations-items-annotation-y) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-annotations-items-annotation-y) |
            /// [R](https://plot.ly/r/reference/#layout-scene-annotations-items-annotation-y)
            public var y: Anything?
        
            /// Sets the annotation's z position.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-annotations-items-annotation-z) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-annotations-items-annotation-z) |
            /// [R](https://plot.ly/r/reference/#layout-scene-annotations-items-annotation-z)
            public var z: Anything?
        
            /// Sets the x component of the arrow tail about the arrow head (in pixels).
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-annotations-items-annotation-ax) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-annotations-items-annotation-ax) |
            /// [R](https://plot.ly/r/reference/#layout-scene-annotations-items-annotation-ax)
            public var ax: Double?
        
            /// Sets the y component of the arrow tail about the arrow head (in pixels).
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-annotations-items-annotation-ay) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-annotations-items-annotation-ay) |
            /// [R](https://plot.ly/r/reference/#layout-scene-annotations-items-annotation-ay)
            public var ay: Double?
        
            /// Sets the text box's horizontal position anchor This anchor binds the `x` position to the *left*, *center* or *right* of the annotation. 
            ///
            /// For example, if `x` is set to 1, `xref` to *paper* and `xanchor` to *right* then the right-most
            /// portion of the annotation lines up with the right-most edge of the plotting area. If *auto*, the
            /// anchor is equivalent to *center* for data-referenced annotations or if there is an arrow,
            /// whereas for paper-referenced with no arrow, the anchor picked corresponds to the closest side.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-annotations-items-annotation-xanchor) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-annotations-items-annotation-xanchor) |
            /// [R](https://plot.ly/r/reference/#layout-scene-annotations-items-annotation-xanchor)
            public var xAnchor: Shared.XAutoAnchor?
        
            /// Shifts the position of the whole annotation and arrow to the right (positive) or left (negative) by this many pixels.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-annotations-items-annotation-xshift) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-annotations-items-annotation-xshift) |
            /// [R](https://plot.ly/r/reference/#layout-scene-annotations-items-annotation-xshift)
            public var xShift: Double?
        
            /// Sets the text box's vertical position anchor This anchor binds the `y` position to the *top*, *middle* or *bottom* of the annotation. 
            ///
            /// For example, if `y` is set to 1, `yref` to *paper* and `yanchor` to *top* then the top-most
            /// portion of the annotation lines up with the top-most edge of the plotting area. If *auto*, the
            /// anchor is equivalent to *middle* for data-referenced annotations or if there is an arrow,
            /// whereas for paper-referenced with no arrow, the anchor picked corresponds to the closest side.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-annotations-items-annotation-yanchor) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-annotations-items-annotation-yanchor) |
            /// [R](https://plot.ly/r/reference/#layout-scene-annotations-items-annotation-yanchor)
            public var yAnchor: Shared.YAutoAnchor?
        
            /// Shifts the position of the whole annotation and arrow up (positive) or down (negative) by this many pixels.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-annotations-items-annotation-yshift) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-annotations-items-annotation-yshift) |
            /// [R](https://plot.ly/r/reference/#layout-scene-annotations-items-annotation-yshift)
            public var yShift: Double?
        
            /// Sets the text associated with this annotation. 
            ///
            /// Plotly uses a subset of HTML tags to do things like newline (<br>), bold (<b></b>), italics
            /// (<i></i>), hyperlinks (<a href='...'></a>). Tags <em>, <sup>, <sub> <span> are also supported.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-annotations-items-annotation-text) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-annotations-items-annotation-text) |
            /// [R](https://plot.ly/r/reference/#layout-scene-annotations-items-annotation-text)
            public var text: String?
        
            /// Sets the angle at which the `text` is drawn with respect to the horizontal.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-annotations-items-annotation-textangle) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-annotations-items-annotation-textangle) |
            /// [R](https://plot.ly/r/reference/#layout-scene-annotations-items-annotation-textangle)
            public var textAngle: Angle?
        
            /// Sets the annotation text font.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-annotations-items-annotation-font) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-annotations-items-annotation-font) |
            /// [R](https://plot.ly/r/reference/#layout-scene-annotations-items-annotation-font)
            public var font: Shared.Font?
        
            /// Sets an explicit width for the text box. 
            ///
            /// null (default) lets the text set the box width. Wider text will be clipped. There is no
            /// automatic wrapping; use <br> to start a new line.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-annotations-items-annotation-width) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-annotations-items-annotation-width) |
            /// [R](https://plot.ly/r/reference/#layout-scene-annotations-items-annotation-width)
            public var width: Double?
        
            /// Sets an explicit height for the text box. 
            ///
            /// null (default) lets the text set the box height. Taller text will be clipped.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-annotations-items-annotation-height) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-annotations-items-annotation-height) |
            /// [R](https://plot.ly/r/reference/#layout-scene-annotations-items-annotation-height)
            public var height: Double?
        
            /// Sets the opacity of the annotation (text + arrow).
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-annotations-items-annotation-opacity) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-annotations-items-annotation-opacity) |
            /// [R](https://plot.ly/r/reference/#layout-scene-annotations-items-annotation-opacity)
            public var opacity: Double?
        
            /// Sets the horizontal alignment of the `text` within the box. 
            ///
            /// Has an effect only if `text` spans more two or more lines (i.e. `text` contains one or more <br>
            /// HTML tags) or if an explicit width is set to override the text width.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-annotations-items-annotation-align) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-annotations-items-annotation-align) |
            /// [R](https://plot.ly/r/reference/#layout-scene-annotations-items-annotation-align)
            public var align: Shared.HorizontalAlign?
        
            /// Sets the vertical alignment of the `text` within the box. 
            ///
            /// Has an effect only if an explicit height is set to override the text height.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-annotations-items-annotation-valign) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-annotations-items-annotation-valign) |
            /// [R](https://plot.ly/r/reference/#layout-scene-annotations-items-annotation-valign)
            public var verticalAlign: Shared.VerticalAlign?
        
            /// Sets the background color of the annotation.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-annotations-items-annotation-bgcolor) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-annotations-items-annotation-bgcolor) |
            /// [R](https://plot.ly/r/reference/#layout-scene-annotations-items-annotation-bgcolor)
            public var backgroundColor: Color?
        
            /// Sets the color of the border enclosing the annotation `text`.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-annotations-items-annotation-bordercolor) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-annotations-items-annotation-bordercolor) |
            /// [R](https://plot.ly/r/reference/#layout-scene-annotations-items-annotation-bordercolor)
            public var borderColor: Color?
        
            /// Sets the padding (in px) between the `text` and the enclosing border.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-annotations-items-annotation-borderpad) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-annotations-items-annotation-borderpad) |
            /// [R](https://plot.ly/r/reference/#layout-scene-annotations-items-annotation-borderpad)
            public var borderPadding: Double?
        
            /// Sets the width (in px) of the border enclosing the annotation `text`.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-annotations-items-annotation-borderwidth) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-annotations-items-annotation-borderwidth) |
            /// [R](https://plot.ly/r/reference/#layout-scene-annotations-items-annotation-borderwidth)
            public var borderWidth: Double?
        
            /// Determines whether or not the annotation is drawn with an arrow. 
            ///
            /// If *true*, `text` is placed near the arrow's tail. If *false*, `text` lines up with the `x` and
            /// `y` provided.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-annotations-items-annotation-showarrow) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-annotations-items-annotation-showarrow) |
            /// [R](https://plot.ly/r/reference/#layout-scene-annotations-items-annotation-showarrow)
            public var showArrow: Bool?
        
            /// Sets the color of the annotation arrow.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-annotations-items-annotation-arrowcolor) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-annotations-items-annotation-arrowcolor) |
            /// [R](https://plot.ly/r/reference/#layout-scene-annotations-items-annotation-arrowcolor)
            public var arrowColor: Color?
        
            /// Sets the end annotation arrow head style.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-annotations-items-annotation-arrowhead) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-annotations-items-annotation-arrowhead) |
            /// [R](https://plot.ly/r/reference/#layout-scene-annotations-items-annotation-arrowhead)
            public var arrowHead: Int?
        
            /// Sets the start annotation arrow head style.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-annotations-items-annotation-startarrowhead) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-annotations-items-annotation-startarrowhead) |
            /// [R](https://plot.ly/r/reference/#layout-scene-annotations-items-annotation-startarrowhead)
            public var startArrowHead: Int?
        
            /// Sets the annotation arrow head position.
            ///
            /// # Used By
            /// `Layout.Scene.Annotation.arrowSide` |
            public struct ArrowSide: OptionSet, Encodable {
                public let rawValue: Int
            
                public static var end: ArrowSide { ArrowSide(rawValue: 1 << 0) }
                public static var start: ArrowSide { ArrowSide(rawValue: 1 << 1) }
                public static var none: ArrowSide { ArrowSide(rawValue: 1 << 2) }
            
                public init(rawValue: Int) { self.rawValue = rawValue }
            
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
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-annotations-items-annotation-arrowside) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-annotations-items-annotation-arrowside) |
            /// [R](https://plot.ly/r/reference/#layout-scene-annotations-items-annotation-arrowside)
            public var arrowSide: ArrowSide?
        
            /// Sets the size of the end annotation arrow head, relative to `arrowwidth`. 
            ///
            /// A value of 1 (default) gives a head about 3x as wide as the line.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-annotations-items-annotation-arrowsize) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-annotations-items-annotation-arrowsize) |
            /// [R](https://plot.ly/r/reference/#layout-scene-annotations-items-annotation-arrowsize)
            public var arrowSize: Double?
        
            /// Sets the size of the start annotation arrow head, relative to `arrowwidth`. 
            ///
            /// A value of 1 (default) gives a head about 3x as wide as the line.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-annotations-items-annotation-startarrowsize) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-annotations-items-annotation-startarrowsize) |
            /// [R](https://plot.ly/r/reference/#layout-scene-annotations-items-annotation-startarrowsize)
            public var startArrowSize: Double?
        
            /// Sets the width (in px) of annotation arrow line.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-annotations-items-annotation-arrowwidth) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-annotations-items-annotation-arrowwidth) |
            /// [R](https://plot.ly/r/reference/#layout-scene-annotations-items-annotation-arrowwidth)
            public var arrowWidth: Double?
        
            /// Sets a distance, in pixels, to move the end arrowhead away from the position it is pointing at, for example to point at the edge of a marker independent of zoom. 
            ///
            /// Note that this shortens the arrow from the `ax` / `ay` vector, in contrast to `xshift` /
            /// `yshift` which moves everything by this amount.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-annotations-items-annotation-standoff) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-annotations-items-annotation-standoff) |
            /// [R](https://plot.ly/r/reference/#layout-scene-annotations-items-annotation-standoff)
            public var standoff: Double?
        
            /// Sets a distance, in pixels, to move the start arrowhead away from the position it is pointing at, for example to point at the edge of a marker independent of zoom. 
            ///
            /// Note that this shortens the arrow from the `ax` / `ay` vector, in contrast to `xshift` /
            /// `yshift` which moves everything by this amount.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-annotations-items-annotation-startstandoff) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-annotations-items-annotation-startstandoff) |
            /// [R](https://plot.ly/r/reference/#layout-scene-annotations-items-annotation-startstandoff)
            public var startStandoff: Double?
        
            /// Sets text to appear when hovering over this annotation. 
            ///
            /// If omitted or blank, no hover label will appear.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-annotations-items-annotation-hovertext) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-annotations-items-annotation-hovertext) |
            /// [R](https://plot.ly/r/reference/#layout-scene-annotations-items-annotation-hovertext)
            public var hoverText: String?
        
            /// # Used By
            /// `Layout.Scene.Annotation.hoverLabel` |
            public struct HoverLabel: Encodable {
                /// Sets the background color of the hover label. 
                ///
                /// By default uses the annotation's `bgcolor` made opaque, or white if it was transparent.
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-annotations-items-annotation-hoverlabel-bgcolor) |
                /// [Python](https://plot.ly/python/reference/#layout-scene-annotations-items-annotation-hoverlabel-bgcolor) |
                /// [R](https://plot.ly/r/reference/#layout-scene-annotations-items-annotation-hoverlabel-bgcolor)
                public var backgroundColor: Color?
            
                /// Sets the border color of the hover label. 
                ///
                /// By default uses either dark grey or white, for maximum contrast with `hoverlabel.bgcolor`.
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-annotations-items-annotation-hoverlabel-bordercolor) |
                /// [Python](https://plot.ly/python/reference/#layout-scene-annotations-items-annotation-hoverlabel-bordercolor) |
                /// [R](https://plot.ly/r/reference/#layout-scene-annotations-items-annotation-hoverlabel-bordercolor)
                public var borderColor: Color?
            
                /// Sets the hover label text font. 
                ///
                /// By default uses the global hover font and size, with color from `hoverlabel.bordercolor`.
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-annotations-items-annotation-hoverlabel-font) |
                /// [Python](https://plot.ly/python/reference/#layout-scene-annotations-items-annotation-hoverlabel-font) |
                /// [R](https://plot.ly/r/reference/#layout-scene-annotations-items-annotation-hoverlabel-font)
                public var font: Shared.Font?
            
                /// Plotly compatible property encoding
                enum CodingKeys: String, CodingKey {
                    case backgroundColor = "bgcolor"
                    case borderColor = "bordercolor"
                    case font
                }
                
                public init(backgroundColor: Color? = nil, borderColor: Color? = nil, font: Shared.Font? = nil) {
                    self.backgroundColor = backgroundColor
                    self.borderColor = borderColor
                    self.font = font
                }
            }
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-annotations-items-annotation-hoverlabel) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-annotations-items-annotation-hoverlabel) |
            /// [R](https://plot.ly/r/reference/#layout-scene-annotations-items-annotation-hoverlabel)
            public var hoverLabel: HoverLabel?
        
            /// Determines whether the annotation text box captures mouse move and click events, or allows those events to pass through to data points in the plot that may be behind the annotation. 
            ///
            /// By default `captureevents` is *false* unless `hovertext` is provided. If you use the event
            /// `plotly_clickannotation` without `hovertext` you must explicitly enable `captureevents`.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-annotations-items-annotation-captureevents) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-annotations-items-annotation-captureevents) |
            /// [R](https://plot.ly/r/reference/#layout-scene-annotations-items-annotation-captureevents)
            public var captureEvents: Bool?
        
            /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. 
            ///
            /// You can modify these items in the output figure by making your own item with `templateitemname`
            /// matching this `name` alongside your modifications (including `visible: false` or `enabled:
            /// false` to hide it). Has no effect outside of a template.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-annotations-items-annotation-name) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-annotations-items-annotation-name) |
            /// [R](https://plot.ly/r/reference/#layout-scene-annotations-items-annotation-name)
            public var name: String?
        
            /// Used to refer to a named item in this array in the template. 
            ///
            /// Named items from the template will be created even without a matching item in the input figure,
            /// but you can modify one by making an item with `templateitemname` matching its `name`, alongside
            /// your modifications (including `visible: false` or `enabled: false` to hide it). If there is no
            /// template or no matching item, this item will be hidden unless you explicitly show it with
            /// `visible: true`.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-annotations-items-annotation-templateitemname) |
            /// [Python](https://plot.ly/python/reference/#layout-scene-annotations-items-annotation-templateitemname) |
            /// [R](https://plot.ly/r/reference/#layout-scene-annotations-items-annotation-templateitemname)
            public var templateItemName: String?
        
            /// Plotly compatible property encoding
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
            
            public init(visible: Bool? = nil, x: Anything? = nil, y: Anything? = nil, z: Anything? = nil, ax: Double? = nil, ay: Double? = nil, xAnchor: Shared.XAutoAnchor? = nil, xShift: Double? = nil, yAnchor: Shared.YAutoAnchor? = nil, yShift: Double? = nil, text: String? = nil, textAngle: Angle? = nil, font: Shared.Font? = nil, width: Double? = nil, height: Double? = nil, opacity: Double? = nil, align: Shared.HorizontalAlign? = nil, verticalAlign: Shared.VerticalAlign? = nil, backgroundColor: Color? = nil, borderColor: Color? = nil, borderPadding: Double? = nil, borderWidth: Double? = nil, showArrow: Bool? = nil, arrowColor: Color? = nil, arrowHead: Int? = nil, startArrowHead: Int? = nil, arrowSide: ArrowSide? = nil, arrowSize: Double? = nil, startArrowSize: Double? = nil, arrowWidth: Double? = nil, standoff: Double? = nil, startStandoff: Double? = nil, hoverText: String? = nil, hoverLabel: HoverLabel? = nil, captureEvents: Bool? = nil, name: String? = nil, templateItemName: String? = nil) {
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
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene-annotations) |
        /// [Python](https://plot.ly/python/reference/#layout-scene-annotations) |
        /// [R](https://plot.ly/r/reference/#layout-scene-annotations)
        public var annotations: [Annotation]?
    
        /// Plotly compatible property encoding
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
        
        public init(backgroundColor: Color? = nil, camera: Camera? = nil, domain: Shared.Domain? = nil, aspectMode: AspectMode? = nil, aspectRatio: AspectRatio? = nil, xAxis: XAxis? = nil, yAxis: YAxis? = nil, zAxis: ZAxis? = nil, dragMode: DragMode? = nil, hoverMode: HoverMode? = nil, uiRevision: Anything? = nil, annotations: [Annotation]? = nil) {
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-scene) |
    /// [Python](https://plot.ly/python/reference/#layout-scene) |
    /// [R](https://plot.ly/r/reference/#layout-scene)
    public var scene: Scene?

    /// # Used By
    /// `Layout.geo` |
    public struct Geo: Encodable {
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-domain) |
        /// [Python](https://plot.ly/python/reference/#layout-geo-domain) |
        /// [R](https://plot.ly/r/reference/#layout-geo-domain)
        public var domain: Shared.Domain?
    
        /// Sets the resolution of the base layers. 
        ///
        /// The values have units of km/mm e.g. 110 corresponds to a scale ratio of 1:110,000,000.
        ///
        /// # Used By
        /// `Layout.Geo.resolution` |
        public enum Resolution: Int, Encodable {
            case oneOver110M = 110
            case oneOver50M = 50
        }
        /// Sets the resolution of the base layers. 
        ///
        /// The values have units of km/mm e.g. 110 corresponds to a scale ratio of 1:110,000,000.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-resolution) |
        /// [Python](https://plot.ly/python/reference/#layout-geo-resolution) |
        /// [R](https://plot.ly/r/reference/#layout-geo-resolution)
        public var resolution: Resolution?
    
        /// Set the scope of the map.
        ///
        /// # Used By
        /// `Layout.Geo.scope` |
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
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-scope) |
        /// [Python](https://plot.ly/python/reference/#layout-geo-scope) |
        /// [R](https://plot.ly/r/reference/#layout-geo-scope)
        public var scope: Scope?
    
        /// # Used By
        /// `Layout.Geo.projection` |
        public struct Projection: Encodable {
            /// Sets the projection type.
            ///
            /// # Used By
            /// `Layout.Geo.Projection.type` |
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
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-projection-type) |
            /// [Python](https://plot.ly/python/reference/#layout-geo-projection-type) |
            /// [R](https://plot.ly/r/reference/#layout-geo-projection-type)
            public var type: `Type`?
        
            /// # Used By
            /// `Layout.Geo.Projection.rotation` |
            public struct Rotation: Encodable {
                /// Rotates the map along parallels (in degrees East). 
                ///
                /// Defaults to the center of the `lonaxis.range` values.
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-projection-rotation-lon) |
                /// [Python](https://plot.ly/python/reference/#layout-geo-projection-rotation-lon) |
                /// [R](https://plot.ly/r/reference/#layout-geo-projection-rotation-lon)
                public var longitude: Double?
            
                /// Rotates the map along meridians (in degrees North).
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-projection-rotation-lat) |
                /// [Python](https://plot.ly/python/reference/#layout-geo-projection-rotation-lat) |
                /// [R](https://plot.ly/r/reference/#layout-geo-projection-rotation-lat)
                public var latitude: Double?
            
                /// Roll the map (in degrees) For example, a roll of *180* makes the map appear upside down.
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-projection-rotation-roll) |
                /// [Python](https://plot.ly/python/reference/#layout-geo-projection-rotation-roll) |
                /// [R](https://plot.ly/r/reference/#layout-geo-projection-rotation-roll)
                public var roll: Double?
            
                /// Plotly compatible property encoding
                enum CodingKeys: String, CodingKey {
                    case longitude = "lon"
                    case latitude = "lat"
                    case roll
                }
                
                public init(longitude: Double? = nil, latitude: Double? = nil, roll: Double? = nil) {
                    self.longitude = longitude
                    self.latitude = latitude
                    self.roll = roll
                }
            }
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-projection-rotation) |
            /// [Python](https://plot.ly/python/reference/#layout-geo-projection-rotation) |
            /// [R](https://plot.ly/r/reference/#layout-geo-projection-rotation)
            public var rotation: Rotation?
        
            /// For conic projection types only. 
            ///
            /// Sets the parallels (tangent, secant) where the cone intersects the sphere.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-projection-parallels) |
            /// [Python](https://plot.ly/python/reference/#layout-geo-projection-parallels) |
            /// [R](https://plot.ly/r/reference/#layout-geo-projection-parallels)
            public var parallels: InfoArray?
        
            /// Zooms in or out on the map view. 
            ///
            /// A scale of *1* corresponds to the largest zoom level that fits the map's lon and lat ranges. 
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-projection-scale) |
            /// [Python](https://plot.ly/python/reference/#layout-geo-projection-scale) |
            /// [R](https://plot.ly/r/reference/#layout-geo-projection-scale)
            public var scale: Double?
        
            public init(type: `Type`? = nil, rotation: Rotation? = nil, parallels: InfoArray? = nil, scale: Double? = nil) {
                self.type = type
                self.rotation = rotation
                self.parallels = parallels
                self.scale = scale
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-projection) |
        /// [Python](https://plot.ly/python/reference/#layout-geo-projection) |
        /// [R](https://plot.ly/r/reference/#layout-geo-projection)
        public var projection: Projection?
    
        /// # Used By
        /// `Layout.Geo.center` |
        public struct Center: Encodable {
            /// Sets the longitude of the map's center. 
            ///
            /// By default, the map's longitude center lies at the middle of the longitude range for scoped
            /// projection and above `projection.rotation.lon` otherwise.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-center-lon) |
            /// [Python](https://plot.ly/python/reference/#layout-geo-center-lon) |
            /// [R](https://plot.ly/r/reference/#layout-geo-center-lon)
            public var longitude: Double?
        
            /// Sets the latitude of the map's center. 
            ///
            /// For all projection types, the map's latitude center lies at the middle of the latitude range by
            /// default.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-center-lat) |
            /// [Python](https://plot.ly/python/reference/#layout-geo-center-lat) |
            /// [R](https://plot.ly/r/reference/#layout-geo-center-lat)
            public var latitude: Double?
        
            /// Plotly compatible property encoding
            enum CodingKeys: String, CodingKey {
                case longitude = "lon"
                case latitude = "lat"
            }
            
            public init(longitude: Double? = nil, latitude: Double? = nil) {
                self.longitude = longitude
                self.latitude = latitude
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-center) |
        /// [Python](https://plot.ly/python/reference/#layout-geo-center) |
        /// [R](https://plot.ly/r/reference/#layout-geo-center)
        public var center: Center?
    
        /// Sets whether or not the coastlines are drawn.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-showcoastlines) |
        /// [Python](https://plot.ly/python/reference/#layout-geo-showcoastlines) |
        /// [R](https://plot.ly/r/reference/#layout-geo-showcoastlines)
        public var showCoastLines: Bool?
    
        /// Sets the coastline color.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-coastlinecolor) |
        /// [Python](https://plot.ly/python/reference/#layout-geo-coastlinecolor) |
        /// [R](https://plot.ly/r/reference/#layout-geo-coastlinecolor)
        public var coastLineColor: Color?
    
        /// Sets the coastline stroke width (in px).
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-coastlinewidth) |
        /// [Python](https://plot.ly/python/reference/#layout-geo-coastlinewidth) |
        /// [R](https://plot.ly/r/reference/#layout-geo-coastlinewidth)
        public var coastLineWidth: Double?
    
        /// Sets whether or not land masses are filled in color.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-showland) |
        /// [Python](https://plot.ly/python/reference/#layout-geo-showland) |
        /// [R](https://plot.ly/r/reference/#layout-geo-showland)
        public var showLand: Bool?
    
        /// Sets the land mass color.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-landcolor) |
        /// [Python](https://plot.ly/python/reference/#layout-geo-landcolor) |
        /// [R](https://plot.ly/r/reference/#layout-geo-landcolor)
        public var landColor: Color?
    
        /// Sets whether or not oceans are filled in color.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-showocean) |
        /// [Python](https://plot.ly/python/reference/#layout-geo-showocean) |
        /// [R](https://plot.ly/r/reference/#layout-geo-showocean)
        public var showOcean: Bool?
    
        /// Sets the ocean color
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-oceancolor) |
        /// [Python](https://plot.ly/python/reference/#layout-geo-oceancolor) |
        /// [R](https://plot.ly/r/reference/#layout-geo-oceancolor)
        public var oceanColor: Color?
    
        /// Sets whether or not lakes are drawn.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-showlakes) |
        /// [Python](https://plot.ly/python/reference/#layout-geo-showlakes) |
        /// [R](https://plot.ly/r/reference/#layout-geo-showlakes)
        public var showLakes: Bool?
    
        /// Sets the color of the lakes.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-lakecolor) |
        /// [Python](https://plot.ly/python/reference/#layout-geo-lakecolor) |
        /// [R](https://plot.ly/r/reference/#layout-geo-lakecolor)
        public var lakeColor: Color?
    
        /// Sets whether or not rivers are drawn.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-showrivers) |
        /// [Python](https://plot.ly/python/reference/#layout-geo-showrivers) |
        /// [R](https://plot.ly/r/reference/#layout-geo-showrivers)
        public var showRivers: Bool?
    
        /// Sets color of the rivers.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-rivercolor) |
        /// [Python](https://plot.ly/python/reference/#layout-geo-rivercolor) |
        /// [R](https://plot.ly/r/reference/#layout-geo-rivercolor)
        public var riverColor: Color?
    
        /// Sets the stroke width (in px) of the rivers.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-riverwidth) |
        /// [Python](https://plot.ly/python/reference/#layout-geo-riverwidth) |
        /// [R](https://plot.ly/r/reference/#layout-geo-riverwidth)
        public var riverWidth: Double?
    
        /// Sets whether or not country boundaries are drawn.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-showcountries) |
        /// [Python](https://plot.ly/python/reference/#layout-geo-showcountries) |
        /// [R](https://plot.ly/r/reference/#layout-geo-showcountries)
        public var showCountries: Bool?
    
        /// Sets line color of the country boundaries.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-countrycolor) |
        /// [Python](https://plot.ly/python/reference/#layout-geo-countrycolor) |
        /// [R](https://plot.ly/r/reference/#layout-geo-countrycolor)
        public var countryColor: Color?
    
        /// Sets line width (in px) of the country boundaries.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-countrywidth) |
        /// [Python](https://plot.ly/python/reference/#layout-geo-countrywidth) |
        /// [R](https://plot.ly/r/reference/#layout-geo-countrywidth)
        public var countryWidth: Double?
    
        /// Sets whether or not boundaries of subunits within countries (e.g. 
        ///
        /// states, provinces) are drawn.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-showsubunits) |
        /// [Python](https://plot.ly/python/reference/#layout-geo-showsubunits) |
        /// [R](https://plot.ly/r/reference/#layout-geo-showsubunits)
        public var showSubUnits: Bool?
    
        /// Sets the color of the subunits boundaries.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-subunitcolor) |
        /// [Python](https://plot.ly/python/reference/#layout-geo-subunitcolor) |
        /// [R](https://plot.ly/r/reference/#layout-geo-subunitcolor)
        public var subUnitColor: Color?
    
        /// Sets the stroke width (in px) of the subunits boundaries.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-subunitwidth) |
        /// [Python](https://plot.ly/python/reference/#layout-geo-subunitwidth) |
        /// [R](https://plot.ly/r/reference/#layout-geo-subunitwidth)
        public var subUnitWidth: Double?
    
        /// Sets whether or not a frame is drawn around the map.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-showframe) |
        /// [Python](https://plot.ly/python/reference/#layout-geo-showframe) |
        /// [R](https://plot.ly/r/reference/#layout-geo-showframe)
        public var showFrame: Bool?
    
        /// Sets the color the frame.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-framecolor) |
        /// [Python](https://plot.ly/python/reference/#layout-geo-framecolor) |
        /// [R](https://plot.ly/r/reference/#layout-geo-framecolor)
        public var frameColor: Color?
    
        /// Sets the stroke width (in px) of the frame.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-framewidth) |
        /// [Python](https://plot.ly/python/reference/#layout-geo-framewidth) |
        /// [R](https://plot.ly/r/reference/#layout-geo-framewidth)
        public var frameWidth: Double?
    
        /// Set the background color of the map
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-bgcolor) |
        /// [Python](https://plot.ly/python/reference/#layout-geo-bgcolor) |
        /// [R](https://plot.ly/r/reference/#layout-geo-bgcolor)
        public var backgroundColor: Color?
    
        /// # Used By
        /// `Layout.Geo.longitudeAxis` |
        public struct LongitudeAxis: Encodable {
            /// Sets the range of this axis (in degrees), sets the map's clipped coordinates.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-lonaxis-range) |
            /// [Python](https://plot.ly/python/reference/#layout-geo-lonaxis-range) |
            /// [R](https://plot.ly/r/reference/#layout-geo-lonaxis-range)
            public var range: InfoArray?
        
            /// Sets whether or not graticule are shown on the map.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-lonaxis-showgrid) |
            /// [Python](https://plot.ly/python/reference/#layout-geo-lonaxis-showgrid) |
            /// [R](https://plot.ly/r/reference/#layout-geo-lonaxis-showgrid)
            public var showGrid: Bool?
        
            /// Sets the graticule's starting tick longitude/latitude.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-lonaxis-tick0) |
            /// [Python](https://plot.ly/python/reference/#layout-geo-lonaxis-tick0) |
            /// [R](https://plot.ly/r/reference/#layout-geo-lonaxis-tick0)
            public var tick0: Double?
        
            /// Sets the graticule's longitude/latitude tick step.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-lonaxis-dtick) |
            /// [Python](https://plot.ly/python/reference/#layout-geo-lonaxis-dtick) |
            /// [R](https://plot.ly/r/reference/#layout-geo-lonaxis-dtick)
            public var dTick: Double?
        
            /// Sets the graticule's stroke color.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-lonaxis-gridcolor) |
            /// [Python](https://plot.ly/python/reference/#layout-geo-lonaxis-gridcolor) |
            /// [R](https://plot.ly/r/reference/#layout-geo-lonaxis-gridcolor)
            public var gridColor: Color?
        
            /// Sets the graticule's stroke width (in px).
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-lonaxis-gridwidth) |
            /// [Python](https://plot.ly/python/reference/#layout-geo-lonaxis-gridwidth) |
            /// [R](https://plot.ly/r/reference/#layout-geo-lonaxis-gridwidth)
            public var gridWidth: Double?
        
            /// Plotly compatible property encoding
            enum CodingKeys: String, CodingKey {
                case range
                case showGrid = "showgrid"
                case tick0
                case dTick = "dtick"
                case gridColor = "gridcolor"
                case gridWidth = "gridwidth"
            }
            
            public init(range: InfoArray? = nil, showGrid: Bool? = nil, tick0: Double? = nil, dTick: Double? = nil, gridColor: Color? = nil, gridWidth: Double? = nil) {
                self.range = range
                self.showGrid = showGrid
                self.tick0 = tick0
                self.dTick = dTick
                self.gridColor = gridColor
                self.gridWidth = gridWidth
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-lonaxis) |
        /// [Python](https://plot.ly/python/reference/#layout-geo-lonaxis) |
        /// [R](https://plot.ly/r/reference/#layout-geo-lonaxis)
        public var longitudeAxis: LongitudeAxis?
    
        /// # Used By
        /// `Layout.Geo.latitudeAxis` |
        public struct LatitudeAxis: Encodable {
            /// Sets the range of this axis (in degrees), sets the map's clipped coordinates.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-lataxis-range) |
            /// [Python](https://plot.ly/python/reference/#layout-geo-lataxis-range) |
            /// [R](https://plot.ly/r/reference/#layout-geo-lataxis-range)
            public var range: InfoArray?
        
            /// Sets whether or not graticule are shown on the map.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-lataxis-showgrid) |
            /// [Python](https://plot.ly/python/reference/#layout-geo-lataxis-showgrid) |
            /// [R](https://plot.ly/r/reference/#layout-geo-lataxis-showgrid)
            public var showGrid: Bool?
        
            /// Sets the graticule's starting tick longitude/latitude.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-lataxis-tick0) |
            /// [Python](https://plot.ly/python/reference/#layout-geo-lataxis-tick0) |
            /// [R](https://plot.ly/r/reference/#layout-geo-lataxis-tick0)
            public var tick0: Double?
        
            /// Sets the graticule's longitude/latitude tick step.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-lataxis-dtick) |
            /// [Python](https://plot.ly/python/reference/#layout-geo-lataxis-dtick) |
            /// [R](https://plot.ly/r/reference/#layout-geo-lataxis-dtick)
            public var dTick: Double?
        
            /// Sets the graticule's stroke color.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-lataxis-gridcolor) |
            /// [Python](https://plot.ly/python/reference/#layout-geo-lataxis-gridcolor) |
            /// [R](https://plot.ly/r/reference/#layout-geo-lataxis-gridcolor)
            public var gridColor: Color?
        
            /// Sets the graticule's stroke width (in px).
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-lataxis-gridwidth) |
            /// [Python](https://plot.ly/python/reference/#layout-geo-lataxis-gridwidth) |
            /// [R](https://plot.ly/r/reference/#layout-geo-lataxis-gridwidth)
            public var gridWidth: Double?
        
            /// Plotly compatible property encoding
            enum CodingKeys: String, CodingKey {
                case range
                case showGrid = "showgrid"
                case tick0
                case dTick = "dtick"
                case gridColor = "gridcolor"
                case gridWidth = "gridwidth"
            }
            
            public init(range: InfoArray? = nil, showGrid: Bool? = nil, tick0: Double? = nil, dTick: Double? = nil, gridColor: Color? = nil, gridWidth: Double? = nil) {
                self.range = range
                self.showGrid = showGrid
                self.tick0 = tick0
                self.dTick = dTick
                self.gridColor = gridColor
                self.gridWidth = gridWidth
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-lataxis) |
        /// [Python](https://plot.ly/python/reference/#layout-geo-lataxis) |
        /// [R](https://plot.ly/r/reference/#layout-geo-lataxis)
        public var latitudeAxis: LatitudeAxis?
    
        /// Controls persistence of user-driven changes in the view (projection and center). 
        ///
        /// Defaults to `layout.uirevision`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo-uirevision) |
        /// [Python](https://plot.ly/python/reference/#layout-geo-uirevision) |
        /// [R](https://plot.ly/r/reference/#layout-geo-uirevision)
        public var uiRevision: Anything?
    
        /// Plotly compatible property encoding
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
            case showSubUnits = "showsubunits"
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
        
        public init(domain: Shared.Domain? = nil, resolution: Resolution? = nil, scope: Scope? = nil, projection: Projection? = nil, center: Center? = nil, showCoastLines: Bool? = nil, coastLineColor: Color? = nil, coastLineWidth: Double? = nil, showLand: Bool? = nil, landColor: Color? = nil, showOcean: Bool? = nil, oceanColor: Color? = nil, showLakes: Bool? = nil, lakeColor: Color? = nil, showRivers: Bool? = nil, riverColor: Color? = nil, riverWidth: Double? = nil, showCountries: Bool? = nil, countryColor: Color? = nil, countryWidth: Double? = nil, showSubUnits: Bool? = nil, subUnitColor: Color? = nil, subUnitWidth: Double? = nil, showFrame: Bool? = nil, frameColor: Color? = nil, frameWidth: Double? = nil, backgroundColor: Color? = nil, longitudeAxis: LongitudeAxis? = nil, latitudeAxis: LatitudeAxis? = nil, uiRevision: Anything? = nil) {
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-geo) |
    /// [Python](https://plot.ly/python/reference/#layout-geo) |
    /// [R](https://plot.ly/r/reference/#layout-geo)
    public var geo: Geo?

    /// # Used By
    /// `Layout.mapbox` |
    public struct Mapbox: Encodable {
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-mapbox-domain) |
        /// [Python](https://plot.ly/python/reference/#layout-mapbox-domain) |
        /// [R](https://plot.ly/r/reference/#layout-mapbox-domain)
        public var domain: Shared.Domain?
    
        /// Sets the mapbox access token to be used for this mapbox map. 
        ///
        /// Alternatively, the mapbox access token can be set in the configuration options under
        /// `mapboxAccessToken`. Note that accessToken are only required when `style` (e.g with values :
        /// basic, streets, outdoors, light, dark, satellite, satellite-streets ) and/or a layout layer
        /// references the Mapbox server.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-mapbox-accesstoken) |
        /// [Python](https://plot.ly/python/reference/#layout-mapbox-accesstoken) |
        /// [R](https://plot.ly/r/reference/#layout-mapbox-accesstoken)
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
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-mapbox-style) |
        /// [Python](https://plot.ly/python/reference/#layout-mapbox-style) |
        /// [R](https://plot.ly/r/reference/#layout-mapbox-style)
        public var style: Anything?
    
        /// # Used By
        /// `Layout.Mapbox.center` |
        public struct Center: Encodable {
            /// Sets the longitude of the center of the map (in degrees East).
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-mapbox-center-lon) |
            /// [Python](https://plot.ly/python/reference/#layout-mapbox-center-lon) |
            /// [R](https://plot.ly/r/reference/#layout-mapbox-center-lon)
            public var longitude: Double?
        
            /// Sets the latitude of the center of the map (in degrees North).
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-mapbox-center-lat) |
            /// [Python](https://plot.ly/python/reference/#layout-mapbox-center-lat) |
            /// [R](https://plot.ly/r/reference/#layout-mapbox-center-lat)
            public var latitude: Double?
        
            /// Plotly compatible property encoding
            enum CodingKeys: String, CodingKey {
                case longitude = "lon"
                case latitude = "lat"
            }
            
            public init(longitude: Double? = nil, latitude: Double? = nil) {
                self.longitude = longitude
                self.latitude = latitude
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-mapbox-center) |
        /// [Python](https://plot.ly/python/reference/#layout-mapbox-center) |
        /// [R](https://plot.ly/r/reference/#layout-mapbox-center)
        public var center: Center?
    
        /// Sets the zoom level of the map (mapbox.zoom).
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-mapbox-zoom) |
        /// [Python](https://plot.ly/python/reference/#layout-mapbox-zoom) |
        /// [R](https://plot.ly/r/reference/#layout-mapbox-zoom)
        public var zoom: Double?
    
        /// Sets the bearing angle of the map in degrees counter-clockwise from North (mapbox.bearing).
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-mapbox-bearing) |
        /// [Python](https://plot.ly/python/reference/#layout-mapbox-bearing) |
        /// [R](https://plot.ly/r/reference/#layout-mapbox-bearing)
        public var bearing: Double?
    
        /// Sets the pitch angle of the map (in degrees, where *0* means perpendicular to the surface of the map) (mapbox.pitch).
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-mapbox-pitch) |
        /// [Python](https://plot.ly/python/reference/#layout-mapbox-pitch) |
        /// [R](https://plot.ly/r/reference/#layout-mapbox-pitch)
        public var pitch: Double?
    
        /// # Used By
        /// `Layout.Mapbox.layers` |
        public struct Layer: Encodable {
            /// Determines whether this layer is displayed
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-mapbox-layers-items-layer-visible) |
            /// [Python](https://plot.ly/python/reference/#layout-mapbox-layers-items-layer-visible) |
            /// [R](https://plot.ly/r/reference/#layout-mapbox-layers-items-layer-visible)
            public var visible: Bool?
        
            /// Sets the source type for this layer, that is the type of the layer data.
            ///
            /// # Used By
            /// `Layout.Mapbox.Layer.sourceType` |
            public enum SourceType: String, Encodable {
                case geoJson = "geojson"
                case vector
                case raster
                case image
            }
            /// Sets the source type for this layer, that is the type of the layer data.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-mapbox-layers-items-layer-sourcetype) |
            /// [Python](https://plot.ly/python/reference/#layout-mapbox-layers-items-layer-sourcetype) |
            /// [R](https://plot.ly/r/reference/#layout-mapbox-layers-items-layer-sourcetype)
            public var sourceType: SourceType?
        
            /// Sets the source data for this layer (mapbox.layer.source). 
            ///
            /// When `sourcetype` is set to *geojson*, `source` can be a URL to a GeoJSON or a GeoJSON object.
            /// When `sourcetype` is set to *vector* or *raster*, `source` can be a URL or an array of tile
            /// URLs. When `sourcetype` is set to *image*, `source` can be a URL to an image.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-mapbox-layers-items-layer-source) |
            /// [Python](https://plot.ly/python/reference/#layout-mapbox-layers-items-layer-source) |
            /// [R](https://plot.ly/r/reference/#layout-mapbox-layers-items-layer-source)
            public var source: Anything?
        
            /// Specifies the layer to use from a vector tile source (mapbox.layer.source-layer). 
            ///
            /// Required for *vector* source type that supports multiple layers.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-mapbox-layers-items-layer-sourcelayer) |
            /// [Python](https://plot.ly/python/reference/#layout-mapbox-layers-items-layer-sourcelayer) |
            /// [R](https://plot.ly/r/reference/#layout-mapbox-layers-items-layer-sourcelayer)
            public var sourceLayer: String?
        
            /// Sets the attribution for this source.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-mapbox-layers-items-layer-sourceattribution) |
            /// [Python](https://plot.ly/python/reference/#layout-mapbox-layers-items-layer-sourceattribution) |
            /// [R](https://plot.ly/r/reference/#layout-mapbox-layers-items-layer-sourceattribution)
            public var sourceAttribution: String?
        
            /// Sets the layer type, that is the how the layer data set in `source` will be rendered With `sourcetype` set to *geojson*, the following values are allowed: *circle*, *line*, *fill* and *symbol*. 
            ///
            /// but note that *line* and *fill* are not compatible with Point GeoJSON geometries. With
            /// `sourcetype` set to *vector*, the following values are allowed: *circle*, *line*, *fill* and
            /// *symbol*. With `sourcetype` set to *raster* or `*image*`, only the *raster* value is allowed.
            ///
            /// # Used By
            /// `Layout.Mapbox.Layer.type` |
            public enum `Type`: String, Encodable {
                case circle
                case line
                case fill
                case symbol
                case raster
            }
            /// Sets the layer type, that is the how the layer data set in `source` will be rendered With `sourcetype` set to *geojson*, the following values are allowed: *circle*, *line*, *fill* and *symbol*. 
            ///
            /// but note that *line* and *fill* are not compatible with Point GeoJSON geometries. With
            /// `sourcetype` set to *vector*, the following values are allowed: *circle*, *line*, *fill* and
            /// *symbol*. With `sourcetype` set to *raster* or `*image*`, only the *raster* value is allowed.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-mapbox-layers-items-layer-type) |
            /// [Python](https://plot.ly/python/reference/#layout-mapbox-layers-items-layer-type) |
            /// [R](https://plot.ly/r/reference/#layout-mapbox-layers-items-layer-type)
            public var type: `Type`?
        
            /// Sets the coordinates array contains [longitude, latitude] pairs for the image corners listed in clockwise order: top left, top right, bottom right, bottom left. 
            ///
            /// Only has an effect for *image* `sourcetype`.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-mapbox-layers-items-layer-coordinates) |
            /// [Python](https://plot.ly/python/reference/#layout-mapbox-layers-items-layer-coordinates) |
            /// [R](https://plot.ly/r/reference/#layout-mapbox-layers-items-layer-coordinates)
            public var coordinates: Anything?
        
            /// Determines if the layer will be inserted before the layer with the specified ID. 
            ///
            /// If omitted or set to '', the layer will be inserted above every existing layer.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-mapbox-layers-items-layer-below) |
            /// [Python](https://plot.ly/python/reference/#layout-mapbox-layers-items-layer-below) |
            /// [R](https://plot.ly/r/reference/#layout-mapbox-layers-items-layer-below)
            public var below: String?
        
            /// Sets the primary layer color. 
            ///
            /// If `type` is *circle*, color corresponds to the circle color (mapbox.layer.paint.circle-color)
            /// If `type` is *line*, color corresponds to the line color (mapbox.layer.paint.line-color) If
            /// `type` is *fill*, color corresponds to the fill color (mapbox.layer.paint.fill-color) If `type`
            /// is *symbol*, color corresponds to the icon color (mapbox.layer.paint.icon-color)
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-mapbox-layers-items-layer-color) |
            /// [Python](https://plot.ly/python/reference/#layout-mapbox-layers-items-layer-color) |
            /// [R](https://plot.ly/r/reference/#layout-mapbox-layers-items-layer-color)
            public var color: Color?
        
            /// Sets the opacity of the layer. 
            ///
            /// If `type` is *circle*, opacity corresponds to the circle opacity
            /// (mapbox.layer.paint.circle-opacity) If `type` is *line*, opacity corresponds to the line opacity
            /// (mapbox.layer.paint.line-opacity) If `type` is *fill*, opacity corresponds to the fill opacity
            /// (mapbox.layer.paint.fill-opacity) If `type` is *symbol*, opacity corresponds to the icon/text
            /// opacity (mapbox.layer.paint.text-opacity)
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-mapbox-layers-items-layer-opacity) |
            /// [Python](https://plot.ly/python/reference/#layout-mapbox-layers-items-layer-opacity) |
            /// [R](https://plot.ly/r/reference/#layout-mapbox-layers-items-layer-opacity)
            public var opacity: Double?
        
            /// Sets the minimum zoom level (mapbox.layer.minzoom). 
            ///
            /// At zoom levels less than the minzoom, the layer will be hidden.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-mapbox-layers-items-layer-minzoom) |
            /// [Python](https://plot.ly/python/reference/#layout-mapbox-layers-items-layer-minzoom) |
            /// [R](https://plot.ly/r/reference/#layout-mapbox-layers-items-layer-minzoom)
            public var minZoom: Double?
        
            /// Sets the maximum zoom level (mapbox.layer.maxzoom). 
            ///
            /// At zoom levels equal to or greater than the maxzoom, the layer will be hidden.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-mapbox-layers-items-layer-maxzoom) |
            /// [Python](https://plot.ly/python/reference/#layout-mapbox-layers-items-layer-maxzoom) |
            /// [R](https://plot.ly/r/reference/#layout-mapbox-layers-items-layer-maxzoom)
            public var maxZoom: Double?
        
            /// # Used By
            /// `Layout.Mapbox.Layer.circle` |
            public struct Circle: Encodable {
                /// Sets the circle radius (mapbox.layer.paint.circle-radius). 
                ///
                /// Has an effect only when `type` is set to *circle*.
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#layout-mapbox-layers-items-layer-circle-radius) |
                /// [Python](https://plot.ly/python/reference/#layout-mapbox-layers-items-layer-circle-radius) |
                /// [R](https://plot.ly/r/reference/#layout-mapbox-layers-items-layer-circle-radius)
                public var radius: Double?
            
                public init(radius: Double? = nil) {
                    self.radius = radius
                }
            }
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-mapbox-layers-items-layer-circle) |
            /// [Python](https://plot.ly/python/reference/#layout-mapbox-layers-items-layer-circle) |
            /// [R](https://plot.ly/r/reference/#layout-mapbox-layers-items-layer-circle)
            public var circle: Circle?
        
            /// # Used By
            /// `Layout.Mapbox.Layer.line` |
            public struct DashedLine: Encodable {
                /// Sets the line width (mapbox.layer.paint.line-width). 
                ///
                /// Has an effect only when `type` is set to *line*.
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#layout-mapbox-layers-items-layer-line-width) |
                /// [Python](https://plot.ly/python/reference/#layout-mapbox-layers-items-layer-line-width) |
                /// [R](https://plot.ly/r/reference/#layout-mapbox-layers-items-layer-line-width)
                public var width: Double?
            
                /// Sets the length of dashes and gaps (mapbox.layer.paint.line-dasharray). 
                ///
                /// Has an effect only when `type` is set to *line*.
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#layout-mapbox-layers-items-layer-line-dash) |
                /// [Python](https://plot.ly/python/reference/#layout-mapbox-layers-items-layer-line-dash) |
                /// [R](https://plot.ly/r/reference/#layout-mapbox-layers-items-layer-line-dash)
                public var dash: [Double]?
            
                public init(width: Double? = nil, dash: [Double]? = nil) {
                    self.width = width
                    self.dash = dash
                }
            }
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-mapbox-layers-items-layer-line) |
            /// [Python](https://plot.ly/python/reference/#layout-mapbox-layers-items-layer-line) |
            /// [R](https://plot.ly/r/reference/#layout-mapbox-layers-items-layer-line)
            public var line: DashedLine?
        
            /// # Used By
            /// `Layout.Mapbox.Layer.fill` |
            public struct Fill: Encodable {
                /// Sets the fill outline color (mapbox.layer.paint.fill-outline-color). 
                ///
                /// Has an effect only when `type` is set to *fill*.
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#layout-mapbox-layers-items-layer-fill-outlinecolor) |
                /// [Python](https://plot.ly/python/reference/#layout-mapbox-layers-items-layer-fill-outlinecolor) |
                /// [R](https://plot.ly/r/reference/#layout-mapbox-layers-items-layer-fill-outlinecolor)
                public var outLineColor: Color?
            
                /// Plotly compatible property encoding
                enum CodingKeys: String, CodingKey {
                    case outLineColor = "outlinecolor"
                }
                
                public init(outLineColor: Color? = nil) {
                    self.outLineColor = outLineColor
                }
            }
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-mapbox-layers-items-layer-fill) |
            /// [Python](https://plot.ly/python/reference/#layout-mapbox-layers-items-layer-fill) |
            /// [R](https://plot.ly/r/reference/#layout-mapbox-layers-items-layer-fill)
            public var fill: Fill?
        
            /// # Used By
            /// `Layout.Mapbox.Layer.symbol` |
            public struct Symbol: Encodable {
                /// Sets the symbol icon image (mapbox.layer.layout.icon-image). 
                ///
                /// Full list: https://www.mapbox.com/maki-icons/
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#layout-mapbox-layers-items-layer-symbol-icon) |
                /// [Python](https://plot.ly/python/reference/#layout-mapbox-layers-items-layer-symbol-icon) |
                /// [R](https://plot.ly/r/reference/#layout-mapbox-layers-items-layer-symbol-icon)
                public var icon: String?
            
                /// Sets the symbol icon size (mapbox.layer.layout.icon-size). 
                ///
                /// Has an effect only when `type` is set to *symbol*.
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#layout-mapbox-layers-items-layer-symbol-iconsize) |
                /// [Python](https://plot.ly/python/reference/#layout-mapbox-layers-items-layer-symbol-iconsize) |
                /// [R](https://plot.ly/r/reference/#layout-mapbox-layers-items-layer-symbol-iconsize)
                public var iconSize: Double?
            
                /// Sets the symbol text (mapbox.layer.layout.text-field).
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#layout-mapbox-layers-items-layer-symbol-text) |
                /// [Python](https://plot.ly/python/reference/#layout-mapbox-layers-items-layer-symbol-text) |
                /// [R](https://plot.ly/r/reference/#layout-mapbox-layers-items-layer-symbol-text)
                public var text: String?
            
                /// Sets the symbol and/or text placement (mapbox.layer.layout.symbol-placement). 
                ///
                /// If `placement` is *point*, the label is placed where the geometry is located If `placement` is
                /// *line*, the label is placed along the line of the geometry If `placement` is *line-center*, the
                /// label is placed on the center of the geometry
                ///
                /// # Used By
                /// `Layout.Mapbox.Layer.Symbol.placement` |
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
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#layout-mapbox-layers-items-layer-symbol-placement) |
                /// [Python](https://plot.ly/python/reference/#layout-mapbox-layers-items-layer-symbol-placement) |
                /// [R](https://plot.ly/r/reference/#layout-mapbox-layers-items-layer-symbol-placement)
                public var placement: Placement?
            
                /// Sets the icon text font (color=mapbox.layer.paint.text-color, size=mapbox.layer.layout.text-size). 
                ///
                /// Has an effect only when `type` is set to *symbol*.
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#layout-mapbox-layers-items-layer-symbol-textfont) |
                /// [Python](https://plot.ly/python/reference/#layout-mapbox-layers-items-layer-symbol-textfont) |
                /// [R](https://plot.ly/r/reference/#layout-mapbox-layers-items-layer-symbol-textfont)
                public var textFont: Shared.Font?
            
                /// Sets the positions of the `text` elements with respects to the (x,y) coordinates.
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#layout-mapbox-layers-items-layer-symbol-textposition) |
                /// [Python](https://plot.ly/python/reference/#layout-mapbox-layers-items-layer-symbol-textposition) |
                /// [R](https://plot.ly/r/reference/#layout-mapbox-layers-items-layer-symbol-textposition)
                public var textPosition: Shared.TextPosition?
            
                /// Plotly compatible property encoding
                enum CodingKeys: String, CodingKey {
                    case icon
                    case iconSize = "iconsize"
                    case text
                    case placement
                    case textFont = "textfont"
                    case textPosition = "textposition"
                }
                
                public init(icon: String? = nil, iconSize: Double? = nil, text: String? = nil, placement: Placement? = nil, textFont: Shared.Font? = nil, textPosition: Shared.TextPosition? = nil) {
                    self.icon = icon
                    self.iconSize = iconSize
                    self.text = text
                    self.placement = placement
                    self.textFont = textFont
                    self.textPosition = textPosition
                }
            }
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-mapbox-layers-items-layer-symbol) |
            /// [Python](https://plot.ly/python/reference/#layout-mapbox-layers-items-layer-symbol) |
            /// [R](https://plot.ly/r/reference/#layout-mapbox-layers-items-layer-symbol)
            public var symbol: Symbol?
        
            /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. 
            ///
            /// You can modify these items in the output figure by making your own item with `templateitemname`
            /// matching this `name` alongside your modifications (including `visible: false` or `enabled:
            /// false` to hide it). Has no effect outside of a template.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-mapbox-layers-items-layer-name) |
            /// [Python](https://plot.ly/python/reference/#layout-mapbox-layers-items-layer-name) |
            /// [R](https://plot.ly/r/reference/#layout-mapbox-layers-items-layer-name)
            public var name: String?
        
            /// Used to refer to a named item in this array in the template. 
            ///
            /// Named items from the template will be created even without a matching item in the input figure,
            /// but you can modify one by making an item with `templateitemname` matching its `name`, alongside
            /// your modifications (including `visible: false` or `enabled: false` to hide it). If there is no
            /// template or no matching item, this item will be hidden unless you explicitly show it with
            /// `visible: true`.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-mapbox-layers-items-layer-templateitemname) |
            /// [Python](https://plot.ly/python/reference/#layout-mapbox-layers-items-layer-templateitemname) |
            /// [R](https://plot.ly/r/reference/#layout-mapbox-layers-items-layer-templateitemname)
            public var templateItemName: String?
        
            /// Plotly compatible property encoding
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
            
            public init(visible: Bool? = nil, sourceType: SourceType? = nil, source: Anything? = nil, sourceLayer: String? = nil, sourceAttribution: String? = nil, type: `Type`? = nil, coordinates: Anything? = nil, below: String? = nil, color: Color? = nil, opacity: Double? = nil, minZoom: Double? = nil, maxZoom: Double? = nil, circle: Circle? = nil, line: DashedLine? = nil, fill: Fill? = nil, symbol: Symbol? = nil, name: String? = nil, templateItemName: String? = nil) {
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
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-mapbox-layers) |
        /// [Python](https://plot.ly/python/reference/#layout-mapbox-layers) |
        /// [R](https://plot.ly/r/reference/#layout-mapbox-layers)
        public var layers: [Layer]?
    
        /// Controls persistence of user-driven changes in the view: `center`, `zoom`, `bearing`, `pitch`. 
        ///
        /// Defaults to `layout.uirevision`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-mapbox-uirevision) |
        /// [Python](https://plot.ly/python/reference/#layout-mapbox-uirevision) |
        /// [R](https://plot.ly/r/reference/#layout-mapbox-uirevision)
        public var uiRevision: Anything?
    
        /// Plotly compatible property encoding
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
        
        public init(domain: Shared.Domain? = nil, accessToken: String? = nil, style: Anything? = nil, center: Center? = nil, zoom: Double? = nil, bearing: Double? = nil, pitch: Double? = nil, layers: [Layer]? = nil, uiRevision: Anything? = nil) {
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-mapbox) |
    /// [Python](https://plot.ly/python/reference/#layout-mapbox) |
    /// [R](https://plot.ly/r/reference/#layout-mapbox)
    public var mapbox: Mapbox?

    /// # Used By
    /// `Layout.polar` |
    public struct Polar: Encodable {
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-domain) |
        /// [Python](https://plot.ly/python/reference/#layout-polar-domain) |
        /// [R](https://plot.ly/r/reference/#layout-polar-domain)
        public var domain: Shared.Domain?
    
        /// Sets angular span of this polar subplot with two angles (in degrees). 
        ///
        /// Sector are assumed to be spanned in the counterclockwise direction with *0* corresponding to
        /// rightmost limit of the polar subplot.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-sector) |
        /// [Python](https://plot.ly/python/reference/#layout-polar-sector) |
        /// [R](https://plot.ly/r/reference/#layout-polar-sector)
        public var sector: InfoArray?
    
        /// Sets the fraction of the radius to cut out of the polar subplot.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-hole) |
        /// [Python](https://plot.ly/python/reference/#layout-polar-hole) |
        /// [R](https://plot.ly/r/reference/#layout-polar-hole)
        public var hole: Double?
    
        /// Set the background color of the subplot
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-bgcolor) |
        /// [Python](https://plot.ly/python/reference/#layout-polar-bgcolor) |
        /// [R](https://plot.ly/r/reference/#layout-polar-bgcolor)
        public var backgroundColor: Color?
    
        /// # Used By
        /// `Layout.Polar.radialAxis` |
        public struct RadialAxis: Encodable {
            /// A single toggle to hide the axis while preserving interaction like dragging. 
            ///
            /// Default is true when a cheater plot is present on the axis, otherwise false
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-radialaxis-visible) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-radialaxis-visible) |
            /// [R](https://plot.ly/r/reference/#layout-polar-radialaxis-visible)
            public var visible: Bool?
        
            /// Sets the axis type. 
            ///
            /// By default, plotly attempts to determined the axis type by looking into the data of the traces
            /// that referenced the axis in question.
            ///
            /// # Used By
            /// `Layout.Polar.RadialAxis.type` |
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
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-radialaxis-type) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-radialaxis-type) |
            /// [R](https://plot.ly/r/reference/#layout-polar-radialaxis-type)
            public var type: `Type`?
        
            /// Determines whether or not the range of this axis is computed in relation to the input data. 
            ///
            /// See `rangemode` for more info. If `range` is provided, then `autorange` is set to *false*.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-radialaxis-autorange) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-radialaxis-autorange) |
            /// [R](https://plot.ly/r/reference/#layout-polar-radialaxis-autorange)
            public var autoRange: Shared.AutoRange?
        
            /// If *tozero*`, the range extends to 0, regardless of the input data If *nonnegative*, the range is non-negative, regardless of the input data. 
            ///
            /// If *normal*, the range is computed in relation to the extrema of the input data (same behavior
            /// as for cartesian axes).
            ///
            /// # Used By
            /// `Layout.Polar.RadialAxis.rangeMode` |
            public enum RangeMode: String, Encodable {
                case toZero = "tozero"
                case nonNegative = "nonnegative"
                case normal
            }
            /// If *tozero*`, the range extends to 0, regardless of the input data If *nonnegative*, the range is non-negative, regardless of the input data. 
            ///
            /// If *normal*, the range is computed in relation to the extrema of the input data (same behavior
            /// as for cartesian axes).
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-radialaxis-rangemode) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-radialaxis-rangemode) |
            /// [R](https://plot.ly/r/reference/#layout-polar-radialaxis-rangemode)
            public var rangeMode: RangeMode?
        
            /// Sets the range of this axis. 
            ///
            /// If the axis `type` is *log*, then you must take the log of your desired range (e.g. to set the
            /// range from 1 to 100, set the range from 0 to 2). If the axis `type` is *date*, it should be date
            /// strings, like date data, though Date objects and unix milliseconds will be accepted and
            /// converted to strings. If the axis `type` is *category*, it should be numbers, using the scale
            /// where each category is assigned a serial number from zero in the order it appears.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-radialaxis-range) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-radialaxis-range) |
            /// [R](https://plot.ly/r/reference/#layout-polar-radialaxis-range)
            public var range: InfoArray?
        
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
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-radialaxis-categoryorder) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-radialaxis-categoryorder) |
            /// [R](https://plot.ly/r/reference/#layout-polar-radialaxis-categoryorder)
            public var categoryOrder: Shared.CategoryOrder?
        
            /// Sets the order in which categories on this axis appear. 
            ///
            /// Only has an effect if `categoryorder` is set to *array*. Used with `categoryorder`.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-radialaxis-categoryarray) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-radialaxis-categoryarray) |
            /// [R](https://plot.ly/r/reference/#layout-polar-radialaxis-categoryarray)
            public var categoryArray: [Double]?
        
            /// Sets the angle (in degrees) from which the radial axis is drawn. 
            ///
            /// Note that by default, radial axis line on the theta=0 line corresponds to a line pointing right
            /// (like what mathematicians prefer). Defaults to the first `polar.sector` angle.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-radialaxis-angle) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-radialaxis-angle) |
            /// [R](https://plot.ly/r/reference/#layout-polar-radialaxis-angle)
            public var angle: Angle?
        
            /// Determines on which side of radial axis line the tick and tick labels appear.
            ///
            /// # Used By
            /// `Layout.Polar.RadialAxis.side` |
            public enum Side: String, Encodable {
                case clockwise
                case counterClockwise = "counterclockwise"
            }
            /// Determines on which side of radial axis line the tick and tick labels appear.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-radialaxis-side) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-radialaxis-side) |
            /// [R](https://plot.ly/r/reference/#layout-polar-radialaxis-side)
            public var side: Side?
        
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-radialaxis-title) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-radialaxis-title) |
            /// [R](https://plot.ly/r/reference/#layout-polar-radialaxis-title)
            public var title: Shared.Title?
        
            /// Sets the hover text formatting rule using d3 formatting mini-languages which are very similar to those in Python. 
            ///
            /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
            /// And for dates see:
            /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
            /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
            /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-radialaxis-hoverformat) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-radialaxis-hoverformat) |
            /// [R](https://plot.ly/r/reference/#layout-polar-radialaxis-hoverformat)
            public var hoverFormat: String?
        
            /// Controls persistence of user-driven changes in axis `range`, `autorange`, `angle`, and `title` if in `editable: true` configuration. 
            ///
            /// Defaults to `polar<N>.uirevision`.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-radialaxis-uirevision) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-radialaxis-uirevision) |
            /// [R](https://plot.ly/r/reference/#layout-polar-radialaxis-uirevision)
            public var uiRevision: Anything?
        
            /// Sets default for all colors associated with this axis all at once: line, font, tick, and grid colors. 
            ///
            /// Grid color is lightened by blending this with the plot background Individual pieces can override
            /// this.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-radialaxis-color) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-radialaxis-color) |
            /// [R](https://plot.ly/r/reference/#layout-polar-radialaxis-color)
            public var color: Color?
        
            /// Determines whether or not a line bounding this axis is drawn.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-radialaxis-showline) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-radialaxis-showline) |
            /// [R](https://plot.ly/r/reference/#layout-polar-radialaxis-showline)
            public var showLine: Bool?
        
            /// Sets the axis line color.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-radialaxis-linecolor) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-radialaxis-linecolor) |
            /// [R](https://plot.ly/r/reference/#layout-polar-radialaxis-linecolor)
            public var lineColor: Color?
        
            /// Sets the width (in px) of the axis line.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-radialaxis-linewidth) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-radialaxis-linewidth) |
            /// [R](https://plot.ly/r/reference/#layout-polar-radialaxis-linewidth)
            public var lineWidth: Double?
        
            /// Determines whether or not grid lines are drawn. 
            ///
            /// If *true*, the grid lines are drawn at every tick mark.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-radialaxis-showgrid) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-radialaxis-showgrid) |
            /// [R](https://plot.ly/r/reference/#layout-polar-radialaxis-showgrid)
            public var showGrid: Bool?
        
            /// Sets the color of the grid lines.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-radialaxis-gridcolor) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-radialaxis-gridcolor) |
            /// [R](https://plot.ly/r/reference/#layout-polar-radialaxis-gridcolor)
            public var gridColor: Color?
        
            /// Sets the width (in px) of the grid lines.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-radialaxis-gridwidth) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-radialaxis-gridwidth) |
            /// [R](https://plot.ly/r/reference/#layout-polar-radialaxis-gridwidth)
            public var gridWidth: Double?
        
            /// Sets the tick mode for this axis. 
            ///
            /// If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is
            /// determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value
            /// if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via
            /// `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is
            /// provided).
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-radialaxis-tickmode) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-radialaxis-tickmode) |
            /// [R](https://plot.ly/r/reference/#layout-polar-radialaxis-tickmode)
            public var tickMode: Shared.TickMode?
        
            /// Specifies the maximum number of ticks for the particular axis. 
            ///
            /// The actual number of ticks will be chosen automatically to be less than or equal to `nticks`.
            /// Has an effect only if `tickmode` is set to *auto*.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-radialaxis-nticks) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-radialaxis-nticks) |
            /// [R](https://plot.ly/r/reference/#layout-polar-radialaxis-nticks)
            public var numTicks: Int?
        
            /// Sets the placement of the first tick on this axis. 
            ///
            /// Use with `dtick`. If the axis `type` is *log*, then you must take the log of your starting tick
            /// (e.g. to set the starting tick to 100, set the `tick0` to 2) except when `dtick`=*L<f>* (see
            /// `dtick` for more info). If the axis `type` is *date*, it should be a date string, like date
            /// data. If the axis `type` is *category*, it should be a number, using the scale where each
            /// category is assigned a serial number from zero in the order it appears.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-radialaxis-tick0) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-radialaxis-tick0) |
            /// [R](https://plot.ly/r/reference/#layout-polar-radialaxis-tick0)
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
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-radialaxis-dtick) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-radialaxis-dtick) |
            /// [R](https://plot.ly/r/reference/#layout-polar-radialaxis-dtick)
            public var dTick: Anything?
        
            /// Sets the values at which ticks on this axis appear. 
            ///
            /// Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-radialaxis-tickvals) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-radialaxis-tickvals) |
            /// [R](https://plot.ly/r/reference/#layout-polar-radialaxis-tickvals)
            public var tickValues: [Double]?
        
            /// Sets the text displayed at the ticks position via `tickvals`. 
            ///
            /// Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-radialaxis-ticktext) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-radialaxis-ticktext) |
            /// [R](https://plot.ly/r/reference/#layout-polar-radialaxis-ticktext)
            public var tickText: [Double]?
        
            /// Determines whether ticks are drawn or not. 
            ///
            /// If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside
            /// (inside) the axis lines.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-radialaxis-ticks) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-radialaxis-ticks) |
            /// [R](https://plot.ly/r/reference/#layout-polar-radialaxis-ticks)
            public var ticks: Shared.Ticks?
        
            /// Sets the tick length (in px).
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-radialaxis-ticklen) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-radialaxis-ticklen) |
            /// [R](https://plot.ly/r/reference/#layout-polar-radialaxis-ticklen)
            public var tickLength: Double?
        
            /// Sets the tick width (in px).
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-radialaxis-tickwidth) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-radialaxis-tickwidth) |
            /// [R](https://plot.ly/r/reference/#layout-polar-radialaxis-tickwidth)
            public var tickWidth: Double?
        
            /// Sets the tick color.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-radialaxis-tickcolor) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-radialaxis-tickcolor) |
            /// [R](https://plot.ly/r/reference/#layout-polar-radialaxis-tickcolor)
            public var tickColor: Color?
        
            /// Determines whether or not the tick labels are drawn.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-radialaxis-showticklabels) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-radialaxis-showticklabels) |
            /// [R](https://plot.ly/r/reference/#layout-polar-radialaxis-showticklabels)
            public var showTickLabels: Bool?
        
            /// If *all*, all tick labels are displayed with a prefix. 
            ///
            /// If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is
            /// displayed with a suffix. If *none*, tick prefixes are hidden.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-radialaxis-showtickprefix) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-radialaxis-showtickprefix) |
            /// [R](https://plot.ly/r/reference/#layout-polar-radialaxis-showtickprefix)
            public var showTickPrefix: Shared.ShowTickPrefix?
        
            /// Sets a tick label prefix.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-radialaxis-tickprefix) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-radialaxis-tickprefix) |
            /// [R](https://plot.ly/r/reference/#layout-polar-radialaxis-tickprefix)
            public var tickPrefix: String?
        
            /// Same as `showtickprefix` but for tick suffixes.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-radialaxis-showticksuffix) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-radialaxis-showticksuffix) |
            /// [R](https://plot.ly/r/reference/#layout-polar-radialaxis-showticksuffix)
            public var showTickSuffix: Shared.ShowTickSuffix?
        
            /// Sets a tick label suffix.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-radialaxis-ticksuffix) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-radialaxis-ticksuffix) |
            /// [R](https://plot.ly/r/reference/#layout-polar-radialaxis-ticksuffix)
            public var tickSuffix: String?
        
            /// If *all*, all exponents are shown besides their significands. 
            ///
            /// If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the
            /// last tick is shown. If *none*, no exponents appear.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-radialaxis-showexponent) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-radialaxis-showexponent) |
            /// [R](https://plot.ly/r/reference/#layout-polar-radialaxis-showexponent)
            public var showExponent: Shared.ShowExponent?
        
            /// Determines a formatting rule for the tick exponents. 
            ///
            /// For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*,
            /// 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-radialaxis-exponentformat) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-radialaxis-exponentformat) |
            /// [R](https://plot.ly/r/reference/#layout-polar-radialaxis-exponentformat)
            public var exponentFormat: Shared.ExponentFormat?
        
            /// If "true", even 4-digit integers are separated
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-radialaxis-separatethousands) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-radialaxis-separatethousands) |
            /// [R](https://plot.ly/r/reference/#layout-polar-radialaxis-separatethousands)
            public var separatethousands: Bool?
        
            /// Sets the tick font.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-radialaxis-tickfont) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-radialaxis-tickfont) |
            /// [R](https://plot.ly/r/reference/#layout-polar-radialaxis-tickfont)
            public var tickFont: Shared.Font?
        
            /// Sets the angle of the tick labels with respect to the horizontal. 
            ///
            /// For example, a `tickangle` of -90 draws the tick labels vertically.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-radialaxis-tickangle) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-radialaxis-tickangle) |
            /// [R](https://plot.ly/r/reference/#layout-polar-radialaxis-tickangle)
            public var tickAngle: Angle?
        
            /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to those in Python. 
            ///
            /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
            /// And for dates see:
            /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
            /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
            /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-radialaxis-tickformat) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-radialaxis-tickformat) |
            /// [R](https://plot.ly/r/reference/#layout-polar-radialaxis-tickformat)
            public var tickFormat: String?
        
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-radialaxis-tickformatstops) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-radialaxis-tickformatstops) |
            /// [R](https://plot.ly/r/reference/#layout-polar-radialaxis-tickformatstops)
            public var tickFormatStops: [Shared.TickFormatStop]?
        
            /// Sets the layer on which this axis is displayed. 
            ///
            /// If *above traces*, this axis is displayed above all the subplot's traces If *below traces*, this
            /// axis is displayed below all the subplot's traces, but above the grid lines. Useful when used
            /// together with scatter-like traces with `cliponaxis` set to *false* to show markers and/or text
            /// nodes above this axis.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-radialaxis-layer) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-radialaxis-layer) |
            /// [R](https://plot.ly/r/reference/#layout-polar-radialaxis-layer)
            public var layer: Shared.Layer?
        
            /// Sets the calendar system to use for `range` and `tick0` if this is a date axis. 
            ///
            /// This does not set the calendar for interpreting data on this axis, that's specified in the trace
            /// or via the global `layout.calendar`
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-radialaxis-calendar) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-radialaxis-calendar) |
            /// [R](https://plot.ly/r/reference/#layout-polar-radialaxis-calendar)
            public var calendar: Shared.Calendar?
        
            /// Plotly compatible property encoding
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
                case separatethousands
                case tickFont = "tickfont"
                case tickAngle = "tickangle"
                case tickFormat = "tickformat"
                case tickFormatStops = "tickformatstops"
                case layer
                case calendar
            }
            
            public init(visible: Bool? = nil, type: `Type`? = nil, autoRange: Shared.AutoRange? = nil, rangeMode: RangeMode? = nil, range: InfoArray? = nil, categoryOrder: Shared.CategoryOrder? = nil, categoryArray: [Double]? = nil, angle: Angle? = nil, side: Side? = nil, title: Shared.Title? = nil, hoverFormat: String? = nil, uiRevision: Anything? = nil, color: Color? = nil, showLine: Bool? = nil, lineColor: Color? = nil, lineWidth: Double? = nil, showGrid: Bool? = nil, gridColor: Color? = nil, gridWidth: Double? = nil, tickMode: Shared.TickMode? = nil, numTicks: Int? = nil, tick0: Anything? = nil, dTick: Anything? = nil, tickValues: [Double]? = nil, tickText: [Double]? = nil, ticks: Shared.Ticks? = nil, tickLength: Double? = nil, tickWidth: Double? = nil, tickColor: Color? = nil, showTickLabels: Bool? = nil, showTickPrefix: Shared.ShowTickPrefix? = nil, tickPrefix: String? = nil, showTickSuffix: Shared.ShowTickSuffix? = nil, tickSuffix: String? = nil, showExponent: Shared.ShowExponent? = nil, exponentFormat: Shared.ExponentFormat? = nil, separatethousands: Bool? = nil, tickFont: Shared.Font? = nil, tickAngle: Angle? = nil, tickFormat: String? = nil, tickFormatStops: [Shared.TickFormatStop]? = nil, layer: Shared.Layer? = nil, calendar: Shared.Calendar? = nil) {
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
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-radialaxis) |
        /// [Python](https://plot.ly/python/reference/#layout-polar-radialaxis) |
        /// [R](https://plot.ly/r/reference/#layout-polar-radialaxis)
        public var radialAxis: RadialAxis?
    
        /// # Used By
        /// `Layout.Polar.angularAxis` |
        public struct AngularAxis: Encodable {
            /// A single toggle to hide the axis while preserving interaction like dragging. 
            ///
            /// Default is true when a cheater plot is present on the axis, otherwise false
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-angularaxis-visible) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-angularaxis-visible) |
            /// [R](https://plot.ly/r/reference/#layout-polar-angularaxis-visible)
            public var visible: Bool?
        
            /// Sets the angular axis type. 
            ///
            /// If *linear*, set `thetaunit` to determine the unit in which axis value are shown. If *category,
            /// use `period` to set the number of integer coordinates around polar axis.
            ///
            /// # Used By
            /// `Layout.Polar.AngularAxis.type` |
            public enum `Type`: String, Encodable {
                case auto = "-"
                case linear
                case category
            }
            /// Sets the angular axis type. 
            ///
            /// If *linear*, set `thetaunit` to determine the unit in which axis value are shown. If *category,
            /// use `period` to set the number of integer coordinates around polar axis.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-angularaxis-type) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-angularaxis-type) |
            /// [R](https://plot.ly/r/reference/#layout-polar-angularaxis-type)
            public var type: `Type`?
        
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
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-angularaxis-categoryorder) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-angularaxis-categoryorder) |
            /// [R](https://plot.ly/r/reference/#layout-polar-angularaxis-categoryorder)
            public var categoryOrder: Shared.CategoryOrder?
        
            /// Sets the order in which categories on this axis appear. 
            ///
            /// Only has an effect if `categoryorder` is set to *array*. Used with `categoryorder`.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-angularaxis-categoryarray) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-angularaxis-categoryarray) |
            /// [R](https://plot.ly/r/reference/#layout-polar-angularaxis-categoryarray)
            public var categoryArray: [Double]?
        
            /// Sets the format unit of the formatted *theta* values. 
            ///
            /// Has an effect only when `angularaxis.type` is *linear*.
            ///
            /// # Used By
            /// `Layout.Polar.AngularAxis.thetaUnit` |
            public enum ThetaUnit: String, Encodable {
                case radians
                case degrees
            }
            /// Sets the format unit of the formatted *theta* values. 
            ///
            /// Has an effect only when `angularaxis.type` is *linear*.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-angularaxis-thetaunit) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-angularaxis-thetaunit) |
            /// [R](https://plot.ly/r/reference/#layout-polar-angularaxis-thetaunit)
            public var thetaUnit: ThetaUnit?
        
            /// Set the angular period. 
            ///
            /// Has an effect only when `angularaxis.type` is *category*.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-angularaxis-period) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-angularaxis-period) |
            /// [R](https://plot.ly/r/reference/#layout-polar-angularaxis-period)
            public var period: Double?
        
            /// Sets the direction corresponding to positive angles.
            ///
            /// # Used By
            /// `Layout.Polar.AngularAxis.direction` |
            public enum Direction: String, Encodable {
                case counterClockwise = "counterclockwise"
                case clockwise
            }
            /// Sets the direction corresponding to positive angles.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-angularaxis-direction) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-angularaxis-direction) |
            /// [R](https://plot.ly/r/reference/#layout-polar-angularaxis-direction)
            public var direction: Direction?
        
            /// Sets that start position (in degrees) of the angular axis By default, polar subplots with `direction` set to *counterclockwise* get a `rotation` of *0* which corresponds to due East (like what mathematicians prefer). 
            ///
            /// In turn, polar with `direction` set to *clockwise* get a rotation of *90* which corresponds to
            /// due North (like on a compass),
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-angularaxis-rotation) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-angularaxis-rotation) |
            /// [R](https://plot.ly/r/reference/#layout-polar-angularaxis-rotation)
            public var rotation: Angle?
        
            /// Sets the hover text formatting rule using d3 formatting mini-languages which are very similar to those in Python. 
            ///
            /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
            /// And for dates see:
            /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
            /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
            /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-angularaxis-hoverformat) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-angularaxis-hoverformat) |
            /// [R](https://plot.ly/r/reference/#layout-polar-angularaxis-hoverformat)
            public var hoverFormat: String?
        
            /// Controls persistence of user-driven changes in axis `rotation`. 
            ///
            /// Defaults to `polar<N>.uirevision`.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-angularaxis-uirevision) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-angularaxis-uirevision) |
            /// [R](https://plot.ly/r/reference/#layout-polar-angularaxis-uirevision)
            public var uiRevision: Anything?
        
            /// Sets default for all colors associated with this axis all at once: line, font, tick, and grid colors. 
            ///
            /// Grid color is lightened by blending this with the plot background Individual pieces can override
            /// this.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-angularaxis-color) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-angularaxis-color) |
            /// [R](https://plot.ly/r/reference/#layout-polar-angularaxis-color)
            public var color: Color?
        
            /// Determines whether or not a line bounding this axis is drawn.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-angularaxis-showline) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-angularaxis-showline) |
            /// [R](https://plot.ly/r/reference/#layout-polar-angularaxis-showline)
            public var showLine: Bool?
        
            /// Sets the axis line color.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-angularaxis-linecolor) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-angularaxis-linecolor) |
            /// [R](https://plot.ly/r/reference/#layout-polar-angularaxis-linecolor)
            public var lineColor: Color?
        
            /// Sets the width (in px) of the axis line.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-angularaxis-linewidth) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-angularaxis-linewidth) |
            /// [R](https://plot.ly/r/reference/#layout-polar-angularaxis-linewidth)
            public var lineWidth: Double?
        
            /// Determines whether or not grid lines are drawn. 
            ///
            /// If *true*, the grid lines are drawn at every tick mark.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-angularaxis-showgrid) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-angularaxis-showgrid) |
            /// [R](https://plot.ly/r/reference/#layout-polar-angularaxis-showgrid)
            public var showGrid: Bool?
        
            /// Sets the color of the grid lines.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-angularaxis-gridcolor) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-angularaxis-gridcolor) |
            /// [R](https://plot.ly/r/reference/#layout-polar-angularaxis-gridcolor)
            public var gridColor: Color?
        
            /// Sets the width (in px) of the grid lines.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-angularaxis-gridwidth) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-angularaxis-gridwidth) |
            /// [R](https://plot.ly/r/reference/#layout-polar-angularaxis-gridwidth)
            public var gridWidth: Double?
        
            /// Sets the tick mode for this axis. 
            ///
            /// If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is
            /// determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value
            /// if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via
            /// `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is
            /// provided).
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-angularaxis-tickmode) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-angularaxis-tickmode) |
            /// [R](https://plot.ly/r/reference/#layout-polar-angularaxis-tickmode)
            public var tickMode: Shared.TickMode?
        
            /// Specifies the maximum number of ticks for the particular axis. 
            ///
            /// The actual number of ticks will be chosen automatically to be less than or equal to `nticks`.
            /// Has an effect only if `tickmode` is set to *auto*.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-angularaxis-nticks) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-angularaxis-nticks) |
            /// [R](https://plot.ly/r/reference/#layout-polar-angularaxis-nticks)
            public var numTicks: Int?
        
            /// Sets the placement of the first tick on this axis. 
            ///
            /// Use with `dtick`. If the axis `type` is *log*, then you must take the log of your starting tick
            /// (e.g. to set the starting tick to 100, set the `tick0` to 2) except when `dtick`=*L<f>* (see
            /// `dtick` for more info). If the axis `type` is *date*, it should be a date string, like date
            /// data. If the axis `type` is *category*, it should be a number, using the scale where each
            /// category is assigned a serial number from zero in the order it appears.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-angularaxis-tick0) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-angularaxis-tick0) |
            /// [R](https://plot.ly/r/reference/#layout-polar-angularaxis-tick0)
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
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-angularaxis-dtick) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-angularaxis-dtick) |
            /// [R](https://plot.ly/r/reference/#layout-polar-angularaxis-dtick)
            public var dTick: Anything?
        
            /// Sets the values at which ticks on this axis appear. 
            ///
            /// Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-angularaxis-tickvals) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-angularaxis-tickvals) |
            /// [R](https://plot.ly/r/reference/#layout-polar-angularaxis-tickvals)
            public var tickValues: [Double]?
        
            /// Sets the text displayed at the ticks position via `tickvals`. 
            ///
            /// Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-angularaxis-ticktext) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-angularaxis-ticktext) |
            /// [R](https://plot.ly/r/reference/#layout-polar-angularaxis-ticktext)
            public var tickText: [Double]?
        
            /// Determines whether ticks are drawn or not. 
            ///
            /// If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside
            /// (inside) the axis lines.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-angularaxis-ticks) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-angularaxis-ticks) |
            /// [R](https://plot.ly/r/reference/#layout-polar-angularaxis-ticks)
            public var ticks: Shared.Ticks?
        
            /// Sets the tick length (in px).
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-angularaxis-ticklen) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-angularaxis-ticklen) |
            /// [R](https://plot.ly/r/reference/#layout-polar-angularaxis-ticklen)
            public var tickLength: Double?
        
            /// Sets the tick width (in px).
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-angularaxis-tickwidth) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-angularaxis-tickwidth) |
            /// [R](https://plot.ly/r/reference/#layout-polar-angularaxis-tickwidth)
            public var tickWidth: Double?
        
            /// Sets the tick color.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-angularaxis-tickcolor) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-angularaxis-tickcolor) |
            /// [R](https://plot.ly/r/reference/#layout-polar-angularaxis-tickcolor)
            public var tickColor: Color?
        
            /// Determines whether or not the tick labels are drawn.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-angularaxis-showticklabels) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-angularaxis-showticklabels) |
            /// [R](https://plot.ly/r/reference/#layout-polar-angularaxis-showticklabels)
            public var showTickLabels: Bool?
        
            /// If *all*, all tick labels are displayed with a prefix. 
            ///
            /// If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is
            /// displayed with a suffix. If *none*, tick prefixes are hidden.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-angularaxis-showtickprefix) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-angularaxis-showtickprefix) |
            /// [R](https://plot.ly/r/reference/#layout-polar-angularaxis-showtickprefix)
            public var showTickPrefix: Shared.ShowTickPrefix?
        
            /// Sets a tick label prefix.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-angularaxis-tickprefix) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-angularaxis-tickprefix) |
            /// [R](https://plot.ly/r/reference/#layout-polar-angularaxis-tickprefix)
            public var tickPrefix: String?
        
            /// Same as `showtickprefix` but for tick suffixes.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-angularaxis-showticksuffix) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-angularaxis-showticksuffix) |
            /// [R](https://plot.ly/r/reference/#layout-polar-angularaxis-showticksuffix)
            public var showTickSuffix: Shared.ShowTickSuffix?
        
            /// Sets a tick label suffix.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-angularaxis-ticksuffix) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-angularaxis-ticksuffix) |
            /// [R](https://plot.ly/r/reference/#layout-polar-angularaxis-ticksuffix)
            public var tickSuffix: String?
        
            /// If *all*, all exponents are shown besides their significands. 
            ///
            /// If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the
            /// last tick is shown. If *none*, no exponents appear.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-angularaxis-showexponent) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-angularaxis-showexponent) |
            /// [R](https://plot.ly/r/reference/#layout-polar-angularaxis-showexponent)
            public var showExponent: Shared.ShowExponent?
        
            /// Determines a formatting rule for the tick exponents. 
            ///
            /// For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*,
            /// 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-angularaxis-exponentformat) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-angularaxis-exponentformat) |
            /// [R](https://plot.ly/r/reference/#layout-polar-angularaxis-exponentformat)
            public var exponentFormat: Shared.ExponentFormat?
        
            /// If "true", even 4-digit integers are separated
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-angularaxis-separatethousands) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-angularaxis-separatethousands) |
            /// [R](https://plot.ly/r/reference/#layout-polar-angularaxis-separatethousands)
            public var separatethousands: Bool?
        
            /// Sets the tick font.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-angularaxis-tickfont) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-angularaxis-tickfont) |
            /// [R](https://plot.ly/r/reference/#layout-polar-angularaxis-tickfont)
            public var tickFont: Shared.Font?
        
            /// Sets the angle of the tick labels with respect to the horizontal. 
            ///
            /// For example, a `tickangle` of -90 draws the tick labels vertically.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-angularaxis-tickangle) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-angularaxis-tickangle) |
            /// [R](https://plot.ly/r/reference/#layout-polar-angularaxis-tickangle)
            public var tickAngle: Angle?
        
            /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to those in Python. 
            ///
            /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
            /// And for dates see:
            /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
            /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
            /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-angularaxis-tickformat) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-angularaxis-tickformat) |
            /// [R](https://plot.ly/r/reference/#layout-polar-angularaxis-tickformat)
            public var tickFormat: String?
        
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-angularaxis-tickformatstops) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-angularaxis-tickformatstops) |
            /// [R](https://plot.ly/r/reference/#layout-polar-angularaxis-tickformatstops)
            public var tickFormatStops: [Shared.TickFormatStop]?
        
            /// Sets the layer on which this axis is displayed. 
            ///
            /// If *above traces*, this axis is displayed above all the subplot's traces If *below traces*, this
            /// axis is displayed below all the subplot's traces, but above the grid lines. Useful when used
            /// together with scatter-like traces with `cliponaxis` set to *false* to show markers and/or text
            /// nodes above this axis.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-angularaxis-layer) |
            /// [Python](https://plot.ly/python/reference/#layout-polar-angularaxis-layer) |
            /// [R](https://plot.ly/r/reference/#layout-polar-angularaxis-layer)
            public var layer: Shared.Layer?
        
            /// Plotly compatible property encoding
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
                case separatethousands
                case tickFont = "tickfont"
                case tickAngle = "tickangle"
                case tickFormat = "tickformat"
                case tickFormatStops = "tickformatstops"
                case layer
            }
            
            public init(visible: Bool? = nil, type: `Type`? = nil, categoryOrder: Shared.CategoryOrder? = nil, categoryArray: [Double]? = nil, thetaUnit: ThetaUnit? = nil, period: Double? = nil, direction: Direction? = nil, rotation: Angle? = nil, hoverFormat: String? = nil, uiRevision: Anything? = nil, color: Color? = nil, showLine: Bool? = nil, lineColor: Color? = nil, lineWidth: Double? = nil, showGrid: Bool? = nil, gridColor: Color? = nil, gridWidth: Double? = nil, tickMode: Shared.TickMode? = nil, numTicks: Int? = nil, tick0: Anything? = nil, dTick: Anything? = nil, tickValues: [Double]? = nil, tickText: [Double]? = nil, ticks: Shared.Ticks? = nil, tickLength: Double? = nil, tickWidth: Double? = nil, tickColor: Color? = nil, showTickLabels: Bool? = nil, showTickPrefix: Shared.ShowTickPrefix? = nil, tickPrefix: String? = nil, showTickSuffix: Shared.ShowTickSuffix? = nil, tickSuffix: String? = nil, showExponent: Shared.ShowExponent? = nil, exponentFormat: Shared.ExponentFormat? = nil, separatethousands: Bool? = nil, tickFont: Shared.Font? = nil, tickAngle: Angle? = nil, tickFormat: String? = nil, tickFormatStops: [Shared.TickFormatStop]? = nil, layer: Shared.Layer? = nil) {
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
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-angularaxis) |
        /// [Python](https://plot.ly/python/reference/#layout-polar-angularaxis) |
        /// [R](https://plot.ly/r/reference/#layout-polar-angularaxis)
        public var angularAxis: AngularAxis?
    
        /// Determines if the radial axis grid lines and angular axis line are drawn as *circular* sectors or as *linear* (polygon) sectors. 
        ///
        /// Has an effect only when the angular axis has `type` *category*. Note that `radialaxis.angle` is
        /// snapped to the angle of the closest vertex when `gridshape` is *circular* (so that radial axis
        /// scale is the same as the data scale).
        ///
        /// # Used By
        /// `Layout.Polar.gridShape` |
        public enum GridShape: String, Encodable {
            case circular
            case linear
        }
        /// Determines if the radial axis grid lines and angular axis line are drawn as *circular* sectors or as *linear* (polygon) sectors. 
        ///
        /// Has an effect only when the angular axis has `type` *category*. Note that `radialaxis.angle` is
        /// snapped to the angle of the closest vertex when `gridshape` is *circular* (so that radial axis
        /// scale is the same as the data scale).
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-gridshape) |
        /// [Python](https://plot.ly/python/reference/#layout-polar-gridshape) |
        /// [R](https://plot.ly/r/reference/#layout-polar-gridshape)
        public var gridShape: GridShape?
    
        /// Controls persistence of user-driven changes in axis attributes, if not overridden in the individual axes. 
        ///
        /// Defaults to `layout.uirevision`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar-uirevision) |
        /// [Python](https://plot.ly/python/reference/#layout-polar-uirevision) |
        /// [R](https://plot.ly/r/reference/#layout-polar-uirevision)
        public var uiRevision: Anything?
    
        /// Plotly compatible property encoding
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
        
        public init(domain: Shared.Domain? = nil, sector: InfoArray? = nil, hole: Double? = nil, backgroundColor: Color? = nil, radialAxis: RadialAxis? = nil, angularAxis: AngularAxis? = nil, gridShape: GridShape? = nil, uiRevision: Anything? = nil) {
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-polar) |
    /// [Python](https://plot.ly/python/reference/#layout-polar) |
    /// [R](https://plot.ly/r/reference/#layout-polar)
    public var polar: Polar?

    /// # Used By
    /// `Layout.legend` |
    public struct Legend: Encodable {
        /// Sets the legend background color.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-legend-bgcolor) |
        /// [Python](https://plot.ly/python/reference/#layout-legend-bgcolor) |
        /// [R](https://plot.ly/r/reference/#layout-legend-bgcolor)
        public var backgroundColor: Color?
    
        /// Sets the color of the border enclosing the legend.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-legend-bordercolor) |
        /// [Python](https://plot.ly/python/reference/#layout-legend-bordercolor) |
        /// [R](https://plot.ly/r/reference/#layout-legend-bordercolor)
        public var borderColor: Color?
    
        /// Sets the width (in px) of the border enclosing the legend.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-legend-borderwidth) |
        /// [Python](https://plot.ly/python/reference/#layout-legend-borderwidth) |
        /// [R](https://plot.ly/r/reference/#layout-legend-borderwidth)
        public var borderWidth: Double?
    
        /// Sets the font used to text the legend items.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-legend-font) |
        /// [Python](https://plot.ly/python/reference/#layout-legend-font) |
        /// [R](https://plot.ly/r/reference/#layout-legend-font)
        public var font: Shared.Font?
    
        /// Sets the orientation of the legend.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-legend-orientation) |
        /// [Python](https://plot.ly/python/reference/#layout-legend-orientation) |
        /// [R](https://plot.ly/r/reference/#layout-legend-orientation)
        public var orientation: Shared.Orientation?
    
        /// Determines the order at which the legend items are displayed. 
        ///
        /// If *normal*, the items are displayed top-to-bottom in the same order as the input data. If
        /// *reversed*, the items are displayed in the opposite order as *normal*. If *grouped*, the items
        /// are displayed in groups (when a trace `legendgroup` is provided). if *grouped+reversed*, the
        /// items are displayed in the opposite order as *grouped*.
        ///
        /// # Used By
        /// `Layout.Legend.traceOrder` |
        public struct TraceOrder: OptionSet, Encodable {
            public let rawValue: Int
        
            public static var reversed: TraceOrder { TraceOrder(rawValue: 1 << 0) }
            public static var grouped: TraceOrder { TraceOrder(rawValue: 1 << 1) }
            public static var normal: TraceOrder { TraceOrder(rawValue: 1 << 2) }
        
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
        /// Determines the order at which the legend items are displayed. 
        ///
        /// If *normal*, the items are displayed top-to-bottom in the same order as the input data. If
        /// *reversed*, the items are displayed in the opposite order as *normal*. If *grouped*, the items
        /// are displayed in groups (when a trace `legendgroup` is provided). if *grouped+reversed*, the
        /// items are displayed in the opposite order as *grouped*.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-legend-traceorder) |
        /// [Python](https://plot.ly/python/reference/#layout-legend-traceorder) |
        /// [R](https://plot.ly/r/reference/#layout-legend-traceorder)
        public var traceOrder: TraceOrder?
    
        /// Sets the amount of vertical space (in px) between legend groups.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-legend-tracegroupgap) |
        /// [Python](https://plot.ly/python/reference/#layout-legend-tracegroupgap) |
        /// [R](https://plot.ly/r/reference/#layout-legend-tracegroupgap)
        public var traceGroupGap: Double?
    
        /// Determines if the legend items symbols scale with their corresponding *trace* attributes or remain *constant* independent of the symbol size on the graph.
        ///
        /// # Used By
        /// `Layout.Legend.itemSizing` |
        public enum ItemSizing: String, Encodable {
            case trace
            case constant
        }
        /// Determines if the legend items symbols scale with their corresponding *trace* attributes or remain *constant* independent of the symbol size on the graph.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-legend-itemsizing) |
        /// [Python](https://plot.ly/python/reference/#layout-legend-itemsizing) |
        /// [R](https://plot.ly/r/reference/#layout-legend-itemsizing)
        public var itemSizing: ItemSizing?
    
        /// Determines the behavior on legend item click. 
        ///
        /// *toggle* toggles the visibility of the item clicked on the graph. *toggleothers* makes the
        /// clicked item the sole visible item on the graph. *false* disable legend item click interactions.
        ///
        /// # Used By
        /// `Layout.Legend.itemClick` |
        public enum ItemClick: Encodable {
            case toggle
            case toggleOthers
            case `false`
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.singleValueContainer()
                switch self {
                case .toggle:
                    try container.encode("toggle")
                case .toggleOthers:
                    try container.encode("toggleothers")
                case .`false`:
                    try container.encode(false)
                }
            }
        }
        /// Determines the behavior on legend item click. 
        ///
        /// *toggle* toggles the visibility of the item clicked on the graph. *toggleothers* makes the
        /// clicked item the sole visible item on the graph. *false* disable legend item click interactions.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-legend-itemclick) |
        /// [Python](https://plot.ly/python/reference/#layout-legend-itemclick) |
        /// [R](https://plot.ly/r/reference/#layout-legend-itemclick)
        public var itemClick: ItemClick?
    
        /// Determines the behavior on legend item double-click. 
        ///
        /// *toggle* toggles the visibility of the item clicked on the graph. *toggleothers* makes the
        /// clicked item the sole visible item on the graph. *false* disable legend item double-click
        /// interactions.
        ///
        /// # Used By
        /// `Layout.Legend.itemDoubleClick` |
        public enum ItemDoubleClick: Encodable {
            case toggle
            case toggleOthers
            case `false`
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.singleValueContainer()
                switch self {
                case .toggle:
                    try container.encode("toggle")
                case .toggleOthers:
                    try container.encode("toggleothers")
                case .`false`:
                    try container.encode(false)
                }
            }
        }
        /// Determines the behavior on legend item double-click. 
        ///
        /// *toggle* toggles the visibility of the item clicked on the graph. *toggleothers* makes the
        /// clicked item the sole visible item on the graph. *false* disable legend item double-click
        /// interactions.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-legend-itemdoubleclick) |
        /// [Python](https://plot.ly/python/reference/#layout-legend-itemdoubleclick) |
        /// [R](https://plot.ly/r/reference/#layout-legend-itemdoubleclick)
        public var itemDoubleClick: ItemDoubleClick?
    
        /// Sets the x position (in normalized coordinates) of the legend. 
        ///
        /// Defaults to *1.02* for vertical legends and defaults to *0* for horizontal legends.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-legend-x) |
        /// [Python](https://plot.ly/python/reference/#layout-legend-x) |
        /// [R](https://plot.ly/r/reference/#layout-legend-x)
        public var x: Double?
    
        /// Sets the legend's horizontal position anchor. 
        ///
        /// This anchor binds the `x` position to the *left*, *center* or *right* of the legend. Value
        /// *auto* anchors legends to the right for `x` values greater than or equal to 2/3, anchors legends
        /// to the left for `x` values less than or equal to 1/3 and anchors legends with respect to their
        /// center otherwise.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-legend-xanchor) |
        /// [Python](https://plot.ly/python/reference/#layout-legend-xanchor) |
        /// [R](https://plot.ly/r/reference/#layout-legend-xanchor)
        public var xAnchor: Shared.XAutoAnchor?
    
        /// Sets the y position (in normalized coordinates) of the legend. 
        ///
        /// Defaults to *1* for vertical legends, defaults to *-0.1* for horizontal legends on graphs w/o
        /// range sliders and defaults to *1.1* for horizontal legends on graph with one or multiple range
        /// sliders.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-legend-y) |
        /// [Python](https://plot.ly/python/reference/#layout-legend-y) |
        /// [R](https://plot.ly/r/reference/#layout-legend-y)
        public var y: Double?
    
        /// Sets the legend's vertical position anchor This anchor binds the `y` position to the *top*, *middle* or *bottom* of the legend. 
        ///
        /// Value *auto* anchors legends at their bottom for `y` values less than or equal to 1/3, anchors
        /// legends to at their top for `y` values greater than or equal to 2/3 and anchors legends with
        /// respect to their middle otherwise.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-legend-yanchor) |
        /// [Python](https://plot.ly/python/reference/#layout-legend-yanchor) |
        /// [R](https://plot.ly/r/reference/#layout-legend-yanchor)
        public var yAnchor: Shared.YAutoAnchor?
    
        /// Controls persistence of legend-driven changes in trace and pie label visibility. 
        ///
        /// Defaults to `layout.uirevision`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-legend-uirevision) |
        /// [Python](https://plot.ly/python/reference/#layout-legend-uirevision) |
        /// [R](https://plot.ly/r/reference/#layout-legend-uirevision)
        public var uiRevision: Anything?
    
        /// Sets the vertical alignment of the symbols with respect to their associated text.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-legend-valign) |
        /// [Python](https://plot.ly/python/reference/#layout-legend-valign) |
        /// [R](https://plot.ly/r/reference/#layout-legend-valign)
        public var verticalAlign: Shared.VerticalAlign?
    
        /// Plotly compatible property encoding
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
        
        public init(backgroundColor: Color? = nil, borderColor: Color? = nil, borderWidth: Double? = nil, font: Shared.Font? = nil, orientation: Shared.Orientation? = nil, traceOrder: TraceOrder? = nil, traceGroupGap: Double? = nil, itemSizing: ItemSizing? = nil, itemClick: ItemClick? = nil, itemDoubleClick: ItemDoubleClick? = nil, x: Double? = nil, xAnchor: Shared.XAutoAnchor? = nil, y: Double? = nil, yAnchor: Shared.YAutoAnchor? = nil, uiRevision: Anything? = nil, verticalAlign: Shared.VerticalAlign? = nil) {
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-legend) |
    /// [Python](https://plot.ly/python/reference/#layout-legend) |
    /// [R](https://plot.ly/r/reference/#layout-legend)
    public var legend: Legend?

    /// # Used By
    /// `Layout.annotations` |
    public struct Annotation: Encodable {
        /// Determines whether or not this annotation is visible.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-annotations-items-annotation-visible) |
        /// [Python](https://plot.ly/python/reference/#layout-annotations-items-annotation-visible) |
        /// [R](https://plot.ly/r/reference/#layout-annotations-items-annotation-visible)
        public var visible: Bool?
    
        /// Sets the text associated with this annotation. 
        ///
        /// Plotly uses a subset of HTML tags to do things like newline (<br>), bold (<b></b>), italics
        /// (<i></i>), hyperlinks (<a href='...'></a>). Tags <em>, <sup>, <sub> <span> are also supported.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-annotations-items-annotation-text) |
        /// [Python](https://plot.ly/python/reference/#layout-annotations-items-annotation-text) |
        /// [R](https://plot.ly/r/reference/#layout-annotations-items-annotation-text)
        public var text: String?
    
        /// Sets the angle at which the `text` is drawn with respect to the horizontal.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-annotations-items-annotation-textangle) |
        /// [Python](https://plot.ly/python/reference/#layout-annotations-items-annotation-textangle) |
        /// [R](https://plot.ly/r/reference/#layout-annotations-items-annotation-textangle)
        public var textAngle: Angle?
    
        /// Sets the annotation text font.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-annotations-items-annotation-font) |
        /// [Python](https://plot.ly/python/reference/#layout-annotations-items-annotation-font) |
        /// [R](https://plot.ly/r/reference/#layout-annotations-items-annotation-font)
        public var font: Shared.Font?
    
        /// Sets an explicit width for the text box. 
        ///
        /// null (default) lets the text set the box width. Wider text will be clipped. There is no
        /// automatic wrapping; use <br> to start a new line.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-annotations-items-annotation-width) |
        /// [Python](https://plot.ly/python/reference/#layout-annotations-items-annotation-width) |
        /// [R](https://plot.ly/r/reference/#layout-annotations-items-annotation-width)
        public var width: Double?
    
        /// Sets an explicit height for the text box. 
        ///
        /// null (default) lets the text set the box height. Taller text will be clipped.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-annotations-items-annotation-height) |
        /// [Python](https://plot.ly/python/reference/#layout-annotations-items-annotation-height) |
        /// [R](https://plot.ly/r/reference/#layout-annotations-items-annotation-height)
        public var height: Double?
    
        /// Sets the opacity of the annotation (text + arrow).
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-annotations-items-annotation-opacity) |
        /// [Python](https://plot.ly/python/reference/#layout-annotations-items-annotation-opacity) |
        /// [R](https://plot.ly/r/reference/#layout-annotations-items-annotation-opacity)
        public var opacity: Double?
    
        /// Sets the horizontal alignment of the `text` within the box. 
        ///
        /// Has an effect only if `text` spans more two or more lines (i.e. `text` contains one or more <br>
        /// HTML tags) or if an explicit width is set to override the text width.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-annotations-items-annotation-align) |
        /// [Python](https://plot.ly/python/reference/#layout-annotations-items-annotation-align) |
        /// [R](https://plot.ly/r/reference/#layout-annotations-items-annotation-align)
        public var align: Shared.HorizontalAlign?
    
        /// Sets the vertical alignment of the `text` within the box. 
        ///
        /// Has an effect only if an explicit height is set to override the text height.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-annotations-items-annotation-valign) |
        /// [Python](https://plot.ly/python/reference/#layout-annotations-items-annotation-valign) |
        /// [R](https://plot.ly/r/reference/#layout-annotations-items-annotation-valign)
        public var verticalAlign: Shared.VerticalAlign?
    
        /// Sets the background color of the annotation.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-annotations-items-annotation-bgcolor) |
        /// [Python](https://plot.ly/python/reference/#layout-annotations-items-annotation-bgcolor) |
        /// [R](https://plot.ly/r/reference/#layout-annotations-items-annotation-bgcolor)
        public var backgroundColor: Color?
    
        /// Sets the color of the border enclosing the annotation `text`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-annotations-items-annotation-bordercolor) |
        /// [Python](https://plot.ly/python/reference/#layout-annotations-items-annotation-bordercolor) |
        /// [R](https://plot.ly/r/reference/#layout-annotations-items-annotation-bordercolor)
        public var borderColor: Color?
    
        /// Sets the padding (in px) between the `text` and the enclosing border.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-annotations-items-annotation-borderpad) |
        /// [Python](https://plot.ly/python/reference/#layout-annotations-items-annotation-borderpad) |
        /// [R](https://plot.ly/r/reference/#layout-annotations-items-annotation-borderpad)
        public var borderPadding: Double?
    
        /// Sets the width (in px) of the border enclosing the annotation `text`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-annotations-items-annotation-borderwidth) |
        /// [Python](https://plot.ly/python/reference/#layout-annotations-items-annotation-borderwidth) |
        /// [R](https://plot.ly/r/reference/#layout-annotations-items-annotation-borderwidth)
        public var borderWidth: Double?
    
        /// Determines whether or not the annotation is drawn with an arrow. 
        ///
        /// If *true*, `text` is placed near the arrow's tail. If *false*, `text` lines up with the `x` and
        /// `y` provided.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-annotations-items-annotation-showarrow) |
        /// [Python](https://plot.ly/python/reference/#layout-annotations-items-annotation-showarrow) |
        /// [R](https://plot.ly/r/reference/#layout-annotations-items-annotation-showarrow)
        public var showArrow: Bool?
    
        /// Sets the color of the annotation arrow.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-annotations-items-annotation-arrowcolor) |
        /// [Python](https://plot.ly/python/reference/#layout-annotations-items-annotation-arrowcolor) |
        /// [R](https://plot.ly/r/reference/#layout-annotations-items-annotation-arrowcolor)
        public var arrowColor: Color?
    
        /// Sets the end annotation arrow head style.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-annotations-items-annotation-arrowhead) |
        /// [Python](https://plot.ly/python/reference/#layout-annotations-items-annotation-arrowhead) |
        /// [R](https://plot.ly/r/reference/#layout-annotations-items-annotation-arrowhead)
        public var arrowHead: Int?
    
        /// Sets the start annotation arrow head style.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-annotations-items-annotation-startarrowhead) |
        /// [Python](https://plot.ly/python/reference/#layout-annotations-items-annotation-startarrowhead) |
        /// [R](https://plot.ly/r/reference/#layout-annotations-items-annotation-startarrowhead)
        public var startArrowHead: Int?
    
        /// Sets the annotation arrow head position.
        ///
        /// # Used By
        /// `Layout.Annotation.arrowSide` |
        public struct ArrowSide: OptionSet, Encodable {
            public let rawValue: Int
        
            public static var end: ArrowSide { ArrowSide(rawValue: 1 << 0) }
            public static var start: ArrowSide { ArrowSide(rawValue: 1 << 1) }
            public static var none: ArrowSide { ArrowSide(rawValue: 1 << 2) }
        
            public init(rawValue: Int) { self.rawValue = rawValue }
        
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
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-annotations-items-annotation-arrowside) |
        /// [Python](https://plot.ly/python/reference/#layout-annotations-items-annotation-arrowside) |
        /// [R](https://plot.ly/r/reference/#layout-annotations-items-annotation-arrowside)
        public var arrowSide: ArrowSide?
    
        /// Sets the size of the end annotation arrow head, relative to `arrowwidth`. 
        ///
        /// A value of 1 (default) gives a head about 3x as wide as the line.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-annotations-items-annotation-arrowsize) |
        /// [Python](https://plot.ly/python/reference/#layout-annotations-items-annotation-arrowsize) |
        /// [R](https://plot.ly/r/reference/#layout-annotations-items-annotation-arrowsize)
        public var arrowSize: Double?
    
        /// Sets the size of the start annotation arrow head, relative to `arrowwidth`. 
        ///
        /// A value of 1 (default) gives a head about 3x as wide as the line.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-annotations-items-annotation-startarrowsize) |
        /// [Python](https://plot.ly/python/reference/#layout-annotations-items-annotation-startarrowsize) |
        /// [R](https://plot.ly/r/reference/#layout-annotations-items-annotation-startarrowsize)
        public var startArrowSize: Double?
    
        /// Sets the width (in px) of annotation arrow line.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-annotations-items-annotation-arrowwidth) |
        /// [Python](https://plot.ly/python/reference/#layout-annotations-items-annotation-arrowwidth) |
        /// [R](https://plot.ly/r/reference/#layout-annotations-items-annotation-arrowwidth)
        public var arrowWidth: Double?
    
        /// Sets a distance, in pixels, to move the end arrowhead away from the position it is pointing at, for example to point at the edge of a marker independent of zoom. 
        ///
        /// Note that this shortens the arrow from the `ax` / `ay` vector, in contrast to `xshift` /
        /// `yshift` which moves everything by this amount.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-annotations-items-annotation-standoff) |
        /// [Python](https://plot.ly/python/reference/#layout-annotations-items-annotation-standoff) |
        /// [R](https://plot.ly/r/reference/#layout-annotations-items-annotation-standoff)
        public var standoff: Double?
    
        /// Sets a distance, in pixels, to move the start arrowhead away from the position it is pointing at, for example to point at the edge of a marker independent of zoom. 
        ///
        /// Note that this shortens the arrow from the `ax` / `ay` vector, in contrast to `xshift` /
        /// `yshift` which moves everything by this amount.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-annotations-items-annotation-startstandoff) |
        /// [Python](https://plot.ly/python/reference/#layout-annotations-items-annotation-startstandoff) |
        /// [R](https://plot.ly/r/reference/#layout-annotations-items-annotation-startstandoff)
        public var startStandoff: Double?
    
        /// Sets the x component of the arrow tail about the arrow head. 
        ///
        /// If `axref` is `pixel`, a positive (negative) component corresponds to an arrow pointing from
        /// right to left (left to right). If `axref` is an axis, this is an absolute value on that axis,
        /// like `x`, NOT a relative value.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-annotations-items-annotation-ax) |
        /// [Python](https://plot.ly/python/reference/#layout-annotations-items-annotation-ax) |
        /// [R](https://plot.ly/r/reference/#layout-annotations-items-annotation-ax)
        public var ax: Anything?
    
        /// Sets the y component of the arrow tail about the arrow head. 
        ///
        /// If `ayref` is `pixel`, a positive (negative) component corresponds to an arrow pointing from
        /// bottom to top (top to bottom). If `ayref` is an axis, this is an absolute value on that axis,
        /// like `y`, NOT a relative value.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-annotations-items-annotation-ay) |
        /// [Python](https://plot.ly/python/reference/#layout-annotations-items-annotation-ay) |
        /// [R](https://plot.ly/r/reference/#layout-annotations-items-annotation-ay)
        public var ay: Anything?
    
        /// Indicates in what terms the tail of the annotation (ax,ay)  is specified. 
        ///
        /// If `pixel`, `ax` is a relative offset in pixels from `x`. If set to an x axis id (e.g. *x* or
        /// *x2*), `ax` is specified in the same terms as that axis. This is useful for trendline
        /// annotations which should continue to indicate the correct trend when zoomed.
        ///
        /// # Used By
        /// `Layout.Annotation.axReference` |
        public enum AxReference: String, Encodable {
            case pixel
            case xSubPlotID = "/^x([2-9]|[1-9][0-9]+)?$/"
        }
        /// Indicates in what terms the tail of the annotation (ax,ay)  is specified. 
        ///
        /// If `pixel`, `ax` is a relative offset in pixels from `x`. If set to an x axis id (e.g. *x* or
        /// *x2*), `ax` is specified in the same terms as that axis. This is useful for trendline
        /// annotations which should continue to indicate the correct trend when zoomed.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-annotations-items-annotation-axref) |
        /// [Python](https://plot.ly/python/reference/#layout-annotations-items-annotation-axref) |
        /// [R](https://plot.ly/r/reference/#layout-annotations-items-annotation-axref)
        public var axReference: AxReference?
    
        /// Indicates in what terms the tail of the annotation (ax,ay)  is specified. 
        ///
        /// If `pixel`, `ay` is a relative offset in pixels from `y`. If set to a y axis id (e.g. *y* or
        /// *y2*), `ay` is specified in the same terms as that axis. This is useful for trendline
        /// annotations which should continue to indicate the correct trend when zoomed.
        ///
        /// # Used By
        /// `Layout.Annotation.ayReference` |
        public enum AyReference: String, Encodable {
            case pixel
            case ySubPlotID = "/^y([2-9]|[1-9][0-9]+)?$/"
        }
        /// Indicates in what terms the tail of the annotation (ax,ay)  is specified. 
        ///
        /// If `pixel`, `ay` is a relative offset in pixels from `y`. If set to a y axis id (e.g. *y* or
        /// *y2*), `ay` is specified in the same terms as that axis. This is useful for trendline
        /// annotations which should continue to indicate the correct trend when zoomed.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-annotations-items-annotation-ayref) |
        /// [Python](https://plot.ly/python/reference/#layout-annotations-items-annotation-ayref) |
        /// [R](https://plot.ly/r/reference/#layout-annotations-items-annotation-ayref)
        public var ayReference: AyReference?
    
        /// Sets the annotation's x coordinate axis. 
        ///
        /// If set to an x axis id (e.g. *x* or *x2*), the `x` position refers to an x coordinate If set to
        /// *paper*, the `x` position refers to the distance from the left side of the plotting area in
        /// normalized coordinates where 0 (1) corresponds to the left (right) side.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-annotations-items-annotation-xref) |
        /// [Python](https://plot.ly/python/reference/#layout-annotations-items-annotation-xref) |
        /// [R](https://plot.ly/r/reference/#layout-annotations-items-annotation-xref)
        public var xReference: Shared.XAxisReference?
    
        /// Sets the annotation's x position. 
        ///
        /// If the axis `type` is *log*, then you must take the log of your desired range. If the axis
        /// `type` is *date*, it should be date strings, like date data, though Date objects and unix
        /// milliseconds will be accepted and converted to strings. If the axis `type` is *category*, it
        /// should be numbers, using the scale where each category is assigned a serial number from zero in
        /// the order it appears.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-annotations-items-annotation-x) |
        /// [Python](https://plot.ly/python/reference/#layout-annotations-items-annotation-x) |
        /// [R](https://plot.ly/r/reference/#layout-annotations-items-annotation-x)
        public var x: Anything?
    
        /// Sets the text box's horizontal position anchor This anchor binds the `x` position to the *left*, *center* or *right* of the annotation. 
        ///
        /// For example, if `x` is set to 1, `xref` to *paper* and `xanchor` to *right* then the right-most
        /// portion of the annotation lines up with the right-most edge of the plotting area. If *auto*, the
        /// anchor is equivalent to *center* for data-referenced annotations or if there is an arrow,
        /// whereas for paper-referenced with no arrow, the anchor picked corresponds to the closest side.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-annotations-items-annotation-xanchor) |
        /// [Python](https://plot.ly/python/reference/#layout-annotations-items-annotation-xanchor) |
        /// [R](https://plot.ly/r/reference/#layout-annotations-items-annotation-xanchor)
        public var xAnchor: Shared.XAutoAnchor?
    
        /// Shifts the position of the whole annotation and arrow to the right (positive) or left (negative) by this many pixels.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-annotations-items-annotation-xshift) |
        /// [Python](https://plot.ly/python/reference/#layout-annotations-items-annotation-xshift) |
        /// [R](https://plot.ly/r/reference/#layout-annotations-items-annotation-xshift)
        public var xShift: Double?
    
        /// Sets the annotation's y coordinate axis. 
        ///
        /// If set to an y axis id (e.g. *y* or *y2*), the `y` position refers to an y coordinate If set to
        /// *paper*, the `y` position refers to the distance from the bottom of the plotting area in
        /// normalized coordinates where 0 (1) corresponds to the bottom (top).
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-annotations-items-annotation-yref) |
        /// [Python](https://plot.ly/python/reference/#layout-annotations-items-annotation-yref) |
        /// [R](https://plot.ly/r/reference/#layout-annotations-items-annotation-yref)
        public var yReference: Shared.YAxisReference?
    
        /// Sets the annotation's y position. 
        ///
        /// If the axis `type` is *log*, then you must take the log of your desired range. If the axis
        /// `type` is *date*, it should be date strings, like date data, though Date objects and unix
        /// milliseconds will be accepted and converted to strings. If the axis `type` is *category*, it
        /// should be numbers, using the scale where each category is assigned a serial number from zero in
        /// the order it appears.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-annotations-items-annotation-y) |
        /// [Python](https://plot.ly/python/reference/#layout-annotations-items-annotation-y) |
        /// [R](https://plot.ly/r/reference/#layout-annotations-items-annotation-y)
        public var y: Anything?
    
        /// Sets the text box's vertical position anchor This anchor binds the `y` position to the *top*, *middle* or *bottom* of the annotation. 
        ///
        /// For example, if `y` is set to 1, `yref` to *paper* and `yanchor` to *top* then the top-most
        /// portion of the annotation lines up with the top-most edge of the plotting area. If *auto*, the
        /// anchor is equivalent to *middle* for data-referenced annotations or if there is an arrow,
        /// whereas for paper-referenced with no arrow, the anchor picked corresponds to the closest side.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-annotations-items-annotation-yanchor) |
        /// [Python](https://plot.ly/python/reference/#layout-annotations-items-annotation-yanchor) |
        /// [R](https://plot.ly/r/reference/#layout-annotations-items-annotation-yanchor)
        public var yAnchor: Shared.YAutoAnchor?
    
        /// Shifts the position of the whole annotation and arrow up (positive) or down (negative) by this many pixels.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-annotations-items-annotation-yshift) |
        /// [Python](https://plot.ly/python/reference/#layout-annotations-items-annotation-yshift) |
        /// [R](https://plot.ly/r/reference/#layout-annotations-items-annotation-yshift)
        public var yShift: Double?
    
        /// Makes this annotation respond to clicks on the plot. 
        ///
        /// If you click a data point that exactly matches the `x` and `y` values of this annotation, and it
        /// is hidden (visible: false), it will appear. In *onoff* mode, you must click the same point again
        /// to make it disappear, so if you click multiple points, you can show multiple annotations. In
        /// *onout* mode, a click anywhere else in the plot (on another data point or not) will hide this
        /// annotation. If you need to show/hide this annotation in response to different `x` or `y` values,
        /// you can set `xclick` and/or `yclick`. This is useful for example to label the side of a bar. To
        /// label markers though, `standoff` is preferred over `xclick` and `yclick`.
        ///
        /// # Used By
        /// `Layout.Annotation.clickToShow` |
        public enum ClickToShow: Encodable {
            case `false`
            case onOff
            case onOut
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.singleValueContainer()
                switch self {
                case .`false`:
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
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-annotations-items-annotation-clicktoshow) |
        /// [Python](https://plot.ly/python/reference/#layout-annotations-items-annotation-clicktoshow) |
        /// [R](https://plot.ly/r/reference/#layout-annotations-items-annotation-clicktoshow)
        public var clickToShow: ClickToShow?
    
        /// Toggle this annotation when clicking a data point whose `x` value is `xclick` rather than the annotation's `x` value.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-annotations-items-annotation-xclick) |
        /// [Python](https://plot.ly/python/reference/#layout-annotations-items-annotation-xclick) |
        /// [R](https://plot.ly/r/reference/#layout-annotations-items-annotation-xclick)
        public var xClick: Anything?
    
        /// Toggle this annotation when clicking a data point whose `y` value is `yclick` rather than the annotation's `y` value.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-annotations-items-annotation-yclick) |
        /// [Python](https://plot.ly/python/reference/#layout-annotations-items-annotation-yclick) |
        /// [R](https://plot.ly/r/reference/#layout-annotations-items-annotation-yclick)
        public var yClick: Anything?
    
        /// Sets text to appear when hovering over this annotation. 
        ///
        /// If omitted or blank, no hover label will appear.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-annotations-items-annotation-hovertext) |
        /// [Python](https://plot.ly/python/reference/#layout-annotations-items-annotation-hovertext) |
        /// [R](https://plot.ly/r/reference/#layout-annotations-items-annotation-hovertext)
        public var hoverText: String?
    
        /// # Used By
        /// `Layout.Annotation.hoverLabel` |
        public struct HoverLabel: Encodable {
            /// Sets the background color of the hover label. 
            ///
            /// By default uses the annotation's `bgcolor` made opaque, or white if it was transparent.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-annotations-items-annotation-hoverlabel-bgcolor) |
            /// [Python](https://plot.ly/python/reference/#layout-annotations-items-annotation-hoverlabel-bgcolor) |
            /// [R](https://plot.ly/r/reference/#layout-annotations-items-annotation-hoverlabel-bgcolor)
            public var backgroundColor: Color?
        
            /// Sets the border color of the hover label. 
            ///
            /// By default uses either dark grey or white, for maximum contrast with `hoverlabel.bgcolor`.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-annotations-items-annotation-hoverlabel-bordercolor) |
            /// [Python](https://plot.ly/python/reference/#layout-annotations-items-annotation-hoverlabel-bordercolor) |
            /// [R](https://plot.ly/r/reference/#layout-annotations-items-annotation-hoverlabel-bordercolor)
            public var borderColor: Color?
        
            /// Sets the hover label text font. 
            ///
            /// By default uses the global hover font and size, with color from `hoverlabel.bordercolor`.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-annotations-items-annotation-hoverlabel-font) |
            /// [Python](https://plot.ly/python/reference/#layout-annotations-items-annotation-hoverlabel-font) |
            /// [R](https://plot.ly/r/reference/#layout-annotations-items-annotation-hoverlabel-font)
            public var font: Shared.Font?
        
            /// Plotly compatible property encoding
            enum CodingKeys: String, CodingKey {
                case backgroundColor = "bgcolor"
                case borderColor = "bordercolor"
                case font
            }
            
            public init(backgroundColor: Color? = nil, borderColor: Color? = nil, font: Shared.Font? = nil) {
                self.backgroundColor = backgroundColor
                self.borderColor = borderColor
                self.font = font
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-annotations-items-annotation-hoverlabel) |
        /// [Python](https://plot.ly/python/reference/#layout-annotations-items-annotation-hoverlabel) |
        /// [R](https://plot.ly/r/reference/#layout-annotations-items-annotation-hoverlabel)
        public var hoverLabel: HoverLabel?
    
        /// Determines whether the annotation text box captures mouse move and click events, or allows those events to pass through to data points in the plot that may be behind the annotation. 
        ///
        /// By default `captureevents` is *false* unless `hovertext` is provided. If you use the event
        /// `plotly_clickannotation` without `hovertext` you must explicitly enable `captureevents`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-annotations-items-annotation-captureevents) |
        /// [Python](https://plot.ly/python/reference/#layout-annotations-items-annotation-captureevents) |
        /// [R](https://plot.ly/r/reference/#layout-annotations-items-annotation-captureevents)
        public var captureEvents: Bool?
    
        /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. 
        ///
        /// You can modify these items in the output figure by making your own item with `templateitemname`
        /// matching this `name` alongside your modifications (including `visible: false` or `enabled:
        /// false` to hide it). Has no effect outside of a template.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-annotations-items-annotation-name) |
        /// [Python](https://plot.ly/python/reference/#layout-annotations-items-annotation-name) |
        /// [R](https://plot.ly/r/reference/#layout-annotations-items-annotation-name)
        public var name: String?
    
        /// Used to refer to a named item in this array in the template. 
        ///
        /// Named items from the template will be created even without a matching item in the input figure,
        /// but you can modify one by making an item with `templateitemname` matching its `name`, alongside
        /// your modifications (including `visible: false` or `enabled: false` to hide it). If there is no
        /// template or no matching item, this item will be hidden unless you explicitly show it with
        /// `visible: true`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-annotations-items-annotation-templateitemname) |
        /// [Python](https://plot.ly/python/reference/#layout-annotations-items-annotation-templateitemname) |
        /// [R](https://plot.ly/r/reference/#layout-annotations-items-annotation-templateitemname)
        public var templateItemName: String?
    
        /// Plotly compatible property encoding
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
        
        public init(visible: Bool? = nil, text: String? = nil, textAngle: Angle? = nil, font: Shared.Font? = nil, width: Double? = nil, height: Double? = nil, opacity: Double? = nil, align: Shared.HorizontalAlign? = nil, verticalAlign: Shared.VerticalAlign? = nil, backgroundColor: Color? = nil, borderColor: Color? = nil, borderPadding: Double? = nil, borderWidth: Double? = nil, showArrow: Bool? = nil, arrowColor: Color? = nil, arrowHead: Int? = nil, startArrowHead: Int? = nil, arrowSide: ArrowSide? = nil, arrowSize: Double? = nil, startArrowSize: Double? = nil, arrowWidth: Double? = nil, standoff: Double? = nil, startStandoff: Double? = nil, ax: Anything? = nil, ay: Anything? = nil, axReference: AxReference? = nil, ayReference: AyReference? = nil, xReference: Shared.XAxisReference? = nil, x: Anything? = nil, xAnchor: Shared.XAutoAnchor? = nil, xShift: Double? = nil, yReference: Shared.YAxisReference? = nil, y: Anything? = nil, yAnchor: Shared.YAutoAnchor? = nil, yShift: Double? = nil, clickToShow: ClickToShow? = nil, xClick: Anything? = nil, yClick: Anything? = nil, hoverText: String? = nil, hoverLabel: HoverLabel? = nil, captureEvents: Bool? = nil, name: String? = nil, templateItemName: String? = nil) {
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-annotations) |
    /// [Python](https://plot.ly/python/reference/#layout-annotations) |
    /// [R](https://plot.ly/r/reference/#layout-annotations)
    public var annotations: [Annotation]?

    /// # Used By
    /// `Layout.shapes` |
    public struct Shape: Encodable {
        /// Determines whether or not this shape is visible.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-shapes-items-shape-visible) |
        /// [Python](https://plot.ly/python/reference/#layout-shapes-items-shape-visible) |
        /// [R](https://plot.ly/r/reference/#layout-shapes-items-shape-visible)
        public var visible: Bool?
    
        /// Specifies the shape type to be drawn. 
        ///
        /// If *line*, a line is drawn from (`x0`,`y0`) to (`x1`,`y1`) with respect to the axes' sizing
        /// mode. If *circle*, a circle is drawn from ((`x0`+`x1`)/2, (`y0`+`y1`)/2)) with radius
        /// (|(`x0`+`x1`)/2 - `x0`|, |(`y0`+`y1`)/2 -`y0`)|) with respect to the axes' sizing mode. If
        /// *rect*, a rectangle is drawn linking (`x0`,`y0`), (`x1`,`y0`), (`x1`,`y1`), (`x0`,`y1`),
        /// (`x0`,`y0`) with respect to the axes' sizing mode. If *path*, draw a custom SVG path using
        /// `path`. with respect to the axes' sizing mode.
        ///
        /// # Used By
        /// `Layout.Shape.type` |
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
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-shapes-items-shape-type) |
        /// [Python](https://plot.ly/python/reference/#layout-shapes-items-shape-type) |
        /// [R](https://plot.ly/r/reference/#layout-shapes-items-shape-type)
        public var type: `Type`?
    
        /// Specifies whether shapes are drawn below or above traces.
        ///
        /// # Used By
        /// `Layout.Shape.layer` |
        public enum Layer: String, Encodable {
            case below
            case above
        }
        /// Specifies whether shapes are drawn below or above traces.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-shapes-items-shape-layer) |
        /// [Python](https://plot.ly/python/reference/#layout-shapes-items-shape-layer) |
        /// [R](https://plot.ly/r/reference/#layout-shapes-items-shape-layer)
        public var layer: Layer?
    
        /// Sets the shape's x coordinate axis. 
        ///
        /// If set to an x axis id (e.g. *x* or *x2*), the `x` position refers to an x coordinate. If set to
        /// *paper*, the `x` position refers to the distance from the left side of the plotting area in
        /// normalized coordinates where *0* (*1*) corresponds to the left (right) side. If the axis `type`
        /// is *log*, then you must take the log of your desired range. If the axis `type` is *date*, then
        /// you must convert the date to unix time in milliseconds.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-shapes-items-shape-xref) |
        /// [Python](https://plot.ly/python/reference/#layout-shapes-items-shape-xref) |
        /// [R](https://plot.ly/r/reference/#layout-shapes-items-shape-xref)
        public var xReference: Shared.XAxisReference?
    
        /// Sets the shapes's sizing mode along the x axis. 
        ///
        /// If set to *scaled*, `x0`, `x1` and x coordinates within `path` refer to data values on the x
        /// axis or a fraction of the plot area's width (`xref` set to *paper*). If set to *pixel*,
        /// `xanchor` specifies the x position in terms of data or plot fraction but `x0`, `x1` and x
        /// coordinates within `path` are pixels relative to `xanchor`. This way, the shape can have a fixed
        /// width while maintaining a position relative to data or plot fraction.
        ///
        /// # Used By
        /// `Layout.Shape.xSizeMode` |
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
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-shapes-items-shape-xsizemode) |
        /// [Python](https://plot.ly/python/reference/#layout-shapes-items-shape-xsizemode) |
        /// [R](https://plot.ly/r/reference/#layout-shapes-items-shape-xsizemode)
        public var xSizeMode: XSizeMode?
    
        /// Only relevant in conjunction with `xsizemode` set to *pixel*. 
        ///
        /// Specifies the anchor point on the x axis to which `x0`, `x1` and x coordinates within `path` are
        /// relative to. E.g. useful to attach a pixel sized shape to a certain data value. No effect when
        /// `xsizemode` not set to *pixel*.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-shapes-items-shape-xanchor) |
        /// [Python](https://plot.ly/python/reference/#layout-shapes-items-shape-xanchor) |
        /// [R](https://plot.ly/r/reference/#layout-shapes-items-shape-xanchor)
        public var xAnchor: Anything?
    
        /// Sets the shape's starting x position. 
        ///
        /// See `type` and `xsizemode` for more info.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-shapes-items-shape-x0) |
        /// [Python](https://plot.ly/python/reference/#layout-shapes-items-shape-x0) |
        /// [R](https://plot.ly/r/reference/#layout-shapes-items-shape-x0)
        public var x0: Anything?
    
        /// Sets the shape's end x position. 
        ///
        /// See `type` and `xsizemode` for more info.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-shapes-items-shape-x1) |
        /// [Python](https://plot.ly/python/reference/#layout-shapes-items-shape-x1) |
        /// [R](https://plot.ly/r/reference/#layout-shapes-items-shape-x1)
        public var x1: Anything?
    
        /// Sets the annotation's y coordinate axis. 
        ///
        /// If set to an y axis id (e.g. *y* or *y2*), the `y` position refers to an y coordinate If set to
        /// *paper*, the `y` position refers to the distance from the bottom of the plotting area in
        /// normalized coordinates where *0* (*1*) corresponds to the bottom (top).
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-shapes-items-shape-yref) |
        /// [Python](https://plot.ly/python/reference/#layout-shapes-items-shape-yref) |
        /// [R](https://plot.ly/r/reference/#layout-shapes-items-shape-yref)
        public var yReference: Shared.YAxisReference?
    
        /// Sets the shapes's sizing mode along the y axis. 
        ///
        /// If set to *scaled*, `y0`, `y1` and y coordinates within `path` refer to data values on the y
        /// axis or a fraction of the plot area's height (`yref` set to *paper*). If set to *pixel*,
        /// `yanchor` specifies the y position in terms of data or plot fraction but `y0`, `y1` and y
        /// coordinates within `path` are pixels relative to `yanchor`. This way, the shape can have a fixed
        /// height while maintaining a position relative to data or plot fraction.
        ///
        /// # Used By
        /// `Layout.Shape.ySizeMode` |
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
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-shapes-items-shape-ysizemode) |
        /// [Python](https://plot.ly/python/reference/#layout-shapes-items-shape-ysizemode) |
        /// [R](https://plot.ly/r/reference/#layout-shapes-items-shape-ysizemode)
        public var ySizeMode: YSizeMode?
    
        /// Only relevant in conjunction with `ysizemode` set to *pixel*. 
        ///
        /// Specifies the anchor point on the y axis to which `y0`, `y1` and y coordinates within `path` are
        /// relative to. E.g. useful to attach a pixel sized shape to a certain data value. No effect when
        /// `ysizemode` not set to *pixel*.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-shapes-items-shape-yanchor) |
        /// [Python](https://plot.ly/python/reference/#layout-shapes-items-shape-yanchor) |
        /// [R](https://plot.ly/r/reference/#layout-shapes-items-shape-yanchor)
        public var yAnchor: Anything?
    
        /// Sets the shape's starting y position. 
        ///
        /// See `type` and `ysizemode` for more info.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-shapes-items-shape-y0) |
        /// [Python](https://plot.ly/python/reference/#layout-shapes-items-shape-y0) |
        /// [R](https://plot.ly/r/reference/#layout-shapes-items-shape-y0)
        public var y0: Anything?
    
        /// Sets the shape's end y position. 
        ///
        /// See `type` and `ysizemode` for more info.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-shapes-items-shape-y1) |
        /// [Python](https://plot.ly/python/reference/#layout-shapes-items-shape-y1) |
        /// [R](https://plot.ly/r/reference/#layout-shapes-items-shape-y1)
        public var y1: Anything?
    
        /// For `type` *path* - a valid SVG path with the pixel values replaced by data values in `xsizemode`/`ysizemode` being *scaled* and taken unmodified as pixels relative to `xanchor` and `yanchor` in case of *pixel* size mode. 
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
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-shapes-items-shape-path) |
        /// [Python](https://plot.ly/python/reference/#layout-shapes-items-shape-path) |
        /// [R](https://plot.ly/r/reference/#layout-shapes-items-shape-path)
        public var path: String?
    
        /// Sets the opacity of the shape.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-shapes-items-shape-opacity) |
        /// [Python](https://plot.ly/python/reference/#layout-shapes-items-shape-opacity) |
        /// [R](https://plot.ly/r/reference/#layout-shapes-items-shape-opacity)
        public var opacity: Double?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-shapes-items-shape-line) |
        /// [Python](https://plot.ly/python/reference/#layout-shapes-items-shape-line) |
        /// [R](https://plot.ly/r/reference/#layout-shapes-items-shape-line)
        public var line: Shared.DashedLine?
    
        /// Sets the color filling the shape's interior.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-shapes-items-shape-fillcolor) |
        /// [Python](https://plot.ly/python/reference/#layout-shapes-items-shape-fillcolor) |
        /// [R](https://plot.ly/r/reference/#layout-shapes-items-shape-fillcolor)
        public var fillColor: Color?
    
        /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. 
        ///
        /// You can modify these items in the output figure by making your own item with `templateitemname`
        /// matching this `name` alongside your modifications (including `visible: false` or `enabled:
        /// false` to hide it). Has no effect outside of a template.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-shapes-items-shape-name) |
        /// [Python](https://plot.ly/python/reference/#layout-shapes-items-shape-name) |
        /// [R](https://plot.ly/r/reference/#layout-shapes-items-shape-name)
        public var name: String?
    
        /// Used to refer to a named item in this array in the template. 
        ///
        /// Named items from the template will be created even without a matching item in the input figure,
        /// but you can modify one by making an item with `templateitemname` matching its `name`, alongside
        /// your modifications (including `visible: false` or `enabled: false` to hide it). If there is no
        /// template or no matching item, this item will be hidden unless you explicitly show it with
        /// `visible: true`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-shapes-items-shape-templateitemname) |
        /// [Python](https://plot.ly/python/reference/#layout-shapes-items-shape-templateitemname) |
        /// [R](https://plot.ly/r/reference/#layout-shapes-items-shape-templateitemname)
        public var templateItemName: String?
    
        /// Plotly compatible property encoding
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
        
        public init(visible: Bool? = nil, type: `Type`? = nil, layer: Layer? = nil, xReference: Shared.XAxisReference? = nil, xSizeMode: XSizeMode? = nil, xAnchor: Anything? = nil, x0: Anything? = nil, x1: Anything? = nil, yReference: Shared.YAxisReference? = nil, ySizeMode: YSizeMode? = nil, yAnchor: Anything? = nil, y0: Anything? = nil, y1: Anything? = nil, path: String? = nil, opacity: Double? = nil, line: Shared.DashedLine? = nil, fillColor: Color? = nil, name: String? = nil, templateItemName: String? = nil) {
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-shapes) |
    /// [Python](https://plot.ly/python/reference/#layout-shapes) |
    /// [R](https://plot.ly/r/reference/#layout-shapes)
    public var shapes: [Shape]?

    /// # Used By
    /// `Layout.images` |
    public struct Image: Encodable {
        /// Determines whether or not this image is visible.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-images-items-image-visible) |
        /// [Python](https://plot.ly/python/reference/#layout-images-items-image-visible) |
        /// [R](https://plot.ly/r/reference/#layout-images-items-image-visible)
        public var visible: Bool?
    
        /// Specifies the URL of the image to be used. 
        ///
        /// The URL must be accessible from the domain where the plot code is run, and can be either
        /// relative or absolute.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-images-items-image-source) |
        /// [Python](https://plot.ly/python/reference/#layout-images-items-image-source) |
        /// [R](https://plot.ly/r/reference/#layout-images-items-image-source)
        public var source: String?
    
        /// Specifies whether images are drawn below or above traces. 
        ///
        /// When `xref` and `yref` are both set to `paper`, image is drawn below the entire plot area.
        ///
        /// # Used By
        /// `Layout.Image.layer` |
        public enum Layer: String, Encodable {
            case below
            case above
        }
        /// Specifies whether images are drawn below or above traces. 
        ///
        /// When `xref` and `yref` are both set to `paper`, image is drawn below the entire plot area.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-images-items-image-layer) |
        /// [Python](https://plot.ly/python/reference/#layout-images-items-image-layer) |
        /// [R](https://plot.ly/r/reference/#layout-images-items-image-layer)
        public var layer: Layer?
    
        /// Sets the image container size horizontally. 
        ///
        /// The image will be sized based on the `position` value. When `xref` is set to `paper`, units are
        /// sized relative to the plot width.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-images-items-image-sizex) |
        /// [Python](https://plot.ly/python/reference/#layout-images-items-image-sizex) |
        /// [R](https://plot.ly/r/reference/#layout-images-items-image-sizex)
        public var xSize: Double?
    
        /// Sets the image container size vertically. 
        ///
        /// The image will be sized based on the `position` value. When `yref` is set to `paper`, units are
        /// sized relative to the plot height.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-images-items-image-sizey) |
        /// [Python](https://plot.ly/python/reference/#layout-images-items-image-sizey) |
        /// [R](https://plot.ly/r/reference/#layout-images-items-image-sizey)
        public var ySize: Double?
    
        /// Specifies which dimension of the image to constrain.
        ///
        /// # Used By
        /// `Layout.Image.sizing` |
        public enum Sizing: String, Encodable {
            case fill
            case contain
            case stretch
        }
        /// Specifies which dimension of the image to constrain.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-images-items-image-sizing) |
        /// [Python](https://plot.ly/python/reference/#layout-images-items-image-sizing) |
        /// [R](https://plot.ly/r/reference/#layout-images-items-image-sizing)
        public var sizing: Sizing?
    
        /// Sets the opacity of the image.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-images-items-image-opacity) |
        /// [Python](https://plot.ly/python/reference/#layout-images-items-image-opacity) |
        /// [R](https://plot.ly/r/reference/#layout-images-items-image-opacity)
        public var opacity: Double?
    
        /// Sets the image's x position. 
        ///
        /// When `xref` is set to `paper`, units are sized relative to the plot height. See `xref` for more
        /// info
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-images-items-image-x) |
        /// [Python](https://plot.ly/python/reference/#layout-images-items-image-x) |
        /// [R](https://plot.ly/r/reference/#layout-images-items-image-x)
        public var x: Anything?
    
        /// Sets the image's y position. 
        ///
        /// When `yref` is set to `paper`, units are sized relative to the plot height. See `yref` for more
        /// info
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-images-items-image-y) |
        /// [Python](https://plot.ly/python/reference/#layout-images-items-image-y) |
        /// [R](https://plot.ly/r/reference/#layout-images-items-image-y)
        public var y: Anything?
    
        /// Sets the anchor for the x position
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-images-items-image-xanchor) |
        /// [Python](https://plot.ly/python/reference/#layout-images-items-image-xanchor) |
        /// [R](https://plot.ly/r/reference/#layout-images-items-image-xanchor)
        public var xAnchor: Shared.XAnchor?
    
        /// Sets the anchor for the y position.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-images-items-image-yanchor) |
        /// [Python](https://plot.ly/python/reference/#layout-images-items-image-yanchor) |
        /// [R](https://plot.ly/r/reference/#layout-images-items-image-yanchor)
        public var yAnchor: Shared.YAnchor?
    
        /// Sets the images's x coordinate axis. 
        ///
        /// If set to a x axis id (e.g. *x* or *x2*), the `x` position refers to an x data coordinate If set
        /// to *paper*, the `x` position refers to the distance from the left of plot in normalized
        /// coordinates where *0* (*1*) corresponds to the left (right).
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-images-items-image-xref) |
        /// [Python](https://plot.ly/python/reference/#layout-images-items-image-xref) |
        /// [R](https://plot.ly/r/reference/#layout-images-items-image-xref)
        public var xReference: Shared.XAxisReference?
    
        /// Sets the images's y coordinate axis. 
        ///
        /// If set to a y axis id (e.g. *y* or *y2*), the `y` position refers to a y data coordinate. If set
        /// to *paper*, the `y` position refers to the distance from the bottom of the plot in normalized
        /// coordinates where *0* (*1*) corresponds to the bottom (top).
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-images-items-image-yref) |
        /// [Python](https://plot.ly/python/reference/#layout-images-items-image-yref) |
        /// [R](https://plot.ly/r/reference/#layout-images-items-image-yref)
        public var yReference: Shared.YAxisReference?
    
        /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. 
        ///
        /// You can modify these items in the output figure by making your own item with `templateitemname`
        /// matching this `name` alongside your modifications (including `visible: false` or `enabled:
        /// false` to hide it). Has no effect outside of a template.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-images-items-image-name) |
        /// [Python](https://plot.ly/python/reference/#layout-images-items-image-name) |
        /// [R](https://plot.ly/r/reference/#layout-images-items-image-name)
        public var name: String?
    
        /// Used to refer to a named item in this array in the template. 
        ///
        /// Named items from the template will be created even without a matching item in the input figure,
        /// but you can modify one by making an item with `templateitemname` matching its `name`, alongside
        /// your modifications (including `visible: false` or `enabled: false` to hide it). If there is no
        /// template or no matching item, this item will be hidden unless you explicitly show it with
        /// `visible: true`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-images-items-image-templateitemname) |
        /// [Python](https://plot.ly/python/reference/#layout-images-items-image-templateitemname) |
        /// [R](https://plot.ly/r/reference/#layout-images-items-image-templateitemname)
        public var templateItemName: String?
    
        /// Plotly compatible property encoding
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
        
        public init(visible: Bool? = nil, source: String? = nil, layer: Layer? = nil, xSize: Double? = nil, ySize: Double? = nil, sizing: Sizing? = nil, opacity: Double? = nil, x: Anything? = nil, y: Anything? = nil, xAnchor: Shared.XAnchor? = nil, yAnchor: Shared.YAnchor? = nil, xReference: Shared.XAxisReference? = nil, yReference: Shared.YAxisReference? = nil, name: String? = nil, templateItemName: String? = nil) {
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-images) |
    /// [Python](https://plot.ly/python/reference/#layout-images) |
    /// [R](https://plot.ly/r/reference/#layout-images)
    public var images: [Image]?

    /// # Used By
    /// `Layout.updateMenus` |
    public struct UpdateMenu: Encodable {
        /// Determines whether or not the update menu is visible.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-updatemenus-items-updatemenu-visible) |
        /// [Python](https://plot.ly/python/reference/#layout-updatemenus-items-updatemenu-visible) |
        /// [R](https://plot.ly/r/reference/#layout-updatemenus-items-updatemenu-visible)
        public var visible: Bool?
    
        /// Determines whether the buttons are accessible via a dropdown menu or whether the buttons are stacked horizontally or vertically
        ///
        /// # Used By
        /// `Layout.UpdateMenu.type` |
        public enum `Type`: String, Encodable {
            case dropDown = "dropdown"
            case buttons
        }
        /// Determines whether the buttons are accessible via a dropdown menu or whether the buttons are stacked horizontally or vertically
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-updatemenus-items-updatemenu-type) |
        /// [Python](https://plot.ly/python/reference/#layout-updatemenus-items-updatemenu-type) |
        /// [R](https://plot.ly/r/reference/#layout-updatemenus-items-updatemenu-type)
        public var type: `Type`?
    
        /// Determines the direction in which the buttons are laid out, whether in a dropdown menu or a row/column of buttons. 
        ///
        /// For `left` and `up`, the buttons will still appear in left-to-right or top-to-bottom order
        /// respectively.
        ///
        /// # Used By
        /// `Layout.UpdateMenu.direction` |
        public enum Direction: String, Encodable {
            case left
            case right
            case up
            case down
        }
        /// Determines the direction in which the buttons are laid out, whether in a dropdown menu or a row/column of buttons. 
        ///
        /// For `left` and `up`, the buttons will still appear in left-to-right or top-to-bottom order
        /// respectively.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-updatemenus-items-updatemenu-direction) |
        /// [Python](https://plot.ly/python/reference/#layout-updatemenus-items-updatemenu-direction) |
        /// [R](https://plot.ly/r/reference/#layout-updatemenus-items-updatemenu-direction)
        public var direction: Direction?
    
        /// Determines which button (by index starting from 0) is considered active.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-updatemenus-items-updatemenu-active) |
        /// [Python](https://plot.ly/python/reference/#layout-updatemenus-items-updatemenu-active) |
        /// [R](https://plot.ly/r/reference/#layout-updatemenus-items-updatemenu-active)
        public var active: Int?
    
        /// Highlights active dropdown item or active button if true.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-updatemenus-items-updatemenu-showactive) |
        /// [Python](https://plot.ly/python/reference/#layout-updatemenus-items-updatemenu-showactive) |
        /// [R](https://plot.ly/r/reference/#layout-updatemenus-items-updatemenu-showactive)
        public var showActive: Bool?
    
        /// # Used By
        /// `Layout.UpdateMenu.buttons` |
        public struct Button: Encodable {
            /// Determines whether or not this button is visible.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-updatemenus-items-updatemenu-buttons-items-button-visible) |
            /// [Python](https://plot.ly/python/reference/#layout-updatemenus-items-updatemenu-buttons-items-button-visible) |
            /// [R](https://plot.ly/r/reference/#layout-updatemenus-items-updatemenu-buttons-items-button-visible)
            public var visible: Bool?
        
            /// Sets the Plotly method to be called on click. 
            ///
            /// If the `skip` method is used, the API updatemenu will function as normal but will perform no API
            /// calls and will not bind automatically to state updates. This may be used to create a component
            /// interface and attach to updatemenu events manually via JavaScript.
            ///
            /// # Used By
            /// `Layout.UpdateMenu.Button.method` |
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
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-updatemenus-items-updatemenu-buttons-items-button-method) |
            /// [Python](https://plot.ly/python/reference/#layout-updatemenus-items-updatemenu-buttons-items-button-method) |
            /// [R](https://plot.ly/r/reference/#layout-updatemenus-items-updatemenu-buttons-items-button-method)
            public var method: Method?
        
            /// Sets the arguments values to be passed to the Plotly method set in `method` on click.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-updatemenus-items-updatemenu-buttons-items-button-args) |
            /// [Python](https://plot.ly/python/reference/#layout-updatemenus-items-updatemenu-buttons-items-button-args) |
            /// [R](https://plot.ly/r/reference/#layout-updatemenus-items-updatemenu-buttons-items-button-args)
            public var args: InfoArray?
        
            /// Sets a 2nd set of `args`, these arguments values are passed to the Plotly method set in `method` when clicking this button while in the active state. 
            ///
            /// Use this to create toggle buttons.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-updatemenus-items-updatemenu-buttons-items-button-args2) |
            /// [Python](https://plot.ly/python/reference/#layout-updatemenus-items-updatemenu-buttons-items-button-args2) |
            /// [R](https://plot.ly/r/reference/#layout-updatemenus-items-updatemenu-buttons-items-button-args2)
            public var args2: InfoArray?
        
            /// Sets the text label to appear on the button.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-updatemenus-items-updatemenu-buttons-items-button-label) |
            /// [Python](https://plot.ly/python/reference/#layout-updatemenus-items-updatemenu-buttons-items-button-label) |
            /// [R](https://plot.ly/r/reference/#layout-updatemenus-items-updatemenu-buttons-items-button-label)
            public var label: String?
        
            /// When true, the API method is executed. 
            ///
            /// When false, all other behaviors are the same and command execution is skipped. This may be
            /// useful when hooking into, for example, the `plotly_buttonclicked` method and executing the API
            /// command manually without losing the benefit of the updatemenu automatically binding to the state
            /// of the plot through the specification of `method` and `args`.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-updatemenus-items-updatemenu-buttons-items-button-execute) |
            /// [Python](https://plot.ly/python/reference/#layout-updatemenus-items-updatemenu-buttons-items-button-execute) |
            /// [R](https://plot.ly/r/reference/#layout-updatemenus-items-updatemenu-buttons-items-button-execute)
            public var execute: Bool?
        
            /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. 
            ///
            /// You can modify these items in the output figure by making your own item with `templateitemname`
            /// matching this `name` alongside your modifications (including `visible: false` or `enabled:
            /// false` to hide it). Has no effect outside of a template.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-updatemenus-items-updatemenu-buttons-items-button-name) |
            /// [Python](https://plot.ly/python/reference/#layout-updatemenus-items-updatemenu-buttons-items-button-name) |
            /// [R](https://plot.ly/r/reference/#layout-updatemenus-items-updatemenu-buttons-items-button-name)
            public var name: String?
        
            /// Used to refer to a named item in this array in the template. 
            ///
            /// Named items from the template will be created even without a matching item in the input figure,
            /// but you can modify one by making an item with `templateitemname` matching its `name`, alongside
            /// your modifications (including `visible: false` or `enabled: false` to hide it). If there is no
            /// template or no matching item, this item will be hidden unless you explicitly show it with
            /// `visible: true`.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-updatemenus-items-updatemenu-buttons-items-button-templateitemname) |
            /// [Python](https://plot.ly/python/reference/#layout-updatemenus-items-updatemenu-buttons-items-button-templateitemname) |
            /// [R](https://plot.ly/r/reference/#layout-updatemenus-items-updatemenu-buttons-items-button-templateitemname)
            public var templateItemName: String?
        
            /// Plotly compatible property encoding
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
            
            public init(visible: Bool? = nil, method: Method? = nil, args: InfoArray? = nil, args2: InfoArray? = nil, label: String? = nil, execute: Bool? = nil, name: String? = nil, templateItemName: String? = nil) {
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
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-updatemenus-items-updatemenu-buttons) |
        /// [Python](https://plot.ly/python/reference/#layout-updatemenus-items-updatemenu-buttons) |
        /// [R](https://plot.ly/r/reference/#layout-updatemenus-items-updatemenu-buttons)
        public var buttons: [Button]?
    
        /// Sets the x position (in normalized coordinates) of the update menu.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-updatemenus-items-updatemenu-x) |
        /// [Python](https://plot.ly/python/reference/#layout-updatemenus-items-updatemenu-x) |
        /// [R](https://plot.ly/r/reference/#layout-updatemenus-items-updatemenu-x)
        public var x: Double?
    
        /// Sets the update menu's horizontal position anchor. 
        ///
        /// This anchor binds the `x` position to the *left*, *center* or *right* of the range selector.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-updatemenus-items-updatemenu-xanchor) |
        /// [Python](https://plot.ly/python/reference/#layout-updatemenus-items-updatemenu-xanchor) |
        /// [R](https://plot.ly/r/reference/#layout-updatemenus-items-updatemenu-xanchor)
        public var xAnchor: Shared.XAutoAnchor?
    
        /// Sets the y position (in normalized coordinates) of the update menu.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-updatemenus-items-updatemenu-y) |
        /// [Python](https://plot.ly/python/reference/#layout-updatemenus-items-updatemenu-y) |
        /// [R](https://plot.ly/r/reference/#layout-updatemenus-items-updatemenu-y)
        public var y: Double?
    
        /// Sets the update menu's vertical position anchor This anchor binds the `y` position to the *top*, *middle* or *bottom* of the range selector.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-updatemenus-items-updatemenu-yanchor) |
        /// [Python](https://plot.ly/python/reference/#layout-updatemenus-items-updatemenu-yanchor) |
        /// [R](https://plot.ly/r/reference/#layout-updatemenus-items-updatemenu-yanchor)
        public var yAnchor: Shared.YAutoAnchor?
    
        /// Sets the padding around the buttons or dropdown menu.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-updatemenus-items-updatemenu-pad) |
        /// [Python](https://plot.ly/python/reference/#layout-updatemenus-items-updatemenu-pad) |
        /// [R](https://plot.ly/r/reference/#layout-updatemenus-items-updatemenu-pad)
        public var padding: Shared.Padding?
    
        /// Sets the font of the update menu button text.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-updatemenus-items-updatemenu-font) |
        /// [Python](https://plot.ly/python/reference/#layout-updatemenus-items-updatemenu-font) |
        /// [R](https://plot.ly/r/reference/#layout-updatemenus-items-updatemenu-font)
        public var font: Shared.Font?
    
        /// Sets the background color of the update menu buttons.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-updatemenus-items-updatemenu-bgcolor) |
        /// [Python](https://plot.ly/python/reference/#layout-updatemenus-items-updatemenu-bgcolor) |
        /// [R](https://plot.ly/r/reference/#layout-updatemenus-items-updatemenu-bgcolor)
        public var backgroundColor: Color?
    
        /// Sets the color of the border enclosing the update menu.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-updatemenus-items-updatemenu-bordercolor) |
        /// [Python](https://plot.ly/python/reference/#layout-updatemenus-items-updatemenu-bordercolor) |
        /// [R](https://plot.ly/r/reference/#layout-updatemenus-items-updatemenu-bordercolor)
        public var borderColor: Color?
    
        /// Sets the width (in px) of the border enclosing the update menu.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-updatemenus-items-updatemenu-borderwidth) |
        /// [Python](https://plot.ly/python/reference/#layout-updatemenus-items-updatemenu-borderwidth) |
        /// [R](https://plot.ly/r/reference/#layout-updatemenus-items-updatemenu-borderwidth)
        public var borderWidth: Double?
    
        /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. 
        ///
        /// You can modify these items in the output figure by making your own item with `templateitemname`
        /// matching this `name` alongside your modifications (including `visible: false` or `enabled:
        /// false` to hide it). Has no effect outside of a template.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-updatemenus-items-updatemenu-name) |
        /// [Python](https://plot.ly/python/reference/#layout-updatemenus-items-updatemenu-name) |
        /// [R](https://plot.ly/r/reference/#layout-updatemenus-items-updatemenu-name)
        public var name: String?
    
        /// Used to refer to a named item in this array in the template. 
        ///
        /// Named items from the template will be created even without a matching item in the input figure,
        /// but you can modify one by making an item with `templateitemname` matching its `name`, alongside
        /// your modifications (including `visible: false` or `enabled: false` to hide it). If there is no
        /// template or no matching item, this item will be hidden unless you explicitly show it with
        /// `visible: true`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-updatemenus-items-updatemenu-templateitemname) |
        /// [Python](https://plot.ly/python/reference/#layout-updatemenus-items-updatemenu-templateitemname) |
        /// [R](https://plot.ly/r/reference/#layout-updatemenus-items-updatemenu-templateitemname)
        public var templateItemName: String?
    
        /// Plotly compatible property encoding
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
        
        public init(visible: Bool? = nil, type: `Type`? = nil, direction: Direction? = nil, active: Int? = nil, showActive: Bool? = nil, buttons: [Button]? = nil, x: Double? = nil, xAnchor: Shared.XAutoAnchor? = nil, y: Double? = nil, yAnchor: Shared.YAutoAnchor? = nil, padding: Shared.Padding? = nil, font: Shared.Font? = nil, backgroundColor: Color? = nil, borderColor: Color? = nil, borderWidth: Double? = nil, name: String? = nil, templateItemName: String? = nil) {
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-updatemenus) |
    /// [Python](https://plot.ly/python/reference/#layout-updatemenus) |
    /// [R](https://plot.ly/r/reference/#layout-updatemenus)
    public var updateMenus: [UpdateMenu]?

    /// # Used By
    /// `Layout.sliders` |
    public struct Slider: Encodable {
        /// Determines whether or not the slider is visible.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-sliders-items-slider-visible) |
        /// [Python](https://plot.ly/python/reference/#layout-sliders-items-slider-visible) |
        /// [R](https://plot.ly/r/reference/#layout-sliders-items-slider-visible)
        public var visible: Bool?
    
        /// Determines which button (by index starting from 0) is considered active.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-sliders-items-slider-active) |
        /// [Python](https://plot.ly/python/reference/#layout-sliders-items-slider-active) |
        /// [R](https://plot.ly/r/reference/#layout-sliders-items-slider-active)
        public var active: Double?
    
        /// # Used By
        /// `Layout.Slider.steps` |
        public struct Step: Encodable {
            /// Determines whether or not this step is included in the slider.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-sliders-items-slider-steps-items-step-visible) |
            /// [Python](https://plot.ly/python/reference/#layout-sliders-items-slider-steps-items-step-visible) |
            /// [R](https://plot.ly/r/reference/#layout-sliders-items-slider-steps-items-step-visible)
            public var visible: Bool?
        
            /// Sets the Plotly method to be called when the slider value is changed. 
            ///
            /// If the `skip` method is used, the API slider will function as normal but will perform no API
            /// calls and will not bind automatically to state updates. This may be used to create a component
            /// interface and attach to slider events manually via JavaScript.
            ///
            /// # Used By
            /// `Layout.Slider.Step.method` |
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
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-sliders-items-slider-steps-items-step-method) |
            /// [Python](https://plot.ly/python/reference/#layout-sliders-items-slider-steps-items-step-method) |
            /// [R](https://plot.ly/r/reference/#layout-sliders-items-slider-steps-items-step-method)
            public var method: Method?
        
            /// Sets the arguments values to be passed to the Plotly method set in `method` on slide.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-sliders-items-slider-steps-items-step-args) |
            /// [Python](https://plot.ly/python/reference/#layout-sliders-items-slider-steps-items-step-args) |
            /// [R](https://plot.ly/r/reference/#layout-sliders-items-slider-steps-items-step-args)
            public var args: InfoArray?
        
            /// Sets the text label to appear on the slider
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-sliders-items-slider-steps-items-step-label) |
            /// [Python](https://plot.ly/python/reference/#layout-sliders-items-slider-steps-items-step-label) |
            /// [R](https://plot.ly/r/reference/#layout-sliders-items-slider-steps-items-step-label)
            public var label: String?
        
            /// Sets the value of the slider step, used to refer to the step programatically. 
            ///
            /// Defaults to the slider label if not provided.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-sliders-items-slider-steps-items-step-value) |
            /// [Python](https://plot.ly/python/reference/#layout-sliders-items-slider-steps-items-step-value) |
            /// [R](https://plot.ly/r/reference/#layout-sliders-items-slider-steps-items-step-value)
            public var value: String?
        
            /// When true, the API method is executed. 
            ///
            /// When false, all other behaviors are the same and command execution is skipped. This may be
            /// useful when hooking into, for example, the `plotly_sliderchange` method and executing the API
            /// command manually without losing the benefit of the slider automatically binding to the state of
            /// the plot through the specification of `method` and `args`.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-sliders-items-slider-steps-items-step-execute) |
            /// [Python](https://plot.ly/python/reference/#layout-sliders-items-slider-steps-items-step-execute) |
            /// [R](https://plot.ly/r/reference/#layout-sliders-items-slider-steps-items-step-execute)
            public var execute: Bool?
        
            /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. 
            ///
            /// You can modify these items in the output figure by making your own item with `templateitemname`
            /// matching this `name` alongside your modifications (including `visible: false` or `enabled:
            /// false` to hide it). Has no effect outside of a template.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-sliders-items-slider-steps-items-step-name) |
            /// [Python](https://plot.ly/python/reference/#layout-sliders-items-slider-steps-items-step-name) |
            /// [R](https://plot.ly/r/reference/#layout-sliders-items-slider-steps-items-step-name)
            public var name: String?
        
            /// Used to refer to a named item in this array in the template. 
            ///
            /// Named items from the template will be created even without a matching item in the input figure,
            /// but you can modify one by making an item with `templateitemname` matching its `name`, alongside
            /// your modifications (including `visible: false` or `enabled: false` to hide it). If there is no
            /// template or no matching item, this item will be hidden unless you explicitly show it with
            /// `visible: true`.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-sliders-items-slider-steps-items-step-templateitemname) |
            /// [Python](https://plot.ly/python/reference/#layout-sliders-items-slider-steps-items-step-templateitemname) |
            /// [R](https://plot.ly/r/reference/#layout-sliders-items-slider-steps-items-step-templateitemname)
            public var templateItemName: String?
        
            /// Plotly compatible property encoding
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
            
            public init(visible: Bool? = nil, method: Method? = nil, args: InfoArray? = nil, label: String? = nil, value: String? = nil, execute: Bool? = nil, name: String? = nil, templateItemName: String? = nil) {
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
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-sliders-items-slider-steps) |
        /// [Python](https://plot.ly/python/reference/#layout-sliders-items-slider-steps) |
        /// [R](https://plot.ly/r/reference/#layout-sliders-items-slider-steps)
        public var steps: [Step]?
    
        /// Determines whether this slider length is set in units of plot *fraction* or in *pixels. 
        ///
        /// Use `len` to set the value.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-sliders-items-slider-lenmode) |
        /// [Python](https://plot.ly/python/reference/#layout-sliders-items-slider-lenmode) |
        /// [R](https://plot.ly/r/reference/#layout-sliders-items-slider-lenmode)
        public var lengthMode: Shared.LengthMode?
    
        /// Sets the length of the slider This measure excludes the padding of both ends. 
        ///
        /// That is, the slider's length is this length minus the padding on both ends.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-sliders-items-slider-len) |
        /// [Python](https://plot.ly/python/reference/#layout-sliders-items-slider-len) |
        /// [R](https://plot.ly/r/reference/#layout-sliders-items-slider-len)
        public var length: Double?
    
        /// Sets the x position (in normalized coordinates) of the slider.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-sliders-items-slider-x) |
        /// [Python](https://plot.ly/python/reference/#layout-sliders-items-slider-x) |
        /// [R](https://plot.ly/r/reference/#layout-sliders-items-slider-x)
        public var x: Double?
    
        /// Set the padding of the slider component along each side.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-sliders-items-slider-pad) |
        /// [Python](https://plot.ly/python/reference/#layout-sliders-items-slider-pad) |
        /// [R](https://plot.ly/r/reference/#layout-sliders-items-slider-pad)
        public var padding: Shared.Padding?
    
        /// Sets the slider's horizontal position anchor. 
        ///
        /// This anchor binds the `x` position to the *left*, *center* or *right* of the range selector.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-sliders-items-slider-xanchor) |
        /// [Python](https://plot.ly/python/reference/#layout-sliders-items-slider-xanchor) |
        /// [R](https://plot.ly/r/reference/#layout-sliders-items-slider-xanchor)
        public var xAnchor: Shared.XAutoAnchor?
    
        /// Sets the y position (in normalized coordinates) of the slider.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-sliders-items-slider-y) |
        /// [Python](https://plot.ly/python/reference/#layout-sliders-items-slider-y) |
        /// [R](https://plot.ly/r/reference/#layout-sliders-items-slider-y)
        public var y: Double?
    
        /// Sets the slider's vertical position anchor This anchor binds the `y` position to the *top*, *middle* or *bottom* of the range selector.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-sliders-items-slider-yanchor) |
        /// [Python](https://plot.ly/python/reference/#layout-sliders-items-slider-yanchor) |
        /// [R](https://plot.ly/r/reference/#layout-sliders-items-slider-yanchor)
        public var yAnchor: Shared.YAutoAnchor?
    
        /// # Used By
        /// `Layout.Slider.transition` |
        public struct Transition: Encodable {
            /// Sets the duration of the slider transition
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-sliders-items-slider-transition-duration) |
            /// [Python](https://plot.ly/python/reference/#layout-sliders-items-slider-transition-duration) |
            /// [R](https://plot.ly/r/reference/#layout-sliders-items-slider-transition-duration)
            public var duration: Double?
        
            /// Sets the easing function of the slider transition
            ///
            /// # Used By
            /// `Layout.Slider.Transition.easing` |
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
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-sliders-items-slider-transition-easing) |
            /// [Python](https://plot.ly/python/reference/#layout-sliders-items-slider-transition-easing) |
            /// [R](https://plot.ly/r/reference/#layout-sliders-items-slider-transition-easing)
            public var easing: Easing?
        
            public init(duration: Double? = nil, easing: Easing? = nil) {
                self.duration = duration
                self.easing = easing
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-sliders-items-slider-transition) |
        /// [Python](https://plot.ly/python/reference/#layout-sliders-items-slider-transition) |
        /// [R](https://plot.ly/r/reference/#layout-sliders-items-slider-transition)
        public var transition: Transition?
    
        /// # Used By
        /// `Layout.Slider.currentValue` |
        public struct CurrentValue: Encodable {
            /// Shows the currently-selected value above the slider.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-sliders-items-slider-currentvalue-visible) |
            /// [Python](https://plot.ly/python/reference/#layout-sliders-items-slider-currentvalue-visible) |
            /// [R](https://plot.ly/r/reference/#layout-sliders-items-slider-currentvalue-visible)
            public var visible: Bool?
        
            /// The alignment of the value readout relative to the length of the slider.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-sliders-items-slider-currentvalue-xanchor) |
            /// [Python](https://plot.ly/python/reference/#layout-sliders-items-slider-currentvalue-xanchor) |
            /// [R](https://plot.ly/r/reference/#layout-sliders-items-slider-currentvalue-xanchor)
            public var xAnchor: Shared.XAnchor?
        
            /// The amount of space, in pixels, between the current value label and the slider.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-sliders-items-slider-currentvalue-offset) |
            /// [Python](https://plot.ly/python/reference/#layout-sliders-items-slider-currentvalue-offset) |
            /// [R](https://plot.ly/r/reference/#layout-sliders-items-slider-currentvalue-offset)
            public var offset: Double?
        
            /// When currentvalue.visible is true, this sets the prefix of the label.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-sliders-items-slider-currentvalue-prefix) |
            /// [Python](https://plot.ly/python/reference/#layout-sliders-items-slider-currentvalue-prefix) |
            /// [R](https://plot.ly/r/reference/#layout-sliders-items-slider-currentvalue-prefix)
            public var prefix: String?
        
            /// When currentvalue.visible is true, this sets the suffix of the label.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-sliders-items-slider-currentvalue-suffix) |
            /// [Python](https://plot.ly/python/reference/#layout-sliders-items-slider-currentvalue-suffix) |
            /// [R](https://plot.ly/r/reference/#layout-sliders-items-slider-currentvalue-suffix)
            public var suffix: String?
        
            /// Sets the font of the current value label text.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#layout-sliders-items-slider-currentvalue-font) |
            /// [Python](https://plot.ly/python/reference/#layout-sliders-items-slider-currentvalue-font) |
            /// [R](https://plot.ly/r/reference/#layout-sliders-items-slider-currentvalue-font)
            public var font: Shared.Font?
        
            /// Plotly compatible property encoding
            enum CodingKeys: String, CodingKey {
                case visible
                case xAnchor = "xanchor"
                case offset
                case prefix
                case suffix
                case font
            }
            
            public init(visible: Bool? = nil, xAnchor: Shared.XAnchor? = nil, offset: Double? = nil, prefix: String? = nil, suffix: String? = nil, font: Shared.Font? = nil) {
                self.visible = visible
                self.xAnchor = xAnchor
                self.offset = offset
                self.prefix = prefix
                self.suffix = suffix
                self.font = font
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-sliders-items-slider-currentvalue) |
        /// [Python](https://plot.ly/python/reference/#layout-sliders-items-slider-currentvalue) |
        /// [R](https://plot.ly/r/reference/#layout-sliders-items-slider-currentvalue)
        public var currentValue: CurrentValue?
    
        /// Sets the font of the slider step labels.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-sliders-items-slider-font) |
        /// [Python](https://plot.ly/python/reference/#layout-sliders-items-slider-font) |
        /// [R](https://plot.ly/r/reference/#layout-sliders-items-slider-font)
        public var font: Shared.Font?
    
        /// Sets the background color of the slider grip while dragging.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-sliders-items-slider-activebgcolor) |
        /// [Python](https://plot.ly/python/reference/#layout-sliders-items-slider-activebgcolor) |
        /// [R](https://plot.ly/r/reference/#layout-sliders-items-slider-activebgcolor)
        public var activeBackgroundColor: Color?
    
        /// Sets the background color of the slider.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-sliders-items-slider-bgcolor) |
        /// [Python](https://plot.ly/python/reference/#layout-sliders-items-slider-bgcolor) |
        /// [R](https://plot.ly/r/reference/#layout-sliders-items-slider-bgcolor)
        public var backgroundColor: Color?
    
        /// Sets the color of the border enclosing the slider.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-sliders-items-slider-bordercolor) |
        /// [Python](https://plot.ly/python/reference/#layout-sliders-items-slider-bordercolor) |
        /// [R](https://plot.ly/r/reference/#layout-sliders-items-slider-bordercolor)
        public var borderColor: Color?
    
        /// Sets the width (in px) of the border enclosing the slider.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-sliders-items-slider-borderwidth) |
        /// [Python](https://plot.ly/python/reference/#layout-sliders-items-slider-borderwidth) |
        /// [R](https://plot.ly/r/reference/#layout-sliders-items-slider-borderwidth)
        public var borderWidth: Double?
    
        /// Sets the length in pixels of step tick marks
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-sliders-items-slider-ticklen) |
        /// [Python](https://plot.ly/python/reference/#layout-sliders-items-slider-ticklen) |
        /// [R](https://plot.ly/r/reference/#layout-sliders-items-slider-ticklen)
        public var tickLength: Double?
    
        /// Sets the color of the border enclosing the slider.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-sliders-items-slider-tickcolor) |
        /// [Python](https://plot.ly/python/reference/#layout-sliders-items-slider-tickcolor) |
        /// [R](https://plot.ly/r/reference/#layout-sliders-items-slider-tickcolor)
        public var tickColor: Color?
    
        /// Sets the tick width (in px).
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-sliders-items-slider-tickwidth) |
        /// [Python](https://plot.ly/python/reference/#layout-sliders-items-slider-tickwidth) |
        /// [R](https://plot.ly/r/reference/#layout-sliders-items-slider-tickwidth)
        public var tickWidth: Double?
    
        /// Sets the length in pixels of minor step tick marks
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-sliders-items-slider-minorticklen) |
        /// [Python](https://plot.ly/python/reference/#layout-sliders-items-slider-minorticklen) |
        /// [R](https://plot.ly/r/reference/#layout-sliders-items-slider-minorticklen)
        public var minorTickLength: Double?
    
        /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. 
        ///
        /// You can modify these items in the output figure by making your own item with `templateitemname`
        /// matching this `name` alongside your modifications (including `visible: false` or `enabled:
        /// false` to hide it). Has no effect outside of a template.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-sliders-items-slider-name) |
        /// [Python](https://plot.ly/python/reference/#layout-sliders-items-slider-name) |
        /// [R](https://plot.ly/r/reference/#layout-sliders-items-slider-name)
        public var name: String?
    
        /// Used to refer to a named item in this array in the template. 
        ///
        /// Named items from the template will be created even without a matching item in the input figure,
        /// but you can modify one by making an item with `templateitemname` matching its `name`, alongside
        /// your modifications (including `visible: false` or `enabled: false` to hide it). If there is no
        /// template or no matching item, this item will be hidden unless you explicitly show it with
        /// `visible: true`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-sliders-items-slider-templateitemname) |
        /// [Python](https://plot.ly/python/reference/#layout-sliders-items-slider-templateitemname) |
        /// [R](https://plot.ly/r/reference/#layout-sliders-items-slider-templateitemname)
        public var templateItemName: String?
    
        /// Plotly compatible property encoding
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
        
        public init(visible: Bool? = nil, active: Double? = nil, steps: [Step]? = nil, lengthMode: Shared.LengthMode? = nil, length: Double? = nil, x: Double? = nil, padding: Shared.Padding? = nil, xAnchor: Shared.XAutoAnchor? = nil, y: Double? = nil, yAnchor: Shared.YAutoAnchor? = nil, transition: Transition? = nil, currentValue: CurrentValue? = nil, font: Shared.Font? = nil, activeBackgroundColor: Color? = nil, backgroundColor: Color? = nil, borderColor: Color? = nil, borderWidth: Double? = nil, tickLength: Double? = nil, tickColor: Color? = nil, tickWidth: Double? = nil, minorTickLength: Double? = nil, name: String? = nil, templateItemName: String? = nil) {
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-sliders) |
    /// [Python](https://plot.ly/python/reference/#layout-sliders) |
    /// [R](https://plot.ly/r/reference/#layout-sliders)
    public var sliders: [Slider]?

    /// # Used By
    /// `Layout.colorScale` |
    public struct ColorMap: Encodable {
        /// Sets the default sequential colorscale for positive values. 
        ///
        /// Note that `autocolorscale` must be true for this attribute to work.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-colorscale-sequential) |
        /// [Python](https://plot.ly/python/reference/#layout-colorscale-sequential) |
        /// [R](https://plot.ly/r/reference/#layout-colorscale-sequential)
        public var sequential: ColorScale?
    
        /// Sets the default sequential colorscale for negative values. 
        ///
        /// Note that `autocolorscale` must be true for this attribute to work.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-colorscale-sequentialminus) |
        /// [Python](https://plot.ly/python/reference/#layout-colorscale-sequentialminus) |
        /// [R](https://plot.ly/r/reference/#layout-colorscale-sequentialminus)
        public var sequentialMinus: ColorScale?
    
        /// Sets the default diverging colorscale. 
        ///
        /// Note that `autocolorscale` must be true for this attribute to work.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-colorscale-diverging) |
        /// [Python](https://plot.ly/python/reference/#layout-colorscale-diverging) |
        /// [R](https://plot.ly/r/reference/#layout-colorscale-diverging)
        public var diverging: ColorScale?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case sequential
            case sequentialMinus = "sequentialminus"
            case diverging
        }
        
        public init(sequential: ColorScale? = nil, sequentialMinus: ColorScale? = nil, diverging: ColorScale? = nil) {
            self.sequential = sequential
            self.sequentialMinus = sequentialMinus
            self.diverging = diverging
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-colorscale) |
    /// [Python](https://plot.ly/python/reference/#layout-colorscale) |
    /// [R](https://plot.ly/r/reference/#layout-colorscale)
    public var colorScale: ColorMap?

    /// # Used By
    /// `Layout.colorAxis` |
    public struct ColorAxis: Encodable {
        /// Determines whether or not the color domain is computed with respect to the input data (here corresponding trace color array(s)) or the bounds set in `cmin` and `cmax`  Defaults to `false` when `cmin` and `cmax` are set by the user.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-cauto) |
        /// [Python](https://plot.ly/python/reference/#layout-coloraxis-cauto) |
        /// [R](https://plot.ly/r/reference/#layout-coloraxis-cauto)
        public var cAuto: Bool?
    
        /// Sets the lower bound of the color domain. 
        ///
        /// Value should have the same units as corresponding trace color array(s) and if set, `cmax` must
        /// be set as well.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-cmin) |
        /// [Python](https://plot.ly/python/reference/#layout-coloraxis-cmin) |
        /// [R](https://plot.ly/r/reference/#layout-coloraxis-cmin)
        public var cMin: Double?
    
        /// Sets the upper bound of the color domain. 
        ///
        /// Value should have the same units as corresponding trace color array(s) and if set, `cmin` must
        /// be set as well.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-cmax) |
        /// [Python](https://plot.ly/python/reference/#layout-coloraxis-cmax) |
        /// [R](https://plot.ly/r/reference/#layout-coloraxis-cmax)
        public var cMax: Double?
    
        /// Sets the mid-point of the color domain by scaling `cmin` and/or `cmax` to be equidistant to this point. 
        ///
        /// Value should have the same units as corresponding trace color array(s). Has no effect when
        /// `cauto` is `false`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-cmid) |
        /// [Python](https://plot.ly/python/reference/#layout-coloraxis-cmid) |
        /// [R](https://plot.ly/r/reference/#layout-coloraxis-cmid)
        public var cMiddle: Double?
    
        /// Sets the colorscale. 
        ///
        /// The colorscale must be an array containing arrays mapping a normalized value to an rgb, rgba,
        /// hex, hsl, hsv, or named color string. At minimum, a mapping for the lowest (0) and highest (1)
        /// values are required. For example, `[[0, 'rgb(0,0,255)'], [1, 'rgb(255,0,0)']]`. To control the
        /// bounds of the colorscale in color space, use`cmin` and `cmax`. Alternatively, `colorscale` may
        /// be a palette name string of the following list:
        /// Greys,YlGnBu,Greens,YlOrRd,Bluered,RdBu,Reds,Blues,Picnic,Rainbow,Portland,Jet,Hot,Blackbody,Earth,Electric,Viridis,Cividis.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorscale) |
        /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorscale) |
        /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorscale)
        public var colorScale: ColorScale?
    
        /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `colorscale`. 
        ///
        /// In case `colorscale` is unspecified or `autocolorscale` is true, the default palette will be
        /// chosen according to whether numbers in the `color` array are all positive, all negative or
        /// mixed.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-autocolorscale) |
        /// [Python](https://plot.ly/python/reference/#layout-coloraxis-autocolorscale) |
        /// [R](https://plot.ly/r/reference/#layout-coloraxis-autocolorscale)
        public var autoColorScale: Bool?
    
        /// Reverses the color mapping if true. 
        ///
        /// If true, `cmin` will correspond to the last color in the array and `cmax` will correspond to the
        /// first color.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-reversescale) |
        /// [Python](https://plot.ly/python/reference/#layout-coloraxis-reversescale) |
        /// [R](https://plot.ly/r/reference/#layout-coloraxis-reversescale)
        public var reverseScale: Bool?
    
        /// Determines whether or not a colorbar is displayed for this trace.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-showscale) |
        /// [Python](https://plot.ly/python/reference/#layout-coloraxis-showscale) |
        /// [R](https://plot.ly/r/reference/#layout-coloraxis-showscale)
        public var showScale: Bool?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar) |
        /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar) |
        /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar)
        public var colorBar: Shared.ColorBar?
    
        /// Plotly compatible property encoding
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
        
        public init(cAuto: Bool? = nil, cMin: Double? = nil, cMax: Double? = nil, cMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: Shared.ColorBar? = nil) {
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis) |
    /// [Python](https://plot.ly/python/reference/#layout-coloraxis) |
    /// [R](https://plot.ly/r/reference/#layout-coloraxis)
    public var colorAxis: ColorAxis?

    /// Plotly compatible property encoding
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
    
    public init(funnelAreaColorWay: ColorList? = nil, extendFunnelAreaColors: Bool? = nil, treemapColorWay: ColorList? = nil, extendTreemapColors: Bool? = nil, sunburstColorWay: ColorList? = nil, extendSunburstColors: Bool? = nil, hiddenLabels: [Double]? = nil, pieColorWay: ColorList? = nil, extendPieColors: Bool? = nil, waterfallMode: WaterfallMode? = nil, waterfallGap: Double? = nil, waterfallGroupGap: Double? = nil, funnelMode: FunnelMode? = nil, funnelGap: Double? = nil, funnelGroupGap: Double? = nil, violinMode: ViolinMode? = nil, violinGap: Double? = nil, violinGroupGap: Double? = nil, boxMode: BoxMode? = nil, boxGap: Double? = nil, boxGroupGap: Double? = nil, barMode: BarMode? = nil, barNormalization: BarNormalization? = nil, barGap: Double? = nil, barGroupGap: Double? = nil, font: Shared.Font? = nil, title: Title? = nil, autoSize: Bool? = nil, width: Double? = nil, height: Double? = nil, margin: Margin? = nil, paperBackgroundColor: Color? = nil, plotBackgroundColor: Color? = nil, separators: String? = nil, hideSources: Bool? = nil, showLegend: Bool? = nil, colorWay: ColorList? = nil, dataRevision: Anything? = nil, uiRevision: Anything? = nil, editRevision: Anything? = nil, selectionRevision: Anything? = nil, template: Anything? = nil, modeBar: ModeBar? = nil, meta: ArrayOrAnything? = nil, transition: Transition? = nil, clickMode: ClickMode? = nil, dragMode: DragMode? = nil, hoverMode: HoverMode? = nil, hoverDistance: Int? = nil, spikeDistance: Int? = nil, hoverLabel: Shared.HoverLabel? = nil, selectDirection: SelectDirection? = nil, grid: Grid? = nil, calendar: Shared.Calendar? = nil, xAxis: XAxis? = nil, yAxis: YAxis? = nil, ternary: Ternary? = nil, scene: Scene? = nil, geo: Geo? = nil, mapbox: Mapbox? = nil, polar: Polar? = nil, legend: Legend? = nil, annotations: [Annotation]? = nil, shapes: [Shape]? = nil, images: [Image]? = nil, updateMenus: [UpdateMenu]? = nil, sliders: [Slider]? = nil, colorScale: ColorMap? = nil, colorAxis: ColorAxis? = nil) {
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
}