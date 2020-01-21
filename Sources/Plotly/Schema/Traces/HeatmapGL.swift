/// WebGL version of the heatmap trace type.
public struct HeatmapGL<XData, YData, ZData>: Trace where XData: Encodable, YData: Encodable, ZData: Encodable {
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#type) |
    /// [Python](https://plot.ly/python/reference/#type) |
    /// [R](https://plot.ly/r/reference/#type)
    public let type: String = "heatmapgl"

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
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmapgl-visible) |
    /// [Python](https://plot.ly/python/reference/#heatmapgl-visible) |
    /// [R](https://plot.ly/r/reference/#heatmapgl-visible)
    public var visible: Shared.Visible?

    /// Sets the opacity of the trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmapgl-opacity) |
    /// [Python](https://plot.ly/python/reference/#heatmapgl-opacity) |
    /// [R](https://plot.ly/r/reference/#heatmapgl-opacity)
    public var opacity: Double?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmapgl-name) |
    /// [Python](https://plot.ly/python/reference/#heatmapgl-name) |
    /// [R](https://plot.ly/r/reference/#heatmapgl-name)
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmapgl-uid) |
    /// [Python](https://plot.ly/python/reference/#heatmapgl-uid) |
    /// [R](https://plot.ly/r/reference/#heatmapgl-uid)
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmapgl-ids) |
    /// [Python](https://plot.ly/python/reference/#heatmapgl-ids) |
    /// [R](https://plot.ly/r/reference/#heatmapgl-ids)
    public var ids: [Double]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmapgl-customdata) |
    /// [Python](https://plot.ly/python/reference/#heatmapgl-customdata) |
    /// [R](https://plot.ly/r/reference/#heatmapgl-customdata)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmapgl-meta) |
    /// [Python](https://plot.ly/python/reference/#heatmapgl-meta) |
    /// [R](https://plot.ly/r/reference/#heatmapgl-meta)
    public var meta: Anything?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmapgl-hoverinfo) |
    /// [Python](https://plot.ly/python/reference/#heatmapgl-hoverinfo) |
    /// [R](https://plot.ly/r/reference/#heatmapgl-hoverinfo)
    public var hoverInfo: Shared.HoverInfo?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmapgl-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#heatmapgl-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#heatmapgl-hoverlabel)
    public var hoverLabel: Shared.HoverLabel?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmapgl-stream) |
    /// [Python](https://plot.ly/python/reference/#heatmapgl-stream) |
    /// [R](https://plot.ly/r/reference/#heatmapgl-stream)
    public var stream: Shared.Stream?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmapgl-transforms) |
    /// [Python](https://plot.ly/python/reference/#heatmapgl-transforms) |
    /// [R](https://plot.ly/r/reference/#heatmapgl-transforms)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmapgl-uirevision) |
    /// [Python](https://plot.ly/python/reference/#heatmapgl-uirevision) |
    /// [R](https://plot.ly/r/reference/#heatmapgl-uirevision)
    public var uiRevision: Anything?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmapgl-attributes) |
    /// [Python](https://plot.ly/python/reference/#heatmapgl-attributes) |
    /// [R](https://plot.ly/r/reference/#heatmapgl-attributes)
    public var z: ZData?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmapgl-attributes) |
    /// [Python](https://plot.ly/python/reference/#heatmapgl-attributes) |
    /// [R](https://plot.ly/r/reference/#heatmapgl-attributes)
    public var x: XData?

    /// Alternate to `x`. 
    ///
    /// Builds a linear space of x coordinates. Use with `dx` where `x0` is the starting coordinate and
    /// `dx` the step.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmapgl-x0) |
    /// [Python](https://plot.ly/python/reference/#heatmapgl-x0) |
    /// [R](https://plot.ly/r/reference/#heatmapgl-x0)
    public var x0: Anything?

    /// Sets the x coordinate step. 
    ///
    /// See `x0` for more info.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmapgl-dx) |
    /// [Python](https://plot.ly/python/reference/#heatmapgl-dx) |
    /// [R](https://plot.ly/r/reference/#heatmapgl-dx)
    public var dx: Double?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmapgl-attributes) |
    /// [Python](https://plot.ly/python/reference/#heatmapgl-attributes) |
    /// [R](https://plot.ly/r/reference/#heatmapgl-attributes)
    public var y: YData?

    /// Alternate to `y`. 
    ///
    /// Builds a linear space of y coordinates. Use with `dy` where `y0` is the starting coordinate and
    /// `dy` the step.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmapgl-y0) |
    /// [Python](https://plot.ly/python/reference/#heatmapgl-y0) |
    /// [R](https://plot.ly/r/reference/#heatmapgl-y0)
    public var y0: Anything?

    /// Sets the y coordinate step. 
    ///
    /// See `y0` for more info.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmapgl-dy) |
    /// [Python](https://plot.ly/python/reference/#heatmapgl-dy) |
    /// [R](https://plot.ly/r/reference/#heatmapgl-dy)
    public var dy: Double?

    /// Sets the text elements associated with each z value.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmapgl-text) |
    /// [Python](https://plot.ly/python/reference/#heatmapgl-text) |
    /// [R](https://plot.ly/r/reference/#heatmapgl-text)
    public var text: [Double]?

    /// Transposes the z data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmapgl-transpose) |
    /// [Python](https://plot.ly/python/reference/#heatmapgl-transpose) |
    /// [R](https://plot.ly/r/reference/#heatmapgl-transpose)
    public var transpose: Bool?

    /// If *array*, the heatmap's x coordinates are given by *x* (the default behavior when `x` is provided). 
    ///
    /// If *scaled*, the heatmap's x coordinates are given by *x0* and *dx* (the default behavior when
    /// `x` is not provided).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmapgl-xtype) |
    /// [Python](https://plot.ly/python/reference/#heatmapgl-xtype) |
    /// [R](https://plot.ly/r/reference/#heatmapgl-xtype)
    public var xType: Shared.AxisType?

    /// If *array*, the heatmap's y coordinates are given by *y* (the default behavior when `y` is provided) If *scaled*, the heatmap's y coordinates are given by *y0* and *dy* (the default behavior when `y` is not provided)
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmapgl-ytype) |
    /// [Python](https://plot.ly/python/reference/#heatmapgl-ytype) |
    /// [R](https://plot.ly/r/reference/#heatmapgl-ytype)
    public var yType: Shared.AxisType?

    /// Determines whether or not the color domain is computed with respect to the input data (here in `z`) or the bounds set in `zmin` and `zmax`  Defaults to `false` when `zmin` and `zmax` are set by the user.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmapgl-zauto) |
    /// [Python](https://plot.ly/python/reference/#heatmapgl-zauto) |
    /// [R](https://plot.ly/r/reference/#heatmapgl-zauto)
    public var zAuto: Bool?

    /// Sets the lower bound of the color domain. 
    ///
    /// Value should have the same units as in `z` and if set, `zmax` must be set as well.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmapgl-zmin) |
    /// [Python](https://plot.ly/python/reference/#heatmapgl-zmin) |
    /// [R](https://plot.ly/r/reference/#heatmapgl-zmin)
    public var zMin: Double?

    /// Sets the upper bound of the color domain. 
    ///
    /// Value should have the same units as in `z` and if set, `zmin` must be set as well.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmapgl-zmax) |
    /// [Python](https://plot.ly/python/reference/#heatmapgl-zmax) |
    /// [R](https://plot.ly/r/reference/#heatmapgl-zmax)
    public var zMax: Double?

    /// Sets the mid-point of the color domain by scaling `zmin` and/or `zmax` to be equidistant to this point. 
    ///
    /// Value should have the same units as in `z`. Has no effect when `zauto` is `false`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmapgl-zmid) |
    /// [Python](https://plot.ly/python/reference/#heatmapgl-zmid) |
    /// [R](https://plot.ly/r/reference/#heatmapgl-zmid)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmapgl-colorscale) |
    /// [Python](https://plot.ly/python/reference/#heatmapgl-colorscale) |
    /// [R](https://plot.ly/r/reference/#heatmapgl-colorscale)
    public var colorScale: ColorScale?

    /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `colorscale`. 
    ///
    /// In case `colorscale` is unspecified or `autocolorscale` is true, the default palette will be
    /// chosen according to whether numbers in the `color` array are all positive, all negative or
    /// mixed.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmapgl-autocolorscale) |
    /// [Python](https://plot.ly/python/reference/#heatmapgl-autocolorscale) |
    /// [R](https://plot.ly/r/reference/#heatmapgl-autocolorscale)
    public var autoColorScale: Bool?

    /// Reverses the color mapping if true. 
    ///
    /// If true, `zmin` will correspond to the last color in the array and `zmax` will correspond to the
    /// first color.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmapgl-reversescale) |
    /// [Python](https://plot.ly/python/reference/#heatmapgl-reversescale) |
    /// [R](https://plot.ly/r/reference/#heatmapgl-reversescale)
    public var reverseScale: Bool?

    /// Determines whether or not a colorbar is displayed for this trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmapgl-showscale) |
    /// [Python](https://plot.ly/python/reference/#heatmapgl-showscale) |
    /// [R](https://plot.ly/r/reference/#heatmapgl-showscale)
    public var showScale: Bool?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmapgl-colorbar) |
    /// [Python](https://plot.ly/python/reference/#heatmapgl-colorbar) |
    /// [R](https://plot.ly/r/reference/#heatmapgl-colorbar)
    public var colorBar: Shared.ColorBar?

    /// Sets a reference to a shared color axis. 
    ///
    /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
    /// for these shared color axes are set in the layout, under `layout.coloraxis`,
    /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmapgl-coloraxis) |
    /// [Python](https://plot.ly/python/reference/#heatmapgl-coloraxis) |
    /// [R](https://plot.ly/r/reference/#heatmapgl-coloraxis)
    public var colorAxis: SubPlotID?

    /// Sets a reference between this trace's x coordinates and a 2D cartesian x axis. 
    ///
    /// If *x* (the default value), the x coordinates refer to `layout.xaxis`. If *x2*, the x
    /// coordinates refer to `layout.xaxis2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmapgl-xaxis) |
    /// [Python](https://plot.ly/python/reference/#heatmapgl-xaxis) |
    /// [R](https://plot.ly/r/reference/#heatmapgl-xaxis)
    public var xAxis: SubPlotID?

    /// Sets a reference between this trace's y coordinates and a 2D cartesian y axis. 
    ///
    /// If *y* (the default value), the y coordinates refer to `layout.yaxis`. If *y2*, the y
    /// coordinates refer to `layout.yaxis2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#heatmapgl-yaxis) |
    /// [Python](https://plot.ly/python/reference/#heatmapgl-yaxis) |
    /// [R](https://plot.ly/r/reference/#heatmapgl-yaxis)
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
        case transpose
        case xType = "xtype"
        case yType = "ytype"
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
        case xAxis = "xaxis"
        case yAxis = "yaxis"
    }
    
    public init(visible: Shared.Visible? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, hoverInfo: Shared.HoverInfo? = nil, hoverLabel: Shared.HoverLabel? = nil, stream: Shared.Stream? = nil, transforms: [Shared.Transform]? = nil, uiRevision: Anything? = nil, z: ZData? = nil, x: XData? = nil, x0: Anything? = nil, dx: Double? = nil, y: YData? = nil, y0: Anything? = nil, dy: Double? = nil, text: [Double]? = nil, transpose: Bool? = nil, xType: Shared.AxisType? = nil, yType: Shared.AxisType? = nil, zAuto: Bool? = nil, zMin: Double? = nil, zMax: Double? = nil, zMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: Shared.ColorBar? = nil, colorAxis: SubPlotID? = nil, xAxis: SubPlotID? = nil, yAxis: SubPlotID? = nil) {
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
        self.transpose = transpose
        self.xType = xType
        self.yType = yType
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
        self.xAxis = xAxis
        self.yAxis = yAxis
    }
}