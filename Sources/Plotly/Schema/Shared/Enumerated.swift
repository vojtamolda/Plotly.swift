/// Sets the title's horizontal alignment with respect to its x position. 
///
/// *left* means that the title starts at x, *right* means that the title ends at x and *center*
/// means that the title's center is at x. *auto* divides `xref` by three and calculates the
/// `xanchor` value automatically based on the value of `x`.
///
/// # Used By
/// `Layout.Title.xAnchor` |
/// `Layout.XAxis.RangeSelector.xAnchor` |
/// `Layout.Scene.Annotation.xAnchor` |
/// `Layout.Legend.xAnchor` |
/// `Layout.Annotation.xAnchor` |
/// `Layout.UpdateMenu.xAnchor` |
/// `Layout.Slider.xAnchor` |
public enum XAutoAnchor: String, Encodable {
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
/// `Layout.Scene.Annotation.yAnchor` |
/// `Layout.Legend.yAnchor` |
/// `Layout.Annotation.yAnchor` |
/// `Layout.UpdateMenu.yAnchor` |
/// `Layout.Slider.yAnchor` |
public enum YAutoAnchor: String, Encodable {
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
public enum Orientation: String, Encodable {
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
public enum AutoAlign: String, Encodable {
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
public enum Calendar: String, Encodable {
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
public enum AutoRange: String, Encodable {
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
public enum RangeMode: String, Encodable {
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
/// `Scatter.GradientMarker.ColorBar.tickMode` |
/// `Bar.Marker.ColorBar.tickMode` |
/// `Heatmap.ColorBar.tickMode` |
/// `Histogram.Marker.ColorBar.tickMode` |
/// `Histogram2D.ColorBar.tickMode` |
/// `Histogram2DContour.ColorBar.tickMode` |
/// `Contour.ColorBar.tickMode` |
/// `ScatterTernary.GradientMarker.ColorBar.tickMode` |
/// `Funnel.Marker.ColorBar.tickMode` |
/// `Sunburst.Marker.ColorBar.tickMode` |
/// `Treemap.Marker.ColorBar.tickMode` |
/// `Scatter3D.DashedColoredLine.ColorBar.tickMode` |
/// `Scatter3D.SymbolicMarker.ColorBar.tickMode` |
/// `Surface.ColorBar.tickMode` |
/// `Isosurface.ColorBar.tickMode` |
/// `Volume.ColorBar.tickMode` |
/// `Mesh3D.ColorBar.tickMode` |
/// `Cone.ColorBar.tickMode` |
/// `StreamTube.ColorBar.tickMode` |
/// `ScatterGeo.GradientMarker.ColorBar.tickMode` |
/// `Choropleth.ColorBar.tickMode` |
/// `ScatterGL.SymbolicMarker.ColorBar.tickMode` |
/// `ScatterPlotMatrix.SymbolicMarker.ColorBar.tickMode` |
/// `HeatmapGL.ColorBar.tickMode` |
/// `ParallelCoordinates.ColoredLine.ColorBar.tickMode` |
/// `ParallelCategories.SplineColoredLine.ColorBar.tickMode` |
/// `ScatterMapbox.SymbolicMarker.ColorBar.tickMode` |
/// `ChoroplethMapbox.ColorBar.tickMode` |
/// `DensityMapbox.ColorBar.tickMode` |
/// `Indicator.Gauge.Axis.tickMode` |
/// `ScatterCarpet.GradientMarker.ColorBar.tickMode` |
/// `ContourCarpet.ColorBar.tickMode` |
/// `ScatterPolar.GradientMarker.ColorBar.tickMode` |
/// `ScatterPolarGL.SymbolicMarker.ColorBar.tickMode` |
/// `BarPolar.Marker.ColorBar.tickMode` |
public enum TickMode: String, Encodable {
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
/// `Scatter.GradientMarker.ColorBar.ticks` |
/// `Bar.Marker.ColorBar.ticks` |
/// `Heatmap.ColorBar.ticks` |
/// `Histogram.Marker.ColorBar.ticks` |
/// `Histogram2D.ColorBar.ticks` |
/// `Histogram2DContour.ColorBar.ticks` |
/// `Contour.ColorBar.ticks` |
/// `ScatterTernary.GradientMarker.ColorBar.ticks` |
/// `Funnel.Marker.ColorBar.ticks` |
/// `Sunburst.Marker.ColorBar.ticks` |
/// `Treemap.Marker.ColorBar.ticks` |
/// `Scatter3D.DashedColoredLine.ColorBar.ticks` |
/// `Scatter3D.SymbolicMarker.ColorBar.ticks` |
/// `Surface.ColorBar.ticks` |
/// `Isosurface.ColorBar.ticks` |
/// `Volume.ColorBar.ticks` |
/// `Mesh3D.ColorBar.ticks` |
/// `Cone.ColorBar.ticks` |
/// `StreamTube.ColorBar.ticks` |
/// `ScatterGeo.GradientMarker.ColorBar.ticks` |
/// `Choropleth.ColorBar.ticks` |
/// `ScatterGL.SymbolicMarker.ColorBar.ticks` |
/// `ScatterPlotMatrix.SymbolicMarker.ColorBar.ticks` |
/// `HeatmapGL.ColorBar.ticks` |
/// `ParallelCoordinates.ColoredLine.ColorBar.ticks` |
/// `ParallelCategories.SplineColoredLine.ColorBar.ticks` |
/// `ScatterMapbox.SymbolicMarker.ColorBar.ticks` |
/// `ChoroplethMapbox.ColorBar.ticks` |
/// `DensityMapbox.ColorBar.ticks` |
/// `Indicator.Gauge.Axis.ticks` |
/// `ScatterCarpet.GradientMarker.ColorBar.ticks` |
/// `ContourCarpet.ColorBar.ticks` |
/// `ScatterPolar.GradientMarker.ColorBar.ticks` |
/// `ScatterPolarGL.SymbolicMarker.ColorBar.ticks` |
/// `BarPolar.Marker.ColorBar.ticks` |
public enum Ticks: String, Encodable {
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
public enum Mirror: String, Encodable {
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
/// `Scatter.GradientMarker.ColorBar.showTickPrefix` |
/// `Bar.Marker.ColorBar.showTickPrefix` |
/// `Heatmap.ColorBar.showTickPrefix` |
/// `Histogram.Marker.ColorBar.showTickPrefix` |
/// `Histogram2D.ColorBar.showTickPrefix` |
/// `Histogram2DContour.ColorBar.showTickPrefix` |
/// `Contour.ColorBar.showTickPrefix` |
/// `ScatterTernary.GradientMarker.ColorBar.showTickPrefix` |
/// `Funnel.Marker.ColorBar.showTickPrefix` |
/// `Sunburst.Marker.ColorBar.showTickPrefix` |
/// `Treemap.Marker.ColorBar.showTickPrefix` |
/// `Scatter3D.DashedColoredLine.ColorBar.showTickPrefix` |
/// `Scatter3D.SymbolicMarker.ColorBar.showTickPrefix` |
/// `Surface.ColorBar.showTickPrefix` |
/// `Isosurface.ColorBar.showTickPrefix` |
/// `Volume.ColorBar.showTickPrefix` |
/// `Mesh3D.ColorBar.showTickPrefix` |
/// `Cone.ColorBar.showTickPrefix` |
/// `StreamTube.ColorBar.showTickPrefix` |
/// `ScatterGeo.GradientMarker.ColorBar.showTickPrefix` |
/// `Choropleth.ColorBar.showTickPrefix` |
/// `ScatterGL.SymbolicMarker.ColorBar.showTickPrefix` |
/// `ScatterPlotMatrix.SymbolicMarker.ColorBar.showTickPrefix` |
/// `HeatmapGL.ColorBar.showTickPrefix` |
/// `ParallelCoordinates.ColoredLine.ColorBar.showTickPrefix` |
/// `ParallelCategories.SplineColoredLine.ColorBar.showTickPrefix` |
/// `ScatterMapbox.SymbolicMarker.ColorBar.showTickPrefix` |
/// `ChoroplethMapbox.ColorBar.showTickPrefix` |
/// `DensityMapbox.ColorBar.showTickPrefix` |
/// `Indicator.Gauge.Axis.showTickPrefix` |
/// `Carpet.AAxis.showTickPrefix` |
/// `Carpet.BAxis.showTickPrefix` |
/// `ScatterCarpet.GradientMarker.ColorBar.showTickPrefix` |
/// `ContourCarpet.ColorBar.showTickPrefix` |
/// `ScatterPolar.GradientMarker.ColorBar.showTickPrefix` |
/// `ScatterPolarGL.SymbolicMarker.ColorBar.showTickPrefix` |
/// `BarPolar.Marker.ColorBar.showTickPrefix` |
public enum ShowTickPrefix: String, Encodable {
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
/// `Scatter.GradientMarker.ColorBar.showTickSuffix` |
/// `Bar.Marker.ColorBar.showTickSuffix` |
/// `Heatmap.ColorBar.showTickSuffix` |
/// `Histogram.Marker.ColorBar.showTickSuffix` |
/// `Histogram2D.ColorBar.showTickSuffix` |
/// `Histogram2DContour.ColorBar.showTickSuffix` |
/// `Contour.ColorBar.showTickSuffix` |
/// `ScatterTernary.GradientMarker.ColorBar.showTickSuffix` |
/// `Funnel.Marker.ColorBar.showTickSuffix` |
/// `Sunburst.Marker.ColorBar.showTickSuffix` |
/// `Treemap.Marker.ColorBar.showTickSuffix` |
/// `Scatter3D.DashedColoredLine.ColorBar.showTickSuffix` |
/// `Scatter3D.SymbolicMarker.ColorBar.showTickSuffix` |
/// `Surface.ColorBar.showTickSuffix` |
/// `Isosurface.ColorBar.showTickSuffix` |
/// `Volume.ColorBar.showTickSuffix` |
/// `Mesh3D.ColorBar.showTickSuffix` |
/// `Cone.ColorBar.showTickSuffix` |
/// `StreamTube.ColorBar.showTickSuffix` |
/// `ScatterGeo.GradientMarker.ColorBar.showTickSuffix` |
/// `Choropleth.ColorBar.showTickSuffix` |
/// `ScatterGL.SymbolicMarker.ColorBar.showTickSuffix` |
/// `ScatterPlotMatrix.SymbolicMarker.ColorBar.showTickSuffix` |
/// `HeatmapGL.ColorBar.showTickSuffix` |
/// `ParallelCoordinates.ColoredLine.ColorBar.showTickSuffix` |
/// `ParallelCategories.SplineColoredLine.ColorBar.showTickSuffix` |
/// `ScatterMapbox.SymbolicMarker.ColorBar.showTickSuffix` |
/// `ChoroplethMapbox.ColorBar.showTickSuffix` |
/// `DensityMapbox.ColorBar.showTickSuffix` |
/// `Indicator.Gauge.Axis.showTickSuffix` |
/// `Carpet.AAxis.showTickSuffix` |
/// `Carpet.BAxis.showTickSuffix` |
/// `ScatterCarpet.GradientMarker.ColorBar.showTickSuffix` |
/// `ContourCarpet.ColorBar.showTickSuffix` |
/// `ScatterPolar.GradientMarker.ColorBar.showTickSuffix` |
/// `ScatterPolarGL.SymbolicMarker.ColorBar.showTickSuffix` |
/// `BarPolar.Marker.ColorBar.showTickSuffix` |
public enum ShowTickSuffix: String, Encodable {
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
/// `Scatter.GradientMarker.ColorBar.showExponent` |
/// `Bar.Marker.ColorBar.showExponent` |
/// `Heatmap.ColorBar.showExponent` |
/// `Histogram.Marker.ColorBar.showExponent` |
/// `Histogram2D.ColorBar.showExponent` |
/// `Histogram2DContour.ColorBar.showExponent` |
/// `Contour.ColorBar.showExponent` |
/// `ScatterTernary.GradientMarker.ColorBar.showExponent` |
/// `Funnel.Marker.ColorBar.showExponent` |
/// `Sunburst.Marker.ColorBar.showExponent` |
/// `Treemap.Marker.ColorBar.showExponent` |
/// `Scatter3D.DashedColoredLine.ColorBar.showExponent` |
/// `Scatter3D.SymbolicMarker.ColorBar.showExponent` |
/// `Surface.ColorBar.showExponent` |
/// `Isosurface.ColorBar.showExponent` |
/// `Volume.ColorBar.showExponent` |
/// `Mesh3D.ColorBar.showExponent` |
/// `Cone.ColorBar.showExponent` |
/// `StreamTube.ColorBar.showExponent` |
/// `ScatterGeo.GradientMarker.ColorBar.showExponent` |
/// `Choropleth.ColorBar.showExponent` |
/// `ScatterGL.SymbolicMarker.ColorBar.showExponent` |
/// `ScatterPlotMatrix.SymbolicMarker.ColorBar.showExponent` |
/// `HeatmapGL.ColorBar.showExponent` |
/// `ParallelCoordinates.ColoredLine.ColorBar.showExponent` |
/// `ParallelCategories.SplineColoredLine.ColorBar.showExponent` |
/// `ScatterMapbox.SymbolicMarker.ColorBar.showExponent` |
/// `ChoroplethMapbox.ColorBar.showExponent` |
/// `DensityMapbox.ColorBar.showExponent` |
/// `Indicator.Gauge.Axis.showExponent` |
/// `Carpet.AAxis.showExponent` |
/// `Carpet.BAxis.showExponent` |
/// `ScatterCarpet.GradientMarker.ColorBar.showExponent` |
/// `ContourCarpet.ColorBar.showExponent` |
/// `ScatterPolar.GradientMarker.ColorBar.showExponent` |
/// `ScatterPolarGL.SymbolicMarker.ColorBar.showExponent` |
/// `BarPolar.Marker.ColorBar.showExponent` |
public enum ShowExponent: String, Encodable {
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
/// `Scatter.GradientMarker.ColorBar.exponentFormat` |
/// `Bar.Marker.ColorBar.exponentFormat` |
/// `Heatmap.ColorBar.exponentFormat` |
/// `Histogram.Marker.ColorBar.exponentFormat` |
/// `Histogram2D.ColorBar.exponentFormat` |
/// `Histogram2DContour.ColorBar.exponentFormat` |
/// `Contour.ColorBar.exponentFormat` |
/// `ScatterTernary.GradientMarker.ColorBar.exponentFormat` |
/// `Funnel.Marker.ColorBar.exponentFormat` |
/// `Sunburst.Marker.ColorBar.exponentFormat` |
/// `Treemap.Marker.ColorBar.exponentFormat` |
/// `Scatter3D.DashedColoredLine.ColorBar.exponentFormat` |
/// `Scatter3D.SymbolicMarker.ColorBar.exponentFormat` |
/// `Surface.ColorBar.exponentFormat` |
/// `Isosurface.ColorBar.exponentFormat` |
/// `Volume.ColorBar.exponentFormat` |
/// `Mesh3D.ColorBar.exponentFormat` |
/// `Cone.ColorBar.exponentFormat` |
/// `StreamTube.ColorBar.exponentFormat` |
/// `ScatterGeo.GradientMarker.ColorBar.exponentFormat` |
/// `Choropleth.ColorBar.exponentFormat` |
/// `ScatterGL.SymbolicMarker.ColorBar.exponentFormat` |
/// `ScatterPlotMatrix.SymbolicMarker.ColorBar.exponentFormat` |
/// `HeatmapGL.ColorBar.exponentFormat` |
/// `ParallelCoordinates.ColoredLine.ColorBar.exponentFormat` |
/// `ParallelCategories.SplineColoredLine.ColorBar.exponentFormat` |
/// `ScatterMapbox.SymbolicMarker.ColorBar.exponentFormat` |
/// `ChoroplethMapbox.ColorBar.exponentFormat` |
/// `DensityMapbox.ColorBar.exponentFormat` |
/// `Indicator.Gauge.Axis.exponentFormat` |
/// `Carpet.AAxis.exponentFormat` |
/// `Carpet.BAxis.exponentFormat` |
/// `ScatterCarpet.GradientMarker.ColorBar.exponentFormat` |
/// `ContourCarpet.ColorBar.exponentFormat` |
/// `ScatterPolar.GradientMarker.ColorBar.exponentFormat` |
/// `ScatterPolarGL.SymbolicMarker.ColorBar.exponentFormat` |
/// `BarPolar.Marker.ColorBar.exponentFormat` |
public enum ExponentFormat: String, Encodable {
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
public enum Layer: String, Encodable {
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
public enum CategoryOrder: String, Encodable {
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
/// `Layout.Scene.Annotation.align` |
/// `Layout.Annotation.align` |
/// `Indicator.align` |
/// `Indicator.Title.align` |
/// `Table.Header.align` |
/// `Table.Cells.align` |
public enum HorizontalAlign: String, Encodable {
    case left
    case center
    case right
}

/// Sets the vertical alignment of the `text` within the box. 
///
/// Has an effect only if an explicit height is set to override the text height.
///
/// # Used By
/// `Layout.Scene.Annotation.verticalAlign` |
/// `Layout.Legend.verticalAlign` |
/// `Layout.Annotation.verticalAlign` |
public enum VerticalAlign: String, Encodable {
    case top
    case middle
    case bottom
}

/// Sets the positions of the `text` elements with respects to the (x,y) coordinates.
///
/// # Used By
/// `Layout.Mapbox.Layer.Symbol.textPosition` |
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
public enum TextPosition: String, Encodable {
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

/// Sets the annotation's x coordinate axis. 
///
/// If set to an x axis id (e.g. *x* or *x2*), the `x` position refers to an x coordinate If set to
/// *paper*, the `x` position refers to the distance from the left side of the plotting area in
/// normalized coordinates where 0 (1) corresponds to the left (right) side.
///
/// # Used By
/// `Layout.Annotation.xReference` |
/// `Layout.Shape.xReference` |
/// `Layout.Image.xReference` |
public enum XAxisReference: String, Encodable {
    case paper
    case xSubPlotID = "/^x([2-9]|[1-9][0-9]+)?$/"
}

/// Sets the annotation's y coordinate axis. 
///
/// If set to an y axis id (e.g. *y* or *y2*), the `y` position refers to an y coordinate If set to
/// *paper*, the `y` position refers to the distance from the bottom of the plotting area in
/// normalized coordinates where 0 (1) corresponds to the bottom (top).
///
/// # Used By
/// `Layout.Annotation.yReference` |
/// `Layout.Shape.yReference` |
/// `Layout.Image.yReference` |
public enum YAxisReference: String, Encodable {
    case paper
    case ySubPlotID = "/^y([2-9]|[1-9][0-9]+)?$/"
}

/// Sets the anchor for the x position
///
/// # Used By
/// `Layout.Image.xAnchor` |
/// `Layout.Slider.CurrentValue.xAnchor` |
/// `Layout.ColorAxis.ColorBar.xAnchor` |
/// `Scatter.GradientMarker.ColorBar.xAnchor` |
/// `Bar.Marker.ColorBar.xAnchor` |
/// `Heatmap.ColorBar.xAnchor` |
/// `Histogram.Marker.ColorBar.xAnchor` |
/// `Histogram2D.ColorBar.xAnchor` |
/// `Histogram2DContour.ColorBar.xAnchor` |
/// `Contour.ColorBar.xAnchor` |
/// `ScatterTernary.GradientMarker.ColorBar.xAnchor` |
/// `Funnel.Marker.ColorBar.xAnchor` |
/// `Sunburst.Marker.ColorBar.xAnchor` |
/// `Treemap.Marker.ColorBar.xAnchor` |
/// `Scatter3D.DashedColoredLine.ColorBar.xAnchor` |
/// `Scatter3D.SymbolicMarker.ColorBar.xAnchor` |
/// `Surface.ColorBar.xAnchor` |
/// `Isosurface.ColorBar.xAnchor` |
/// `Volume.ColorBar.xAnchor` |
/// `Mesh3D.ColorBar.xAnchor` |
/// `Cone.ColorBar.xAnchor` |
/// `StreamTube.ColorBar.xAnchor` |
/// `ScatterGeo.GradientMarker.ColorBar.xAnchor` |
/// `Choropleth.ColorBar.xAnchor` |
/// `ScatterGL.SymbolicMarker.ColorBar.xAnchor` |
/// `ScatterPlotMatrix.SymbolicMarker.ColorBar.xAnchor` |
/// `HeatmapGL.ColorBar.xAnchor` |
/// `ParallelCoordinates.ColoredLine.ColorBar.xAnchor` |
/// `ParallelCategories.SplineColoredLine.ColorBar.xAnchor` |
/// `ScatterMapbox.SymbolicMarker.ColorBar.xAnchor` |
/// `ChoroplethMapbox.ColorBar.xAnchor` |
/// `DensityMapbox.ColorBar.xAnchor` |
/// `ScatterCarpet.GradientMarker.ColorBar.xAnchor` |
/// `ContourCarpet.ColorBar.xAnchor` |
/// `ScatterPolar.GradientMarker.ColorBar.xAnchor` |
/// `ScatterPolarGL.SymbolicMarker.ColorBar.xAnchor` |
/// `BarPolar.Marker.ColorBar.xAnchor` |
public enum XAnchor: String, Encodable {
    case left
    case center
    case right
}

/// Sets the anchor for the y position.
///
/// # Used By
/// `Layout.Image.yAnchor` |
/// `Layout.ColorAxis.ColorBar.yAnchor` |
/// `Scatter.GradientMarker.ColorBar.yAnchor` |
/// `Bar.Marker.ColorBar.yAnchor` |
/// `Heatmap.ColorBar.yAnchor` |
/// `Histogram.Marker.ColorBar.yAnchor` |
/// `Histogram2D.ColorBar.yAnchor` |
/// `Histogram2DContour.ColorBar.yAnchor` |
/// `Contour.ColorBar.yAnchor` |
/// `ScatterTernary.GradientMarker.ColorBar.yAnchor` |
/// `Funnel.Marker.ColorBar.yAnchor` |
/// `Sunburst.Marker.ColorBar.yAnchor` |
/// `Treemap.Marker.ColorBar.yAnchor` |
/// `Scatter3D.DashedColoredLine.ColorBar.yAnchor` |
/// `Scatter3D.SymbolicMarker.ColorBar.yAnchor` |
/// `Surface.ColorBar.yAnchor` |
/// `Isosurface.ColorBar.yAnchor` |
/// `Volume.ColorBar.yAnchor` |
/// `Mesh3D.ColorBar.yAnchor` |
/// `Cone.ColorBar.yAnchor` |
/// `StreamTube.ColorBar.yAnchor` |
/// `ScatterGeo.GradientMarker.ColorBar.yAnchor` |
/// `Choropleth.ColorBar.yAnchor` |
/// `ScatterGL.SymbolicMarker.ColorBar.yAnchor` |
/// `ScatterPlotMatrix.SymbolicMarker.ColorBar.yAnchor` |
/// `HeatmapGL.ColorBar.yAnchor` |
/// `ParallelCoordinates.ColoredLine.ColorBar.yAnchor` |
/// `ParallelCategories.SplineColoredLine.ColorBar.yAnchor` |
/// `ScatterMapbox.SymbolicMarker.ColorBar.yAnchor` |
/// `ChoroplethMapbox.ColorBar.yAnchor` |
/// `DensityMapbox.ColorBar.yAnchor` |
/// `ScatterCarpet.GradientMarker.ColorBar.yAnchor` |
/// `ContourCarpet.ColorBar.yAnchor` |
/// `ScatterPolar.GradientMarker.ColorBar.yAnchor` |
/// `ScatterPolarGL.SymbolicMarker.ColorBar.yAnchor` |
/// `BarPolar.Marker.ColorBar.yAnchor` |
public enum YAnchor: String, Encodable {
    case top
    case middle
    case bottom
}

/// Determines whether this slider length is set in units of plot *fraction* or in *pixels. 
///
/// Use `len` to set the value.
///
/// # Used By
/// `Layout.Slider.lengthMode` |
/// `Layout.ColorAxis.ColorBar.lengthMode` |
/// `Scatter.GradientMarker.ColorBar.lengthMode` |
/// `Bar.Marker.ColorBar.lengthMode` |
/// `Heatmap.ColorBar.lengthMode` |
/// `Histogram.Marker.ColorBar.lengthMode` |
/// `Histogram2D.ColorBar.lengthMode` |
/// `Histogram2DContour.ColorBar.lengthMode` |
/// `Contour.ColorBar.lengthMode` |
/// `ScatterTernary.GradientMarker.ColorBar.lengthMode` |
/// `Funnel.Marker.ColorBar.lengthMode` |
/// `Sunburst.Marker.ColorBar.lengthMode` |
/// `Treemap.Marker.ColorBar.lengthMode` |
/// `Scatter3D.DashedColoredLine.ColorBar.lengthMode` |
/// `Scatter3D.SymbolicMarker.ColorBar.lengthMode` |
/// `Surface.ColorBar.lengthMode` |
/// `Isosurface.ColorBar.lengthMode` |
/// `Volume.ColorBar.lengthMode` |
/// `Mesh3D.ColorBar.lengthMode` |
/// `Cone.ColorBar.lengthMode` |
/// `StreamTube.ColorBar.lengthMode` |
/// `ScatterGeo.GradientMarker.ColorBar.lengthMode` |
/// `Choropleth.ColorBar.lengthMode` |
/// `ScatterGL.SymbolicMarker.ColorBar.lengthMode` |
/// `ScatterPlotMatrix.SymbolicMarker.ColorBar.lengthMode` |
/// `HeatmapGL.ColorBar.lengthMode` |
/// `ParallelCoordinates.ColoredLine.ColorBar.lengthMode` |
/// `ParallelCategories.SplineColoredLine.ColorBar.lengthMode` |
/// `ScatterMapbox.SymbolicMarker.ColorBar.lengthMode` |
/// `ChoroplethMapbox.ColorBar.lengthMode` |
/// `DensityMapbox.ColorBar.lengthMode` |
/// `ScatterCarpet.GradientMarker.ColorBar.lengthMode` |
/// `ContourCarpet.ColorBar.lengthMode` |
/// `ScatterPolar.GradientMarker.ColorBar.lengthMode` |
/// `ScatterPolarGL.SymbolicMarker.ColorBar.lengthMode` |
/// `BarPolar.Marker.ColorBar.lengthMode` |
public enum LengthMode: String, Encodable {
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
/// `Scatter.GradientMarker.ColorBar.thicknessMode` |
/// `Bar.Marker.ColorBar.thicknessMode` |
/// `Heatmap.ColorBar.thicknessMode` |
/// `Histogram.Marker.ColorBar.thicknessMode` |
/// `Histogram2D.ColorBar.thicknessMode` |
/// `Histogram2DContour.ColorBar.thicknessMode` |
/// `Contour.ColorBar.thicknessMode` |
/// `ScatterTernary.GradientMarker.ColorBar.thicknessMode` |
/// `Funnel.Marker.ColorBar.thicknessMode` |
/// `Sunburst.Marker.ColorBar.thicknessMode` |
/// `Treemap.Marker.ColorBar.thicknessMode` |
/// `Scatter3D.DashedColoredLine.ColorBar.thicknessMode` |
/// `Scatter3D.SymbolicMarker.ColorBar.thicknessMode` |
/// `Surface.ColorBar.thicknessMode` |
/// `Isosurface.ColorBar.thicknessMode` |
/// `Volume.ColorBar.thicknessMode` |
/// `Mesh3D.ColorBar.thicknessMode` |
/// `Cone.ColorBar.thicknessMode` |
/// `StreamTube.ColorBar.thicknessMode` |
/// `ScatterGeo.GradientMarker.ColorBar.thicknessMode` |
/// `Choropleth.ColorBar.thicknessMode` |
/// `ScatterGL.SymbolicMarker.ColorBar.thicknessMode` |
/// `ScatterPlotMatrix.SymbolicMarker.ColorBar.thicknessMode` |
/// `HeatmapGL.ColorBar.thicknessMode` |
/// `ParallelCoordinates.ColoredLine.ColorBar.thicknessMode` |
/// `ParallelCategories.SplineColoredLine.ColorBar.thicknessMode` |
/// `ScatterMapbox.SymbolicMarker.ColorBar.thicknessMode` |
/// `ChoroplethMapbox.ColorBar.thicknessMode` |
/// `DensityMapbox.ColorBar.thicknessMode` |
/// `ScatterCarpet.GradientMarker.ColorBar.thicknessMode` |
/// `ContourCarpet.ColorBar.thicknessMode` |
/// `ScatterPolar.GradientMarker.ColorBar.thicknessMode` |
/// `ScatterPolarGL.SymbolicMarker.ColorBar.thicknessMode` |
/// `BarPolar.Marker.ColorBar.thicknessMode` |
public enum ThicknessMode: String, Encodable {
    case fraction
    case pixels
}

/// Determines the location of color bar's title with respect to the color bar. 
///
/// Note that the title's location used to be set by the now deprecated `titleside` attribute.
///
/// # Used By
/// `Layout.ColorAxis.ColorBar.Title.side` |
/// `Scatter.GradientMarker.ColorBar.Title.side` |
/// `Bar.Marker.ColorBar.Title.side` |
/// `Heatmap.ColorBar.Title.side` |
/// `Histogram.Marker.ColorBar.Title.side` |
/// `Histogram2D.ColorBar.Title.side` |
/// `Histogram2DContour.ColorBar.Title.side` |
/// `Contour.ColorBar.Title.side` |
/// `ScatterTernary.GradientMarker.ColorBar.Title.side` |
/// `Funnel.Marker.ColorBar.Title.side` |
/// `Sunburst.Marker.ColorBar.Title.side` |
/// `Treemap.Marker.ColorBar.Title.side` |
/// `Scatter3D.DashedColoredLine.ColorBar.Title.side` |
/// `Scatter3D.SymbolicMarker.ColorBar.Title.side` |
/// `Surface.ColorBar.Title.side` |
/// `Isosurface.ColorBar.Title.side` |
/// `Volume.ColorBar.Title.side` |
/// `Mesh3D.ColorBar.Title.side` |
/// `Cone.ColorBar.Title.side` |
/// `StreamTube.ColorBar.Title.side` |
/// `ScatterGeo.GradientMarker.ColorBar.Title.side` |
/// `Choropleth.ColorBar.Title.side` |
/// `ScatterGL.SymbolicMarker.ColorBar.Title.side` |
/// `ScatterPlotMatrix.SymbolicMarker.ColorBar.Title.side` |
/// `HeatmapGL.ColorBar.Title.side` |
/// `ParallelCoordinates.ColoredLine.ColorBar.Title.side` |
/// `ParallelCategories.SplineColoredLine.ColorBar.Title.side` |
/// `ScatterMapbox.SymbolicMarker.ColorBar.Title.side` |
/// `ChoroplethMapbox.ColorBar.Title.side` |
/// `DensityMapbox.ColorBar.Title.side` |
/// `ScatterCarpet.GradientMarker.ColorBar.Title.side` |
/// `ContourCarpet.ColorBar.Title.side` |
/// `ScatterPolar.GradientMarker.ColorBar.Title.side` |
/// `ScatterPolarGL.SymbolicMarker.ColorBar.Title.side` |
/// `BarPolar.Marker.ColorBar.Title.side` |
public enum Side: String, Encodable {
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
public enum Visible: String, Encodable {
    case `true` = "true"
    case `false` = "false"
    case legendOnly = "legendonly"
}

/// Sets the area to fill with a solid color. 
///
/// Defaults to *none* unless this trace is stacked, then it gets *tonexty* (*tonextx*) if
/// `orientation` is *v* (*h*) Use with `fillcolor` if not *none*. *tozerox* and *tozeroy* fill to
/// x=0 and y=0 respectively. *tonextx* and *tonexty* fill between the endpoints of this trace and
/// the endpoints of the trace before it, connecting those endpoints with straight lines (to make a
/// stacked area graph); if there is no trace before it, they behave like *tozerox* and *tozeroy*.
/// *toself* connects the endpoints of the trace (or each segment of the trace if it has gaps) into
/// a closed shape. *tonext* fills the space between two traces if one completely encloses the other
/// (eg consecutive contour lines), and behaves like *toself* if there is no trace before it.
/// *tonext* should not be used if one trace does not enclose the other. Traces in a `stackgroup`
/// will only fill to (or be filled to) other traces in the same group. With multiple `stackgroup`s
/// or some traces stacked and some not, if fill-linked traces are not already consecutive, the
/// later ones will be pushed down in the drawing order.
///
/// # Used By
/// `Scatter.fill` |
/// `ScatterGL.fill` |
/// `ScatterPolarGL.fill` |
public enum Fill: String, Encodable {
    case none
    case toZeroY = "tozeroy"
    case toZeroX = "tozerox"
    case toNextY = "tonexty"
    case toNextX = "tonextx"
    case toSelf = "toself"
    case toNext = "tonext"
}

/// Sets the marker symbol type. 
///
/// Adding 100 is equivalent to appending *-open* to a symbol name. Adding 200 is equivalent to
/// appending *-dot* to a symbol name. Adding 300 is equivalent to appending *-open-dot* or
/// *dot-open* to a symbol name.
///
/// # Used By
/// `Scatter.GradientMarker.symbol` |
/// `Box.SymbolicMarker.symbol` |
/// `ScatterTernary.GradientMarker.symbol` |
/// `Violin.SymbolicMarker.symbol` |
/// `ScatterGeo.GradientMarker.symbol` |
/// `ScatterGL.SymbolicMarker.symbol` |
/// `ScatterPlotMatrix.SymbolicMarker.symbol` |
/// `ScatterCarpet.GradientMarker.symbol` |
/// `ScatterPolar.GradientMarker.symbol` |
/// `ScatterPolarGL.SymbolicMarker.symbol` |
/// `Area.SymbolicMarker.symbol` |
public enum Symbol: String, Encodable {
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
/// `Scatter.GradientMarker.sizeMode` |
/// `ScatterTernary.GradientMarker.sizeMode` |
/// `Scatter3D.SymbolicMarker.sizeMode` |
/// `ScatterGeo.GradientMarker.sizeMode` |
/// `ScatterGL.SymbolicMarker.sizeMode` |
/// `ScatterPlotMatrix.SymbolicMarker.sizeMode` |
/// `ScatterMapbox.SymbolicMarker.sizeMode` |
/// `ScatterCarpet.GradientMarker.sizeMode` |
/// `ScatterPolar.GradientMarker.sizeMode` |
/// `ScatterPolarGL.SymbolicMarker.sizeMode` |
public enum SizeMode: String, Encodable {
    case diameter
    case area
}

/// Specifies the location of the `text`. 
///
/// *inside* positions `text` inside, next to the bar end (rotated and scaled if needed). *outside*
/// positions `text` outside, next to the bar end (scaled if needed), unless there is another bar
/// stacked on this one, then the text gets pushed inside. *auto* tries to position `text` inside
/// the bar, but if the bar is too small and no bar is stacked on this one the text is moved
/// outside.
///
/// # Used By
/// `Bar.textPosition` |
/// `Funnel.textPosition` |
/// `Waterfall.textPosition` |
/// `Pie.textPosition` |
public enum AdjacentPosition: String, Encodable {
    case inside
    case outside
    case auto
    case none
}

/// Determines if texts are kept at center or start/end points in `textposition` *inside* mode.
///
/// # Used By
/// `Bar.insideTextAnchor` |
/// `Funnel.insideTextAnchor` |
/// `Waterfall.insideTextAnchor` |
public enum InsideTextAnchor: String, Encodable {
    case end
    case middle
    case start
}

/// Constrain the size of text inside or outside a bar to be no larger than the bar itself.
///
/// # Used By
/// `Bar.constrainText` |
/// `Funnel.constrainText` |
/// `Waterfall.constrainText` |
public enum ConstrainText: String, Encodable {
    case inside
    case outside
    case both
    case none
}

/// If *array*, the heatmap's x coordinates are given by *x* (the default behavior when `x` is provided). 
///
/// If *scaled*, the heatmap's x coordinates are given by *x0* and *dx* (the default behavior when
/// `x` is not provided).
///
/// # Used By
/// `Heatmap.xType` |
/// `Heatmap.yType` |
/// `Contour.xType` |
/// `Contour.yType` |
/// `HeatmapGL.xType` |
/// `HeatmapGL.yType` |
public enum AxisType: String, Encodable {
    case array
    case scaled
}

/// Specifies the binning function used for this histogram trace. 
///
/// If *count*, the histogram values are computed by counting the number of values lying inside each
/// bin. If *sum*, *avg*, *min*, *max*, the histogram values are computed using the sum, the
/// average, the minimum or the maximum of the values lying inside each bin respectively.
///
/// # Used By
/// `Histogram.binningFunction` |
/// `Histogram2D.binningFunction` |
/// `Histogram2DContour.binningFunction` |
public enum BinningFunction: String, Encodable {
    case count
    case sum
    case avg
    case min
    case max
}

/// Specifies the type of normalization used for this histogram trace. 
///
/// If **, the span of each bar corresponds to the number of occurrences (i.e. the number of data
/// points lying inside the bins). If *percent* / *probability*, the span of each bar corresponds to
/// the percentage / fraction of occurrences with respect to the total number of sample points
/// (here, the sum of all bin HEIGHTS equals 100% / 1). If *density*, the span of each bar
/// corresponds to the number of occurrences in a bin divided by the size of the bin interval (here,
/// the sum of all bin AREAS equals the total number of sample points). If *probability density*,
/// the area of each bar corresponds to the probability that an event will fall into the
/// corresponding bin (here, the sum of all bin AREAS equals 1).
///
/// # Used By
/// `Histogram.normalization` |
/// `Histogram2D.normalization` |
/// `Histogram2DContour.normalization` |
public enum Normalization: String, Encodable {
    case none = ""
    case percent
    case probability
    case density
    case probabilityDensity = "probability density"
}

/// Sets the constraint operation. 
///
/// *=* keeps regions equal to `value` *<* and *<=* keep regions less than `value` *>* and *>=* keep
/// regions greater than `value` *[]*, *()*, *[)*, and *(]* keep regions inside `value[0]` to
/// `value[1]` *][*, *)(*, *](*, *)[* keep regions outside `value[0]` to value[1]` Open vs. closed
/// intervals make no difference to constraint display, but all versions are allowed for consistency
/// with filter transforms.
///
/// # Used By
/// `Histogram2DContour.Contours.operation` |
/// `Contour.Contours.operation` |
/// `ContourCarpet.Contours.operation` |
public enum Operation: String, Encodable {
    case equalTo = "="
    case lessThan = "<"
    case greaterEqualThan = ">="
    case greaterThan = ">"
    case lessEqualThan = "<="
    case insideInclusive = "[]"
    case insideExclusive = "()"
    case insideInclusiveExclusive = "[)"
    case insideExclusiveInclusive = "(]"
    case outsideInclusive = "]["
    case outsideExclusive = ")("
    case outsideInclusiveExclusive = "]("
    case outsideExclusiveInclusive = ")["
}

/// Determines the line shape. 
///
/// With *spline* the lines are drawn using spline interpolation. The other available values
/// correspond to step-wise line shapes.
///
/// # Used By
/// `ScatterTernary.SplineSmoothedDashedLine.shape` |
/// `ScatterCarpet.SplineSmoothedDashedLine.shape` |
/// `ScatterPolar.SplineSmoothedDashedLine.shape` |
public enum Shape: String, Encodable {
    case linear
    case spline
}

/// Sets the area to fill with a solid color. 
///
/// Use with `fillcolor` if not *none*. scatterternary has a subset of the options available to
/// scatter. *toself* connects the endpoints of the trace (or each segment of the trace if it has
/// gaps) into a closed shape. *tonext* fills the space between two traces if one completely
/// encloses the other (eg consecutive contour lines), and behaves like *toself* if there is no
/// trace before it. *tonext* should not be used if one trace does not enclose the other.
///
/// # Used By
/// `ScatterTernary.fill` |
/// `ScatterCarpet.fill` |
/// `ScatterPolar.fill` |
public enum AreaFill: String, Encodable {
    case none
    case toSelf = "toself"
    case toNext = "tonext"
}

/// Sets the dash style of the lines.
///
/// # Used By
/// `Scatter3D.DashedColoredLine.dash` |
/// `ScatterGL.SplineDashedLine.dash` |
/// `ScatterPolarGL.SplineDashedLine.dash` |
public enum Dash: String, Encodable {
    case solid
    case dot
    case dash
    case longDash = "longdash"
    case dashDot = "dashdot"
    case longDashDot = "longdashdot"
}

/// Specifies the ordering logic for the categories in the dimension. 
///
/// By default, plotly uses *trace*, which specifies the order that is present in the data supplied.
/// Set `categoryorder` to *category ascending* or *category descending* if order should be
/// determined by the alphanumerical order of the category names. Set `categoryorder` to *array* to
/// derive the ordering from the attribute `categoryarray`. If a category is not found in the
/// `categoryarray` array, the sorting behavior for that attribute will be identical to the *trace*
/// mode. The unspecified categories will follow the categories in `categoryarray`.
///
/// # Used By
/// `ParallelCategories.Dimension.categoryOrder` |
/// `Carpet.AAxis.categoryOrder` |
/// `Carpet.BAxis.categoryOrder` |
public enum CarpetCategoryOrder: String, Encodable {
    case trace
    case categoryAscending = "category ascending"
    case categoryDescending = "category descending"
    case array
}

/// Sets the unit of input *theta* values. 
///
/// Has an effect only when on *linear* angular axes.
///
/// # Used By
/// `ScatterPolar.thetaUnit` |
/// `ScatterPolarGL.thetaUnit` |
/// `BarPolar.thetaUnit` |
public enum ThetaUnit: String, Encodable {
    case radians
    case degrees
    case gradians
}
