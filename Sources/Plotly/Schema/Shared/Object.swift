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
/// `Layout.Scene.Annotation.font` |
/// `Layout.Scene.Annotation.HoverLabel.font` |
/// `Layout.Mapbox.Layer.Symbol.textFont` |
/// `Layout.Polar.RadialAxis.Title.font` |
/// `Layout.Polar.RadialAxis.tickFont` |
/// `Layout.Polar.AngularAxis.tickFont` |
/// `Layout.Legend.font` |
/// `Layout.Annotation.font` |
/// `Layout.Annotation.HoverLabel.font` |
/// `Layout.UpdateMenu.font` |
/// `Layout.Slider.CurrentValue.font` |
/// `Layout.Slider.font` |
/// `Layout.ColorAxis.ColorBar.tickFont` |
/// `Layout.ColorAxis.ColorBar.Title.font` |
/// `Scatter.HoverLabel.font` |
/// `Scatter.GradientMarker.ColorBar.tickFont` |
/// `Scatter.GradientMarker.ColorBar.Title.font` |
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
/// `ScatterTernary.GradientMarker.ColorBar.tickFont` |
/// `ScatterTernary.GradientMarker.ColorBar.Title.font` |
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
/// `Scatter3D.DashedColoredLine.ColorBar.tickFont` |
/// `Scatter3D.DashedColoredLine.ColorBar.Title.font` |
/// `Scatter3D.SymbolicMarker.ColorBar.tickFont` |
/// `Scatter3D.SymbolicMarker.ColorBar.Title.font` |
/// `Scatter3D.textFont` |
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
/// `ScatterGeo.GradientMarker.ColorBar.tickFont` |
/// `ScatterGeo.GradientMarker.ColorBar.Title.font` |
/// `Choropleth.HoverLabel.font` |
/// `Choropleth.ColorBar.tickFont` |
/// `Choropleth.ColorBar.Title.font` |
/// `ScatterGL.HoverLabel.font` |
/// `ScatterGL.textFont` |
/// `ScatterGL.SymbolicMarker.ColorBar.tickFont` |
/// `ScatterGL.SymbolicMarker.ColorBar.Title.font` |
/// `ScatterPlotMatrix.HoverLabel.font` |
/// `ScatterPlotMatrix.SymbolicMarker.ColorBar.tickFont` |
/// `ScatterPlotMatrix.SymbolicMarker.ColorBar.Title.font` |
/// `PointCloud.HoverLabel.font` |
/// `HeatmapGL.HoverLabel.font` |
/// `HeatmapGL.ColorBar.tickFont` |
/// `HeatmapGL.ColorBar.Title.font` |
/// `ParallelCoordinates.labelFont` |
/// `ParallelCoordinates.tickFont` |
/// `ParallelCoordinates.rangeFont` |
/// `ParallelCoordinates.ColoredLine.ColorBar.tickFont` |
/// `ParallelCoordinates.ColoredLine.ColorBar.Title.font` |
/// `ParallelCategories.labelFont` |
/// `ParallelCategories.tickFont` |
/// `ParallelCategories.SplineColoredLine.ColorBar.tickFont` |
/// `ParallelCategories.SplineColoredLine.ColorBar.Title.font` |
/// `ScatterMapbox.HoverLabel.font` |
/// `ScatterMapbox.SymbolicMarker.ColorBar.tickFont` |
/// `ScatterMapbox.SymbolicMarker.ColorBar.Title.font` |
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
/// `ScatterCarpet.GradientMarker.ColorBar.tickFont` |
/// `ScatterCarpet.GradientMarker.ColorBar.Title.font` |
/// `ScatterCarpet.textFont` |
/// `ContourCarpet.Contours.labelFont` |
/// `ContourCarpet.ColorBar.tickFont` |
/// `ContourCarpet.ColorBar.Title.font` |
/// `OHLC.HoverLabel.font` |
/// `Candlestick.HoverLabel.font` |
/// `ScatterPolar.HoverLabel.font` |
/// `ScatterPolar.GradientMarker.ColorBar.tickFont` |
/// `ScatterPolar.GradientMarker.ColorBar.Title.font` |
/// `ScatterPolar.textFont` |
/// `ScatterPolarGL.HoverLabel.font` |
/// `ScatterPolarGL.SymbolicMarker.ColorBar.tickFont` |
/// `ScatterPolarGL.SymbolicMarker.ColorBar.Title.font` |
/// `ScatterPolarGL.textFont` |
/// `BarPolar.HoverLabel.font` |
/// `BarPolar.Marker.ColorBar.tickFont` |
/// `BarPolar.Marker.ColorBar.Title.font` |
/// `Area.HoverLabel.font` |
public struct Font: Encodable {
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

/// Sets the padding of the title. 
///
/// Each padding value only applies when the corresponding `xanchor`/`yanchor` value is set
/// accordingly. E.g. for left padding to take effect, `xanchor` must be set to *left*. The same
/// rule applies if `xanchor`/`yanchor` is determined automatically. Padding is muted if the
/// respective anchor value is *middle*/*center*.
///
/// # Used By
/// `Layout.Title.padding` |
/// `Layout.UpdateMenu.padding` |
/// `Layout.Slider.padding` |
/// `Treemap.Marker.padding` |
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

/// # Used By
/// `Layout.hoverLabel` |
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
/// `ScatterPolar.hoverLabel` |
/// `ScatterPolarGL.hoverLabel` |
/// `BarPolar.hoverLabel` |
/// `Area.hoverLabel` |
public struct HoverLabel: Encodable {
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
    public var font: Font?

    /// Sets the horizontal alignment of the text content within hover label box. 
    ///
    /// Has an effect only if the hover label text spans more two or more lines
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-hoverlabel-align) |
    /// [Python](https://plot.ly/python/reference/#layout-hoverlabel-align) |
    /// [R](https://plot.ly/r/reference/#layout-hoverlabel-align)
    public var align: AutoAlign?

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
    
    public init(backgroundColor: Color? = nil, borderColor: Color? = nil, font: Font? = nil, align: AutoAlign? = nil, nameLength: Int? = nil) {
        self.backgroundColor = backgroundColor
        self.borderColor = borderColor
        self.font = font
        self.align = align
        self.nameLength = nameLength
    }
}

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
/// `Scatter.GradientMarker.ColorBar.tickFormatStops` |
/// `Bar.Marker.ColorBar.tickFormatStops` |
/// `Heatmap.ColorBar.tickFormatStops` |
/// `Histogram.Marker.ColorBar.tickFormatStops` |
/// `Histogram2D.ColorBar.tickFormatStops` |
/// `Histogram2DContour.ColorBar.tickFormatStops` |
/// `Contour.ColorBar.tickFormatStops` |
/// `ScatterTernary.GradientMarker.ColorBar.tickFormatStops` |
/// `Funnel.Marker.ColorBar.tickFormatStops` |
/// `Sunburst.Marker.ColorBar.tickFormatStops` |
/// `Treemap.Marker.ColorBar.tickFormatStops` |
/// `Scatter3D.DashedColoredLine.ColorBar.tickFormatStops` |
/// `Scatter3D.SymbolicMarker.ColorBar.tickFormatStops` |
/// `Surface.ColorBar.tickFormatStops` |
/// `Isosurface.ColorBar.tickFormatStops` |
/// `Volume.ColorBar.tickFormatStops` |
/// `Mesh3D.ColorBar.tickFormatStops` |
/// `Cone.ColorBar.tickFormatStops` |
/// `StreamTube.ColorBar.tickFormatStops` |
/// `ScatterGeo.GradientMarker.ColorBar.tickFormatStops` |
/// `Choropleth.ColorBar.tickFormatStops` |
/// `ScatterGL.SymbolicMarker.ColorBar.tickFormatStops` |
/// `ScatterPlotMatrix.SymbolicMarker.ColorBar.tickFormatStops` |
/// `HeatmapGL.ColorBar.tickFormatStops` |
/// `ParallelCoordinates.ColoredLine.ColorBar.tickFormatStops` |
/// `ParallelCategories.SplineColoredLine.ColorBar.tickFormatStops` |
/// `ScatterMapbox.SymbolicMarker.ColorBar.tickFormatStops` |
/// `ChoroplethMapbox.ColorBar.tickFormatStops` |
/// `DensityMapbox.ColorBar.tickFormatStops` |
/// `Indicator.Gauge.Axis.tickFormatStops` |
/// `Carpet.AAxis.tickFormatStops` |
/// `Carpet.BAxis.tickFormatStops` |
/// `ScatterCarpet.GradientMarker.ColorBar.tickFormatStops` |
/// `ContourCarpet.ColorBar.tickFormatStops` |
/// `ScatterPolar.GradientMarker.ColorBar.tickFormatStops` |
/// `ScatterPolarGL.SymbolicMarker.ColorBar.tickFormatStops` |
/// `BarPolar.Marker.ColorBar.tickFormatStops` |
public struct TickFormatStop: Encodable {
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

/// # Used By
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
public struct Domain: Encodable {
    /// Sets the horizontal domain of this ternary subplot (in plot fraction).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-domain-x) |
    /// [Python](https://plot.ly/python/reference/#layout-ternary-domain-x) |
    /// [R](https://plot.ly/r/reference/#layout-ternary-domain-x)
    public var x: InfoArray?

