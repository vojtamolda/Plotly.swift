/// The data that describes the heatmap value-to-color mapping is set in `z`. 
///
/// Data in `z` can either be a {2D array} of values (ragged or not) or a 1D array of values. In the
/// case where `z` is a {2D array}, say that `z` has N rows and M columns. Then, by default, the
/// resulting heatmap will have N partitions along the y axis and M partitions along the x axis. In
/// other words, the i-th row/ j-th column cell in `z` is mapped to the i-th partition of the y axis
/// (starting from the bottom of the plot) and the j-th partition of the x-axis (starting from the
/// left of the plot). This behavior can be flipped by using `transpose`. Moreover, `x` (`y`) can be
/// provided with M or M+1 (N or N+1) elements. If M (N), then the coordinates correspond to the
/// center of the heatmap cells and the cells have equal width. If M+1 (N+1), then the coordinates
/// correspond to the edges of the heatmap cells. In the case where `z` is a 1D {array}, the x and y
/// coordinates must be provided in `x` and `y` respectively to form data triplets.
public struct Heatmap<XData, YData, ZData>: Trace where XData: Encodable, YData: Encodable, ZData: Encodable {
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#type) |
    /// [Python](https://plot.ly/python/reference/#type) |
    /// [R](https://plot.ly/r/reference/#type)
    public let type: String = "heatmap"

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#animatable) |
    /// [Python](https://plot.ly/python/reference/#animatable) |
    /// [R](https://plot.ly/r/reference/#animatable)
    public let animatable: Bool = false

    /// Determines whether or not this trace is visible. 
    ///
    /// If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the
    /// legend itself is visible).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmap-visible) |
    /// [Python](https://plot.ly/python/reference/#heatmap-visible) |
    /// [R](https://plot.ly/r/reference/#heatmap-visible)
    public var visible: Shared.Visible?

