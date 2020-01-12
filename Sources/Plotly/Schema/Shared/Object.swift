/// - [Config.Edits0](config/edits)
/// - [Config.Edits0](layout/layoutAttributes/scene/aspectratio/impliedEdits)
/// - [Config.Edits0](traces/histogram2dcontour/attributes/contours/impliedEdits)
/// - [Config.Edits0](traces/contour/attributes/contours/impliedEdits)
/// - [Config.Edits0](traces/contourcarpet/attributes/contours/impliedEdits)
public struct Edits0: Encodable {
    /// Determines if the main anchor of the annotation is editable. 
    ///
    /// The main anchor corresponds to the text (if no arrow) or the arrow (which drags the whole thing
    /// leaving the arrow length & direction unchanged).
    public var annotationPosition: Bool?

    /// Has only an effect for annotations with arrows. 
    ///
    /// Enables changing the length and direction of the arrow.
    public var annotationTail: Bool?

    /// Enables editing annotation text.
    public var annotationText: Bool?

    /// Enables editing axis title text.
    public var axisTitleText: Bool?

    /// Enables moving colorbars.
    public var colorBarPosition: Bool?

    /// Enables editing colorbar title text.
    public var colorBarTitleText: Bool?

    /// Enables moving the legend.
    public var legendPosition: Bool?

    /// Enables editing the trace name fields from the legend
    public var legendText: Bool?

    /// Enables moving shapes.
    public var shapePosition: Bool?

    /// Enables editing the global layout title.
    public var titleText: Bool?

    /// Plotly compatible property encoding
    enum CodingKeys: String, CodingKey {
        case annotationPosition
        case annotationTail
        case annotationText
        case axisTitleText
        case colorBarPosition = "colorbarPosition"
        case colorBarTitleText = "colorbarTitleText"
        case legendPosition
        case legendText
        case shapePosition
        case titleText
    }
    
    public init(annotationPosition: Bool? = nil, annotationTail: Bool? = nil, annotationText: Bool? = nil, axisTitleText: Bool? = nil, colorBarPosition: Bool? = nil, colorBarTitleText: Bool? = nil, legendPosition: Bool? = nil, legendText: Bool? = nil, shapePosition: Bool? = nil, titleText: Bool? = nil) {
        self.annotationPosition = annotationPosition
        self.annotationTail = annotationTail
        self.annotationText = annotationText
        self.axisTitleText = axisTitleText
        self.colorBarPosition = colorBarPosition
        self.colorBarTitleText = colorBarTitleText
        self.legendPosition = legendPosition
        self.legendText = legendText
        self.shapePosition = shapePosition
        self.titleText = titleText
    }
}

/// Sets the global font. 
///
/// Note that fonts used in traces and other layout components inherit from the global font.
/// - [Layout.Font0](layout/layoutAttributes/font)
/// - [Layout.Font0](layout/layoutAttributes/title/font)
/// - [Layout.Font0](layout/layoutAttributes/hoverlabel/font)
/// - [Layout.Font0](layout/layoutAttributes/xaxis/title/font)
/// - [Layout.Font0](layout/layoutAttributes/xaxis/tickfont)
/// - [Layout.Font0](layout/layoutAttributes/xaxis/rangeselector/font)
/// - [Layout.Font0](layout/layoutAttributes/yaxis/title/font)
/// - [Layout.Font0](layout/layoutAttributes/yaxis/tickfont)
/// - [Layout.Font0](layout/layoutAttributes/ternary/aaxis/title/font)
/// - [Layout.Font0](layout/layoutAttributes/ternary/aaxis/tickfont)
/// - [Layout.Font0](layout/layoutAttributes/ternary/baxis/title/font)
/// - [Layout.Font0](layout/layoutAttributes/ternary/baxis/tickfont)
/// - [Layout.Font0](layout/layoutAttributes/ternary/caxis/title/font)
/// - [Layout.Font0](layout/layoutAttributes/ternary/caxis/tickfont)
/// - [Layout.Font0](layout/layoutAttributes/scene/xaxis/title/font)
/// - [Layout.Font0](layout/layoutAttributes/scene/xaxis/tickfont)
/// - [Layout.Font0](layout/layoutAttributes/scene/yaxis/title/font)
/// - [Layout.Font0](layout/layoutAttributes/scene/yaxis/tickfont)
/// - [Layout.Font0](layout/layoutAttributes/scene/zaxis/title/font)
/// - [Layout.Font0](layout/layoutAttributes/scene/zaxis/tickfont)
/// - [Layout.Font0](layout/layoutAttributes/scene/annotations/items/annotation/font)
/// - [Layout.Font0](layout/layoutAttributes/scene/annotations/items/annotation/hoverlabel/font)
/// - [Layout.Font0](layout/layoutAttributes/mapbox/layers/items/layer/symbol/textfont)
/// - [Layout.Font0](layout/layoutAttributes/polar/radialaxis/title/font)
/// - [Layout.Font0](layout/layoutAttributes/polar/radialaxis/tickfont)
/// - [Layout.Font0](layout/layoutAttributes/polar/angularaxis/tickfont)
/// - [Layout.Font0](layout/layoutAttributes/legend/font)
/// - [Layout.Font0](layout/layoutAttributes/annotations/items/annotation/font)
/// - [Layout.Font0](layout/layoutAttributes/annotations/items/annotation/hoverlabel/font)
/// - [Layout.Font0](layout/layoutAttributes/updatemenus/items/updatemenu/font)
/// - [Layout.Font0](layout/layoutAttributes/sliders/items/slider/currentvalue/font)
/// - [Layout.Font0](layout/layoutAttributes/sliders/items/slider/font)
/// - [Layout.Font0](layout/layoutAttributes/coloraxis/colorbar/tickfont)
/// - [Layout.Font0](layout/layoutAttributes/coloraxis/colorbar/title/font)
/// - [Layout.Font0](traces/scatter/attributes/hoverlabel/font)
/// - [Layout.Font0](traces/scatter/attributes/marker/colorbar/tickfont)
/// - [Layout.Font0](traces/scatter/attributes/marker/colorbar/title/font)
/// - [Layout.Font0](traces/scatter/attributes/textfont)
/// - [Layout.Font0](traces/bar/attributes/hoverlabel/font)
/// - [Layout.Font0](traces/bar/attributes/textfont)
/// - [Layout.Font0](traces/bar/attributes/insidetextfont)
/// - [Layout.Font0](traces/bar/attributes/outsidetextfont)
/// - [Layout.Font0](traces/bar/attributes/marker/colorbar/tickfont)
/// - [Layout.Font0](traces/bar/attributes/marker/colorbar/title/font)
/// - [Layout.Font0](traces/box/attributes/hoverlabel/font)
/// - [Layout.Font0](traces/heatmap/attributes/hoverlabel/font)
/// - [Layout.Font0](traces/heatmap/attributes/colorbar/tickfont)
/// - [Layout.Font0](traces/heatmap/attributes/colorbar/title/font)
/// - [Layout.Font0](traces/histogram/attributes/hoverlabel/font)
/// - [Layout.Font0](traces/histogram/attributes/marker/colorbar/tickfont)
/// - [Layout.Font0](traces/histogram/attributes/marker/colorbar/title/font)
/// - [Layout.Font0](traces/histogram2d/attributes/hoverlabel/font)
/// - [Layout.Font0](traces/histogram2d/attributes/colorbar/tickfont)
/// - [Layout.Font0](traces/histogram2d/attributes/colorbar/title/font)
/// - [Layout.Font0](traces/histogram2dcontour/attributes/hoverlabel/font)
/// - [Layout.Font0](traces/histogram2dcontour/attributes/contours/labelfont)
/// - [Layout.Font0](traces/histogram2dcontour/attributes/colorbar/tickfont)
/// - [Layout.Font0](traces/histogram2dcontour/attributes/colorbar/title/font)
/// - [Layout.Font0](traces/contour/attributes/hoverlabel/font)
/// - [Layout.Font0](traces/contour/attributes/contours/labelfont)
/// - [Layout.Font0](traces/contour/attributes/colorbar/tickfont)
/// - [Layout.Font0](traces/contour/attributes/colorbar/title/font)
/// - [Layout.Font0](traces/scatterternary/attributes/hoverlabel/font)
/// - [Layout.Font0](traces/scatterternary/attributes/marker/colorbar/tickfont)
/// - [Layout.Font0](traces/scatterternary/attributes/marker/colorbar/title/font)
/// - [Layout.Font0](traces/scatterternary/attributes/textfont)
/// - [Layout.Font0](traces/violin/attributes/hoverlabel/font)
/// - [Layout.Font0](traces/funnel/attributes/hoverlabel/font)
/// - [Layout.Font0](traces/funnel/attributes/textfont)
/// - [Layout.Font0](traces/funnel/attributes/insidetextfont)
/// - [Layout.Font0](traces/funnel/attributes/outsidetextfont)
/// - [Layout.Font0](traces/funnel/attributes/marker/colorbar/tickfont)
/// - [Layout.Font0](traces/funnel/attributes/marker/colorbar/title/font)
/// - [Layout.Font0](traces/waterfall/attributes/hoverlabel/font)
/// - [Layout.Font0](traces/waterfall/attributes/textfont)
/// - [Layout.Font0](traces/waterfall/attributes/insidetextfont)
/// - [Layout.Font0](traces/waterfall/attributes/outsidetextfont)
/// - [Layout.Font0](traces/image/attributes/hoverlabel/font)
/// - [Layout.Font0](traces/pie/attributes/hoverlabel/font)
/// - [Layout.Font0](traces/pie/attributes/textfont)
/// - [Layout.Font0](traces/pie/attributes/insidetextfont)
/// - [Layout.Font0](traces/pie/attributes/outsidetextfont)
/// - [Layout.Font0](traces/pie/attributes/title/font)
/// - [Layout.Font0](traces/sunburst/attributes/hoverlabel/font)
/// - [Layout.Font0](traces/sunburst/attributes/marker/colorbar/tickfont)
/// - [Layout.Font0](traces/sunburst/attributes/marker/colorbar/title/font)
/// - [Layout.Font0](traces/sunburst/attributes/textfont)
/// - [Layout.Font0](traces/sunburst/attributes/insidetextfont)
/// - [Layout.Font0](traces/sunburst/attributes/outsidetextfont)
/// - [Layout.Font0](traces/treemap/attributes/hoverlabel/font)
/// - [Layout.Font0](traces/treemap/attributes/marker/colorbar/tickfont)
/// - [Layout.Font0](traces/treemap/attributes/marker/colorbar/title/font)
/// - [Layout.Font0](traces/treemap/attributes/pathbar/textfont)
/// - [Layout.Font0](traces/treemap/attributes/textfont)
/// - [Layout.Font0](traces/treemap/attributes/insidetextfont)
/// - [Layout.Font0](traces/treemap/attributes/outsidetextfont)
/// - [Layout.Font0](traces/funnelarea/attributes/hoverlabel/font)
/// - [Layout.Font0](traces/funnelarea/attributes/textfont)
/// - [Layout.Font0](traces/funnelarea/attributes/insidetextfont)
/// - [Layout.Font0](traces/funnelarea/attributes/title/font)
/// - [Layout.Font0](traces/scatter3d/attributes/hoverlabel/font)
/// - [Layout.Font0](traces/scatter3d/attributes/line/colorbar/tickfont)
/// - [Layout.Font0](traces/scatter3d/attributes/line/colorbar/title/font)
/// - [Layout.Font0](traces/scatter3d/attributes/marker/colorbar/tickfont)
/// - [Layout.Font0](traces/scatter3d/attributes/marker/colorbar/title/font)
/// - [Layout.Font0](traces/surface/attributes/hoverlabel/font)
/// - [Layout.Font0](traces/surface/attributes/colorbar/tickfont)
/// - [Layout.Font0](traces/surface/attributes/colorbar/title/font)
/// - [Layout.Font0](traces/isosurface/attributes/hoverlabel/font)
/// - [Layout.Font0](traces/isosurface/attributes/colorbar/tickfont)
/// - [Layout.Font0](traces/isosurface/attributes/colorbar/title/font)
/// - [Layout.Font0](traces/volume/attributes/hoverlabel/font)
/// - [Layout.Font0](traces/volume/attributes/colorbar/tickfont)
/// - [Layout.Font0](traces/volume/attributes/colorbar/title/font)
/// - [Layout.Font0](traces/mesh3d/attributes/hoverlabel/font)
/// - [Layout.Font0](traces/mesh3d/attributes/colorbar/tickfont)
/// - [Layout.Font0](traces/mesh3d/attributes/colorbar/title/font)
/// - [Layout.Font0](traces/cone/attributes/hoverlabel/font)
/// - [Layout.Font0](traces/cone/attributes/colorbar/tickfont)
/// - [Layout.Font0](traces/cone/attributes/colorbar/title/font)
/// - [Layout.Font0](traces/streamtube/attributes/hoverlabel/font)
/// - [Layout.Font0](traces/streamtube/attributes/colorbar/tickfont)
/// - [Layout.Font0](traces/streamtube/attributes/colorbar/title/font)
/// - [Layout.Font0](traces/scattergeo/attributes/hoverlabel/font)
/// - [Layout.Font0](traces/scattergeo/attributes/textfont)
/// - [Layout.Font0](traces/scattergeo/attributes/marker/colorbar/tickfont)
/// - [Layout.Font0](traces/scattergeo/attributes/marker/colorbar/title/font)
/// - [Layout.Font0](traces/choropleth/attributes/hoverlabel/font)
/// - [Layout.Font0](traces/choropleth/attributes/colorbar/tickfont)
/// - [Layout.Font0](traces/choropleth/attributes/colorbar/title/font)
/// - [Layout.Font0](traces/scattergl/attributes/hoverlabel/font)
/// - [Layout.Font0](traces/scattergl/attributes/textfont)
/// - [Layout.Font0](traces/scattergl/attributes/marker/colorbar/tickfont)
/// - [Layout.Font0](traces/scattergl/attributes/marker/colorbar/title/font)
/// - [Layout.Font0](traces/splom/attributes/hoverlabel/font)
/// - [Layout.Font0](traces/splom/attributes/marker/colorbar/tickfont)
/// - [Layout.Font0](traces/splom/attributes/marker/colorbar/title/font)
/// - [Layout.Font0](traces/pointcloud/attributes/hoverlabel/font)
/// - [Layout.Font0](traces/heatmapgl/attributes/hoverlabel/font)
/// - [Layout.Font0](traces/heatmapgl/attributes/colorbar/tickfont)
/// - [Layout.Font0](traces/heatmapgl/attributes/colorbar/title/font)
/// - [Layout.Font0](traces/parcoords/attributes/labelfont)
/// - [Layout.Font0](traces/parcoords/attributes/tickfont)
/// - [Layout.Font0](traces/parcoords/attributes/rangefont)
/// - [Layout.Font0](traces/parcoords/attributes/line/colorbar/tickfont)
/// - [Layout.Font0](traces/parcoords/attributes/line/colorbar/title/font)
/// - [Layout.Font0](traces/parcats/attributes/labelfont)
/// - [Layout.Font0](traces/parcats/attributes/tickfont)
/// - [Layout.Font0](traces/parcats/attributes/line/colorbar/tickfont)
/// - [Layout.Font0](traces/parcats/attributes/line/colorbar/title/font)
/// - [Layout.Font0](traces/scattermapbox/attributes/hoverlabel/font)
/// - [Layout.Font0](traces/scattermapbox/attributes/marker/colorbar/tickfont)
/// - [Layout.Font0](traces/scattermapbox/attributes/marker/colorbar/title/font)
/// - [Layout.Font0](traces/scattermapbox/attributes/textfont)
/// - [Layout.Font0](traces/choroplethmapbox/attributes/hoverlabel/font)
/// - [Layout.Font0](traces/choroplethmapbox/attributes/colorbar/tickfont)
/// - [Layout.Font0](traces/choroplethmapbox/attributes/colorbar/title/font)
/// - [Layout.Font0](traces/densitymapbox/attributes/hoverlabel/font)
/// - [Layout.Font0](traces/densitymapbox/attributes/colorbar/tickfont)
/// - [Layout.Font0](traces/densitymapbox/attributes/colorbar/title/font)
/// - [Layout.Font0](traces/sankey/attributes/hoverlabel/font)
/// - [Layout.Font0](traces/sankey/attributes/textfont)
/// - [Layout.Font0](traces/sankey/attributes/node/hoverlabel/font)
/// - [Layout.Font0](traces/sankey/attributes/link/hoverlabel/font)
/// - [Layout.Font0](traces/indicator/attributes/title/font)
/// - [Layout.Font0](traces/indicator/attributes/number/font)
/// - [Layout.Font0](traces/indicator/attributes/delta/font)
/// - [Layout.Font0](traces/indicator/attributes/gauge/axis/tickfont)
/// - [Layout.Font0](traces/table/attributes/hoverlabel/font)
/// - [Layout.Font0](traces/table/attributes/header/font)
/// - [Layout.Font0](traces/table/attributes/cells/font)
/// - [Layout.Font0](traces/carpet/attributes/aaxis/title/font)
/// - [Layout.Font0](traces/carpet/attributes/aaxis/tickfont)
/// - [Layout.Font0](traces/carpet/attributes/baxis/title/font)
/// - [Layout.Font0](traces/carpet/attributes/baxis/tickfont)
/// - [Layout.Font0](traces/carpet/attributes/font)
/// - [Layout.Font0](traces/scattercarpet/attributes/hoverlabel/font)
/// - [Layout.Font0](traces/scattercarpet/attributes/marker/colorbar/tickfont)
/// - [Layout.Font0](traces/scattercarpet/attributes/marker/colorbar/title/font)
/// - [Layout.Font0](traces/scattercarpet/attributes/textfont)
/// - [Layout.Font0](traces/contourcarpet/attributes/contours/labelfont)
/// - [Layout.Font0](traces/contourcarpet/attributes/colorbar/tickfont)
/// - [Layout.Font0](traces/contourcarpet/attributes/colorbar/title/font)
/// - [Layout.Font0](traces/ohlc/attributes/hoverlabel/font)
/// - [Layout.Font0](traces/candlestick/attributes/hoverlabel/font)
/// - [Layout.Font0](traces/scatterpolar/attributes/hoverlabel/font)
/// - [Layout.Font0](traces/scatterpolar/attributes/marker/colorbar/tickfont)
/// - [Layout.Font0](traces/scatterpolar/attributes/marker/colorbar/title/font)
/// - [Layout.Font0](traces/scatterpolar/attributes/textfont)
/// - [Layout.Font0](traces/scatterpolargl/attributes/hoverlabel/font)
/// - [Layout.Font0](traces/scatterpolargl/attributes/marker/colorbar/tickfont)
/// - [Layout.Font0](traces/scatterpolargl/attributes/marker/colorbar/title/font)
/// - [Layout.Font0](traces/scatterpolargl/attributes/textfont)
/// - [Layout.Font0](traces/barpolar/attributes/hoverlabel/font)
/// - [Layout.Font0](traces/barpolar/attributes/marker/colorbar/tickfont)
/// - [Layout.Font0](traces/barpolar/attributes/marker/colorbar/title/font)
/// - [Layout.Font0](traces/area/attributes/hoverlabel/font)
public struct Font0: Encodable {
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

/// - [Layout.Title0](layout/layoutAttributes/title)
/// - [Layout.Title0](layout/layoutAttributes/ternary/aaxis/title)
/// - [Layout.Title0](layout/layoutAttributes/ternary/baxis/title)
/// - [Layout.Title0](layout/layoutAttributes/ternary/caxis/title)
/// - [Layout.Title0](layout/layoutAttributes/scene/xaxis/title)
/// - [Layout.Title0](layout/layoutAttributes/scene/yaxis/title)
/// - [Layout.Title0](layout/layoutAttributes/scene/zaxis/title)
/// - [Layout.Title0](layout/layoutAttributes/polar/radialaxis/title)
public struct Title0: Encodable {
    /// Sets the plot's title. 
    ///
    /// Note that before the existence of `title.text`, the title's contents used to be defined as the
    /// `title` attribute itself. This behavior has been deprecated.
    public var text: String?

