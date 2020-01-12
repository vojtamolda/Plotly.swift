/// Sets the title's horizontal alignment with respect to its x position. 
///
/// *left* means that the title starts at x, *right* means that the title ends at x and *center*
/// means that the title's center is at x. *auto* divides `xref` by three and calculates the
/// `xanchor` value automatically based on the value of `x`.
/// - [Layout.Title.XAnchor0](layout/layoutAttributes/title/xanchor)
/// - [Layout.Title.XAnchor0](layout/layoutAttributes/xaxis/rangeselector/xanchor)
/// - [Layout.Title.XAnchor0](layout/layoutAttributes/scene/annotations/items/annotation/xanchor)
/// - [Layout.Title.XAnchor0](layout/layoutAttributes/legend/xanchor)
/// - [Layout.Title.XAnchor0](layout/layoutAttributes/annotations/items/annotation/xanchor)
/// - [Layout.Title.XAnchor0](layout/layoutAttributes/updatemenus/items/updatemenu/xanchor)
/// - [Layout.Title.XAnchor0](layout/layoutAttributes/sliders/items/slider/xanchor)
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
/// - [Layout.Title.YAnchor0](layout/layoutAttributes/title/yanchor)
/// - [Layout.Title.YAnchor0](layout/layoutAttributes/xaxis/rangeselector/yanchor)
/// - [Layout.Title.YAnchor0](layout/layoutAttributes/scene/annotations/items/annotation/yanchor)
/// - [Layout.Title.YAnchor0](layout/layoutAttributes/legend/yanchor)
/// - [Layout.Title.YAnchor0](layout/layoutAttributes/annotations/items/annotation/yanchor)
/// - [Layout.Title.YAnchor0](layout/layoutAttributes/updatemenus/items/updatemenu/yanchor)
/// - [Layout.Title.YAnchor0](layout/layoutAttributes/sliders/items/slider/yanchor)
public enum YAnchor0: String, Encodable {
    case auto
    case top
    case middle
    case bottom
}

/// Sets the orientation of the modebar.
/// - [Layout.ModeBar.Orientation0](layout/layoutAttributes/modebar/orientation)
/// - [Layout.ModeBar.Orientation0](layout/layoutAttributes/legend/orientation)
/// - [Layout.ModeBar.Orientation0](traces/scatter/attributes/orientation)
/// - [Layout.ModeBar.Orientation0](traces/bar/attributes/orientation)
/// - [Layout.ModeBar.Orientation0](traces/box/attributes/orientation)
/// - [Layout.ModeBar.Orientation0](traces/histogram/attributes/orientation)
/// - [Layout.ModeBar.Orientation0](traces/violin/attributes/orientation)
/// - [Layout.ModeBar.Orientation0](traces/funnel/attributes/orientation)
/// - [Layout.ModeBar.Orientation0](traces/waterfall/attributes/orientation)
/// - [Layout.ModeBar.Orientation0](traces/sankey/attributes/orientation)
public enum Orientation0: String, Encodable {
    case v
    case h
}

/// Sets the horizontal alignment of the text content within hover label box. 
///
/// Has an effect only if the hover label text spans more two or more lines
/// - [Layout.HoverLabel.Align0](layout/layoutAttributes/hoverlabel/align)
/// - [Layout.HoverLabel.Align0](traces/scatter/attributes/hoverlabel/align)
/// - [Layout.HoverLabel.Align0](traces/bar/attributes/hoverlabel/align)
/// - [Layout.HoverLabel.Align0](traces/box/attributes/hoverlabel/align)
/// - [Layout.HoverLabel.Align0](traces/heatmap/attributes/hoverlabel/align)
/// - [Layout.HoverLabel.Align0](traces/histogram/attributes/hoverlabel/align)
/// - [Layout.HoverLabel.Align0](traces/histogram2d/attributes/hoverlabel/align)
/// - [Layout.HoverLabel.Align0](traces/histogram2dcontour/attributes/hoverlabel/align)
/// - [Layout.HoverLabel.Align0](traces/contour/attributes/hoverlabel/align)
/// - [Layout.HoverLabel.Align0](traces/scatterternary/attributes/hoverlabel/align)
/// - [Layout.HoverLabel.Align0](traces/violin/attributes/hoverlabel/align)
/// - [Layout.HoverLabel.Align0](traces/funnel/attributes/hoverlabel/align)
/// - [Layout.HoverLabel.Align0](traces/waterfall/attributes/hoverlabel/align)
/// - [Layout.HoverLabel.Align0](traces/image/attributes/hoverlabel/align)
/// - [Layout.HoverLabel.Align0](traces/pie/attributes/hoverlabel/align)
/// - [Layout.HoverLabel.Align0](traces/sunburst/attributes/hoverlabel/align)
/// - [Layout.HoverLabel.Align0](traces/treemap/attributes/hoverlabel/align)
/// - [Layout.HoverLabel.Align0](traces/funnelarea/attributes/hoverlabel/align)
/// - [Layout.HoverLabel.Align0](traces/scatter3d/attributes/hoverlabel/align)
/// - [Layout.HoverLabel.Align0](traces/surface/attributes/hoverlabel/align)
/// - [Layout.HoverLabel.Align0](traces/isosurface/attributes/hoverlabel/align)
/// - [Layout.HoverLabel.Align0](traces/volume/attributes/hoverlabel/align)
/// - [Layout.HoverLabel.Align0](traces/mesh3d/attributes/hoverlabel/align)
/// - [Layout.HoverLabel.Align0](traces/cone/attributes/hoverlabel/align)
/// - [Layout.HoverLabel.Align0](traces/streamtube/attributes/hoverlabel/align)
/// - [Layout.HoverLabel.Align0](traces/scattergeo/attributes/hoverlabel/align)
/// - [Layout.HoverLabel.Align0](traces/choropleth/attributes/hoverlabel/align)
/// - [Layout.HoverLabel.Align0](traces/scattergl/attributes/hoverlabel/align)
/// - [Layout.HoverLabel.Align0](traces/splom/attributes/hoverlabel/align)
/// - [Layout.HoverLabel.Align0](traces/pointcloud/attributes/hoverlabel/align)
/// - [Layout.HoverLabel.Align0](traces/heatmapgl/attributes/hoverlabel/align)
/// - [Layout.HoverLabel.Align0](traces/scattermapbox/attributes/hoverlabel/align)
/// - [Layout.HoverLabel.Align0](traces/choroplethmapbox/attributes/hoverlabel/align)
/// - [Layout.HoverLabel.Align0](traces/densitymapbox/attributes/hoverlabel/align)
/// - [Layout.HoverLabel.Align0](traces/sankey/attributes/hoverlabel/align)
/// - [Layout.HoverLabel.Align0](traces/sankey/attributes/node/hoverlabel/align)
/// - [Layout.HoverLabel.Align0](traces/sankey/attributes/link/hoverlabel/align)
/// - [Layout.HoverLabel.Align0](traces/table/attributes/hoverlabel/align)
/// - [Layout.HoverLabel.Align0](traces/scattercarpet/attributes/hoverlabel/align)
/// - [Layout.HoverLabel.Align0](traces/ohlc/attributes/hoverlabel/align)
/// - [Layout.HoverLabel.Align0](traces/candlestick/attributes/hoverlabel/align)
/// - [Layout.HoverLabel.Align0](traces/scatterpolar/attributes/hoverlabel/align)
/// - [Layout.HoverLabel.Align0](traces/scatterpolargl/attributes/hoverlabel/align)
/// - [Layout.HoverLabel.Align0](traces/barpolar/attributes/hoverlabel/align)
/// - [Layout.HoverLabel.Align0](traces/area/attributes/hoverlabel/align)
public enum Align0: String, Encodable {
    case left
    case right
    case auto
}

/// Sets the default calendar system to use for interpreting and displaying dates throughout the plot.
/// - [Layout.Calendar0](layout/layoutAttributes/calendar)
/// - [Layout.Calendar0](layout/layoutAttributes/xaxis/calendar)
/// - [Layout.Calendar0](layout/layoutAttributes/yaxis/calendar)
/// - [Layout.Calendar0](layout/layoutAttributes/scene/xaxis/calendar)
/// - [Layout.Calendar0](layout/layoutAttributes/scene/yaxis/calendar)
/// - [Layout.Calendar0](layout/layoutAttributes/scene/zaxis/calendar)
/// - [Layout.Calendar0](layout/layoutAttributes/polar/radialaxis/calendar)
/// - [Layout.Calendar0](traces/scatter/attributes/xcalendar)
/// - [Layout.Calendar0](traces/scatter/attributes/ycalendar)
/// - [Layout.Calendar0](traces/bar/attributes/xcalendar)
/// - [Layout.Calendar0](traces/bar/attributes/ycalendar)
/// - [Layout.Calendar0](traces/box/attributes/xcalendar)
/// - [Layout.Calendar0](traces/box/attributes/ycalendar)
/// - [Layout.Calendar0](traces/heatmap/attributes/xcalendar)
/// - [Layout.Calendar0](traces/heatmap/attributes/ycalendar)
/// - [Layout.Calendar0](traces/histogram/attributes/xcalendar)
/// - [Layout.Calendar0](traces/histogram/attributes/ycalendar)
/// - [Layout.Calendar0](traces/histogram2d/attributes/xcalendar)
/// - [Layout.Calendar0](traces/histogram2d/attributes/ycalendar)
/// - [Layout.Calendar0](traces/histogram2dcontour/attributes/xcalendar)
/// - [Layout.Calendar0](traces/histogram2dcontour/attributes/ycalendar)
/// - [Layout.Calendar0](traces/contour/attributes/xcalendar)
/// - [Layout.Calendar0](traces/contour/attributes/ycalendar)
/// - [Layout.Calendar0](traces/scatter3d/attributes/xcalendar)
/// - [Layout.Calendar0](traces/scatter3d/attributes/ycalendar)
/// - [Layout.Calendar0](traces/scatter3d/attributes/zcalendar)
/// - [Layout.Calendar0](traces/surface/attributes/xcalendar)
/// - [Layout.Calendar0](traces/surface/attributes/ycalendar)
/// - [Layout.Calendar0](traces/surface/attributes/zcalendar)
/// - [Layout.Calendar0](traces/mesh3d/attributes/xcalendar)
/// - [Layout.Calendar0](traces/mesh3d/attributes/ycalendar)
/// - [Layout.Calendar0](traces/mesh3d/attributes/zcalendar)
/// - [Layout.Calendar0](traces/scattergl/attributes/xcalendar)
/// - [Layout.Calendar0](traces/scattergl/attributes/ycalendar)
/// - [Layout.Calendar0](traces/ohlc/attributes/xcalendar)
/// - [Layout.Calendar0](traces/candlestick/attributes/xcalendar)
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
/// - [Layout.XAxis.AutoRange0](layout/layoutAttributes/xaxis/autorange)
/// - [Layout.XAxis.AutoRange0](layout/layoutAttributes/yaxis/autorange)
/// - [Layout.XAxis.AutoRange0](layout/layoutAttributes/scene/xaxis/autorange)
/// - [Layout.XAxis.AutoRange0](layout/layoutAttributes/scene/yaxis/autorange)
/// - [Layout.XAxis.AutoRange0](layout/layoutAttributes/scene/zaxis/autorange)
/// - [Layout.XAxis.AutoRange0](layout/layoutAttributes/polar/radialaxis/autorange)
/// - [Layout.XAxis.AutoRange0](traces/carpet/attributes/aaxis/autorange)
/// - [Layout.XAxis.AutoRange0](traces/carpet/attributes/baxis/autorange)
public enum AutoRange0: String, Encodable {
    case `true` = "true"
    case `false` = "false"
    case reversed
}

