///
/// # Used By
/// `Config.edits` |
/// `Layout.Scene.AspectRatio.impliedEdits` |
/// `Histogram2DContour.Contours.impliedEdits` |
/// `Contour.Contours.impliedEdits` |
/// `ContourCarpet.Contours.impliedEdits` |
public struct Edits0: Encodable {
    /// Determines if the main anchor of the annotation is editable. 
    ///
    /// The main anchor corresponds to the text (if no arrow) or the arrow (which drags the whole thing
    /// leaving the arrow length & direction unchanged).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#config-edits-annotationPosition) |
    /// [Python](https://plot.ly/python/reference/#config-edits-annotationPosition) |
    /// [R](https://plot.ly/r/reference/#config-edits-annotationPosition)
    public var annotationPosition: Bool?

    /// Has only an effect for annotations with arrows. 
    ///
    /// Enables changing the length and direction of the arrow.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#config-edits-annotationTail) |
    /// [Python](https://plot.ly/python/reference/#config-edits-annotationTail) |
    /// [R](https://plot.ly/r/reference/#config-edits-annotationTail)
    public var annotationTail: Bool?

    /// Enables editing annotation text.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#config-edits-annotationText) |
    /// [Python](https://plot.ly/python/reference/#config-edits-annotationText) |
    /// [R](https://plot.ly/r/reference/#config-edits-annotationText)
    public var annotationText: Bool?

    /// Enables editing axis title text.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#config-edits-axisTitleText) |
    /// [Python](https://plot.ly/python/reference/#config-edits-axisTitleText) |
    /// [R](https://plot.ly/r/reference/#config-edits-axisTitleText)
    public var axisTitleText: Bool?

    /// Enables moving colorbars.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#config-edits-colorbarPosition) |
    /// [Python](https://plot.ly/python/reference/#config-edits-colorbarPosition) |
    /// [R](https://plot.ly/r/reference/#config-edits-colorbarPosition)
    public var colorBarPosition: Bool?

    /// Enables editing colorbar title text.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#config-edits-colorbarTitleText) |
    /// [Python](https://plot.ly/python/reference/#config-edits-colorbarTitleText) |
    /// [R](https://plot.ly/r/reference/#config-edits-colorbarTitleText)
    public var colorBarTitleText: Bool?

    /// Enables moving the legend.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#config-edits-legendPosition) |
    /// [Python](https://plot.ly/python/reference/#config-edits-legendPosition) |
    /// [R](https://plot.ly/r/reference/#config-edits-legendPosition)
    public var legendPosition: Bool?

    /// Enables editing the trace name fields from the legend
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#config-edits-legendText) |
    /// [Python](https://plot.ly/python/reference/#config-edits-legendText) |
    /// [R](https://plot.ly/r/reference/#config-edits-legendText)
    public var legendText: Bool?

    /// Enables moving shapes.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#config-edits-shapePosition) |
    /// [Python](https://plot.ly/python/reference/#config-edits-shapePosition) |
    /// [R](https://plot.ly/r/reference/#config-edits-shapePosition)
    public var shapePosition: Bool?

    /// Enables editing the global layout title.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#config-edits-titleText) |
    /// [Python](https://plot.ly/python/reference/#config-edits-titleText) |
    /// [R](https://plot.ly/r/reference/#config-edits-titleText)
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
///
/// # Used By
/// `Layout.font` |
/// `Layout.Title.font` |
/// `Layout.HoverLabel.font` |
/// `Layout.XAxis.Title.font` |
/// `Layout.XAxis.tickFont` |
/// `Layout.XAxis.RangeSelector.font` |
/// `Layout.YAxis.Title.font` |
/// `Layout.YAxis.tickFont` |
/// `Layout.Ternary.AAxis.Title.font` |
/// `Layout.Ternary.AAxis.tickFont` |
/// `Layout.Ternary.BAxis.Title.font` |
/// `Layout.Ternary.BAxis.tickFont` |
/// `Layout.Ternary.CAxis.Title.font` |
/// `Layout.Ternary.CAxis.tickFont` |
/// `Layout.Scene.XAxis.Title.font` |
/// `Layout.Scene.XAxis.tickFont` |
/// `Layout.Scene.YAxis.Title.font` |
/// `Layout.Scene.YAxis.tickFont` |
/// `Layout.Scene.ZAxis.Title.font` |
/// `Layout.Scene.ZAxis.tickFont` |
/// `Layout.Scene.Annotations.Items.Annotation.font` |
/// `Layout.Scene.Annotations.Items.Annotation.HoverLabel.font` |
/// `Layout.Mapbox.Layers.Items.Layer.Symbol.textFont` |
/// `Layout.Polar.RadialAxis.Title.font` |
/// `Layout.Polar.RadialAxis.tickFont` |
/// `Layout.Polar.AngularAxis.tickFont` |
/// `Layout.Legend.font` |
/// `Layout.Annotations.Items.Annotation.font` |
/// `Layout.Annotations.Items.Annotation.HoverLabel.font` |
/// `Layout.UpdateMenus.Items.UpdateMenu.font` |
/// `Layout.Sliders.Items.Slider.CurrentValue.font` |
/// `Layout.Sliders.Items.Slider.font` |
/// `Layout.ColorAxis.ColorBar.tickFont` |
/// `Layout.ColorAxis.ColorBar.Title.font` |
/// `Scatter.HoverLabel.font` |
/// `Scatter.Marker.ColorBar.tickFont` |
/// `Scatter.Marker.ColorBar.Title.font` |
/// `Scatter.textFont` |
/// `Bar.HoverLabel.font` |
/// `Bar.textFont` |
/// `Bar.insideTextFont` |
/// `Bar.outSideTextFont` |
/// `Bar.Marker.ColorBar.tickFont` |
/// `Bar.Marker.ColorBar.Title.font` |
/// `Box.HoverLabel.font` |
/// `Heatmap.HoverLabel.font` |
/// `Heatmap.ColorBar.tickFont` |
/// `Heatmap.ColorBar.Title.font` |
/// `Histogram.HoverLabel.font` |
/// `Histogram.Marker.ColorBar.tickFont` |
/// `Histogram.Marker.ColorBar.Title.font` |
/// `Histogram2D.HoverLabel.font` |
/// `Histogram2D.ColorBar.tickFont` |
/// `Histogram2D.ColorBar.Title.font` |
/// `Histogram2DContour.HoverLabel.font` |
/// `Histogram2DContour.Contours.labelFont` |
/// `Histogram2DContour.ColorBar.tickFont` |
/// `Histogram2DContour.ColorBar.Title.font` |
/// `Contour.HoverLabel.font` |
/// `Contour.Contours.labelFont` |
/// `Contour.ColorBar.tickFont` |
/// `Contour.ColorBar.Title.font` |
/// `ScatterTernary.HoverLabel.font` |
/// `ScatterTernary.Marker.ColorBar.tickFont` |
/// `ScatterTernary.Marker.ColorBar.Title.font` |
/// `ScatterTernary.textFont` |
/// `Violin.HoverLabel.font` |
/// `Funnel.HoverLabel.font` |
/// `Funnel.textFont` |
/// `Funnel.insideTextFont` |
/// `Funnel.outSideTextFont` |
/// `Funnel.Marker.ColorBar.tickFont` |
/// `Funnel.Marker.ColorBar.Title.font` |
/// `Waterfall.HoverLabel.font` |
/// `Waterfall.textFont` |
/// `Waterfall.insideTextFont` |
/// `Waterfall.outSideTextFont` |
/// `Image.HoverLabel.font` |
/// `Pie.HoverLabel.font` |
/// `Pie.textFont` |
/// `Pie.insideTextFont` |
/// `Pie.outSideTextFont` |
/// `Pie.Title.font` |
/// `Sunburst.HoverLabel.font` |
/// `Sunburst.Marker.ColorBar.tickFont` |
/// `Sunburst.Marker.ColorBar.Title.font` |
/// `Sunburst.textFont` |
/// `Sunburst.insideTextFont` |
/// `Sunburst.outSideTextFont` |
/// `Treemap.HoverLabel.font` |
/// `Treemap.Marker.ColorBar.tickFont` |
/// `Treemap.Marker.ColorBar.Title.font` |
/// `Treemap.PathBar.textFont` |
/// `Treemap.textFont` |
/// `Treemap.insideTextFont` |
/// `Treemap.outSideTextFont` |
/// `FunnelArea.HoverLabel.font` |
/// `FunnelArea.textFont` |
/// `FunnelArea.insideTextFont` |
/// `FunnelArea.Title.font` |
/// `Scatter3D.HoverLabel.font` |
/// `Scatter3D.Line.ColorBar.tickFont` |
/// `Scatter3D.Line.ColorBar.Title.font` |
/// `Scatter3D.Marker.ColorBar.tickFont` |
/// `Scatter3D.Marker.ColorBar.Title.font` |
/// `Surface.HoverLabel.font` |
/// `Surface.ColorBar.tickFont` |
/// `Surface.ColorBar.Title.font` |
/// `Isosurface.HoverLabel.font` |
/// `Isosurface.ColorBar.tickFont` |
/// `Isosurface.ColorBar.Title.font` |
/// `Volume.HoverLabel.font` |
/// `Volume.ColorBar.tickFont` |
/// `Volume.ColorBar.Title.font` |
/// `Mesh3D.HoverLabel.font` |
/// `Mesh3D.ColorBar.tickFont` |
/// `Mesh3D.ColorBar.Title.font` |
/// `Cone.HoverLabel.font` |
/// `Cone.ColorBar.tickFont` |
/// `Cone.ColorBar.Title.font` |
/// `StreamTube.HoverLabel.font` |
/// `StreamTube.ColorBar.tickFont` |
/// `StreamTube.ColorBar.Title.font` |
/// `ScatterGeo.HoverLabel.font` |
/// `ScatterGeo.textFont` |
/// `ScatterGeo.Marker.ColorBar.tickFont` |
/// `ScatterGeo.Marker.ColorBar.Title.font` |
/// `Choropleth.HoverLabel.font` |
/// `Choropleth.ColorBar.tickFont` |
/// `Choropleth.ColorBar.Title.font` |
/// `ScatterGL.HoverLabel.font` |
/// `ScatterGL.textFont` |
/// `ScatterGL.Marker.ColorBar.tickFont` |
/// `ScatterGL.Marker.ColorBar.Title.font` |
/// `ScatterPlotMatrix.HoverLabel.font` |
/// `ScatterPlotMatrix.Marker.ColorBar.tickFont` |
/// `ScatterPlotMatrix.Marker.ColorBar.Title.font` |
/// `PointCloud.HoverLabel.font` |
/// `HeatmapGL.HoverLabel.font` |
/// `HeatmapGL.ColorBar.tickFont` |
/// `HeatmapGL.ColorBar.Title.font` |
/// `ParallelCoordinates.labelFont` |
/// `ParallelCoordinates.tickFont` |
/// `ParallelCoordinates.rangeFont` |
/// `ParallelCoordinates.Line.ColorBar.tickFont` |
/// `ParallelCoordinates.Line.ColorBar.Title.font` |
/// `ParallelCategories.labelFont` |
/// `ParallelCategories.tickFont` |
/// `ParallelCategories.Line.ColorBar.tickFont` |
/// `ParallelCategories.Line.ColorBar.Title.font` |
/// `ScatterMapbox.HoverLabel.font` |
/// `ScatterMapbox.Marker.ColorBar.tickFont` |
/// `ScatterMapbox.Marker.ColorBar.Title.font` |
/// `ScatterMapbox.textFont` |
/// `ChoroplethMapbox.HoverLabel.font` |
/// `ChoroplethMapbox.ColorBar.tickFont` |
/// `ChoroplethMapbox.ColorBar.Title.font` |
/// `DensityMapbox.HoverLabel.font` |
/// `DensityMapbox.ColorBar.tickFont` |
/// `DensityMapbox.ColorBar.Title.font` |
/// `Sankey.HoverLabel.font` |
/// `Sankey.textFont` |
/// `Sankey.Node.HoverLabel.font` |
/// `Sankey.Link.HoverLabel.font` |
/// `Indicator.Title.font` |
/// `Indicator.Number.font` |
/// `Indicator.Delta.font` |
/// `Indicator.Gauge.Axis.tickFont` |
/// `Table.HoverLabel.font` |
/// `Table.Header.font` |
/// `Table.Cells.font` |
/// `Carpet.AAxis.Title.font` |
/// `Carpet.AAxis.tickFont` |
/// `Carpet.BAxis.Title.font` |
/// `Carpet.BAxis.tickFont` |
/// `Carpet.font` |
/// `ScatterCarpet.HoverLabel.font` |
/// `ScatterCarpet.Marker.ColorBar.tickFont` |
/// `ScatterCarpet.Marker.ColorBar.Title.font` |
/// `ScatterCarpet.textFont` |
/// `ContourCarpet.Contours.labelFont` |
/// `ContourCarpet.ColorBar.tickFont` |
/// `ContourCarpet.ColorBar.Title.font` |
/// `OHLC.HoverLabel.font` |
/// `Candlestick.HoverLabel.font` |
/// `ScatterPolar.HoverLabel.font` |
/// `ScatterPolar.Marker.ColorBar.tickFont` |
/// `ScatterPolar.Marker.ColorBar.Title.font` |
/// `ScatterPolar.textFont` |
/// `ScatterPolarGL.HoverLabel.font` |
/// `ScatterPolarGL.Marker.ColorBar.tickFont` |
/// `ScatterPolarGL.Marker.ColorBar.Title.font` |
/// `ScatterPolarGL.textFont` |
/// `BarPolar.HoverLabel.font` |
/// `BarPolar.Marker.ColorBar.tickFont` |
/// `BarPolar.Marker.ColorBar.Title.font` |
/// `Area.HoverLabel.font` |
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-font-family) |
    /// [Python](https://plot.ly/python/reference/#layout-font-family) |
    /// [R](https://plot.ly/r/reference/#layout-font-family)
    public var family: String?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-font-size) |
    /// [Python](https://plot.ly/python/reference/#layout-font-size) |
    /// [R](https://plot.ly/r/reference/#layout-font-size)
    public var size: Double?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-font-color) |
    /// [Python](https://plot.ly/python/reference/#layout-font-color) |
    /// [R](https://plot.ly/r/reference/#layout-font-color)
    public var color: Color?

    public init(family: String? = nil, size: Double? = nil, color: Color? = nil) {
        self.family = family
        self.size = size
        self.color = color
    }
}