    /// Sets the title font. 
    ///
    /// Note that the title's font used to be customized by the now deprecated `titlefont` attribute.
    public var font: Font0?

    /// Sets the container `x` refers to. 
    ///
    /// *container* spans the entire `width` of the plot. *paper* refers to the width of the plotting
    /// area only.
    /// - [Layout.Title0.XReference](layout/layoutAttributes/title/xref)
    public enum XReference: String, Encodable {
        case container
        case paper
    }
    /// Sets the container `x` refers to. 
    ///
    /// *container* spans the entire `width` of the plot. *paper* refers to the width of the plotting
    /// area only.
    public var xReference: XReference?

    /// Sets the container `y` refers to. 
    ///
    /// *container* spans the entire `height` of the plot. *paper* refers to the height of the plotting
    /// area only.
    /// - [Layout.Title0.YReference](layout/layoutAttributes/title/yref)
    public enum YReference: String, Encodable {
        case container
        case paper
    }
    /// Sets the container `y` refers to. 
    ///
    /// *container* spans the entire `height` of the plot. *paper* refers to the height of the plotting
    /// area only.
    public var yReference: YReference?

    /// Sets the x position with respect to `xref` in normalized coordinates from *0* (left) to *1* (right).
    public var x: Double?

    /// Sets the y position with respect to `yref` in normalized coordinates from *0* (bottom) to *1* (top). 
    ///
    /// *auto* places the baseline of the title onto the vertical center of the top margin.
    public var y: Double?

    /// Sets the title's horizontal alignment with respect to its x position. 
    ///
    /// *left* means that the title starts at x, *right* means that the title ends at x and *center*
    /// means that the title's center is at x. *auto* divides `xref` by three and calculates the
    /// `xanchor` value automatically based on the value of `x`.
    /// - [Layout.Title0.XAnchor0](layout/layoutAttributes/title/xanchor)
    /// - [Layout.Title0.XAnchor0](layout/layoutAttributes/xaxis/rangeselector/xanchor)
    /// - [Layout.Title0.XAnchor0](layout/layoutAttributes/scene/annotations/items/annotation/xanchor)
    /// - [Layout.Title0.XAnchor0](layout/layoutAttributes/legend/xanchor)
    /// - [Layout.Title0.XAnchor0](layout/layoutAttributes/annotations/items/annotation/xanchor)
    /// - [Layout.Title0.XAnchor0](layout/layoutAttributes/updatemenus/items/updatemenu/xanchor)
    /// - [Layout.Title0.XAnchor0](layout/layoutAttributes/sliders/items/slider/xanchor)
    public enum XAnchor0: String, Encodable {
        case auto
        case left
        case center
        case right
    }
    /// Sets the title's horizontal alignment with respect to its x position. 
    ///
    /// *left* means that the title starts at x, *right* means that the title ends at x and *center*
    /// means that the title's center is at x. *auto* divides `xref` by three and calculates the
    /// `xanchor` value automatically based on the value of `x`.
    public var xAnchor: XAnchor0?

    /// Sets the title's vertical alignment with respect to its y position. 
    ///
    /// *top* means that the title's cap line is at y, *bottom* means that the title's baseline is at y
    /// and *middle* means that the title's midline is at y. *auto* divides `yref` by three and
    /// calculates the `yanchor` value automatically based on the value of `y`.
    /// - [Layout.Title0.YAnchor0](layout/layoutAttributes/title/yanchor)
    /// - [Layout.Title0.YAnchor0](layout/layoutAttributes/xaxis/rangeselector/yanchor)
    /// - [Layout.Title0.YAnchor0](layout/layoutAttributes/scene/annotations/items/annotation/yanchor)
    /// - [Layout.Title0.YAnchor0](layout/layoutAttributes/legend/yanchor)
    /// - [Layout.Title0.YAnchor0](layout/layoutAttributes/annotations/items/annotation/yanchor)
    /// - [Layout.Title0.YAnchor0](layout/layoutAttributes/updatemenus/items/updatemenu/yanchor)
    /// - [Layout.Title0.YAnchor0](layout/layoutAttributes/sliders/items/slider/yanchor)
    public enum YAnchor0: String, Encodable {
        case auto
        case top
        case middle
        case bottom
    }
    /// Sets the title's vertical alignment with respect to its y position. 
    ///
    /// *top* means that the title's cap line is at y, *bottom* means that the title's baseline is at y
    /// and *middle* means that the title's midline is at y. *auto* divides `yref` by three and
    /// calculates the `yanchor` value automatically based on the value of `y`.
    public var yAnchor: YAnchor0?

    /// Sets the padding of the title. 
    ///
    /// Each padding value only applies when the corresponding `xanchor`/`yanchor` value is set
    /// accordingly. E.g. for left padding to take effect, `xanchor` must be set to *left*. The same
    /// rule applies if `xanchor`/`yanchor` is determined automatically. Padding is muted if the
    /// respective anchor value is *middle*/*center*.
    /// - [Layout.Title0.Padding](layout/layoutAttributes/title/pad)
    public struct Padding: Encodable {
        /// The amount of padding (in px) along the top of the component.
        public var t: Double?
    
        /// The amount of padding (in px) on the right side of the component.
        public var r: Double?
    
        /// The amount of padding (in px) along the bottom of the component.
        public var b: Double?
    
        /// The amount of padding (in px) on the left side of the component.
        public var l: Double?
    
        public init(t: Double? = nil, r: Double? = nil, b: Double? = nil, l: Double? = nil) {
            self.t = t
            self.r = r
            self.b = b
            self.l = l
        }
    }
    /// Sets the padding of the title. 
    ///
    /// Each padding value only applies when the corresponding `xanchor`/`yanchor` value is set
    /// accordingly. E.g. for left padding to take effect, `xanchor` must be set to *left*. The same
    /// rule applies if `xanchor`/`yanchor` is determined automatically. Padding is muted if the
    /// respective anchor value is *middle*/*center*.
    public var padding: Padding?

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
    