/// If *normal*, the range is computed in relation to the extrema of the input data. 
///
/// If *tozero*`, the range extends to 0, regardless of the input data If *nonnegative*, the range
/// is non-negative, regardless of the input data. Applies only to linear axes.
/// - [Layout.XAxis.RangeMode0](layout/layoutAttributes/xaxis/rangemode)
/// - [Layout.XAxis.RangeMode0](layout/layoutAttributes/yaxis/rangemode)
/// - [Layout.XAxis.RangeMode0](layout/layoutAttributes/scene/xaxis/rangemode)
/// - [Layout.XAxis.RangeMode0](layout/layoutAttributes/scene/yaxis/rangemode)
/// - [Layout.XAxis.RangeMode0](layout/layoutAttributes/scene/zaxis/rangemode)
/// - [Layout.XAxis.RangeMode0](traces/carpet/attributes/aaxis/rangemode)
/// - [Layout.XAxis.RangeMode0](traces/carpet/attributes/baxis/rangemode)
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
/// - [Layout.XAxis.TickMode0](layout/layoutAttributes/xaxis/tickmode)
/// - [Layout.XAxis.TickMode0](layout/layoutAttributes/yaxis/tickmode)
/// - [Layout.XAxis.TickMode0](layout/layoutAttributes/ternary/aaxis/tickmode)
/// - [Layout.XAxis.TickMode0](layout/layoutAttributes/ternary/baxis/tickmode)
/// - [Layout.XAxis.TickMode0](layout/layoutAttributes/ternary/caxis/tickmode)
/// - [Layout.XAxis.TickMode0](layout/layoutAttributes/scene/xaxis/tickmode)
/// - [Layout.XAxis.TickMode0](layout/layoutAttributes/scene/yaxis/tickmode)
/// - [Layout.XAxis.TickMode0](layout/layoutAttributes/scene/zaxis/tickmode)
/// - [Layout.XAxis.TickMode0](layout/layoutAttributes/polar/radialaxis/tickmode)
/// - [Layout.XAxis.TickMode0](layout/layoutAttributes/polar/angularaxis/tickmode)
/// - [Layout.XAxis.TickMode0](layout/layoutAttributes/coloraxis/colorbar/tickmode)
/// - [Layout.XAxis.TickMode0](traces/scatter/attributes/marker/colorbar/tickmode)
/// - [Layout.XAxis.TickMode0](traces/bar/attributes/marker/colorbar/tickmode)
/// - [Layout.XAxis.TickMode0](traces/heatmap/attributes/colorbar/tickmode)
/// - [Layout.XAxis.TickMode0](traces/histogram/attributes/marker/colorbar/tickmode)
/// - [Layout.XAxis.TickMode0](traces/histogram2d/attributes/colorbar/tickmode)
/// - [Layout.XAxis.TickMode0](traces/histogram2dcontour/attributes/colorbar/tickmode)
/// - [Layout.XAxis.TickMode0](traces/contour/attributes/colorbar/tickmode)
/// - [Layout.XAxis.TickMode0](traces/scatterternary/attributes/marker/colorbar/tickmode)
/// - [Layout.XAxis.TickMode0](traces/funnel/attributes/marker/colorbar/tickmode)
/// - [Layout.XAxis.TickMode0](traces/sunburst/attributes/marker/colorbar/tickmode)
/// - [Layout.XAxis.TickMode0](traces/treemap/attributes/marker/colorbar/tickmode)
/// - [Layout.XAxis.TickMode0](traces/scatter3d/attributes/line/colorbar/tickmode)
/// - [Layout.XAxis.TickMode0](traces/scatter3d/attributes/marker/colorbar/tickmode)
/// - [Layout.XAxis.TickMode0](traces/surface/attributes/colorbar/tickmode)
/// - [Layout.XAxis.TickMode0](traces/isosurface/attributes/colorbar/tickmode)
/// - [Layout.XAxis.TickMode0](traces/volume/attributes/colorbar/tickmode)
/// - [Layout.XAxis.TickMode0](traces/mesh3d/attributes/colorbar/tickmode)
/// - [Layout.XAxis.TickMode0](traces/cone/attributes/colorbar/tickmode)
/// - [Layout.XAxis.TickMode0](traces/streamtube/attributes/colorbar/tickmode)
/// - [Layout.XAxis.TickMode0](traces/scattergeo/attributes/marker/colorbar/tickmode)
/// - [Layout.XAxis.TickMode0](traces/choropleth/attributes/colorbar/tickmode)
/// - [Layout.XAxis.TickMode0](traces/scattergl/attributes/marker/colorbar/tickmode)
/// - [Layout.XAxis.TickMode0](traces/splom/attributes/marker/colorbar/tickmode)
/// - [Layout.XAxis.TickMode0](traces/heatmapgl/attributes/colorbar/tickmode)
/// - [Layout.XAxis.TickMode0](traces/parcoords/attributes/line/colorbar/tickmode)
/// - [Layout.XAxis.TickMode0](traces/parcats/attributes/line/colorbar/tickmode)
/// - [Layout.XAxis.TickMode0](traces/scattermapbox/attributes/marker/colorbar/tickmode)
/// - [Layout.XAxis.TickMode0](traces/choroplethmapbox/attributes/colorbar/tickmode)
/// - [Layout.XAxis.TickMode0](traces/densitymapbox/attributes/colorbar/tickmode)
/// - [Layout.XAxis.TickMode0](traces/indicator/attributes/gauge/axis/tickmode)
/// - [Layout.XAxis.TickMode0](traces/scattercarpet/attributes/marker/colorbar/tickmode)
/// - [Layout.XAxis.TickMode0](traces/contourcarpet/attributes/colorbar/tickmode)
/// - [Layout.XAxis.TickMode0](traces/scatterpolar/attributes/marker/colorbar/tickmode)
/// - [Layout.XAxis.TickMode0](traces/scatterpolargl/attributes/marker/colorbar/tickmode)
/// - [Layout.XAxis.TickMode0](traces/barpolar/attributes/marker/colorbar/tickmode)
public enum TickMode0: String, Encodable {
    case auto
    case linear
    case array
}