///
/// # Used By
/// `Layout.title` |
/// `Layout.Ternary.AAxis.title` |
/// `Layout.Ternary.BAxis.title` |
/// `Layout.Ternary.CAxis.title` |
/// `Layout.Scene.XAxis.title` |
/// `Layout.Scene.YAxis.title` |
/// `Layout.Scene.ZAxis.title` |
/// `Layout.Polar.RadialAxis.title` |
public struct Title0: Encodable {
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
    public var font: Font0?

    /// Sets the container `x` refers to. 
    ///
    /// *container* spans the entire `width` of the plot. *paper* refers to the width of the plotting
    /// area only.
    ///
    /// # Used By
    /// `Layout.Title0.xReference` |
    public enum XReference: String, Encodable {
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
    public var xReference: XReference?

    /// Sets the container `y` refers to. 
    ///
    /// *container* spans the entire `height` of the plot. *paper* refers to the height of the plotting
    /// area only.
    ///
    /// # Used By
    /// `Layout.Title0.yReference` |
    public enum YReference: String, Encodable {
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
    public var yReference: YReference?

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
    /// # Used By
    /// `Layout.Title0.xAnchor` |
    /// `Layout.XAxis.RangeSelector.xAnchor` |
    /// `Layout.Scene.Annotations.Items.Annotation.xAnchor` |
    /// `Layout.Legend.xAnchor` |
    /// `Layout.Annotations.Items.Annotation.xAnchor` |
    /// `Layout.UpdateMenus.Items.UpdateMenu.xAnchor` |
    /// `Layout.Sliders.Items.Slider.xAnchor` |
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-title-xanchor) |
    /// [Python](https://plot.ly/python/reference/#layout-title-xanchor) |
    /// [R](https://plot.ly/r/reference/#layout-title-xanchor)
    public var xAnchor: XAnchor0?

    /// Sets the title's vertical alignment with respect to its y position. 
    ///
    /// *top* means that the title's cap line is at y, *bottom* means that the title's baseline is at y
    /// and *middle* means that the title's midline is at y. *auto* divides `yref` by three and
    /// calculates the `yanchor` value automatically based on the value of `y`.
    ///
    /// # Used By
    /// `Layout.Title0.yAnchor` |
    /// `Layout.XAxis.RangeSelector.yAnchor` |
    /// `Layout.Scene.Annotations.Items.Annotation.yAnchor` |
    /// `Layout.Legend.yAnchor` |
    /// `Layout.Annotations.Items.Annotation.yAnchor` |
    /// `Layout.UpdateMenus.Items.UpdateMenu.yAnchor` |
    /// `Layout.Sliders.Items.Slider.yAnchor` |
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-title-yanchor) |
    /// [Python](https://plot.ly/python/reference/#layout-title-yanchor) |
    /// [R](https://plot.ly/r/reference/#layout-title-yanchor)
    public var yAnchor: YAnchor0?

    /// Sets the padding of the title. 
    ///
    /// Each padding value only applies when the corresponding `xanchor`/`yanchor` value is set
    /// accordingly. E.g. for left padding to take effect, `xanchor` must be set to *left*. The same
    /// rule applies if `xanchor`/`yanchor` is determined automatically. Padding is muted if the
    /// respective anchor value is *middle*/*center*.
    ///
    /// # Used By
    /// `Layout.Title0.padding` |
    public struct Padding: Encodable {
        /// The amount of padding (in px) along the top of the component.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-title-pad-t) |
        /// [Python](https://plot.ly/python/reference/#layout-title-pad-t) |
        /// [R](https://plot.ly/r/reference/#layout-title-pad-t)
        public var t: Double?
    
        /// The amount of padding (in px) on the right side of the component.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-title-pad-r) |
        /// [Python](https://plot.ly/python/reference/#layout-title-pad-r) |
        /// [R](https://plot.ly/r/reference/#layout-title-pad-r)
        public var r: Double?
    
        /// The amount of padding (in px) along the bottom of the component.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-title-pad-b) |
        /// [Python](https://plot.ly/python/reference/#layout-title-pad-b) |
        /// [R](https://plot.ly/r/reference/#layout-title-pad-b)
        public var b: Double?
    
        /// The amount of padding (in px) on the left side of the component.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-title-pad-l) |
        /// [Python](https://plot.ly/python/reference/#layout-title-pad-l) |
        /// [R](https://plot.ly/r/reference/#layout-title-pad-l)
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-title-pad) |
    /// [Python](https://plot.ly/python/reference/#layout-title-pad) |
    /// [R](https://plot.ly/r/reference/#layout-title-pad)
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

///
/// # Used By
/// `Layout.hoverLabel` |
/// `Layout.Scene.Annotations.Items.Annotation.hoverLabel` |
/// `Layout.Annotations.Items.Annotation.hoverLabel` |
/// `Scatter.hoverLabel` |
/// `Bar.hoverLabel` |
/// `Box.hoverLabel` |
/// `Heatmap.hoverLabel` |
/// `Histogram.hoverLabel` |
/// `Histogram2D.hoverLabel` |
/// `Histogram2DContour.hoverLabel` |
/// `Contour.hoverLabel` |
/// `ScatterTernary.hoverLabel` |
/// `Violin.hoverLabel` |
/// `Funnel.hoverLabel` |
/// `Waterfall.hoverLabel` |
/// `Image.hoverLabel` |
/// `Pie.hoverLabel` |
/// `Sunburst.hoverLabel` |
/// `Treemap.hoverLabel` |
/// `FunnelArea.hoverLabel` |
/// `Scatter3D.hoverLabel` |
/// `Surface.hoverLabel` |
/// `Isosurface.hoverLabel` |
/// `Volume.hoverLabel` |
/// `Mesh3D.hoverLabel` |
/// `Cone.hoverLabel` |
/// `StreamTube.hoverLabel` |
/// `ScatterGeo.hoverLabel` |
/// `Choropleth.hoverLabel` |
/// `ScatterGL.hoverLabel` |
/// `ScatterPlotMatrix.hoverLabel` |
/// `PointCloud.hoverLabel` |
/// `HeatmapGL.hoverLabel` |
/// `ScatterMapbox.hoverLabel` |
/// `ChoroplethMapbox.hoverLabel` |
/// `DensityMapbox.hoverLabel` |
/// `Sankey.hoverLabel` |
/// `Sankey.Node.hoverLabel` |
/// `Sankey.Link.hoverLabel` |
/// `Table.hoverLabel` |
/// `ScatterCarpet.hoverLabel` |
/// `OHLC.hoverLabel` |
/// `Candlestick.hoverLabel` |
/// `ScatterPolar.hoverLabel` |
/// `ScatterPolarGL.hoverLabel` |
/// `BarPolar.hoverLabel` |
/// `Area.hoverLabel` |
public struct HoverLabel0: Encodable {
    /// Sets the background color of all hover labels on graph
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-hoverlabel-bgcolor) |
    /// [Python](https://plot.ly/python/reference/#layout-hoverlabel-bgcolor) |
    /// [R](https://plot.ly/r/reference/#layout-hoverlabel-bgcolor)
    public var backgroundColor: Color?

