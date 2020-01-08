/// Sets the title's horizontal alignment with respect to its x position. 
///
/// *left* means that the title starts at x, *right* means that the title ends at x and *center*
/// means that the title's center is at x. *auto* divides `xref` by three and calculates the
/// `xanchor` value automatically based on the value of `x`.
/// - layout/layoutAttributes/title/xanchor
/// - layout/layoutAttributes/xaxis/rangeselector/xanchor
/// - layout/layoutAttributes/scene/annotations/items/annotation/xanchor
/// - layout/layoutAttributes/legend/xanchor
/// - layout/layoutAttributes/annotations/items/annotation/xanchor
/// - layout/layoutAttributes/updatemenus/items/updatemenu/xanchor
/// - layout/layoutAttributes/sliders/items/slider/xanchor
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
/// - layout/layoutAttributes/title/yanchor
/// - layout/layoutAttributes/xaxis/rangeselector/yanchor
/// - layout/layoutAttributes/scene/annotations/items/annotation/yanchor
/// - layout/layoutAttributes/legend/yanchor
/// - layout/layoutAttributes/annotations/items/annotation/yanchor
/// - layout/layoutAttributes/updatemenus/items/updatemenu/yanchor
/// - layout/layoutAttributes/sliders/items/slider/yanchor
public enum YAnchor0: String, Encodable {
    case auto
    case top
    case middle
    case bottom
}

/// Sets the orientation of the modebar.
/// - layout/layoutAttributes/modebar/orientation
/// - layout/layoutAttributes/legend/orientation
/// - traces/scatter/attributes/orientation
/// - traces/bar/attributes/orientation
/// - traces/box/attributes/orientation
/// - traces/histogram/attributes/orientation
/// - traces/violin/attributes/orientation
/// - traces/funnel/attributes/orientation
/// - traces/waterfall/attributes/orientation
/// - traces/sankey/attributes/orientation
public enum Orientation0: String, Encodable {
    case v
    case h
}

/// Sets the horizontal alignment of the text content within hover label box. 
///
/// Has an effect only if the hover label text spans more two or more lines
/// - layout/layoutAttributes/hoverlabel/align
/// - traces/scatter/attributes/hoverlabel/align
/// - traces/bar/attributes/hoverlabel/align
/// - traces/box/attributes/hoverlabel/align
/// - traces/heatmap/attributes/hoverlabel/align
/// - traces/histogram/attributes/hoverlabel/align
/// - traces/histogram2d/attributes/hoverlabel/align
/// - traces/histogram2dcontour/attributes/hoverlabel/align
/// - traces/contour/attributes/hoverlabel/align
/// - traces/scatterternary/attributes/hoverlabel/align
/// - traces/violin/attributes/hoverlabel/align
/// - traces/funnel/attributes/hoverlabel/align
/// - traces/waterfall/attributes/hoverlabel/align
/// - traces/image/attributes/hoverlabel/align
/// - traces/pie/attributes/hoverlabel/align
/// - traces/sunburst/attributes/hoverlabel/align
/// - traces/treemap/attributes/hoverlabel/align
/// - traces/funnelarea/attributes/hoverlabel/align
/// - traces/scatter3d/attributes/hoverlabel/align
/// - traces/surface/attributes/hoverlabel/align
/// - traces/isosurface/attributes/hoverlabel/align
/// - traces/volume/attributes/hoverlabel/align
/// - traces/mesh3d/attributes/hoverlabel/align
/// - traces/cone/attributes/hoverlabel/align
/// - traces/streamtube/attributes/hoverlabel/align
/// - traces/scattergeo/attributes/hoverlabel/align
/// - traces/choropleth/attributes/hoverlabel/align
/// - traces/scattergl/attributes/hoverlabel/align
/// - traces/splom/attributes/hoverlabel/align
/// - traces/pointcloud/attributes/hoverlabel/align
/// - traces/heatmapgl/attributes/hoverlabel/align
/// - traces/scattermapbox/attributes/hoverlabel/align
/// - traces/choroplethmapbox/attributes/hoverlabel/align
/// - traces/densitymapbox/attributes/hoverlabel/align
/// - traces/sankey/attributes/hoverlabel/align
/// - traces/sankey/attributes/node/hoverlabel/align
/// - traces/sankey/attributes/link/hoverlabel/align
/// - traces/table/attributes/hoverlabel/align
/// - traces/scattercarpet/attributes/hoverlabel/align
/// - traces/ohlc/attributes/hoverlabel/align
/// - traces/candlestick/attributes/hoverlabel/align
/// - traces/scatterpolar/attributes/hoverlabel/align
/// - traces/scatterpolargl/attributes/hoverlabel/align
/// - traces/barpolar/attributes/hoverlabel/align
/// - traces/area/attributes/hoverlabel/align
public enum Align0: String, Encodable {
    case left
    case right
    case auto
}