/// Determines whether ticks are drawn or not. 
///
/// If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside
/// (inside) the axis lines.
/// - [Layout.XAxis.Ticks0](layout/layoutAttributes/xaxis/ticks)
/// - [Layout.XAxis.Ticks0](layout/layoutAttributes/yaxis/ticks)
/// - [Layout.XAxis.Ticks0](layout/layoutAttributes/ternary/aaxis/ticks)
/// - [Layout.XAxis.Ticks0](layout/layoutAttributes/ternary/baxis/ticks)
/// - [Layout.XAxis.Ticks0](layout/layoutAttributes/ternary/caxis/ticks)
/// - [Layout.XAxis.Ticks0](layout/layoutAttributes/scene/xaxis/ticks)
/// - [Layout.XAxis.Ticks0](layout/layoutAttributes/scene/yaxis/ticks)
/// - [Layout.XAxis.Ticks0](layout/layoutAttributes/scene/zaxis/ticks)
/// - [Layout.XAxis.Ticks0](layout/layoutAttributes/polar/radialaxis/ticks)
/// - [Layout.XAxis.Ticks0](layout/layoutAttributes/polar/angularaxis/ticks)
/// - [Layout.XAxis.Ticks0](layout/layoutAttributes/coloraxis/colorbar/ticks)
/// - [Layout.XAxis.Ticks0](traces/scatter/attributes/marker/colorbar/ticks)
/// - [Layout.XAxis.Ticks0](traces/bar/attributes/marker/colorbar/ticks)
/// - [Layout.XAxis.Ticks0](traces/heatmap/attributes/colorbar/ticks)
/// - [Layout.XAxis.Ticks0](traces/histogram/attributes/marker/colorbar/ticks)
/// - [Layout.XAxis.Ticks0](traces/histogram2d/attributes/colorbar/ticks)
/// - [Layout.XAxis.Ticks0](traces/histogram2dcontour/attributes/colorbar/ticks)
/// - [Layout.XAxis.Ticks0](traces/contour/attributes/colorbar/ticks)
/// - [Layout.XAxis.Ticks0](traces/scatterternary/attributes/marker/colorbar/ticks)
/// - [Layout.XAxis.Ticks0](traces/funnel/attributes/marker/colorbar/ticks)
/// - [Layout.XAxis.Ticks0](traces/sunburst/attributes/marker/colorbar/ticks)
/// - [Layout.XAxis.Ticks0](traces/treemap/attributes/marker/colorbar/ticks)
/// - [Layout.XAxis.Ticks0](traces/scatter3d/attributes/line/colorbar/ticks)
/// - [Layout.XAxis.Ticks0](traces/scatter3d/attributes/marker/colorbar/ticks)
/// - [Layout.XAxis.Ticks0](traces/surface/attributes/colorbar/ticks)
/// - [Layout.XAxis.Ticks0](traces/isosurface/attributes/colorbar/ticks)
/// - [Layout.XAxis.Ticks0](traces/volume/attributes/colorbar/ticks)
/// - [Layout.XAxis.Ticks0](traces/mesh3d/attributes/colorbar/ticks)
/// - [Layout.XAxis.Ticks0](traces/cone/attributes/colorbar/ticks)
/// - [Layout.XAxis.Ticks0](traces/streamtube/attributes/colorbar/ticks)
/// - [Layout.XAxis.Ticks0](traces/scattergeo/attributes/marker/colorbar/ticks)
/// - [Layout.XAxis.Ticks0](traces/choropleth/attributes/colorbar/ticks)
/// - [Layout.XAxis.Ticks0](traces/scattergl/attributes/marker/colorbar/ticks)
/// - [Layout.XAxis.Ticks0](traces/splom/attributes/marker/colorbar/ticks)
/// - [Layout.XAxis.Ticks0](traces/heatmapgl/attributes/colorbar/ticks)
/// - [Layout.XAxis.Ticks0](traces/parcoords/attributes/line/colorbar/ticks)
/// - [Layout.XAxis.Ticks0](traces/parcats/attributes/line/colorbar/ticks)
/// - [Layout.XAxis.Ticks0](traces/scattermapbox/attributes/marker/colorbar/ticks)
/// - [Layout.XAxis.Ticks0](traces/choroplethmapbox/attributes/colorbar/ticks)
/// - [Layout.XAxis.Ticks0](traces/densitymapbox/attributes/colorbar/ticks)
/// - [Layout.XAxis.Ticks0](traces/indicator/attributes/gauge/axis/ticks)
/// - [Layout.XAxis.Ticks0](traces/scattercarpet/attributes/marker/colorbar/ticks)
/// - [Layout.XAxis.Ticks0](traces/contourcarpet/attributes/colorbar/ticks)
/// - [Layout.XAxis.Ticks0](traces/scatterpolar/attributes/marker/colorbar/ticks)
/// - [Layout.XAxis.Ticks0](traces/scatterpolargl/attributes/marker/colorbar/ticks)
/// - [Layout.XAxis.Ticks0](traces/barpolar/attributes/marker/colorbar/ticks)
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
/// - [Layout.XAxis.Mirror0](layout/layoutAttributes/xaxis/mirror)
/// - [Layout.XAxis.Mirror0](layout/layoutAttributes/yaxis/mirror)
/// - [Layout.XAxis.Mirror0](layout/layoutAttributes/scene/xaxis/mirror)
/// - [Layout.XAxis.Mirror0](layout/layoutAttributes/scene/yaxis/mirror)
/// - [Layout.XAxis.Mirror0](layout/layoutAttributes/scene/zaxis/mirror)
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
/// - [Layout.XAxis.ShowTickPrefix0](layout/layoutAttributes/xaxis/showtickprefix)
/// - [Layout.XAxis.ShowTickPrefix0](layout/layoutAttributes/yaxis/showtickprefix)
/// - [Layout.XAxis.ShowTickPrefix0](layout/layoutAttributes/ternary/aaxis/showtickprefix)
/// - [Layout.XAxis.ShowTickPrefix0](layout/layoutAttributes/ternary/baxis/showtickprefix)
/// - [Layout.XAxis.ShowTickPrefix0](layout/layoutAttributes/ternary/caxis/showtickprefix)
/// - [Layout.XAxis.ShowTickPrefix0](layout/layoutAttributes/scene/xaxis/showtickprefix)
/// - [Layout.XAxis.ShowTickPrefix0](layout/layoutAttributes/scene/yaxis/showtickprefix)
/// - [Layout.XAxis.ShowTickPrefix0](layout/layoutAttributes/scene/zaxis/showtickprefix)
/// - [Layout.XAxis.ShowTickPrefix0](layout/layoutAttributes/polar/radialaxis/showtickprefix)
/// - [Layout.XAxis.ShowTickPrefix0](layout/layoutAttributes/polar/angularaxis/showtickprefix)
/// - [Layout.XAxis.ShowTickPrefix0](layout/layoutAttributes/coloraxis/colorbar/showtickprefix)
/// - [Layout.XAxis.ShowTickPrefix0](traces/scatter/attributes/marker/colorbar/showtickprefix)
/// - [Layout.XAxis.ShowTickPrefix0](traces/bar/attributes/marker/colorbar/showtickprefix)
/// - [Layout.XAxis.ShowTickPrefix0](traces/heatmap/attributes/colorbar/showtickprefix)
/// - [Layout.XAxis.ShowTickPrefix0](traces/histogram/attributes/marker/colorbar/showtickprefix)
/// - [Layout.XAxis.ShowTickPrefix0](traces/histogram2d/attributes/colorbar/showtickprefix)
/// - [Layout.XAxis.ShowTickPrefix0](traces/histogram2dcontour/attributes/colorbar/showtickprefix)
/// - [Layout.XAxis.ShowTickPrefix0](traces/contour/attributes/colorbar/showtickprefix)
/// - [Layout.XAxis.ShowTickPrefix0](traces/scatterternary/attributes/marker/colorbar/showtickprefix)
/// - [Layout.XAxis.ShowTickPrefix0](traces/funnel/attributes/marker/colorbar/showtickprefix)
/// - [Layout.XAxis.ShowTickPrefix0](traces/sunburst/attributes/marker/colorbar/showtickprefix)
/// - [Layout.XAxis.ShowTickPrefix0](traces/treemap/attributes/marker/colorbar/showtickprefix)
/// - [Layout.XAxis.ShowTickPrefix0](traces/scatter3d/attributes/line/colorbar/showtickprefix)
/// - [Layout.XAxis.ShowTickPrefix0](traces/scatter3d/attributes/marker/colorbar/showtickprefix)
/// - [Layout.XAxis.ShowTickPrefix0](traces/surface/attributes/colorbar/showtickprefix)
/// - [Layout.XAxis.ShowTickPrefix0](traces/isosurface/attributes/colorbar/showtickprefix)
/// - [Layout.XAxis.ShowTickPrefix0](traces/volume/attributes/colorbar/showtickprefix)
/// - [Layout.XAxis.ShowTickPrefix0](traces/mesh3d/attributes/colorbar/showtickprefix)
/// - [Layout.XAxis.ShowTickPrefix0](traces/cone/attributes/colorbar/showtickprefix)
/// - [Layout.XAxis.ShowTickPrefix0](traces/streamtube/attributes/colorbar/showtickprefix)
/// - [Layout.XAxis.ShowTickPrefix0](traces/scattergeo/attributes/marker/colorbar/showtickprefix)
/// - [Layout.XAxis.ShowTickPrefix0](traces/choropleth/attributes/colorbar/showtickprefix)
/// - [Layout.XAxis.ShowTickPrefix0](traces/scattergl/attributes/marker/colorbar/showtickprefix)
/// - [Layout.XAxis.ShowTickPrefix0](traces/splom/attributes/marker/colorbar/showtickprefix)
/// - [Layout.XAxis.ShowTickPrefix0](traces/heatmapgl/attributes/colorbar/showtickprefix)
/// - [Layout.XAxis.ShowTickPrefix0](traces/parcoords/attributes/line/colorbar/showtickprefix)
/// - [Layout.XAxis.ShowTickPrefix0](traces/parcats/attributes/line/colorbar/showtickprefix)
/// - [Layout.XAxis.ShowTickPrefix0](traces/scattermapbox/attributes/marker/colorbar/showtickprefix)
/// - [Layout.XAxis.ShowTickPrefix0](traces/choroplethmapbox/attributes/colorbar/showtickprefix)
/// - [Layout.XAxis.ShowTickPrefix0](traces/densitymapbox/attributes/colorbar/showtickprefix)
/// - [Layout.XAxis.ShowTickPrefix0](traces/indicator/attributes/gauge/axis/showtickprefix)
/// - [Layout.XAxis.ShowTickPrefix0](traces/carpet/attributes/aaxis/showtickprefix)
/// - [Layout.XAxis.ShowTickPrefix0](traces/carpet/attributes/baxis/showtickprefix)
/// - [Layout.XAxis.ShowTickPrefix0](traces/scattercarpet/attributes/marker/colorbar/showtickprefix)
/// - [Layout.XAxis.ShowTickPrefix0](traces/contourcarpet/attributes/colorbar/showtickprefix)
/// - [Layout.XAxis.ShowTickPrefix0](traces/scatterpolar/attributes/marker/colorbar/showtickprefix)
/// - [Layout.XAxis.ShowTickPrefix0](traces/scatterpolargl/attributes/marker/colorbar/showtickprefix)
/// - [Layout.XAxis.ShowTickPrefix0](traces/barpolar/attributes/marker/colorbar/showtickprefix)
public enum ShowTickPrefix0: String, Encodable {
    case all
    case first
    case last
    case none
}