    /// Sets the border color of all hover labels on graph.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-hoverlabel-bordercolor) |
    /// [Python](https://plot.ly/python/reference/#layout-hoverlabel-bordercolor) |
    /// [R](https://plot.ly/r/reference/#layout-hoverlabel-bordercolor)
    public var borderColor: Color?

    /// Sets the default hover label font used by all traces on the graph.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-hoverlabel-font) |
    /// [Python](https://plot.ly/python/reference/#layout-hoverlabel-font) |
    /// [R](https://plot.ly/r/reference/#layout-hoverlabel-font)
    public var font: Font0?

    /// Sets the horizontal alignment of the text content within hover label box. 
    ///
    /// Has an effect only if the hover label text spans more two or more lines
    ///
    /// # Used By
    /// `Layout.HoverLabel0.align` |
    /// `Scatter.HoverLabel.align` |
    /// `Bar.HoverLabel.align` |
    /// `Box.HoverLabel.align` |
    /// `Heatmap.HoverLabel.align` |
    /// `Histogram.HoverLabel.align` |
    /// `Histogram2D.HoverLabel.align` |
    /// `Histogram2DContour.HoverLabel.align` |
    /// `Contour.HoverLabel.align` |
    /// `ScatterTernary.HoverLabel.align` |
    /// `Violin.HoverLabel.align` |
    /// `Funnel.HoverLabel.align` |
    /// `Waterfall.HoverLabel.align` |
    /// `Image.HoverLabel.align` |
    /// `Pie.HoverLabel.align` |
    /// `Sunburst.HoverLabel.align` |
    /// `Treemap.HoverLabel.align` |
    /// `FunnelArea.HoverLabel.align` |
    /// `Scatter3D.HoverLabel.align` |
    /// `Surface.HoverLabel.align` |
    /// `Isosurface.HoverLabel.align` |
    /// `Volume.HoverLabel.align` |
    /// `Mesh3D.HoverLabel.align` |
    /// `Cone.HoverLabel.align` |
    /// `StreamTube.HoverLabel.align` |
    /// `ScatterGeo.HoverLabel.align` |
    /// `Choropleth.HoverLabel.align` |
    /// `ScatterGL.HoverLabel.align` |
    /// `ScatterPlotMatrix.HoverLabel.align` |
    /// `PointCloud.HoverLabel.align` |
    /// `HeatmapGL.HoverLabel.align` |
    /// `ScatterMapbox.HoverLabel.align` |
    /// `ChoroplethMapbox.HoverLabel.align` |
    /// `DensityMapbox.HoverLabel.align` |
    /// `Sankey.HoverLabel.align` |
    /// `Sankey.Node.HoverLabel.align` |
    /// `Sankey.Link.HoverLabel.align` |
    /// `Table.HoverLabel.align` |
    /// `ScatterCarpet.HoverLabel.align` |
    /// `OHLC.HoverLabel.align` |
    /// `Candlestick.HoverLabel.align` |
    /// `ScatterPolar.HoverLabel.align` |
    /// `ScatterPolarGL.HoverLabel.align` |
    /// `BarPolar.HoverLabel.align` |
    /// `Area.HoverLabel.align` |
    public enum Align0: String, Encodable {
        case left
        case right
        case auto
    }
    /// Sets the horizontal alignment of the text content within hover label box. 
    ///
    /// Has an effect only if the hover label text spans more two or more lines
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-hoverlabel-align) |
    /// [Python](https://plot.ly/python/reference/#layout-hoverlabel-align) |
    /// [R](https://plot.ly/r/reference/#layout-hoverlabel-align)
    public var align: Align0?

    /// Sets the default length (in number of characters) of the trace name in the hover labels for all traces. 
    ///
    /// -1 shows the whole name regardless of length. 0-3 shows the first 0-3 characters, and an integer
    /// >3 will show the whole name if it is less than that many characters, but if it is longer, will
    /// truncate to `namelength - 3` characters and add an ellipsis.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-hoverlabel-namelength) |
    /// [Python](https://plot.ly/python/reference/#layout-hoverlabel-namelength) |
    /// [R](https://plot.ly/r/reference/#layout-hoverlabel-namelength)
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

///
/// # Used By
/// `Layout.Grid.domain` |
/// `Layout.Ternary.domain` |
/// `Layout.Scene.domain` |
/// `Layout.Geo.domain` |
/// `Layout.Mapbox.domain` |
/// `Layout.Polar.domain` |
/// `Pie.domain` |
/// `Sunburst.domain` |
/// `Treemap.domain` |
/// `FunnelArea.domain` |
/// `ParallelCoordinates.domain` |
/// `ParallelCategories.domain` |
/// `Sankey.domain` |
/// `Indicator.domain` |
/// `Table.domain` |
public struct Domain0: Encodable {
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
/// # Used By
/// `Layout.XAxis.tickFormatStops` |
/// `Layout.YAxis.tickFormatStops` |
/// `Layout.Ternary.AAxis.tickFormatStops` |
/// `Layout.Ternary.BAxis.tickFormatStops` |
/// `Layout.Ternary.CAxis.tickFormatStops` |
/// `Layout.Scene.XAxis.tickFormatStops` |
/// `Layout.Scene.YAxis.tickFormatStops` |
/// `Layout.Scene.ZAxis.tickFormatStops` |
/// `Layout.Polar.RadialAxis.tickFormatStops` |
/// `Layout.Polar.AngularAxis.tickFormatStops` |
/// `Layout.ColorAxis.ColorBar.tickFormatStops` |
/// `Scatter.Marker.ColorBar.tickFormatStops` |
/// `Bar.Marker.ColorBar.tickFormatStops` |
/// `Heatmap.ColorBar.tickFormatStops` |
/// `Histogram.Marker.ColorBar.tickFormatStops` |
/// `Histogram2D.ColorBar.tickFormatStops` |
/// `Histogram2DContour.ColorBar.tickFormatStops` |
/// `Contour.ColorBar.tickFormatStops` |
/// `ScatterTernary.Marker.ColorBar.tickFormatStops` |
/// `Funnel.Marker.ColorBar.tickFormatStops` |
/// `Sunburst.Marker.ColorBar.tickFormatStops` |
/// `Treemap.Marker.ColorBar.tickFormatStops` |
/// `Scatter3D.Line.ColorBar.tickFormatStops` |
/// `Scatter3D.Marker.ColorBar.tickFormatStops` |
/// `Surface.ColorBar.tickFormatStops` |
/// `Isosurface.ColorBar.tickFormatStops` |
/// `Volume.ColorBar.tickFormatStops` |
/// `Mesh3D.ColorBar.tickFormatStops` |
/// `Cone.ColorBar.tickFormatStops` |
/// `StreamTube.ColorBar.tickFormatStops` |
/// `ScatterGeo.Marker.ColorBar.tickFormatStops` |
/// `Choropleth.ColorBar.tickFormatStops` |
/// `ScatterGL.Marker.ColorBar.tickFormatStops` |
/// `ScatterPlotMatrix.Marker.ColorBar.tickFormatStops` |
/// `HeatmapGL.ColorBar.tickFormatStops` |
/// `ParallelCoordinates.Line.ColorBar.tickFormatStops` |
/// `ParallelCategories.Line.ColorBar.tickFormatStops` |
/// `ScatterMapbox.Marker.ColorBar.tickFormatStops` |
/// `ChoroplethMapbox.ColorBar.tickFormatStops` |
/// `DensityMapbox.ColorBar.tickFormatStops` |
/// `Indicator.Gauge.Axis.tickFormatStops` |
/// `Carpet.AAxis.tickFormatStops` |
/// `Carpet.BAxis.tickFormatStops` |
/// `ScatterCarpet.Marker.ColorBar.tickFormatStops` |
/// `ContourCarpet.ColorBar.tickFormatStops` |
/// `ScatterPolar.Marker.ColorBar.tickFormatStops` |
/// `ScatterPolarGL.Marker.ColorBar.tickFormatStops` |
/// `BarPolar.Marker.ColorBar.tickFormatStops` |
public struct TickFormatStops0: Encodable {
    ///
    /// # Used By
    /// `Layout.XAxis.TickFormatStops0.items` |
    /// `Layout.YAxis.TickFormatStops.items` |
    /// `Layout.Ternary.AAxis.TickFormatStops.items` |
    /// `Layout.Ternary.BAxis.TickFormatStops.items` |
    /// `Layout.Ternary.CAxis.TickFormatStops.items` |
    /// `Layout.Scene.XAxis.TickFormatStops.items` |
    /// `Layout.Scene.YAxis.TickFormatStops.items` |
    /// `Layout.Scene.ZAxis.TickFormatStops.items` |
    /// `Layout.Polar.RadialAxis.TickFormatStops.items` |
    /// `Layout.Polar.AngularAxis.TickFormatStops.items` |
    /// `Layout.ColorAxis.ColorBar.TickFormatStops.items` |
    /// `Scatter.Marker.ColorBar.TickFormatStops.items` |
    /// `Bar.Marker.ColorBar.TickFormatStops.items` |
    /// `Heatmap.ColorBar.TickFormatStops.items` |
    /// `Histogram.Marker.ColorBar.TickFormatStops.items` |
    /// `Histogram2D.ColorBar.TickFormatStops.items` |
    /// `Histogram2DContour.ColorBar.TickFormatStops.items` |
    /// `Contour.ColorBar.TickFormatStops.items` |
    /// `ScatterTernary.Marker.ColorBar.TickFormatStops.items` |
    /// `Funnel.Marker.ColorBar.TickFormatStops.items` |
    /// `Sunburst.Marker.ColorBar.TickFormatStops.items` |
    /// `Treemap.Marker.ColorBar.TickFormatStops.items` |
    /// `Scatter3D.Line.ColorBar.TickFormatStops.items` |
    /// `Scatter3D.Marker.ColorBar.TickFormatStops.items` |
    /// `Surface.ColorBar.TickFormatStops.items` |
    /// `Isosurface.ColorBar.TickFormatStops.items` |
    /// `Volume.ColorBar.TickFormatStops.items` |
    /// `Mesh3D.ColorBar.TickFormatStops.items` |
    /// `Cone.ColorBar.TickFormatStops.items` |
    /// `StreamTube.ColorBar.TickFormatStops.items` |
    /// `ScatterGeo.Marker.ColorBar.TickFormatStops.items` |
    /// `Choropleth.ColorBar.TickFormatStops.items` |
    /// `ScatterGL.Marker.ColorBar.TickFormatStops.items` |
    /// `ScatterPlotMatrix.Marker.ColorBar.TickFormatStops.items` |
    /// `HeatmapGL.ColorBar.TickFormatStops.items` |
    /// `ParallelCoordinates.Line.ColorBar.TickFormatStops.items` |
    /// `ParallelCategories.Line.ColorBar.TickFormatStops.items` |
    /// `ScatterMapbox.Marker.ColorBar.TickFormatStops.items` |
    /// `ChoroplethMapbox.ColorBar.TickFormatStops.items` |
    /// `DensityMapbox.ColorBar.TickFormatStops.items` |
    /// `Indicator.Gauge.Axis.TickFormatStops.items` |
    /// `Carpet.AAxis.TickFormatStops.items` |
    /// `Carpet.BAxis.TickFormatStops.items` |
    /// `ScatterCarpet.Marker.ColorBar.TickFormatStops.items` |
    /// `ContourCarpet.ColorBar.TickFormatStops.items` |
    /// `ScatterPolar.Marker.ColorBar.TickFormatStops.items` |
    /// `ScatterPolarGL.Marker.ColorBar.TickFormatStops.items` |
    /// `BarPolar.Marker.ColorBar.TickFormatStops.items` |
    public struct Items: Encodable {
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-tickformatstops-items-tickformatstop) |
        /// [Python](https://plot.ly/python/reference/#layout-xaxis-tickformatstops-items-tickformatstop) |
        /// [R](https://plot.ly/r/reference/#layout-xaxis-tickformatstops-items-tickformatstop)
        public var tickFormatStop: TickFormatStop?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case tickFormatStop = "tickformatstop"
        }
        