    /// Sets the opacity of the trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmap-opacity) |
    /// [Python](https://plot.ly/python/reference/#heatmap-opacity) |
    /// [R](https://plot.ly/r/reference/#heatmap-opacity)
    public var opacity: Double?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmap-name) |
    /// [Python](https://plot.ly/python/reference/#heatmap-name) |
    /// [R](https://plot.ly/r/reference/#heatmap-name)
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmap-uid) |
    /// [Python](https://plot.ly/python/reference/#heatmap-uid) |
    /// [R](https://plot.ly/r/reference/#heatmap-uid)
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmap-ids) |
    /// [Python](https://plot.ly/python/reference/#heatmap-ids) |
    /// [R](https://plot.ly/r/reference/#heatmap-ids)
    public var ids: [Double]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmap-customdata) |
    /// [Python](https://plot.ly/python/reference/#heatmap-customdata) |
    /// [R](https://plot.ly/r/reference/#heatmap-customdata)
    public var customData: [Double]?

    /// Assigns extra meta information associated with this trace that can be used in various text attributes. 
    ///
    /// Attributes such as trace `name`, graph, axis and colorbar `title.text`, annotation `text`
    /// `rangeselector`, `updatemenues` and `sliders` `label` text all support `meta`. To access the
    /// trace `meta` values in an attribute in the same trace, simply use `%{meta[i]}` where `i` is the
    /// index or key of the `meta` item in question. To access trace `meta` in layout attributes, use
    /// `%{data[n[.meta[i]}` where `i` is the index or key of the `meta` and `n` is the trace index.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmap-meta) |
    /// [Python](https://plot.ly/python/reference/#heatmap-meta) |
    /// [R](https://plot.ly/r/reference/#heatmap-meta)
    public var meta: Anything?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmap-hoverinfo) |
    /// [Python](https://plot.ly/python/reference/#heatmap-hoverinfo) |
    /// [R](https://plot.ly/r/reference/#heatmap-hoverinfo)
    public var hoverInfo: Shared.HoverInfo?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmap-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#heatmap-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#heatmap-hoverlabel)
    public var hoverLabel: Shared.HoverLabel?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmap-stream) |
    /// [Python](https://plot.ly/python/reference/#heatmap-stream) |
    /// [R](https://plot.ly/r/reference/#heatmap-stream)
    public var stream: Shared.Stream?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmap-transforms) |
    /// [Python](https://plot.ly/python/reference/#heatmap-transforms) |
    /// [R](https://plot.ly/r/reference/#heatmap-transforms)
    public var transforms: [Shared.Transform]?

    /// Controls persistence of some user-driven changes to the trace: `constraintrange` in `parcoords` traces, as well as some `editable: true` modifications such as `name` and `colorbar.title`. 
    ///
    /// Defaults to `layout.uirevision`. Note that other user-driven trace attribute changes are
    /// controlled by `layout` attributes: `trace.visible` is controlled by `layout.legend.uirevision`,
    /// `selectedpoints` is controlled by `layout.selectionrevision`, and `colorbar.(x|y)` (accessible
    /// with `config: {editable: true}`) is controlled by `layout.editrevision`. Trace changes are
    /// tracked by `uid`, which only falls back on trace index if no `uid` is provided. So if your app
    /// can add/remove traces before the end of the `data` array, such that the same trace has a
    /// different index, you can still preserve user-driven changes if you give each trace a `uid` that
    /// stays with it as it moves.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmap-uirevision) |
    /// [Python](https://plot.ly/python/reference/#heatmap-uirevision) |
    /// [R](https://plot.ly/r/reference/#heatmap-uirevision)
    public var uiRevision: Anything?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmap-attributes) |
    /// [Python](https://plot.ly/python/reference/#heatmap-attributes) |
    /// [R](https://plot.ly/r/reference/#heatmap-attributes)
    public var z: ZData?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmap-attributes) |
    /// [Python](https://plot.ly/python/reference/#heatmap-attributes) |
    /// [R](https://plot.ly/r/reference/#heatmap-attributes)
    public var x: XData?

    /// Alternate to `x`. 
    ///
    /// Builds a linear space of x coordinates. Use with `dx` where `x0` is the starting coordinate and
    /// `dx` the step.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmap-x0) |
    /// [Python](https://plot.ly/python/reference/#heatmap-x0) |
    /// [R](https://plot.ly/r/reference/#heatmap-x0)
    public var x0: Anything?

    /// Sets the x coordinate step. 
    ///
    /// See `x0` for more info.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmap-dx) |
    /// [Python](https://plot.ly/python/reference/#heatmap-dx) |
    /// [R](https://plot.ly/r/reference/#heatmap-dx)
    public var dx: Double?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmap-attributes) |
    /// [Python](https://plot.ly/python/reference/#heatmap-attributes) |
    /// [R](https://plot.ly/r/reference/#heatmap-attributes)
    public var y: YData?

    /// Alternate to `y`. 
    ///
    /// Builds a linear space of y coordinates. Use with `dy` where `y0` is the starting coordinate and
    /// `dy` the step.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmap-y0) |
    /// [Python](https://plot.ly/python/reference/#heatmap-y0) |
    /// [R](https://plot.ly/r/reference/#heatmap-y0)
    public var y0: Anything?

    /// Sets the y coordinate step. 
    ///
    /// See `y0` for more info.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmap-dy) |
    /// [Python](https://plot.ly/python/reference/#heatmap-dy) |
    /// [R](https://plot.ly/r/reference/#heatmap-dy)
    public var dy: Double?

    /// Sets the text elements associated with each z value.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmap-text) |
    /// [Python](https://plot.ly/python/reference/#heatmap-text) |
    /// [R](https://plot.ly/r/reference/#heatmap-text)
    public var text: [Double]?

    /// Same as `text`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmap-hovertext) |
    /// [Python](https://plot.ly/python/reference/#heatmap-hovertext) |
    /// [R](https://plot.ly/r/reference/#heatmap-hovertext)
    public var hoverText: [Double]?

    /// Transposes the z data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmap-transpose) |
    /// [Python](https://plot.ly/python/reference/#heatmap-transpose) |
    /// [R](https://plot.ly/r/reference/#heatmap-transpose)
    public var transpose: Bool?

    /// If *array*, the heatmap's x coordinates are given by *x* (the default behavior when `x` is provided). 
    ///
    /// If *scaled*, the heatmap's x coordinates are given by *x0* and *dx* (the default behavior when
    /// `x` is not provided).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmap-xtype) |
    /// [Python](https://plot.ly/python/reference/#heatmap-xtype) |
    /// [R](https://plot.ly/r/reference/#heatmap-xtype)
    public var xType: Shared.AxisType?

    /// If *array*, the heatmap's y coordinates are given by *y* (the default behavior when `y` is provided) If *scaled*, the heatmap's y coordinates are given by *y0* and *dy* (the default behavior when `y` is not provided)
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmap-ytype) |
    /// [Python](https://plot.ly/python/reference/#heatmap-ytype) |
    /// [R](https://plot.ly/r/reference/#heatmap-ytype)
    public var yType: Shared.AxisType?

    /// Picks a smoothing algorithm use to smooth `z` data.
    ///
    /// # Used By
    /// `Heatmap.zSmooth` |
    public enum ZSmooth: String, Encodable {
        case fast
        case best
        case `false` = "false"
    }
    /// Picks a smoothing algorithm use to smooth `z` data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmap-zsmooth) |
    /// [Python](https://plot.ly/python/reference/#heatmap-zsmooth) |
    /// [R](https://plot.ly/r/reference/#heatmap-zsmooth)
    public var zSmooth: ZSmooth?

    /// Determines whether or not gaps (i.e. 
    ///
    /// {nan} or missing values) in the `z` data have hover labels associated with them.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmap-hoverongaps) |
    /// [Python](https://plot.ly/python/reference/#heatmap-hoverongaps) |
    /// [R](https://plot.ly/r/reference/#heatmap-hoverongaps)
    public var hoverOnGaps: Bool?

    /// Determines whether or not gaps (i.e. 
    ///
    /// {nan} or missing values) in the `z` data are filled in. It is defaulted to true if `z` is a one
    /// dimensional array and `zsmooth` is not false; otherwise it is defaulted to false.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmap-connectgaps) |
    /// [Python](https://plot.ly/python/reference/#heatmap-connectgaps) |
    /// [R](https://plot.ly/r/reference/#heatmap-connectgaps)
    public var connectGaps: Bool?

    /// Sets the horizontal gap (in pixels) between bricks.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmap-xgap) |
    /// [Python](https://plot.ly/python/reference/#heatmap-xgap) |
    /// [R](https://plot.ly/r/reference/#heatmap-xgap)
    public var xGap: Double?

    /// Sets the vertical gap (in pixels) between bricks.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmap-ygap) |
    /// [Python](https://plot.ly/python/reference/#heatmap-ygap) |
    /// [R](https://plot.ly/r/reference/#heatmap-ygap)
    public var yGap: Double?

    /// Sets the hover text formatting rule using d3 formatting mini-languages which are very similar to those in Python. 
    ///
    /// See: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmap-zhoverformat) |
    /// [Python](https://plot.ly/python/reference/#heatmap-zhoverformat) |
    /// [R](https://plot.ly/r/reference/#heatmap-zhoverformat)
    public var zHoverFormat: String?

    /// Template string used for rendering the information that appear on hover box. 
    ///
    /// Note that this will override `hoverinfo`. Variables are inserted using %{variable}, for example
    /// "y: %{y}". Numbers are formatted using d3-format's syntax %{variable:d3-format}, for example
    /// "Price: %{y:$.2f}".
    /// https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format for details on
    /// the formatting syntax. Dates are formatted using d3-time-format's syntax
    /// %{variable|d3-time-format}, for example "Day: %{2019-01-01|%A}".
    /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format for details on
    /// the date formatting syntax. The variables available in `hovertemplate` are the ones emitted as
    /// event data described at this link https://plot.ly/javascript/plotlyjs-events/#event-data.
    /// Additionally, every attributes that can be specified per-point (the ones that are `arrayOk:
    /// true`) are available. Anything contained in tag `<extra>` is displayed in the secondary box, for
    /// example "<extra>{fullData.name}</extra>". To hide the secondary box completely, use an empty tag
    /// `<extra></extra>`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmap-hovertemplate) |
    /// [Python](https://plot.ly/python/reference/#heatmap-hovertemplate) |
    /// [R](https://plot.ly/r/reference/#heatmap-hovertemplate)
    public var hoverTemplate: ArrayOrString?

    /// Determines whether or not the color domain is computed with respect to the input data (here in `z`) or the bounds set in `zmin` and `zmax`  Defaults to `false` when `zmin` and `zmax` are set by the user.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmap-zauto) |
    /// [Python](https://plot.ly/python/reference/#heatmap-zauto) |
    /// [R](https://plot.ly/r/reference/#heatmap-zauto)
    public var zAuto: Bool?

    /// Sets the lower bound of the color domain. 
    ///
    /// Value should have the same units as in `z` and if set, `zmax` must be set as well.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmap-zmin) |
    /// [Python](https://plot.ly/python/reference/#heatmap-zmin) |
    /// [R](https://plot.ly/r/reference/#heatmap-zmin)
    public var zMin: Double?

    /// Sets the upper bound of the color domain. 
    ///
    /// Value should have the same units as in `z` and if set, `zmin` must be set as well.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmap-zmax) |
    /// [Python](https://plot.ly/python/reference/#heatmap-zmax) |
    /// [R](https://plot.ly/r/reference/#heatmap-zmax)
    public var zMax: Double?

    /// Sets the mid-point of the color domain by scaling `zmin` and/or `zmax` to be equidistant to this point. 
    ///
    /// Value should have the same units as in `z`. Has no effect when `zauto` is `false`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmap-zmid) |
    /// [Python](https://plot.ly/python/reference/#heatmap-zmid) |
    /// [R](https://plot.ly/r/reference/#heatmap-zmid)
    public var zMiddle: Double?

    /// Sets the colorscale. 
    ///
    /// The colorscale must be an array containing arrays mapping a normalized value to an rgb, rgba,
    /// hex, hsl, hsv, or named color string. At minimum, a mapping for the lowest (0) and highest (1)
    /// values are required. For example, `[[0, 'rgb(0,0,255)'], [1, 'rgb(255,0,0)']]`. To control the
    /// bounds of the colorscale in color space, use`zmin` and `zmax`. Alternatively, `colorscale` may
    /// be a palette name string of the following list:
    /// Greys,YlGnBu,Greens,YlOrRd,Bluered,RdBu,Reds,Blues,Picnic,Rainbow,Portland,Jet,Hot,Blackbody,Earth,Electric,Viridis,Cividis.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmap-colorscale) |
    /// [Python](https://plot.ly/python/reference/#heatmap-colorscale) |
    /// [R](https://plot.ly/r/reference/#heatmap-colorscale)
    public var colorScale: ColorScale?

    /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `colorscale`. 
    ///
    /// In case `colorscale` is unspecified or `autocolorscale` is true, the default palette will be
    /// chosen according to whether numbers in the `color` array are all positive, all negative or
    /// mixed.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmap-autocolorscale) |
    /// [Python](https://plot.ly/python/reference/#heatmap-autocolorscale) |
    /// [R](https://plot.ly/r/reference/#heatmap-autocolorscale)
    public var autoColorScale: Bool?

    /// Reverses the color mapping if true. 
    ///
    /// If true, `zmin` will correspond to the last color in the array and `zmax` will correspond to the
    /// first color.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmap-reversescale) |
    /// [Python](https://plot.ly/python/reference/#heatmap-reversescale) |
    /// [R](https://plot.ly/r/reference/#heatmap-reversescale)
    public var reverseScale: Bool?

    /// Determines whether or not a colorbar is displayed for this trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmap-showscale) |
    /// [Python](https://plot.ly/python/reference/#heatmap-showscale) |
    /// [R](https://plot.ly/r/reference/#heatmap-showscale)
    public var showScale: Bool?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmap-colorbar) |
    /// [Python](https://plot.ly/python/reference/#heatmap-colorbar) |
    /// [R](https://plot.ly/r/reference/#heatmap-colorbar)
    public var colorBar: Shared.ColorBar?

    /// Sets a reference to a shared color axis. 
    ///
    /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
    /// for these shared color axes are set in the layout, under `layout.coloraxis`,
    /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmap-coloraxis) |
    /// [Python](https://plot.ly/python/reference/#heatmap-coloraxis) |
    /// [R](https://plot.ly/r/reference/#heatmap-coloraxis)
    public var colorAxis: SubPlotID?

    /// Sets the calendar system to use with `x` date data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmap-xcalendar) |
    /// [Python](https://plot.ly/python/reference/#heatmap-xcalendar) |
    /// [R](https://plot.ly/r/reference/#heatmap-xcalendar)
    public var xCalendar: Shared.Calendar?

    /// Sets the calendar system to use with `y` date data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmap-ycalendar) |
    /// [Python](https://plot.ly/python/reference/#heatmap-ycalendar) |
    /// [R](https://plot.ly/r/reference/#heatmap-ycalendar)
    public var yCalendar: Shared.Calendar?

    /// Sets a reference between this trace's x coordinates and a 2D cartesian x axis. 
    ///
    /// If *x* (the default value), the x coordinates refer to `layout.xaxis`. If *x2*, the x
    /// coordinates refer to `layout.xaxis2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmap-xaxis) |
    /// [Python](https://plot.ly/python/reference/#heatmap-xaxis) |
    /// [R](https://plot.ly/r/reference/#heatmap-xaxis)
    public var xAxis: SubPlotID?

    /// Sets a reference between this trace's y coordinates and a 2D cartesian y axis. 
    ///
    /// If *y* (the default value), the y coordinates refer to `layout.yaxis`. If *y2*, the y
    /// coordinates refer to `layout.yaxis2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmap-yaxis) |
    /// [Python](https://plot.ly/python/reference/#heatmap-yaxis) |
    /// [R](https://plot.ly/r/reference/#heatmap-yaxis)
    public var yAxis: SubPlotID?

    /// Plotly compatible property encoding
    enum CodingKeys: String, CodingKey {
        case type
        case animatable
        case visible
        case opacity
        case name
        case uid
        case ids
        case customData = "customdata"
        case meta
        case hoverInfo = "hoverinfo"
        case hoverLabel = "hoverlabel"
        case stream
        case transforms
        case uiRevision = "uirevision"
        case z = "attributes"
        case x = "attributes"
        case x0
        case dx
        case y = "attributes"
        case y0
        case dy
        case text
        case hoverText = "hovertext"
        case transpose
        case xType = "xtype"
        case yType = "ytype"
        case zSmooth = "zsmooth"
        case hoverOnGaps = "hoverongaps"
        case connectGaps = "connectgaps"
        case xGap = "xgap"
        case yGap = "ygap"
        case zHoverFormat = "zhoverformat"
        case hoverTemplate = "hovertemplate"
        case zAuto = "zauto"
        case zMin = "zmin"
        case zMax = "zmax"
        case zMiddle = "zmid"
        case colorScale = "colorscale"
        case autoColorScale = "autocolorscale"
        case reverseScale = "reversescale"
        case showScale = "showscale"
        case colorBar = "colorbar"
        case colorAxis = "coloraxis"
        case xCalendar = "xcalendar"
        case yCalendar = "ycalendar"
        case xAxis = "xaxis"
        case yAxis = "yaxis"
    }
    
    public init(visible: Shared.Visible? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, hoverInfo: Shared.HoverInfo? = nil, hoverLabel: Shared.HoverLabel? = nil, stream: Shared.Stream? = nil, transforms: [Shared.Transform]? = nil, uiRevision: Anything? = nil, z: ZData? = nil, x: XData? = nil, x0: Anything? = nil, dx: Double? = nil, y: YData? = nil, y0: Anything? = nil, dy: Double? = nil, text: [Double]? = nil, hoverText: [Double]? = nil, transpose: Bool? = nil, xType: Shared.AxisType? = nil, yType: Shared.AxisType? = nil, zSmooth: ZSmooth? = nil, hoverOnGaps: Bool? = nil, connectGaps: Bool? = nil, xGap: Double? = nil, yGap: Double? = nil, zHoverFormat: String? = nil, hoverTemplate: ArrayOrString? = nil, zAuto: Bool? = nil, zMin: Double? = nil, zMax: Double? = nil, zMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: Shared.ColorBar? = nil, colorAxis: SubPlotID? = nil, xCalendar: Shared.Calendar? = nil, yCalendar: Shared.Calendar? = nil, xAxis: SubPlotID? = nil, yAxis: SubPlotID? = nil) {
        self.visible = visible
        self.opacity = opacity
        self.name = name
        self.uid = uid
        self.ids = ids
        self.customData = customData
        self.meta = meta
        self.hoverInfo = hoverInfo
        self.hoverLabel = hoverLabel
        self.stream = stream
        self.transforms = transforms
        self.uiRevision = uiRevision
        self.z = z
        self.x = x
        self.x0 = x0
        self.dx = dx
        self.y = y
        self.y0 = y0
        self.dy = dy
        self.text = text
        self.hoverText = hoverText
        self.transpose = transpose
        self.xType = xType
        self.yType = yType
        self.zSmooth = zSmooth
        self.hoverOnGaps = hoverOnGaps
        self.connectGaps = connectGaps
        self.xGap = xGap
        self.yGap = yGap
        self.zHoverFormat = zHoverFormat
        self.hoverTemplate = hoverTemplate
        self.zAuto = zAuto
        self.zMin = zMin
        self.zMax = zMax
        self.zMiddle = zMiddle
        self.colorScale = colorScale
        self.autoColorScale = autoColorScale
        self.reverseScale = reverseScale
        self.showScale = showScale
        self.colorBar = colorBar
        self.colorAxis = colorAxis
        self.xCalendar = xCalendar
        self.yCalendar = yCalendar
        self.xAxis = xAxis
        self.yAxis = yAxis
    }
}