/// Same as `showtickprefix` but for tick suffixes.
/// - [Layout.XAxis.ShowTickSuffix0](layout/layoutAttributes/xaxis/showticksuffix)
/// - [Layout.XAxis.ShowTickSuffix0](layout/layoutAttributes/yaxis/showticksuffix)
/// - [Layout.XAxis.ShowTickSuffix0](layout/layoutAttributes/ternary/aaxis/showticksuffix)
/// - [Layout.XAxis.ShowTickSuffix0](layout/layoutAttributes/ternary/baxis/showticksuffix)
/// - [Layout.XAxis.ShowTickSuffix0](layout/layoutAttributes/ternary/caxis/showticksuffix)
/// - [Layout.XAxis.ShowTickSuffix0](layout/layoutAttributes/scene/xaxis/showticksuffix)
/// - [Layout.XAxis.ShowTickSuffix0](layout/layoutAttributes/scene/yaxis/showticksuffix)
/// - [Layout.XAxis.ShowTickSuffix0](layout/layoutAttributes/scene/zaxis/showticksuffix)
/// - [Layout.XAxis.ShowTickSuffix0](layout/layoutAttributes/polar/radialaxis/showticksuffix)
/// - [Layout.XAxis.ShowTickSuffix0](layout/layoutAttributes/polar/angularaxis/showticksuffix)
/// - [Layout.XAxis.ShowTickSuffix0](layout/layoutAttributes/coloraxis/colorbar/showticksuffix)
/// - [Layout.XAxis.ShowTickSuffix0](traces/scatter/attributes/marker/colorbar/showticksuffix)
/// - [Layout.XAxis.ShowTickSuffix0](traces/bar/attributes/marker/colorbar/showticksuffix)
/// - [Layout.XAxis.ShowTickSuffix0](traces/heatmap/attributes/colorbar/showticksuffix)
/// - [Layout.XAxis.ShowTickSuffix0](traces/histogram/attributes/marker/colorbar/showticksuffix)
/// - [Layout.XAxis.ShowTickSuffix0](traces/histogram2d/attributes/colorbar/showticksuffix)
/// - [Layout.XAxis.ShowTickSuffix0](traces/histogram2dcontour/attributes/colorbar/showticksuffix)
/// - [Layout.XAxis.ShowTickSuffix0](traces/contour/attributes/colorbar/showticksuffix)
/// - [Layout.XAxis.ShowTickSuffix0](traces/scatterternary/attributes/marker/colorbar/showticksuffix)
/// - [Layout.XAxis.ShowTickSuffix0](traces/funnel/attributes/marker/colorbar/showticksuffix)
/// - [Layout.XAxis.ShowTickSuffix0](traces/sunburst/attributes/marker/colorbar/showticksuffix)
/// - [Layout.XAxis.ShowTickSuffix0](traces/treemap/attributes/marker/colorbar/showticksuffix)
/// - [Layout.XAxis.ShowTickSuffix0](traces/scatter3d/attributes/line/colorbar/showticksuffix)
/// - [Layout.XAxis.ShowTickSuffix0](traces/scatter3d/attributes/marker/colorbar/showticksuffix)
/// - [Layout.XAxis.ShowTickSuffix0](traces/surface/attributes/colorbar/showticksuffix)
/// - [Layout.XAxis.ShowTickSuffix0](traces/isosurface/attributes/colorbar/showticksuffix)
/// - [Layout.XAxis.ShowTickSuffix0](traces/volume/attributes/colorbar/showticksuffix)
/// - [Layout.XAxis.ShowTickSuffix0](traces/mesh3d/attributes/colorbar/showticksuffix)
/// - [Layout.XAxis.ShowTickSuffix0](traces/cone/attributes/colorbar/showticksuffix)
/// - [Layout.XAxis.ShowTickSuffix0](traces/streamtube/attributes/colorbar/showticksuffix)
/// - [Layout.XAxis.ShowTickSuffix0](traces/scattergeo/attributes/marker/colorbar/showticksuffix)
/// - [Layout.XAxis.ShowTickSuffix0](traces/choropleth/attributes/colorbar/showticksuffix)
/// - [Layout.XAxis.ShowTickSuffix0](traces/scattergl/attributes/marker/colorbar/showticksuffix)
/// - [Layout.XAxis.ShowTickSuffix0](traces/splom/attributes/marker/colorbar/showticksuffix)
/// - [Layout.XAxis.ShowTickSuffix0](traces/heatmapgl/attributes/colorbar/showticksuffix)
/// - [Layout.XAxis.ShowTickSuffix0](traces/parcoords/attributes/line/colorbar/showticksuffix)
/// - [Layout.XAxis.ShowTickSuffix0](traces/parcats/attributes/line/colorbar/showticksuffix)
/// - [Layout.XAxis.ShowTickSuffix0](traces/scattermapbox/attributes/marker/colorbar/showticksuffix)
/// - [Layout.XAxis.ShowTickSuffix0](traces/choroplethmapbox/attributes/colorbar/showticksuffix)
/// - [Layout.XAxis.ShowTickSuffix0](traces/densitymapbox/attributes/colorbar/showticksuffix)
/// - [Layout.XAxis.ShowTickSuffix0](traces/indicator/attributes/gauge/axis/showticksuffix)
/// - [Layout.XAxis.ShowTickSuffix0](traces/carpet/attributes/aaxis/showticksuffix)
/// - [Layout.XAxis.ShowTickSuffix0](traces/carpet/attributes/baxis/showticksuffix)
/// - [Layout.XAxis.ShowTickSuffix0](traces/scattercarpet/attributes/marker/colorbar/showticksuffix)
/// - [Layout.XAxis.ShowTickSuffix0](traces/contourcarpet/attributes/colorbar/showticksuffix)
/// - [Layout.XAxis.ShowTickSuffix0](traces/scatterpolar/attributes/marker/colorbar/showticksuffix)
/// - [Layout.XAxis.ShowTickSuffix0](traces/scatterpolargl/attributes/marker/colorbar/showticksuffix)
/// - [Layout.XAxis.ShowTickSuffix0](traces/barpolar/attributes/marker/colorbar/showticksuffix)
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
/// - [Layout.XAxis.ShowExponent0](layout/layoutAttributes/xaxis/showexponent)
/// - [Layout.XAxis.ShowExponent0](layout/layoutAttributes/yaxis/showexponent)
/// - [Layout.XAxis.ShowExponent0](layout/layoutAttributes/ternary/aaxis/showexponent)
/// - [Layout.XAxis.ShowExponent0](layout/layoutAttributes/ternary/baxis/showexponent)
/// - [Layout.XAxis.ShowExponent0](layout/layoutAttributes/ternary/caxis/showexponent)
/// - [Layout.XAxis.ShowExponent0](layout/layoutAttributes/scene/xaxis/showexponent)
/// - [Layout.XAxis.ShowExponent0](layout/layoutAttributes/scene/yaxis/showexponent)
/// - [Layout.XAxis.ShowExponent0](layout/layoutAttributes/scene/zaxis/showexponent)
/// - [Layout.XAxis.ShowExponent0](layout/layoutAttributes/polar/radialaxis/showexponent)
/// - [Layout.XAxis.ShowExponent0](layout/layoutAttributes/polar/angularaxis/showexponent)
/// - [Layout.XAxis.ShowExponent0](layout/layoutAttributes/coloraxis/colorbar/showexponent)
/// - [Layout.XAxis.ShowExponent0](traces/scatter/attributes/marker/colorbar/showexponent)
/// - [Layout.XAxis.ShowExponent0](traces/bar/attributes/marker/colorbar/showexponent)
/// - [Layout.XAxis.ShowExponent0](traces/heatmap/attributes/colorbar/showexponent)
/// - [Layout.XAxis.ShowExponent0](traces/histogram/attributes/marker/colorbar/showexponent)
/// - [Layout.XAxis.ShowExponent0](traces/histogram2d/attributes/colorbar/showexponent)
/// - [Layout.XAxis.ShowExponent0](traces/histogram2dcontour/attributes/colorbar/showexponent)
/// - [Layout.XAxis.ShowExponent0](traces/contour/attributes/colorbar/showexponent)
/// - [Layout.XAxis.ShowExponent0](traces/scatterternary/attributes/marker/colorbar/showexponent)
/// - [Layout.XAxis.ShowExponent0](traces/funnel/attributes/marker/colorbar/showexponent)
/// - [Layout.XAxis.ShowExponent0](traces/sunburst/attributes/marker/colorbar/showexponent)
/// - [Layout.XAxis.ShowExponent0](traces/treemap/attributes/marker/colorbar/showexponent)
/// - [Layout.XAxis.ShowExponent0](traces/scatter3d/attributes/line/colorbar/showexponent)
/// - [Layout.XAxis.ShowExponent0](traces/scatter3d/attributes/marker/colorbar/showexponent)
/// - [Layout.XAxis.ShowExponent0](traces/surface/attributes/colorbar/showexponent)
/// - [Layout.XAxis.ShowExponent0](traces/isosurface/attributes/colorbar/showexponent)
/// - [Layout.XAxis.ShowExponent0](traces/volume/attributes/colorbar/showexponent)
/// - [Layout.XAxis.ShowExponent0](traces/mesh3d/attributes/colorbar/showexponent)
/// - [Layout.XAxis.ShowExponent0](traces/cone/attributes/colorbar/showexponent)
/// - [Layout.XAxis.ShowExponent0](traces/streamtube/attributes/colorbar/showexponent)
/// - [Layout.XAxis.ShowExponent0](traces/scattergeo/attributes/marker/colorbar/showexponent)
/// - [Layout.XAxis.ShowExponent0](traces/choropleth/attributes/colorbar/showexponent)
/// - [Layout.XAxis.ShowExponent0](traces/scattergl/attributes/marker/colorbar/showexponent)
/// - [Layout.XAxis.ShowExponent0](traces/splom/attributes/marker/colorbar/showexponent)
/// - [Layout.XAxis.ShowExponent0](traces/heatmapgl/attributes/colorbar/showexponent)
/// - [Layout.XAxis.ShowExponent0](traces/parcoords/attributes/line/colorbar/showexponent)
/// - [Layout.XAxis.ShowExponent0](traces/parcats/attributes/line/colorbar/showexponent)
/// - [Layout.XAxis.ShowExponent0](traces/scattermapbox/attributes/marker/colorbar/showexponent)
/// - [Layout.XAxis.ShowExponent0](traces/choroplethmapbox/attributes/colorbar/showexponent)
/// - [Layout.XAxis.ShowExponent0](traces/densitymapbox/attributes/colorbar/showexponent)
/// - [Layout.XAxis.ShowExponent0](traces/indicator/attributes/gauge/axis/showexponent)
/// - [Layout.XAxis.ShowExponent0](traces/carpet/attributes/aaxis/showexponent)
/// - [Layout.XAxis.ShowExponent0](traces/carpet/attributes/baxis/showexponent)
/// - [Layout.XAxis.ShowExponent0](traces/scattercarpet/attributes/marker/colorbar/showexponent)
/// - [Layout.XAxis.ShowExponent0](traces/contourcarpet/attributes/colorbar/showexponent)
/// - [Layout.XAxis.ShowExponent0](traces/scatterpolar/attributes/marker/colorbar/showexponent)
/// - [Layout.XAxis.ShowExponent0](traces/scatterpolargl/attributes/marker/colorbar/showexponent)
/// - [Layout.XAxis.ShowExponent0](traces/barpolar/attributes/marker/colorbar/showexponent)
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
/// - [Layout.XAxis.ExponentFormat0](layout/layoutAttributes/xaxis/exponentformat)
/// - [Layout.XAxis.ExponentFormat0](layout/layoutAttributes/yaxis/exponentformat)
/// - [Layout.XAxis.ExponentFormat0](layout/layoutAttributes/ternary/aaxis/exponentformat)
/// - [Layout.XAxis.ExponentFormat0](layout/layoutAttributes/ternary/baxis/exponentformat)
/// - [Layout.XAxis.ExponentFormat0](layout/layoutAttributes/ternary/caxis/exponentformat)
/// - [Layout.XAxis.ExponentFormat0](layout/layoutAttributes/scene/xaxis/exponentformat)
/// - [Layout.XAxis.ExponentFormat0](layout/layoutAttributes/scene/yaxis/exponentformat)
/// - [Layout.XAxis.ExponentFormat0](layout/layoutAttributes/scene/zaxis/exponentformat)
/// - [Layout.XAxis.ExponentFormat0](layout/layoutAttributes/polar/radialaxis/exponentformat)
/// - [Layout.XAxis.ExponentFormat0](layout/layoutAttributes/polar/angularaxis/exponentformat)
/// - [Layout.XAxis.ExponentFormat0](layout/layoutAttributes/coloraxis/colorbar/exponentformat)
/// - [Layout.XAxis.ExponentFormat0](traces/scatter/attributes/marker/colorbar/exponentformat)
/// - [Layout.XAxis.ExponentFormat0](traces/bar/attributes/marker/colorbar/exponentformat)
/// - [Layout.XAxis.ExponentFormat0](traces/heatmap/attributes/colorbar/exponentformat)
/// - [Layout.XAxis.ExponentFormat0](traces/histogram/attributes/marker/colorbar/exponentformat)
/// - [Layout.XAxis.ExponentFormat0](traces/histogram2d/attributes/colorbar/exponentformat)
/// - [Layout.XAxis.ExponentFormat0](traces/histogram2dcontour/attributes/colorbar/exponentformat)
/// - [Layout.XAxis.ExponentFormat0](traces/contour/attributes/colorbar/exponentformat)
/// - [Layout.XAxis.ExponentFormat0](traces/scatterternary/attributes/marker/colorbar/exponentformat)
/// - [Layout.XAxis.ExponentFormat0](traces/funnel/attributes/marker/colorbar/exponentformat)
/// - [Layout.XAxis.ExponentFormat0](traces/sunburst/attributes/marker/colorbar/exponentformat)
/// - [Layout.XAxis.ExponentFormat0](traces/treemap/attributes/marker/colorbar/exponentformat)
/// - [Layout.XAxis.ExponentFormat0](traces/scatter3d/attributes/line/colorbar/exponentformat)
/// - [Layout.XAxis.ExponentFormat0](traces/scatter3d/attributes/marker/colorbar/exponentformat)
/// - [Layout.XAxis.ExponentFormat0](traces/surface/attributes/colorbar/exponentformat)
/// - [Layout.XAxis.ExponentFormat0](traces/isosurface/attributes/colorbar/exponentformat)
/// - [Layout.XAxis.ExponentFormat0](traces/volume/attributes/colorbar/exponentformat)
/// - [Layout.XAxis.ExponentFormat0](traces/mesh3d/attributes/colorbar/exponentformat)
/// - [Layout.XAxis.ExponentFormat0](traces/cone/attributes/colorbar/exponentformat)
/// - [Layout.XAxis.ExponentFormat0](traces/streamtube/attributes/colorbar/exponentformat)
/// - [Layout.XAxis.ExponentFormat0](traces/scattergeo/attributes/marker/colorbar/exponentformat)
/// - [Layout.XAxis.ExponentFormat0](traces/choropleth/attributes/colorbar/exponentformat)
/// - [Layout.XAxis.ExponentFormat0](traces/scattergl/attributes/marker/colorbar/exponentformat)
/// - [Layout.XAxis.ExponentFormat0](traces/splom/attributes/marker/colorbar/exponentformat)
/// - [Layout.XAxis.ExponentFormat0](traces/heatmapgl/attributes/colorbar/exponentformat)
/// - [Layout.XAxis.ExponentFormat0](traces/parcoords/attributes/line/colorbar/exponentformat)
/// - [Layout.XAxis.ExponentFormat0](traces/parcats/attributes/line/colorbar/exponentformat)
/// - [Layout.XAxis.ExponentFormat0](traces/scattermapbox/attributes/marker/colorbar/exponentformat)
/// - [Layout.XAxis.ExponentFormat0](traces/choroplethmapbox/attributes/colorbar/exponentformat)
/// - [Layout.XAxis.ExponentFormat0](traces/densitymapbox/attributes/colorbar/exponentformat)
/// - [Layout.XAxis.ExponentFormat0](traces/indicator/attributes/gauge/axis/exponentformat)
/// - [Layout.XAxis.ExponentFormat0](traces/carpet/attributes/aaxis/exponentformat)
/// - [Layout.XAxis.ExponentFormat0](traces/carpet/attributes/baxis/exponentformat)
/// - [Layout.XAxis.ExponentFormat0](traces/scattercarpet/attributes/marker/colorbar/exponentformat)
/// - [Layout.XAxis.ExponentFormat0](traces/contourcarpet/attributes/colorbar/exponentformat)
/// - [Layout.XAxis.ExponentFormat0](traces/scatterpolar/attributes/marker/colorbar/exponentformat)
/// - [Layout.XAxis.ExponentFormat0](traces/scatterpolargl/attributes/marker/colorbar/exponentformat)
/// - [Layout.XAxis.ExponentFormat0](traces/barpolar/attributes/marker/colorbar/exponentformat)
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
/// - [Layout.XAxis.Layer0](layout/layoutAttributes/xaxis/layer)
/// - [Layout.XAxis.Layer0](layout/layoutAttributes/yaxis/layer)
/// - [Layout.XAxis.Layer0](layout/layoutAttributes/ternary/aaxis/layer)
/// - [Layout.XAxis.Layer0](layout/layoutAttributes/ternary/baxis/layer)
/// - [Layout.XAxis.Layer0](layout/layoutAttributes/ternary/caxis/layer)
/// - [Layout.XAxis.Layer0](layout/layoutAttributes/polar/radialaxis/layer)
/// - [Layout.XAxis.Layer0](layout/layoutAttributes/polar/angularaxis/layer)
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
/// - [Layout.XAxis.CategoryOrder0](layout/layoutAttributes/xaxis/categoryorder)
/// - [Layout.XAxis.CategoryOrder0](layout/layoutAttributes/yaxis/categoryorder)
/// - [Layout.XAxis.CategoryOrder0](layout/layoutAttributes/scene/xaxis/categoryorder)
/// - [Layout.XAxis.CategoryOrder0](layout/layoutAttributes/scene/yaxis/categoryorder)
/// - [Layout.XAxis.CategoryOrder0](layout/layoutAttributes/scene/zaxis/categoryorder)
/// - [Layout.XAxis.CategoryOrder0](layout/layoutAttributes/polar/radialaxis/categoryorder)
/// - [Layout.XAxis.CategoryOrder0](layout/layoutAttributes/polar/angularaxis/categoryorder)
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
/// - [Layout.Scene.Annotations.Items.Annotation.Align1](layout/layoutAttributes/scene/annotations/items/annotation/align)
/// - [Layout.Scene.Annotations.Items.Annotation.Align1](layout/layoutAttributes/annotations/items/annotation/align)
/// - [Layout.Scene.Annotations.Items.Annotation.Align1](traces/indicator/attributes/align)
/// - [Layout.Scene.Annotations.Items.Annotation.Align1](traces/indicator/attributes/title/align)
/// - [Layout.Scene.Annotations.Items.Annotation.Align1](traces/table/attributes/header/align)
/// - [Layout.Scene.Annotations.Items.Annotation.Align1](traces/table/attributes/cells/align)
public enum Align1: String, Encodable {
    case left
    case center
    case right
}