        public init(tickFormatStop: TickFormatStop? = nil) {
            self.tickFormatStop = tickFormatStop
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-tickformatstops-items) |
    /// [Python](https://plot.ly/python/reference/#layout-xaxis-tickformatstops-items) |
    /// [R](https://plot.ly/r/reference/#layout-xaxis-tickformatstops-items)
    public var items: Items?

    public init(items: Items? = nil) {
        self.items = items
    }
}

///
/// # Used By
/// `Layout.XAxis.TickFormatStops0.Items.tickFormatStop` |
/// `Layout.YAxis.TickFormatStops.Items.tickFormatStop` |
/// `Layout.Ternary.AAxis.TickFormatStops.Items.tickFormatStop` |
/// `Layout.Ternary.BAxis.TickFormatStops.Items.tickFormatStop` |
/// `Layout.Ternary.CAxis.TickFormatStops.Items.tickFormatStop` |
/// `Layout.Scene.XAxis.TickFormatStops.Items.tickFormatStop` |
/// `Layout.Scene.YAxis.TickFormatStops.Items.tickFormatStop` |
/// `Layout.Scene.ZAxis.TickFormatStops.Items.tickFormatStop` |
/// `Layout.Polar.RadialAxis.TickFormatStops.Items.tickFormatStop` |
/// `Layout.Polar.AngularAxis.TickFormatStops.Items.tickFormatStop` |
/// `Layout.ColorAxis.ColorBar.TickFormatStops.Items.tickFormatStop` |
/// `Scatter.Marker.ColorBar.TickFormatStops.Items.tickFormatStop` |
/// `Bar.Marker.ColorBar.TickFormatStops.Items.tickFormatStop` |
/// `Heatmap.ColorBar.TickFormatStops.Items.tickFormatStop` |
/// `Histogram.Marker.ColorBar.TickFormatStops.Items.tickFormatStop` |
/// `Histogram2D.ColorBar.TickFormatStops.Items.tickFormatStop` |
/// `Histogram2DContour.ColorBar.TickFormatStops.Items.tickFormatStop` |
/// `Contour.ColorBar.TickFormatStops.Items.tickFormatStop` |
/// `ScatterTernary.Marker.ColorBar.TickFormatStops.Items.tickFormatStop` |
/// `Funnel.Marker.ColorBar.TickFormatStops.Items.tickFormatStop` |
/// `Sunburst.Marker.ColorBar.TickFormatStops.Items.tickFormatStop` |
/// `Treemap.Marker.ColorBar.TickFormatStops.Items.tickFormatStop` |
/// `Scatter3D.Line.ColorBar.TickFormatStops.Items.tickFormatStop` |
/// `Scatter3D.Marker.ColorBar.TickFormatStops.Items.tickFormatStop` |
/// `Surface.ColorBar.TickFormatStops.Items.tickFormatStop` |
/// `Isosurface.ColorBar.TickFormatStops.Items.tickFormatStop` |
/// `Volume.ColorBar.TickFormatStops.Items.tickFormatStop` |
/// `Mesh3D.ColorBar.TickFormatStops.Items.tickFormatStop` |
/// `Cone.ColorBar.TickFormatStops.Items.tickFormatStop` |
/// `StreamTube.ColorBar.TickFormatStops.Items.tickFormatStop` |
/// `ScatterGeo.Marker.ColorBar.TickFormatStops.Items.tickFormatStop` |
/// `Choropleth.ColorBar.TickFormatStops.Items.tickFormatStop` |
/// `ScatterGL.Marker.ColorBar.TickFormatStops.Items.tickFormatStop` |
/// `ScatterPlotMatrix.Marker.ColorBar.TickFormatStops.Items.tickFormatStop` |
/// `HeatmapGL.ColorBar.TickFormatStops.Items.tickFormatStop` |
/// `ParallelCoordinates.Line.ColorBar.TickFormatStops.Items.tickFormatStop` |
/// `ParallelCategories.Line.ColorBar.TickFormatStops.Items.tickFormatStop` |
/// `ScatterMapbox.Marker.ColorBar.TickFormatStops.Items.tickFormatStop` |
/// `ChoroplethMapbox.ColorBar.TickFormatStops.Items.tickFormatStop` |
/// `DensityMapbox.ColorBar.TickFormatStops.Items.tickFormatStop` |
/// `Indicator.Gauge.Axis.TickFormatStops.Items.tickFormatStop` |
/// `Carpet.AAxis.TickFormatStops.Items.tickFormatStop` |
/// `Carpet.BAxis.TickFormatStops.Items.tickFormatStop` |
/// `ScatterCarpet.Marker.ColorBar.TickFormatStops.Items.tickFormatStop` |
/// `ContourCarpet.ColorBar.TickFormatStops.Items.tickFormatStop` |
/// `ScatterPolar.Marker.ColorBar.TickFormatStops.Items.tickFormatStop` |
/// `ScatterPolarGL.Marker.ColorBar.TickFormatStops.Items.tickFormatStop` |
/// `BarPolar.Marker.ColorBar.TickFormatStops.Items.tickFormatStop` |
public struct TickFormatStop0: Encodable {
    /// Determines whether or not this stop is used. 
    ///
    /// If `false`, this stop is ignored even within its `dtickrange`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-tickformatstops-items-tickformatstop-enabled) |
    /// [Python](https://plot.ly/python/reference/#layout-xaxis-tickformatstops-items-tickformatstop-enabled) |
    /// [R](https://plot.ly/r/reference/#layout-xaxis-tickformatstops-items-tickformatstop-enabled)
    public var enabled: Bool?

    /// range [*min*, *max*], where *min*, *max* - dtick values which describe some zoom level, it is possible to omit *min* or *max* value by passing *null*
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-tickformatstops-items-tickformatstop-dtickrange) |
    /// [Python](https://plot.ly/python/reference/#layout-xaxis-tickformatstops-items-tickformatstop-dtickrange) |
    /// [R](https://plot.ly/r/reference/#layout-xaxis-tickformatstops-items-tickformatstop-dtickrange)
    public var dTickRange: InfoArray?

    /// string - dtickformat for described zoom level, the same as *tickformat*
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-tickformatstops-items-tickformatstop-value) |
    /// [Python](https://plot.ly/python/reference/#layout-xaxis-tickformatstops-items-tickformatstop-value) |
    /// [R](https://plot.ly/r/reference/#layout-xaxis-tickformatstops-items-tickformatstop-value)
    public var value: String?

    /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. 
    ///
    /// You can modify these items in the output figure by making your own item with `templateitemname`
    /// matching this `name` alongside your modifications (including `visible: false` or `enabled:
    /// false` to hide it). Has no effect outside of a template.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-tickformatstops-items-tickformatstop-name) |
    /// [Python](https://plot.ly/python/reference/#layout-xaxis-tickformatstops-items-tickformatstop-name) |
    /// [R](https://plot.ly/r/reference/#layout-xaxis-tickformatstops-items-tickformatstop-name)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-xaxis-tickformatstops-items-tickformatstop-templateitemname) |
    /// [Python](https://plot.ly/python/reference/#layout-xaxis-tickformatstops-items-tickformatstop-templateitemname) |
    /// [R](https://plot.ly/r/reference/#layout-xaxis-tickformatstops-items-tickformatstop-templateitemname)
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

///
/// # Used By
/// `Layout.Shapes.Items.Shape.line` |
/// `Box.line` |
/// `Histogram2DContour.line` |
/// `Contour.line` |
/// `ScatterTernary.line` |
/// `Violin.line` |
/// `Violin.Box.line` |
/// `Funnel.Connector.line` |
/// `Waterfall.Increasing.Marker.line` |
/// `Waterfall.Decreasing.Marker.line` |
/// `Waterfall.Totals.Marker.line` |
/// `Waterfall.Connector.line` |
/// `ScatterGeo.line` |
/// `ScatterMapbox.line` |
/// `Indicator.Gauge.Bar.line` |
/// `Indicator.Gauge.Steps.Items.Step.line` |
/// `Indicator.Gauge.Threshold.line` |
/// `ScatterCarpet.line` |
/// `ContourCarpet.line` |
/// `OHLC.Increasing.line` |
/// `OHLC.Decreasing.line` |
/// `Candlestick.Increasing.line` |
/// `Candlestick.Decreasing.line` |
/// `ScatterPolar.line` |
public struct Line0: Encodable {
    /// Sets the line color.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-shapes-items-shape-line-color) |
    /// [Python](https://plot.ly/python/reference/#layout-shapes-items-shape-line-color) |
    /// [R](https://plot.ly/r/reference/#layout-shapes-items-shape-line-color)
    public var color: Color?

    /// Sets the line width (in px).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-shapes-items-shape-line-width) |
    /// [Python](https://plot.ly/python/reference/#layout-shapes-items-shape-line-width) |
    /// [R](https://plot.ly/r/reference/#layout-shapes-items-shape-line-width)
    public var width: Double?