    public init(text: String? = nil, font: Font0? = nil, xReference: XReference? = nil, yReference: YReference? = nil, x: Double? = nil, y: Double? = nil, xAnchor: XAnchor0? = nil, yAnchor: YAnchor0? = nil, padding: Padding? = nil) {
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

/// - [Layout.HoverLabel0](layout/layoutAttributes/hoverlabel)
/// - [Layout.HoverLabel0](layout/layoutAttributes/scene/annotations/items/annotation/hoverlabel)
/// - [Layout.HoverLabel0](layout/layoutAttributes/annotations/items/annotation/hoverlabel)
/// - [Layout.HoverLabel0](traces/scatter/attributes/hoverlabel)
/// - [Layout.HoverLabel0](traces/bar/attributes/hoverlabel)
/// - [Layout.HoverLabel0](traces/box/attributes/hoverlabel)
/// - [Layout.HoverLabel0](traces/heatmap/attributes/hoverlabel)
/// - [Layout.HoverLabel0](traces/histogram/attributes/hoverlabel)
/// - [Layout.HoverLabel0](traces/histogram2d/attributes/hoverlabel)
/// - [Layout.HoverLabel0](traces/histogram2dcontour/attributes/hoverlabel)
/// - [Layout.HoverLabel0](traces/contour/attributes/hoverlabel)
/// - [Layout.HoverLabel0](traces/scatterternary/attributes/hoverlabel)
/// - [Layout.HoverLabel0](traces/violin/attributes/hoverlabel)
/// - [Layout.HoverLabel0](traces/funnel/attributes/hoverlabel)
/// - [Layout.HoverLabel0](traces/waterfall/attributes/hoverlabel)
/// - [Layout.HoverLabel0](traces/image/attributes/hoverlabel)
/// - [Layout.HoverLabel0](traces/pie/attributes/hoverlabel)
/// - [Layout.HoverLabel0](traces/sunburst/attributes/hoverlabel)
/// - [Layout.HoverLabel0](traces/treemap/attributes/hoverlabel)
/// - [Layout.HoverLabel0](traces/funnelarea/attributes/hoverlabel)
/// - [Layout.HoverLabel0](traces/scatter3d/attributes/hoverlabel)
/// - [Layout.HoverLabel0](traces/surface/attributes/hoverlabel)
/// - [Layout.HoverLabel0](traces/isosurface/attributes/hoverlabel)
/// - [Layout.HoverLabel0](traces/volume/attributes/hoverlabel)
/// - [Layout.HoverLabel0](traces/mesh3d/attributes/hoverlabel)
/// - [Layout.HoverLabel0](traces/cone/attributes/hoverlabel)
/// - [Layout.HoverLabel0](traces/streamtube/attributes/hoverlabel)
/// - [Layout.HoverLabel0](traces/scattergeo/attributes/hoverlabel)
/// - [Layout.HoverLabel0](traces/choropleth/attributes/hoverlabel)
/// - [Layout.HoverLabel0](traces/scattergl/attributes/hoverlabel)
/// - [Layout.HoverLabel0](traces/splom/attributes/hoverlabel)
/// - [Layout.HoverLabel0](traces/pointcloud/attributes/hoverlabel)
/// - [Layout.HoverLabel0](traces/heatmapgl/attributes/hoverlabel)
/// - [Layout.HoverLabel0](traces/scattermapbox/attributes/hoverlabel)
/// - [Layout.HoverLabel0](traces/choroplethmapbox/attributes/hoverlabel)
/// - [Layout.HoverLabel0](traces/densitymapbox/attributes/hoverlabel)
/// - [Layout.HoverLabel0](traces/sankey/attributes/hoverlabel)
/// - [Layout.HoverLabel0](traces/sankey/attributes/node/hoverlabel)
/// - [Layout.HoverLabel0](traces/sankey/attributes/link/hoverlabel)
/// - [Layout.HoverLabel0](traces/table/attributes/hoverlabel)
/// - [Layout.HoverLabel0](traces/scattercarpet/attributes/hoverlabel)
/// - [Layout.HoverLabel0](traces/ohlc/attributes/hoverlabel)
/// - [Layout.HoverLabel0](traces/candlestick/attributes/hoverlabel)
/// - [Layout.HoverLabel0](traces/scatterpolar/attributes/hoverlabel)
/// - [Layout.HoverLabel0](traces/scatterpolargl/attributes/hoverlabel)
/// - [Layout.HoverLabel0](traces/barpolar/attributes/hoverlabel)
/// - [Layout.HoverLabel0](traces/area/attributes/hoverlabel)
public struct HoverLabel0: Encodable {
    /// Sets the background color of all hover labels on graph
    public var backgroundColor: Color?

    /// Sets the border color of all hover labels on graph.
    public var borderColor: Color?

    /// Sets the default hover label font used by all traces on the graph.
    public var font: Font0?

    /// Sets the horizontal alignment of the text content within hover label box. 
    ///
    /// Has an effect only if the hover label text spans more two or more lines
    /// - [Layout.HoverLabel0.Align0](layout/layoutAttributes/hoverlabel/align)
    /// - [Layout.HoverLabel0.Align0](traces/scatter/attributes/hoverlabel/align)
    /// - [Layout.HoverLabel0.Align0](traces/bar/attributes/hoverlabel/align)
    /// - [Layout.HoverLabel0.Align0](traces/box/attributes/hoverlabel/align)
    /// - [Layout.HoverLabel0.Align0](traces/heatmap/attributes/hoverlabel/align)
    /// - [Layout.HoverLabel0.Align0](traces/histogram/attributes/hoverlabel/align)
    /// - [Layout.HoverLabel0.Align0](traces/histogram2d/attributes/hoverlabel/align)
    /// - [Layout.HoverLabel0.Align0](traces/histogram2dcontour/attributes/hoverlabel/align)
    /// - [Layout.HoverLabel0.Align0](traces/contour/attributes/hoverlabel/align)
    /// - [Layout.HoverLabel0.Align0](traces/scatterternary/attributes/hoverlabel/align)
    /// - [Layout.HoverLabel0.Align0](traces/violin/attributes/hoverlabel/align)
    /// - [Layout.HoverLabel0.Align0](traces/funnel/attributes/hoverlabel/align)
    /// - [Layout.HoverLabel0.Align0](traces/waterfall/attributes/hoverlabel/align)
    /// - [Layout.HoverLabel0.Align0](traces/image/attributes/hoverlabel/align)
    /// - [Layout.HoverLabel0.Align0](traces/pie/attributes/hoverlabel/align)
    /// - [Layout.HoverLabel0.Align0](traces/sunburst/attributes/hoverlabel/align)
    /// - [Layout.HoverLabel0.Align0](traces/treemap/attributes/hoverlabel/align)
    /// - [Layout.HoverLabel0.Align0](traces/funnelarea/attributes/hoverlabel/align)
    /// - [Layout.HoverLabel0.Align0](traces/scatter3d/attributes/hoverlabel/align)
    /// - [Layout.HoverLabel0.Align0](traces/surface/attributes/hoverlabel/align)
    /// - [Layout.HoverLabel0.Align0](traces/isosurface/attributes/hoverlabel/align)
    /// - [Layout.HoverLabel0.Align0](traces/volume/attributes/hoverlabel/align)
    /// - [Layout.HoverLabel0.Align0](traces/mesh3d/attributes/hoverlabel/align)
    /// - [Layout.HoverLabel0.Align0](traces/cone/attributes/hoverlabel/align)
    /// - [Layout.HoverLabel0.Align0](traces/streamtube/attributes/hoverlabel/align)
    /// - [Layout.HoverLabel0.Align0](traces/scattergeo/attributes/hoverlabel/align)
    /// - [Layout.HoverLabel0.Align0](traces/choropleth/attributes/hoverlabel/align)
    /// - [Layout.HoverLabel0.Align0](traces/scattergl/attributes/hoverlabel/align)
    /// - [Layout.HoverLabel0.Align0](traces/splom/attributes/hoverlabel/align)
    /// - [Layout.HoverLabel0.Align0](traces/pointcloud/attributes/hoverlabel/align)
    /// - [Layout.HoverLabel0.Align0](traces/heatmapgl/attributes/hoverlabel/align)
    /// - [Layout.HoverLabel0.Align0](traces/scattermapbox/attributes/hoverlabel/align)
    /// - [Layout.HoverLabel0.Align0](traces/choroplethmapbox/attributes/hoverlabel/align)
    /// - [Layout.HoverLabel0.Align0](traces/densitymapbox/attributes/hoverlabel/align)
    /// - [Layout.HoverLabel0.Align0](traces/sankey/attributes/hoverlabel/align)
    /// - [Layout.HoverLabel0.Align0](traces/sankey/attributes/node/hoverlabel/align)
    /// - [Layout.HoverLabel0.Align0](traces/sankey/attributes/link/hoverlabel/align)
    /// - [Layout.HoverLabel0.Align0](traces/table/attributes/hoverlabel/align)
    /// - [Layout.HoverLabel0.Align0](traces/scattercarpet/attributes/hoverlabel/align)
    /// - [Layout.HoverLabel0.Align0](traces/ohlc/attributes/hoverlabel/align)
    /// - [Layout.HoverLabel0.Align0](traces/candlestick/attributes/hoverlabel/align)
    /// - [Layout.HoverLabel0.Align0](traces/scatterpolar/attributes/hoverlabel/align)
    /// - [Layout.HoverLabel0.Align0](traces/scatterpolargl/attributes/hoverlabel/align)
    /// - [Layout.HoverLabel0.Align0](traces/barpolar/attributes/hoverlabel/align)
    /// - [Layout.HoverLabel0.Align0](traces/area/attributes/hoverlabel/align)
    public enum Align0: String, Encodable {
        case left
        case right
        case auto
    }
    /// Sets the horizontal alignment of the text content within hover label box. 
    ///
    /// Has an effect only if the hover label text spans more two or more lines
    public var align: Align0?

    /// Sets the default length (in number of characters) of the trace name in the hover labels for all traces. 
    ///
    /// -1 shows the whole name regardless of length. 0-3 shows the first 0-3 characters, and an integer
    /// >3 will show the whole name if it is less than that many characters, but if it is longer, will
    /// truncate to `namelength - 3` characters and add an ellipsis.
    public var nameLength: Int?

    /// Plotly compatible property encoding
    enum CodingKeys: String, CodingKey {
        case backgroundColor = "bgcolor"
        case borderColor = "bordercolor"
        case font
        case align
        case nameLength = "namelength"
    }
    
    public init(backgroundColor: Color? = nil, borderColor: Color? = nil, font: Font0? = nil, align: Align0? = nil, nameLength: Int? = nil) {
        self.backgroundColor = backgroundColor
        self.borderColor = borderColor
        self.font = font
        self.align = align
        self.nameLength = nameLength
    }
}

/// - [Layout.Grid.Domain0](layout/layoutAttributes/grid/domain)
/// - [Layout.Grid.Domain0](layout/layoutAttributes/ternary/domain)
/// - [Layout.Grid.Domain0](layout/layoutAttributes/scene/domain)
/// - [Layout.Grid.Domain0](layout/layoutAttributes/geo/domain)
/// - [Layout.Grid.Domain0](layout/layoutAttributes/mapbox/domain)
/// - [Layout.Grid.Domain0](layout/layoutAttributes/polar/domain)
/// - [Layout.Grid.Domain0](traces/pie/attributes/domain)
/// - [Layout.Grid.Domain0](traces/sunburst/attributes/domain)
/// - [Layout.Grid.Domain0](traces/treemap/attributes/domain)
/// - [Layout.Grid.Domain0](traces/funnelarea/attributes/domain)
/// - [Layout.Grid.Domain0](traces/parcoords/attributes/domain)
/// - [Layout.Grid.Domain0](traces/parcats/attributes/domain)
/// - [Layout.Grid.Domain0](traces/sankey/attributes/domain)
/// - [Layout.Grid.Domain0](traces/indicator/attributes/domain)
/// - [Layout.Grid.Domain0](traces/table/attributes/domain)
public struct Domain0: Encodable {
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

/// - [Layout.XAxis.TickFormatStops0](layout/layoutAttributes/xaxis/tickformatstops)
/// - [Layout.XAxis.TickFormatStops0](layout/layoutAttributes/yaxis/tickformatstops)
/// - [Layout.XAxis.TickFormatStops0](layout/layoutAttributes/ternary/aaxis/tickformatstops)
/// - [Layout.XAxis.TickFormatStops0](layout/layoutAttributes/ternary/baxis/tickformatstops)
/// - [Layout.XAxis.TickFormatStops0](layout/layoutAttributes/ternary/caxis/tickformatstops)
/// - [Layout.XAxis.TickFormatStops0](layout/layoutAttributes/scene/xaxis/tickformatstops)
/// - [Layout.XAxis.TickFormatStops0](layout/layoutAttributes/scene/yaxis/tickformatstops)
/// - [Layout.XAxis.TickFormatStops0](layout/layoutAttributes/scene/zaxis/tickformatstops)
/// - [Layout.XAxis.TickFormatStops0](layout/layoutAttributes/polar/radialaxis/tickformatstops)
/// - [Layout.XAxis.TickFormatStops0](layout/layoutAttributes/polar/angularaxis/tickformatstops)
/// - [Layout.XAxis.TickFormatStops0](layout/layoutAttributes/coloraxis/colorbar/tickformatstops)
/// - [Layout.XAxis.TickFormatStops0](traces/scatter/attributes/marker/colorbar/tickformatstops)
/// - [Layout.XAxis.TickFormatStops0](traces/bar/attributes/marker/colorbar/tickformatstops)
/// - [Layout.XAxis.TickFormatStops0](traces/heatmap/attributes/colorbar/tickformatstops)
/// - [Layout.XAxis.TickFormatStops0](traces/histogram/attributes/marker/colorbar/tickformatstops)
/// - [Layout.XAxis.TickFormatStops0](traces/histogram2d/attributes/colorbar/tickformatstops)
/// - [Layout.XAxis.TickFormatStops0](traces/histogram2dcontour/attributes/colorbar/tickformatstops)
/// - [Layout.XAxis.TickFormatStops0](traces/contour/attributes/colorbar/tickformatstops)
/// - [Layout.XAxis.TickFormatStops0](traces/scatterternary/attributes/marker/colorbar/tickformatstops)
/// - [Layout.XAxis.TickFormatStops0](traces/funnel/attributes/marker/colorbar/tickformatstops)
/// - [Layout.XAxis.TickFormatStops0](traces/sunburst/attributes/marker/colorbar/tickformatstops)
/// - [Layout.XAxis.TickFormatStops0](traces/treemap/attributes/marker/colorbar/tickformatstops)
/// - [Layout.XAxis.TickFormatStops0](traces/scatter3d/attributes/line/colorbar/tickformatstops)
/// - [Layout.XAxis.TickFormatStops0](traces/scatter3d/attributes/marker/colorbar/tickformatstops)
/// - [Layout.XAxis.TickFormatStops0](traces/surface/attributes/colorbar/tickformatstops)
/// - [Layout.XAxis.TickFormatStops0](traces/isosurface/attributes/colorbar/tickformatstops)
/// - [Layout.XAxis.TickFormatStops0](traces/volume/attributes/colorbar/tickformatstops)
/// - [Layout.XAxis.TickFormatStops0](traces/mesh3d/attributes/colorbar/tickformatstops)
/// - [Layout.XAxis.TickFormatStops0](traces/cone/attributes/colorbar/tickformatstops)
/// - [Layout.XAxis.TickFormatStops0](traces/streamtube/attributes/colorbar/tickformatstops)
/// - [Layout.XAxis.TickFormatStops0](traces/scattergeo/attributes/marker/colorbar/tickformatstops)
/// - [Layout.XAxis.TickFormatStops0](traces/choropleth/attributes/colorbar/tickformatstops)
/// - [Layout.XAxis.TickFormatStops0](traces/scattergl/attributes/marker/colorbar/tickformatstops)
/// - [Layout.XAxis.TickFormatStops0](traces/splom/attributes/marker/colorbar/tickformatstops)
/// - [Layout.XAxis.TickFormatStops0](traces/heatmapgl/attributes/colorbar/tickformatstops)
/// - [Layout.XAxis.TickFormatStops0](traces/parcoords/attributes/line/colorbar/tickformatstops)
/// - [Layout.XAxis.TickFormatStops0](traces/parcats/attributes/line/colorbar/tickformatstops)
/// - [Layout.XAxis.TickFormatStops0](traces/scattermapbox/attributes/marker/colorbar/tickformatstops)
/// - [Layout.XAxis.TickFormatStops0](traces/choroplethmapbox/attributes/colorbar/tickformatstops)
/// - [Layout.XAxis.TickFormatStops0](traces/densitymapbox/attributes/colorbar/tickformatstops)
/// - [Layout.XAxis.TickFormatStops0](traces/indicator/attributes/gauge/axis/tickformatstops)
/// - [Layout.XAxis.TickFormatStops0](traces/carpet/attributes/aaxis/tickformatstops)
/// - [Layout.XAxis.TickFormatStops0](traces/carpet/attributes/baxis/tickformatstops)
/// - [Layout.XAxis.TickFormatStops0](traces/scattercarpet/attributes/marker/colorbar/tickformatstops)
/// - [Layout.XAxis.TickFormatStops0](traces/contourcarpet/attributes/colorbar/tickformatstops)
/// - [Layout.XAxis.TickFormatStops0](traces/scatterpolar/attributes/marker/colorbar/tickformatstops)
/// - [Layout.XAxis.TickFormatStops0](traces/scatterpolargl/attributes/marker/colorbar/tickformatstops)
/// - [Layout.XAxis.TickFormatStops0](traces/barpolar/attributes/marker/colorbar/tickformatstops)
public struct TickFormatStops0: Encodable {
    /// - [Layout.XAxis.TickFormatStops0.Items](layout/layoutAttributes/xaxis/tickformatstops/items)
    /// - [Layout.XAxis.TickFormatStops0.Items](layout/layoutAttributes/yaxis/tickformatstops/items)
    /// - [Layout.XAxis.TickFormatStops0.Items](layout/layoutAttributes/ternary/aaxis/tickformatstops/items)
    /// - [Layout.XAxis.TickFormatStops0.Items](layout/layoutAttributes/ternary/baxis/tickformatstops/items)
    /// - [Layout.XAxis.TickFormatStops0.Items](layout/layoutAttributes/ternary/caxis/tickformatstops/items)
    /// - [Layout.XAxis.TickFormatStops0.Items](layout/layoutAttributes/scene/xaxis/tickformatstops/items)
    /// - [Layout.XAxis.TickFormatStops0.Items](layout/layoutAttributes/scene/yaxis/tickformatstops/items)
    /// - [Layout.XAxis.TickFormatStops0.Items](layout/layoutAttributes/scene/zaxis/tickformatstops/items)
    /// - [Layout.XAxis.TickFormatStops0.Items](layout/layoutAttributes/polar/radialaxis/tickformatstops/items)
    /// - [Layout.XAxis.TickFormatStops0.Items](layout/layoutAttributes/polar/angularaxis/tickformatstops/items)
    /// - [Layout.XAxis.TickFormatStops0.Items](layout/layoutAttributes/coloraxis/colorbar/tickformatstops/items)
    /// - [Layout.XAxis.TickFormatStops0.Items](traces/scatter/attributes/marker/colorbar/tickformatstops/items)
    /// - [Layout.XAxis.TickFormatStops0.Items](traces/bar/attributes/marker/colorbar/tickformatstops/items)
    /// - [Layout.XAxis.TickFormatStops0.Items](traces/heatmap/attributes/colorbar/tickformatstops/items)
    /// - [Layout.XAxis.TickFormatStops0.Items](traces/histogram/attributes/marker/colorbar/tickformatstops/items)
    /// - [Layout.XAxis.TickFormatStops0.Items](traces/histogram2d/attributes/colorbar/tickformatstops/items)
    /// - [Layout.XAxis.TickFormatStops0.Items](traces/histogram2dcontour/attributes/colorbar/tickformatstops/items)
    /// - [Layout.XAxis.TickFormatStops0.Items](traces/contour/attributes/colorbar/tickformatstops/items)
    /// - [Layout.XAxis.TickFormatStops0.Items](traces/scatterternary/attributes/marker/colorbar/tickformatstops/items)
    /// - [Layout.XAxis.TickFormatStops0.Items](traces/funnel/attributes/marker/colorbar/tickformatstops/items)
    /// - [Layout.XAxis.TickFormatStops0.Items](traces/sunburst/attributes/marker/colorbar/tickformatstops/items)
    /// - [Layout.XAxis.TickFormatStops0.Items](traces/treemap/attributes/marker/colorbar/tickformatstops/items)
    /// - [Layout.XAxis.TickFormatStops0.Items](traces/scatter3d/attributes/line/colorbar/tickformatstops/items)
    /// - [Layout.XAxis.TickFormatStops0.Items](traces/scatter3d/attributes/marker/colorbar/tickformatstops/items)
    /// - [Layout.XAxis.TickFormatStops0.Items](traces/surface/attributes/colorbar/tickformatstops/items)
    /// - [Layout.XAxis.TickFormatStops0.Items](traces/isosurface/attributes/colorbar/tickformatstops/items)
    /// - [Layout.XAxis.TickFormatStops0.Items](traces/volume/attributes/colorbar/tickformatstops/items)
    /// - [Layout.XAxis.TickFormatStops0.Items](traces/mesh3d/attributes/colorbar/tickformatstops/items)
    /// - [Layout.XAxis.TickFormatStops0.Items](traces/cone/attributes/colorbar/tickformatstops/items)
    /// - [Layout.XAxis.TickFormatStops0.Items](traces/streamtube/attributes/colorbar/tickformatstops/items)
    /// - [Layout.XAxis.TickFormatStops0.Items](traces/scattergeo/attributes/marker/colorbar/tickformatstops/items)
    /// - [Layout.XAxis.TickFormatStops0.Items](traces/choropleth/attributes/colorbar/tickformatstops/items)
    /// - [Layout.XAxis.TickFormatStops0.Items](traces/scattergl/attributes/marker/colorbar/tickformatstops/items)
    /// - [Layout.XAxis.TickFormatStops0.Items](traces/splom/attributes/marker/colorbar/tickformatstops/items)
    /// - [Layout.XAxis.TickFormatStops0.Items](traces/heatmapgl/attributes/colorbar/tickformatstops/items)
    /// - [Layout.XAxis.TickFormatStops0.Items](traces/parcoords/attributes/line/colorbar/tickformatstops/items)
    /// - [Layout.XAxis.TickFormatStops0.Items](traces/parcats/attributes/line/colorbar/tickformatstops/items)
    /// - [Layout.XAxis.TickFormatStops0.Items](traces/scattermapbox/attributes/marker/colorbar/tickformatstops/items)
    /// - [Layout.XAxis.TickFormatStops0.Items](traces/choroplethmapbox/attributes/colorbar/tickformatstops/items)
    /// - [Layout.XAxis.TickFormatStops0.Items](traces/densitymapbox/attributes/colorbar/tickformatstops/items)
    /// - [Layout.XAxis.TickFormatStops0.Items](traces/indicator/attributes/gauge/axis/tickformatstops/items)
    /// - [Layout.XAxis.TickFormatStops0.Items](traces/carpet/attributes/aaxis/tickformatstops/items)
    /// - [Layout.XAxis.TickFormatStops0.Items](traces/carpet/attributes/baxis/tickformatstops/items)
    /// - [Layout.XAxis.TickFormatStops0.Items](traces/scattercarpet/attributes/marker/colorbar/tickformatstops/items)
    /// - [Layout.XAxis.TickFormatStops0.Items](traces/contourcarpet/attributes/colorbar/tickformatstops/items)
    /// - [Layout.XAxis.TickFormatStops0.Items](traces/scatterpolar/attributes/marker/colorbar/tickformatstops/items)
    /// - [Layout.XAxis.TickFormatStops0.Items](traces/scatterpolargl/attributes/marker/colorbar/tickformatstops/items)
    /// - [Layout.XAxis.TickFormatStops0.Items](traces/barpolar/attributes/marker/colorbar/tickformatstops/items)
    public struct Items: Encodable {
        public var tickFormatStop: TickFormatStop?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case tickFormatStop = "tickformatstop"
        }
        
        public init(tickFormatStop: TickFormatStop? = nil) {
            self.tickFormatStop = tickFormatStop
        }
    }
    public var items: Items?

    public init(items: Items? = nil) {
        self.items = items
    }
}

/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](layout/layoutAttributes/xaxis/tickformatstops/items/tickformatstop)
/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](layout/layoutAttributes/yaxis/tickformatstops/items/tickformatstop)
/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](layout/layoutAttributes/ternary/aaxis/tickformatstops/items/tickformatstop)
/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](layout/layoutAttributes/ternary/baxis/tickformatstops/items/tickformatstop)
/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](layout/layoutAttributes/ternary/caxis/tickformatstops/items/tickformatstop)
/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](layout/layoutAttributes/scene/xaxis/tickformatstops/items/tickformatstop)
/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](layout/layoutAttributes/scene/yaxis/tickformatstops/items/tickformatstop)
/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](layout/layoutAttributes/scene/zaxis/tickformatstops/items/tickformatstop)
/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](layout/layoutAttributes/polar/radialaxis/tickformatstops/items/tickformatstop)
/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](layout/layoutAttributes/polar/angularaxis/tickformatstops/items/tickformatstop)
/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](layout/layoutAttributes/coloraxis/colorbar/tickformatstops/items/tickformatstop)
/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](traces/scatter/attributes/marker/colorbar/tickformatstops/items/tickformatstop)
/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](traces/bar/attributes/marker/colorbar/tickformatstops/items/tickformatstop)
/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](traces/heatmap/attributes/colorbar/tickformatstops/items/tickformatstop)
/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](traces/histogram/attributes/marker/colorbar/tickformatstops/items/tickformatstop)
/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](traces/histogram2d/attributes/colorbar/tickformatstops/items/tickformatstop)
/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](traces/histogram2dcontour/attributes/colorbar/tickformatstops/items/tickformatstop)
/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](traces/contour/attributes/colorbar/tickformatstops/items/tickformatstop)
/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](traces/scatterternary/attributes/marker/colorbar/tickformatstops/items/tickformatstop)
/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](traces/funnel/attributes/marker/colorbar/tickformatstops/items/tickformatstop)
/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](traces/sunburst/attributes/marker/colorbar/tickformatstops/items/tickformatstop)
/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](traces/treemap/attributes/marker/colorbar/tickformatstops/items/tickformatstop)
/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](traces/scatter3d/attributes/line/colorbar/tickformatstops/items/tickformatstop)
/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](traces/scatter3d/attributes/marker/colorbar/tickformatstops/items/tickformatstop)
/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](traces/surface/attributes/colorbar/tickformatstops/items/tickformatstop)
/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](traces/isosurface/attributes/colorbar/tickformatstops/items/tickformatstop)
/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](traces/volume/attributes/colorbar/tickformatstops/items/tickformatstop)
/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](traces/mesh3d/attributes/colorbar/tickformatstops/items/tickformatstop)
/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](traces/cone/attributes/colorbar/tickformatstops/items/tickformatstop)
/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](traces/streamtube/attributes/colorbar/tickformatstops/items/tickformatstop)
/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](traces/scattergeo/attributes/marker/colorbar/tickformatstops/items/tickformatstop)
/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](traces/choropleth/attributes/colorbar/tickformatstops/items/tickformatstop)
/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](traces/scattergl/attributes/marker/colorbar/tickformatstops/items/tickformatstop)
/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](traces/splom/attributes/marker/colorbar/tickformatstops/items/tickformatstop)
/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](traces/heatmapgl/attributes/colorbar/tickformatstops/items/tickformatstop)
/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](traces/parcoords/attributes/line/colorbar/tickformatstops/items/tickformatstop)
/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](traces/parcats/attributes/line/colorbar/tickformatstops/items/tickformatstop)
/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](traces/scattermapbox/attributes/marker/colorbar/tickformatstops/items/tickformatstop)
/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](traces/choroplethmapbox/attributes/colorbar/tickformatstops/items/tickformatstop)
/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](traces/densitymapbox/attributes/colorbar/tickformatstops/items/tickformatstop)
/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](traces/indicator/attributes/gauge/axis/tickformatstops/items/tickformatstop)
/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](traces/carpet/attributes/aaxis/tickformatstops/items/tickformatstop)
/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](traces/carpet/attributes/baxis/tickformatstops/items/tickformatstop)
/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](traces/scattercarpet/attributes/marker/colorbar/tickformatstops/items/tickformatstop)
/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](traces/contourcarpet/attributes/colorbar/tickformatstops/items/tickformatstop)
/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](traces/scatterpolar/attributes/marker/colorbar/tickformatstops/items/tickformatstop)
/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](traces/scatterpolargl/attributes/marker/colorbar/tickformatstops/items/tickformatstop)
/// - [Layout.XAxis.TickFormatStops0.Items.TickFormatStop0](traces/barpolar/attributes/marker/colorbar/tickformatstops/items/tickformatstop)
public struct TickFormatStop0: Encodable {
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