    /// Sets the vertical domain of this ternary subplot (in plot fraction).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-domain-y) |
    /// [Python](https://plot.ly/python/reference/#layout-ternary-domain-y) |
    /// [R](https://plot.ly/r/reference/#layout-ternary-domain-y)
    public var y: InfoArray?

    /// If there is a layout grid, use the domain for this row in the grid for this ternary subplot .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-domain-row) |
    /// [Python](https://plot.ly/python/reference/#layout-ternary-domain-row) |
    /// [R](https://plot.ly/r/reference/#layout-ternary-domain-row)
    public var row: Int?

    /// If there is a layout grid, use the domain for this column in the grid for this ternary subplot .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-domain-column) |
    /// [Python](https://plot.ly/python/reference/#layout-ternary-domain-column) |
    /// [R](https://plot.ly/r/reference/#layout-ternary-domain-column)
    public var column: Int?

    public init(x: InfoArray? = nil, y: InfoArray? = nil, row: Int? = nil, column: Int? = nil) {
        self.x = x
        self.y = y
        self.row = row
        self.column = column
    }
}

/// # Used By
/// `Layout.Ternary.AAxis.title` |
/// `Layout.Ternary.BAxis.title` |
/// `Layout.Ternary.CAxis.title` |
/// `Layout.Scene.XAxis.title` |
/// `Layout.Scene.YAxis.title` |
/// `Layout.Scene.ZAxis.title` |
/// `Layout.Polar.RadialAxis.title` |
public struct Title: Encodable {
    /// Sets the title of this axis. 
    ///
    /// Note that before the existence of `title.text`, the title's contents used to be defined as the
    /// `title` attribute itself. This behavior has been deprecated.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-aaxis-title-text) |
    /// [Python](https://plot.ly/python/reference/#layout-ternary-aaxis-title-text) |
    /// [R](https://plot.ly/r/reference/#layout-ternary-aaxis-title-text)
    public var text: String?

    /// Sets this axis' title font. 
    ///
    /// Note that the title's font used to be customized by the now deprecated `titlefont` attribute.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-ternary-aaxis-title-font) |
    /// [Python](https://plot.ly/python/reference/#layout-ternary-aaxis-title-font) |
    /// [R](https://plot.ly/r/reference/#layout-ternary-aaxis-title-font)
    public var font: Font?

    public init(text: String? = nil, font: Font? = nil) {
        self.text = text
        self.font = font
    }
}

/// # Used By
/// `Layout.Shape.line` |
/// `Funnel.Connector.line` |
/// `Waterfall.Connector.line` |
/// `ScatterGeo.line` |
public struct DashedLine: Encodable {
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

/// # Used By
/// `Layout.ColorAxis.colorBar` |
/// `Scatter.GradientMarker.colorBar` |
/// `Bar.Marker.colorBar` |
/// `Heatmap.colorBar` |
/// `Histogram.Marker.colorBar` |
/// `Histogram2D.colorBar` |
/// `Histogram2DContour.colorBar` |
/// `Contour.colorBar` |
/// `ScatterTernary.GradientMarker.colorBar` |
/// `Funnel.Marker.colorBar` |
/// `Sunburst.Marker.colorBar` |
/// `Treemap.Marker.colorBar` |
/// `Scatter3D.DashedColoredLine.colorBar` |
/// `Scatter3D.SymbolicMarker.colorBar` |
/// `Surface.colorBar` |
/// `Isosurface.colorBar` |
/// `Volume.colorBar` |
/// `Mesh3D.colorBar` |
/// `Cone.colorBar` |
/// `StreamTube.colorBar` |
/// `ScatterGeo.GradientMarker.colorBar` |
/// `Choropleth.colorBar` |
/// `ScatterGL.SymbolicMarker.colorBar` |
/// `ScatterPlotMatrix.SymbolicMarker.colorBar` |
/// `HeatmapGL.colorBar` |
/// `ParallelCoordinates.ColoredLine.colorBar` |
/// `ParallelCategories.SplineColoredLine.colorBar` |
/// `ScatterMapbox.SymbolicMarker.colorBar` |
/// `ChoroplethMapbox.colorBar` |
/// `DensityMapbox.colorBar` |
/// `ScatterCarpet.GradientMarker.colorBar` |
/// `ContourCarpet.colorBar` |
/// `ScatterPolar.GradientMarker.colorBar` |
/// `ScatterPolarGL.SymbolicMarker.colorBar` |
/// `BarPolar.Marker.colorBar` |
public struct ColorBar: Encodable {
    /// Determines whether this color bar's thickness (i.e. 
    ///
    /// the measure in the constant color direction) is set in units of plot *fraction* or in *pixels*.
    /// Use `thickness` to set the value.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar-thicknessmode) |
    /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar-thicknessmode) |
    /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar-thicknessmode)
    public var thicknessMode: ThicknessMode?

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
    public var lengthMode: LengthMode?

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
    public var xAnchor: XAnchor?

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
    public var yAnchor: YAnchor?

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
    public var tickMode: TickMode?

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
    public var ticks: Ticks?

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
    public var tickFont: Font?

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
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar-tickformatstops-items-tickformatstop) |
    /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar-tickformatstops-items-tickformatstop) |
    /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar-tickformatstops-items-tickformatstop)
    public var tickFormatStops: [TickFormatStop]?

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
    public var showTickPrefix: ShowTickPrefix?

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
    public var showTickSuffix: ShowTickSuffix?

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
    public var exponentFormat: ExponentFormat?

    /// If *all*, all exponents are shown besides their significands. 
    ///
    /// If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the
    /// last tick is shown. If *none*, no exponents appear.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar-showexponent) |
    /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar-showexponent) |
    /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar-showexponent)
    public var showExponent: ShowExponent?

    /// # Used By
    /// `Layout.ColorAxis.ColorBar.title` |
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
        public var font: Font?
    
        /// Determines the location of color bar's title with respect to the color bar. 
        ///
        /// Note that the title's location used to be set by the now deprecated `titleside` attribute.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#layout-coloraxis-colorbar-title-side) |
        /// [Python](https://plot.ly/python/reference/#layout-coloraxis-colorbar-title-side) |
        /// [R](https://plot.ly/r/reference/#layout-coloraxis-colorbar-title-side)
        public var side: Side?
    
        public init(text: String? = nil, font: Font? = nil, side: Side? = nil) {
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
        case tickFormatStops = "tickformatstop"
        case tickPrefix = "tickprefix"
        case showTickPrefix = "showtickprefix"
        case tickSuffix = "ticksuffix"
        case showTickSuffix = "showticksuffix"
        case separatethousands
        case exponentFormat = "exponentformat"
        case showExponent = "showexponent"
        case title
    }
    
    public init(thicknessMode: ThicknessMode? = nil, thickness: Double? = nil, lengthMode: LengthMode? = nil, length: Double? = nil, x: Double? = nil, xAnchor: XAnchor? = nil, xPadding: Double? = nil, y: Double? = nil, yAnchor: YAnchor? = nil, yPading: Double? = nil, outLineColor: Color? = nil, outLineWidth: Double? = nil, borderColor: Color? = nil, borderWidth: Double? = nil, backgroundColor: Color? = nil, tickMode: TickMode? = nil, numTicks: Int? = nil, tick0: Anything? = nil, dTick: Anything? = nil, tickValues: [Double]? = nil, tickText: [Double]? = nil, ticks: Ticks? = nil, tickLength: Double? = nil, tickWidth: Double? = nil, tickColor: Color? = nil, showTickLabels: Bool? = nil, tickFont: Font? = nil, tickAngle: Angle? = nil, tickFormat: String? = nil, tickFormatStops: [TickFormatStop]? = nil, tickPrefix: String? = nil, showTickPrefix: ShowTickPrefix? = nil, tickSuffix: String? = nil, showTickSuffix: ShowTickSuffix? = nil, separatethousands: Bool? = nil, exponentFormat: ExponentFormat? = nil, showExponent: ShowExponent? = nil, title: Title? = nil) {
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
    }
}

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
public struct Stream: Encodable {
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

/// An array of operations that manipulate the trace data, for example filtering or sorting the data arrays.
///
/// # Used By
/// `Scatter.transforms` |
/// `Bar.transforms` |
/// `Box.transforms` |
/// `Heatmap.transforms` |
/// `Histogram.transforms` |
/// `Histogram2D.transforms` |
/// `Histogram2DContour.transforms` |
/// `Contour.transforms` |
/// `ScatterTernary.transforms` |
/// `Violin.transforms` |
/// `Funnel.transforms` |
/// `Waterfall.transforms` |
/// `Pie.transforms` |
/// `Sunburst.transforms` |
/// `Treemap.transforms` |
/// `FunnelArea.transforms` |
/// `Scatter3D.transforms` |
/// `ScatterGeo.transforms` |
/// `Choropleth.transforms` |
/// `ScatterGL.transforms` |
/// `ScatterPlotMatrix.transforms` |
/// `HeatmapGL.transforms` |
/// `ParallelCoordinates.transforms` |
/// `ParallelCategories.transforms` |
/// `ScatterMapbox.transforms` |
/// `ChoroplethMapbox.transforms` |
/// `DensityMapbox.transforms` |
/// `Indicator.transforms` |
/// `ScatterCarpet.transforms` |
/// `OHLC.transforms` |
/// `Candlestick.transforms` |
/// `ScatterPolar.transforms` |
/// `ScatterPolarGL.transforms` |
/// `BarPolar.transforms` |
/// `Area.transforms` |
public struct Transform: Encodable {
    public init() {
    }
}

/// # Used By
/// `Scatter.marker` |
/// `ScatterTernary.marker` |
/// `ScatterCarpet.marker` |
/// `ScatterPolar.marker` |
public struct GradientMarker: Encodable {
    /// Sets the marker symbol type. 
    ///
    /// Adding 100 is equivalent to appending *-open* to a symbol name. Adding 200 is equivalent to
    /// appending *-dot* to a symbol name. Adding 300 is equivalent to appending *-open-dot* or
    /// *dot-open* to a symbol name.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-symbol) |
    /// [Python](https://plot.ly/python/reference/#scatter-marker-symbol) |
    /// [R](https://plot.ly/r/reference/#scatter-marker-symbol)
    public var symbol: Symbol?

