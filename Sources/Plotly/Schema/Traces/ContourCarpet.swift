/// Plots contours on either the first carpet axis or the carpet axis with a matching `carpet` attribute. 
///
/// Data `z` is interpreted as matching that of the corresponding carpet axis.
public struct ContourCarpet: Trace {
    public let type: String = "contourcarpet"

    public let animatable: Bool = false

    public var visible: Visible0?

    /// Determines whether or not an item corresponding to this trace is shown in the legend.
    public var showLegend: Bool?

    /// Sets the legend group for this trace. 
    ///
    /// Traces part of the same legend group hide/show at the same time when toggling legend items.
    public var legendGroup: String?

    /// Sets the opacity of the trace.
    public var opacity: Double?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    public var ids: [Double]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    public var customData: [Double]?

    /// Assigns extra meta information associated with this trace that can be used in various text attributes. 
    ///
    /// Attributes such as trace `name`, graph, axis and colorbar `title.text`, annotation `text`
    /// `rangeselector`, `updatemenues` and `sliders` `label` text all support `meta`. To access the
    /// trace `meta` values in an attribute in the same trace, simply use `%{meta[i]}` where `i` is the
    /// index or key of the `meta` item in question. To access trace `meta` in layout attributes, use
    /// `%{data[n[.meta[i]}` where `i` is the index or key of the `meta` and `n` is the trace index.
    public var meta: Anything?

    public var stream: Stream0?

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
    public var uiRevision: Anything?

    /// The `carpet` of the carpet axes on which this contour trace lies
    public var carpet: String?

    /// Sets the z data.
    public var z: [Double]?

    /// Sets the x coordinates.
    public var a: [Double]?

    /// Alternate to `x`. 
    ///
    /// Builds a linear space of x coordinates. Use with `dx` where `x0` is the starting coordinate and
    /// `dx` the step.
    public var a0: Anything?

    /// Sets the x coordinate step. 
    ///
    /// See `x0` for more info.
    public var da: Double?

    /// Sets the y coordinates.
    public var b: [Double]?

    /// Alternate to `y`. 
    ///
    /// Builds a linear space of y coordinates. Use with `dy` where `y0` is the starting coordinate and
    /// `dy` the step.
    public var b0: Anything?

    /// Sets the y coordinate step. 
    ///
    /// See `y0` for more info.
    public var db: Double?

    /// Sets the text elements associated with each z value.
    public var text: [Double]?

    /// Same as `text`.
    public var hoverText: [Double]?

    /// Transposes the z data.
    public var transpose: Bool?

    public var aType: XType0?

    public var bType: XType0?

    /// Sets the fill color if `contours.type` is *constraint*. 
    ///
    /// Defaults to a half-transparent variant of the line color, marker color, or marker line color,
    /// whichever is available.
    public var fillColor: Color?

    /// Determines whether or not the contour level attributes are picked by an algorithm. 
    ///
    /// If *true*, the number of contour levels can be set in `ncontours`. If *false*, set the contour
    /// level attributes in `contours`.
    public var autoContour: Bool?

    /// Sets the maximum number of contour levels. 
    ///
    /// The actual number of contours will be chosen automatically to be less than or equal to the value
    /// of `ncontours`. Has an effect only if `autocontour` is *true* or if `contours.size` is missing.
    public var nContours: Int?

    public var contours: Contours0?

    public var line: Line4?

    /// Determines whether or not the color domain is computed with respect to the input data (here in `z`) or the bounds set in `zmin` and `zmax`  Defaults to `false` when `zmin` and `zmax` are set by the user.
    public var zAuto: Bool?

    /// Sets the lower bound of the color domain. 
    ///
    /// Value should have the same units as in `z` and if set, `zmax` must be set as well.
    public var zMin: Double?

    /// Sets the upper bound of the color domain. 
    ///
    /// Value should have the same units as in `z` and if set, `zmin` must be set as well.
    public var zMax: Double?

    /// Sets the mid-point of the color domain by scaling `zmin` and/or `zmax` to be equidistant to this point. 
    ///
    /// Value should have the same units as in `z`. Has no effect when `zauto` is `false`.
    public var zMiddle: Double?