/// Sets the default calendar system to use for interpreting and displaying dates throughout the plot.
/// - layout/layoutAttributes/calendar
/// - layout/layoutAttributes/xaxis/calendar
/// - layout/layoutAttributes/yaxis/calendar
/// - layout/layoutAttributes/scene/xaxis/calendar
/// - layout/layoutAttributes/scene/yaxis/calendar
/// - layout/layoutAttributes/scene/zaxis/calendar
/// - layout/layoutAttributes/polar/radialaxis/calendar
/// - traces/scatter/attributes/xcalendar
/// - traces/scatter/attributes/ycalendar
/// - traces/bar/attributes/xcalendar
/// - traces/bar/attributes/ycalendar
/// - traces/box/attributes/xcalendar
/// - traces/box/attributes/ycalendar
/// - traces/heatmap/attributes/xcalendar
/// - traces/heatmap/attributes/ycalendar
/// - traces/histogram/attributes/xcalendar
/// - traces/histogram/attributes/ycalendar
/// - traces/histogram2d/attributes/xcalendar
/// - traces/histogram2d/attributes/ycalendar
/// - traces/histogram2dcontour/attributes/xcalendar
/// - traces/histogram2dcontour/attributes/ycalendar
/// - traces/contour/attributes/xcalendar
/// - traces/contour/attributes/ycalendar
/// - traces/scatter3d/attributes/xcalendar
/// - traces/scatter3d/attributes/ycalendar
/// - traces/scatter3d/attributes/zcalendar
/// - traces/surface/attributes/xcalendar
/// - traces/surface/attributes/ycalendar
/// - traces/surface/attributes/zcalendar
/// - traces/mesh3d/attributes/xcalendar
/// - traces/mesh3d/attributes/ycalendar
/// - traces/mesh3d/attributes/zcalendar
/// - traces/scattergl/attributes/xcalendar
/// - traces/scattergl/attributes/ycalendar
/// - traces/ohlc/attributes/xcalendar
/// - traces/candlestick/attributes/xcalendar
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
/// - layout/layoutAttributes/xaxis/autorange
/// - layout/layoutAttributes/yaxis/autorange
/// - layout/layoutAttributes/scene/xaxis/autorange
/// - layout/layoutAttributes/scene/yaxis/autorange
/// - layout/layoutAttributes/scene/zaxis/autorange
/// - layout/layoutAttributes/polar/radialaxis/autorange
/// - traces/carpet/attributes/aaxis/autorange
/// - traces/carpet/attributes/baxis/autorange
public enum AutoRange0: String, Encodable {
    case `true` = "true"
    case `false` = "false"
    case reversed
}

/// If *normal*, the range is computed in relation to the extrema of the input data. 
///
/// If *tozero*`, the range extends to 0, regardless of the input data If *nonnegative*, the range
/// is non-negative, regardless of the input data. Applies only to linear axes.
/// - layout/layoutAttributes/xaxis/rangemode
/// - layout/layoutAttributes/yaxis/rangemode
/// - layout/layoutAttributes/scene/xaxis/rangemode
/// - layout/layoutAttributes/scene/yaxis/rangemode
/// - layout/layoutAttributes/scene/zaxis/rangemode
/// - traces/carpet/attributes/aaxis/rangemode
/// - traces/carpet/attributes/baxis/rangemode
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
/// - layout/layoutAttributes/xaxis/tickmode
/// - layout/layoutAttributes/yaxis/tickmode
/// - layout/layoutAttributes/ternary/aaxis/tickmode
/// - layout/layoutAttributes/ternary/baxis/tickmode
/// - layout/layoutAttributes/ternary/caxis/tickmode
/// - layout/layoutAttributes/scene/xaxis/tickmode
/// - layout/layoutAttributes/scene/yaxis/tickmode
/// - layout/layoutAttributes/scene/zaxis/tickmode
/// - layout/layoutAttributes/polar/radialaxis/tickmode
/// - layout/layoutAttributes/polar/angularaxis/tickmode
/// - layout/layoutAttributes/coloraxis/colorbar/tickmode
/// - traces/scatter/attributes/marker/colorbar/tickmode
/// - traces/bar/attributes/marker/colorbar/tickmode
/// - traces/heatmap/attributes/colorbar/tickmode
/// - traces/histogram/attributes/marker/colorbar/tickmode
/// - traces/histogram2d/attributes/colorbar/tickmode
/// - traces/histogram2dcontour/attributes/colorbar/tickmode
/// - traces/contour/attributes/colorbar/tickmode
/// - traces/scatterternary/attributes/marker/colorbar/tickmode
/// - traces/funnel/attributes/marker/colorbar/tickmode
/// - traces/sunburst/attributes/marker/colorbar/tickmode
/// - traces/treemap/attributes/marker/colorbar/tickmode
/// - traces/scatter3d/attributes/line/colorbar/tickmode
/// - traces/scatter3d/attributes/marker/colorbar/tickmode
/// - traces/surface/attributes/colorbar/tickmode
/// - traces/isosurface/attributes/colorbar/tickmode
/// - traces/volume/attributes/colorbar/tickmode
/// - traces/mesh3d/attributes/colorbar/tickmode
/// - traces/cone/attributes/colorbar/tickmode
/// - traces/streamtube/attributes/colorbar/tickmode
/// - traces/scattergeo/attributes/marker/colorbar/tickmode
/// - traces/choropleth/attributes/colorbar/tickmode
/// - traces/scattergl/attributes/marker/colorbar/tickmode
/// - traces/splom/attributes/marker/colorbar/tickmode
/// - traces/heatmapgl/attributes/colorbar/tickmode
/// - traces/parcoords/attributes/line/colorbar/tickmode
/// - traces/parcats/attributes/line/colorbar/tickmode
/// - traces/scattermapbox/attributes/marker/colorbar/tickmode
/// - traces/choroplethmapbox/attributes/colorbar/tickmode
/// - traces/densitymapbox/attributes/colorbar/tickmode
/// - traces/indicator/attributes/gauge/axis/tickmode
/// - traces/scattercarpet/attributes/marker/colorbar/tickmode
/// - traces/contourcarpet/attributes/colorbar/tickmode
/// - traces/scatterpolar/attributes/marker/colorbar/tickmode
/// - traces/scatterpolargl/attributes/marker/colorbar/tickmode
/// - traces/barpolar/attributes/marker/colorbar/tickmode
public enum TickMode0: String, Encodable {
    case auto
    case linear
    case array
}

