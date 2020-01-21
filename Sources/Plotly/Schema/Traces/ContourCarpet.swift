/// Plots contours on either the first carpet axis or the carpet axis with a matching `carpet` attribute. 
///
/// Data `z` is interpreted as matching that of the corresponding carpet axis.
public struct ContourCarpet<ZData>: Trace where ZData: Encodable {
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#type) |
    /// [Python](https://plot.ly/python/reference/#type) |
    /// [R](https://plot.ly/r/reference/#type)
    public let type: String = "contourcarpet"

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
    /// [JavaScript](https://plot.ly/javascript/reference/#contourcarpet-visible) |
    /// [Python](https://plot.ly/python/reference/#contourcarpet-visible) |
    /// [R](https://plot.ly/r/reference/#contourcarpet-visible)
    public var visible: Shared.Visible?

    /// Determines whether or not an item corresponding to this trace is shown in the legend.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contourcarpet-showlegend) |
    /// [Python](https://plot.ly/python/reference/#contourcarpet-showlegend) |
    /// [R](https://plot.ly/r/reference/#contourcarpet-showlegend)
    public var showLegend: Bool?

    /// Sets the legend group for this trace. 
    ///
    /// Traces part of the same legend group hide/show at the same time when toggling legend items.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contourcarpet-legendgroup) |
    /// [Python](https://plot.ly/python/reference/#contourcarpet-legendgroup) |
    /// [R](https://plot.ly/r/reference/#contourcarpet-legendgroup)
    public var legendGroup: String?