    /// Plotly compatible property encoding
    enum CodingKeys: String, CodingKey {
        case enabled
        case dTickRange = "dtickrange"
        case value
        case name
        case templateItemName = "templateitemname"
    }
    
    public init(enabled: Bool? = nil, dTickRange: InfoArray? = nil, value: String? = nil, name: String? = nil, templateItemName: String? = nil) {
        self.enabled = enabled
        self.dTickRange = dTickRange
        self.value = value
        self.name = name
        self.templateItemName = templateItemName
    }
}

/// - [Layout.Shapes.Items.Shape.Line0](layout/layoutAttributes/shapes/items/shape/line)
/// - [Layout.Shapes.Items.Shape.Line0](traces/box/attributes/line)
/// - [Layout.Shapes.Items.Shape.Line0](traces/histogram2dcontour/attributes/line)
/// - [Layout.Shapes.Items.Shape.Line0](traces/contour/attributes/line)
/// - [Layout.Shapes.Items.Shape.Line0](traces/scatterternary/attributes/line)
/// - [Layout.Shapes.Items.Shape.Line0](traces/violin/attributes/line)
/// - [Layout.Shapes.Items.Shape.Line0](traces/violin/attributes/box/line)
/// - [Layout.Shapes.Items.Shape.Line0](traces/funnel/attributes/connector/line)
/// - [Layout.Shapes.Items.Shape.Line0](traces/waterfall/attributes/increasing/marker/line)
/// - [Layout.Shapes.Items.Shape.Line0](traces/waterfall/attributes/decreasing/marker/line)
/// - [Layout.Shapes.Items.Shape.Line0](traces/waterfall/attributes/totals/marker/line)
/// - [Layout.Shapes.Items.Shape.Line0](traces/waterfall/attributes/connector/line)
/// - [Layout.Shapes.Items.Shape.Line0](traces/scattergeo/attributes/line)
/// - [Layout.Shapes.Items.Shape.Line0](traces/scattermapbox/attributes/line)
/// - [Layout.Shapes.Items.Shape.Line0](traces/indicator/attributes/gauge/bar/line)
/// - [Layout.Shapes.Items.Shape.Line0](traces/indicator/attributes/gauge/steps/items/step/line)
/// - [Layout.Shapes.Items.Shape.Line0](traces/indicator/attributes/gauge/threshold/line)
/// - [Layout.Shapes.Items.Shape.Line0](traces/scattercarpet/attributes/line)
/// - [Layout.Shapes.Items.Shape.Line0](traces/contourcarpet/attributes/line)
/// - [Layout.Shapes.Items.Shape.Line0](traces/ohlc/attributes/increasing/line)
/// - [Layout.Shapes.Items.Shape.Line0](traces/ohlc/attributes/decreasing/line)
/// - [Layout.Shapes.Items.Shape.Line0](traces/candlestick/attributes/increasing/line)
/// - [Layout.Shapes.Items.Shape.Line0](traces/candlestick/attributes/decreasing/line)
/// - [Layout.Shapes.Items.Shape.Line0](traces/scatterpolar/attributes/line)
public struct Line0: Encodable {
    /// Sets the line color.
    public var color: Color?