/// Sets the positions of the `text` elements with respects to the (x,y) coordinates.
/// - [Layout.Mapbox.Layers.Items.Layer.Symbol.TextPosition0](layout/layoutAttributes/mapbox/layers/items/layer/symbol/textposition)
/// - [Layout.Mapbox.Layers.Items.Layer.Symbol.TextPosition0](traces/scatter/attributes/textposition)
/// - [Layout.Mapbox.Layers.Items.Layer.Symbol.TextPosition0](traces/scatterternary/attributes/textposition)
/// - [Layout.Mapbox.Layers.Items.Layer.Symbol.TextPosition0](traces/treemap/attributes/textposition)
/// - [Layout.Mapbox.Layers.Items.Layer.Symbol.TextPosition0](traces/scatter3d/attributes/textposition)
/// - [Layout.Mapbox.Layers.Items.Layer.Symbol.TextPosition0](traces/scattergeo/attributes/textposition)
/// - [Layout.Mapbox.Layers.Items.Layer.Symbol.TextPosition0](traces/scattergl/attributes/textposition)
/// - [Layout.Mapbox.Layers.Items.Layer.Symbol.TextPosition0](traces/scattermapbox/attributes/textposition)
/// - [Layout.Mapbox.Layers.Items.Layer.Symbol.TextPosition0](traces/scattercarpet/attributes/textposition)
/// - [Layout.Mapbox.Layers.Items.Layer.Symbol.TextPosition0](traces/scatterpolar/attributes/textposition)
/// - [Layout.Mapbox.Layers.Items.Layer.Symbol.TextPosition0](traces/scatterpolargl/attributes/textposition)
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
/// - [Layout.Images.Items.Image.XAnchor1](layout/layoutAttributes/images/items/image/xanchor)
/// - [Layout.Images.Items.Image.XAnchor1](layout/layoutAttributes/sliders/items/slider/currentvalue/xanchor)
/// - [Layout.Images.Items.Image.XAnchor1](layout/layoutAttributes/coloraxis/colorbar/xanchor)
/// - [Layout.Images.Items.Image.XAnchor1](traces/scatter/attributes/marker/colorbar/xanchor)
/// - [Layout.Images.Items.Image.XAnchor1](traces/bar/attributes/marker/colorbar/xanchor)
/// - [Layout.Images.Items.Image.XAnchor1](traces/heatmap/attributes/colorbar/xanchor)
/// - [Layout.Images.Items.Image.XAnchor1](traces/histogram/attributes/marker/colorbar/xanchor)
/// - [Layout.Images.Items.Image.XAnchor1](traces/histogram2d/attributes/colorbar/xanchor)
/// - [Layout.Images.Items.Image.XAnchor1](traces/histogram2dcontour/attributes/colorbar/xanchor)
/// - [Layout.Images.Items.Image.XAnchor1](traces/contour/attributes/colorbar/xanchor)
/// - [Layout.Images.Items.Image.XAnchor1](traces/scatterternary/attributes/marker/colorbar/xanchor)
/// - [Layout.Images.Items.Image.XAnchor1](traces/funnel/attributes/marker/colorbar/xanchor)
/// - [Layout.Images.Items.Image.XAnchor1](traces/sunburst/attributes/marker/colorbar/xanchor)
/// - [Layout.Images.Items.Image.XAnchor1](traces/treemap/attributes/marker/colorbar/xanchor)
/// - [Layout.Images.Items.Image.XAnchor1](traces/scatter3d/attributes/line/colorbar/xanchor)
/// - [Layout.Images.Items.Image.XAnchor1](traces/scatter3d/attributes/marker/colorbar/xanchor)
/// - [Layout.Images.Items.Image.XAnchor1](traces/surface/attributes/colorbar/xanchor)
/// - [Layout.Images.Items.Image.XAnchor1](traces/isosurface/attributes/colorbar/xanchor)
/// - [Layout.Images.Items.Image.XAnchor1](traces/volume/attributes/colorbar/xanchor)
/// - [Layout.Images.Items.Image.XAnchor1](traces/mesh3d/attributes/colorbar/xanchor)
/// - [Layout.Images.Items.Image.XAnchor1](traces/cone/attributes/colorbar/xanchor)
/// - [Layout.Images.Items.Image.XAnchor1](traces/streamtube/attributes/colorbar/xanchor)
/// - [Layout.Images.Items.Image.XAnchor1](traces/scattergeo/attributes/marker/colorbar/xanchor)
/// - [Layout.Images.Items.Image.XAnchor1](traces/choropleth/attributes/colorbar/xanchor)
/// - [Layout.Images.Items.Image.XAnchor1](traces/scattergl/attributes/marker/colorbar/xanchor)
/// - [Layout.Images.Items.Image.XAnchor1](traces/splom/attributes/marker/colorbar/xanchor)
/// - [Layout.Images.Items.Image.XAnchor1](traces/heatmapgl/attributes/colorbar/xanchor)
/// - [Layout.Images.Items.Image.XAnchor1](traces/parcoords/attributes/line/colorbar/xanchor)
/// - [Layout.Images.Items.Image.XAnchor1](traces/parcats/attributes/line/colorbar/xanchor)
/// - [Layout.Images.Items.Image.XAnchor1](traces/scattermapbox/attributes/marker/colorbar/xanchor)
/// - [Layout.Images.Items.Image.XAnchor1](traces/choroplethmapbox/attributes/colorbar/xanchor)
/// - [Layout.Images.Items.Image.XAnchor1](traces/densitymapbox/attributes/colorbar/xanchor)
/// - [Layout.Images.Items.Image.XAnchor1](traces/scattercarpet/attributes/marker/colorbar/xanchor)
/// - [Layout.Images.Items.Image.XAnchor1](traces/contourcarpet/attributes/colorbar/xanchor)
/// - [Layout.Images.Items.Image.XAnchor1](traces/scatterpolar/attributes/marker/colorbar/xanchor)
/// - [Layout.Images.Items.Image.XAnchor1](traces/scatterpolargl/attributes/marker/colorbar/xanchor)
/// - [Layout.Images.Items.Image.XAnchor1](traces/barpolar/attributes/marker/colorbar/xanchor)
public enum XAnchor1: String, Encodable {
    case left
    case center
    case right
}

