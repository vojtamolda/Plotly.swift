/// Sets the title's horizontal alignment with respect to its x position. 
///
/// *left* means that the title starts at x, *right* means that the title ends at x and *center*
/// means that the title's center is at x. *auto* divides `xref` by three and calculates the
/// `xanchor` value automatically based on the value of `x`.
///
/// # Used By
/// `Layout.Title.xAnchor` |
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

/// Sets the title's vertical alignment with respect to its y position. 
///
/// *top* means that the title's cap line is at y, *bottom* means that the title's baseline is at y
/// and *middle* means that the title's midline is at y. *auto* divides `yref` by three and
/// calculates the `yanchor` value automatically based on the value of `y`.
///
/// # Used By
/// `Layout.Title.yAnchor` |
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

/// Sets the orientation of the modebar.
///
/// # Used By
/// `Layout.ModeBar.orientation` |
/// `Layout.Legend.orientation` |
/// `Scatter.orientation` |
/// `Bar.orientation` |
/// `Box.orientation` |
/// `Histogram.orientation` |
/// `Violin.orientation` |
/// `Funnel.orientation` |
/// `Waterfall.orientation` |
/// `Sankey.orientation` |
public enum Orientation0: String, Encodable {
    case v
    case h
}

/// Sets the horizontal alignment of the text content within hover label box. 
///
/// Has an effect only if the hover label text spans more two or more lines
///
/// # Used By
/// `Layout.HoverLabel.align` |
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