    /// Sets the dash style of lines. 
    ///
    /// Set to a dash type string (*solid*, *dot*, *dash*, *longdash*, *dashdot*, or *longdashdot*) or a
    /// dash length list in px (eg *5px,10px,2px,2px*).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-shapes-items-shape-line-dash) |
    /// [Python](https://plot.ly/python/reference/#layout-shapes-items-shape-line-dash) |
    /// [R](https://plot.ly/r/reference/#layout-shapes-items-shape-line-dash)
    public var dash: String?

    public init(color: Color? = nil, width: Double? = nil, dash: String? = nil) {
        self.color = color
        self.width = width
        self.dash = dash
    }
}

///
/// # Used By
/// `Layout.ColorAxis.colorBar` |
/// `Scatter.Marker.colorBar` |
/// `Bar.Marker.colorBar` |
/// `Heatmap.colorBar` |
/// `Histogram.Marker.colorBar` |
/// `Histogram2D.colorBar` |
/// `Histogram2DContour.colorBar` |
/// `Contour.colorBar` |
/// `ScatterTernary.Marker.colorBar` |
/// `Funnel.Marker.colorBar` |
/// `Sunburst.Marker.colorBar` |
/// `Treemap.Marker.colorBar` |
/// `Scatter3D.Line.colorBar` |
/// `Scatter3D.Marker.colorBar` |
/// `Surface.colorBar` |
/// `Isosurface.colorBar` |
/// `Volume.colorBar` |
/// `Mesh3D.colorBar` |
/// `Cone.colorBar` |
/// `StreamTube.colorBar` |
/// `ScatterGeo.Marker.colorBar` |
/// `Choropleth.colorBar` |
/// `ScatterGL.Marker.colorBar` |
/// `ScatterPlotMatrix.Marker.colorBar` |
/// `HeatmapGL.colorBar` |
/// `ParallelCoordinates.Line.colorBar` |
/// `ParallelCategories.Line.colorBar` |
/// `ScatterMapbox.Marker.colorBar` |
/// `ChoroplethMapbox.colorBar` |
/// `DensityMapbox.colorBar` |
/// `ScatterCarpet.Marker.colorBar` |
/// `ContourCarpet.colorBar` |
/// `ScatterPolar.Marker.colorBar` |
/// `ScatterPolarGL.Marker.colorBar` |
/// `BarPolar.Marker.colorBar` |
public struct ColorBar0: Encodable {
    /// Determines whether this color bar's thickness (i.e. 
    ///
    /// the measure in the constant color direction) is set in units of plot *fraction* or in *pixels*.
    /// Use `thickness` to set the value.
    ///
    /// # Used By
    /// `Layout.ColorAxis.ColorBar0.thicknessMode` |
    /// `Scatter.Marker.ColorBar.thicknessMode` |
    /// `Bar.Marker.ColorBar.thicknessMode` |
    /// `Heatmap.ColorBar.thicknessMode` |
    /// `Histogram.Marker.ColorBar.thicknessMode` |
    /// `Histogram2D.ColorBar.thicknessMode` |
    /// `Histogram2DContour.ColorBar.thicknessMode` |
    /// `Contour.ColorBar.thicknessMode` |
    /// `ScatterTernary.Marker.ColorBar.thicknessMode` |
    /// `Funnel.Marker.ColorBar.thicknessMode` |
    /// `Sunburst.Marker.ColorBar.thicknessMode` |
    /// `Treemap.Marker.ColorBar.thicknessMode` |
    /// `Scatter3D.Line.ColorBar.thicknessMode` |
    /// `Scatter3D.Marker.ColorBar.thicknessMode` |
    /// `Surface.ColorBar.thicknessMode` |
    /// `Isosurface.ColorBar.thicknessMode` |
    /// `Volume.ColorBar.thicknessMode` |
    /// `Mesh3D.ColorBar.thicknessMode` |
    /// `Cone.ColorBar.thicknessMode` |
    /// `StreamTube.ColorBar.thicknessMode` |
    /// `ScatterGeo.Marker.ColorBar.thicknessMode` |
    /// `Choropleth.ColorBar.thicknessMode` |
    /// `ScatterGL.Marker.ColorBar.thicknessMode` |
    /// `ScatterPlotMatrix.Marker.ColorBar.thicknessMode` |
    /// `HeatmapGL.ColorBar.thicknessMode` |
    /// `ParallelCoordinates.Line.ColorBar.thicknessMode` |
    /// `ParallelCategories.Line.ColorBar.thicknessMode` |
    /// `ScatterMapbox.Marker.ColorBar.thicknessMode` |
    /// `ChoroplethMapbox.ColorBar.thicknessMode` |
    /// `DensityMapbox.ColorBar.thicknessMode` |
    /// `ScatterCarpet.Marker.ColorBar.thicknessMode` |
    /// `ContourCarpet.ColorBar.thicknessMode` |
    /// `ScatterPolar.Marker.ColorBar.thicknessMode` |
    /// `ScatterPolarGL.Marker.ColorBar.thicknessMode` |
    /// `BarPolar.Marker.ColorBar.thicknessMode` |
    public enum ThicknessMode0: String, Encodable {
        case fraction
        case pixels
    }
    /// Determines whether this color bar's thickness (i.e. 
    ///
    /// the measure in the constant color direction) is set in units of plot *fraction* or in *pixels*.
    /// Use `thickness` to set the value.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar-thicknessmode) |
    /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar-thicknessmode) |
    /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar-thicknessmode)
    public var thicknessMode: ThicknessMode0?

    /// Sets the thickness of the color bar This measure excludes the size of the padding, ticks and labels.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar-thickness) |
    /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar-thickness) |
    /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar-thickness)
    public var thickness: Double?

    /// Determines whether this color bar's length (i.e. 
    ///
    /// the measure in the color variation direction) is set in units of plot *fraction* or in *pixels.
    /// Use `len` to set the value.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar-lenmode) |
    /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar-lenmode) |
    /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar-lenmode)
    public var lengthMode: LengthMode0?

    /// Sets the length of the color bar This measure excludes the padding of both ends. 
    ///
    /// That is, the color bar length is this length minus the padding on both ends.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar-len) |
    /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar-len) |
    /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar-len)
    public var length: Double?

    /// Sets the x position of the color bar (in plot fraction).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar-x) |
    /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar-x) |
    /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar-x)
    public var x: Double?

    /// Sets this color bar's horizontal position anchor. 
    ///
    /// This anchor binds the `x` position to the *left*, *center* or *right* of the color bar.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar-xanchor) |
    /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar-xanchor) |
    /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar-xanchor)
    public var xAnchor: XAnchor1?

    /// Sets the amount of padding (in px) along the x direction.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar-xpad) |
    /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar-xpad) |
    /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar-xpad)
    public var xPadding: Double?

    /// Sets the y position of the color bar (in plot fraction).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar-y) |
    /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar-y) |
    /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar-y)
    public var y: Double?

    /// Sets this color bar's vertical position anchor This anchor binds the `y` position to the *top*, *middle* or *bottom* of the color bar.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar-yanchor) |
    /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar-yanchor) |
    /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar-yanchor)
    public var yAnchor: YAnchor1?

    /// Sets the amount of padding (in px) along the y direction.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar-ypad) |
    /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar-ypad) |
    /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar-ypad)
    public var yPading: Double?

    /// Sets the axis line color.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar-outlinecolor) |
    /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar-outlinecolor) |
    /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar-outlinecolor)
    public var outLineColor: Color?

    /// Sets the width (in px) of the axis line.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar-outlinewidth) |
    /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar-outlinewidth) |
    /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar-outlinewidth)
    public var outLineWidth: Double?

    /// Sets the axis line color.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar-bordercolor) |
    /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar-bordercolor) |
    /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar-bordercolor)
    public var borderColor: Color?

    /// Sets the width (in px) or the border enclosing this color bar.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar-borderwidth) |
    /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar-borderwidth) |
    /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar-borderwidth)
    public var borderWidth: Double?

    /// Sets the color of padded area.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar-bgcolor) |
    /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar-bgcolor) |
    /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar-bgcolor)
    public var backgroundColor: Color?

    /// Sets the tick mode for this axis. 
    ///
    /// If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is
    /// determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value
    /// if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via
    /// `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is
    /// provided).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar-tickmode) |
    /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar-tickmode) |
    /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar-tickmode)
    public var tickMode: TickMode0?

    /// Specifies the maximum number of ticks for the particular axis. 
    ///
    /// The actual number of ticks will be chosen automatically to be less than or equal to `nticks`.
    /// Has an effect only if `tickmode` is set to *auto*.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar-nticks) |
    /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar-nticks) |
    /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar-nticks)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar-tick0) |
    /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar-tick0) |
    /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar-tick0)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar-dtick) |
    /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar-dtick) |
    /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar-dtick)
    public var dTick: Anything?

    /// Sets the values at which ticks on this axis appear. 
    ///
    /// Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar-tickvals) |
    /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar-tickvals) |
    /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar-tickvals)
    public var tickValues: [Double]?

    /// Sets the text displayed at the ticks position via `tickvals`. 
    ///
    /// Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar-ticktext) |
    /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar-ticktext) |
    /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar-ticktext)
    public var tickText: [Double]?

    /// Determines whether ticks are drawn or not. 
    ///
    /// If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside
    /// (inside) the axis lines.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar-ticks) |
    /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar-ticks) |
    /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar-ticks)
    public var ticks: Ticks0?

    /// Sets the tick length (in px).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar-ticklen) |
    /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar-ticklen) |
    /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar-ticklen)
    public var tickLength: Double?

    /// Sets the tick width (in px).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar-tickwidth) |
    /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar-tickwidth) |
    /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar-tickwidth)
    public var tickWidth: Double?

    /// Sets the tick color.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar-tickcolor) |
    /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar-tickcolor) |
    /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar-tickcolor)
    public var tickColor: Color?

    /// Determines whether or not the tick labels are drawn.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar-showticklabels) |
    /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar-showticklabels) |
    /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar-showticklabels)
    public var showTickLabels: Bool?

    /// Sets the color bar's tick label font
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar-tickfont) |
    /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar-tickfont) |
    /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar-tickfont)
    public var tickFont: Font0?

    /// Sets the angle of the tick labels with respect to the horizontal. 
    ///
    /// For example, a `tickangle` of -90 draws the tick labels vertically.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar-tickangle) |
    /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar-tickangle) |
    /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar-tickangle)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar-tickformat) |
    /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar-tickformat) |
    /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar-tickformat)
    public var tickFormat: String?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar-tickformatstops) |
    /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar-tickformatstops) |
    /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar-tickformatstops)
    public var tickFormatStops: TickFormatStops0?

    /// Sets a tick label prefix.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar-tickprefix) |
    /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar-tickprefix) |
    /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar-tickprefix)
    public var tickPrefix: String?

    /// If *all*, all tick labels are displayed with a prefix. 
    ///
    /// If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is
    /// displayed with a suffix. If *none*, tick prefixes are hidden.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar-showtickprefix) |
    /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar-showtickprefix) |
    /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar-showtickprefix)
    public var showTickPrefix: ShowTickPrefix0?

    /// Sets a tick label suffix.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar-ticksuffix) |
    /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar-ticksuffix) |
    /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar-ticksuffix)
    public var tickSuffix: String?

    /// Same as `showtickprefix` but for tick suffixes.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar-showticksuffix) |
    /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar-showticksuffix) |
    /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar-showticksuffix)
    public var showTickSuffix: ShowTickSuffix0?

    /// If "true", even 4-digit integers are separated
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar-separatethousands) |
    /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar-separatethousands) |
    /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar-separatethousands)
    public var separatethousands: Bool?

    /// Determines a formatting rule for the tick exponents. 
    ///
    /// For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*,
    /// 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar-exponentformat) |
    /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar-exponentformat) |
    /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar-exponentformat)
    public var exponentFormat: ExponentFormat0?

    /// If *all*, all exponents are shown besides their significands. 
    ///
    /// If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the
    /// last tick is shown. If *none*, no exponents appear.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar-showexponent) |
    /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar-showexponent) |
    /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar-showexponent)
    public var showExponent: ShowExponent0?

    ///
    /// # Used By
    /// `Layout.ColorAxis.ColorBar0.title` |
    /// `Scatter.Marker.ColorBar.title` |
    /// `Bar.Marker.ColorBar.title` |
    /// `Heatmap.ColorBar.title` |
    /// `Histogram.Marker.ColorBar.title` |
    /// `Histogram2D.ColorBar.title` |
    /// `Histogram2DContour.ColorBar.title` |
    /// `Contour.ColorBar.title` |
    /// `ScatterTernary.Marker.ColorBar.title` |
    /// `Funnel.Marker.ColorBar.title` |
    /// `Pie.title` |
    /// `Sunburst.Marker.ColorBar.title` |
    /// `Treemap.Marker.ColorBar.title` |
    /// `FunnelArea.title` |
    /// `Scatter3D.Line.ColorBar.title` |
    /// `Scatter3D.Marker.ColorBar.title` |
    /// `Surface.ColorBar.title` |
    /// `Isosurface.ColorBar.title` |
    /// `Volume.ColorBar.title` |
    /// `Mesh3D.ColorBar.title` |
    /// `Cone.ColorBar.title` |
    /// `StreamTube.ColorBar.title` |
    /// `ScatterGeo.Marker.ColorBar.title` |
    /// `Choropleth.ColorBar.title` |
    /// `ScatterGL.Marker.ColorBar.title` |
    /// `ScatterPlotMatrix.Marker.ColorBar.title` |
    /// `HeatmapGL.ColorBar.title` |
    /// `ParallelCoordinates.Line.ColorBar.title` |
    /// `ParallelCategories.Line.ColorBar.title` |
    /// `ScatterMapbox.Marker.ColorBar.title` |
    /// `ChoroplethMapbox.ColorBar.title` |
    /// `DensityMapbox.ColorBar.title` |
    /// `Carpet.AAxis.title` |
    /// `Carpet.BAxis.title` |
    /// `ScatterCarpet.Marker.ColorBar.title` |
    /// `ContourCarpet.ColorBar.title` |
    /// `ScatterPolar.Marker.ColorBar.title` |
    /// `ScatterPolarGL.Marker.ColorBar.title` |
    /// `BarPolar.Marker.ColorBar.title` |
    public struct Title: Encodable {
        /// Sets the title of the color bar. 
        ///
        /// Note that before the existence of `title.text`, the title's contents used to be defined as the
        /// `title` attribute itself. This behavior has been deprecated.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar-title-text) |
        /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar-title-text) |
        /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar-title-text)
        public var text: String?
    
        /// Sets this color bar's title font. 
        ///
        /// Note that the title's font used to be set by the now deprecated `titlefont` attribute.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar-title-font) |
        /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar-title-font) |
        /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar-title-font)
        public var font: Font0?
    
        /// Determines the location of color bar's title with respect to the color bar. 
        ///
        /// Note that the title's location used to be set by the now deprecated `titleside` attribute.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar-title-side) |
        /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar-title-side) |
        /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar-title-side)
        public var side: Side0?
    
        public init(text: String? = nil, font: Font0? = nil, side: Side0? = nil) {
            self.text = text
            self.font = font
            self.side = side
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar-title) |
    /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar-title) |
    /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar-title)
    public var title: Title?

    /// Sets the source reference on plot.ly for  tickvals .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar-tickvalssrc) |
    /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar-tickvalssrc) |
    /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar-tickvalssrc)
    public var tickValuesSource: String?

    /// Sets the source reference on plot.ly for  ticktext .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar-ticktextsrc) |
    /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar-ticktextsrc) |
    /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar-ticktextsrc)
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