/// Determines whether ticks are drawn or not. 
///
/// If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside
/// (inside) the axis lines.
/// - layout/layoutAttributes/xaxis/ticks
/// - layout/layoutAttributes/yaxis/ticks
/// - layout/layoutAttributes/ternary/aaxis/ticks
/// - layout/layoutAttributes/ternary/baxis/ticks
/// - layout/layoutAttributes/ternary/caxis/ticks
/// - layout/layoutAttributes/scene/xaxis/ticks
/// - layout/layoutAttributes/scene/yaxis/ticks
/// - layout/layoutAttributes/scene/zaxis/ticks
/// - layout/layoutAttributes/polar/radialaxis/ticks
/// - layout/layoutAttributes/polar/angularaxis/ticks
/// - layout/layoutAttributes/coloraxis/colorbar/ticks
/// - traces/scatter/attributes/marker/colorbar/ticks
/// - traces/bar/attributes/marker/colorbar/ticks
/// - traces/heatmap/attributes/colorbar/ticks
/// - traces/histogram/attributes/marker/colorbar/ticks
/// - traces/histogram2d/attributes/colorbar/ticks
/// - traces/histogram2dcontour/attributes/colorbar/ticks
/// - traces/contour/attributes/colorbar/ticks
/// - traces/scatterternary/attributes/marker/colorbar/ticks
/// - traces/funnel/attributes/marker/colorbar/ticks
/// - traces/sunburst/attributes/marker/colorbar/ticks
/// - traces/treemap/attributes/marker/colorbar/ticks
/// - traces/scatter3d/attributes/line/colorbar/ticks
/// - traces/scatter3d/attributes/marker/colorbar/ticks
/// - traces/surface/attributes/colorbar/ticks
/// - traces/isosurface/attributes/colorbar/ticks
/// - traces/volume/attributes/colorbar/ticks
/// - traces/mesh3d/attributes/colorbar/ticks
/// - traces/cone/attributes/colorbar/ticks
/// - traces/streamtube/attributes/colorbar/ticks
/// - traces/scattergeo/attributes/marker/colorbar/ticks
/// - traces/choropleth/attributes/colorbar/ticks
/// - traces/scattergl/attributes/marker/colorbar/ticks
/// - traces/splom/attributes/marker/colorbar/ticks
/// - traces/heatmapgl/attributes/colorbar/ticks
/// - traces/parcoords/attributes/line/colorbar/ticks
/// - traces/parcats/attributes/line/colorbar/ticks
/// - traces/scattermapbox/attributes/marker/colorbar/ticks
/// - traces/choroplethmapbox/attributes/colorbar/ticks
/// - traces/densitymapbox/attributes/colorbar/ticks
/// - traces/indicator/attributes/gauge/axis/ticks
/// - traces/scattercarpet/attributes/marker/colorbar/ticks
/// - traces/contourcarpet/attributes/colorbar/ticks
/// - traces/scatterpolar/attributes/marker/colorbar/ticks
/// - traces/scatterpolargl/attributes/marker/colorbar/ticks
/// - traces/barpolar/attributes/marker/colorbar/ticks
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
/// - layout/layoutAttributes/xaxis/mirror
/// - layout/layoutAttributes/yaxis/mirror
/// - layout/layoutAttributes/scene/xaxis/mirror
/// - layout/layoutAttributes/scene/yaxis/mirror
/// - layout/layoutAttributes/scene/zaxis/mirror
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
/// - layout/layoutAttributes/xaxis/showtickprefix
/// - layout/layoutAttributes/yaxis/showtickprefix
/// - layout/layoutAttributes/ternary/aaxis/showtickprefix
/// - layout/layoutAttributes/ternary/baxis/showtickprefix
/// - layout/layoutAttributes/ternary/caxis/showtickprefix
/// - layout/layoutAttributes/scene/xaxis/showtickprefix
/// - layout/layoutAttributes/scene/yaxis/showtickprefix
/// - layout/layoutAttributes/scene/zaxis/showtickprefix
/// - layout/layoutAttributes/polar/radialaxis/showtickprefix
/// - layout/layoutAttributes/polar/angularaxis/showtickprefix
/// - layout/layoutAttributes/coloraxis/colorbar/showtickprefix
/// - traces/scatter/attributes/marker/colorbar/showtickprefix
/// - traces/bar/attributes/marker/colorbar/showtickprefix
/// - traces/heatmap/attributes/colorbar/showtickprefix
/// - traces/histogram/attributes/marker/colorbar/showtickprefix
/// - traces/histogram2d/attributes/colorbar/showtickprefix
/// - traces/histogram2dcontour/attributes/colorbar/showtickprefix
/// - traces/contour/attributes/colorbar/showtickprefix
/// - traces/scatterternary/attributes/marker/colorbar/showtickprefix
/// - traces/funnel/attributes/marker/colorbar/showtickprefix
/// - traces/sunburst/attributes/marker/colorbar/showtickprefix
/// - traces/treemap/attributes/marker/colorbar/showtickprefix
/// - traces/scatter3d/attributes/line/colorbar/showtickprefix
/// - traces/scatter3d/attributes/marker/colorbar/showtickprefix
/// - traces/surface/attributes/colorbar/showtickprefix
/// - traces/isosurface/attributes/colorbar/showtickprefix
/// - traces/volume/attributes/colorbar/showtickprefix
/// - traces/mesh3d/attributes/colorbar/showtickprefix
/// - traces/cone/attributes/colorbar/showtickprefix
/// - traces/streamtube/attributes/colorbar/showtickprefix
/// - traces/scattergeo/attributes/marker/colorbar/showtickprefix
/// - traces/choropleth/attributes/colorbar/showtickprefix
/// - traces/scattergl/attributes/marker/colorbar/showtickprefix
/// - traces/splom/attributes/marker/colorbar/showtickprefix
/// - traces/heatmapgl/attributes/colorbar/showtickprefix
/// - traces/parcoords/attributes/line/colorbar/showtickprefix
/// - traces/parcats/attributes/line/colorbar/showtickprefix
/// - traces/scattermapbox/attributes/marker/colorbar/showtickprefix
/// - traces/choroplethmapbox/attributes/colorbar/showtickprefix
/// - traces/densitymapbox/attributes/colorbar/showtickprefix
/// - traces/indicator/attributes/gauge/axis/showtickprefix
/// - traces/carpet/attributes/aaxis/showtickprefix
/// - traces/carpet/attributes/baxis/showtickprefix
/// - traces/scattercarpet/attributes/marker/colorbar/showtickprefix
/// - traces/contourcarpet/attributes/colorbar/showtickprefix
/// - traces/scatterpolar/attributes/marker/colorbar/showtickprefix
/// - traces/scatterpolargl/attributes/marker/colorbar/showtickprefix
/// - traces/barpolar/attributes/marker/colorbar/showtickprefix
public enum ShowTickPrefix0: String, Encodable {
    case all
    case first
    case last
    case none
}