/// Sets the anchor for the y position.
/// - [Layout.Images.Items.Image.YAnchor1](layout/layoutAttributes/images/items/image/yanchor)
/// - [Layout.Images.Items.Image.YAnchor1](layout/layoutAttributes/coloraxis/colorbar/yanchor)
/// - [Layout.Images.Items.Image.YAnchor1](traces/scatter/attributes/marker/colorbar/yanchor)
/// - [Layout.Images.Items.Image.YAnchor1](traces/bar/attributes/marker/colorbar/yanchor)
/// - [Layout.Images.Items.Image.YAnchor1](traces/heatmap/attributes/colorbar/yanchor)
/// - [Layout.Images.Items.Image.YAnchor1](traces/histogram/attributes/marker/colorbar/yanchor)
/// - [Layout.Images.Items.Image.YAnchor1](traces/histogram2d/attributes/colorbar/yanchor)
/// - [Layout.Images.Items.Image.YAnchor1](traces/histogram2dcontour/attributes/colorbar/yanchor)
/// - [Layout.Images.Items.Image.YAnchor1](traces/contour/attributes/colorbar/yanchor)
/// - [Layout.Images.Items.Image.YAnchor1](traces/scatterternary/attributes/marker/colorbar/yanchor)
/// - [Layout.Images.Items.Image.YAnchor1](traces/funnel/attributes/marker/colorbar/yanchor)
/// - [Layout.Images.Items.Image.YAnchor1](traces/sunburst/attributes/marker/colorbar/yanchor)
/// - [Layout.Images.Items.Image.YAnchor1](traces/treemap/attributes/marker/colorbar/yanchor)
/// - [Layout.Images.Items.Image.YAnchor1](traces/scatter3d/attributes/line/colorbar/yanchor)
/// - [Layout.Images.Items.Image.YAnchor1](traces/scatter3d/attributes/marker/colorbar/yanchor)
/// - [Layout.Images.Items.Image.YAnchor1](traces/surface/attributes/colorbar/yanchor)
/// - [Layout.Images.Items.Image.YAnchor1](traces/isosurface/attributes/colorbar/yanchor)
/// - [Layout.Images.Items.Image.YAnchor1](traces/volume/attributes/colorbar/yanchor)
/// - [Layout.Images.Items.Image.YAnchor1](traces/mesh3d/attributes/colorbar/yanchor)
/// - [Layout.Images.Items.Image.YAnchor1](traces/cone/attributes/colorbar/yanchor)
/// - [Layout.Images.Items.Image.YAnchor1](traces/streamtube/attributes/colorbar/yanchor)
/// - [Layout.Images.Items.Image.YAnchor1](traces/scattergeo/attributes/marker/colorbar/yanchor)
/// - [Layout.Images.Items.Image.YAnchor1](traces/choropleth/attributes/colorbar/yanchor)
/// - [Layout.Images.Items.Image.YAnchor1](traces/scattergl/attributes/marker/colorbar/yanchor)
/// - [Layout.Images.Items.Image.YAnchor1](traces/splom/attributes/marker/colorbar/yanchor)
/// - [Layout.Images.Items.Image.YAnchor1](traces/heatmapgl/attributes/colorbar/yanchor)
/// - [Layout.Images.Items.Image.YAnchor1](traces/parcoords/attributes/line/colorbar/yanchor)
/// - [Layout.Images.Items.Image.YAnchor1](traces/parcats/attributes/line/colorbar/yanchor)
/// - [Layout.Images.Items.Image.YAnchor1](traces/scattermapbox/attributes/marker/colorbar/yanchor)
/// - [Layout.Images.Items.Image.YAnchor1](traces/choroplethmapbox/attributes/colorbar/yanchor)
/// - [Layout.Images.Items.Image.YAnchor1](traces/densitymapbox/attributes/colorbar/yanchor)
/// - [Layout.Images.Items.Image.YAnchor1](traces/scattercarpet/attributes/marker/colorbar/yanchor)
/// - [Layout.Images.Items.Image.YAnchor1](traces/contourcarpet/attributes/colorbar/yanchor)
/// - [Layout.Images.Items.Image.YAnchor1](traces/scatterpolar/attributes/marker/colorbar/yanchor)
/// - [Layout.Images.Items.Image.YAnchor1](traces/scatterpolargl/attributes/marker/colorbar/yanchor)
/// - [Layout.Images.Items.Image.YAnchor1](traces/barpolar/attributes/marker/colorbar/yanchor)
public enum YAnchor1: String, Encodable {
    case top
    case middle
    case bottom
}