    /// Sets the line width (in px).
    public var width: Double?

    /// Sets the dash style of lines. 
    ///
    /// Set to a dash type string (*solid*, *dot*, *dash*, *longdash*, *dashdot*, or *longdashdot*) or a
    /// dash length list in px (eg *5px,10px,2px,2px*).
    public var dash: String?

    public init(color: Color? = nil, width: Double? = nil, dash: String? = nil) {
        self.color = color
        self.width = width
        self.dash = dash
    }
}

/// - [Layout.ColorAxis.ColorBar0](layout/layoutAttributes/coloraxis/colorbar)
/// - [Layout.ColorAxis.ColorBar0](traces/scatter/attributes/marker/colorbar)
/// - [Layout.ColorAxis.ColorBar0](traces/bar/attributes/marker/colorbar)
/// - [Layout.ColorAxis.ColorBar0](traces/heatmap/attributes/colorbar)
/// - [Layout.ColorAxis.ColorBar0](traces/histogram/attributes/marker/colorbar)
/// - [Layout.ColorAxis.ColorBar0](traces/histogram2d/attributes/colorbar)
/// - [Layout.ColorAxis.ColorBar0](traces/histogram2dcontour/attributes/colorbar)
/// - [Layout.ColorAxis.ColorBar0](traces/contour/attributes/colorbar)
/// - [Layout.ColorAxis.ColorBar0](traces/scatterternary/attributes/marker/colorbar)
/// - [Layout.ColorAxis.ColorBar0](traces/funnel/attributes/marker/colorbar)
/// - [Layout.ColorAxis.ColorBar0](traces/sunburst/attributes/marker/colorbar)
/// - [Layout.ColorAxis.ColorBar0](traces/treemap/attributes/marker/colorbar)
/// - [Layout.ColorAxis.ColorBar0](traces/scatter3d/attributes/line/colorbar)
/// - [Layout.ColorAxis.ColorBar0](traces/scatter3d/attributes/marker/colorbar)
/// - [Layout.ColorAxis.ColorBar0](traces/surface/attributes/colorbar)
/// - [Layout.ColorAxis.ColorBar0](traces/isosurface/attributes/colorbar)
/// - [Layout.ColorAxis.ColorBar0](traces/volume/attributes/colorbar)
/// - [Layout.ColorAxis.ColorBar0](traces/mesh3d/attributes/colorbar)
/// - [Layout.ColorAxis.ColorBar0](traces/cone/attributes/colorbar)
/// - [Layout.ColorAxis.ColorBar0](traces/streamtube/attributes/colorbar)
/// - [Layout.ColorAxis.ColorBar0](traces/scattergeo/attributes/marker/colorbar)
/// - [Layout.ColorAxis.ColorBar0](traces/choropleth/attributes/colorbar)
/// - [Layout.ColorAxis.ColorBar0](traces/scattergl/attributes/marker/colorbar)
/// - [Layout.ColorAxis.ColorBar0](traces/splom/attributes/marker/colorbar)
/// - [Layout.ColorAxis.ColorBar0](traces/heatmapgl/attributes/colorbar)
/// - [Layout.ColorAxis.ColorBar0](traces/parcoords/attributes/line/colorbar)
/// - [Layout.ColorAxis.ColorBar0](traces/parcats/attributes/line/colorbar)
/// - [Layout.ColorAxis.ColorBar0](traces/scattermapbox/attributes/marker/colorbar)
/// - [Layout.ColorAxis.ColorBar0](traces/choroplethmapbox/attributes/colorbar)
/// - [Layout.ColorAxis.ColorBar0](traces/densitymapbox/attributes/colorbar)
/// - [Layout.ColorAxis.ColorBar0](traces/scattercarpet/attributes/marker/colorbar)
/// - [Layout.ColorAxis.ColorBar0](traces/contourcarpet/attributes/colorbar)
/// - [Layout.ColorAxis.ColorBar0](traces/scatterpolar/attributes/marker/colorbar)
/// - [Layout.ColorAxis.ColorBar0](traces/scatterpolargl/attributes/marker/colorbar)
/// - [Layout.ColorAxis.ColorBar0](traces/barpolar/attributes/marker/colorbar)
public struct ColorBar0: Encodable {
    /// Determines whether this color bar's thickness (i.e. 
    ///
    /// the measure in the constant color direction) is set in units of plot *fraction* or in *pixels*.
    /// Use `thickness` to set the value.
    /// - [Layout.ColorAxis.ColorBar0.ThicknessMode0](layout/layoutAttributes/coloraxis/colorbar/thicknessmode)
    /// - [Layout.ColorAxis.ColorBar0.ThicknessMode0](traces/scatter/attributes/marker/colorbar/thicknessmode)
    /// - [Layout.ColorAxis.ColorBar0.ThicknessMode0](traces/bar/attributes/marker/colorbar/thicknessmode)
    /// - [Layout.ColorAxis.ColorBar0.ThicknessMode0](traces/heatmap/attributes/colorbar/thicknessmode)
    /// - [Layout.ColorAxis.ColorBar0.ThicknessMode0](traces/histogram/attributes/marker/colorbar/thicknessmode)
    /// - [Layout.ColorAxis.ColorBar0.ThicknessMode0](traces/histogram2d/attributes/colorbar/thicknessmode)
    /// - [Layout.ColorAxis.ColorBar0.ThicknessMode0](traces/histogram2dcontour/attributes/colorbar/thicknessmode)
    /// - [Layout.ColorAxis.ColorBar0.ThicknessMode0](traces/contour/attributes/colorbar/thicknessmode)
    /// - [Layout.ColorAxis.ColorBar0.ThicknessMode0](traces/scatterternary/attributes/marker/colorbar/thicknessmode)
    /// - [Layout.ColorAxis.ColorBar0.ThicknessMode0](traces/funnel/attributes/marker/colorbar/thicknessmode)
    /// - [Layout.ColorAxis.ColorBar0.ThicknessMode0](traces/sunburst/attributes/marker/colorbar/thicknessmode)
    /// - [Layout.ColorAxis.ColorBar0.ThicknessMode0](traces/treemap/attributes/marker/colorbar/thicknessmode)
    /// - [Layout.ColorAxis.ColorBar0.ThicknessMode0](traces/scatter3d/attributes/line/colorbar/thicknessmode)
    /// - [Layout.ColorAxis.ColorBar0.ThicknessMode0](traces/scatter3d/attributes/marker/colorbar/thicknessmode)
    /// - [Layout.ColorAxis.ColorBar0.ThicknessMode0](traces/surface/attributes/colorbar/thicknessmode)
    /// - [Layout.ColorAxis.ColorBar0.ThicknessMode0](traces/isosurface/attributes/colorbar/thicknessmode)
    /// - [Layout.ColorAxis.ColorBar0.ThicknessMode0](traces/volume/attributes/colorbar/thicknessmode)
    /// - [Layout.ColorAxis.ColorBar0.ThicknessMode0](traces/mesh3d/attributes/colorbar/thicknessmode)
    /// - [Layout.ColorAxis.ColorBar0.ThicknessMode0](traces/cone/attributes/colorbar/thicknessmode)
    /// - [Layout.ColorAxis.ColorBar0.ThicknessMode0](traces/streamtube/attributes/colorbar/thicknessmode)
    /// - [Layout.ColorAxis.ColorBar0.ThicknessMode0](traces/scattergeo/attributes/marker/colorbar/thicknessmode)
    /// - [Layout.ColorAxis.ColorBar0.ThicknessMode0](traces/choropleth/attributes/colorbar/thicknessmode)
    /// - [Layout.ColorAxis.ColorBar0.ThicknessMode0](traces/scattergl/attributes/marker/colorbar/thicknessmode)
    /// - [Layout.ColorAxis.ColorBar0.ThicknessMode0](traces/splom/attributes/marker/colorbar/thicknessmode)
    /// - [Layout.ColorAxis.ColorBar0.ThicknessMode0](traces/heatmapgl/attributes/colorbar/thicknessmode)
    /// - [Layout.ColorAxis.ColorBar0.ThicknessMode0](traces/parcoords/attributes/line/colorbar/thicknessmode)
    /// - [Layout.ColorAxis.ColorBar0.ThicknessMode0](traces/parcats/attributes/line/colorbar/thicknessmode)
    /// - [Layout.ColorAxis.ColorBar0.ThicknessMode0](traces/scattermapbox/attributes/marker/colorbar/thicknessmode)
    /// - [Layout.ColorAxis.ColorBar0.ThicknessMode0](traces/choroplethmapbox/attributes/colorbar/thicknessmode)
    /// - [Layout.ColorAxis.ColorBar0.ThicknessMode0](traces/densitymapbox/attributes/colorbar/thicknessmode)
    /// - [Layout.ColorAxis.ColorBar0.ThicknessMode0](traces/scattercarpet/attributes/marker/colorbar/thicknessmode)
    /// - [Layout.ColorAxis.ColorBar0.ThicknessMode0](traces/contourcarpet/attributes/colorbar/thicknessmode)
    /// - [Layout.ColorAxis.ColorBar0.ThicknessMode0](traces/scatterpolar/attributes/marker/colorbar/thicknessmode)
    /// - [Layout.ColorAxis.ColorBar0.ThicknessMode0](traces/scatterpolargl/attributes/marker/colorbar/thicknessmode)
    /// - [Layout.ColorAxis.ColorBar0.ThicknessMode0](traces/barpolar/attributes/marker/colorbar/thicknessmode)
    public enum ThicknessMode0: String, Encodable {
        case fraction
        case pixels
    }
    /// Determines whether this color bar's thickness (i.e. 
    ///
    /// the measure in the constant color direction) is set in units of plot *fraction* or in *pixels*.
    /// Use `thickness` to set the value.
    public var thicknessMode: ThicknessMode0?