///
/// # Used By
/// `Scatter.stream` |
/// `Bar.stream` |
/// `Box.stream` |
/// `Heatmap.stream` |
/// `Histogram.stream` |
/// `Histogram2D.stream` |
/// `Histogram2DContour.stream` |
/// `Contour.stream` |
/// `ScatterTernary.stream` |
/// `Violin.stream` |
/// `Funnel.stream` |
/// `Waterfall.stream` |
/// `Image.stream` |
/// `Pie.stream` |
/// `Sunburst.stream` |
/// `Treemap.stream` |
/// `FunnelArea.stream` |
/// `Scatter3D.stream` |
/// `Surface.stream` |
/// `Isosurface.stream` |
/// `Volume.stream` |
/// `Mesh3D.stream` |
/// `Cone.stream` |
/// `StreamTube.stream` |
/// `ScatterGeo.stream` |
/// `Choropleth.stream` |
/// `ScatterGL.stream` |
/// `ScatterPlotMatrix.stream` |
/// `PointCloud.stream` |
/// `HeatmapGL.stream` |
/// `ParallelCoordinates.stream` |
/// `ParallelCategories.stream` |
/// `ScatterMapbox.stream` |
/// `ChoroplethMapbox.stream` |
/// `DensityMapbox.stream` |
/// `Sankey.stream` |
/// `Indicator.stream` |
/// `Table.stream` |
/// `Carpet.stream` |
/// `ScatterCarpet.stream` |
/// `ContourCarpet.stream` |
/// `OHLC.stream` |
/// `Candlestick.stream` |
/// `ScatterPolar.stream` |
/// `ScatterPolarGL.stream` |
/// `BarPolar.stream` |
/// `Area.stream` |
public struct Stream0: Encodable {
    /// The stream id number links a data trace on a plot with a stream. 
    ///
    /// See https://plot.ly/settings for more details.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-stream-token) |
    /// [Python](https://plot.ly/python/reference/#scatter-stream-token) |
    /// [R](https://plot.ly/r/reference/#scatter-stream-token)
    public var token: String?

    /// Sets the maximum number of points to keep on the plots from an incoming stream. 
    ///
    /// If `maxpoints` is set to *50*, only the newest 50 points will be displayed on the plot.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-stream-maxpoints) |
    /// [Python](https://plot.ly/python/reference/#scatter-stream-maxpoints) |
    /// [R](https://plot.ly/r/reference/#scatter-stream-maxpoints)
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

///
/// # Used By
/// `Scatter.transforms` |
/// `Scatter.Transforms0.Items.transform` |
/// `Bar.transforms` |
/// `Bar.Transforms.Items.transform` |
/// `Box.transforms` |
/// `Box.Transforms.Items.transform` |
/// `Heatmap.transforms` |
/// `Heatmap.Transforms.Items.transform` |
/// `Histogram.transforms` |
/// `Histogram.Transforms.Items.transform` |
/// `Histogram2D.transforms` |
/// `Histogram2D.Transforms.Items.transform` |
/// `Histogram2DContour.transforms` |
/// `Histogram2DContour.Transforms.Items.transform` |
/// `Contour.transforms` |
/// `Contour.Transforms.Items.transform` |
/// `ScatterTernary.transforms` |
/// `ScatterTernary.Transforms.Items.transform` |
/// `Violin.transforms` |
/// `Violin.Transforms.Items.transform` |
/// `Funnel.transforms` |
/// `Funnel.Transforms.Items.transform` |
/// `Waterfall.transforms` |
/// `Waterfall.Transforms.Items.transform` |
/// `Pie.transforms` |
/// `Pie.Transforms.Items.transform` |
/// `Sunburst.transforms` |
/// `Sunburst.Transforms.Items.transform` |
/// `Treemap.transforms` |
/// `Treemap.Transforms.Items.transform` |
/// `FunnelArea.transforms` |
/// `FunnelArea.Transforms.Items.transform` |
/// `Scatter3D.transforms` |
/// `Scatter3D.Transforms.Items.transform` |
/// `ScatterGeo.transforms` |
/// `ScatterGeo.Transforms.Items.transform` |
/// `Choropleth.transforms` |
/// `Choropleth.Transforms.Items.transform` |
/// `ScatterGL.transforms` |
/// `ScatterGL.Transforms.Items.transform` |
/// `ScatterPlotMatrix.transforms` |
/// `ScatterPlotMatrix.Transforms.Items.transform` |
/// `HeatmapGL.transforms` |
/// `HeatmapGL.Transforms.Items.transform` |
/// `ParallelCoordinates.transforms` |
/// `ParallelCoordinates.Transforms.Items.transform` |
/// `ParallelCategories.transforms` |
/// `ParallelCategories.Transforms.Items.transform` |
/// `ScatterMapbox.transforms` |
/// `ScatterMapbox.Transforms.Items.transform` |
/// `ChoroplethMapbox.transforms` |
/// `ChoroplethMapbox.Transforms.Items.transform` |
/// `DensityMapbox.transforms` |
/// `DensityMapbox.Transforms.Items.transform` |
/// `Indicator.transforms` |
/// `Indicator.Transforms.Items.transform` |
/// `ScatterCarpet.transforms` |
/// `ScatterCarpet.Transforms.Items.transform` |
/// `OHLC.transforms` |
/// `OHLC.Transforms.Items.transform` |
/// `Candlestick.transforms` |
/// `Candlestick.Transforms.Items.transform` |
/// `ScatterPolar.transforms` |
/// `ScatterPolar.Transforms.Items.transform` |
/// `ScatterPolarGL.transforms` |
/// `ScatterPolarGL.Transforms.Items.transform` |
/// `BarPolar.transforms` |
/// `BarPolar.Transforms.Items.transform` |
/// `Area.transforms` |
/// `Area.Transforms.Items.transform` |
public struct Transforms0: Encodable {
    ///
    /// # Used By
    /// `Scatter.Transforms0.items` |
    /// `Bar.Transforms.items` |
    /// `Box.Transforms.items` |
    /// `Heatmap.Transforms.items` |
    /// `Histogram.Transforms.items` |
    /// `Histogram2D.Transforms.items` |
    /// `Histogram2DContour.Transforms.items` |
    /// `Contour.Transforms.items` |
    /// `ScatterTernary.Transforms.items` |
    /// `Violin.Transforms.items` |
    /// `Funnel.Transforms.items` |
    /// `Waterfall.Transforms.items` |
    /// `Pie.Transforms.items` |
    /// `Sunburst.Transforms.items` |
    /// `Treemap.Transforms.items` |
    /// `FunnelArea.Transforms.items` |
    /// `Scatter3D.Transforms.items` |
    /// `ScatterGeo.Transforms.items` |
    /// `Choropleth.Transforms.items` |
    /// `ScatterGL.Transforms.items` |
    /// `ScatterPlotMatrix.Transforms.items` |
    /// `HeatmapGL.Transforms.items` |
    /// `ParallelCoordinates.Transforms.items` |
    /// `ParallelCategories.Transforms.items` |
    /// `ScatterMapbox.Transforms.items` |
    /// `ChoroplethMapbox.Transforms.items` |
    /// `DensityMapbox.Transforms.items` |
    /// `Indicator.Transforms.items` |
    /// `ScatterCarpet.Transforms.items` |
    /// `OHLC.Transforms.items` |
    /// `Candlestick.Transforms.items` |
    /// `ScatterPolar.Transforms.items` |
    /// `ScatterPolarGL.Transforms.items` |
    /// `BarPolar.Transforms.items` |
    /// `Area.Transforms.items` |
    public struct Items: Encodable {
        /// An array of operations that manipulate the trace data, for example filtering or sorting the data arrays.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-transforms-items-transform) |
        /// [Python](https://plot.ly/python/reference/#scatter-transforms-items-transform) |
        /// [R](https://plot.ly/r/reference/#scatter-transforms-items-transform)
        public var transform: Transforms0?
    