    /// Sets the marker opacity.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-opacity) |
    /// [Python](https://plot.ly/python/reference/#scatter-marker-opacity) |
    /// [R](https://plot.ly/r/reference/#scatter-marker-opacity)
    public var opacity: Double?

    /// Sets the marker size (in px).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-size) |
    /// [Python](https://plot.ly/python/reference/#scatter-marker-size) |
    /// [R](https://plot.ly/r/reference/#scatter-marker-size)
    public var size: Double?

    /// Sets a maximum number of points to be drawn on the graph. 
    ///
    /// *0* corresponds to no limit.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-maxdisplayed) |
    /// [Python](https://plot.ly/python/reference/#scatter-marker-maxdisplayed) |
    /// [R](https://plot.ly/r/reference/#scatter-marker-maxdisplayed)
    public var maxDisplayed: Double?

    /// Has an effect only if `marker.size` is set to a numerical array. 
    ///
    /// Sets the scale factor used to determine the rendered size of marker points. Use with `sizemin`
    /// and `sizemode`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-sizeref) |
    /// [Python](https://plot.ly/python/reference/#scatter-marker-sizeref) |
    /// [R](https://plot.ly/r/reference/#scatter-marker-sizeref)
    public var sizeReference: Double?

    /// Has an effect only if `marker.size` is set to a numerical array. 
    ///
    /// Sets the minimum size (in px) of the rendered marker points.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-sizemin) |
    /// [Python](https://plot.ly/python/reference/#scatter-marker-sizemin) |
    /// [R](https://plot.ly/r/reference/#scatter-marker-sizemin)
    public var sizeMin: Double?

    /// Has an effect only if `marker.size` is set to a numerical array. 
    ///
    /// Sets the rule for which the data in `size` is converted to pixels.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-sizemode) |
    /// [Python](https://plot.ly/python/reference/#scatter-marker-sizemode) |
    /// [R](https://plot.ly/r/reference/#scatter-marker-sizemode)
    public var sizeMode: SizeMode?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-line) |
    /// [Python](https://plot.ly/python/reference/#scatter-marker-line) |
    /// [R](https://plot.ly/r/reference/#scatter-marker-line)
    public var line: ColoredLine?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-gradient) |
    /// [Python](https://plot.ly/python/reference/#scatter-marker-gradient) |
    /// [R](https://plot.ly/r/reference/#scatter-marker-gradient)
    public var gradient: Gradient?

    /// Sets themarkercolor. 
    ///
    /// It accepts either a specific color or an array of numbers that are mapped to the colorscale
    /// relative to the max and min values of the array or relative to `marker.cmin` and `marker.cmax`
    /// if set.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-color) |
    /// [Python](https://plot.ly/python/reference/#scatter-marker-color) |
    /// [R](https://plot.ly/r/reference/#scatter-marker-color)
    public var color: Color?

    /// Determines whether or not the color domain is computed with respect to the input data (here in `marker.color`) or the bounds set in `marker.cmin` and `marker.cmax`  Has an effect only if in `marker.color`is set to a numerical array. 
    ///
    /// Defaults to `false` when `marker.cmin` and `marker.cmax` are set by the user.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-cauto) |
    /// [Python](https://plot.ly/python/reference/#scatter-marker-cauto) |
    /// [R](https://plot.ly/r/reference/#scatter-marker-cauto)
    public var cAuto: Bool?

    /// Sets the lower bound of the color domain. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
    /// units as in `marker.color` and if set, `marker.cmax` must be set as well.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-cmin) |
    /// [Python](https://plot.ly/python/reference/#scatter-marker-cmin) |
    /// [R](https://plot.ly/r/reference/#scatter-marker-cmin)
    public var cMin: Double?

    /// Sets the upper bound of the color domain. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
    /// units as in `marker.color` and if set, `marker.cmin` must be set as well.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-cmax) |
    /// [Python](https://plot.ly/python/reference/#scatter-marker-cmax) |
    /// [R](https://plot.ly/r/reference/#scatter-marker-cmax)
    public var cMax: Double?

    /// Sets the mid-point of the color domain by scaling `marker.cmin` and/or `marker.cmax` to be equidistant to this point. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
    /// units as in `marker.color`. Has no effect when `marker.cauto` is `false`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-cmid) |
    /// [Python](https://plot.ly/python/reference/#scatter-marker-cmid) |
    /// [R](https://plot.ly/r/reference/#scatter-marker-cmid)
    public var cMiddle: Double?

    /// Sets the colorscale. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array. The colorscale must be an
    /// array containing arrays mapping a normalized value to an rgb, rgba, hex, hsl, hsv, or named
    /// color string. At minimum, a mapping for the lowest (0) and highest (1) values are required. For
    /// example, `[[0, 'rgb(0,0,255)'], [1, 'rgb(255,0,0)']]`. To control the bounds of the colorscale
    /// in color space, use`marker.cmin` and `marker.cmax`. Alternatively, `colorscale` may be a palette
    /// name string of the following list:
    /// Greys,YlGnBu,Greens,YlOrRd,Bluered,RdBu,Reds,Blues,Picnic,Rainbow,Portland,Jet,Hot,Blackbody,Earth,Electric,Viridis,Cividis.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-colorscale) |
    /// [Python](https://plot.ly/python/reference/#scatter-marker-colorscale) |
    /// [R](https://plot.ly/r/reference/#scatter-marker-colorscale)
    public var colorScale: ColorScale?

    /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `marker.colorscale`. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array. In case `colorscale` is
    /// unspecified or `autocolorscale` is true, the default palette will be chosen according to whether
    /// numbers in the `color` array are all positive, all negative or mixed.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-autocolorscale) |
    /// [Python](https://plot.ly/python/reference/#scatter-marker-autocolorscale) |
    /// [R](https://plot.ly/r/reference/#scatter-marker-autocolorscale)
    public var autoColorScale: Bool?

    /// Reverses the color mapping if true. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array. If true, `marker.cmin` will
    /// correspond to the last color in the array and `marker.cmax` will correspond to the first color.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-reversescale) |
    /// [Python](https://plot.ly/python/reference/#scatter-marker-reversescale) |
    /// [R](https://plot.ly/r/reference/#scatter-marker-reversescale)
    public var reverseScale: Bool?

    /// Determines whether or not a colorbar is displayed for this trace. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-showscale) |
    /// [Python](https://plot.ly/python/reference/#scatter-marker-showscale) |
    /// [R](https://plot.ly/r/reference/#scatter-marker-showscale)
    public var showScale: Bool?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-colorbar) |
    /// [Python](https://plot.ly/python/reference/#scatter-marker-colorbar) |
    /// [R](https://plot.ly/r/reference/#scatter-marker-colorbar)
    public var colorBar: ColorBar?

    /// Sets a reference to a shared color axis. 
    ///
    /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
    /// for these shared color axes are set in the layout, under `layout.coloraxis`,
    /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-coloraxis) |
    /// [Python](https://plot.ly/python/reference/#scatter-marker-coloraxis) |
    /// [R](https://plot.ly/r/reference/#scatter-marker-coloraxis)
    public var colorAxis: SubPlotID?

    /// Plotly compatible property encoding
    enum CodingKeys: String, CodingKey {
        case symbol
        case opacity
        case size
        case maxDisplayed = "maxdisplayed"
        case sizeReference = "sizeref"
        case sizeMin = "sizemin"
        case sizeMode = "sizemode"
        case line
        case gradient
        case color
        case cAuto = "cauto"
        case cMin = "cmin"
        case cMax = "cmax"
        case cMiddle = "cmid"
        case colorScale = "colorscale"
        case autoColorScale = "autocolorscale"
        case reverseScale = "reversescale"
        case showScale = "showscale"
        case colorBar = "colorbar"
        case colorAxis = "coloraxis"
    }
    
    public init(symbol: Symbol? = nil, opacity: Double? = nil, size: Double? = nil, maxDisplayed: Double? = nil, sizeReference: Double? = nil, sizeMin: Double? = nil, sizeMode: SizeMode? = nil, line: ColoredLine? = nil, gradient: Gradient? = nil, color: Color? = nil, cAuto: Bool? = nil, cMin: Double? = nil, cMax: Double? = nil, cMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: ColorBar? = nil, colorAxis: SubPlotID? = nil) {
        self.symbol = symbol
        self.opacity = opacity
        self.size = size
        self.maxDisplayed = maxDisplayed
        self.sizeReference = sizeReference
        self.sizeMin = sizeMin
        self.sizeMode = sizeMode
        self.line = line
        self.gradient = gradient
        self.color = color
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
    }
}

