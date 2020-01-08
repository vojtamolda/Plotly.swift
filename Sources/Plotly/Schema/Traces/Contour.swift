/// The data from which contour lines are computed is set in `z`. 
///
/// Data in `z` must be a {2D array} of numbers. Say that `z` has N rows and M columns, then by
/// default, these N rows correspond to N y coordinates (set in `y` or auto-generated) and the M
/// columns correspond to M x coordinates (set in `x` or auto-generated). By setting `transpose` to
/// *true*, the above behavior is flipped.
public struct Contour: Trace {
    public let type: String = "contour"

    public let animatable: Bool = false

    /// Determines whether or not this trace is visible. 
    ///
    /// If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the
    /// legend itself is visible).
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

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    public var hoverInfo: HoverInfo0?

    public var hoverLabel: HoverLabel0?

    public var stream: Stream0?

    public var transforms: TickFormatStops0?

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

    /// Sets the z data.
    public var z: [Double]?

    /// Sets the x coordinates.
    public var x: [Double]?

    /// Alternate to `x`. 
    ///
    /// Builds a linear space of x coordinates. Use with `dx` where `x0` is the starting coordinate and
    /// `dx` the step.
    public var x0: Anything?

    /// Sets the x coordinate step. 
    ///
    /// See `x0` for more info.
    public var dx: Double?

    /// Sets the y coordinates.
    public var y: [Double]?

    /// Alternate to `y`. 
    ///
    /// Builds a linear space of y coordinates. Use with `dy` where `y0` is the starting coordinate and
    /// `dy` the step.
    public var y0: Anything?

    /// Sets the y coordinate step. 
    ///
    /// See `y0` for more info.
    public var dy: Double?

    /// Sets the text elements associated with each z value.
    public var text: [Double]?

    /// Same as `text`.
    public var hoverText: [Double]?

    /// Transposes the z data.
    public var transpose: Bool?

    /// If *array*, the heatmap's x coordinates are given by *x* (the default behavior when `x` is provided). 
    ///
    /// If *scaled*, the heatmap's x coordinates are given by *x0* and *dx* (the default behavior when
    /// `x` is not provided).
    /// - traces/contour/attributes/xtype
    public enum XType: String, Encodable {
        case array
        case scaled
    }
    /// If *array*, the heatmap's x coordinates are given by *x* (the default behavior when `x` is provided). 
    ///
    /// If *scaled*, the heatmap's x coordinates are given by *x0* and *dx* (the default behavior when
    /// `x` is not provided).
    public var xType: XType?

    /// If *array*, the heatmap's y coordinates are given by *y* (the default behavior when `y` is provided) If *scaled*, the heatmap's y coordinates are given by *y0* and *dy* (the default behavior when `y` is not provided)
    /// - traces/contour/attributes/ytype
    public enum YType: String, Encodable {
        case array
        case scaled
    }
    /// If *array*, the heatmap's y coordinates are given by *y* (the default behavior when `y` is provided) If *scaled*, the heatmap's y coordinates are given by *y0* and *dy* (the default behavior when `y` is not provided)
    public var yType: YType?

    /// Sets the hover text formatting rule using d3 formatting mini-languages which are very similar to those in Python. 
    ///
    /// See: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
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
    public var hoverTemplate: String?

    /// Determines whether or not gaps (i.e. 
    ///
    /// {nan} or missing values) in the `z` data have hover labels associated with them.
    public var hoverOnGaps: Bool?

    /// Determines whether or not gaps (i.e. 
    ///
    /// {nan} or missing values) in the `z` data are filled in. It is defaulted to true if `z` is a one
    /// dimensional array otherwise it is defaulted to false.
    public var connectGaps: Bool?

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

    /// - traces/contour/attributes/contours
    public struct Contours: Encodable {
        /// If `levels`, the data is represented as a contour plot with multiple levels displayed. 
        ///
        /// If `constraint`, the data is represented as constraints with the invalid region shaded as
        /// specified by the `operation` and `value` parameters.
        /// - traces/contour/attributes/contours/type
        public enum Rule: String, Encodable {
            case levels
            case constraint
        }
        /// If `levels`, the data is represented as a contour plot with multiple levels displayed. 
        ///
        /// If `constraint`, the data is represented as constraints with the invalid region shaded as
        /// specified by the `operation` and `value` parameters.
        public var type: Rule?
    