        public init(transform: Transforms0? = nil) {
            self.transform = transform
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-transforms-items) |
    /// [Python](https://plot.ly/python/reference/#scatter-transforms-items) |
    /// [R](https://plot.ly/r/reference/#scatter-transforms-items)
    public var items: Items?

    public init(items: Items? = nil) {
        self.items = items
    }
}

///
/// # Used By
/// `Scatter.Marker.line` |
/// `Bar.Marker.line` |
/// `Histogram.Marker.line` |
/// `ScatterTernary.Marker.line` |
/// `Funnel.Marker.line` |
/// `ScatterGeo.Marker.line` |
/// `ScatterCarpet.Marker.line` |
/// `ScatterPolar.Marker.line` |
/// `BarPolar.Marker.line` |
public struct Line1: Encodable {
    /// Sets the width (in px) of the lines bounding the marker points.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-line-width) |
    /// [Python](https://plot.ly/python/reference/#scatter-marker-line-width) |
    /// [R](https://plot.ly/r/reference/#scatter-marker-line-width)
    public var width: Double?

    /// Sets themarker.linecolor. 
    ///
    /// It accepts either a specific color or an array of numbers that are mapped to the colorscale
    /// relative to the max and min values of the array or relative to `marker.line.cmin` and
    /// `marker.line.cmax` if set.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-line-color) |
    /// [Python](https://plot.ly/python/reference/#scatter-marker-line-color) |
    /// [R](https://plot.ly/r/reference/#scatter-marker-line-color)
    public var color: Color?

    /// Determines whether or not the color domain is computed with respect to the input data (here in `marker.line.color`) or the bounds set in `marker.line.cmin` and `marker.line.cmax`  Has an effect only if in `marker.line.color`is set to a numerical array. 
    ///
    /// Defaults to `false` when `marker.line.cmin` and `marker.line.cmax` are set by the user.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-line-cauto) |
    /// [Python](https://plot.ly/python/reference/#scatter-marker-line-cauto) |
    /// [R](https://plot.ly/r/reference/#scatter-marker-line-cauto)
    public var cAuto: Bool?

    /// Sets the lower bound of the color domain. 
    ///
    /// Has an effect only if in `marker.line.color`is set to a numerical array. Value should have the
    /// same units as in `marker.line.color` and if set, `marker.line.cmax` must be set as well.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-line-cmin) |
    /// [Python](https://plot.ly/python/reference/#scatter-marker-line-cmin) |
    /// [R](https://plot.ly/r/reference/#scatter-marker-line-cmin)
    public var cMin: Double?

    /// Sets the upper bound of the color domain. 
    ///
    /// Has an effect only if in `marker.line.color`is set to a numerical array. Value should have the
    /// same units as in `marker.line.color` and if set, `marker.line.cmin` must be set as well.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-line-cmax) |
    /// [Python](https://plot.ly/python/reference/#scatter-marker-line-cmax) |
    /// [R](https://plot.ly/r/reference/#scatter-marker-line-cmax)
    public var cMax: Double?

    /// Sets the mid-point of the color domain by scaling `marker.line.cmin` and/or `marker.line.cmax` to be equidistant to this point. 
    ///
    /// Has an effect only if in `marker.line.color`is set to a numerical array. Value should have the
    /// same units as in `marker.line.color`. Has no effect when `marker.line.cauto` is `false`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-line-cmid) |
    /// [Python](https://plot.ly/python/reference/#scatter-marker-line-cmid) |
    /// [R](https://plot.ly/r/reference/#scatter-marker-line-cmid)
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-line-colorscale) |
    /// [Python](https://plot.ly/python/reference/#scatter-marker-line-colorscale) |
    /// [R](https://plot.ly/r/reference/#scatter-marker-line-colorscale)
    public var colorScale: ColorScale?

    /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `marker.line.colorscale`. 
    ///
    /// Has an effect only if in `marker.line.color`is set to a numerical array. In case `colorscale` is
    /// unspecified or `autocolorscale` is true, the default palette will be chosen according to whether
    /// numbers in the `color` array are all positive, all negative or mixed.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-line-autocolorscale) |
    /// [Python](https://plot.ly/python/reference/#scatter-marker-line-autocolorscale) |
    /// [R](https://plot.ly/r/reference/#scatter-marker-line-autocolorscale)
    public var autoColorScale: Bool?

    /// Reverses the color mapping if true. 
    ///
    /// Has an effect only if in `marker.line.color`is set to a numerical array. If true,
    /// `marker.line.cmin` will correspond to the last color in the array and `marker.line.cmax` will
    /// correspond to the first color.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-line-reversescale) |
    /// [Python](https://plot.ly/python/reference/#scatter-marker-line-reversescale) |
    /// [R](https://plot.ly/r/reference/#scatter-marker-line-reversescale)
    public var reverseScale: Bool?

    /// Sets a reference to a shared color axis. 
    ///
    /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
    /// for these shared color axes are set in the layout, under `layout.coloraxis`,
    /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-line-coloraxis) |
    /// [Python](https://plot.ly/python/reference/#scatter-marker-line-coloraxis) |
    /// [R](https://plot.ly/r/reference/#scatter-marker-line-coloraxis)
    public var colorAxis: SubPlotID?

    /// Sets the source reference on plot.ly for  width .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-line-widthsrc) |
    /// [Python](https://plot.ly/python/reference/#scatter-marker-line-widthsrc) |
    /// [R](https://plot.ly/r/reference/#scatter-marker-line-widthsrc)
    public var widthSource: String?

    /// Sets the source reference on plot.ly for  color .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-line-colorsrc) |
    /// [Python](https://plot.ly/python/reference/#scatter-marker-line-colorsrc) |
    /// [R](https://plot.ly/r/reference/#scatter-marker-line-colorsrc)
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

///
/// # Used By
/// `Scatter.Marker.gradient` |
/// `ScatterTernary.Marker.gradient` |
/// `ScatterGeo.Marker.gradient` |
/// `ScatterCarpet.Marker.gradient` |
/// `ScatterPolar.Marker.gradient` |
public struct Gradient0: Encodable {
    /// Sets the type of gradient used to fill the markers
    ///
    /// # Used By
    /// `Scatter.Marker.Gradient0.type` |
    /// `ScatterTernary.Marker.Gradient.type` |
    /// `ScatterGeo.Marker.Gradient.type` |
    /// `ScatterCarpet.Marker.Gradient.type` |
    /// `ScatterPolar.Marker.Gradient.type` |
    public enum Rule0: String, Encodable {
        case radial
        case horizontal
        case vertical
        case none
    }
    /// Sets the type of gradient used to fill the markers
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-gradient-type) |
    /// [Python](https://plot.ly/python/reference/#scatter-marker-gradient-type) |
    /// [R](https://plot.ly/r/reference/#scatter-marker-gradient-type)
    public var type: Rule0?

    /// Sets the final color of the gradient fill: the center color for radial, the right for horizontal, or the bottom for vertical.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-gradient-color) |
    /// [Python](https://plot.ly/python/reference/#scatter-marker-gradient-color) |
    /// [R](https://plot.ly/r/reference/#scatter-marker-gradient-color)
    public var color: Color?

    /// Sets the source reference on plot.ly for  type .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-gradient-typesrc) |
    /// [Python](https://plot.ly/python/reference/#scatter-marker-gradient-typesrc) |
    /// [R](https://plot.ly/r/reference/#scatter-marker-gradient-typesrc)
    public var typeSource: String?