/// Same as `showtickprefix` but for tick suffixes.
/// - layout/layoutAttributes/xaxis/showticksuffix
/// - layout/layoutAttributes/yaxis/showticksuffix
/// - layout/layoutAttributes/ternary/aaxis/showticksuffix
/// - layout/layoutAttributes/ternary/baxis/showticksuffix
/// - layout/layoutAttributes/ternary/caxis/showticksuffix
/// - layout/layoutAttributes/scene/xaxis/showticksuffix
/// - layout/layoutAttributes/scene/yaxis/showticksuffix
/// - layout/layoutAttributes/scene/zaxis/showticksuffix
/// - layout/layoutAttributes/polar/radialaxis/showticksuffix
/// - layout/layoutAttributes/polar/angularaxis/showticksuffix
/// - layout/layoutAttributes/coloraxis/colorbar/showticksuffix
/// - traces/scatter/attributes/marker/colorbar/showticksuffix
/// - traces/bar/attributes/marker/colorbar/showticksuffix
/// - traces/heatmap/attributes/colorbar/showticksuffix
/// - traces/histogram/attributes/marker/colorbar/showticksuffix
/// - traces/histogram2d/attributes/colorbar/showticksuffix
/// - traces/histogram2dcontour/attributes/colorbar/showticksuffix
/// - traces/contour/attributes/colorbar/showticksuffix
/// - traces/scatterternary/attributes/marker/colorbar/showticksuffix
/// - traces/funnel/attributes/marker/colorbar/showticksuffix
/// - traces/sunburst/attributes/marker/colorbar/showticksuffix
/// - traces/treemap/attributes/marker/colorbar/showticksuffix
/// - traces/scatter3d/attributes/line/colorbar/showticksuffix
/// - traces/scatter3d/attributes/marker/colorbar/showticksuffix
/// - traces/surface/attributes/colorbar/showticksuffix
/// - traces/isosurface/attributes/colorbar/showticksuffix
/// - traces/volume/attributes/colorbar/showticksuffix
/// - traces/mesh3d/attributes/colorbar/showticksuffix
/// - traces/cone/attributes/colorbar/showticksuffix
/// - traces/streamtube/attributes/colorbar/showticksuffix
/// - traces/scattergeo/attributes/marker/colorbar/showticksuffix
/// - traces/choropleth/attributes/colorbar/showticksuffix
/// - traces/scattergl/attributes/marker/colorbar/showticksuffix
/// - traces/splom/attributes/marker/colorbar/showticksuffix
/// - traces/heatmapgl/attributes/colorbar/showticksuffix
/// - traces/parcoords/attributes/line/colorbar/showticksuffix
/// - traces/parcats/attributes/line/colorbar/showticksuffix
/// - traces/scattermapbox/attributes/marker/colorbar/showticksuffix
/// - traces/choroplethmapbox/attributes/colorbar/showticksuffix
/// - traces/densitymapbox/attributes/colorbar/showticksuffix
/// - traces/indicator/attributes/gauge/axis/showticksuffix
/// - traces/carpet/attributes/aaxis/showticksuffix
/// - traces/carpet/attributes/baxis/showticksuffix
/// - traces/scattercarpet/attributes/marker/colorbar/showticksuffix
/// - traces/contourcarpet/attributes/colorbar/showticksuffix
/// - traces/scatterpolar/attributes/marker/colorbar/showticksuffix
/// - traces/scatterpolargl/attributes/marker/colorbar/showticksuffix
/// - traces/barpolar/attributes/marker/colorbar/showticksuffix
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
/// - layout/layoutAttributes/xaxis/showexponent
/// - layout/layoutAttributes/yaxis/showexponent
/// - layout/layoutAttributes/ternary/aaxis/showexponent
/// - layout/layoutAttributes/ternary/baxis/showexponent
/// - layout/layoutAttributes/ternary/caxis/showexponent
/// - layout/layoutAttributes/scene/xaxis/showexponent
/// - layout/layoutAttributes/scene/yaxis/showexponent
/// - layout/layoutAttributes/scene/zaxis/showexponent
/// - layout/layoutAttributes/polar/radialaxis/showexponent
/// - layout/layoutAttributes/polar/angularaxis/showexponent
/// - layout/layoutAttributes/coloraxis/colorbar/showexponent
/// - traces/scatter/attributes/marker/colorbar/showexponent
/// - traces/bar/attributes/marker/colorbar/showexponent
/// - traces/heatmap/attributes/colorbar/showexponent
/// - traces/histogram/attributes/marker/colorbar/showexponent
/// - traces/histogram2d/attributes/colorbar/showexponent
/// - traces/histogram2dcontour/attributes/colorbar/showexponent
/// - traces/contour/attributes/colorbar/showexponent
/// - traces/scatterternary/attributes/marker/colorbar/showexponent
/// - traces/funnel/attributes/marker/colorbar/showexponent
/// - traces/sunburst/attributes/marker/colorbar/showexponent
/// - traces/treemap/attributes/marker/colorbar/showexponent
/// - traces/scatter3d/attributes/line/colorbar/showexponent
/// - traces/scatter3d/attributes/marker/colorbar/showexponent
/// - traces/surface/attributes/colorbar/showexponent
/// - traces/isosurface/attributes/colorbar/showexponent
/// - traces/volume/attributes/colorbar/showexponent
/// - traces/mesh3d/attributes/colorbar/showexponent
/// - traces/cone/attributes/colorbar/showexponent
/// - traces/streamtube/attributes/colorbar/showexponent
/// - traces/scattergeo/attributes/marker/colorbar/showexponent
/// - traces/choropleth/attributes/colorbar/showexponent
/// - traces/scattergl/attributes/marker/colorbar/showexponent
/// - traces/splom/attributes/marker/colorbar/showexponent
/// - traces/heatmapgl/attributes/colorbar/showexponent
/// - traces/parcoords/attributes/line/colorbar/showexponent
/// - traces/parcats/attributes/line/colorbar/showexponent
/// - traces/scattermapbox/attributes/marker/colorbar/showexponent
/// - traces/choroplethmapbox/attributes/colorbar/showexponent
/// - traces/densitymapbox/attributes/colorbar/showexponent
/// - traces/indicator/attributes/gauge/axis/showexponent
/// - traces/carpet/attributes/aaxis/showexponent
/// - traces/carpet/attributes/baxis/showexponent
/// - traces/scattercarpet/attributes/marker/colorbar/showexponent
/// - traces/contourcarpet/attributes/colorbar/showexponent
/// - traces/scatterpolar/attributes/marker/colorbar/showexponent
/// - traces/scatterpolargl/attributes/marker/colorbar/showexponent
/// - traces/barpolar/attributes/marker/colorbar/showexponent
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
/// - layout/layoutAttributes/xaxis/exponentformat
/// - layout/layoutAttributes/yaxis/exponentformat
/// - layout/layoutAttributes/ternary/aaxis/exponentformat
/// - layout/layoutAttributes/ternary/baxis/exponentformat
/// - layout/layoutAttributes/ternary/caxis/exponentformat
/// - layout/layoutAttributes/scene/xaxis/exponentformat
/// - layout/layoutAttributes/scene/yaxis/exponentformat
/// - layout/layoutAttributes/scene/zaxis/exponentformat
/// - layout/layoutAttributes/polar/radialaxis/exponentformat
/// - layout/layoutAttributes/polar/angularaxis/exponentformat
/// - layout/layoutAttributes/coloraxis/colorbar/exponentformat
/// - traces/scatter/attributes/marker/colorbar/exponentformat
/// - traces/bar/attributes/marker/colorbar/exponentformat
/// - traces/heatmap/attributes/colorbar/exponentformat
/// - traces/histogram/attributes/marker/colorbar/exponentformat
/// - traces/histogram2d/attributes/colorbar/exponentformat
/// - traces/histogram2dcontour/attributes/colorbar/exponentformat
/// - traces/contour/attributes/colorbar/exponentformat
/// - traces/scatterternary/attributes/marker/colorbar/exponentformat
/// - traces/funnel/attributes/marker/colorbar/exponentformat
/// - traces/sunburst/attributes/marker/colorbar/exponentformat
/// - traces/treemap/attributes/marker/colorbar/exponentformat
/// - traces/scatter3d/attributes/line/colorbar/exponentformat
/// - traces/scatter3d/attributes/marker/colorbar/exponentformat
/// - traces/surface/attributes/colorbar/exponentformat
/// - traces/isosurface/attributes/colorbar/exponentformat
/// - traces/volume/attributes/colorbar/exponentformat
/// - traces/mesh3d/attributes/colorbar/exponentformat
/// - traces/cone/attributes/colorbar/exponentformat
/// - traces/streamtube/attributes/colorbar/exponentformat
/// - traces/scattergeo/attributes/marker/colorbar/exponentformat
/// - traces/choropleth/attributes/colorbar/exponentformat
/// - traces/scattergl/attributes/marker/colorbar/exponentformat
/// - traces/splom/attributes/marker/colorbar/exponentformat
/// - traces/heatmapgl/attributes/colorbar/exponentformat
/// - traces/parcoords/attributes/line/colorbar/exponentformat
/// - traces/parcats/attributes/line/colorbar/exponentformat
/// - traces/scattermapbox/attributes/marker/colorbar/exponentformat
/// - traces/choroplethmapbox/attributes/colorbar/exponentformat
/// - traces/densitymapbox/attributes/colorbar/exponentformat
/// - traces/indicator/attributes/gauge/axis/exponentformat
/// - traces/carpet/attributes/aaxis/exponentformat
/// - traces/carpet/attributes/baxis/exponentformat
/// - traces/scattercarpet/attributes/marker/colorbar/exponentformat
/// - traces/contourcarpet/attributes/colorbar/exponentformat
/// - traces/scatterpolar/attributes/marker/colorbar/exponentformat
/// - traces/scatterpolargl/attributes/marker/colorbar/exponentformat
/// - traces/barpolar/attributes/marker/colorbar/exponentformat
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
/// - layout/layoutAttributes/xaxis/layer
/// - layout/layoutAttributes/yaxis/layer
/// - layout/layoutAttributes/ternary/aaxis/layer
/// - layout/layoutAttributes/ternary/baxis/layer
/// - layout/layoutAttributes/ternary/caxis/layer
/// - layout/layoutAttributes/polar/radialaxis/layer
/// - layout/layoutAttributes/polar/angularaxis/layer
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
/// - layout/layoutAttributes/xaxis/categoryorder
/// - layout/layoutAttributes/yaxis/categoryorder
/// - layout/layoutAttributes/scene/xaxis/categoryorder
/// - layout/layoutAttributes/scene/yaxis/categoryorder
/// - layout/layoutAttributes/scene/zaxis/categoryorder
/// - layout/layoutAttributes/polar/radialaxis/categoryorder
/// - layout/layoutAttributes/polar/angularaxis/categoryorder
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
/// - layout/layoutAttributes/scene/annotations/items/annotation/align
/// - layout/layoutAttributes/annotations/items/annotation/align
/// - traces/indicator/attributes/align
/// - traces/indicator/attributes/title/align
/// - traces/table/attributes/header/align
/// - traces/table/attributes/cells/align
public enum Align1: String, Encodable {
    case left
    case center
    case right
}