/// # Used By
/// `Scatter.GradientMarker.line` |
/// `Bar.Marker.line` |
/// `Histogram.Marker.line` |
/// `ScatterTernary.GradientMarker.line` |
/// `Funnel.Marker.line` |
/// `Scatter3D.SymbolicMarker.line` |
/// `ScatterGeo.GradientMarker.line` |
/// `ScatterGL.SymbolicMarker.line` |
/// `ScatterPlotMatrix.SymbolicMarker.line` |
/// `ScatterCarpet.GradientMarker.line` |
/// `ScatterPolar.GradientMarker.line` |
/// `ScatterPolarGL.SymbolicMarker.line` |
/// `BarPolar.Marker.line` |
public struct ColoredLine: Encodable {
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
    }
    
    public init(width: Double? = nil, color: Color? = nil, cAuto: Bool? = nil, cMin: Double? = nil, cMax: Double? = nil, cMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, colorAxis: SubPlotID? = nil) {
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
    }
}

/// # Used By
/// `Scatter.GradientMarker.gradient` |
/// `ScatterTernary.GradientMarker.gradient` |
/// `ScatterGeo.GradientMarker.gradient` |
/// `ScatterCarpet.GradientMarker.gradient` |
/// `ScatterPolar.GradientMarker.gradient` |
public struct Gradient: Encodable {
    /// Sets the type of gradient used to fill the markers
    ///
    /// # Used By
    /// `Scatter.GradientMarker.Gradient.type` |
    public enum `Type`: String, Encodable {
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
    public var type: `Type`?

    /// Sets the final color of the gradient fill: the center color for radial, the right for horizontal, or the bottom for vertical.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-gradient-color) |
    /// [Python](https://plot.ly/python/reference/#scatter-marker-gradient-color) |
    /// [R](https://plot.ly/r/reference/#scatter-marker-gradient-color)
    public var color: Color?

    public init(type: `Type`? = nil, color: Color? = nil) {
        self.type = type
        self.color = color
    }
}

/// # Used By
/// `Scatter.xError` |
/// `Scatter.yError` |
/// `Bar.xError` |
/// `Bar.yError` |
/// `Histogram.xError` |
/// `Histogram.yError` |
/// `Scatter3D.xError` |
/// `Scatter3D.yError` |
/// `Scatter3D.zError` |
/// `ScatterGL.xError` |
/// `ScatterGL.yError` |
public struct Error: Encodable {
    /// Determines whether or not this set of error bars is visible.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-error_x-visible) |
    /// [Python](https://plot.ly/python/reference/#scatter-error_x-visible) |
    /// [R](https://plot.ly/r/reference/#scatter-error_x-visible)
    public var visible: Bool?

    /// Determines the rule used to generate the error bars. 
    ///
    /// If *constant`, the bar lengths are of a constant value. Set this constant in `value`. If
    /// *percent*, the bar lengths correspond to a percentage of underlying data. Set this percentage in
    /// `value`. If *sqrt*, the bar lengths correspond to the sqaure of the underlying data. If *data*,
    /// the bar lengths are set with data set `array`.
    ///
    /// # Used By
    /// `Scatter.Error.type` |
    public enum `Type`: String, Encodable {
        case percent
        case constant
        case sqrt
        case data
    }
    /// Determines the rule used to generate the error bars. 
    ///
    /// If *constant`, the bar lengths are of a constant value. Set this constant in `value`. If
    /// *percent*, the bar lengths correspond to a percentage of underlying data. Set this percentage in
    /// `value`. If *sqrt*, the bar lengths correspond to the sqaure of the underlying data. If *data*,
    /// the bar lengths are set with data set `array`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-error_x-type) |
    /// [Python](https://plot.ly/python/reference/#scatter-error_x-type) |
    /// [R](https://plot.ly/r/reference/#scatter-error_x-type)
    public var type: `Type`?

    /// Determines whether or not the error bars have the same length in both direction (top/bottom for vertical bars, left/right for horizontal bars.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-error_x-symmetric) |
    /// [Python](https://plot.ly/python/reference/#scatter-error_x-symmetric) |
    /// [R](https://plot.ly/r/reference/#scatter-error_x-symmetric)
    public var symmetric: Bool?

    /// Sets the data corresponding the length of each error bar. 
    ///
    /// Values are plotted relative to the underlying data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-error_x-array) |
    /// [Python](https://plot.ly/python/reference/#scatter-error_x-array) |
    /// [R](https://plot.ly/r/reference/#scatter-error_x-array)
    public var array: [Double]?

    /// Sets the data corresponding the length of each error bar in the bottom (left) direction for vertical (horizontal) bars Values are plotted relative to the underlying data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-error_x-arrayminus) |
    /// [Python](https://plot.ly/python/reference/#scatter-error_x-arrayminus) |
    /// [R](https://plot.ly/r/reference/#scatter-error_x-arrayminus)
    public var arrayMinus: [Double]?

    /// Sets the value of either the percentage (if `type` is set to *percent*) or the constant (if `type` is set to *constant*) corresponding to the lengths of the error bars.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-error_x-value) |
    /// [Python](https://plot.ly/python/reference/#scatter-error_x-value) |
    /// [R](https://plot.ly/r/reference/#scatter-error_x-value)
    public var value: Double?