/// Determines whether this slider length is set in units of plot *fraction* or in *pixels. 
///
/// Use `len` to set the value.
/// - [Layout.Sliders.Items.Slider.LengthMode0](layout/layoutAttributes/sliders/items/slider/lenmode)
/// - [Layout.Sliders.Items.Slider.LengthMode0](layout/layoutAttributes/coloraxis/colorbar/lenmode)
/// - [Layout.Sliders.Items.Slider.LengthMode0](traces/scatter/attributes/marker/colorbar/lenmode)
/// - [Layout.Sliders.Items.Slider.LengthMode0](traces/bar/attributes/marker/colorbar/lenmode)
/// - [Layout.Sliders.Items.Slider.LengthMode0](traces/heatmap/attributes/colorbar/lenmode)
/// - [Layout.Sliders.Items.Slider.LengthMode0](traces/histogram/attributes/marker/colorbar/lenmode)
/// - [Layout.Sliders.Items.Slider.LengthMode0](traces/histogram2d/attributes/colorbar/lenmode)
/// - [Layout.Sliders.Items.Slider.LengthMode0](traces/histogram2dcontour/attributes/colorbar/lenmode)
/// - [Layout.Sliders.Items.Slider.LengthMode0](traces/contour/attributes/colorbar/lenmode)
/// - [Layout.Sliders.Items.Slider.LengthMode0](traces/scatterternary/attributes/marker/colorbar/lenmode)
/// - [Layout.Sliders.Items.Slider.LengthMode0](traces/funnel/attributes/marker/colorbar/lenmode)
/// - [Layout.Sliders.Items.Slider.LengthMode0](traces/sunburst/attributes/marker/colorbar/lenmode)
/// - [Layout.Sliders.Items.Slider.LengthMode0](traces/treemap/attributes/marker/colorbar/lenmode)
/// - [Layout.Sliders.Items.Slider.LengthMode0](traces/scatter3d/attributes/line/colorbar/lenmode)
/// - [Layout.Sliders.Items.Slider.LengthMode0](traces/scatter3d/attributes/marker/colorbar/lenmode)
/// - [Layout.Sliders.Items.Slider.LengthMode0](traces/surface/attributes/colorbar/lenmode)
/// - [Layout.Sliders.Items.Slider.LengthMode0](traces/isosurface/attributes/colorbar/lenmode)
/// - [Layout.Sliders.Items.Slider.LengthMode0](traces/volume/attributes/colorbar/lenmode)
/// - [Layout.Sliders.Items.Slider.LengthMode0](traces/mesh3d/attributes/colorbar/lenmode)
/// - [Layout.Sliders.Items.Slider.LengthMode0](traces/cone/attributes/colorbar/lenmode)
/// - [Layout.Sliders.Items.Slider.LengthMode0](traces/streamtube/attributes/colorbar/lenmode)
/// - [Layout.Sliders.Items.Slider.LengthMode0](traces/scattergeo/attributes/marker/colorbar/lenmode)
/// - [Layout.Sliders.Items.Slider.LengthMode0](traces/choropleth/attributes/colorbar/lenmode)
/// - [Layout.Sliders.Items.Slider.LengthMode0](traces/scattergl/attributes/marker/colorbar/lenmode)
/// - [Layout.Sliders.Items.Slider.LengthMode0](traces/splom/attributes/marker/colorbar/lenmode)
/// - [Layout.Sliders.Items.Slider.LengthMode0](traces/heatmapgl/attributes/colorbar/lenmode)
/// - [Layout.Sliders.Items.Slider.LengthMode0](traces/parcoords/attributes/line/colorbar/lenmode)
/// - [Layout.Sliders.Items.Slider.LengthMode0](traces/parcats/attributes/line/colorbar/lenmode)
/// - [Layout.Sliders.Items.Slider.LengthMode0](traces/scattermapbox/attributes/marker/colorbar/lenmode)
/// - [Layout.Sliders.Items.Slider.LengthMode0](traces/choroplethmapbox/attributes/colorbar/lenmode)
/// - [Layout.Sliders.Items.Slider.LengthMode0](traces/densitymapbox/attributes/colorbar/lenmode)
/// - [Layout.Sliders.Items.Slider.LengthMode0](traces/scattercarpet/attributes/marker/colorbar/lenmode)
/// - [Layout.Sliders.Items.Slider.LengthMode0](traces/contourcarpet/attributes/colorbar/lenmode)
/// - [Layout.Sliders.Items.Slider.LengthMode0](traces/scatterpolar/attributes/marker/colorbar/lenmode)
/// - [Layout.Sliders.Items.Slider.LengthMode0](traces/scatterpolargl/attributes/marker/colorbar/lenmode)
/// - [Layout.Sliders.Items.Slider.LengthMode0](traces/barpolar/attributes/marker/colorbar/lenmode)
public enum LengthMode0: String, Encodable {
    case fraction
    case pixels
}

/// Determines whether this color bar's thickness (i.e. 
///
/// the measure in the constant color direction) is set in units of plot *fraction* or in *pixels*.
/// Use `thickness` to set the value.
/// - [Layout.ColorAxis.ColorBar.ThicknessMode0](layout/layoutAttributes/coloraxis/colorbar/thicknessmode)
/// - [Layout.ColorAxis.ColorBar.ThicknessMode0](traces/scatter/attributes/marker/colorbar/thicknessmode)
/// - [Layout.ColorAxis.ColorBar.ThicknessMode0](traces/bar/attributes/marker/colorbar/thicknessmode)
/// - [Layout.ColorAxis.ColorBar.ThicknessMode0](traces/heatmap/attributes/colorbar/thicknessmode)
/// - [Layout.ColorAxis.ColorBar.ThicknessMode0](traces/histogram/attributes/marker/colorbar/thicknessmode)
/// - [Layout.ColorAxis.ColorBar.ThicknessMode0](traces/histogram2d/attributes/colorbar/thicknessmode)
/// - [Layout.ColorAxis.ColorBar.ThicknessMode0](traces/histogram2dcontour/attributes/colorbar/thicknessmode)
/// - [Layout.ColorAxis.ColorBar.ThicknessMode0](traces/contour/attributes/colorbar/thicknessmode)
/// - [Layout.ColorAxis.ColorBar.ThicknessMode0](traces/scatterternary/attributes/marker/colorbar/thicknessmode)
/// - [Layout.ColorAxis.ColorBar.ThicknessMode0](traces/funnel/attributes/marker/colorbar/thicknessmode)
/// - [Layout.ColorAxis.ColorBar.ThicknessMode0](traces/sunburst/attributes/marker/colorbar/thicknessmode)
/// - [Layout.ColorAxis.ColorBar.ThicknessMode0](traces/treemap/attributes/marker/colorbar/thicknessmode)
/// - [Layout.ColorAxis.ColorBar.ThicknessMode0](traces/scatter3d/attributes/line/colorbar/thicknessmode)
/// - [Layout.ColorAxis.ColorBar.ThicknessMode0](traces/scatter3d/attributes/marker/colorbar/thicknessmode)
/// - [Layout.ColorAxis.ColorBar.ThicknessMode0](traces/surface/attributes/colorbar/thicknessmode)
/// - [Layout.ColorAxis.ColorBar.ThicknessMode0](traces/isosurface/attributes/colorbar/thicknessmode)
/// - [Layout.ColorAxis.ColorBar.ThicknessMode0](traces/volume/attributes/colorbar/thicknessmode)
/// - [Layout.ColorAxis.ColorBar.ThicknessMode0](traces/mesh3d/attributes/colorbar/thicknessmode)
/// - [Layout.ColorAxis.ColorBar.ThicknessMode0](traces/cone/attributes/colorbar/thicknessmode)
/// - [Layout.ColorAxis.ColorBar.ThicknessMode0](traces/streamtube/attributes/colorbar/thicknessmode)
/// - [Layout.ColorAxis.ColorBar.ThicknessMode0](traces/scattergeo/attributes/marker/colorbar/thicknessmode)
/// - [Layout.ColorAxis.ColorBar.ThicknessMode0](traces/choropleth/attributes/colorbar/thicknessmode)
/// - [Layout.ColorAxis.ColorBar.ThicknessMode0](traces/scattergl/attributes/marker/colorbar/thicknessmode)
/// - [Layout.ColorAxis.ColorBar.ThicknessMode0](traces/splom/attributes/marker/colorbar/thicknessmode)
/// - [Layout.ColorAxis.ColorBar.ThicknessMode0](traces/heatmapgl/attributes/colorbar/thicknessmode)
/// - [Layout.ColorAxis.ColorBar.ThicknessMode0](traces/parcoords/attributes/line/colorbar/thicknessmode)
/// - [Layout.ColorAxis.ColorBar.ThicknessMode0](traces/parcats/attributes/line/colorbar/thicknessmode)
/// - [Layout.ColorAxis.ColorBar.ThicknessMode0](traces/scattermapbox/attributes/marker/colorbar/thicknessmode)
/// - [Layout.ColorAxis.ColorBar.ThicknessMode0](traces/choroplethmapbox/attributes/colorbar/thicknessmode)
/// - [Layout.ColorAxis.ColorBar.ThicknessMode0](traces/densitymapbox/attributes/colorbar/thicknessmode)
/// - [Layout.ColorAxis.ColorBar.ThicknessMode0](traces/scattercarpet/attributes/marker/colorbar/thicknessmode)
/// - [Layout.ColorAxis.ColorBar.ThicknessMode0](traces/contourcarpet/attributes/colorbar/thicknessmode)
/// - [Layout.ColorAxis.ColorBar.ThicknessMode0](traces/scatterpolar/attributes/marker/colorbar/thicknessmode)
/// - [Layout.ColorAxis.ColorBar.ThicknessMode0](traces/scatterpolargl/attributes/marker/colorbar/thicknessmode)
/// - [Layout.ColorAxis.ColorBar.ThicknessMode0](traces/barpolar/attributes/marker/colorbar/thicknessmode)
public enum ThicknessMode0: String, Encodable {
    case fraction
    case pixels
}