        /// Sets the starting contour level value. 
        ///
        /// Must be less than `contours.end`
        public var start: Double?
    
        /// Sets the end contour level value. 
        ///
        /// Must be more than `contours.start`
        public var end: Double?
    
        /// Sets the step between each contour level. 
        ///
        /// Must be positive.
        public var size: Double?
    
        /// Determines the coloring method showing the contour values. 
        ///
        /// If *fill*, coloring is done evenly between each contour level If *heatmap*, a heatmap gradient
        /// coloring is applied between each contour level. If *lines*, coloring is done on the contour
        /// lines. If *none*, no coloring is applied on this trace.
        /// - traces/contour/attributes/contours/coloring
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
        public var coloring: Coloring?
    
        /// Determines whether or not the contour lines are drawn. 
        ///
        /// Has an effect only if `contours.coloring` is set to *fill*.
        public var showLines: Bool?
    
        /// Determines whether to label the contour lines with their values.
        public var showLabels: Bool?
    
        /// Sets the font used for labeling the contour levels. 
        ///
        /// The default color comes from the lines, if shown. The default family and size come from
        /// `layout.font`.
        public var labelFont: Font0?
    
        /// Sets the contour label formatting rule using d3 formatting mini-language which is very similar to Python, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
        public var labelFormat: String?
    
        /// Sets the constraint operation. 
        ///
        /// *=* keeps regions equal to `value` *<* and *<=* keep regions less than `value` *>* and *>=* keep
        /// regions greater than `value` *[]*, *()*, *[)*, and *(]* keep regions inside `value[0]` to
        /// `value[1]` *][*, *)(*, *](*, *)[* keep regions outside `value[0]` to value[1]` Open vs. closed
        /// intervals make no difference to constraint display, but all versions are allowed for consistency
        /// with filter transforms.
        /// - traces/contour/attributes/contours/operation
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
        /// Sets the constraint operation. 
        ///
        /// *=* keeps regions equal to `value` *<* and *<=* keep regions less than `value` *>* and *>=* keep
        /// regions greater than `value` *[]*, *()*, *[)*, and *(]* keep regions inside `value[0]` to
        /// `value[1]` *][*, *)(*, *](*, *)[* keep regions outside `value[0]` to value[1]` Open vs. closed
        /// intervals make no difference to constraint display, but all versions are allowed for consistency
        /// with filter transforms.
        public var operation: Operation?
    
        /// Sets the value or values of the constraint boundary. 
        ///
        /// When `operation` is set to one of the comparison values (=,<,>=,>,<=) *value* is expected to be
        /// a number. When `operation` is set to one of the interval values ([],(),[),(],][,)(,](,)[)
        /// *value* is expected to be an array of two numbers where the first is the lower bound and the
        /// second is the upper bound.
        public var value: Anything?
    
        public var impliedEdits: ImpliedEdits0?
    
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
            case impliedEdits
        }
        