    /// Sets the value of either the percentage (if `type` is set to *percent*) or the constant (if `type` is set to *constant*) corresponding to the lengths of the error bars in the bottom (left) direction for vertical (horizontal) bars
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-error_x-valueminus) |
    /// [Python](https://plot.ly/python/reference/#scatter-error_x-valueminus) |
    /// [R](https://plot.ly/r/reference/#scatter-error_x-valueminus)
    public var valueMinus: Double?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-error_x-traceref) |
    /// [Python](https://plot.ly/python/reference/#scatter-error_x-traceref) |
    /// [R](https://plot.ly/r/reference/#scatter-error_x-traceref)
    public var traceReference: Int?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-error_x-tracerefminus) |
    /// [Python](https://plot.ly/python/reference/#scatter-error_x-tracerefminus) |
    /// [R](https://plot.ly/r/reference/#scatter-error_x-tracerefminus)
    public var traceReferenceMinus: Int?

    /// Sets the stoke color of the error bars.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-error_x-color) |
    /// [Python](https://plot.ly/python/reference/#scatter-error_x-color) |
    /// [R](https://plot.ly/r/reference/#scatter-error_x-color)
    public var color: Color?

    /// Sets the thickness (in px) of the error bars.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-error_x-thickness) |
    /// [Python](https://plot.ly/python/reference/#scatter-error_x-thickness) |
    /// [R](https://plot.ly/r/reference/#scatter-error_x-thickness)
    public var thickness: Double?

    /// Sets the width (in px) of the cross-bar at both ends of the error bars.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-error_x-width) |
    /// [Python](https://plot.ly/python/reference/#scatter-error_x-width) |
    /// [R](https://plot.ly/r/reference/#scatter-error_x-width)
    public var width: Double?

    /// Plotly compatible property encoding
    enum CodingKeys: String, CodingKey {
        case visible
        case type
        case symmetric
        case array
        case arrayMinus = "arrayminus"
        case value
        case valueMinus = "valueminus"
        case traceReference = "traceref"
        case traceReferenceMinus = "tracerefminus"
        case color
        case thickness
        case width
    }
    
    public init(visible: Bool? = nil, type: `Type`? = nil, symmetric: Bool? = nil, array: [Double]? = nil, arrayMinus: [Double]? = nil, value: Double? = nil, valueMinus: Double? = nil, traceReference: Int? = nil, traceReferenceMinus: Int? = nil, color: Color? = nil, thickness: Double? = nil, width: Double? = nil) {
        self.visible = visible
        self.type = type
        self.symmetric = symmetric
        self.array = array
        self.arrayMinus = arrayMinus
        self.value = value
        self.valueMinus = valueMinus
        self.traceReference = traceReference
        self.traceReferenceMinus = traceReferenceMinus
        self.color = color
        self.thickness = thickness
        self.width = width
    }
}

/// # Used By
/// `Bar.marker` |
/// `Histogram.marker` |
/// `Funnel.marker` |
/// `BarPolar.marker` |
public struct Marker: Encodable {
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-marker-line) |
    /// [Python](https://plot.ly/python/reference/#bar-marker-line) |
    /// [R](https://plot.ly/r/reference/#bar-marker-line)
    public var line: ColoredLine?

    /// Sets themarkercolor. 
    ///
    /// It accepts either a specific color or an array of numbers that are mapped to the colorscale
    /// relative to the max and min values of the array or relative to `marker.cmin` and `marker.cmax`
    /// if set.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-marker-color) |
    /// [Python](https://plot.ly/python/reference/#bar-marker-color) |
    /// [R](https://plot.ly/r/reference/#bar-marker-color)
    public var color: Color?

    /// Determines whether or not the color domain is computed with respect to the input data (here in `marker.color`) or the bounds set in `marker.cmin` and `marker.cmax`  Has an effect only if in `marker.color`is set to a numerical array. 
    ///
    /// Defaults to `false` when `marker.cmin` and `marker.cmax` are set by the user.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-marker-cauto) |
    /// [Python](https://plot.ly/python/reference/#bar-marker-cauto) |
    /// [R](https://plot.ly/r/reference/#bar-marker-cauto)
    public var cAuto: Bool?

    /// Sets the lower bound of the color domain. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
    /// units as in `marker.color` and if set, `marker.cmax` must be set as well.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-marker-cmin) |
    /// [Python](https://plot.ly/python/reference/#bar-marker-cmin) |
    /// [R](https://plot.ly/r/reference/#bar-marker-cmin)
    public var cMin: Double?

    /// Sets the upper bound of the color domain. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
    /// units as in `marker.color` and if set, `marker.cmin` must be set as well.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-marker-cmax) |
    /// [Python](https://plot.ly/python/reference/#bar-marker-cmax) |
    /// [R](https://plot.ly/r/reference/#bar-marker-cmax)
    public var cMax: Double?

    /// Sets the mid-point of the color domain by scaling `marker.cmin` and/or `marker.cmax` to be equidistant to this point. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
    /// units as in `marker.color`. Has no effect when `marker.cauto` is `false`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-marker-cmid) |
    /// [Python](https://plot.ly/python/reference/#bar-marker-cmid) |
    /// [R](https://plot.ly/r/reference/#bar-marker-cmid)
    public var cMiddle: Double?

    /// Sets the colorscale. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array. The colorscale must be an
    /// array containing arrays mapping a normalized value to an rgb, rgba, hex, hsl, hsv, or named
    /// color string. At minimum, a mapping for the lowest (0) and highest (1) values are required. For
    /// example, `[[0, 'rgb(0,0,255)'], [1, 'rgb(255,0,0)']]`. To control the bounds of the colorscale
    /// in color space, use`marker.cmin` and `marker.cmax`. Alternatively, `colorscale` may be a palette
    /// name string of the following list:
    /// Greys,YlGnBu,Greens,YlOrRd,Bluered,RdBu,Reds,Blues,Picnic,Rainbow,Portland,Jet,Hot,Blackbody,Earth,Electric,Viridis,Cividis.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-marker-colorscale) |
    /// [Python](https://plot.ly/python/reference/#bar-marker-colorscale) |
    /// [R](https://plot.ly/r/reference/#bar-marker-colorscale)
    public var colorScale: ColorScale?

    /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `marker.colorscale`. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array. In case `colorscale` is
    /// unspecified or `autocolorscale` is true, the default palette will be chosen according to whether
    /// numbers in the `color` array are all positive, all negative or mixed.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-marker-autocolorscale) |
    /// [Python](https://plot.ly/python/reference/#bar-marker-autocolorscale) |
    /// [R](https://plot.ly/r/reference/#bar-marker-autocolorscale)
    public var autoColorScale: Bool?

    /// Reverses the color mapping if true. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array. If true, `marker.cmin` will
    /// correspond to the last color in the array and `marker.cmax` will correspond to the first color.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-marker-reversescale) |
    /// [Python](https://plot.ly/python/reference/#bar-marker-reversescale) |
    /// [R](https://plot.ly/r/reference/#bar-marker-reversescale)
    public var reverseScale: Bool?

    /// Determines whether or not a colorbar is displayed for this trace. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-marker-showscale) |
    /// [Python](https://plot.ly/python/reference/#bar-marker-showscale) |
    /// [R](https://plot.ly/r/reference/#bar-marker-showscale)
    public var showScale: Bool?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-marker-colorbar) |
    /// [Python](https://plot.ly/python/reference/#bar-marker-colorbar) |
    /// [R](https://plot.ly/r/reference/#bar-marker-colorbar)
    public var colorBar: ColorBar?

    /// Sets a reference to a shared color axis. 
    ///
    /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
    /// for these shared color axes are set in the layout, under `layout.coloraxis`,
    /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-marker-coloraxis) |
    /// [Python](https://plot.ly/python/reference/#bar-marker-coloraxis) |
    /// [R](https://plot.ly/r/reference/#bar-marker-coloraxis)
    public var colorAxis: SubPlotID?

    /// Sets the opacity of the bars.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-marker-opacity) |
    /// [Python](https://plot.ly/python/reference/#bar-marker-opacity) |
    /// [R](https://plot.ly/r/reference/#bar-marker-opacity)
    public var opacity: Double?

    /// Plotly compatible property encoding
    enum CodingKeys: String, CodingKey {
        case line
        case color
        case cAuto = "cauto"
        case cMin = "cmin"
        case cMax = "cmax"
        case cMiddle = "cmid"
        case colorScale = "colorscale"
        case autoColorScale = "autocolorscale"
        case reverseScale = "reversescale"
        case showScale = "showscale"
        case colorBar = "colorbar"
        case colorAxis = "coloraxis"
        case opacity
    }
    
    public init(line: ColoredLine? = nil, color: Color? = nil, cAuto: Bool? = nil, cMin: Double? = nil, cMax: Double? = nil, cMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: ColorBar? = nil, colorAxis: SubPlotID? = nil, opacity: Double? = nil) {
        self.line = line
        self.color = color
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
    }
}