/// Sets the default calendar system to use for interpreting and displaying dates throughout the plot.
///
/// # Used By
/// `Layout.calendar` |
/// `Layout.XAxis.calendar` |
/// `Layout.YAxis.calendar` |
/// `Layout.Scene.XAxis.calendar` |
/// `Layout.Scene.YAxis.calendar` |
/// `Layout.Scene.ZAxis.calendar` |
/// `Layout.Polar.RadialAxis.calendar` |
/// `Scatter.xCalendar` |
/// `Scatter.yCalendar` |
/// `Bar.xCalendar` |
/// `Bar.yCalendar` |
/// `Box.xCalendar` |
/// `Box.yCalendar` |
/// `Heatmap.xCalendar` |
/// `Heatmap.yCalendar` |
/// `Histogram.xCalendar` |
/// `Histogram.yCalendar` |
/// `Histogram2D.xCalendar` |
/// `Histogram2D.yCalendar` |
/// `Histogram2DContour.xCalendar` |
/// `Histogram2DContour.yCalendar` |
/// `Contour.xCalendar` |
/// `Contour.yCalendar` |
/// `Scatter3D.xCalendar` |
/// `Scatter3D.yCalendar` |
/// `Scatter3D.zCalendar` |
/// `Surface.xCalendar` |
/// `Surface.yCalendar` |
/// `Surface.zCalendar` |
/// `Mesh3D.xCalendar` |
/// `Mesh3D.yCalendar` |
/// `Mesh3D.zCalendar` |
/// `ScatterGL.xCalendar` |
/// `ScatterGL.yCalendar` |
/// `OHLC.xCalendar` |
/// `Candlestick.xCalendar` |
public enum Calendar0: String, Encodable {
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

/// Determines whether or not the range of this axis is computed in relation to the input data. 
///
/// See `rangemode` for more info. If `range` is provided, then `autorange` is set to *false*.
///
/// # Used By
/// `Layout.XAxis.autoRange` |
/// `Layout.YAxis.autoRange` |
/// `Layout.Scene.XAxis.autoRange` |
/// `Layout.Scene.YAxis.autoRange` |
/// `Layout.Scene.ZAxis.autoRange` |
/// `Layout.Polar.RadialAxis.autoRange` |
/// `Carpet.AAxis.autoRange` |
/// `Carpet.BAxis.autoRange` |
public enum AutoRange0: String, Encodable {
    case `true` = "true"
    case `false` = "false"
    case reversed
}

/// If *normal*, the range is computed in relation to the extrema of the input data. 
///
/// If *tozero*`, the range extends to 0, regardless of the input data If *nonnegative*, the range
/// is non-negative, regardless of the input data. Applies only to linear axes.
///
/// # Used By
/// `Layout.XAxis.rangeMode` |
/// `Layout.YAxis.rangeMode` |
/// `Layout.Scene.XAxis.rangeMode` |
/// `Layout.Scene.YAxis.rangeMode` |
/// `Layout.Scene.ZAxis.rangeMode` |
/// `Carpet.AAxis.rangeMode` |
/// `Carpet.BAxis.rangeMode` |
public enum RangeMode0: String, Encodable {
    case normal
    case toZero = "tozero"
    case nonNegative = "nonnegative"
}

/// Sets the tick mode for this axis. 
///
/// If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is
/// determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value
/// if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via
/// `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is
/// provided).
///
/// # Used By
/// `Layout.XAxis.tickMode` |
/// `Layout.YAxis.tickMode` |
/// `Layout.Ternary.AAxis.tickMode` |
/// `Layout.Ternary.BAxis.tickMode` |
/// `Layout.Ternary.CAxis.tickMode` |
/// `Layout.Scene.XAxis.tickMode` |
/// `Layout.Scene.YAxis.tickMode` |
/// `Layout.Scene.ZAxis.tickMode` |
/// `Layout.Polar.RadialAxis.tickMode` |
/// `Layout.Polar.AngularAxis.tickMode` |
/// `Layout.ColorAxis.ColorBar.tickMode` |
/// `Scatter.Marker.ColorBar.tickMode` |
/// `Bar.Marker.ColorBar.tickMode` |
/// `Heatmap.ColorBar.tickMode` |
/// `Histogram.Marker.ColorBar.tickMode` |
/// `Histogram2D.ColorBar.tickMode` |
/// `Histogram2DContour.ColorBar.tickMode` |
/// `Contour.ColorBar.tickMode` |
/// `ScatterTernary.Marker.ColorBar.tickMode` |
/// `Funnel.Marker.ColorBar.tickMode` |
/// `Sunburst.Marker.ColorBar.tickMode` |
/// `Treemap.Marker.ColorBar.tickMode` |
/// `Scatter3D.Line.ColorBar.tickMode` |
/// `Scatter3D.Marker.ColorBar.tickMode` |
/// `Surface.ColorBar.tickMode` |
/// `Isosurface.ColorBar.tickMode` |
/// `Volume.ColorBar.tickMode` |
/// `Mesh3D.ColorBar.tickMode` |
/// `Cone.ColorBar.tickMode` |
/// `StreamTube.ColorBar.tickMode` |
/// `ScatterGeo.Marker.ColorBar.tickMode` |
/// `Choropleth.ColorBar.tickMode` |
/// `ScatterGL.Marker.ColorBar.tickMode` |
/// `ScatterPlotMatrix.Marker.ColorBar.tickMode` |
/// `HeatmapGL.ColorBar.tickMode` |
/// `ParallelCoordinates.Line.ColorBar.tickMode` |
/// `ParallelCategories.Line.ColorBar.tickMode` |
/// `ScatterMapbox.Marker.ColorBar.tickMode` |
/// `ChoroplethMapbox.ColorBar.tickMode` |
/// `DensityMapbox.ColorBar.tickMode` |
/// `Indicator.Gauge.Axis.tickMode` |
/// `ScatterCarpet.Marker.ColorBar.tickMode` |
/// `ContourCarpet.ColorBar.tickMode` |
/// `ScatterPolar.Marker.ColorBar.tickMode` |
/// `ScatterPolarGL.Marker.ColorBar.tickMode` |
/// `BarPolar.Marker.ColorBar.tickMode` |
public enum TickMode0: String, Encodable {
    case auto
    case linear
    case array
}

/// Determines whether ticks are drawn or not. 
///
/// If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside
/// (inside) the axis lines.
///
/// # Used By
/// `Layout.XAxis.ticks` |
/// `Layout.YAxis.ticks` |
/// `Layout.Ternary.AAxis.ticks` |
/// `Layout.Ternary.BAxis.ticks` |
/// `Layout.Ternary.CAxis.ticks` |
/// `Layout.Scene.XAxis.ticks` |
/// `Layout.Scene.YAxis.ticks` |
/// `Layout.Scene.ZAxis.ticks` |
/// `Layout.Polar.RadialAxis.ticks` |
/// `Layout.Polar.AngularAxis.ticks` |
/// `Layout.ColorAxis.ColorBar.ticks` |
/// `Scatter.Marker.ColorBar.ticks` |
/// `Bar.Marker.ColorBar.ticks` |
/// `Heatmap.ColorBar.ticks` |
/// `Histogram.Marker.ColorBar.ticks` |
/// `Histogram2D.ColorBar.ticks` |
/// `Histogram2DContour.ColorBar.ticks` |
/// `Contour.ColorBar.ticks` |
/// `ScatterTernary.Marker.ColorBar.ticks` |
/// `Funnel.Marker.ColorBar.ticks` |
/// `Sunburst.Marker.ColorBar.ticks` |
/// `Treemap.Marker.ColorBar.ticks` |
/// `Scatter3D.Line.ColorBar.ticks` |
/// `Scatter3D.Marker.ColorBar.ticks` |
/// `Surface.ColorBar.ticks` |
/// `Isosurface.ColorBar.ticks` |
/// `Volume.ColorBar.ticks` |
/// `Mesh3D.ColorBar.ticks` |
/// `Cone.ColorBar.ticks` |
/// `StreamTube.ColorBar.ticks` |
/// `ScatterGeo.Marker.ColorBar.ticks` |
/// `Choropleth.ColorBar.ticks` |
/// `ScatterGL.Marker.ColorBar.ticks` |
/// `ScatterPlotMatrix.Marker.ColorBar.ticks` |
/// `HeatmapGL.ColorBar.ticks` |
/// `ParallelCoordinates.Line.ColorBar.ticks` |
/// `ParallelCategories.Line.ColorBar.ticks` |
/// `ScatterMapbox.Marker.ColorBar.ticks` |
/// `ChoroplethMapbox.ColorBar.ticks` |
/// `DensityMapbox.ColorBar.ticks` |
/// `Indicator.Gauge.Axis.ticks` |
/// `ScatterCarpet.Marker.ColorBar.ticks` |
/// `ContourCarpet.ColorBar.ticks` |
/// `ScatterPolar.Marker.ColorBar.ticks` |
/// `ScatterPolarGL.Marker.ColorBar.ticks` |
/// `BarPolar.Marker.ColorBar.ticks` |
public enum Ticks0: String, Encodable {
    case outside
    case inside
    case none = ""
}

/// Determines if the axis lines or/and ticks are mirrored to the opposite side of the plotting area. 
///
/// If *true*, the axis lines are mirrored. If *ticks*, the axis lines and ticks are mirrored. If
/// *false*, mirroring is disable. If *all*, axis lines are mirrored on all shared-axes subplots. If
/// *allticks*, axis lines and ticks are mirrored on all shared-axes subplots.
///
/// # Used By
/// `Layout.XAxis.mirror` |
/// `Layout.YAxis.mirror` |
/// `Layout.Scene.XAxis.mirror` |
/// `Layout.Scene.YAxis.mirror` |
/// `Layout.Scene.ZAxis.mirror` |
public enum Mirror0: String, Encodable {
    case `true` = "true"
    case ticks
    case `false` = "false"
    case all
    case allTicks = "allticks"
}

/// If *all*, all tick labels are displayed with a prefix. 
///
/// If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is
/// displayed with a suffix. If *none*, tick prefixes are hidden.
///
/// # Used By
/// `Layout.XAxis.showTickPrefix` |
/// `Layout.YAxis.showTickPrefix` |
/// `Layout.Ternary.AAxis.showTickPrefix` |
/// `Layout.Ternary.BAxis.showTickPrefix` |
/// `Layout.Ternary.CAxis.showTickPrefix` |
/// `Layout.Scene.XAxis.showTickPrefix` |
/// `Layout.Scene.YAxis.showTickPrefix` |
/// `Layout.Scene.ZAxis.showTickPrefix` |
/// `Layout.Polar.RadialAxis.showTickPrefix` |
/// `Layout.Polar.AngularAxis.showTickPrefix` |
/// `Layout.ColorAxis.ColorBar.showTickPrefix` |
/// `Scatter.Marker.ColorBar.showTickPrefix` |
/// `Bar.Marker.ColorBar.showTickPrefix` |
/// `Heatmap.ColorBar.showTickPrefix` |
/// `Histogram.Marker.ColorBar.showTickPrefix` |
/// `Histogram2D.ColorBar.showTickPrefix` |
/// `Histogram2DContour.ColorBar.showTickPrefix` |
/// `Contour.ColorBar.showTickPrefix` |
/// `ScatterTernary.Marker.ColorBar.showTickPrefix` |
/// `Funnel.Marker.ColorBar.showTickPrefix` |
/// `Sunburst.Marker.ColorBar.showTickPrefix` |
/// `Treemap.Marker.ColorBar.showTickPrefix` |
/// `Scatter3D.Line.ColorBar.showTickPrefix` |
/// `Scatter3D.Marker.ColorBar.showTickPrefix` |
/// `Surface.ColorBar.showTickPrefix` |
/// `Isosurface.ColorBar.showTickPrefix` |
/// `Volume.ColorBar.showTickPrefix` |
/// `Mesh3D.ColorBar.showTickPrefix` |
/// `Cone.ColorBar.showTickPrefix` |
/// `StreamTube.ColorBar.showTickPrefix` |
/// `ScatterGeo.Marker.ColorBar.showTickPrefix` |
/// `Choropleth.ColorBar.showTickPrefix` |
/// `ScatterGL.Marker.ColorBar.showTickPrefix` |
/// `ScatterPlotMatrix.Marker.ColorBar.showTickPrefix` |
/// `HeatmapGL.ColorBar.showTickPrefix` |
/// `ParallelCoordinates.Line.ColorBar.showTickPrefix` |
/// `ParallelCategories.Line.ColorBar.showTickPrefix` |
/// `ScatterMapbox.Marker.ColorBar.showTickPrefix` |
/// `ChoroplethMapbox.ColorBar.showTickPrefix` |
/// `DensityMapbox.ColorBar.showTickPrefix` |
/// `Indicator.Gauge.Axis.showTickPrefix` |
/// `Carpet.AAxis.showTickPrefix` |
/// `Carpet.BAxis.showTickPrefix` |
/// `ScatterCarpet.Marker.ColorBar.showTickPrefix` |
/// `ContourCarpet.ColorBar.showTickPrefix` |
/// `ScatterPolar.Marker.ColorBar.showTickPrefix` |
/// `ScatterPolarGL.Marker.ColorBar.showTickPrefix` |
/// `BarPolar.Marker.ColorBar.showTickPrefix` |
public enum ShowTickPrefix0: String, Encodable {
    case all
    case first
    case last
    case none
}

/// Same as `showtickprefix` but for tick suffixes.
///
/// # Used By
/// `Layout.XAxis.showTickSuffix` |
/// `Layout.YAxis.showTickSuffix` |
/// `Layout.Ternary.AAxis.showTickSuffix` |
/// `Layout.Ternary.BAxis.showTickSuffix` |
/// `Layout.Ternary.CAxis.showTickSuffix` |
/// `Layout.Scene.XAxis.showTickSuffix` |
/// `Layout.Scene.YAxis.showTickSuffix` |
/// `Layout.Scene.ZAxis.showTickSuffix` |
/// `Layout.Polar.RadialAxis.showTickSuffix` |
/// `Layout.Polar.AngularAxis.showTickSuffix` |
/// `Layout.ColorAxis.ColorBar.showTickSuffix` |
/// `Scatter.Marker.ColorBar.showTickSuffix` |
/// `Bar.Marker.ColorBar.showTickSuffix` |
/// `Heatmap.ColorBar.showTickSuffix` |
/// `Histogram.Marker.ColorBar.showTickSuffix` |
/// `Histogram2D.ColorBar.showTickSuffix` |
/// `Histogram2DContour.ColorBar.showTickSuffix` |
/// `Contour.ColorBar.showTickSuffix` |
/// `ScatterTernary.Marker.ColorBar.showTickSuffix` |
/// `Funnel.Marker.ColorBar.showTickSuffix` |
/// `Sunburst.Marker.ColorBar.showTickSuffix` |
/// `Treemap.Marker.ColorBar.showTickSuffix` |
/// `Scatter3D.Line.ColorBar.showTickSuffix` |
/// `Scatter3D.Marker.ColorBar.showTickSuffix` |
/// `Surface.ColorBar.showTickSuffix` |
/// `Isosurface.ColorBar.showTickSuffix` |
/// `Volume.ColorBar.showTickSuffix` |
/// `Mesh3D.ColorBar.showTickSuffix` |
/// `Cone.ColorBar.showTickSuffix` |
/// `StreamTube.ColorBar.showTickSuffix` |
/// `ScatterGeo.Marker.ColorBar.showTickSuffix` |
/// `Choropleth.ColorBar.showTickSuffix` |
/// `ScatterGL.Marker.ColorBar.showTickSuffix` |
/// `ScatterPlotMatrix.Marker.ColorBar.showTickSuffix` |
/// `HeatmapGL.ColorBar.showTickSuffix` |
/// `ParallelCoordinates.Line.ColorBar.showTickSuffix` |
/// `ParallelCategories.Line.ColorBar.showTickSuffix` |
/// `ScatterMapbox.Marker.ColorBar.showTickSuffix` |
/// `ChoroplethMapbox.ColorBar.showTickSuffix` |
/// `DensityMapbox.ColorBar.showTickSuffix` |
/// `Indicator.Gauge.Axis.showTickSuffix` |
/// `Carpet.AAxis.showTickSuffix` |
/// `Carpet.BAxis.showTickSuffix` |
/// `ScatterCarpet.Marker.ColorBar.showTickSuffix` |
/// `ContourCarpet.ColorBar.showTickSuffix` |
/// `ScatterPolar.Marker.ColorBar.showTickSuffix` |
/// `ScatterPolarGL.Marker.ColorBar.showTickSuffix` |
/// `BarPolar.Marker.ColorBar.showTickSuffix` |
public enum ShowTickSuffix0: String, Encodable {
    case all
    case first
    case last
    case none
}

/// If *all*, all exponents are shown besides their significands. 
///
/// If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the
/// last tick is shown. If *none*, no exponents appear.
///
/// # Used By
/// `Layout.XAxis.showExponent` |
/// `Layout.YAxis.showExponent` |
/// `Layout.Ternary.AAxis.showExponent` |
/// `Layout.Ternary.BAxis.showExponent` |
/// `Layout.Ternary.CAxis.showExponent` |
/// `Layout.Scene.XAxis.showExponent` |
/// `Layout.Scene.YAxis.showExponent` |
/// `Layout.Scene.ZAxis.showExponent` |
/// `Layout.Polar.RadialAxis.showExponent` |
/// `Layout.Polar.AngularAxis.showExponent` |
/// `Layout.ColorAxis.ColorBar.showExponent` |
/// `Scatter.Marker.ColorBar.showExponent` |
/// `Bar.Marker.ColorBar.showExponent` |
/// `Heatmap.ColorBar.showExponent` |
/// `Histogram.Marker.ColorBar.showExponent` |
/// `Histogram2D.ColorBar.showExponent` |
/// `Histogram2DContour.ColorBar.showExponent` |
/// `Contour.ColorBar.showExponent` |
/// `ScatterTernary.Marker.ColorBar.showExponent` |
/// `Funnel.Marker.ColorBar.showExponent` |
/// `Sunburst.Marker.ColorBar.showExponent` |
/// `Treemap.Marker.ColorBar.showExponent` |
/// `Scatter3D.Line.ColorBar.showExponent` |
/// `Scatter3D.Marker.ColorBar.showExponent` |
/// `Surface.ColorBar.showExponent` |
/// `Isosurface.ColorBar.showExponent` |
/// `Volume.ColorBar.showExponent` |
/// `Mesh3D.ColorBar.showExponent` |
/// `Cone.ColorBar.showExponent` |
/// `StreamTube.ColorBar.showExponent` |
/// `ScatterGeo.Marker.ColorBar.showExponent` |
/// `Choropleth.ColorBar.showExponent` |
/// `ScatterGL.Marker.ColorBar.showExponent` |
/// `ScatterPlotMatrix.Marker.ColorBar.showExponent` |
/// `HeatmapGL.ColorBar.showExponent` |
/// `ParallelCoordinates.Line.ColorBar.showExponent` |
/// `ParallelCategories.Line.ColorBar.showExponent` |
/// `ScatterMapbox.Marker.ColorBar.showExponent` |
/// `ChoroplethMapbox.ColorBar.showExponent` |
/// `DensityMapbox.ColorBar.showExponent` |
/// `Indicator.Gauge.Axis.showExponent` |
/// `Carpet.AAxis.showExponent` |
/// `Carpet.BAxis.showExponent` |
/// `ScatterCarpet.Marker.ColorBar.showExponent` |
/// `ContourCarpet.ColorBar.showExponent` |
/// `ScatterPolar.Marker.ColorBar.showExponent` |
/// `ScatterPolarGL.Marker.ColorBar.showExponent` |
/// `BarPolar.Marker.ColorBar.showExponent` |
public enum ShowExponent0: String, Encodable {
    case all
    case first
    case last
    case none
}

/// Determines a formatting rule for the tick exponents. 
///
/// For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*,
/// 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
///
/// # Used By
/// `Layout.XAxis.exponentFormat` |
/// `Layout.YAxis.exponentFormat` |
/// `Layout.Ternary.AAxis.exponentFormat` |
/// `Layout.Ternary.BAxis.exponentFormat` |
/// `Layout.Ternary.CAxis.exponentFormat` |
/// `Layout.Scene.XAxis.exponentFormat` |
/// `Layout.Scene.YAxis.exponentFormat` |
/// `Layout.Scene.ZAxis.exponentFormat` |
/// `Layout.Polar.RadialAxis.exponentFormat` |
/// `Layout.Polar.AngularAxis.exponentFormat` |
/// `Layout.ColorAxis.ColorBar.exponentFormat` |
/// `Scatter.Marker.ColorBar.exponentFormat` |
/// `Bar.Marker.ColorBar.exponentFormat` |
/// `Heatmap.ColorBar.exponentFormat` |
/// `Histogram.Marker.ColorBar.exponentFormat` |
/// `Histogram2D.ColorBar.exponentFormat` |
/// `Histogram2DContour.ColorBar.exponentFormat` |
/// `Contour.ColorBar.exponentFormat` |
/// `ScatterTernary.Marker.ColorBar.exponentFormat` |
/// `Funnel.Marker.ColorBar.exponentFormat` |
/// `Sunburst.Marker.ColorBar.exponentFormat` |
/// `Treemap.Marker.ColorBar.exponentFormat` |
/// `Scatter3D.Line.ColorBar.exponentFormat` |
/// `Scatter3D.Marker.ColorBar.exponentFormat` |
/// `Surface.ColorBar.exponentFormat` |
/// `Isosurface.ColorBar.exponentFormat` |
/// `Volume.ColorBar.exponentFormat` |
/// `Mesh3D.ColorBar.exponentFormat` |
/// `Cone.ColorBar.exponentFormat` |
/// `StreamTube.ColorBar.exponentFormat` |
/// `ScatterGeo.Marker.ColorBar.exponentFormat` |
/// `Choropleth.ColorBar.exponentFormat` |
/// `ScatterGL.Marker.ColorBar.exponentFormat` |
/// `ScatterPlotMatrix.Marker.ColorBar.exponentFormat` |
/// `HeatmapGL.ColorBar.exponentFormat` |
/// `ParallelCoordinates.Line.ColorBar.exponentFormat` |
/// `ParallelCategories.Line.ColorBar.exponentFormat` |
/// `ScatterMapbox.Marker.ColorBar.exponentFormat` |
/// `ChoroplethMapbox.ColorBar.exponentFormat` |
/// `DensityMapbox.ColorBar.exponentFormat` |
/// `Indicator.Gauge.Axis.exponentFormat` |
/// `Carpet.AAxis.exponentFormat` |
/// `Carpet.BAxis.exponentFormat` |
/// `ScatterCarpet.Marker.ColorBar.exponentFormat` |
/// `ContourCarpet.ColorBar.exponentFormat` |
/// `ScatterPolar.Marker.ColorBar.exponentFormat` |
/// `ScatterPolarGL.Marker.ColorBar.exponentFormat` |
/// `BarPolar.Marker.ColorBar.exponentFormat` |
public enum ExponentFormat0: String, Encodable {
    case none
    case e
    case E
    case power
    case SI
    case B
}

/// Sets the layer on which this axis is displayed. 
///
/// If *above traces*, this axis is displayed above all the subplot's traces If *below traces*, this
/// axis is displayed below all the subplot's traces, but above the grid lines. Useful when used
/// together with scatter-like traces with `cliponaxis` set to *false* to show markers and/or text
/// nodes above this axis.
///
/// # Used By
/// `Layout.XAxis.layer` |
/// `Layout.YAxis.layer` |
/// `Layout.Ternary.AAxis.layer` |
/// `Layout.Ternary.BAxis.layer` |
/// `Layout.Ternary.CAxis.layer` |
/// `Layout.Polar.RadialAxis.layer` |
/// `Layout.Polar.AngularAxis.layer` |
public enum Layer0: String, Encodable {
    case aboveTraces = "above traces"
    case belowTraces = "below traces"
}

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
/// # Used By
/// `Layout.XAxis.categoryOrder` |
/// `Layout.YAxis.categoryOrder` |
/// `Layout.Scene.XAxis.categoryOrder` |
/// `Layout.Scene.YAxis.categoryOrder` |
/// `Layout.Scene.ZAxis.categoryOrder` |
/// `Layout.Polar.RadialAxis.categoryOrder` |
/// `Layout.Polar.AngularAxis.categoryOrder` |
public enum CategoryOrder0: String, Encodable {
    case trace
    case categoryAscending = "category ascending"
    case categoryDescending = "category descending"
    case array
    case totalAscending = "total ascending"
    case totalDescending = "total descending"
    case minAscending = "min ascending"
    case minDescending = "min descending"
    case maxAscending = "max ascending"
    case maxDescending = "max descending"
    case sumAscending = "sum ascending"
    case sumDescending = "sum descending"
    case meanAscending = "mean ascending"
    case meanDescending = "mean descending"
    case medianAscending = "median ascending"
    case medianDescending = "median descending"
}

/// Sets the horizontal alignment of the `text` within the box. 
///
/// Has an effect only if `text` spans more two or more lines (i.e. `text` contains one or more <br>
/// HTML tags) or if an explicit width is set to override the text width.
///
/// # Used By
/// `Layout.Scene.Annotations.Items.Annotation.align` |
/// `Layout.Annotations.Items.Annotation.align` |
/// `Indicator.align` |
/// `Indicator.Title.align` |
/// `Table.Header.align` |
/// `Table.Cells.align` |
public enum Align1: String, Encodable {
    case left
    case center
    case right
}

/// Sets the positions of the `text` elements with respects to the (x,y) coordinates.
///
/// # Used By
/// `Layout.Mapbox.Layers.Items.Layer.Symbol.textPosition` |
/// `Scatter.textPosition` |
/// `ScatterTernary.textPosition` |
/// `Treemap.textPosition` |
/// `Scatter3D.textPosition` |
/// `ScatterGeo.textPosition` |
/// `ScatterGL.textPosition` |
/// `ScatterMapbox.textPosition` |
/// `ScatterCarpet.textPosition` |
/// `ScatterPolar.textPosition` |
/// `ScatterPolarGL.textPosition` |
public enum TextPosition0: String, Encodable {
    case topLeft = "top left"
    case topCenter = "top center"
    case topRight = "top right"
    case middleLeft = "middle left"
    case middleCenter = "middle center"
    case middleRight = "middle right"
    case bottomLeft = "bottom left"
    case bottomCenter = "bottom center"
    case bottomRight = "bottom right"
}

/// Sets the anchor for the x position
///
/// # Used By
/// `Layout.Images.Items.Image.xAnchor` |
/// `Layout.Sliders.Items.Slider.CurrentValue.xAnchor` |
/// `Layout.ColorAxis.ColorBar.xAnchor` |
/// `Scatter.Marker.ColorBar.xAnchor` |
/// `Bar.Marker.ColorBar.xAnchor` |
/// `Heatmap.ColorBar.xAnchor` |
/// `Histogram.Marker.ColorBar.xAnchor` |
/// `Histogram2D.ColorBar.xAnchor` |
/// `Histogram2DContour.ColorBar.xAnchor` |
/// `Contour.ColorBar.xAnchor` |
/// `ScatterTernary.Marker.ColorBar.xAnchor` |
/// `Funnel.Marker.ColorBar.xAnchor` |
/// `Sunburst.Marker.ColorBar.xAnchor` |
/// `Treemap.Marker.ColorBar.xAnchor` |
/// `Scatter3D.Line.ColorBar.xAnchor` |
/// `Scatter3D.Marker.ColorBar.xAnchor` |
/// `Surface.ColorBar.xAnchor` |
/// `Isosurface.ColorBar.xAnchor` |
/// `Volume.ColorBar.xAnchor` |
/// `Mesh3D.ColorBar.xAnchor` |
/// `Cone.ColorBar.xAnchor` |
/// `StreamTube.ColorBar.xAnchor` |
/// `ScatterGeo.Marker.ColorBar.xAnchor` |
/// `Choropleth.ColorBar.xAnchor` |
/// `ScatterGL.Marker.ColorBar.xAnchor` |
/// `ScatterPlotMatrix.Marker.ColorBar.xAnchor` |
/// `HeatmapGL.ColorBar.xAnchor` |
/// `ParallelCoordinates.Line.ColorBar.xAnchor` |
/// `ParallelCategories.Line.ColorBar.xAnchor` |
/// `ScatterMapbox.Marker.ColorBar.xAnchor` |
/// `ChoroplethMapbox.ColorBar.xAnchor` |
/// `DensityMapbox.ColorBar.xAnchor` |
/// `ScatterCarpet.Marker.ColorBar.xAnchor` |
/// `ContourCarpet.ColorBar.xAnchor` |
/// `ScatterPolar.Marker.ColorBar.xAnchor` |
/// `ScatterPolarGL.Marker.ColorBar.xAnchor` |
/// `BarPolar.Marker.ColorBar.xAnchor` |
public enum XAnchor1: String, Encodable {
    case left
    case center
    case right
}

/// Sets the anchor for the y position.
///
/// # Used By
/// `Layout.Images.Items.Image.yAnchor` |
/// `Layout.ColorAxis.ColorBar.yAnchor` |
/// `Scatter.Marker.ColorBar.yAnchor` |
/// `Bar.Marker.ColorBar.yAnchor` |
/// `Heatmap.ColorBar.yAnchor` |
/// `Histogram.Marker.ColorBar.yAnchor` |
/// `Histogram2D.ColorBar.yAnchor` |
/// `Histogram2DContour.ColorBar.yAnchor` |
/// `Contour.ColorBar.yAnchor` |
/// `ScatterTernary.Marker.ColorBar.yAnchor` |
/// `Funnel.Marker.ColorBar.yAnchor` |
/// `Sunburst.Marker.ColorBar.yAnchor` |
/// `Treemap.Marker.ColorBar.yAnchor` |
/// `Scatter3D.Line.ColorBar.yAnchor` |
/// `Scatter3D.Marker.ColorBar.yAnchor` |
/// `Surface.ColorBar.yAnchor` |
/// `Isosurface.ColorBar.yAnchor` |
/// `Volume.ColorBar.yAnchor` |
/// `Mesh3D.ColorBar.yAnchor` |
/// `Cone.ColorBar.yAnchor` |
/// `StreamTube.ColorBar.yAnchor` |
/// `ScatterGeo.Marker.ColorBar.yAnchor` |
/// `Choropleth.ColorBar.yAnchor` |
/// `ScatterGL.Marker.ColorBar.yAnchor` |
/// `ScatterPlotMatrix.Marker.ColorBar.yAnchor` |
/// `HeatmapGL.ColorBar.yAnchor` |
/// `ParallelCoordinates.Line.ColorBar.yAnchor` |
/// `ParallelCategories.Line.ColorBar.yAnchor` |
/// `ScatterMapbox.Marker.ColorBar.yAnchor` |
/// `ChoroplethMapbox.ColorBar.yAnchor` |
/// `DensityMapbox.ColorBar.yAnchor` |
/// `ScatterCarpet.Marker.ColorBar.yAnchor` |
/// `ContourCarpet.ColorBar.yAnchor` |
/// `ScatterPolar.Marker.ColorBar.yAnchor` |
/// `ScatterPolarGL.Marker.ColorBar.yAnchor` |
/// `BarPolar.Marker.ColorBar.yAnchor` |
public enum YAnchor1: String, Encodable {
    case top
    case middle
    case bottom
}

/// Determines whether this slider length is set in units of plot *fraction* or in *pixels. 
///
/// Use `len` to set the value.
///
/// # Used By
/// `Layout.Sliders.Items.Slider.lengthMode` |
/// `Layout.ColorAxis.ColorBar.lengthMode` |
/// `Scatter.Marker.ColorBar.lengthMode` |
/// `Bar.Marker.ColorBar.lengthMode` |
/// `Heatmap.ColorBar.lengthMode` |
/// `Histogram.Marker.ColorBar.lengthMode` |
/// `Histogram2D.ColorBar.lengthMode` |
/// `Histogram2DContour.ColorBar.lengthMode` |
/// `Contour.ColorBar.lengthMode` |
/// `ScatterTernary.Marker.ColorBar.lengthMode` |
/// `Funnel.Marker.ColorBar.lengthMode` |
/// `Sunburst.Marker.ColorBar.lengthMode` |
/// `Treemap.Marker.ColorBar.lengthMode` |
/// `Scatter3D.Line.ColorBar.lengthMode` |
/// `Scatter3D.Marker.ColorBar.lengthMode` |
/// `Surface.ColorBar.lengthMode` |
/// `Isosurface.ColorBar.lengthMode` |
/// `Volume.ColorBar.lengthMode` |
/// `Mesh3D.ColorBar.lengthMode` |
/// `Cone.ColorBar.lengthMode` |
/// `StreamTube.ColorBar.lengthMode` |
/// `ScatterGeo.Marker.ColorBar.lengthMode` |
/// `Choropleth.ColorBar.lengthMode` |
/// `ScatterGL.Marker.ColorBar.lengthMode` |
/// `ScatterPlotMatrix.Marker.ColorBar.lengthMode` |
/// `HeatmapGL.ColorBar.lengthMode` |
/// `ParallelCoordinates.Line.ColorBar.lengthMode` |
/// `ParallelCategories.Line.ColorBar.lengthMode` |
/// `ScatterMapbox.Marker.ColorBar.lengthMode` |
/// `ChoroplethMapbox.ColorBar.lengthMode` |
/// `DensityMapbox.ColorBar.lengthMode` |
/// `ScatterCarpet.Marker.ColorBar.lengthMode` |
/// `ContourCarpet.ColorBar.lengthMode` |
/// `ScatterPolar.Marker.ColorBar.lengthMode` |
/// `ScatterPolarGL.Marker.ColorBar.lengthMode` |
/// `BarPolar.Marker.ColorBar.lengthMode` |
public enum LengthMode0: String, Encodable {
    case fraction
    case pixels
}

/// Determines whether this color bar's thickness (i.e. 
///
/// the measure in the constant color direction) is set in units of plot *fraction* or in *pixels*.
/// Use `thickness` to set the value.
///
/// # Used By
/// `Layout.ColorAxis.ColorBar.thicknessMode` |
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

/// Determines the location of color bar's title with respect to the color bar. 
///
/// Note that the title's location used to be set by the now deprecated `titleside` attribute.
///
/// # Used By
/// `Layout.ColorAxis.ColorBar.Title.side` |
/// `Scatter.Marker.ColorBar.Title.side` |
/// `Bar.Marker.ColorBar.Title.side` |
/// `Heatmap.ColorBar.Title.side` |
/// `Histogram.Marker.ColorBar.Title.side` |
/// `Histogram2D.ColorBar.Title.side` |
/// `Histogram2DContour.ColorBar.Title.side` |
/// `Contour.ColorBar.Title.side` |
/// `ScatterTernary.Marker.ColorBar.Title.side` |
/// `Funnel.Marker.ColorBar.Title.side` |
/// `Sunburst.Marker.ColorBar.Title.side` |
/// `Treemap.Marker.ColorBar.Title.side` |
/// `Scatter3D.Line.ColorBar.Title.side` |
/// `Scatter3D.Marker.ColorBar.Title.side` |
/// `Surface.ColorBar.Title.side` |
/// `Isosurface.ColorBar.Title.side` |
/// `Volume.ColorBar.Title.side` |
/// `Mesh3D.ColorBar.Title.side` |
/// `Cone.ColorBar.Title.side` |
/// `StreamTube.ColorBar.Title.side` |
/// `ScatterGeo.Marker.ColorBar.Title.side` |
/// `Choropleth.ColorBar.Title.side` |
/// `ScatterGL.Marker.ColorBar.Title.side` |
/// `ScatterPlotMatrix.Marker.ColorBar.Title.side` |
/// `HeatmapGL.ColorBar.Title.side` |
/// `ParallelCoordinates.Line.ColorBar.Title.side` |
/// `ParallelCategories.Line.ColorBar.Title.side` |
/// `ScatterMapbox.Marker.ColorBar.Title.side` |
/// `ChoroplethMapbox.ColorBar.Title.side` |
/// `DensityMapbox.ColorBar.Title.side` |
/// `ScatterCarpet.Marker.ColorBar.Title.side` |
/// `ContourCarpet.ColorBar.Title.side` |
/// `ScatterPolar.Marker.ColorBar.Title.side` |
/// `ScatterPolarGL.Marker.ColorBar.Title.side` |
/// `BarPolar.Marker.ColorBar.Title.side` |
public enum Side0: String, Encodable {
    case right
    case top
    case bottom
}

/// Determines whether or not this trace is visible. 
///
/// If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the
/// legend itself is visible).
///
/// # Used By
/// `Scatter.visible` |
/// `Bar.visible` |
/// `Box.visible` |
/// `Heatmap.visible` |
/// `Histogram.visible` |
/// `Histogram2D.visible` |
/// `Histogram2DContour.visible` |
/// `Contour.visible` |
/// `ScatterTernary.visible` |
/// `Violin.visible` |
/// `Funnel.visible` |
/// `Waterfall.visible` |
/// `Image.visible` |
/// `Pie.visible` |
/// `Sunburst.visible` |
/// `Treemap.visible` |
/// `FunnelArea.visible` |
/// `Scatter3D.visible` |
/// `Surface.visible` |
/// `Isosurface.visible` |
/// `Volume.visible` |
/// `Mesh3D.visible` |
/// `Cone.visible` |
/// `StreamTube.visible` |
/// `ScatterGeo.visible` |
/// `Choropleth.visible` |
/// `ScatterGL.visible` |
/// `ScatterPlotMatrix.visible` |
/// `PointCloud.visible` |
/// `HeatmapGL.visible` |
/// `ParallelCoordinates.visible` |
/// `ParallelCategories.visible` |
/// `ScatterMapbox.visible` |
/// `ChoroplethMapbox.visible` |
/// `DensityMapbox.visible` |
/// `Sankey.visible` |
/// `Indicator.visible` |
/// `Table.visible` |
/// `Carpet.visible` |
/// `ScatterCarpet.visible` |
/// `ContourCarpet.visible` |
/// `OHLC.visible` |
/// `Candlestick.visible` |
/// `ScatterPolar.visible` |
/// `ScatterPolarGL.visible` |
/// `BarPolar.visible` |
/// `Area.visible` |
public enum Visible0: String, Encodable {
    case `true` = "true"
    case `false` = "false"
    case legendOnly = "legendonly"
}

/// Sets the marker symbol type. 
///
/// Adding 100 is equivalent to appending *-open* to a symbol name. Adding 200 is equivalent to
/// appending *-dot* to a symbol name. Adding 300 is equivalent to appending *-open-dot* or
/// *dot-open* to a symbol name.
///
/// # Used By
/// `Scatter.Marker.symbol` |
/// `Box.Marker.symbol` |
/// `ScatterTernary.Marker.symbol` |
/// `Violin.Marker.symbol` |
/// `ScatterGeo.Marker.symbol` |
/// `ScatterGL.Marker.symbol` |
/// `ScatterPlotMatrix.Marker.symbol` |
/// `ScatterCarpet.Marker.symbol` |
/// `ScatterPolar.Marker.symbol` |
/// `ScatterPolarGL.Marker.symbol` |
/// `Area.Marker.symbol` |
public enum Symbol0: String, Encodable {
    case circle
    case circleOpen = "circle-open"
    case circleDot = "circle-dot"
    case circleOpenDot = "circle-open-dot"
    case square
    case squareOpen = "square-open"
    case squareDot = "square-dot"
    case squareOpenDot = "square-open-dot"
    case diamond
    case diamondOpen = "diamond-open"
    case diamondDot = "diamond-dot"
    case diamondOpenDot = "diamond-open-dot"
    case cross
    case crossOpen = "cross-open"
    case crossDot = "cross-dot"
    case crossOpenDot = "cross-open-dot"
    case x
    case xOpen = "x-open"
    case xDot = "x-dot"
    case xOpenDot = "x-open-dot"
    case triangleUp = "triangle-up"
    case triangleUpOpen = "triangle-up-open"
    case triangleUpDot = "triangle-up-dot"
    case triangleUpOpenDot = "triangle-up-open-dot"
    case triangleDown = "triangle-down"
    case triangleDownOpen = "triangle-down-open"
    case triangleDownDot = "triangle-down-dot"
    case triangleDownOpenDot = "triangle-down-open-dot"
    case triangleLeft = "triangle-left"
    case triangleLeftOpen = "triangle-left-open"
    case triangleLeftDot = "triangle-left-dot"
    case triangleLeftOpenDot = "triangle-left-open-dot"
    case triangleRight = "triangle-right"
    case triangleRightOpen = "triangle-right-open"
    case triangleRightDot = "triangle-right-dot"
    case triangleRightOpenDot = "triangle-right-open-dot"
    case triangleNE = "triangle-ne"
    case triangleNEOpen = "triangle-ne-open"
    case triangleNEDot = "triangle-ne-dot"
    case triangleNEOpenDot = "triangle-ne-open-dot"
    case triangleSE = "triangle-se"
    case triangleSEOpen = "triangle-se-open"
    case triangleSEDot = "triangle-se-dot"
    case triangleSEOpenDot = "triangle-se-open-dot"
    case triangleSW = "triangle-sw"
    case triangleSWOpen = "triangle-sw-open"
    case triangleSWDot = "triangle-sw-dot"
    case triangleSWOpenDot = "triangle-sw-open-dot"
    case triangleNW = "triangle-nw"
    case triangleNWOpen = "triangle-nw-open"
    case triangleNWDot = "triangle-nw-dot"
    case triangleNWOpenDot = "triangle-nw-open-dot"
    case pentagon
    case pentagonOpen = "pentagon-open"
    case pentagonDot = "pentagon-dot"
    case pentagonOpenDot = "pentagon-open-dot"
    case hexagon
    case hexagonOpen = "hexagon-open"
    case hexagonDot = "hexagon-dot"
    case hexagonOpenDot = "hexagon-open-dot"
    case hexagon2
    case hexagon2Open = "hexagon2-open"
    case hexagon2Dot = "hexagon2-dot"
    case hexagon2OpenDot = "hexagon2-open-dot"
    case octagon
    case octagonOpen = "octagon-open"
    case octagonDot = "octagon-dot"
    case octagonOpenDot = "octagon-open-dot"
    case star
    case starOpen = "star-open"
    case starDot = "star-dot"
    case starOpenDot = "star-open-dot"
    case hexagram
    case hexagramOpen = "hexagram-open"
    case hexagramDot = "hexagram-dot"
    case hexagramOpenDot = "hexagram-open-dot"
    case starTriangleUp = "star-triangle-up"
    case starTriangleUpOpen = "star-triangle-up-open"
    case starTriangleUpDot = "star-triangle-up-dot"
    case starTriangleUpOpenDot = "star-triangle-up-open-dot"
    case starTriangleDown = "star-triangle-down"
    case starTriangleDownOpen = "star-triangle-down-open"
    case starTriangleDownDot = "star-triangle-down-dot"
    case starTriangleDownOpenDot = "star-triangle-down-open-dot"
    case starSquare = "star-square"
    case starSquareOpen = "star-square-open"
    case starSquareDot = "star-square-dot"
    case starSquareOpenDot = "star-square-open-dot"
    case starDiamond = "star-diamond"
    case starDiamondOpen = "star-diamond-open"
    case starDiamondDot = "star-diamond-dot"
    case starDiamondOpenDot = "star-diamond-open-dot"
    case diamondTall = "diamond-tall"
    case diamondTallOpen = "diamond-tall-open"
    case diamondTallDot = "diamond-tall-dot"
    case diamondTallOpenDot = "diamond-tall-open-dot"
    case diamondWide = "diamond-wide"
    case diamondWideOpen = "diamond-wide-open"
    case diamondWideDot = "diamond-wide-dot"
    case diamondWideOpenDot = "diamond-wide-open-dot"
    case hourglass
    case hourglassOpen = "hourglass-open"
    case bowTie = "bowtie"
    case bowTieOpen = "bowtie-open"
    case circleCross = "circle-cross"
    case circleCrossOpen = "circle-cross-open"
    case circleX = "circle-x"
    case circleXOpen = "circle-x-open"
    case squareCross = "square-cross"
    case squareCrossOpen = "square-cross-open"
    case squareX = "square-x"
    case squareXOpen = "square-x-open"
    case diamondCross = "diamond-cross"
    case diamondCrossOpen = "diamond-cross-open"
    case diamondX = "diamond-x"
    case diamondXOpen = "diamond-x-open"
    case crossThin = "cross-thin"
    case crossThinOpen = "cross-thin-open"
    case xThin = "x-thin"
    case xThinOpen = "x-thin-open"
    case asterisk
    case asteriskOpen = "asterisk-open"
    case hash
    case hashOpen = "hash-open"
    case hashDot = "hash-dot"
    case hashOpenDot = "hash-open-dot"
    case yUp = "y-up"
    case yUpOpen = "y-up-open"
    case yDown = "y-down"
    case yDownOpen = "y-down-open"
    case yLeft = "y-left"
    case yLeftOpen = "y-left-open"
    case yRight = "y-right"
    case yRightOpen = "y-right-open"
    case lineEw = "line-ew"
    case lineEwOpen = "line-ew-open"
    case lineNS = "line-ns"
    case lineNSOpen = "line-ns-open"
    case lineNE = "line-ne"
    case lineNEOpen = "line-ne-open"
    case lineNW = "line-nw"
    case lineNWOpen = "line-nw-open"
}

/// Has an effect only if `marker.size` is set to a numerical array. 
///
/// Sets the rule for which the data in `size` is converted to pixels.
///
/// # Used By
/// `Scatter.Marker.sizeMode` |
/// `ScatterTernary.Marker.sizeMode` |
/// `Scatter3D.Marker.sizeMode` |
/// `ScatterGeo.Marker.sizeMode` |
/// `ScatterGL.Marker.sizeMode` |
/// `ScatterPlotMatrix.Marker.sizeMode` |
/// `ScatterMapbox.Marker.sizeMode` |
/// `ScatterCarpet.Marker.sizeMode` |
/// `ScatterPolar.Marker.sizeMode` |
/// `ScatterPolarGL.Marker.sizeMode` |
public enum SizeMode0: String, Encodable {
    case diameter
    case area
}

/// Sets the type of gradient used to fill the markers
///
/// # Used By
/// `Scatter.Marker.Gradient.type` |
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

/// Determines the rule used to generate the error bars. 
///
/// If *constant`, the bar lengths are of a constant value. Set this constant in `value`. If
/// *percent*, the bar lengths correspond to a percentage of underlying data. Set this percentage in
/// `value`. If *sqrt*, the bar lengths correspond to the sqaure of the underlying data. If *data*,
/// the bar lengths are set with data set `array`.
///
/// # Used By
/// `Scatter.XError.type` |
/// `Scatter.YError.type` |
/// `Bar.XError.type` |
/// `Bar.YError.type` |
/// `Histogram.XError.type` |
/// `Histogram.YError.type` |
/// `Scatter3D.XError.type` |
/// `Scatter3D.YError.type` |
/// `Scatter3D.ZError.type` |
/// `ScatterGL.XError.type` |
/// `ScatterGL.YError.type` |
public enum Rule1: String, Encodable {
    case percent
    case constant
    case sqrt
    case data
}