        public init(type: Rule? = nil, start: Double? = nil, end: Double? = nil, size: Double? = nil, coloring: Coloring? = nil, showLines: Bool? = nil, showLabels: Bool? = nil, labelFont: Font0? = nil, labelFormat: String? = nil, operation: Operation? = nil, value: Anything? = nil, impliedEdits: ImpliedEdits0? = nil) {
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
            self.impliedEdits = impliedEdits
        }
    }
    public var contours: Contours?

    /// - traces/contour/attributes/line
    public struct Line: Encodable {
        /// Sets the color of the contour level. 
        ///
        /// Has no effect if `contours.coloring` is set to *lines*.
        public var color: Color?
    
        /// Sets the contour line width in (in px) Defaults to *0.5* when `contours.type` is *levels*. 
        ///
        /// Defaults to *2* when `contour.type` is *constraint*.
        public var width: Double?
    
        /// Sets the dash style of lines. 
        ///
        /// Set to a dash type string (*solid*, *dot*, *dash*, *longdash*, *dashdot*, or *longdashdot*) or a
        /// dash length list in px (eg *5px,10px,2px,2px*).
        public var dash: String?
    
        /// Sets the amount of smoothing for the contour lines, where *0* corresponds to no smoothing.
        public var smoothing: Double?
    
        public init(color: Color? = nil, width: Double? = nil, dash: String? = nil, smoothing: Double? = nil) {
            self.color = color
            self.width = width
            self.dash = dash
            self.smoothing = smoothing
        }
    }
    public var line: Line?

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

    /// Sets the calendar system to use with `x` date data.
    public var xCalendar: Calendar0?

    /// Sets the calendar system to use with `y` date data.
    public var yCalendar: Calendar0?

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

    /// Sets the source reference on plot.ly for  hoverinfo .
    public var hoverInfoSource: String?

    /// Sets the source reference on plot.ly for  z .
    public var zSource: String?

    /// Sets the source reference on plot.ly for  x .
    public var xSource: String?

    /// Sets the source reference on plot.ly for  y .
    public var ySource: String?

    /// Sets the source reference on plot.ly for  text .
    public var textSource: String?

    /// Sets the source reference on plot.ly for  hovertext .
    public var hoverTextSource: String?

    /// Sets the source reference on plot.ly for  hovertemplate .
    public var hoverTemplateSource: String?

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
        case hoverInfo = "hoverinfo"
        case hoverLabel = "hoverlabel"
        case stream
        case transforms
        case uiRevision = "uirevision"
        case z
        case x
        case x0
        case dx
        case y
        case y0
        case dy
        case text
        case hoverText = "hovertext"
        case transpose
        case xType = "xtype"
        case yType = "ytype"
        case zHoverFormat = "zhoverformat"
        case hoverTemplate = "hovertemplate"
        case hoverOnGaps = "hoverongaps"
        case connectGaps = "connectgaps"
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
        case xCalendar = "xcalendar"
        case yCalendar = "ycalendar"
        case xAxis = "xaxis"
        case yAxis = "yaxis"
        case idsSource = "idssrc"
        case customDataSource = "customdatasrc"
        case metaSource = "metasrc"
        case hoverInfoSource = "hoverinfosrc"
        case zSource = "zsrc"
        case xSource = "xsrc"
        case ySource = "ysrc"
        case textSource = "textsrc"
        case hoverTextSource = "hovertextsrc"
        case hoverTemplateSource = "hovertemplatesrc"
    }
    
    public init(visible: Visible0? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, hoverInfo: HoverInfo0? = nil, hoverLabel: HoverLabel0? = nil, stream: Stream0? = nil, transforms: TickFormatStops0? = nil, uiRevision: Anything? = nil, z: [Double]? = nil, x: [Double]? = nil, x0: Anything? = nil, dx: Double? = nil, y: [Double]? = nil, y0: Anything? = nil, dy: Double? = nil, text: [Double]? = nil, hoverText: [Double]? = nil, transpose: Bool? = nil, xType: XType? = nil, yType: YType? = nil, zHoverFormat: String? = nil, hoverTemplate: String? = nil, hoverOnGaps: Bool? = nil, connectGaps: Bool? = nil, fillColor: Color? = nil, autoContour: Bool? = nil, nContours: Int? = nil, contours: Contours? = nil, line: Line? = nil, zAuto: Bool? = nil, zMin: Double? = nil, zMax: Double? = nil, zMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: ColorBar0? = nil, colorAxis: SubPlotID? = nil, xCalendar: Calendar0? = nil, yCalendar: Calendar0? = nil, xAxis: SubPlotID? = nil, yAxis: SubPlotID? = nil, idsSource: String? = nil, customDataSource: String? = nil, metaSource: String? = nil, hoverInfoSource: String? = nil, zSource: String? = nil, xSource: String? = nil, ySource: String? = nil, textSource: String? = nil, hoverTextSource: String? = nil, hoverTemplateSource: String? = nil) {
        self.visible = visible
        self.showLegend = showLegend
        self.legendGroup = legendGroup
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
        self.zHoverFormat = zHoverFormat
        self.hoverTemplate = hoverTemplate
        self.hoverOnGaps = hoverOnGaps
        self.connectGaps = connectGaps
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
        self.xCalendar = xCalendar
        self.yCalendar = yCalendar
        self.xAxis = xAxis
        self.yAxis = yAxis
        self.idsSource = idsSource
        self.customDataSource = customDataSource
        self.metaSource = metaSource
        self.hoverInfoSource = hoverInfoSource
        self.zSource = zSource
        self.xSource = xSource
        self.ySource = ySource
        self.textSource = textSource
        self.hoverTextSource = hoverTextSource
        self.hoverTemplateSource = hoverTemplateSource
    }
}