/// # Used By
/// `Box.line` |
/// `Violin.line` |
/// `Violin.Box.line` |
/// `Waterfall.Increasing.Marker.line` |
/// `Waterfall.Decreasing.Marker.line` |
/// `Waterfall.Totals.Marker.line` |
/// `Pie.Marker.line` |
/// `Sunburst.Marker.line` |
/// `Treemap.Marker.line` |
/// `FunnelArea.Marker.line` |
/// `Choropleth.Marker.line` |
/// `ScatterMapbox.line` |
/// `ChoroplethMapbox.Marker.line` |
/// `Sankey.Node.line` |
/// `Sankey.Link.line` |
/// `Indicator.Gauge.Bar.line` |
/// `Indicator.Gauge.Step.line` |
/// `Indicator.Gauge.Threshold.line` |
/// `Table.Header.line` |
/// `Table.Cells.line` |
public struct Line: Encodable {
    /// Sets the color of line bounding the box(es).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#box-line-color) |
    /// [Python](https://plot.ly/python/reference/#box-line-color) |
    /// [R](https://plot.ly/r/reference/#box-line-color)
    public var color: Color?

    /// Sets the width (in px) of line bounding the box(es).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#box-line-width) |
    /// [Python](https://plot.ly/python/reference/#box-line-width) |
    /// [R](https://plot.ly/r/reference/#box-line-width)
    public var width: Double?

    public init(color: Color? = nil, width: Double? = nil) {
        self.color = color
        self.width = width
    }
}

/// # Used By
/// `Histogram.xBins` |
/// `Histogram.yBins` |
/// `Histogram2D.xBins` |
/// `Histogram2D.yBins` |
/// `Histogram2DContour.xBins` |
/// `Histogram2DContour.yBins` |
public struct Bins: Encodable {
    /// Sets the starting value for the x axis bins. 
    ///
    /// Defaults to the minimum data value, shifted down if necessary to make nice round values and to
    /// remove ambiguous bin edges. For example, if most of the data is integers we shift the bin edges
    /// 0.5 down, so a `size` of 5 would have a default `start` of -0.5, so it is clear that 0-4 are in
    /// the first bin, 5-9 in the second, but continuous data gets a start of 0 and bins [0,5), [5,10)
    /// etc. Dates behave similarly, and `start` should be a date string. For category data, `start` is
    /// based on the category serial numbers, and defaults to -0.5. If multiple non-overlaying
    /// histograms share a subplot, the first explicit `start` is used exactly and all others are
    /// shifted down (if necessary) to differ from that one by an integer number of bins.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-xbins-start) |
    /// [Python](https://plot.ly/python/reference/#histogram-xbins-start) |
    /// [R](https://plot.ly/r/reference/#histogram-xbins-start)
    public var start: Anything?

    /// Sets the end value for the x axis bins. 
    ///
    /// The last bin may not end exactly at this value, we increment the bin edge by `size` from `start`
    /// until we reach or exceed `end`. Defaults to the maximum data value. Like `start`, for dates use
    /// a date string, and for category data `end` is based on the category serial numbers.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-xbins-end) |
    /// [Python](https://plot.ly/python/reference/#histogram-xbins-end) |
    /// [R](https://plot.ly/r/reference/#histogram-xbins-end)
    public var end: Anything?

    /// Sets the size of each x axis bin. 
    ///
    /// Default behavior: If `nbinsx` is 0 or omitted, we choose a nice round bin size such that the
    /// number of bins is about the same as the typical number of samples in each bin. If `nbinsx` is
    /// provided, we choose a nice round bin size giving no more than that many bins. For date data, use
    /// milliseconds or *M<n>* for months, as in `axis.dtick`. For category data, the number of
    /// categories to bin together (always defaults to 1). If multiple non-overlaying histograms share a
    /// subplot, the first explicit `size` is used and all others discarded. If no `size` is
    /// provided,the sample data from all traces is combined to determine `size` as described above.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-xbins-size) |
    /// [Python](https://plot.ly/python/reference/#histogram-xbins-size) |
    /// [R](https://plot.ly/r/reference/#histogram-xbins-size)
    public var size: Anything?

    public init(start: Anything? = nil, end: Anything? = nil, size: Anything? = nil) {
        self.start = start
        self.end = end
        self.size = size
    }
}

/// # Used By
/// `Histogram2DContour.contours` |
/// `Contour.contours` |
/// `ContourCarpet.contours` |
public struct Contours: Encodable {
    /// If `levels`, the data is represented as a contour plot with multiple levels displayed. 
    ///
    /// If `constraint`, the data is represented as constraints with the invalid region shaded as
    /// specified by the `operation` and `value` parameters.
    ///
    /// # Used By
    /// `Histogram2DContour.Contours.type` |
    public enum `Type`: String, Encodable {
        case levels
        case constraint
    }
    /// If `levels`, the data is represented as a contour plot with multiple levels displayed. 
    ///
    /// If `constraint`, the data is represented as constraints with the invalid region shaded as
    /// specified by the `operation` and `value` parameters.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-contours-type) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-contours-type) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-contours-type)
    public var type: `Type`?

    /// Sets the starting contour level value. 
    ///
    /// Must be less than `contours.end`
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-contours-start) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-contours-start) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-contours-start)
    public var start: Double?

    /// Sets the end contour level value. 
    ///
    /// Must be more than `contours.start`
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-contours-end) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-contours-end) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-contours-end)
    public var end: Double?

    /// Sets the step between each contour level. 
    ///
    /// Must be positive.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-contours-size) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-contours-size) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-contours-size)
    public var size: Double?

    /// Determines the coloring method showing the contour values. 
    ///
    /// If *fill*, coloring is done evenly between each contour level If *heatmap*, a heatmap gradient
    /// coloring is applied between each contour level. If *lines*, coloring is done on the contour
    /// lines. If *none*, no coloring is applied on this trace.
    ///
    /// # Used By
    /// `Histogram2DContour.Contours.coloring` |
    public enum Coloring: String, Encodable {
        case fill
        case heatmap
        case lines
        case none
    }
    /// Determines the coloring method showing the contour values. 
    ///
    /// If *fill*, coloring is done evenly between each contour level If *heatmap*, a heatmap gradient
    /// coloring is applied between each contour level. If *lines*, coloring is done on the contour
    /// lines. If *none*, no coloring is applied on this trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-contours-coloring) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-contours-coloring) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-contours-coloring)
    public var coloring: Coloring?

    /// Determines whether or not the contour lines are drawn. 
    ///
    /// Has an effect only if `contours.coloring` is set to *fill*.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-contours-showlines) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-contours-showlines) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-contours-showlines)
    public var showLines: Bool?

    /// Determines whether to label the contour lines with their values.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-contours-showlabels) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-contours-showlabels) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-contours-showlabels)
    public var showLabels: Bool?

    /// Sets the font used for labeling the contour levels. 
    ///
    /// The default color comes from the lines, if shown. The default family and size come from
    /// `layout.font`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-contours-labelfont) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-contours-labelfont) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-contours-labelfont)
    public var labelFont: Font?

    /// Sets the contour label formatting rule using d3 formatting mini-language which is very similar to Python, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-contours-labelformat) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-contours-labelformat) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-contours-labelformat)
    public var labelFormat: String?

    /// Sets the constraint operation. 
    ///
    /// *=* keeps regions equal to `value` *<* and *<=* keep regions less than `value` *>* and *>=* keep
    /// regions greater than `value` *[]*, *()*, *[)*, and *(]* keep regions inside `value[0]` to
    /// `value[1]` *][*, *)(*, *](*, *)[* keep regions outside `value[0]` to value[1]` Open vs. closed
    /// intervals make no difference to constraint display, but all versions are allowed for consistency
    /// with filter transforms.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-contours-operation) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-contours-operation) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-contours-operation)
    public var operation: Operation?

    /// Sets the value or values of the constraint boundary. 
    ///
    /// When `operation` is set to one of the comparison values (=,<,>=,>,<=) *value* is expected to be
    /// a number. When `operation` is set to one of the interval values ([],(),[),(],][,)(,](,)[)
    /// *value* is expected to be an array of two numbers where the first is the lower bound and the
    /// second is the upper bound.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-contours-value) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-contours-value) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-contours-value)
    public var value: Anything?

    /// Plotly compatible property encoding
    enum CodingKeys: String, CodingKey {
        case type
        case start
        case end
        case size
        case coloring
        case showLines = "showlines"
        case showLabels = "showlabels"
        case labelFont = "labelfont"
        case labelFormat = "labelformat"
        case operation
        case value
    }
    
    public init(type: `Type`? = nil, start: Double? = nil, end: Double? = nil, size: Double? = nil, coloring: Coloring? = nil, showLines: Bool? = nil, showLabels: Bool? = nil, labelFont: Font? = nil, labelFormat: String? = nil, operation: Operation? = nil, value: Anything? = nil) {
        self.type = type
        self.start = start
        self.end = end
        self.size = size
        self.coloring = coloring
        self.showLines = showLines
        self.showLabels = showLabels
        self.labelFont = labelFont
        self.labelFormat = labelFormat
        self.operation = operation
        self.value = value
    }
}