/// Sets the positions of the `text` elements with respects to the (x,y) coordinates.
/// - layout/layoutAttributes/mapbox/layers/items/layer/symbol/textposition
/// - traces/scatter/attributes/textposition
/// - traces/scatterternary/attributes/textposition
/// - traces/treemap/attributes/textposition
/// - traces/scatter3d/attributes/textposition
/// - traces/scattergeo/attributes/textposition
/// - traces/scattergl/attributes/textposition
/// - traces/scattermapbox/attributes/textposition
/// - traces/scattercarpet/attributes/textposition
/// - traces/scatterpolar/attributes/textposition
/// - traces/scatterpolargl/attributes/textposition
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
/// - layout/layoutAttributes/images/items/image/xanchor
/// - layout/layoutAttributes/sliders/items/slider/currentvalue/xanchor
/// - layout/layoutAttributes/coloraxis/colorbar/xanchor
/// - traces/scatter/attributes/marker/colorbar/xanchor
/// - traces/bar/attributes/marker/colorbar/xanchor
/// - traces/heatmap/attributes/colorbar/xanchor
/// - traces/histogram/attributes/marker/colorbar/xanchor
/// - traces/histogram2d/attributes/colorbar/xanchor
/// - traces/histogram2dcontour/attributes/colorbar/xanchor
/// - traces/contour/attributes/colorbar/xanchor
/// - traces/scatterternary/attributes/marker/colorbar/xanchor
/// - traces/funnel/attributes/marker/colorbar/xanchor
/// - traces/sunburst/attributes/marker/colorbar/xanchor
/// - traces/treemap/attributes/marker/colorbar/xanchor
/// - traces/scatter3d/attributes/line/colorbar/xanchor
/// - traces/scatter3d/attributes/marker/colorbar/xanchor
/// - traces/surface/attributes/colorbar/xanchor
/// - traces/isosurface/attributes/colorbar/xanchor
/// - traces/volume/attributes/colorbar/xanchor
/// - traces/mesh3d/attributes/colorbar/xanchor
/// - traces/cone/attributes/colorbar/xanchor
/// - traces/streamtube/attributes/colorbar/xanchor
/// - traces/scattergeo/attributes/marker/colorbar/xanchor
/// - traces/choropleth/attributes/colorbar/xanchor
/// - traces/scattergl/attributes/marker/colorbar/xanchor
/// - traces/splom/attributes/marker/colorbar/xanchor
/// - traces/heatmapgl/attributes/colorbar/xanchor
/// - traces/parcoords/attributes/line/colorbar/xanchor
/// - traces/parcats/attributes/line/colorbar/xanchor
/// - traces/scattermapbox/attributes/marker/colorbar/xanchor
/// - traces/choroplethmapbox/attributes/colorbar/xanchor
/// - traces/densitymapbox/attributes/colorbar/xanchor
/// - traces/scattercarpet/attributes/marker/colorbar/xanchor
/// - traces/contourcarpet/attributes/colorbar/xanchor
/// - traces/scatterpolar/attributes/marker/colorbar/xanchor
/// - traces/scatterpolargl/attributes/marker/colorbar/xanchor
/// - traces/barpolar/attributes/marker/colorbar/xanchor
public enum XAnchor1: String, Encodable {
    case left
    case center
    case right
}