    /// Sets the thickness of the color bar This measure excludes the size of the padding, ticks and labels.
    public var thickness: Double?

    /// Determines whether this color bar's length (i.e. 
    ///
    /// the measure in the color variation direction) is set in units of plot *fraction* or in *pixels.
    /// Use `len` to set the value.
    public var lengthMode: LengthMode0?

    /// Sets the length of the color bar This measure excludes the padding of both ends. 
    ///
    /// That is, the color bar length is this length minus the padding on both ends.
    public var length: Double?

    /// Sets the x position of the color bar (in plot fraction).
    public var x: Double?

    /// Sets this color bar's horizontal position anchor. 
    ///
    /// This anchor binds the `x` position to the *left*, *center* or *right* of the color bar.
    public var xAnchor: XAnchor1?

    /// Sets the amount of padding (in px) along the x direction.
    public var xPadding: Double?

    /// Sets the y position of the color bar (in plot fraction).
    public var y: Double?

    /// Sets this color bar's vertical position anchor This anchor binds the `y` position to the *top*, *middle* or *bottom* of the color bar.
    public var yAnchor: YAnchor1?

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

    /// Determines whether ticks are drawn or not. 
    ///
    /// If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside
    /// (inside) the axis lines.
    public var ticks: Ticks0?

    /// Sets the tick length (in px).
    public var tickLength: Double?

    /// Sets the tick width (in px).
    public var tickWidth: Double?

    /// Sets the tick color.
    public var tickColor: Color?

    /// Determines whether or not the tick labels are drawn.
    public var showTickLabels: Bool?

    /// Sets the color bar's tick label font
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

    /// Sets a tick label prefix.
    public var tickPrefix: String?

    /// If *all*, all tick labels are displayed with a prefix. 
    ///
    /// If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is
    /// displayed with a suffix. If *none*, tick prefixes are hidden.
    public var showTickPrefix: ShowTickPrefix0?

    /// Sets a tick label suffix.
    public var tickSuffix: String?

    /// Same as `showtickprefix` but for tick suffixes.
    public var showTickSuffix: ShowTickSuffix0?

    /// If "true", even 4-digit integers are separated
    public var separatethousands: Bool?

    /// Determines a formatting rule for the tick exponents. 
    ///
    /// For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*,
    /// 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
    public var exponentFormat: ExponentFormat0?

    /// If *all*, all exponents are shown besides their significands. 
    ///
    /// If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the
    /// last tick is shown. If *none*, no exponents appear.
    public var showExponent: ShowExponent0?

    /// - [Layout.ColorAxis.ColorBar0.Title](layout/layoutAttributes/coloraxis/colorbar/title)
    /// - [Layout.ColorAxis.ColorBar0.Title](traces/scatter/attributes/marker/colorbar/title)
    /// - [Layout.ColorAxis.ColorBar0.Title](traces/bar/attributes/marker/colorbar/title)
    /// - [Layout.ColorAxis.ColorBar0.Title](traces/heatmap/attributes/colorbar/title)
    /// - [Layout.ColorAxis.ColorBar0.Title](traces/histogram/attributes/marker/colorbar/title)
    /// - [Layout.ColorAxis.ColorBar0.Title](traces/histogram2d/attributes/colorbar/title)
    /// - [Layout.ColorAxis.ColorBar0.Title](traces/histogram2dcontour/attributes/colorbar/title)
    /// - [Layout.ColorAxis.ColorBar0.Title](traces/contour/attributes/colorbar/title)
    /// - [Layout.ColorAxis.ColorBar0.Title](traces/scatterternary/attributes/marker/colorbar/title)
    /// - [Layout.ColorAxis.ColorBar0.Title](traces/funnel/attributes/marker/colorbar/title)
    /// - [Layout.ColorAxis.ColorBar0.Title](traces/pie/attributes/title)
    /// - [Layout.ColorAxis.ColorBar0.Title](traces/sunburst/attributes/marker/colorbar/title)
    /// - [Layout.ColorAxis.ColorBar0.Title](traces/treemap/attributes/marker/colorbar/title)
    /// - [Layout.ColorAxis.ColorBar0.Title](traces/funnelarea/attributes/title)
    /// - [Layout.ColorAxis.ColorBar0.Title](traces/scatter3d/attributes/line/colorbar/title)
    /// - [Layout.ColorAxis.ColorBar0.Title](traces/scatter3d/attributes/marker/colorbar/title)
    /// - [Layout.ColorAxis.ColorBar0.Title](traces/surface/attributes/colorbar/title)
    /// - [Layout.ColorAxis.ColorBar0.Title](traces/isosurface/attributes/colorbar/title)
    /// - [Layout.ColorAxis.ColorBar0.Title](traces/volume/attributes/colorbar/title)
    /// - [Layout.ColorAxis.ColorBar0.Title](traces/mesh3d/attributes/colorbar/title)
    /// - [Layout.ColorAxis.ColorBar0.Title](traces/cone/attributes/colorbar/title)
    /// - [Layout.ColorAxis.ColorBar0.Title](traces/streamtube/attributes/colorbar/title)
    /// - [Layout.ColorAxis.ColorBar0.Title](traces/scattergeo/attributes/marker/colorbar/title)
    /// - [Layout.ColorAxis.ColorBar0.Title](traces/choropleth/attributes/colorbar/title)
    /// - [Layout.ColorAxis.ColorBar0.Title](traces/scattergl/attributes/marker/colorbar/title)
    /// - [Layout.ColorAxis.ColorBar0.Title](traces/splom/attributes/marker/colorbar/title)
    /// - [Layout.ColorAxis.ColorBar0.Title](traces/heatmapgl/attributes/colorbar/title)
    /// - [Layout.ColorAxis.ColorBar0.Title](traces/parcoords/attributes/line/colorbar/title)
    /// - [Layout.ColorAxis.ColorBar0.Title](traces/parcats/attributes/line/colorbar/title)
    /// - [Layout.ColorAxis.ColorBar0.Title](traces/scattermapbox/attributes/marker/colorbar/title)
    /// - [Layout.ColorAxis.ColorBar0.Title](traces/choroplethmapbox/attributes/colorbar/title)
    /// - [Layout.ColorAxis.ColorBar0.Title](traces/densitymapbox/attributes/colorbar/title)
    /// - [Layout.ColorAxis.ColorBar0.Title](traces/carpet/attributes/aaxis/title)
    /// - [Layout.ColorAxis.ColorBar0.Title](traces/carpet/attributes/baxis/title)
    /// - [Layout.ColorAxis.ColorBar0.Title](traces/scattercarpet/attributes/marker/colorbar/title)
    /// - [Layout.ColorAxis.ColorBar0.Title](traces/contourcarpet/attributes/colorbar/title)
    /// - [Layout.ColorAxis.ColorBar0.Title](traces/scatterpolar/attributes/marker/colorbar/title)
    /// - [Layout.ColorAxis.ColorBar0.Title](traces/scatterpolargl/attributes/marker/colorbar/title)
    /// - [Layout.ColorAxis.ColorBar0.Title](traces/barpolar/attributes/marker/colorbar/title)
    public struct Title: Encodable {
        /// Sets the title of the color bar. 
        ///
        /// Note that before the existence of `title.text`, the title's contents used to be defined as the
        /// `title` attribute itself. This behavior has been deprecated.
        public var text: String?
    
        /// Sets this color bar's title font. 
        ///
        /// Note that the title's font used to be set by the now deprecated `titlefont` attribute.
        public var font: Font0?
    
        /// Determines the location of color bar's title with respect to the color bar. 
        ///
        /// Note that the title's location used to be set by the now deprecated `titleside` attribute.
        public var side: Side0?
    
        public init(text: String? = nil, font: Font0? = nil, side: Side0? = nil) {
            self.text = text
            self.font = font
            self.side = side
        }
    }
    public var title: Title?

    /// Sets the source reference on plot.ly for  tickvals .
    public var tickValuesSource: String?

    /// Sets the source reference on plot.ly for  ticktext .
    public var tickTextSource: String?

    /// Plotly compatible property encoding
    enum CodingKeys: String, CodingKey {
        case thicknessMode = "thicknessmode"
        case thickness
        case lengthMode = "lenmode"
        case length = "len"
        case x
        case xAnchor = "xanchor"
        case xPadding = "xpad"
        case y
        case yAnchor = "yanchor"
        case yPading = "ypad"
        case outLineColor = "outlinecolor"
        case outLineWidth = "outlinewidth"
        case borderColor = "bordercolor"
        case borderWidth = "borderwidth"
        case backgroundColor = "bgcolor"
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
        case tickFont = "tickfont"
        case tickAngle = "tickangle"
        case tickFormat = "tickformat"
        case tickFormatStops = "tickformatstops"
        case tickPrefix = "tickprefix"
        case showTickPrefix = "showtickprefix"
        case tickSuffix = "ticksuffix"
        case showTickSuffix = "showticksuffix"
        case separatethousands
        case exponentFormat = "exponentformat"
        case showExponent = "showexponent"
        case title
        case tickValuesSource = "tickvalssrc"
        case tickTextSource = "ticktextsrc"
    }
    
    public init(thicknessMode: ThicknessMode0? = nil, thickness: Double? = nil, lengthMode: LengthMode0? = nil, length: Double? = nil, x: Double? = nil, xAnchor: XAnchor1? = nil, xPadding: Double? = nil, y: Double? = nil, yAnchor: YAnchor1? = nil, yPading: Double? = nil, outLineColor: Color? = nil, outLineWidth: Double? = nil, borderColor: Color? = nil, borderWidth: Double? = nil, backgroundColor: Color? = nil, tickMode: TickMode0? = nil, numTicks: Int? = nil, tick0: Anything? = nil, dTick: Anything? = nil, tickValues: [Double]? = nil, tickText: [Double]? = nil, ticks: Ticks0? = nil, tickLength: Double? = nil, tickWidth: Double? = nil, tickColor: Color? = nil, showTickLabels: Bool? = nil, tickFont: Font0? = nil, tickAngle: Angle? = nil, tickFormat: String? = nil, tickFormatStops: TickFormatStops0? = nil, tickPrefix: String? = nil, showTickPrefix: ShowTickPrefix0? = nil, tickSuffix: String? = nil, showTickSuffix: ShowTickSuffix0? = nil, separatethousands: Bool? = nil, exponentFormat: ExponentFormat0? = nil, showExponent: ShowExponent0? = nil, title: Title? = nil, tickValuesSource: String? = nil, tickTextSource: String? = nil) {
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
        self.tickValuesSource = tickValuesSource
        self.tickTextSource = tickTextSource
    }
}