    /// Sets the opacity of the trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contourcarpet-opacity) |
    /// [Python](https://plot.ly/python/reference/#contourcarpet-opacity) |
    /// [R](https://plot.ly/r/reference/#contourcarpet-opacity)
    public var opacity: Double?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contourcarpet-name) |
    /// [Python](https://plot.ly/python/reference/#contourcarpet-name) |
    /// [R](https://plot.ly/r/reference/#contourcarpet-name)
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contourcarpet-uid) |
    /// [Python](https://plot.ly/python/reference/#contourcarpet-uid) |
    /// [R](https://plot.ly/r/reference/#contourcarpet-uid)
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contourcarpet-ids) |
    /// [Python](https://plot.ly/python/reference/#contourcarpet-ids) |
    /// [R](https://plot.ly/r/reference/#contourcarpet-ids)
    public var ids: [Double]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contourcarpet-customdata) |
    /// [Python](https://plot.ly/python/reference/#contourcarpet-customdata) |
    /// [R](https://plot.ly/r/reference/#contourcarpet-customdata)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#contourcarpet-meta) |
    /// [Python](https://plot.ly/python/reference/#contourcarpet-meta) |
    /// [R](https://plot.ly/r/reference/#contourcarpet-meta)
    public var meta: Anything?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contourcarpet-stream) |
    /// [Python](https://plot.ly/python/reference/#contourcarpet-stream) |
    /// [R](https://plot.ly/r/reference/#contourcarpet-stream)
    public var stream: Shared.Stream?

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
    /// [JavaScript](https://plot.ly/javascript/reference/#contourcarpet-uirevision) |
    /// [Python](https://plot.ly/python/reference/#contourcarpet-uirevision) |
    /// [R](https://plot.ly/r/reference/#contourcarpet-uirevision)
    public var uiRevision: Anything?

    /// The `carpet` of the carpet axes on which this contour trace lies
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contourcarpet-carpet) |
    /// [Python](https://plot.ly/python/reference/#contourcarpet-carpet) |
    /// [R](https://plot.ly/r/reference/#contourcarpet-carpet)
    public var carpet: String?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contourcarpet-attributes) |
    /// [Python](https://plot.ly/python/reference/#contourcarpet-attributes) |
    /// [R](https://plot.ly/r/reference/#contourcarpet-attributes)
    public var z: ZData?

    /// Sets the x coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contourcarpet-a) |
    /// [Python](https://plot.ly/python/reference/#contourcarpet-a) |
    /// [R](https://plot.ly/r/reference/#contourcarpet-a)
    public var a: [Double]?

    /// Alternate to `x`. 
    ///
    /// Builds a linear space of x coordinates. Use with `dx` where `x0` is the starting coordinate and
    /// `dx` the step.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contourcarpet-a0) |
    /// [Python](https://plot.ly/python/reference/#contourcarpet-a0) |
    /// [R](https://plot.ly/r/reference/#contourcarpet-a0)
    public var a0: Anything?

    /// Sets the x coordinate step. 
    ///
    /// See `x0` for more info.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contourcarpet-da) |
    /// [Python](https://plot.ly/python/reference/#contourcarpet-da) |
    /// [R](https://plot.ly/r/reference/#contourcarpet-da)
    public var da: Double?

    /// Sets the y coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contourcarpet-b) |
    /// [Python](https://plot.ly/python/reference/#contourcarpet-b) |
    /// [R](https://plot.ly/r/reference/#contourcarpet-b)
    public var b: [Double]?

    /// Alternate to `y`. 
    ///
    /// Builds a linear space of y coordinates. Use with `dy` where `y0` is the starting coordinate and
    /// `dy` the step.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contourcarpet-b0) |
    /// [Python](https://plot.ly/python/reference/#contourcarpet-b0) |
    /// [R](https://plot.ly/r/reference/#contourcarpet-b0)
    public var b0: Anything?

    /// Sets the y coordinate step. 
    ///
    /// See `y0` for more info.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contourcarpet-db) |
    /// [Python](https://plot.ly/python/reference/#contourcarpet-db) |
    /// [R](https://plot.ly/r/reference/#contourcarpet-db)
    public var db: Double?

    /// Sets the text elements associated with each z value.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contourcarpet-text) |
    /// [Python](https://plot.ly/python/reference/#contourcarpet-text) |
    /// [R](https://plot.ly/r/reference/#contourcarpet-text)
    public var text: [Double]?

    /// Same as `text`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contourcarpet-hovertext) |
    /// [Python](https://plot.ly/python/reference/#contourcarpet-hovertext) |
    /// [R](https://plot.ly/r/reference/#contourcarpet-hovertext)
    public var hoverText: [Double]?

    /// Transposes the z data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contourcarpet-transpose) |
    /// [Python](https://plot.ly/python/reference/#contourcarpet-transpose) |
    /// [R](https://plot.ly/r/reference/#contourcarpet-transpose)
    public var transpose: Bool?

    /// If *array*, the heatmap's x coordinates are given by *x* (the default behavior when `x` is provided). 
    ///
    /// If *scaled*, the heatmap's x coordinates are given by *x0* and *dx* (the default behavior when
    /// `x` is not provided).
    ///
    /// # Used By
    /// `ContourCarpet.aType` |
    public enum AType: String, Encodable {
        case array
        case scaled
    }
    /// If *array*, the heatmap's x coordinates are given by *x* (the default behavior when `x` is provided). 
    ///
    /// If *scaled*, the heatmap's x coordinates are given by *x0* and *dx* (the default behavior when
    /// `x` is not provided).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contourcarpet-atype) |
    /// [Python](https://plot.ly/python/reference/#contourcarpet-atype) |
    /// [R](https://plot.ly/r/reference/#contourcarpet-atype)
    public var aType: AType?

    /// If *array*, the heatmap's y coordinates are given by *y* (the default behavior when `y` is provided) If *scaled*, the heatmap's y coordinates are given by *y0* and *dy* (the default behavior when `y` is not provided)
    ///
    /// # Used By
    /// `ContourCarpet.bType` |
    public enum BType: String, Encodable {
        case array
        case scaled
    }
    /// If *array*, the heatmap's y coordinates are given by *y* (the default behavior when `y` is provided) If *scaled*, the heatmap's y coordinates are given by *y0* and *dy* (the default behavior when `y` is not provided)
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contourcarpet-btype) |
    /// [Python](https://plot.ly/python/reference/#contourcarpet-btype) |
    /// [R](https://plot.ly/r/reference/#contourcarpet-btype)
    public var bType: BType?

    /// Sets the fill color if `contours.type` is *constraint*. 
    ///
    /// Defaults to a half-transparent variant of the line color, marker color, or marker line color,
    /// whichever is available.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contourcarpet-fillcolor) |
    /// [Python](https://plot.ly/python/reference/#contourcarpet-fillcolor) |
    /// [R](https://plot.ly/r/reference/#contourcarpet-fillcolor)
    public var fillColor: Color?

    /// Determines whether or not the contour level attributes are picked by an algorithm. 
    ///
    /// If *true*, the number of contour levels can be set in `ncontours`. If *false*, set the contour
    /// level attributes in `contours`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contourcarpet-autocontour) |
    /// [Python](https://plot.ly/python/reference/#contourcarpet-autocontour) |
    /// [R](https://plot.ly/r/reference/#contourcarpet-autocontour)
    public var autoContour: Bool?

    /// Sets the maximum number of contour levels. 
    ///
    /// The actual number of contours will be chosen automatically to be less than or equal to the value
    /// of `ncontours`. Has an effect only if `autocontour` is *true* or if `contours.size` is missing.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contourcarpet-ncontours) |
    /// [Python](https://plot.ly/python/reference/#contourcarpet-ncontours) |
    /// [R](https://plot.ly/r/reference/#contourcarpet-ncontours)
    public var nContours: Int?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contourcarpet-contours) |
    /// [Python](https://plot.ly/python/reference/#contourcarpet-contours) |
    /// [R](https://plot.ly/r/reference/#contourcarpet-contours)
    public var contours: Shared.Contours?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contourcarpet-line) |
    /// [Python](https://plot.ly/python/reference/#contourcarpet-line) |
    /// [R](https://plot.ly/r/reference/#contourcarpet-line)
    public var line: Shared.SmoothedDashedLine?

    /// Determines whether or not the color domain is computed with respect to the input data (here in `z`) or the bounds set in `zmin` and `zmax`  Defaults to `false` when `zmin` and `zmax` are set by the user.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contourcarpet-zauto) |
    /// [Python](https://plot.ly/python/reference/#contourcarpet-zauto) |
    /// [R](https://plot.ly/r/reference/#contourcarpet-zauto)
    public var zAuto: Bool?

    /// Sets the lower bound of the color domain. 
    ///
    /// Value should have the same units as in `z` and if set, `zmax` must be set as well.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contourcarpet-zmin) |
    /// [Python](https://plot.ly/python/reference/#contourcarpet-zmin) |
    /// [R](https://plot.ly/r/reference/#contourcarpet-zmin)
    public var zMin: Double?

    /// Sets the upper bound of the color domain. 
    ///
    /// Value should have the same units as in `z` and if set, `zmin` must be set as well.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contourcarpet-zmax) |
    /// [Python](https://plot.ly/python/reference/#contourcarpet-zmax) |
    /// [R](https://plot.ly/r/reference/#contourcarpet-zmax)
    public var zMax: Double?

    /// Sets the mid-point of the color domain by scaling `zmin` and/or `zmax` to be equidistant to this point. 
    ///
    /// Value should have the same units as in `z`. Has no effect when `zauto` is `false`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contourcarpet-zmid) |
    /// [Python](https://plot.ly/python/reference/#contourcarpet-zmid) |
    /// [R](https://plot.ly/r/reference/#contourcarpet-zmid)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#contourcarpet-colorscale) |
    /// [Python](https://plot.ly/python/reference/#contourcarpet-colorscale) |
    /// [R](https://plot.ly/r/reference/#contourcarpet-colorscale)
    public var colorScale: ColorScale?

    /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `colorscale`. 
    ///
    /// In case `colorscale` is unspecified or `autocolorscale` is true, the default palette will be
    /// chosen according to whether numbers in the `color` array are all positive, all negative or
    /// mixed.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contourcarpet-autocolorscale) |
    /// [Python](https://plot.ly/python/reference/#contourcarpet-autocolorscale) |
    /// [R](https://plot.ly/r/reference/#contourcarpet-autocolorscale)
    public var autoColorScale: Bool?

    /// Reverses the color mapping if true. 
    ///
    /// If true, `zmin` will correspond to the last color in the array and `zmax` will correspond to the
    /// first color.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contourcarpet-reversescale) |
    /// [Python](https://plot.ly/python/reference/#contourcarpet-reversescale) |
    /// [R](https://plot.ly/r/reference/#contourcarpet-reversescale)
    public var reverseScale: Bool?

    /// Determines whether or not a colorbar is displayed for this trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contourcarpet-showscale) |
    /// [Python](https://plot.ly/python/reference/#contourcarpet-showscale) |
    /// [R](https://plot.ly/r/reference/#contourcarpet-showscale)
    public var showScale: Bool?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contourcarpet-colorbar) |
    /// [Python](https://plot.ly/python/reference/#contourcarpet-colorbar) |
    /// [R](https://plot.ly/r/reference/#contourcarpet-colorbar)
    public var colorBar: Shared.ColorBar?

    /// Sets a reference to a shared color axis. 
    ///
    /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
    /// for these shared color axes are set in the layout, under `layout.coloraxis`,
    /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contourcarpet-coloraxis) |
    /// [Python](https://plot.ly/python/reference/#contourcarpet-coloraxis) |
    /// [R](https://plot.ly/r/reference/#contourcarpet-coloraxis)
    public var colorAxis: SubPlotID?

    /// Sets a reference between this trace's x coordinates and a 2D cartesian x axis. 
    ///
    /// If *x* (the default value), the x coordinates refer to `layout.xaxis`. If *x2*, the x
    /// coordinates refer to `layout.xaxis2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contourcarpet-xaxis) |
    /// [Python](https://plot.ly/python/reference/#contourcarpet-xaxis) |
    /// [R](https://plot.ly/r/reference/#contourcarpet-xaxis)
    public var xAxis: SubPlotID?

    /// Sets a reference between this trace's y coordinates and a 2D cartesian y axis. 
    ///
    /// If *y* (the default value), the y coordinates refer to `layout.yaxis`. If *y2*, the y
    /// coordinates refer to `layout.yaxis2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contourcarpet-yaxis) |
    /// [Python](https://plot.ly/python/reference/#contourcarpet-yaxis) |
    /// [R](https://plot.ly/r/reference/#contourcarpet-yaxis)
    public var yAxis: SubPlotID?

    /// Plotly compatible property encoding
    enum CodingKeys: String, CodingKey {
        case type
        case animatable
        case visible
        case showLegend = "showlegend"
        case legendGroup = "legendgroup"
        case opacity
        case name
        case uid
        case ids
        case customData = "customdata"
        case meta
        case stream
        case uiRevision = "uirevision"
        case carpet
        case z = "attributes"
        case a
        case a0
        case da
        case b
        case b0
        case db
        case text
        case hoverText = "hovertext"
        case transpose
        case aType = "atype"
        case bType = "btype"
        case fillColor = "fillcolor"
        case autoContour = "autocontour"
        case nContours = "ncontours"
        case contours
        case line
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
    
    public init(visible: Shared.Visible? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, stream: Shared.Stream? = nil, uiRevision: Anything? = nil, carpet: String? = nil, z: ZData? = nil, a: [Double]? = nil, a0: Anything? = nil, da: Double? = nil, b: [Double]? = nil, b0: Anything? = nil, db: Double? = nil, text: [Double]? = nil, hoverText: [Double]? = nil, transpose: Bool? = nil, aType: AType? = nil, bType: BType? = nil, fillColor: Color? = nil, autoContour: Bool? = nil, nContours: Int? = nil, contours: Shared.Contours? = nil, line: Shared.SmoothedDashedLine? = nil, zAuto: Bool? = nil, zMin: Double? = nil, zMax: Double? = nil, zMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: Shared.ColorBar? = nil, colorAxis: SubPlotID? = nil, xAxis: SubPlotID? = nil, yAxis: SubPlotID? = nil) {
        self.visible = visible
        self.showLegend = showLegend
        self.legendGroup = legendGroup
        self.opacity = opacity
        self.name = name
        self.uid = uid
        self.ids = ids
        self.customData = customData
        self.meta = meta
        self.stream = stream
        self.uiRevision = uiRevision
        self.carpet = carpet
        self.z = z
        self.a = a
        self.a0 = a0
        self.da = da
        self.b = b
        self.b0 = b0
        self.db = db
        self.text = text
        self.hoverText = hoverText
        self.transpose = transpose
        self.aType = aType
        self.bType = bType
        self.fillColor = fillColor
        self.autoContour = autoContour
        self.nContours = nContours
        self.contours = contours
        self.line = line
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