/// Sets the anchor for the y position.
/// - layout/layoutAttributes/images/items/image/yanchor
/// - layout/layoutAttributes/coloraxis/colorbar/yanchor
/// - traces/scatter/attributes/marker/colorbar/yanchor
/// - traces/bar/attributes/marker/colorbar/yanchor
/// - traces/heatmap/attributes/colorbar/yanchor
/// - traces/histogram/attributes/marker/colorbar/yanchor
/// - traces/histogram2d/attributes/colorbar/yanchor
/// - traces/histogram2dcontour/attributes/colorbar/yanchor
/// - traces/contour/attributes/colorbar/yanchor
/// - traces/scatterternary/attributes/marker/colorbar/yanchor
/// - traces/funnel/attributes/marker/colorbar/yanchor
/// - traces/sunburst/attributes/marker/colorbar/yanchor
/// - traces/treemap/attributes/marker/colorbar/yanchor
/// - traces/scatter3d/attributes/line/colorbar/yanchor
/// - traces/scatter3d/attributes/marker/colorbar/yanchor
/// - traces/surface/attributes/colorbar/yanchor
/// - traces/isosurface/attributes/colorbar/yanchor
/// - traces/volume/attributes/colorbar/yanchor
/// - traces/mesh3d/attributes/colorbar/yanchor
/// - traces/cone/attributes/colorbar/yanchor
/// - traces/streamtube/attributes/colorbar/yanchor
/// - traces/scattergeo/attributes/marker/colorbar/yanchor
/// - traces/choropleth/attributes/colorbar/yanchor
/// - traces/scattergl/attributes/marker/colorbar/yanchor
/// - traces/splom/attributes/marker/colorbar/yanchor
/// - traces/heatmapgl/attributes/colorbar/yanchor
/// - traces/parcoords/attributes/line/colorbar/yanchor
/// - traces/parcats/attributes/line/colorbar/yanchor
/// - traces/scattermapbox/attributes/marker/colorbar/yanchor
/// - traces/choroplethmapbox/attributes/colorbar/yanchor
/// - traces/densitymapbox/attributes/colorbar/yanchor
/// - traces/scattercarpet/attributes/marker/colorbar/yanchor
/// - traces/contourcarpet/attributes/colorbar/yanchor
/// - traces/scatterpolar/attributes/marker/colorbar/yanchor
/// - traces/scatterpolargl/attributes/marker/colorbar/yanchor
/// - traces/barpolar/attributes/marker/colorbar/yanchor
public enum YAnchor1: String, Encodable {
    case top
    case middle
    case bottom
}