/// - [Scatter.Stream0](traces/scatter/attributes/stream)
/// - [Scatter.Stream0](traces/bar/attributes/stream)
/// - [Scatter.Stream0](traces/box/attributes/stream)
/// - [Scatter.Stream0](traces/heatmap/attributes/stream)
/// - [Scatter.Stream0](traces/histogram/attributes/stream)
/// - [Scatter.Stream0](traces/histogram2d/attributes/stream)
/// - [Scatter.Stream0](traces/histogram2dcontour/attributes/stream)
/// - [Scatter.Stream0](traces/contour/attributes/stream)
/// - [Scatter.Stream0](traces/scatterternary/attributes/stream)
/// - [Scatter.Stream0](traces/violin/attributes/stream)
/// - [Scatter.Stream0](traces/funnel/attributes/stream)
/// - [Scatter.Stream0](traces/waterfall/attributes/stream)
/// - [Scatter.Stream0](traces/image/attributes/stream)
/// - [Scatter.Stream0](traces/pie/attributes/stream)
/// - [Scatter.Stream0](traces/sunburst/attributes/stream)
/// - [Scatter.Stream0](traces/treemap/attributes/stream)
/// - [Scatter.Stream0](traces/funnelarea/attributes/stream)
/// - [Scatter.Stream0](traces/scatter3d/attributes/stream)
/// - [Scatter.Stream0](traces/surface/attributes/stream)
/// - [Scatter.Stream0](traces/isosurface/attributes/stream)
/// - [Scatter.Stream0](traces/volume/attributes/stream)
/// - [Scatter.Stream0](traces/mesh3d/attributes/stream)
/// - [Scatter.Stream0](traces/cone/attributes/stream)
/// - [Scatter.Stream0](traces/streamtube/attributes/stream)
/// - [Scatter.Stream0](traces/scattergeo/attributes/stream)
/// - [Scatter.Stream0](traces/choropleth/attributes/stream)
/// - [Scatter.Stream0](traces/scattergl/attributes/stream)
/// - [Scatter.Stream0](traces/splom/attributes/stream)
/// - [Scatter.Stream0](traces/pointcloud/attributes/stream)
/// - [Scatter.Stream0](traces/heatmapgl/attributes/stream)
/// - [Scatter.Stream0](traces/parcoords/attributes/stream)
/// - [Scatter.Stream0](traces/parcats/attributes/stream)
/// - [Scatter.Stream0](traces/scattermapbox/attributes/stream)
/// - [Scatter.Stream0](traces/choroplethmapbox/attributes/stream)
/// - [Scatter.Stream0](traces/densitymapbox/attributes/stream)
/// - [Scatter.Stream0](traces/sankey/attributes/stream)
/// - [Scatter.Stream0](traces/indicator/attributes/stream)
/// - [Scatter.Stream0](traces/table/attributes/stream)
/// - [Scatter.Stream0](traces/carpet/attributes/stream)
/// - [Scatter.Stream0](traces/scattercarpet/attributes/stream)
/// - [Scatter.Stream0](traces/contourcarpet/attributes/stream)
/// - [Scatter.Stream0](traces/ohlc/attributes/stream)
/// - [Scatter.Stream0](traces/candlestick/attributes/stream)
/// - [Scatter.Stream0](traces/scatterpolar/attributes/stream)
/// - [Scatter.Stream0](traces/scatterpolargl/attributes/stream)
/// - [Scatter.Stream0](traces/barpolar/attributes/stream)
/// - [Scatter.Stream0](traces/area/attributes/stream)
public struct Stream0: Encodable {
    /// The stream id number links a data trace on a plot with a stream. 
    ///
    /// See https://plot.ly/settings for more details.
    public var token: String?

    /// Sets the maximum number of points to keep on the plots from an incoming stream. 
    ///
    /// If `maxpoints` is set to *50*, only the newest 50 points will be displayed on the plot.
    public var maxPoints: Double?

    /// Plotly compatible property encoding
    enum CodingKeys: String, CodingKey {
        case token
        case maxPoints = "maxpoints"
    }
    
    public init(token: String? = nil, maxPoints: Double? = nil) {
        self.token = token
        self.maxPoints = maxPoints
    }
}

/// - [Scatter.Transforms0](traces/scatter/attributes/transforms)
/// - [Scatter.Transforms0](traces/scatter/attributes/transforms/items/transform)
/// - [Scatter.Transforms0](traces/bar/attributes/transforms)
/// - [Scatter.Transforms0](traces/bar/attributes/transforms/items/transform)
/// - [Scatter.Transforms0](traces/box/attributes/transforms)
/// - [Scatter.Transforms0](traces/box/attributes/transforms/items/transform)
/// - [Scatter.Transforms0](traces/heatmap/attributes/transforms)
/// - [Scatter.Transforms0](traces/heatmap/attributes/transforms/items/transform)
/// - [Scatter.Transforms0](traces/histogram/attributes/transforms)
/// - [Scatter.Transforms0](traces/histogram/attributes/transforms/items/transform)
/// - [Scatter.Transforms0](traces/histogram2d/attributes/transforms)
/// - [Scatter.Transforms0](traces/histogram2d/attributes/transforms/items/transform)
/// - [Scatter.Transforms0](traces/histogram2dcontour/attributes/transforms)
/// - [Scatter.Transforms0](traces/histogram2dcontour/attributes/transforms/items/transform)
/// - [Scatter.Transforms0](traces/contour/attributes/transforms)
/// - [Scatter.Transforms0](traces/contour/attributes/transforms/items/transform)
/// - [Scatter.Transforms0](traces/scatterternary/attributes/transforms)
/// - [Scatter.Transforms0](traces/scatterternary/attributes/transforms/items/transform)
/// - [Scatter.Transforms0](traces/violin/attributes/transforms)
/// - [Scatter.Transforms0](traces/violin/attributes/transforms/items/transform)
/// - [Scatter.Transforms0](traces/funnel/attributes/transforms)
/// - [Scatter.Transforms0](traces/funnel/attributes/transforms/items/transform)
/// - [Scatter.Transforms0](traces/waterfall/attributes/transforms)
/// - [Scatter.Transforms0](traces/waterfall/attributes/transforms/items/transform)
/// - [Scatter.Transforms0](traces/pie/attributes/transforms)
/// - [Scatter.Transforms0](traces/pie/attributes/transforms/items/transform)
/// - [Scatter.Transforms0](traces/sunburst/attributes/transforms)
/// - [Scatter.Transforms0](traces/sunburst/attributes/transforms/items/transform)
/// - [Scatter.Transforms0](traces/treemap/attributes/transforms)
/// - [Scatter.Transforms0](traces/treemap/attributes/transforms/items/transform)
/// - [Scatter.Transforms0](traces/funnelarea/attributes/transforms)
/// - [Scatter.Transforms0](traces/funnelarea/attributes/transforms/items/transform)
/// - [Scatter.Transforms0](traces/scatter3d/attributes/transforms)
/// - [Scatter.Transforms0](traces/scatter3d/attributes/transforms/items/transform)
/// - [Scatter.Transforms0](traces/scattergeo/attributes/transforms)
/// - [Scatter.Transforms0](traces/scattergeo/attributes/transforms/items/transform)
/// - [Scatter.Transforms0](traces/choropleth/attributes/transforms)
/// - [Scatter.Transforms0](traces/choropleth/attributes/transforms/items/transform)
/// - [Scatter.Transforms0](traces/scattergl/attributes/transforms)
/// - [Scatter.Transforms0](traces/scattergl/attributes/transforms/items/transform)
/// - [Scatter.Transforms0](traces/splom/attributes/transforms)
/// - [Scatter.Transforms0](traces/splom/attributes/transforms/items/transform)
/// - [Scatter.Transforms0](traces/heatmapgl/attributes/transforms)
/// - [Scatter.Transforms0](traces/heatmapgl/attributes/transforms/items/transform)
/// - [Scatter.Transforms0](traces/parcoords/attributes/transforms)
/// - [Scatter.Transforms0](traces/parcoords/attributes/transforms/items/transform)
/// - [Scatter.Transforms0](traces/parcats/attributes/transforms)
/// - [Scatter.Transforms0](traces/parcats/attributes/transforms/items/transform)
/// - [Scatter.Transforms0](traces/scattermapbox/attributes/transforms)
/// - [Scatter.Transforms0](traces/scattermapbox/attributes/transforms/items/transform)
/// - [Scatter.Transforms0](traces/choroplethmapbox/attributes/transforms)
/// - [Scatter.Transforms0](traces/choroplethmapbox/attributes/transforms/items/transform)
/// - [Scatter.Transforms0](traces/densitymapbox/attributes/transforms)
/// - [Scatter.Transforms0](traces/densitymapbox/attributes/transforms/items/transform)
/// - [Scatter.Transforms0](traces/indicator/attributes/transforms)
/// - [Scatter.Transforms0](traces/indicator/attributes/transforms/items/transform)
/// - [Scatter.Transforms0](traces/scattercarpet/attributes/transforms)
/// - [Scatter.Transforms0](traces/scattercarpet/attributes/transforms/items/transform)
/// - [Scatter.Transforms0](traces/ohlc/attributes/transforms)
/// - [Scatter.Transforms0](traces/ohlc/attributes/transforms/items/transform)
/// - [Scatter.Transforms0](traces/candlestick/attributes/transforms)
/// - [Scatter.Transforms0](traces/candlestick/attributes/transforms/items/transform)
/// - [Scatter.Transforms0](traces/scatterpolar/attributes/transforms)
/// - [Scatter.Transforms0](traces/scatterpolar/attributes/transforms/items/transform)
/// - [Scatter.Transforms0](traces/scatterpolargl/attributes/transforms)
/// - [Scatter.Transforms0](traces/scatterpolargl/attributes/transforms/items/transform)
/// - [Scatter.Transforms0](traces/barpolar/attributes/transforms)
/// - [Scatter.Transforms0](traces/barpolar/attributes/transforms/items/transform)
/// - [Scatter.Transforms0](traces/area/attributes/transforms)
/// - [Scatter.Transforms0](traces/area/attributes/transforms/items/transform)
public struct Transforms0: Encodable {
    /// - [Scatter.Transforms0.Items](traces/scatter/attributes/transforms/items)
    /// - [Scatter.Transforms0.Items](traces/bar/attributes/transforms/items)
    /// - [Scatter.Transforms0.Items](traces/box/attributes/transforms/items)
    /// - [Scatter.Transforms0.Items](traces/heatmap/attributes/transforms/items)
    /// - [Scatter.Transforms0.Items](traces/histogram/attributes/transforms/items)
    /// - [Scatter.Transforms0.Items](traces/histogram2d/attributes/transforms/items)
    /// - [Scatter.Transforms0.Items](traces/histogram2dcontour/attributes/transforms/items)
    /// - [Scatter.Transforms0.Items](traces/contour/attributes/transforms/items)
    /// - [Scatter.Transforms0.Items](traces/scatterternary/attributes/transforms/items)
    /// - [Scatter.Transforms0.Items](traces/violin/attributes/transforms/items)
    /// - [Scatter.Transforms0.Items](traces/funnel/attributes/transforms/items)
    /// - [Scatter.Transforms0.Items](traces/waterfall/attributes/transforms/items)
    /// - [Scatter.Transforms0.Items](traces/pie/attributes/transforms/items)
    /// - [Scatter.Transforms0.Items](traces/sunburst/attributes/transforms/items)
    /// - [Scatter.Transforms0.Items](traces/treemap/attributes/transforms/items)
    /// - [Scatter.Transforms0.Items](traces/funnelarea/attributes/transforms/items)
    /// - [Scatter.Transforms0.Items](traces/scatter3d/attributes/transforms/items)
    /// - [Scatter.Transforms0.Items](traces/scattergeo/attributes/transforms/items)
    /// - [Scatter.Transforms0.Items](traces/choropleth/attributes/transforms/items)
    /// - [Scatter.Transforms0.Items](traces/scattergl/attributes/transforms/items)
    /// - [Scatter.Transforms0.Items](traces/splom/attributes/transforms/items)
    /// - [Scatter.Transforms0.Items](traces/heatmapgl/attributes/transforms/items)
    /// - [Scatter.Transforms0.Items](traces/parcoords/attributes/transforms/items)
    /// - [Scatter.Transforms0.Items](traces/parcats/attributes/transforms/items)
    /// - [Scatter.Transforms0.Items](traces/scattermapbox/attributes/transforms/items)
    /// - [Scatter.Transforms0.Items](traces/choroplethmapbox/attributes/transforms/items)
    /// - [Scatter.Transforms0.Items](traces/densitymapbox/attributes/transforms/items)
    /// - [Scatter.Transforms0.Items](traces/indicator/attributes/transforms/items)
    /// - [Scatter.Transforms0.Items](traces/scattercarpet/attributes/transforms/items)
    /// - [Scatter.Transforms0.Items](traces/ohlc/attributes/transforms/items)
    /// - [Scatter.Transforms0.Items](traces/candlestick/attributes/transforms/items)
    /// - [Scatter.Transforms0.Items](traces/scatterpolar/attributes/transforms/items)
    /// - [Scatter.Transforms0.Items](traces/scatterpolargl/attributes/transforms/items)
    /// - [Scatter.Transforms0.Items](traces/barpolar/attributes/transforms/items)
    /// - [Scatter.Transforms0.Items](traces/area/attributes/transforms/items)
    public struct Items: Encodable {
        /// An array of operations that manipulate the trace data, for example filtering or sorting the data arrays.
        public var transform: Transforms0?
    
        public init(transform: Transforms0? = nil) {
            self.transform = transform
        }
    }
    public var items: Items?

    public init(items: Items? = nil) {
        self.items = items
    }
}

/// - [Scatter.Marker.Line1](traces/scatter/attributes/marker/line)
/// - [Scatter.Marker.Line1](traces/bar/attributes/marker/line)
/// - [Scatter.Marker.Line1](traces/histogram/attributes/marker/line)
/// - [Scatter.Marker.Line1](traces/scatterternary/attributes/marker/line)
/// - [Scatter.Marker.Line1](traces/funnel/attributes/marker/line)
/// - [Scatter.Marker.Line1](traces/scattergeo/attributes/marker/line)
/// - [Scatter.Marker.Line1](traces/scattercarpet/attributes/marker/line)
/// - [Scatter.Marker.Line1](traces/scatterpolar/attributes/marker/line)
/// - [Scatter.Marker.Line1](traces/barpolar/attributes/marker/line)
public struct Line1: Encodable {
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