/// # Used By
/// `Histogram2DContour.line` |
/// `Contour.line` |
/// `ContourCarpet.line` |
public struct SmoothedDashedLine: Encodable {
    /// Sets the color of the contour level. 
    ///
    /// Has no effect if `contours.coloring` is set to *lines*.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-line-color) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-line-color) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-line-color)
    public var color: Color?

    /// Sets the contour line width in (in px)
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-line-width) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-line-width) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-line-width)
    public var width: Double?

    /// Sets the dash style of lines. 
    ///
    /// Set to a dash type string (*solid*, *dot*, *dash*, *longdash*, *dashdot*, or *longdashdot*) or a
    /// dash length list in px (eg *5px,10px,2px,2px*).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-line-dash) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-line-dash) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-line-dash)
    public var dash: String?

    /// Sets the amount of smoothing for the contour lines, where *0* corresponds to no smoothing.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-line-smoothing) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-line-smoothing) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-line-smoothing)
    public var smoothing: Double?

    public init(color: Color? = nil, width: Double? = nil, dash: String? = nil, smoothing: Double? = nil) {
        self.color = color
        self.width = width
        self.dash = dash
        self.smoothing = smoothing
    }
}

/// # Used By
/// `ScatterTernary.line` |
/// `ScatterCarpet.line` |
/// `ScatterPolar.line` |
public struct SplineSmoothedDashedLine: Encodable {
    /// Sets the line color.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-line-color) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-line-color) |
    /// [R](https://plot.ly/r/reference/#scatterternary-line-color)
    public var color: Color?

    /// Sets the line width (in px).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-line-width) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-line-width) |
    /// [R](https://plot.ly/r/reference/#scatterternary-line-width)
    public var width: Double?

    /// Sets the dash style of lines. 
    ///
    /// Set to a dash type string (*solid*, *dot*, *dash*, *longdash*, *dashdot*, or *longdashdot*) or a
    /// dash length list in px (eg *5px,10px,2px,2px*).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-line-dash) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-line-dash) |
    /// [R](https://plot.ly/r/reference/#scatterternary-line-dash)
    public var dash: String?

    /// Determines the line shape. 
    ///
    /// With *spline* the lines are drawn using spline interpolation. The other available values
    /// correspond to step-wise line shapes.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-line-shape) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-line-shape) |
    /// [R](https://plot.ly/r/reference/#scatterternary-line-shape)
    public var shape: Shape?

    /// Has an effect only if `shape` is set to *spline* Sets the amount of smoothing. 
    ///
    /// *0* corresponds to no smoothing (equivalent to a *linear* shape).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-line-smoothing) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-line-smoothing) |
    /// [R](https://plot.ly/r/reference/#scatterternary-line-smoothing)
    public var smoothing: Double?

    public init(color: Color? = nil, width: Double? = nil, dash: String? = nil, shape: Shape? = nil, smoothing: Double? = nil) {
        self.color = color
        self.width = width
        self.dash = dash
        self.shape = shape
        self.smoothing = smoothing
    }
}

/// # Used By
/// `Scatter3D.projection` |
/// `Surface.Contours.X.project` |
/// `Surface.Contours.Y.project` |
/// `Surface.Contours.Z.project` |
public struct Projection: Encodable {
    /// # Used By
    /// `Scatter3D.Projection.x` |
    public struct X: Encodable {
        /// Sets whether or not projections are shown along the x axis.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-projection-x-show) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-projection-x-show) |
        /// [R](https://plot.ly/r/reference/#scatter3d-projection-x-show)
        public var show: Bool?
    
        /// Sets the projection color.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-projection-x-opacity) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-projection-x-opacity) |
        /// [R](https://plot.ly/r/reference/#scatter3d-projection-x-opacity)
        public var opacity: Double?
    
        /// Sets the scale factor determining the size of the projection marker points.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-projection-x-scale) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-projection-x-scale) |
        /// [R](https://plot.ly/r/reference/#scatter3d-projection-x-scale)
        public var scale: Double?
    
        public init(show: Bool? = nil, opacity: Double? = nil, scale: Double? = nil) {
            self.show = show
            self.opacity = opacity
            self.scale = scale
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-projection-x) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-projection-x) |
    /// [R](https://plot.ly/r/reference/#scatter3d-projection-x)
    public var x: X?

    /// # Used By
    /// `Scatter3D.Projection.y` |
    public struct Y: Encodable {
        /// Sets whether or not projections are shown along the y axis.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-projection-y-show) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-projection-y-show) |
        /// [R](https://plot.ly/r/reference/#scatter3d-projection-y-show)
        public var show: Bool?
    
        /// Sets the projection color.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-projection-y-opacity) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-projection-y-opacity) |
        /// [R](https://plot.ly/r/reference/#scatter3d-projection-y-opacity)
        public var opacity: Double?
    
        /// Sets the scale factor determining the size of the projection marker points.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-projection-y-scale) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-projection-y-scale) |
        /// [R](https://plot.ly/r/reference/#scatter3d-projection-y-scale)
        public var scale: Double?
    
        public init(show: Bool? = nil, opacity: Double? = nil, scale: Double? = nil) {
            self.show = show
            self.opacity = opacity
            self.scale = scale
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-projection-y) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-projection-y) |
    /// [R](https://plot.ly/r/reference/#scatter3d-projection-y)
    public var y: Y?

    /// # Used By
    /// `Scatter3D.Projection.z` |
    public struct Z: Encodable {
        /// Sets whether or not projections are shown along the z axis.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-projection-z-show) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-projection-z-show) |
        /// [R](https://plot.ly/r/reference/#scatter3d-projection-z-show)
        public var show: Bool?
    
        /// Sets the projection color.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-projection-z-opacity) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-projection-z-opacity) |
        /// [R](https://plot.ly/r/reference/#scatter3d-projection-z-opacity)
        public var opacity: Double?
    
        /// Sets the scale factor determining the size of the projection marker points.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-projection-z-scale) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-projection-z-scale) |
        /// [R](https://plot.ly/r/reference/#scatter3d-projection-z-scale)
        public var scale: Double?
    
        public init(show: Bool? = nil, opacity: Double? = nil, scale: Double? = nil) {
            self.show = show
            self.opacity = opacity
            self.scale = scale
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-projection-z) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-projection-z) |
    /// [R](https://plot.ly/r/reference/#scatter3d-projection-z)
    public var z: Z?

    public init(x: X? = nil, y: Y? = nil, z: Z? = nil) {
        self.x = x
        self.y = y
        self.z = z
    }
}

/// # Used By
/// `Scatter3D.marker` |
/// `ScatterGL.marker` |
/// `ScatterPlotMatrix.marker` |
/// `ScatterPolarGL.marker` |
public struct SymbolicMarker: Encodable {
    /// Sets the marker symbol type.
    ///
    /// # Used By
    /// `Scatter3D.SymbolicMarker.symbol` |
    public enum Symbol: String, Encodable {
        case circle
        case circleOpen = "circle-open"
        case square
        case squareOpen = "square-open"
        case diamond
        case diamondOpen = "diamond-open"
        case cross
        case x
    }
    /// Sets the marker symbol type.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-symbol) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-marker-symbol) |
    /// [R](https://plot.ly/r/reference/#scatter3d-marker-symbol)
    public var symbol: Symbol?

    /// Sets the marker size (in px).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-size) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-marker-size) |
    /// [R](https://plot.ly/r/reference/#scatter3d-marker-size)
    public var size: Double?

    /// Has an effect only if `marker.size` is set to a numerical array. 
    ///
    /// Sets the scale factor used to determine the rendered size of marker points. Use with `sizemin`
    /// and `sizemode`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-sizeref) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-marker-sizeref) |
    /// [R](https://plot.ly/r/reference/#scatter3d-marker-sizeref)
    public var sizeReference: Double?