/// Determines whether this slider length is set in units of plot *fraction* or in *pixels. 
///
/// Use `len` to set the value.
/// - layout/layoutAttributes/sliders/items/slider/lenmode
/// - layout/layoutAttributes/coloraxis/colorbar/lenmode
/// - traces/scatter/attributes/marker/colorbar/lenmode
/// - traces/bar/attributes/marker/colorbar/lenmode
/// - traces/heatmap/attributes/colorbar/lenmode
/// - traces/histogram/attributes/marker/colorbar/lenmode
/// - traces/histogram2d/attributes/colorbar/lenmode
/// - traces/histogram2dcontour/attributes/colorbar/lenmode
/// - traces/contour/attributes/colorbar/lenmode
/// - traces/scatterternary/attributes/marker/colorbar/lenmode
/// - traces/funnel/attributes/marker/colorbar/lenmode
/// - traces/sunburst/attributes/marker/colorbar/lenmode
/// - traces/treemap/attributes/marker/colorbar/lenmode
/// - traces/scatter3d/attributes/line/colorbar/lenmode
/// - traces/scatter3d/attributes/marker/colorbar/lenmode
/// - traces/surface/attributes/colorbar/lenmode
/// - traces/isosurface/attributes/colorbar/lenmode
/// - traces/volume/attributes/colorbar/lenmode
/// - traces/mesh3d/attributes/colorbar/lenmode
/// - traces/cone/attributes/colorbar/lenmode
/// - traces/streamtube/attributes/colorbar/lenmode
/// - traces/scattergeo/attributes/marker/colorbar/lenmode
/// - traces/choropleth/attributes/colorbar/lenmode
/// - traces/scattergl/attributes/marker/colorbar/lenmode
/// - traces/splom/attributes/marker/colorbar/lenmode
/// - traces/heatmapgl/attributes/colorbar/lenmode
/// - traces/parcoords/attributes/line/colorbar/lenmode
/// - traces/parcats/attributes/line/colorbar/lenmode
/// - traces/scattermapbox/attributes/marker/colorbar/lenmode
/// - traces/choroplethmapbox/attributes/colorbar/lenmode
/// - traces/densitymapbox/attributes/colorbar/lenmode
/// - traces/scattercarpet/attributes/marker/colorbar/lenmode
/// - traces/contourcarpet/attributes/colorbar/lenmode
/// - traces/scatterpolar/attributes/marker/colorbar/lenmode
/// - traces/scatterpolargl/attributes/marker/colorbar/lenmode
/// - traces/barpolar/attributes/marker/colorbar/lenmode
public enum LengthMode0: String, Encodable {
    case fraction
    case pixels
}

/// Determines whether this color bar's thickness (i.e. 
///
/// the measure in the constant color direction) is set in units of plot *fraction* or in *pixels*.
/// Use `thickness` to set the value.
/// - layout/layoutAttributes/coloraxis/colorbar/thicknessmode
/// - traces/scatter/attributes/marker/colorbar/thicknessmode
/// - traces/bar/attributes/marker/colorbar/thicknessmode
/// - traces/heatmap/attributes/colorbar/thicknessmode
/// - traces/histogram/attributes/marker/colorbar/thicknessmode
/// - traces/histogram2d/attributes/colorbar/thicknessmode
/// - traces/histogram2dcontour/attributes/colorbar/thicknessmode
/// - traces/contour/attributes/colorbar/thicknessmode
/// - traces/scatterternary/attributes/marker/colorbar/thicknessmode
/// - traces/funnel/attributes/marker/colorbar/thicknessmode
/// - traces/sunburst/attributes/marker/colorbar/thicknessmode
/// - traces/treemap/attributes/marker/colorbar/thicknessmode
/// - traces/scatter3d/attributes/line/colorbar/thicknessmode
/// - traces/scatter3d/attributes/marker/colorbar/thicknessmode
/// - traces/surface/attributes/colorbar/thicknessmode
/// - traces/isosurface/attributes/colorbar/thicknessmode
/// - traces/volume/attributes/colorbar/thicknessmode
/// - traces/mesh3d/attributes/colorbar/thicknessmode
/// - traces/cone/attributes/colorbar/thicknessmode
/// - traces/streamtube/attributes/colorbar/thicknessmode
/// - traces/scattergeo/attributes/marker/colorbar/thicknessmode
/// - traces/choropleth/attributes/colorbar/thicknessmode
/// - traces/scattergl/attributes/marker/colorbar/thicknessmode
/// - traces/splom/attributes/marker/colorbar/thicknessmode
/// - traces/heatmapgl/attributes/colorbar/thicknessmode
/// - traces/parcoords/attributes/line/colorbar/thicknessmode
/// - traces/parcats/attributes/line/colorbar/thicknessmode
/// - traces/scattermapbox/attributes/marker/colorbar/thicknessmode
/// - traces/choroplethmapbox/attributes/colorbar/thicknessmode
/// - traces/densitymapbox/attributes/colorbar/thicknessmode
/// - traces/scattercarpet/attributes/marker/colorbar/thicknessmode
/// - traces/contourcarpet/attributes/colorbar/thicknessmode
/// - traces/scatterpolar/attributes/marker/colorbar/thicknessmode
/// - traces/scatterpolargl/attributes/marker/colorbar/thicknessmode
/// - traces/barpolar/attributes/marker/colorbar/thicknessmode
public enum ThicknessMode0: String, Encodable {
    case fraction
    case pixels
}