/// Determines the location of color bar's title with respect to the color bar. 
///
/// Note that the title's location used to be set by the now deprecated `titleside` attribute.
/// - [Layout.ColorAxis.ColorBar.Title.Side0](layout/layoutAttributes/coloraxis/colorbar/title/side)
/// - [Layout.ColorAxis.ColorBar.Title.Side0](traces/scatter/attributes/marker/colorbar/title/side)
/// - [Layout.ColorAxis.ColorBar.Title.Side0](traces/bar/attributes/marker/colorbar/title/side)
/// - [Layout.ColorAxis.ColorBar.Title.Side0](traces/heatmap/attributes/colorbar/title/side)
/// - [Layout.ColorAxis.ColorBar.Title.Side0](traces/histogram/attributes/marker/colorbar/title/side)
/// - [Layout.ColorAxis.ColorBar.Title.Side0](traces/histogram2d/attributes/colorbar/title/side)
/// - [Layout.ColorAxis.ColorBar.Title.Side0](traces/histogram2dcontour/attributes/colorbar/title/side)
/// - [Layout.ColorAxis.ColorBar.Title.Side0](traces/contour/attributes/colorbar/title/side)
/// - [Layout.ColorAxis.ColorBar.Title.Side0](traces/scatterternary/attributes/marker/colorbar/title/side)
/// - [Layout.ColorAxis.ColorBar.Title.Side0](traces/funnel/attributes/marker/colorbar/title/side)
/// - [Layout.ColorAxis.ColorBar.Title.Side0](traces/sunburst/attributes/marker/colorbar/title/side)
/// - [Layout.ColorAxis.ColorBar.Title.Side0](traces/treemap/attributes/marker/colorbar/title/side)
/// - [Layout.ColorAxis.ColorBar.Title.Side0](traces/scatter3d/attributes/line/colorbar/title/side)
/// - [Layout.ColorAxis.ColorBar.Title.Side0](traces/scatter3d/attributes/marker/colorbar/title/side)
/// - [Layout.ColorAxis.ColorBar.Title.Side0](traces/surface/attributes/colorbar/title/side)
/// - [Layout.ColorAxis.ColorBar.Title.Side0](traces/isosurface/attributes/colorbar/title/side)
/// - [Layout.ColorAxis.ColorBar.Title.Side0](traces/volume/attributes/colorbar/title/side)
/// - [Layout.ColorAxis.ColorBar.Title.Side0](traces/mesh3d/attributes/colorbar/title/side)
/// - [Layout.ColorAxis.ColorBar.Title.Side0](traces/cone/attributes/colorbar/title/side)
/// - [Layout.ColorAxis.ColorBar.Title.Side0](traces/streamtube/attributes/colorbar/title/side)
/// - [Layout.ColorAxis.ColorBar.Title.Side0](traces/scattergeo/attributes/marker/colorbar/title/side)
/// - [Layout.ColorAxis.ColorBar.Title.Side0](traces/choropleth/attributes/colorbar/title/side)
/// - [Layout.ColorAxis.ColorBar.Title.Side0](traces/scattergl/attributes/marker/colorbar/title/side)
/// - [Layout.ColorAxis.ColorBar.Title.Side0](traces/splom/attributes/marker/colorbar/title/side)
/// - [Layout.ColorAxis.ColorBar.Title.Side0](traces/heatmapgl/attributes/colorbar/title/side)
/// - [Layout.ColorAxis.ColorBar.Title.Side0](traces/parcoords/attributes/line/colorbar/title/side)
/// - [Layout.ColorAxis.ColorBar.Title.Side0](traces/parcats/attributes/line/colorbar/title/side)
/// - [Layout.ColorAxis.ColorBar.Title.Side0](traces/scattermapbox/attributes/marker/colorbar/title/side)
/// - [Layout.ColorAxis.ColorBar.Title.Side0](traces/choroplethmapbox/attributes/colorbar/title/side)
/// - [Layout.ColorAxis.ColorBar.Title.Side0](traces/densitymapbox/attributes/colorbar/title/side)
/// - [Layout.ColorAxis.ColorBar.Title.Side0](traces/scattercarpet/attributes/marker/colorbar/title/side)
/// - [Layout.ColorAxis.ColorBar.Title.Side0](traces/contourcarpet/attributes/colorbar/title/side)
/// - [Layout.ColorAxis.ColorBar.Title.Side0](traces/scatterpolar/attributes/marker/colorbar/title/side)
/// - [Layout.ColorAxis.ColorBar.Title.Side0](traces/scatterpolargl/attributes/marker/colorbar/title/side)
/// - [Layout.ColorAxis.ColorBar.Title.Side0](traces/barpolar/attributes/marker/colorbar/title/side)
public enum Side0: String, Encodable {
    case right
    case top
    case bottom
}

/// Determines whether or not this trace is visible. 
///
/// If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the
/// legend itself is visible).
/// - [Scatter.Visible0](traces/scatter/attributes/visible)
/// - [Scatter.Visible0](traces/bar/attributes/visible)
/// - [Scatter.Visible0](traces/box/attributes/visible)
/// - [Scatter.Visible0](traces/heatmap/attributes/visible)
/// - [Scatter.Visible0](traces/histogram/attributes/visible)
/// - [Scatter.Visible0](traces/histogram2d/attributes/visible)
/// - [Scatter.Visible0](traces/histogram2dcontour/attributes/visible)
/// - [Scatter.Visible0](traces/contour/attributes/visible)
/// - [Scatter.Visible0](traces/scatterternary/attributes/visible)
/// - [Scatter.Visible0](traces/violin/attributes/visible)
/// - [Scatter.Visible0](traces/funnel/attributes/visible)
/// - [Scatter.Visible0](traces/waterfall/attributes/visible)
/// - [Scatter.Visible0](traces/image/attributes/visible)
/// - [Scatter.Visible0](traces/pie/attributes/visible)
/// - [Scatter.Visible0](traces/sunburst/attributes/visible)
/// - [Scatter.Visible0](traces/treemap/attributes/visible)
/// - [Scatter.Visible0](traces/funnelarea/attributes/visible)
/// - [Scatter.Visible0](traces/scatter3d/attributes/visible)
/// - [Scatter.Visible0](traces/surface/attributes/visible)
/// - [Scatter.Visible0](traces/isosurface/attributes/visible)
/// - [Scatter.Visible0](traces/volume/attributes/visible)
/// - [Scatter.Visible0](traces/mesh3d/attributes/visible)
/// - [Scatter.Visible0](traces/cone/attributes/visible)
/// - [Scatter.Visible0](traces/streamtube/attributes/visible)
/// - [Scatter.Visible0](traces/scattergeo/attributes/visible)
/// - [Scatter.Visible0](traces/choropleth/attributes/visible)
/// - [Scatter.Visible0](traces/scattergl/attributes/visible)
/// - [Scatter.Visible0](traces/splom/attributes/visible)
/// - [Scatter.Visible0](traces/pointcloud/attributes/visible)
/// - [Scatter.Visible0](traces/heatmapgl/attributes/visible)
/// - [Scatter.Visible0](traces/parcoords/attributes/visible)
/// - [Scatter.Visible0](traces/parcats/attributes/visible)
/// - [Scatter.Visible0](traces/scattermapbox/attributes/visible)
/// - [Scatter.Visible0](traces/choroplethmapbox/attributes/visible)
/// - [Scatter.Visible0](traces/densitymapbox/attributes/visible)
/// - [Scatter.Visible0](traces/sankey/attributes/visible)
/// - [Scatter.Visible0](traces/indicator/attributes/visible)
/// - [Scatter.Visible0](traces/table/attributes/visible)
/// - [Scatter.Visible0](traces/carpet/attributes/visible)
/// - [Scatter.Visible0](traces/scattercarpet/attributes/visible)
/// - [Scatter.Visible0](traces/contourcarpet/attributes/visible)
/// - [Scatter.Visible0](traces/ohlc/attributes/visible)
/// - [Scatter.Visible0](traces/candlestick/attributes/visible)
/// - [Scatter.Visible0](traces/scatterpolar/attributes/visible)
/// - [Scatter.Visible0](traces/scatterpolargl/attributes/visible)
/// - [Scatter.Visible0](traces/barpolar/attributes/visible)
/// - [Scatter.Visible0](traces/area/attributes/visible)
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
/// - [Scatter.Marker.Symbol0](traces/scatter/attributes/marker/symbol)
/// - [Scatter.Marker.Symbol0](traces/box/attributes/marker/symbol)
/// - [Scatter.Marker.Symbol0](traces/scatterternary/attributes/marker/symbol)
/// - [Scatter.Marker.Symbol0](traces/violin/attributes/marker/symbol)
/// - [Scatter.Marker.Symbol0](traces/scattergeo/attributes/marker/symbol)
/// - [Scatter.Marker.Symbol0](traces/scattergl/attributes/marker/symbol)
/// - [Scatter.Marker.Symbol0](traces/splom/attributes/marker/symbol)
/// - [Scatter.Marker.Symbol0](traces/scattercarpet/attributes/marker/symbol)
/// - [Scatter.Marker.Symbol0](traces/scatterpolar/attributes/marker/symbol)
/// - [Scatter.Marker.Symbol0](traces/scatterpolargl/attributes/marker/symbol)
/// - [Scatter.Marker.Symbol0](traces/area/attributes/marker/symbol)
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
/// - [Scatter.Marker.SizeMode0](traces/scatter/attributes/marker/sizemode)
/// - [Scatter.Marker.SizeMode0](traces/scatterternary/attributes/marker/sizemode)
/// - [Scatter.Marker.SizeMode0](traces/scatter3d/attributes/marker/sizemode)
/// - [Scatter.Marker.SizeMode0](traces/scattergeo/attributes/marker/sizemode)
/// - [Scatter.Marker.SizeMode0](traces/scattergl/attributes/marker/sizemode)
/// - [Scatter.Marker.SizeMode0](traces/splom/attributes/marker/sizemode)
/// - [Scatter.Marker.SizeMode0](traces/scattermapbox/attributes/marker/sizemode)
/// - [Scatter.Marker.SizeMode0](traces/scattercarpet/attributes/marker/sizemode)
/// - [Scatter.Marker.SizeMode0](traces/scatterpolar/attributes/marker/sizemode)
/// - [Scatter.Marker.SizeMode0](traces/scatterpolargl/attributes/marker/sizemode)
public enum SizeMode0: String, Encodable {
    case diameter
    case area
}

/// Sets the type of gradient used to fill the markers
/// - [Scatter.Marker.Gradient.Rule0](traces/scatter/attributes/marker/gradient/type)
/// - [Scatter.Marker.Gradient.Rule0](traces/scatterternary/attributes/marker/gradient/type)
/// - [Scatter.Marker.Gradient.Rule0](traces/scattergeo/attributes/marker/gradient/type)
/// - [Scatter.Marker.Gradient.Rule0](traces/scattercarpet/attributes/marker/gradient/type)
/// - [Scatter.Marker.Gradient.Rule0](traces/scatterpolar/attributes/marker/gradient/type)
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
/// - [Scatter.XError.Rule1](traces/scatter/attributes/error_x/type)
/// - [Scatter.XError.Rule1](traces/scatter/attributes/error_y/type)
/// - [Scatter.XError.Rule1](traces/bar/attributes/error_x/type)
/// - [Scatter.XError.Rule1](traces/bar/attributes/error_y/type)
/// - [Scatter.XError.Rule1](traces/histogram/attributes/error_x/type)
/// - [Scatter.XError.Rule1](traces/histogram/attributes/error_y/type)
/// - [Scatter.XError.Rule1](traces/scatter3d/attributes/error_x/type)
/// - [Scatter.XError.Rule1](traces/scatter3d/attributes/error_y/type)
/// - [Scatter.XError.Rule1](traces/scatter3d/attributes/error_z/type)
/// - [Scatter.XError.Rule1](traces/scattergl/attributes/error_x/type)
/// - [Scatter.XError.Rule1](traces/scattergl/attributes/error_y/type)
public enum Rule1: String, Encodable {
    case percent
    case constant
    case sqrt
    case data
}