    /// Sets the colorscale. 
    ///
    /// The colorscale must be an array containing arrays mapping a normalized value to an rgb, rgba,
    /// hex, hsl, hsv, or named color string. At minimum, a mapping for the lowest (0) and highest (1)
    /// values are required. For example, `[[0, 'rgb(0,0,255)'], [1, 'rgb(255,0,0)']]`. To control the
    /// bounds of the colorscale in color space, use`zmin` and `zmax`. Alternatively, `colorscale` may
    /// be a palette name string of the following list:
    /// Greys,YlGnBu,Greens,YlOrRd,Bluered,RdBu,Reds,Blues,Picnic,Rainbow,Portland,Jet,Hot,Blackbody,Earth,Electric,Viridis,Cividis.
    public var colorScale: ColorScale?

    /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `colorscale`. 
    ///
    /// In case `colorscale` is unspecified or `autocolorscale` is true, the default palette will be
    /// chosen according to whether numbers in the `color` array are all positive, all negative or
    /// mixed.
    public var autoColorScale: Bool?

    /// Reverses the color mapping if true. 
    ///
    /// If true, `zmin` will correspond to the last color in the array and `zmax` will correspond to the
    /// first color.
    public var reverseScale: Bool?

    /// Determines whether or not a colorbar is displayed for this trace.
    public var showScale: Bool?

    public var colorBar: ColorBar0?

    /// Sets a reference to a shared color axis. 
    ///
    /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
    /// for these shared color axes are set in the layout, under `layout.coloraxis`,
    /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
    public var colorAxis: SubPlotID?

    /// Sets a reference between this trace's x coordinates and a 2D cartesian x axis. 
    ///
    /// If *x* (the default value), the x coordinates refer to `layout.xaxis`. If *x2*, the x
    /// coordinates refer to `layout.xaxis2`, and so on.
    public var xAxis: SubPlotID?

    /// Sets a reference between this trace's y coordinates and a 2D cartesian y axis. 
    ///
    /// If *y* (the default value), the y coordinates refer to `layout.yaxis`. If *y2*, the y
    /// coordinates refer to `layout.yaxis2`, and so on.
    public var yAxis: SubPlotID?

    /// Sets the source reference on plot.ly for  ids .
    public var idsSource: String?

    /// Sets the source reference on plot.ly for  customdata .
    public var customDataSource: String?

    /// Sets the source reference on plot.ly for  meta .
    public var metaSource: String?

    /// Sets the source reference on plot.ly for  z .
    public var zSource: String?

    /// Sets the source reference on plot.ly for  a .
    public var aSource: String?

    /// Sets the source reference on plot.ly for  b .
    public var bSource: String?

    /// Sets the source reference on plot.ly for  text .
    public var textSource: String?

    /// Sets the source reference on plot.ly for  hovertext .
    public var hoverTextSource: String?

    public init(visible: Visible0? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, stream: Stream0? = nil, uiRevision: Anything? = nil, carpet: String? = nil, z: [Double]? = nil, a: [Double]? = nil, a0: Anything? = nil, da: Double? = nil, b: [Double]? = nil, b0: Anything? = nil, db: Double? = nil, text: [Double]? = nil, hoverText: [Double]? = nil, transpose: Bool? = nil, aType: XType0? = nil, bType: XType0? = nil, fillColor: Color? = nil, autoContour: Bool? = nil, nContours: Int? = nil, contours: Contours0? = nil, line: Line4? = nil, zAuto: Bool? = nil, zMin: Double? = nil, zMax: Double? = nil, zMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: ColorBar0? = nil, colorAxis: SubPlotID? = nil, xAxis: SubPlotID? = nil, yAxis: SubPlotID? = nil, idsSource: String? = nil, customDataSource: String? = nil, metaSource: String? = nil, zSource: String? = nil, aSource: String? = nil, bSource: String? = nil, textSource: String? = nil, hoverTextSource: String? = nil) {
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
        self.idsSource = idsSource
        self.customDataSource = customDataSource
        self.metaSource = metaSource
        self.zSource = zSource
        self.aSource = aSource
        self.bSource = bSource
        self.textSource = textSource
        self.hoverTextSource = hoverTextSource
    }
}