/// Determines the location of color bar's title with respect to the color bar. 
///
/// Note that the title's location used to be set by the now deprecated `titleside` attribute.
/// - layout/layoutAttributes/coloraxis/colorbar/title/side
/// - traces/scatter/attributes/marker/colorbar/title/side
/// - traces/bar/attributes/marker/colorbar/title/side
/// - traces/heatmap/attributes/colorbar/title/side
/// - traces/histogram/attributes/marker/colorbar/title/side
/// - traces/histogram2d/attributes/colorbar/title/side
/// - traces/histogram2dcontour/attributes/colorbar/title/side
/// - traces/contour/attributes/colorbar/title/side
/// - traces/scatterternary/attributes/marker/colorbar/title/side
/// - traces/funnel/attributes/marker/colorbar/title/side
/// - traces/sunburst/attributes/marker/colorbar/title/side
/// - traces/treemap/attributes/marker/colorbar/title/side
/// - traces/scatter3d/attributes/line/colorbar/title/side
/// - traces/scatter3d/attributes/marker/colorbar/title/side
/// - traces/surface/attributes/colorbar/title/side
/// - traces/isosurface/attributes/colorbar/title/side
/// - traces/volume/attributes/colorbar/title/side
/// - traces/mesh3d/attributes/colorbar/title/side
/// - traces/cone/attributes/colorbar/title/side
/// - traces/streamtube/attributes/colorbar/title/side
/// - traces/scattergeo/attributes/marker/colorbar/title/side
/// - traces/choropleth/attributes/colorbar/title/side
/// - traces/scattergl/attributes/marker/colorbar/title/side
/// - traces/splom/attributes/marker/colorbar/title/side
/// - traces/heatmapgl/attributes/colorbar/title/side
/// - traces/parcoords/attributes/line/colorbar/title/side
/// - traces/parcats/attributes/line/colorbar/title/side
/// - traces/scattermapbox/attributes/marker/colorbar/title/side
/// - traces/choroplethmapbox/attributes/colorbar/title/side
/// - traces/densitymapbox/attributes/colorbar/title/side
/// - traces/scattercarpet/attributes/marker/colorbar/title/side
/// - traces/contourcarpet/attributes/colorbar/title/side
/// - traces/scatterpolar/attributes/marker/colorbar/title/side
/// - traces/scatterpolargl/attributes/marker/colorbar/title/side
/// - traces/barpolar/attributes/marker/colorbar/title/side
public enum Side0: String, Encodable {
    case right
    case top
    case bottom
}

/// Determines whether or not this trace is visible. 
///
/// If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the
/// legend itself is visible).
/// - traces/scatter/attributes/visible
/// - traces/bar/attributes/visible
/// - traces/box/attributes/visible
/// - traces/heatmap/attributes/visible
/// - traces/histogram/attributes/visible
/// - traces/histogram2d/attributes/visible
/// - traces/histogram2dcontour/attributes/visible
/// - traces/contour/attributes/visible
/// - traces/scatterternary/attributes/visible
/// - traces/violin/attributes/visible
/// - traces/funnel/attributes/visible
/// - traces/waterfall/attributes/visible
/// - traces/image/attributes/visible
/// - traces/pie/attributes/visible
/// - traces/sunburst/attributes/visible
/// - traces/treemap/attributes/visible
/// - traces/funnelarea/attributes/visible
/// - traces/scatter3d/attributes/visible
/// - traces/surface/attributes/visible
/// - traces/isosurface/attributes/visible
/// - traces/volume/attributes/visible
/// - traces/mesh3d/attributes/visible
/// - traces/cone/attributes/visible
/// - traces/streamtube/attributes/visible
/// - traces/scattergeo/attributes/visible
/// - traces/choropleth/attributes/visible
/// - traces/scattergl/attributes/visible
/// - traces/splom/attributes/visible
/// - traces/pointcloud/attributes/visible
/// - traces/heatmapgl/attributes/visible
/// - traces/parcoords/attributes/visible
/// - traces/parcats/attributes/visible
/// - traces/scattermapbox/attributes/visible
/// - traces/choroplethmapbox/attributes/visible
/// - traces/densitymapbox/attributes/visible
/// - traces/sankey/attributes/visible
/// - traces/indicator/attributes/visible
/// - traces/table/attributes/visible
/// - traces/carpet/attributes/visible
/// - traces/scattercarpet/attributes/visible
/// - traces/contourcarpet/attributes/visible
/// - traces/ohlc/attributes/visible
/// - traces/candlestick/attributes/visible
/// - traces/scatterpolar/attributes/visible
/// - traces/scatterpolargl/attributes/visible
/// - traces/barpolar/attributes/visible
/// - traces/area/attributes/visible
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
/// - traces/scatter/attributes/marker/symbol
/// - traces/box/attributes/marker/symbol
/// - traces/scatterternary/attributes/marker/symbol
/// - traces/violin/attributes/marker/symbol
/// - traces/scattergeo/attributes/marker/symbol
/// - traces/scattergl/attributes/marker/symbol
/// - traces/splom/attributes/marker/symbol
/// - traces/scattercarpet/attributes/marker/symbol
/// - traces/scatterpolar/attributes/marker/symbol
/// - traces/scatterpolargl/attributes/marker/symbol
/// - traces/area/attributes/marker/symbol
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
/// - traces/scatter/attributes/marker/sizemode
/// - traces/scatterternary/attributes/marker/sizemode
/// - traces/scatter3d/attributes/marker/sizemode
/// - traces/scattergeo/attributes/marker/sizemode
/// - traces/scattergl/attributes/marker/sizemode
/// - traces/splom/attributes/marker/sizemode
/// - traces/scattermapbox/attributes/marker/sizemode
/// - traces/scattercarpet/attributes/marker/sizemode
/// - traces/scatterpolar/attributes/marker/sizemode
/// - traces/scatterpolargl/attributes/marker/sizemode
public enum SizeMode0: String, Encodable {
    case diameter
    case area
}

/// Sets the type of gradient used to fill the markers
/// - traces/scatter/attributes/marker/gradient/type
/// - traces/scatterternary/attributes/marker/gradient/type
/// - traces/scattergeo/attributes/marker/gradient/type
/// - traces/scattercarpet/attributes/marker/gradient/type
/// - traces/scatterpolar/attributes/marker/gradient/type
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
/// - traces/scatter/attributes/error_x/type
/// - traces/scatter/attributes/error_y/type
/// - traces/bar/attributes/error_x/type
/// - traces/bar/attributes/error_y/type
/// - traces/histogram/attributes/error_x/type
/// - traces/histogram/attributes/error_y/type
/// - traces/scatter3d/attributes/error_x/type
/// - traces/scatter3d/attributes/error_y/type
/// - traces/scatter3d/attributes/error_z/type
/// - traces/scattergl/attributes/error_x/type
/// - traces/scattergl/attributes/error_y/type
public enum Rule1: String, Encodable {
    case percent
    case constant
    case sqrt
    case data
}