    /// Sets the source reference on plot.ly for  color .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-gradient-colorsrc) |
    /// [Python](https://plot.ly/python/reference/#scatter-marker-gradient-colorsrc) |
    /// [R](https://plot.ly/r/reference/#scatter-marker-gradient-colorsrc)
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

///
/// # Used By
/// `Scatter.selected` |
/// `Scatter.unselected` |
/// `Bar.selected` |
/// `Bar.unselected` |
/// `Box.selected` |
/// `Box.unselected` |
/// `Histogram.selected` |
/// `Histogram.unselected` |
/// `ScatterTernary.selected` |
/// `ScatterTernary.unselected` |
/// `Violin.selected` |
/// `Violin.unselected` |
/// `ScatterGeo.selected` |
/// `ScatterGeo.unselected` |
/// `Choropleth.selected` |
/// `Choropleth.unselected` |
/// `ScatterGL.selected` |
/// `ScatterGL.unselected` |
/// `ScatterPlotMatrix.selected` |
/// `ScatterPlotMatrix.unselected` |
/// `ScatterMapbox.selected` |
/// `ScatterMapbox.unselected` |
/// `ChoroplethMapbox.selected` |
/// `ChoroplethMapbox.unselected` |
/// `ScatterCarpet.selected` |
/// `ScatterCarpet.unselected` |
/// `ScatterPolar.selected` |
/// `ScatterPolar.unselected` |
/// `ScatterPolarGL.selected` |
/// `ScatterPolarGL.unselected` |
/// `BarPolar.selected` |
/// `BarPolar.unselected` |
public struct Selected0: Encodable {
    ///
    /// # Used By
    /// `Scatter.Selected0.marker` |
    /// `Scatter.Unselected.marker` |
    /// `Bar.Selected.marker` |
    /// `Bar.Unselected.marker` |
    /// `Box.Selected.marker` |
    /// `Box.Unselected.marker` |
    /// `Histogram.Selected.marker` |
    /// `Histogram.Unselected.marker` |
    /// `ScatterTernary.Selected.marker` |
    /// `ScatterTernary.Unselected.marker` |
    /// `Violin.Selected.marker` |
    /// `Violin.Unselected.marker` |
    /// `ScatterGeo.Selected.marker` |
    /// `ScatterGeo.Unselected.marker` |
    /// `Choropleth.Selected.marker` |
    /// `Choropleth.Unselected.marker` |
    /// `ScatterGL.Selected.marker` |
    /// `ScatterGL.Unselected.marker` |
    /// `ScatterPlotMatrix.Selected.marker` |
    /// `ScatterPlotMatrix.Unselected.marker` |
    /// `ScatterMapbox.Selected.marker` |
    /// `ScatterMapbox.Unselected.marker` |
    /// `ChoroplethMapbox.Selected.marker` |
    /// `ChoroplethMapbox.Unselected.marker` |
    /// `ScatterCarpet.Selected.marker` |
    /// `ScatterCarpet.Unselected.marker` |
    /// `ScatterPolar.Selected.marker` |
    /// `ScatterPolar.Unselected.marker` |
    /// `ScatterPolarGL.Selected.marker` |
    /// `ScatterPolarGL.Unselected.marker` |
    /// `BarPolar.Selected.marker` |
    /// `BarPolar.Unselected.marker` |
    public struct Marker: Encodable {
        /// Sets the marker opacity of selected points.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-selected-marker-opacity) |
        /// [Python](https://plot.ly/python/reference/#scatter-selected-marker-opacity) |
        /// [R](https://plot.ly/r/reference/#scatter-selected-marker-opacity)
        public var opacity: Double?
    
        /// Sets the marker color of selected points.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-selected-marker-color) |
        /// [Python](https://plot.ly/python/reference/#scatter-selected-marker-color) |
        /// [R](https://plot.ly/r/reference/#scatter-selected-marker-color)
        public var color: Color?
    
        /// Sets the marker size of selected points.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-selected-marker-size) |
        /// [Python](https://plot.ly/python/reference/#scatter-selected-marker-size) |
        /// [R](https://plot.ly/r/reference/#scatter-selected-marker-size)
        public var size: Double?
    
        public init(opacity: Double? = nil, color: Color? = nil, size: Double? = nil) {
            self.opacity = opacity
            self.color = color
            self.size = size
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-selected-marker) |
    /// [Python](https://plot.ly/python/reference/#scatter-selected-marker) |
    /// [R](https://plot.ly/r/reference/#scatter-selected-marker)
    public var marker: Marker?

    ///
    /// # Used By
    /// `Scatter.Selected0.textFont` |
    /// `Scatter.Unselected.textFont` |
    /// `Bar.Selected.textFont` |
    /// `Bar.Unselected.textFont` |
    /// `Histogram.Selected.textFont` |
    /// `Histogram.Unselected.textFont` |
    /// `ScatterTernary.Selected.textFont` |
    /// `ScatterTernary.Unselected.textFont` |
    /// `Scatter3D.textFont` |
    /// `ScatterGeo.Selected.textFont` |
    /// `ScatterGeo.Unselected.textFont` |
    /// `ScatterGL.Selected.textFont` |
    /// `ScatterGL.Unselected.textFont` |
    /// `ScatterCarpet.Selected.textFont` |
    /// `ScatterCarpet.Unselected.textFont` |
    /// `ScatterPolar.Selected.textFont` |
    /// `ScatterPolar.Unselected.textFont` |
    /// `ScatterPolarGL.Selected.textFont` |
    /// `ScatterPolarGL.Unselected.textFont` |
    /// `BarPolar.Selected.textFont` |
    /// `BarPolar.Unselected.textFont` |
    public struct TextFont: Encodable {
        /// Sets the text font color of selected points.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-selected-textfont-color) |
        /// [Python](https://plot.ly/python/reference/#scatter-selected-textfont-color) |
        /// [R](https://plot.ly/r/reference/#scatter-selected-textfont-color)
        public var color: Color?
    
        public init(color: Color? = nil) {
            self.color = color
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-selected-textfont) |
    /// [Python](https://plot.ly/python/reference/#scatter-selected-textfont) |
    /// [R](https://plot.ly/r/reference/#scatter-selected-textfont)
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

///
/// # Used By
/// `Pie.Marker.line` |
/// `Sunburst.Marker.line` |
/// `Treemap.Marker.line` |
/// `FunnelArea.Marker.line` |
/// `Choropleth.Marker.line` |
/// `ScatterGL.line` |
/// `ChoroplethMapbox.Marker.line` |
/// `Sankey.Node.line` |
/// `Sankey.Link.line` |
/// `ScatterPolarGL.line` |
public struct Line2: Encodable {
    /// Sets the color of the line enclosing each sector.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pie-marker-line-color) |
    /// [Python](https://plot.ly/python/reference/#pie-marker-line-color) |
    /// [R](https://plot.ly/r/reference/#pie-marker-line-color)
    public var color: Color?

    /// Sets the width (in px) of the line enclosing each sector.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pie-marker-line-width) |
    /// [Python](https://plot.ly/python/reference/#pie-marker-line-width) |
    /// [R](https://plot.ly/r/reference/#pie-marker-line-width)
    public var width: Double?

    /// Sets the source reference on plot.ly for  color .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pie-marker-line-colorsrc) |
    /// [Python](https://plot.ly/python/reference/#pie-marker-line-colorsrc) |
    /// [R](https://plot.ly/r/reference/#pie-marker-line-colorsrc)
    public var colorSource: String?

    /// Sets the source reference on plot.ly for  width .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pie-marker-line-widthsrc) |
    /// [Python](https://plot.ly/python/reference/#pie-marker-line-widthsrc) |
    /// [R](https://plot.ly/r/reference/#pie-marker-line-widthsrc)
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

///
/// # Used By
/// `Surface.lightPosition` |
/// `Isosurface.lightPosition` |
/// `Volume.lightPosition` |
/// `Mesh3D.lightPosition` |
/// `Cone.lightPosition` |
/// `StreamTube.lightPosition` |
public struct LightPosition0: Encodable {
    /// Numeric vector, representing the X coordinate for each vertex.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#surface-lightposition-x) |
    /// [Python](https://plot.ly/python/reference/#surface-lightposition-x) |
    /// [R](https://plot.ly/r/reference/#surface-lightposition-x)
    public var x: Double?

    /// Numeric vector, representing the Y coordinate for each vertex.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#surface-lightposition-y) |
    /// [Python](https://plot.ly/python/reference/#surface-lightposition-y) |
    /// [R](https://plot.ly/r/reference/#surface-lightposition-y)
    public var y: Double?

    /// Numeric vector, representing the Z coordinate for each vertex.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#surface-lightposition-z) |
    /// [Python](https://plot.ly/python/reference/#surface-lightposition-z) |
    /// [R](https://plot.ly/r/reference/#surface-lightposition-z)
    public var z: Double?

    public init(x: Double? = nil, y: Double? = nil, z: Double? = nil) {
        self.x = x
        self.y = y
        self.z = z
    }
}

///
/// # Used By
/// `Isosurface.lighting` |
/// `Volume.lighting` |
/// `Mesh3D.lighting` |
/// `Cone.lighting` |
/// `StreamTube.lighting` |
public struct Lighting0: Encodable {
    /// Epsilon for vertex normals calculation avoids math issues arising from degenerate geometry.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-lighting-vertexnormalsepsilon) |
    /// [Python](https://plot.ly/python/reference/#isosurface-lighting-vertexnormalsepsilon) |
    /// [R](https://plot.ly/r/reference/#isosurface-lighting-vertexnormalsepsilon)
    public var vertexNormalsEpsilon: Double?

    /// Epsilon for face normals calculation avoids math issues arising from degenerate geometry.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-lighting-facenormalsepsilon) |
    /// [Python](https://plot.ly/python/reference/#isosurface-lighting-facenormalsepsilon) |
    /// [R](https://plot.ly/r/reference/#isosurface-lighting-facenormalsepsilon)
    public var faceNormalsEpsilon: Double?

    /// Ambient light increases overall color visibility but can wash out the image.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-lighting-ambient) |
    /// [Python](https://plot.ly/python/reference/#isosurface-lighting-ambient) |
    /// [R](https://plot.ly/r/reference/#isosurface-lighting-ambient)
    public var ambient: Double?

    /// Represents the extent that incident rays are reflected in a range of angles.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-lighting-diffuse) |
    /// [Python](https://plot.ly/python/reference/#isosurface-lighting-diffuse) |
    /// [R](https://plot.ly/r/reference/#isosurface-lighting-diffuse)
    public var diffuse: Double?

    /// Represents the level that incident rays are reflected in a single direction, causing shine.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-lighting-specular) |
    /// [Python](https://plot.ly/python/reference/#isosurface-lighting-specular) |
    /// [R](https://plot.ly/r/reference/#isosurface-lighting-specular)
    public var specular: Double?

    /// Alters specular reflection; the rougher the surface, the wider and less contrasty the shine.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-lighting-roughness) |
    /// [Python](https://plot.ly/python/reference/#isosurface-lighting-roughness) |
    /// [R](https://plot.ly/r/reference/#isosurface-lighting-roughness)
    public var roughness: Double?

    /// Represents the reflectance as a dependency of the viewing angle; e.g. 
    ///
    /// paper is reflective when viewing it from the edge of the paper (almost 90 degrees), causing
    /// shine.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-lighting-fresnel) |
    /// [Python](https://plot.ly/python/reference/#isosurface-lighting-fresnel) |
    /// [R](https://plot.ly/r/reference/#isosurface-lighting-fresnel)
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