    /// Has an effect only if `marker.size` is set to a numerical array. 
    ///
    /// Sets the minimum size (in px) of the rendered marker points.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-sizemin) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-marker-sizemin) |
    /// [R](https://plot.ly/r/reference/#scatter3d-marker-sizemin)
    public var sizeMin: Double?

    /// Has an effect only if `marker.size` is set to a numerical array. 
    ///
    /// Sets the rule for which the data in `size` is converted to pixels.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-sizemode) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-marker-sizemode) |
    /// [R](https://plot.ly/r/reference/#scatter3d-marker-sizemode)
    public var sizeMode: SizeMode?

    /// Sets the marker opacity. 
    ///
    /// Note that the marker opacity for scatter3d traces must be a scalar value for performance
    /// reasons. To set a blending opacity value (i.e. which is not transparent), set *marker.color* to
    /// an rgba color and use its alpha channel.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-opacity) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-marker-opacity) |
    /// [R](https://plot.ly/r/reference/#scatter3d-marker-opacity)
    public var opacity: Double?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-colorbar) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-marker-colorbar) |
    /// [R](https://plot.ly/r/reference/#scatter3d-marker-colorbar)
    public var colorBar: ColorBar?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-line) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-marker-line) |
    /// [R](https://plot.ly/r/reference/#scatter3d-marker-line)
    public var line: ColoredLine?

    /// Sets themarkercolor. 
    ///
    /// It accepts either a specific color or an array of numbers that are mapped to the colorscale
    /// relative to the max and min values of the array or relative to `marker.cmin` and `marker.cmax`
    /// if set.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-color) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-marker-color) |
    /// [R](https://plot.ly/r/reference/#scatter3d-marker-color)
    public var color: Color?

    /// Determines whether or not the color domain is computed with respect to the input data (here in `marker.color`) or the bounds set in `marker.cmin` and `marker.cmax`  Has an effect only if in `marker.color`is set to a numerical array. 
    ///
    /// Defaults to `false` when `marker.cmin` and `marker.cmax` are set by the user.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-cauto) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-marker-cauto) |
    /// [R](https://plot.ly/r/reference/#scatter3d-marker-cauto)
    public var cAuto: Bool?

    /// Sets the lower bound of the color domain. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
    /// units as in `marker.color` and if set, `marker.cmax` must be set as well.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-cmin) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-marker-cmin) |
    /// [R](https://plot.ly/r/reference/#scatter3d-marker-cmin)
    public var cMin: Double?

    /// Sets the upper bound of the color domain. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
    /// units as in `marker.color` and if set, `marker.cmin` must be set as well.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-cmax) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-marker-cmax) |
    /// [R](https://plot.ly/r/reference/#scatter3d-marker-cmax)
    public var cMax: Double?

    /// Sets the mid-point of the color domain by scaling `marker.cmin` and/or `marker.cmax` to be equidistant to this point. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
    /// units as in `marker.color`. Has no effect when `marker.cauto` is `false`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-cmid) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-marker-cmid) |
    /// [R](https://plot.ly/r/reference/#scatter3d-marker-cmid)
    public var cMiddle: Double?

    /// Sets the colorscale. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array. The colorscale must be an
    /// array containing arrays mapping a normalized value to an rgb, rgba, hex, hsl, hsv, or named
    /// color string. At minimum, a mapping for the lowest (0) and highest (1) values are required. For
    /// example, `[[0, 'rgb(0,0,255)'], [1, 'rgb(255,0,0)']]`. To control the bounds of the colorscale
    /// in color space, use`marker.cmin` and `marker.cmax`. Alternatively, `colorscale` may be a palette
    /// name string of the following list:
    /// Greys,YlGnBu,Greens,YlOrRd,Bluered,RdBu,Reds,Blues,Picnic,Rainbow,Portland,Jet,Hot,Blackbody,Earth,Electric,Viridis,Cividis.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-colorscale) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-marker-colorscale) |
    /// [R](https://plot.ly/r/reference/#scatter3d-marker-colorscale)
    public var colorScale: ColorScale?

    /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `marker.colorscale`. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array. In case `colorscale` is
    /// unspecified or `autocolorscale` is true, the default palette will be chosen according to whether
    /// numbers in the `color` array are all positive, all negative or mixed.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-autocolorscale) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-marker-autocolorscale) |
    /// [R](https://plot.ly/r/reference/#scatter3d-marker-autocolorscale)
    public var autoColorScale: Bool?

    /// Reverses the color mapping if true. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array. If true, `marker.cmin` will
    /// correspond to the last color in the array and `marker.cmax` will correspond to the first color.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-reversescale) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-marker-reversescale) |
    /// [R](https://plot.ly/r/reference/#scatter3d-marker-reversescale)
    public var reverseScale: Bool?

    /// Determines whether or not a colorbar is displayed for this trace. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-showscale) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-marker-showscale) |
    /// [R](https://plot.ly/r/reference/#scatter3d-marker-showscale)
    public var showScale: Bool?

    /// Sets a reference to a shared color axis. 
    ///
    /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
    /// for these shared color axes are set in the layout, under `layout.coloraxis`,
    /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-coloraxis) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-marker-coloraxis) |
    /// [R](https://plot.ly/r/reference/#scatter3d-marker-coloraxis)
    public var colorAxis: SubPlotID?

    /// Plotly compatible property encoding
    enum CodingKeys: String, CodingKey {
        case symbol
        case size
        case sizeReference = "sizeref"
        case sizeMin = "sizemin"
        case sizeMode = "sizemode"
        case opacity
        case colorBar = "colorbar"
        case line
        case color
        case cAuto = "cauto"
        case cMin = "cmin"
        case cMax = "cmax"
        case cMiddle = "cmid"
        case colorScale = "colorscale"
        case autoColorScale = "autocolorscale"
        case reverseScale = "reversescale"
        case showScale = "showscale"
        case colorAxis = "coloraxis"
    }
    
    public init(symbol: Symbol? = nil, size: Double? = nil, sizeReference: Double? = nil, sizeMin: Double? = nil, sizeMode: SizeMode? = nil, opacity: Double? = nil, colorBar: ColorBar? = nil, line: ColoredLine? = nil, color: Color? = nil, cAuto: Bool? = nil, cMin: Double? = nil, cMax: Double? = nil, cMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorAxis: SubPlotID? = nil) {
        self.symbol = symbol
        self.size = size
        self.sizeReference = sizeReference
        self.sizeMin = sizeMin
        self.sizeMode = sizeMode
        self.opacity = opacity
        self.colorBar = colorBar
        self.line = line
        self.color = color
        self.cAuto = cAuto
        self.cMin = cMin
        self.cMax = cMax
        self.cMiddle = cMiddle
        self.colorScale = colorScale
        self.autoColorScale = autoColorScale
        self.reverseScale = reverseScale
        self.showScale = showScale
        self.colorAxis = colorAxis
    }
}

/// # Used By
/// `Surface.lightPosition` |
/// `Isosurface.lightPosition` |
/// `Volume.lightPosition` |
/// `Mesh3D.lightPosition` |
/// `Cone.lightPosition` |
/// `StreamTube.lightPosition` |
public struct LightPosition: Encodable {
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

/// # Used By
/// `Isosurface.lighting` |
/// `Volume.lighting` |
/// `Mesh3D.lighting` |
/// `Cone.lighting` |
/// `StreamTube.lighting` |
public struct Lighting: Encodable {
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

/// # Used By
/// `Isosurface.contour` |
/// `Volume.contour` |
/// `Mesh3D.contour` |
public struct ContourHover: Encodable {
    /// Sets whether or not dynamic contours are shown on hover
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-contour-show) |
    /// [Python](https://plot.ly/python/reference/#isosurface-contour-show) |
    /// [R](https://plot.ly/r/reference/#isosurface-contour-show)
    public var show: Bool?

    /// Sets the color of the contour lines.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-contour-color) |
    /// [Python](https://plot.ly/python/reference/#isosurface-contour-color) |
    /// [R](https://plot.ly/r/reference/#isosurface-contour-color)
    public var color: Color?

    /// Sets the width of the contour lines.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-contour-width) |
    /// [Python](https://plot.ly/python/reference/#isosurface-contour-width) |
    /// [R](https://plot.ly/r/reference/#isosurface-contour-width)
    public var width: Double?

    public init(show: Bool? = nil, color: Color? = nil, width: Double? = nil) {
        self.show = show
        self.color = color
        self.width = width
    }
}