    /// Plotly compatible property encoding
    enum CodingKeys: String, CodingKey {
        case width
        case color
        case cAuto = "cauto"
        case cMin = "cmin"
        case cMax = "cmax"
        case cMiddle = "cmid"
        case colorScale = "colorscale"
        case autoColorScale = "autocolorscale"
        case reverseScale = "reversescale"
        case colorAxis = "coloraxis"
        case widthSource = "widthsrc"
        case colorSource = "colorsrc"
    }
    
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

/// - [Scatter.Marker.Gradient0](traces/scatter/attributes/marker/gradient)
/// - [Scatter.Marker.Gradient0](traces/scatterternary/attributes/marker/gradient)
/// - [Scatter.Marker.Gradient0](traces/scattergeo/attributes/marker/gradient)
/// - [Scatter.Marker.Gradient0](traces/scattercarpet/attributes/marker/gradient)
/// - [Scatter.Marker.Gradient0](traces/scatterpolar/attributes/marker/gradient)
public struct Gradient0: Encodable {
    /// Sets the type of gradient used to fill the markers
    /// - [Scatter.Marker.Gradient0.Rule0](traces/scatter/attributes/marker/gradient/type)
    /// - [Scatter.Marker.Gradient0.Rule0](traces/scatterternary/attributes/marker/gradient/type)
    /// - [Scatter.Marker.Gradient0.Rule0](traces/scattergeo/attributes/marker/gradient/type)
    /// - [Scatter.Marker.Gradient0.Rule0](traces/scattercarpet/attributes/marker/gradient/type)
    /// - [Scatter.Marker.Gradient0.Rule0](traces/scatterpolar/attributes/marker/gradient/type)
    public enum Rule0: String, Encodable {
        case radial
        case horizontal
        case vertical
        case none
    }
    /// Sets the type of gradient used to fill the markers
    public var type: Rule0?

    /// Sets the final color of the gradient fill: the center color for radial, the right for horizontal, or the bottom for vertical.
    public var color: Color?

    /// Sets the source reference on plot.ly for  type .
    public var typeSource: String?

    /// Sets the source reference on plot.ly for  color .
    public var colorSource: String?

    /// Plotly compatible property encoding
    enum CodingKeys: String, CodingKey {
        case type
        case color
        case typeSource = "typesrc"
        case colorSource = "colorsrc"
    }
    
    public init(type: Rule0? = nil, color: Color? = nil, typeSource: String? = nil, colorSource: String? = nil) {
        self.type = type
        self.color = color
        self.typeSource = typeSource
        self.colorSource = colorSource
    }
}

/// - [Scatter.Selected0](traces/scatter/attributes/selected)
/// - [Scatter.Selected0](traces/scatter/attributes/unselected)
/// - [Scatter.Selected0](traces/bar/attributes/selected)
/// - [Scatter.Selected0](traces/bar/attributes/unselected)
/// - [Scatter.Selected0](traces/box/attributes/selected)
/// - [Scatter.Selected0](traces/box/attributes/unselected)
/// - [Scatter.Selected0](traces/histogram/attributes/selected)
/// - [Scatter.Selected0](traces/histogram/attributes/unselected)
/// - [Scatter.Selected0](traces/scatterternary/attributes/selected)
/// - [Scatter.Selected0](traces/scatterternary/attributes/unselected)
/// - [Scatter.Selected0](traces/violin/attributes/selected)
/// - [Scatter.Selected0](traces/violin/attributes/unselected)
/// - [Scatter.Selected0](traces/scattergeo/attributes/selected)
/// - [Scatter.Selected0](traces/scattergeo/attributes/unselected)
/// - [Scatter.Selected0](traces/choropleth/attributes/selected)
/// - [Scatter.Selected0](traces/choropleth/attributes/unselected)
/// - [Scatter.Selected0](traces/scattergl/attributes/selected)
/// - [Scatter.Selected0](traces/scattergl/attributes/unselected)
/// - [Scatter.Selected0](traces/splom/attributes/selected)
/// - [Scatter.Selected0](traces/splom/attributes/unselected)
/// - [Scatter.Selected0](traces/scattermapbox/attributes/selected)
/// - [Scatter.Selected0](traces/scattermapbox/attributes/unselected)
/// - [Scatter.Selected0](traces/choroplethmapbox/attributes/selected)
/// - [Scatter.Selected0](traces/choroplethmapbox/attributes/unselected)
/// - [Scatter.Selected0](traces/scattercarpet/attributes/selected)
/// - [Scatter.Selected0](traces/scattercarpet/attributes/unselected)
/// - [Scatter.Selected0](traces/scatterpolar/attributes/selected)
/// - [Scatter.Selected0](traces/scatterpolar/attributes/unselected)
/// - [Scatter.Selected0](traces/scatterpolargl/attributes/selected)
/// - [Scatter.Selected0](traces/scatterpolargl/attributes/unselected)
/// - [Scatter.Selected0](traces/barpolar/attributes/selected)
/// - [Scatter.Selected0](traces/barpolar/attributes/unselected)
public struct Selected0: Encodable {
    /// - [Scatter.Selected0.Marker](traces/scatter/attributes/selected/marker)
    /// - [Scatter.Selected0.Marker](traces/scatter/attributes/unselected/marker)
    /// - [Scatter.Selected0.Marker](traces/bar/attributes/selected/marker)
    /// - [Scatter.Selected0.Marker](traces/bar/attributes/unselected/marker)
    /// - [Scatter.Selected0.Marker](traces/box/attributes/selected/marker)
    /// - [Scatter.Selected0.Marker](traces/box/attributes/unselected/marker)
    /// - [Scatter.Selected0.Marker](traces/histogram/attributes/selected/marker)
    /// - [Scatter.Selected0.Marker](traces/histogram/attributes/unselected/marker)
    /// - [Scatter.Selected0.Marker](traces/scatterternary/attributes/selected/marker)
    /// - [Scatter.Selected0.Marker](traces/scatterternary/attributes/unselected/marker)
    /// - [Scatter.Selected0.Marker](traces/violin/attributes/selected/marker)
    /// - [Scatter.Selected0.Marker](traces/violin/attributes/unselected/marker)
    /// - [Scatter.Selected0.Marker](traces/scattergeo/attributes/selected/marker)
    /// - [Scatter.Selected0.Marker](traces/scattergeo/attributes/unselected/marker)
    /// - [Scatter.Selected0.Marker](traces/choropleth/attributes/selected/marker)
    /// - [Scatter.Selected0.Marker](traces/choropleth/attributes/unselected/marker)
    /// - [Scatter.Selected0.Marker](traces/scattergl/attributes/selected/marker)
    /// - [Scatter.Selected0.Marker](traces/scattergl/attributes/unselected/marker)
    /// - [Scatter.Selected0.Marker](traces/splom/attributes/selected/marker)
    /// - [Scatter.Selected0.Marker](traces/splom/attributes/unselected/marker)
    /// - [Scatter.Selected0.Marker](traces/scattermapbox/attributes/selected/marker)
    /// - [Scatter.Selected0.Marker](traces/scattermapbox/attributes/unselected/marker)
    /// - [Scatter.Selected0.Marker](traces/choroplethmapbox/attributes/selected/marker)
    /// - [Scatter.Selected0.Marker](traces/choroplethmapbox/attributes/unselected/marker)
    /// - [Scatter.Selected0.Marker](traces/scattercarpet/attributes/selected/marker)
    /// - [Scatter.Selected0.Marker](traces/scattercarpet/attributes/unselected/marker)
    /// - [Scatter.Selected0.Marker](traces/scatterpolar/attributes/selected/marker)
    /// - [Scatter.Selected0.Marker](traces/scatterpolar/attributes/unselected/marker)
    /// - [Scatter.Selected0.Marker](traces/scatterpolargl/attributes/selected/marker)
    /// - [Scatter.Selected0.Marker](traces/scatterpolargl/attributes/unselected/marker)
    /// - [Scatter.Selected0.Marker](traces/barpolar/attributes/selected/marker)
    /// - [Scatter.Selected0.Marker](traces/barpolar/attributes/unselected/marker)
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

    /// - [Scatter.Selected0.TextFont](traces/scatter/attributes/selected/textfont)
    /// - [Scatter.Selected0.TextFont](traces/scatter/attributes/unselected/textfont)
    /// - [Scatter.Selected0.TextFont](traces/bar/attributes/selected/textfont)
    /// - [Scatter.Selected0.TextFont](traces/bar/attributes/unselected/textfont)
    /// - [Scatter.Selected0.TextFont](traces/histogram/attributes/selected/textfont)
    /// - [Scatter.Selected0.TextFont](traces/histogram/attributes/unselected/textfont)
    /// - [Scatter.Selected0.TextFont](traces/scatterternary/attributes/selected/textfont)
    /// - [Scatter.Selected0.TextFont](traces/scatterternary/attributes/unselected/textfont)
    /// - [Scatter.Selected0.TextFont](traces/scatter3d/attributes/textfont)
    /// - [Scatter.Selected0.TextFont](traces/scattergeo/attributes/selected/textfont)
    /// - [Scatter.Selected0.TextFont](traces/scattergeo/attributes/unselected/textfont)
    /// - [Scatter.Selected0.TextFont](traces/scattergl/attributes/selected/textfont)
    /// - [Scatter.Selected0.TextFont](traces/scattergl/attributes/unselected/textfont)
    /// - [Scatter.Selected0.TextFont](traces/scattercarpet/attributes/selected/textfont)
    /// - [Scatter.Selected0.TextFont](traces/scattercarpet/attributes/unselected/textfont)
    /// - [Scatter.Selected0.TextFont](traces/scatterpolar/attributes/selected/textfont)
    /// - [Scatter.Selected0.TextFont](traces/scatterpolar/attributes/unselected/textfont)
    /// - [Scatter.Selected0.TextFont](traces/scatterpolargl/attributes/selected/textfont)
    /// - [Scatter.Selected0.TextFont](traces/scatterpolargl/attributes/unselected/textfont)
    /// - [Scatter.Selected0.TextFont](traces/barpolar/attributes/selected/textfont)
    /// - [Scatter.Selected0.TextFont](traces/barpolar/attributes/unselected/textfont)
    public struct TextFont: Encodable {
        /// Sets the text font color of selected points.
        public var color: Color?
    
        public init(color: Color? = nil) {
            self.color = color
        }
    }
    public var textFont: TextFont?

    /// Plotly compatible property encoding
    enum CodingKeys: String, CodingKey {
        case marker
        case textFont = "textfont"
    }
    
    public init(marker: Marker? = nil, textFont: TextFont? = nil) {
        self.marker = marker
        self.textFont = textFont
    }
}

/// - [Pie.Marker.Line2](traces/pie/attributes/marker/line)
/// - [Pie.Marker.Line2](traces/sunburst/attributes/marker/line)
/// - [Pie.Marker.Line2](traces/treemap/attributes/marker/line)
/// - [Pie.Marker.Line2](traces/funnelarea/attributes/marker/line)
/// - [Pie.Marker.Line2](traces/choropleth/attributes/marker/line)
/// - [Pie.Marker.Line2](traces/scattergl/attributes/line)
/// - [Pie.Marker.Line2](traces/choroplethmapbox/attributes/marker/line)
/// - [Pie.Marker.Line2](traces/sankey/attributes/node/line)
/// - [Pie.Marker.Line2](traces/sankey/attributes/link/line)
/// - [Pie.Marker.Line2](traces/scatterpolargl/attributes/line)
public struct Line2: Encodable {
    /// Sets the color of the line enclosing each sector.
    public var color: Color?

    /// Sets the width (in px) of the line enclosing each sector.
    public var width: Double?

    /// Sets the source reference on plot.ly for  color .
    public var colorSource: String?

    /// Sets the source reference on plot.ly for  width .
    public var widthSource: String?

    /// Plotly compatible property encoding
    enum CodingKeys: String, CodingKey {
        case color
        case width
        case colorSource = "colorsrc"
        case widthSource = "widthsrc"
    }
    
    public init(color: Color? = nil, width: Double? = nil, colorSource: String? = nil, widthSource: String? = nil) {
        self.color = color
        self.width = width
        self.colorSource = colorSource
        self.widthSource = widthSource
    }
}

/// - [Surface.LightPosition0](traces/surface/attributes/lightposition)
/// - [Surface.LightPosition0](traces/isosurface/attributes/lightposition)
/// - [Surface.LightPosition0](traces/volume/attributes/lightposition)
/// - [Surface.LightPosition0](traces/mesh3d/attributes/lightposition)
/// - [Surface.LightPosition0](traces/cone/attributes/lightposition)
/// - [Surface.LightPosition0](traces/streamtube/attributes/lightposition)
public struct LightPosition0: Encodable {
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

/// - [Isosurface.Lighting0](traces/isosurface/attributes/lighting)
/// - [Isosurface.Lighting0](traces/volume/attributes/lighting)
/// - [Isosurface.Lighting0](traces/mesh3d/attributes/lighting)
/// - [Isosurface.Lighting0](traces/cone/attributes/lighting)
/// - [Isosurface.Lighting0](traces/streamtube/attributes/lighting)
public struct Lighting0: Encodable {
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

    /// Represents the reflectance as a dependency of the viewing angle; e.g. 
    ///
    /// paper is reflective when viewing it from the edge of the paper (almost 90 degrees), causing
    /// shine.
    public var fresnel: Double?

    /// Plotly compatible property encoding
    enum CodingKeys: String, CodingKey {
        case vertexNormalsEpsilon = "vertexnormalsepsilon"
        case faceNormalsEpsilon = "facenormalsepsilon"
        case ambient
        case diffuse
        case specular
        case roughness
        case fresnel
    }
    
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
