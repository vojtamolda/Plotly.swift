/// Sets the container `x` refers to. 
///
/// *container* spans the entire `width` of the plot. *paper* refers to the width of the plotting
/// area only.
/// - layout/layoutAttributes/title/xref
/// - layout/layoutAttributes/title/yref
public enum XReference0: String, Encodable {
    case container
    case paper
}

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
/// - traces/bar/attributes/_deprecated/bardir
/// - traces/box/attributes/orientation
/// - traces/histogram/attributes/orientation
/// - traces/histogram/attributes/_deprecated/bardir
/// - traces/violin/attributes/orientation
/// - traces/funnel/attributes/orientation
/// - traces/waterfall/attributes/orientation
/// - traces/sankey/attributes/orientation
public enum Orientation0: String, Encodable {
    case v
    case h
}

/// The easing function used for the transition
/// - layout/layoutAttributes/transition/easing
/// - layout/layoutAttributes/sliders/items/slider/transition/easing
public enum Easing0: String, Encodable {
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

/// Sets the axis type. 
///
/// By default, plotly attempts to determined the axis type by looking into the data of the traces
/// that referenced the axis in question.
/// - layout/layoutAttributes/xaxis/type
/// - layout/layoutAttributes/yaxis/type
public enum Rule0: String, Encodable {
    case auto = "-"
    case linear
    case log
    case date
    case category
    case multiCategory = "multicategory"
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
/// - traces/treemap/attributes/marker/depthfade
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
/// - layout/layoutAttributes/xaxis/scaleanchor
/// - layout/layoutAttributes/xaxis/matches
/// - layout/layoutAttributes/yaxis/scaleanchor
/// - layout/layoutAttributes/yaxis/matches
public enum ScaleAnchor0: String, Encodable {
    case xSubPlotID = "/^x([2-9]|[1-9][0-9]+)?$/"
    case ySubPlotID = "/^y([2-9]|[1-9][0-9]+)?$/"
}

/// If this axis needs to be compressed (either due to its own `scaleanchor` and `scaleratio` or those of the other axis), determines how that happens: by increasing the *range* (default), or by decreasing the *domain*.
/// - layout/layoutAttributes/xaxis/constrain
/// - layout/layoutAttributes/yaxis/constrain
public enum Constrain0: String, Encodable {
    case range
    case domain
}

/// If this axis needs to be compressed (either due to its own `scaleanchor` and `scaleratio` or those of the other axis), determines which direction we push the originally specified plot area. 
///
/// Options are *left*, *center* (default), and *right* for x axes, and *top*, *middle* (default),
/// and *bottom* for y axes.
/// - layout/layoutAttributes/xaxis/constraintoward
/// - layout/layoutAttributes/yaxis/constraintoward
public enum ConstrainToward0: String, Encodable {
    case left
    case center
    case right
    case top
    case middle
    case bottom
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

/// Determines where ticks and grid lines are drawn with respect to their corresponding tick labels. 
///
/// Only has an effect for axes of `type` *category* or *multicategory*. When set to *boundaries*,
/// ticks and grid lines are drawn half a category to the left/bottom of labels.
/// - layout/layoutAttributes/xaxis/tickson
/// - layout/layoutAttributes/yaxis/tickson
public enum TicksOn0: String, Encodable {
    case labels
    case boundaries
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

/// Determines whether spikelines are stuck to the cursor or to the closest datapoints.
/// - layout/layoutAttributes/xaxis/spikesnap
/// - layout/layoutAttributes/yaxis/spikesnap
public enum SpikeSnap0: String, Encodable {
    case data
    case cursor
}

/// If *all*, all tick labels are displayed with a prefix. 
///
/// If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is
/// displayed with a suffix. If *none*, tick prefixes are hidden.
/// - layout/layoutAttributes/xaxis/showtickprefix
/// - layout/layoutAttributes/xaxis/showticksuffix
/// - layout/layoutAttributes/xaxis/showexponent
/// - layout/layoutAttributes/yaxis/showtickprefix
/// - layout/layoutAttributes/yaxis/showticksuffix
/// - layout/layoutAttributes/yaxis/showexponent
/// - layout/layoutAttributes/ternary/aaxis/showtickprefix
/// - layout/layoutAttributes/ternary/aaxis/showticksuffix
/// - layout/layoutAttributes/ternary/aaxis/showexponent
/// - layout/layoutAttributes/ternary/baxis/showtickprefix
/// - layout/layoutAttributes/ternary/baxis/showticksuffix
/// - layout/layoutAttributes/ternary/baxis/showexponent
/// - layout/layoutAttributes/ternary/caxis/showtickprefix
/// - layout/layoutAttributes/ternary/caxis/showticksuffix
/// - layout/layoutAttributes/ternary/caxis/showexponent
/// - layout/layoutAttributes/scene/xaxis/showtickprefix
/// - layout/layoutAttributes/scene/xaxis/showticksuffix
/// - layout/layoutAttributes/scene/xaxis/showexponent
/// - layout/layoutAttributes/scene/yaxis/showtickprefix
/// - layout/layoutAttributes/scene/yaxis/showticksuffix
/// - layout/layoutAttributes/scene/yaxis/showexponent
/// - layout/layoutAttributes/scene/zaxis/showtickprefix
/// - layout/layoutAttributes/scene/zaxis/showticksuffix
/// - layout/layoutAttributes/scene/zaxis/showexponent
/// - layout/layoutAttributes/polar/radialaxis/showtickprefix
/// - layout/layoutAttributes/polar/radialaxis/showticksuffix
/// - layout/layoutAttributes/polar/radialaxis/showexponent
/// - layout/layoutAttributes/polar/angularaxis/showtickprefix
/// - layout/layoutAttributes/polar/angularaxis/showticksuffix
/// - layout/layoutAttributes/polar/angularaxis/showexponent
/// - layout/layoutAttributes/coloraxis/colorbar/showtickprefix
/// - layout/layoutAttributes/coloraxis/colorbar/showticksuffix
/// - layout/layoutAttributes/coloraxis/colorbar/showexponent
/// - traces/scatter/attributes/marker/colorbar/showtickprefix
/// - traces/scatter/attributes/marker/colorbar/showticksuffix
/// - traces/scatter/attributes/marker/colorbar/showexponent
/// - traces/bar/attributes/marker/colorbar/showtickprefix
/// - traces/bar/attributes/marker/colorbar/showticksuffix
/// - traces/bar/attributes/marker/colorbar/showexponent
/// - traces/heatmap/attributes/colorbar/showtickprefix
/// - traces/heatmap/attributes/colorbar/showticksuffix
/// - traces/heatmap/attributes/colorbar/showexponent
/// - traces/histogram/attributes/marker/colorbar/showtickprefix
/// - traces/histogram/attributes/marker/colorbar/showticksuffix
/// - traces/histogram/attributes/marker/colorbar/showexponent
/// - traces/histogram2d/attributes/colorbar/showtickprefix
/// - traces/histogram2d/attributes/colorbar/showticksuffix
/// - traces/histogram2d/attributes/colorbar/showexponent
/// - traces/histogram2dcontour/attributes/colorbar/showtickprefix
/// - traces/histogram2dcontour/attributes/colorbar/showticksuffix
/// - traces/histogram2dcontour/attributes/colorbar/showexponent
/// - traces/contour/attributes/colorbar/showtickprefix
/// - traces/contour/attributes/colorbar/showticksuffix
/// - traces/contour/attributes/colorbar/showexponent
/// - traces/scatterternary/attributes/marker/colorbar/showtickprefix
/// - traces/scatterternary/attributes/marker/colorbar/showticksuffix
/// - traces/scatterternary/attributes/marker/colorbar/showexponent
/// - traces/funnel/attributes/marker/colorbar/showtickprefix
/// - traces/funnel/attributes/marker/colorbar/showticksuffix
/// - traces/funnel/attributes/marker/colorbar/showexponent
/// - traces/sunburst/attributes/marker/colorbar/showtickprefix
/// - traces/sunburst/attributes/marker/colorbar/showticksuffix
/// - traces/sunburst/attributes/marker/colorbar/showexponent
/// - traces/treemap/attributes/marker/colorbar/showtickprefix
/// - traces/treemap/attributes/marker/colorbar/showticksuffix
/// - traces/treemap/attributes/marker/colorbar/showexponent
/// - traces/scatter3d/attributes/line/colorbar/showtickprefix
/// - traces/scatter3d/attributes/line/colorbar/showticksuffix
/// - traces/scatter3d/attributes/line/colorbar/showexponent
/// - traces/scatter3d/attributes/marker/colorbar/showtickprefix
/// - traces/scatter3d/attributes/marker/colorbar/showticksuffix
/// - traces/scatter3d/attributes/marker/colorbar/showexponent
/// - traces/surface/attributes/colorbar/showtickprefix
/// - traces/surface/attributes/colorbar/showticksuffix
/// - traces/surface/attributes/colorbar/showexponent
/// - traces/isosurface/attributes/colorbar/showtickprefix
/// - traces/isosurface/attributes/colorbar/showticksuffix
/// - traces/isosurface/attributes/colorbar/showexponent
/// - traces/volume/attributes/colorbar/showtickprefix
/// - traces/volume/attributes/colorbar/showticksuffix
/// - traces/volume/attributes/colorbar/showexponent
/// - traces/mesh3d/attributes/colorbar/showtickprefix
/// - traces/mesh3d/attributes/colorbar/showticksuffix
/// - traces/mesh3d/attributes/colorbar/showexponent
/// - traces/cone/attributes/colorbar/showtickprefix
/// - traces/cone/attributes/colorbar/showticksuffix
/// - traces/cone/attributes/colorbar/showexponent
/// - traces/streamtube/attributes/colorbar/showtickprefix
/// - traces/streamtube/attributes/colorbar/showticksuffix
/// - traces/streamtube/attributes/colorbar/showexponent
/// - traces/scattergeo/attributes/marker/colorbar/showtickprefix
/// - traces/scattergeo/attributes/marker/colorbar/showticksuffix
/// - traces/scattergeo/attributes/marker/colorbar/showexponent
/// - traces/choropleth/attributes/colorbar/showtickprefix
/// - traces/choropleth/attributes/colorbar/showticksuffix
/// - traces/choropleth/attributes/colorbar/showexponent
/// - traces/scattergl/attributes/marker/colorbar/showtickprefix
/// - traces/scattergl/attributes/marker/colorbar/showticksuffix
/// - traces/scattergl/attributes/marker/colorbar/showexponent
/// - traces/splom/attributes/marker/colorbar/showtickprefix
/// - traces/splom/attributes/marker/colorbar/showticksuffix
/// - traces/splom/attributes/marker/colorbar/showexponent
/// - traces/heatmapgl/attributes/colorbar/showtickprefix
/// - traces/heatmapgl/attributes/colorbar/showticksuffix
/// - traces/heatmapgl/attributes/colorbar/showexponent
/// - traces/parcoords/attributes/line/colorbar/showtickprefix
/// - traces/parcoords/attributes/line/colorbar/showticksuffix
/// - traces/parcoords/attributes/line/colorbar/showexponent
/// - traces/parcats/attributes/line/colorbar/showtickprefix
/// - traces/parcats/attributes/line/colorbar/showticksuffix
/// - traces/parcats/attributes/line/colorbar/showexponent
/// - traces/scattermapbox/attributes/marker/colorbar/showtickprefix
/// - traces/scattermapbox/attributes/marker/colorbar/showticksuffix
/// - traces/scattermapbox/attributes/marker/colorbar/showexponent
/// - traces/choroplethmapbox/attributes/colorbar/showtickprefix
/// - traces/choroplethmapbox/attributes/colorbar/showticksuffix
/// - traces/choroplethmapbox/attributes/colorbar/showexponent
/// - traces/densitymapbox/attributes/colorbar/showtickprefix
/// - traces/densitymapbox/attributes/colorbar/showticksuffix
/// - traces/densitymapbox/attributes/colorbar/showexponent
/// - traces/indicator/attributes/gauge/axis/showtickprefix
/// - traces/indicator/attributes/gauge/axis/showticksuffix
/// - traces/indicator/attributes/gauge/axis/showexponent
/// - traces/carpet/attributes/aaxis/showtickprefix
/// - traces/carpet/attributes/aaxis/showticksuffix
/// - traces/carpet/attributes/aaxis/showexponent
/// - traces/carpet/attributes/baxis/showtickprefix
/// - traces/carpet/attributes/baxis/showticksuffix
/// - traces/carpet/attributes/baxis/showexponent
/// - traces/scattercarpet/attributes/marker/colorbar/showtickprefix
/// - traces/scattercarpet/attributes/marker/colorbar/showticksuffix
/// - traces/scattercarpet/attributes/marker/colorbar/showexponent
/// - traces/contourcarpet/attributes/colorbar/showtickprefix
/// - traces/contourcarpet/attributes/colorbar/showticksuffix
/// - traces/contourcarpet/attributes/colorbar/showexponent
/// - traces/scatterpolar/attributes/marker/colorbar/showtickprefix
/// - traces/scatterpolar/attributes/marker/colorbar/showticksuffix
/// - traces/scatterpolar/attributes/marker/colorbar/showexponent
/// - traces/scatterpolargl/attributes/marker/colorbar/showtickprefix
/// - traces/scatterpolargl/attributes/marker/colorbar/showticksuffix
/// - traces/scatterpolargl/attributes/marker/colorbar/showexponent
/// - traces/barpolar/attributes/marker/colorbar/showtickprefix
/// - traces/barpolar/attributes/marker/colorbar/showticksuffix
/// - traces/barpolar/attributes/marker/colorbar/showexponent
public enum ShowTickPrefix0: String, Encodable {
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

/// If set to an opposite-letter axis id (e.g. 
///
/// `x2`, `y`), this axis is bound to the corresponding opposite-letter axis. If set to *free*, this
/// axis' position is determined by `position`.
/// - layout/layoutAttributes/xaxis/anchor
/// - layout/layoutAttributes/xaxis/overlaying
/// - layout/layoutAttributes/yaxis/anchor
/// - layout/layoutAttributes/yaxis/overlaying
public enum Anchor0: String, Encodable {
    case free
    case xSubPlotID = "/^x([2-9]|[1-9][0-9]+)?$/"
    case ySubPlotID = "/^y([2-9]|[1-9][0-9]+)?$/"
}

/// Determines whether a x (y) axis is positioned at the *bottom* (*left*) or *top* (*right*) of the plotting area.
/// - layout/layoutAttributes/xaxis/side
/// - layout/layoutAttributes/yaxis/side
/// - traces/indicator/attributes/delta/position
public enum Side0: String, Encodable {
    case top
    case bottom
    case left
    case right
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

/// Sets the axis type. 
///
/// By default, plotly attempts to determined the axis type by looking into the data of the traces
/// that referenced the axis in question.
/// - layout/layoutAttributes/scene/xaxis/type
/// - layout/layoutAttributes/scene/yaxis/type
/// - layout/layoutAttributes/scene/zaxis/type
/// - layout/layoutAttributes/polar/radialaxis/type
public enum Rule1: String, Encodable {
    case auto = "-"
    case linear
    case log
    case date
    case category
}

/// Sets the horizontal alignment of the `text` within the box. 
///
/// Has an effect only if `text` spans more two or more lines (i.e. `text` contains one or more <br>
/// HTML tags) or if an explicit width is set to override the text width.
/// - layout/layoutAttributes/scene/annotations/items/annotation/align
/// - layout/layoutAttributes/annotations/items/annotation/align
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
/// - traces/indicator/attributes/align
/// - traces/indicator/attributes/title/align
/// - traces/table/attributes/header/align
/// - traces/table/attributes/cells/align
/// - traces/scattercarpet/attributes/marker/colorbar/xanchor
/// - traces/contourcarpet/attributes/colorbar/xanchor
/// - traces/scatterpolar/attributes/marker/colorbar/xanchor
/// - traces/scatterpolargl/attributes/marker/colorbar/xanchor
/// - traces/barpolar/attributes/marker/colorbar/xanchor
public enum Align1: String, Encodable {
    case left
    case center
    case right
}

/// Sets the vertical alignment of the `text` within the box. 
///
/// Has an effect only if an explicit height is set to override the text height.
/// - layout/layoutAttributes/scene/annotations/items/annotation/valign
/// - layout/layoutAttributes/legend/valign
/// - layout/layoutAttributes/annotations/items/annotation/valign
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
public enum VerticalAlign0: String, Encodable {
    case top
    case middle
    case bottom
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

/// Determines on which side of radial axis line the tick and tick labels appear.
/// - layout/layoutAttributes/polar/radialaxis/side
/// - layout/layoutAttributes/direction
/// - traces/pie/attributes/direction
public enum Side1: String, Encodable {
    case clockwise
    case counterClockwise = "counterclockwise"
}

/// Legacy polar charts are deprecated! Please switch to *polar* subplots. 
///
/// Sets the orientation (from the paper perspective) of the radial axis tick labels.
/// - layout/layoutAttributes/radialaxis/tickorientation
/// - layout/layoutAttributes/angularaxis/tickorientation
public enum TickOrientation0: String, Encodable {
    case horizontal
    case vertical
}

/// Determines the behavior on legend item click. 
///
/// *toggle* toggles the visibility of the item clicked on the graph. *toggleothers* makes the
/// clicked item the sole visible item on the graph. *false* disable legend item click interactions.
/// - layout/layoutAttributes/legend/itemclick
/// - layout/layoutAttributes/legend/itemdoubleclick
public enum ItemClick0: String, Encodable {
    case toggle
    case toggleOthers = "toggleothers"
    case `false` = "false"
}

/// Sets the annotation's x coordinate axis. 
///
/// If set to an x axis id (e.g. *x* or *x2*), the `x` position refers to an x coordinate If set to
/// *paper*, the `x` position refers to the distance from the left side of the plotting area in
/// normalized coordinates where 0 (1) corresponds to the left (right) side.
/// - layout/layoutAttributes/annotations/items/annotation/xref
/// - layout/layoutAttributes/shapes/items/shape/xref
/// - layout/layoutAttributes/images/items/image/xref
public enum XReference1: String, Encodable {
    case paper
    case xSubPlotID = "/^x([2-9]|[1-9][0-9]+)?$/"
}

/// Sets the annotation's y coordinate axis. 
///
/// If set to an y axis id (e.g. *y* or *y2*), the `y` position refers to an y coordinate If set to
/// *paper*, the `y` position refers to the distance from the bottom of the plotting area in
/// normalized coordinates where 0 (1) corresponds to the bottom (top).
/// - layout/layoutAttributes/annotations/items/annotation/yref
/// - layout/layoutAttributes/shapes/items/shape/yref
/// - layout/layoutAttributes/images/items/image/yref
public enum YReference0: String, Encodable {
    case paper
    case ySubPlotID = "/^y([2-9]|[1-9][0-9]+)?$/"
}

/// Specifies whether shapes are drawn below or above traces.
/// - layout/layoutAttributes/shapes/items/shape/layer
/// - layout/layoutAttributes/images/items/image/layer
public enum Layer1: String, Encodable {
    case below
    case above
}

/// Sets the shapes's sizing mode along the x axis. 
///
/// If set to *scaled*, `x0`, `x1` and x coordinates within `path` refer to data values on the x
/// axis or a fraction of the plot area's width (`xref` set to *paper*). If set to *pixel*,
/// `xanchor` specifies the x position in terms of data or plot fraction but `x0`, `x1` and x
/// coordinates within `path` are pixels relative to `xanchor`. This way, the shape can have a fixed
/// width while maintaining a position relative to data or plot fraction.
/// - layout/layoutAttributes/shapes/items/shape/xsizemode
/// - layout/layoutAttributes/shapes/items/shape/ysizemode
public enum XSizeMode0: String, Encodable {
    case scaled
    case pixel
}

/// Sets the Plotly method to be called on click. 
///
/// If the `skip` method is used, the API updatemenu will function as normal but will perform no API
/// calls and will not bind automatically to state updates. This may be used to create a component
/// interface and attach to updatemenu events manually via JavaScript.
/// - layout/layoutAttributes/updatemenus/items/updatemenu/buttons/items/button/method
/// - layout/layoutAttributes/sliders/items/slider/steps/items/step/method
public enum Method0: String, Encodable {
    case restyle
    case relayout
    case animate
    case update
    case skip
}

/// Determines whether this slider length is set in units of plot *fraction* or in *pixels. 
///
/// Use `len` to set the value.
/// - layout/layoutAttributes/sliders/items/slider/lenmode
/// - layout/layoutAttributes/coloraxis/colorbar/thicknessmode
/// - layout/layoutAttributes/coloraxis/colorbar/lenmode
/// - traces/scatter/attributes/marker/colorbar/thicknessmode
/// - traces/scatter/attributes/marker/colorbar/lenmode
/// - traces/bar/attributes/marker/colorbar/thicknessmode
/// - traces/bar/attributes/marker/colorbar/lenmode
/// - traces/heatmap/attributes/colorbar/thicknessmode
/// - traces/heatmap/attributes/colorbar/lenmode
/// - traces/histogram/attributes/marker/colorbar/thicknessmode
/// - traces/histogram/attributes/marker/colorbar/lenmode
/// - traces/histogram2d/attributes/colorbar/thicknessmode
/// - traces/histogram2d/attributes/colorbar/lenmode
/// - traces/histogram2dcontour/attributes/colorbar/thicknessmode
/// - traces/histogram2dcontour/attributes/colorbar/lenmode
/// - traces/contour/attributes/colorbar/thicknessmode
/// - traces/contour/attributes/colorbar/lenmode
/// - traces/scatterternary/attributes/marker/colorbar/thicknessmode
/// - traces/scatterternary/attributes/marker/colorbar/lenmode
/// - traces/funnel/attributes/marker/colorbar/thicknessmode
/// - traces/funnel/attributes/marker/colorbar/lenmode
/// - traces/sunburst/attributes/marker/colorbar/thicknessmode
/// - traces/sunburst/attributes/marker/colorbar/lenmode
/// - traces/treemap/attributes/marker/colorbar/thicknessmode
/// - traces/treemap/attributes/marker/colorbar/lenmode
/// - traces/scatter3d/attributes/line/colorbar/thicknessmode
/// - traces/scatter3d/attributes/line/colorbar/lenmode
/// - traces/scatter3d/attributes/marker/colorbar/thicknessmode
/// - traces/scatter3d/attributes/marker/colorbar/lenmode
/// - traces/surface/attributes/colorbar/thicknessmode
/// - traces/surface/attributes/colorbar/lenmode
/// - traces/isosurface/attributes/colorbar/thicknessmode
/// - traces/isosurface/attributes/colorbar/lenmode
/// - traces/volume/attributes/colorbar/thicknessmode
/// - traces/volume/attributes/colorbar/lenmode
/// - traces/mesh3d/attributes/colorbar/thicknessmode
/// - traces/mesh3d/attributes/colorbar/lenmode
/// - traces/cone/attributes/colorbar/thicknessmode
/// - traces/cone/attributes/colorbar/lenmode
/// - traces/streamtube/attributes/colorbar/thicknessmode
/// - traces/streamtube/attributes/colorbar/lenmode
/// - traces/scattergeo/attributes/marker/colorbar/thicknessmode
/// - traces/scattergeo/attributes/marker/colorbar/lenmode
/// - traces/choropleth/attributes/colorbar/thicknessmode
/// - traces/choropleth/attributes/colorbar/lenmode
/// - traces/scattergl/attributes/marker/colorbar/thicknessmode
/// - traces/scattergl/attributes/marker/colorbar/lenmode
/// - traces/splom/attributes/marker/colorbar/thicknessmode
/// - traces/splom/attributes/marker/colorbar/lenmode
/// - traces/heatmapgl/attributes/colorbar/thicknessmode
/// - traces/heatmapgl/attributes/colorbar/lenmode
/// - traces/parcoords/attributes/line/colorbar/thicknessmode
/// - traces/parcoords/attributes/line/colorbar/lenmode
/// - traces/parcats/attributes/line/colorbar/thicknessmode
/// - traces/parcats/attributes/line/colorbar/lenmode
/// - traces/scattermapbox/attributes/marker/colorbar/thicknessmode
/// - traces/scattermapbox/attributes/marker/colorbar/lenmode
/// - traces/choroplethmapbox/attributes/colorbar/thicknessmode
/// - traces/choroplethmapbox/attributes/colorbar/lenmode
/// - traces/densitymapbox/attributes/colorbar/thicknessmode
/// - traces/densitymapbox/attributes/colorbar/lenmode
/// - traces/scattercarpet/attributes/marker/colorbar/thicknessmode
/// - traces/scattercarpet/attributes/marker/colorbar/lenmode
/// - traces/contourcarpet/attributes/colorbar/thicknessmode
/// - traces/contourcarpet/attributes/colorbar/lenmode
/// - traces/scatterpolar/attributes/marker/colorbar/thicknessmode
/// - traces/scatterpolar/attributes/marker/colorbar/lenmode
/// - traces/scatterpolargl/attributes/marker/colorbar/thicknessmode
/// - traces/scatterpolargl/attributes/marker/colorbar/lenmode
/// - traces/barpolar/attributes/marker/colorbar/thicknessmode
/// - traces/barpolar/attributes/marker/colorbar/lenmode
public enum LengthMode0: String, Encodable {
    case fraction
    case pixels
}

/// Determines the location of color bar's title with respect to the color bar. 
///
/// Note that the title's location used to be set by the now deprecated `titleside` attribute.
/// - layout/layoutAttributes/coloraxis/colorbar/title/side
/// - layout/layoutAttributes/coloraxis/colorbar/_deprecated/titleside
/// - traces/scatter/attributes/marker/colorbar/title/side
/// - traces/scatter/attributes/marker/colorbar/_deprecated/titleside
/// - traces/bar/attributes/marker/colorbar/title/side
/// - traces/bar/attributes/marker/colorbar/_deprecated/titleside
/// - traces/heatmap/attributes/colorbar/title/side
/// - traces/heatmap/attributes/colorbar/_deprecated/titleside
/// - traces/histogram/attributes/marker/colorbar/title/side
/// - traces/histogram/attributes/marker/colorbar/_deprecated/titleside
/// - traces/histogram2d/attributes/colorbar/title/side
/// - traces/histogram2d/attributes/colorbar/_deprecated/titleside
/// - traces/histogram2dcontour/attributes/colorbar/title/side
/// - traces/histogram2dcontour/attributes/colorbar/_deprecated/titleside
/// - traces/contour/attributes/colorbar/title/side
/// - traces/contour/attributes/colorbar/_deprecated/titleside
/// - traces/scatterternary/attributes/marker/colorbar/title/side
/// - traces/scatterternary/attributes/marker/colorbar/_deprecated/titleside
/// - traces/funnel/attributes/marker/colorbar/title/side
/// - traces/funnel/attributes/marker/colorbar/_deprecated/titleside
/// - traces/sunburst/attributes/marker/colorbar/title/side
/// - traces/sunburst/attributes/marker/colorbar/_deprecated/titleside
/// - traces/treemap/attributes/marker/colorbar/title/side
/// - traces/treemap/attributes/marker/colorbar/_deprecated/titleside
/// - traces/scatter3d/attributes/line/colorbar/title/side
/// - traces/scatter3d/attributes/line/colorbar/_deprecated/titleside
/// - traces/scatter3d/attributes/marker/colorbar/title/side
/// - traces/scatter3d/attributes/marker/colorbar/_deprecated/titleside
/// - traces/surface/attributes/colorbar/title/side
/// - traces/surface/attributes/colorbar/_deprecated/titleside
/// - traces/isosurface/attributes/colorbar/title/side
/// - traces/isosurface/attributes/colorbar/_deprecated/titleside
/// - traces/volume/attributes/colorbar/title/side
/// - traces/volume/attributes/colorbar/_deprecated/titleside
/// - traces/mesh3d/attributes/colorbar/title/side
/// - traces/mesh3d/attributes/colorbar/_deprecated/titleside
/// - traces/cone/attributes/colorbar/title/side
/// - traces/cone/attributes/colorbar/_deprecated/titleside
/// - traces/streamtube/attributes/colorbar/title/side
/// - traces/streamtube/attributes/colorbar/_deprecated/titleside
/// - traces/scattergeo/attributes/marker/colorbar/title/side
/// - traces/scattergeo/attributes/marker/colorbar/_deprecated/titleside
/// - traces/choropleth/attributes/colorbar/title/side
/// - traces/choropleth/attributes/colorbar/_deprecated/titleside
/// - traces/scattergl/attributes/marker/colorbar/title/side
/// - traces/scattergl/attributes/marker/colorbar/_deprecated/titleside
/// - traces/splom/attributes/marker/colorbar/title/side
/// - traces/splom/attributes/marker/colorbar/_deprecated/titleside
/// - traces/heatmapgl/attributes/colorbar/title/side
/// - traces/heatmapgl/attributes/colorbar/_deprecated/titleside
/// - traces/parcoords/attributes/line/colorbar/title/side
/// - traces/parcoords/attributes/line/colorbar/_deprecated/titleside
/// - traces/parcats/attributes/line/colorbar/title/side
/// - traces/parcats/attributes/line/colorbar/_deprecated/titleside
/// - traces/scattermapbox/attributes/marker/colorbar/title/side
/// - traces/scattermapbox/attributes/marker/colorbar/_deprecated/titleside
/// - traces/choroplethmapbox/attributes/colorbar/title/side
/// - traces/choroplethmapbox/attributes/colorbar/_deprecated/titleside
/// - traces/densitymapbox/attributes/colorbar/title/side
/// - traces/densitymapbox/attributes/colorbar/_deprecated/titleside
/// - traces/scattercarpet/attributes/marker/colorbar/title/side
/// - traces/scattercarpet/attributes/marker/colorbar/_deprecated/titleside
/// - traces/contourcarpet/attributes/colorbar/title/side
/// - traces/contourcarpet/attributes/colorbar/_deprecated/titleside
/// - traces/scatterpolar/attributes/marker/colorbar/title/side
/// - traces/scatterpolar/attributes/marker/colorbar/_deprecated/titleside
/// - traces/scatterpolargl/attributes/marker/colorbar/title/side
/// - traces/scatterpolargl/attributes/marker/colorbar/_deprecated/titleside
/// - traces/barpolar/attributes/marker/colorbar/title/side
/// - traces/barpolar/attributes/marker/colorbar/_deprecated/titleside
public enum Side2: String, Encodable {
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

/// Only relevant when `stackgroup` is used, and only the first `groupnorm` found in the `stackgroup` will be used - including if `visible` is *legendonly* but not if it is `false`. 
///
/// Sets the normalization for the sum of this `stackgroup`. With *fraction*, the value of each
/// trace at each location is divided by the sum of all trace values at that location. *percent* is
/// the same but multiplied by 100 to show percentages. If there are multiple subplots, or multiple
/// `stackgroup`s on one subplot, each will be normalized within its own set.
/// - traces/scatter/attributes/groupnorm
/// - traces/bar/layoutAttributes/barnorm
/// - traces/histogram/layoutAttributes/barnorm
public enum GroupNormalization0: String, Encodable {
    case none = ""
    case fraction
    case percent
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
/// - traces/scatter/attributes/fill
/// - traces/scattergl/attributes/fill
/// - traces/scatterpolargl/attributes/fill
public enum Fill0: String, Encodable {
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
public enum Rule2: String, Encodable {
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
public enum Rule3: String, Encodable {
    case percent
    case constant
    case sqrt
    case data
}

/// Specifies the location of the `text`. 
///
/// *inside* positions `text` inside, next to the bar end (rotated and scaled if needed). *outside*
/// positions `text` outside, next to the bar end (scaled if needed), unless there is another bar
/// stacked on this one, then the text gets pushed inside. *auto* tries to position `text` inside
/// the bar, but if the bar is too small and no bar is stacked on this one the text is moved
/// outside.
/// - traces/bar/attributes/textposition
/// - traces/funnel/attributes/textposition
/// - traces/waterfall/attributes/textposition
/// - traces/pie/attributes/textposition
public enum TextPosition1: String, Encodable {
    case inside
    case outside
    case auto
    case none
}

/// Determines if texts are kept at center or start/end points in `textposition` *inside* mode.
/// - traces/bar/attributes/insidetextanchor
/// - traces/funnel/attributes/insidetextanchor
/// - traces/waterfall/attributes/insidetextanchor
public enum InsideTextAnchor0: String, Encodable {
    case end
    case middle
    case start
}

/// Constrain the size of text inside or outside a bar to be no larger than the bar itself.
/// - traces/bar/attributes/constraintext
/// - traces/funnel/attributes/constraintext
/// - traces/waterfall/attributes/constraintext
public enum ConstrainText0: String, Encodable {
    case inside
    case outside
    case both
    case none
}

/// Determines how bars at the same location coordinate are displayed on the graph. 
///
/// With *stack*, the bars are stacked on top of one another With *relative*, the bars are stacked
/// on top of one another, with negative values below the axis, positive values above With *group*,
/// the bars are plotted next to one another centered around the shared location. With *overlay*,
/// the bars are plotted over one another, you might need to an *opacity* to see multiple bars.
/// - traces/bar/layoutAttributes/barmode
/// - traces/histogram/layoutAttributes/barmode
public enum BarMode0: String, Encodable {
    case stack
    case group
    case overlay
    case relative
}

/// If *outliers*, only the sample points lying outside the whiskers are shown If *suspectedoutliers*, the outlier points are shown and points either less than 4*Q1-3*Q3 or greater than 4*Q3-3*Q1 are highlighted (see `outliercolor`) If *all*, all sample points are shown If *false*, only the box(es) are shown with no sample points
/// - traces/box/attributes/boxpoints
/// - traces/violin/attributes/points
public enum BoxPoints0: String, Encodable {
    case all
    case outliers
    case suspectedOutliers = "suspectedoutliers"
    case `false` = "false"
}

/// Determines how boxes at the same location coordinate are displayed on the graph. 
///
/// If *group*, the boxes are plotted next to one another centered around the shared location. If
/// *overlay*, the boxes are plotted over one another, you might need to set *opacity* to see them
/// multiple boxes. Has no effect on traces that have *width* set.
/// - traces/box/layoutAttributes/boxmode
/// - traces/violin/layoutAttributes/violinmode
/// - traces/waterfall/layoutAttributes/waterfallmode
/// - traces/candlestick/layoutAttributes/boxmode
public enum BoxMode0: String, Encodable {
    case group
    case overlay
}

/// If *array*, the heatmap's x coordinates are given by *x* (the default behavior when `x` is provided). 
///
/// If *scaled*, the heatmap's x coordinates are given by *x0* and *dx* (the default behavior when
/// `x` is not provided).
/// - traces/heatmap/attributes/xtype
/// - traces/heatmap/attributes/ytype
/// - traces/contour/attributes/xtype
/// - traces/contour/attributes/ytype
/// - traces/heatmapgl/attributes/xtype
/// - traces/heatmapgl/attributes/ytype
/// - traces/contourcarpet/attributes/atype
/// - traces/contourcarpet/attributes/btype
public enum XType0: String, Encodable {
    case array
    case scaled
}

/// Picks a smoothing algorithm use to smooth `z` data.
/// - traces/heatmap/attributes/zsmooth
/// - traces/histogram2d/attributes/zsmooth
public enum ZSmooth0: String, Encodable {
    case fast
    case best
    case `false` = "false"
}

/// Specifies the binning function used for this histogram trace. 
///
/// If *count*, the histogram values are computed by counting the number of values lying inside each
/// bin. If *sum*, *avg*, *min*, *max*, the histogram values are computed using the sum, the
/// average, the minimum or the maximum of the values lying inside each bin respectively.
/// - traces/histogram/attributes/histfunc
/// - traces/histogram2d/attributes/histfunc
/// - traces/histogram2dcontour/attributes/histfunc
public enum BinningFunction0: String, Encodable {
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
/// - traces/histogram/attributes/histnorm
/// - traces/histogram2d/attributes/histnorm
/// - traces/histogram2dcontour/attributes/histnorm
public enum Normalization0: String, Encodable {
    case none = ""
    case percent
    case probability
    case density
    case probabilityDensity = "probability density"
}

/// If `levels`, the data is represented as a contour plot with multiple levels displayed. 
///
/// If `constraint`, the data is represented as constraints with the invalid region shaded as
/// specified by the `operation` and `value` parameters.
/// - traces/histogram2dcontour/attributes/contours/type
/// - traces/contour/attributes/contours/type
/// - traces/contourcarpet/attributes/contours/type
public enum Rule4: String, Encodable {
    case levels
    case constraint
}

/// Determines the coloring method showing the contour values. 
///
/// If *fill*, coloring is done evenly between each contour level If *heatmap*, a heatmap gradient
/// coloring is applied between each contour level. If *lines*, coloring is done on the contour
/// lines. If *none*, no coloring is applied on this trace.
/// - traces/histogram2dcontour/attributes/contours/coloring
/// - traces/contour/attributes/contours/coloring
public enum Coloring0: String, Encodable {
    case fill
    case heatmap
    case lines
    case none
}

/// Sets the constraint operation. 
///
/// *=* keeps regions equal to `value` *<* and *<=* keep regions less than `value` *>* and *>=* keep
/// regions greater than `value` *[]*, *()*, *[)*, and *(]* keep regions inside `value[0]` to
/// `value[1]` *][*, *)(*, *](*, *)[* keep regions outside `value[0]` to value[1]` Open vs. closed
/// intervals make no difference to constraint display, but all versions are allowed for consistency
/// with filter transforms.
/// - traces/histogram2dcontour/attributes/contours/operation
/// - traces/contour/attributes/contours/operation
/// - traces/contourcarpet/attributes/contours/operation
public enum Operation0: String, Encodable {
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
/// - traces/scatterternary/attributes/line/shape
/// - traces/scattercarpet/attributes/line/shape
/// - traces/scatterpolar/attributes/line/shape
public enum Shape0: String, Encodable {
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
/// - traces/scatterternary/attributes/fill
/// - traces/scattercarpet/attributes/fill
/// - traces/scatterpolar/attributes/fill
public enum Fill1: String, Encodable {
    case none
    case toSelf = "toself"
    case toNext = "tonext"
}

/// Specifies the location of the `title`. 
///
/// Note that the title's position used to be set by the now deprecated `titleposition` attribute.
/// - traces/pie/attributes/title/position
/// - traces/pie/attributes/_deprecated/titleposition
public enum Position0: String, Encodable {
    case topLeft = "top left"
    case topCenter = "top center"
    case topRight = "top right"
    case middleCenter = "middle center"
    case bottomLeft = "bottom left"
    case bottomCenter = "bottom center"
    case bottomRight = "bottom right"
}

/// Determines how the items in `values` are summed. 
///
/// When set to *total*, items in `values` are taken to be value of all its descendants. When set to
/// *remainder*, items in `values` corresponding to the root and the branches sectors are taken to
/// be the extra part not part of the sum of the values at their leaves.
/// - traces/sunburst/attributes/branchvalues
/// - traces/treemap/attributes/branchvalues
public enum BranchValues0: String, Encodable {
    case remainder
    case total
}

/// Determines on which side of the the treemap the `pathbar` should be presented.
/// - traces/treemap/attributes/pathbar/side
/// - traces/parcoords/attributes/labelside
public enum Side3: String, Encodable {
    case top
    case bottom
}

/// Sets the dash style of the lines.
/// - traces/scatter3d/attributes/line/dash
/// - traces/scattergl/attributes/line/dash
/// - traces/scatterpolargl/attributes/line/dash
public enum Dash0: String, Encodable {
    case solid
    case dot
    case dash
    case longDash = "longdash"
    case dashDot = "dashdot"
    case longDashDot = "longdashdot"
}

/// Determines the set of locations used to match entries in `locations` to regions on the map.
/// - traces/scattergeo/attributes/locationmode
/// - traces/choropleth/attributes/locationmode
public enum LocationMode0: String, Encodable {
    case ISO3 = "ISO-3"
    case statesOfUSA = "USA-states"
    case countryNames = "country names"
}

/// Sets the area to fill with a solid color. 
///
/// Use with `fillcolor` if not *none*. *toself* connects the endpoints of the trace (or each
/// segment of the trace if it has gaps) into a closed shape.
/// - traces/scattergeo/attributes/fill
/// - traces/scattermapbox/attributes/fill
public enum Fill2: String, Encodable {
    case none
    case toSelf = "toself"
}

/// Determines the line shape. 
///
/// The values correspond to step-wise line shapes.
/// - traces/scattergl/attributes/line/shape
/// - traces/scatterpolargl/attributes/line/shape
public enum Shape1: String, Encodable {
    case linear
    case hv
    case vh
    case hvh
    case vhv
}

/// Specifies the ordering logic for the categories in the dimension. 
///
/// By default, plotly uses *trace*, which specifies the order that is present in the data supplied.
/// Set `categoryorder` to *category ascending* or *category descending* if order should be
/// determined by the alphanumerical order of the category names. Set `categoryorder` to *array* to
/// derive the ordering from the attribute `categoryarray`. If a category is not found in the
/// `categoryarray` array, the sorting behavior for that attribute will be identical to the *trace*
/// mode. The unspecified categories will follow the categories in `categoryarray`.
/// - traces/parcats/attributes/dimensions/items/dimension/categoryorder
/// - traces/carpet/attributes/aaxis/categoryorder
/// - traces/carpet/attributes/baxis/categoryorder
public enum CategoryOrder1: String, Encodable {
    case trace
    case categoryAscending = "category ascending"
    case categoryDescending = "category descending"
    case array
}

/// Determines which trace information appear when hovering nodes. 
///
/// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
/// click and hover events are still fired.
/// - traces/sankey/attributes/node/hoverinfo
/// - traces/sankey/attributes/link/hoverinfo
public enum HoverInfo0: String, Encodable {
    case all
    case none
    case skip
}

/// Sets the axis type. 
///
/// By default, plotly attempts to determined the axis type by looking into the data of the traces
/// that referenced the axis in question.
/// - traces/carpet/attributes/aaxis/type
/// - traces/carpet/attributes/baxis/type
public enum Rule5: String, Encodable {
    case auto = "-"
    case linear
    case date
    case category
}

/// - traces/carpet/attributes/aaxis/cheatertype
/// - traces/carpet/attributes/baxis/cheatertype
public enum CheaterType0: String, Encodable {
    case index
    case value
}

/// - traces/carpet/attributes/aaxis/tickmode
/// - traces/carpet/attributes/baxis/tickmode
public enum TickMode1: String, Encodable {
    case linear
    case array
}

/// Determines whether axis labels are drawn on the low side, the high side, both, or neither side of the axis.
/// - traces/carpet/attributes/aaxis/showticklabels
/// - traces/carpet/attributes/baxis/showticklabels
public enum ShowTickLabels0: String, Encodable {
    case start
    case end
    case both
    case none
}

/// Sets the unit of input *theta* values. 
///
/// Has an effect only when on *linear* angular axes.
/// - traces/scatterpolar/attributes/thetaunit
/// - traces/scatterpolargl/attributes/thetaunit
/// - traces/barpolar/attributes/thetaunit
public enum ThetaUnit0: String, Encodable {
    case radians
    case degrees
    case gradians
}
