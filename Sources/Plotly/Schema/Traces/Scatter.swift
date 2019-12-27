/// The scatter trace type encompasses line charts, scatter charts, text charts, and bubble charts. 
///
/// The data visualized as scatter point or lines is set in `x` and `y`. Text (appearing either on
/// the chart or on hover only) is via `text`. Bubble charts are achieved by setting `marker.size`
/// and/or `marker.color` to numerical arrays.
public struct Scatter: Trace {
    public let type: String = "scatter"

    public let animatable: Bool = true

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

    /// Array containing integer indices of selected points. 
    ///
    /// Has an effect only for traces that support selections. Note that an empty array means an empty
    /// selection where the `unselected` are turned on for all points, whereas, any other non-array
    /// values means no selection all where the `selected` and `unselected` styles have no effect.
    public var selectedPoints: Anything?

    public var hoverInfo: HoverInfo1?

    public var hoverLabel: HoverLabel1?

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

    /// Set several scatter traces (on the same subplot) to the same stackgroup in order to add their y values (or their x values if `orientation` is *h*). 
    ///
    /// If blank or omitted this trace will not be stacked. Stacking also turns `fill` on by default,
    /// using *tonexty* (*tonextx*) if `orientation` is *h* (*v*) and sets the default `mode` to *lines*
    /// irrespective of point count. You can only stack on a numeric (linear or log) axis. Traces in a
    /// `stackgroup` will only fill to (or be filled to) other traces in the same group. With multiple
    /// `stackgroup`s or some traces stacked and some not, if fill-linked traces are not already
    /// consecutive, the later ones will be pushed down in the drawing order.
    public var stackGroup: String?

    public var orientation: Orientation0?

    public var groupNormalization: GroupNormalization0?

    /// Only relevant when `stackgroup` is used, and only the first `stackgaps` found in the `stackgroup` will be used - including if `visible` is *legendonly* but not if it is `false`. 
    ///
    /// Determines how we handle locations at which other traces in this group have data but this one
    /// does not. With *infer zero* we insert a zero at these locations. With *interpolate* we linearly
    /// interpolate between existing values, and extrapolate a constant beyond the existing values.
    /// - traces/scatter/attributes/stackgaps
    public enum StackGaps: String, Encodable {
        case inferZero = "infer zero"
        case interpolate
    }
    public var stackGaps: StackGaps?

    /// Sets text elements associated with each (x,y) pair. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to the this trace's (x,y) coordinates. If trace `hoverinfo` contains a
    /// *text* flag and *hovertext* is not set, these elements will be seen in the hover labels.
    public var text: String?

    /// Template string used for rendering the information text that appear on points. 
    ///
    /// Note that this will override `textinfo`. Variables are inserted using %{variable}, for example
    /// "y: %{y}". Numbers are formatted using d3-format's syntax %{variable:d3-format}, for example
    /// "Price: %{y:$.2f}".
    /// https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format for details on
    /// the formatting syntax. Dates are formatted using d3-time-format's syntax
    /// %{variable|d3-time-format}, for example "Day: %{2019-01-01|%A}".
    /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format for details on
    /// the date formatting syntax. Every attributes that can be specified per-point (the ones that are
    /// `arrayOk: true`) are available. 
    public var textTemplate: String?

    /// Sets hover text elements associated with each (x,y) pair. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to the this trace's (x,y) coordinates. To be seen, trace `hoverinfo`
    /// must contain a *text* flag.
    public var hoverText: String?

    public var mode: Mode0?

    public var hoverOn: HoverOn0?

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

    /// - traces/scatter/attributes/line
    public struct Line: Encodable {
        /// Sets the line color.
        public var color: Color?
    
        /// Sets the line width (in px).
        public var width: Double?
    
        /// Determines the line shape. 
        ///
        /// With *spline* the lines are drawn using spline interpolation. The other available values
        /// correspond to step-wise line shapes.
        /// - traces/scatter/attributes/line/shape
        public enum Shape: String, Encodable {
            case linear
            case spline
            case hv
            case vh
            case hvh
            case vhv
        }
        public var shape: Shape?
    
        /// Has an effect only if `shape` is set to *spline* Sets the amount of smoothing. 
        ///
        /// *0* corresponds to no smoothing (equivalent to a *linear* shape).
        public var smoothing: Double?
    
        /// Sets the dash style of lines. 
        ///
        /// Set to a dash type string (*solid*, *dot*, *dash*, *longdash*, *dashdot*, or *longdashdot*) or a
        /// dash length list in px (eg *5px,10px,2px,2px*).
        public var dash: String?
    
        /// Simplifies lines by removing nearly-collinear points. 
        ///
        /// When transitioning lines, it may be desirable to disable this so that the number of points along
        /// the resulting SVG path is unaffected.
        public var simplify: Bool?
    
        public init(color: Color? = nil, width: Double? = nil, shape: Shape? = nil, smoothing: Double? = nil, dash: String? = nil, simplify: Bool? = nil) {
            self.color = color
            self.width = width
            self.shape = shape
            self.smoothing = smoothing
            self.dash = dash
            self.simplify = simplify
        }
    }
    public var line: Line?

    /// Determines whether or not gaps (i.e. 
    ///
    /// {nan} or missing values) in the provided data arrays are connected.
    public var connectGaps: Bool?

    /// Determines whether or not markers and text nodes are clipped about the subplot axes. 
    ///
    /// To show markers and text nodes above axis lines and tick labels, make sure to set `xaxis.layer`
    /// and `yaxis.layer` to *below traces*.
    public var clipOnAxis: Bool?

    public var fill: Fill0?

    /// Sets the fill color. 
    ///
    /// Defaults to a half-transparent variant of the line color, marker color, or marker line color,
    /// whichever is available.
    public var fillColor: Color?

    public var marker: Marker0?

    public var selected: Selected0?

    public var unselected: Selected0?

    public var textPosition: TextPosition0?

    public var textFont: Font1?

    /// r coordinates in scatter traces are deprecated!Please switch to the *scatterpolar* trace type.Sets the radial coordinatesfor legacy polar chart only.
    public var r: [Double]?

    /// t coordinates in scatter traces are deprecated!Please switch to the *scatterpolar* trace type.Sets the angular coordinatesfor legacy polar chart only.
    public var t: [Double]?

    public var xError: XError0?

    public var yError: YError0?

    public var xCalendar: Calendar0?

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

    /// Sets the source reference on plot.ly for  x .
    public var xSource: String?

    /// Sets the source reference on plot.ly for  y .
    public var ySource: String?

    /// Sets the source reference on plot.ly for  text .
    public var textSource: String?

    /// Sets the source reference on plot.ly for  texttemplate .
    public var textTemplateSource: String?

    /// Sets the source reference on plot.ly for  hovertext .
    public var hoverTextSource: String?

    /// Sets the source reference on plot.ly for  hovertemplate .
    public var hoverTemplateSource: String?

    /// Sets the source reference on plot.ly for  textposition .
    public var textPositionSource: String?

    /// Sets the source reference on plot.ly for  r .
    public var rSource: String?

    /// Sets the source reference on plot.ly for  t .
    public var tSource: String?

    public init(visible: Visible0? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, selectedPoints: Anything? = nil, hoverInfo: HoverInfo1? = nil, hoverLabel: HoverLabel1? = nil, stream: Stream0? = nil, transforms: TickFormatStops0? = nil, uiRevision: Anything? = nil, x: [Double]? = nil, x0: Anything? = nil, dx: Double? = nil, y: [Double]? = nil, y0: Anything? = nil, dy: Double? = nil, stackGroup: String? = nil, orientation: Orientation0? = nil, groupNormalization: GroupNormalization0? = nil, stackGaps: StackGaps? = nil, text: String? = nil, textTemplate: String? = nil, hoverText: String? = nil, mode: Mode0? = nil, hoverOn: HoverOn0? = nil, hoverTemplate: String? = nil, line: Line? = nil, connectGaps: Bool? = nil, clipOnAxis: Bool? = nil, fill: Fill0? = nil, fillColor: Color? = nil, marker: Marker0? = nil, selected: Selected0? = nil, unselected: Selected0? = nil, textPosition: TextPosition0? = nil, textFont: Font1? = nil, r: [Double]? = nil, t: [Double]? = nil, xError: XError0? = nil, yError: YError0? = nil, xCalendar: Calendar0? = nil, yCalendar: Calendar0? = nil, xAxis: SubPlotID? = nil, yAxis: SubPlotID? = nil, idsSource: String? = nil, customDataSource: String? = nil, metaSource: String? = nil, hoverInfoSource: String? = nil, xSource: String? = nil, ySource: String? = nil, textSource: String? = nil, textTemplateSource: String? = nil, hoverTextSource: String? = nil, hoverTemplateSource: String? = nil, textPositionSource: String? = nil, rSource: String? = nil, tSource: String? = nil) {
        self.visible = visible
        self.showLegend = showLegend
        self.legendGroup = legendGroup
        self.opacity = opacity
        self.name = name
        self.uid = uid
        self.ids = ids
        self.customData = customData
        self.meta = meta
        self.selectedPoints = selectedPoints
        self.hoverInfo = hoverInfo
        self.hoverLabel = hoverLabel
        self.stream = stream
        self.transforms = transforms
        self.uiRevision = uiRevision
        self.x = x
        self.x0 = x0
        self.dx = dx
        self.y = y
        self.y0 = y0
        self.dy = dy
        self.stackGroup = stackGroup
        self.orientation = orientation
        self.groupNormalization = groupNormalization
        self.stackGaps = stackGaps
        self.text = text
        self.textTemplate = textTemplate
        self.hoverText = hoverText
        self.mode = mode
        self.hoverOn = hoverOn
        self.hoverTemplate = hoverTemplate
        self.line = line
        self.connectGaps = connectGaps
        self.clipOnAxis = clipOnAxis
        self.fill = fill
        self.fillColor = fillColor
        self.marker = marker
        self.selected = selected
        self.unselected = unselected
        self.textPosition = textPosition
        self.textFont = textFont
        self.r = r
        self.t = t
        self.xError = xError
        self.yError = yError
        self.xCalendar = xCalendar
        self.yCalendar = yCalendar
        self.xAxis = xAxis
        self.yAxis = yAxis
        self.idsSource = idsSource
        self.customDataSource = customDataSource
        self.metaSource = metaSource
        self.hoverInfoSource = hoverInfoSource
        self.xSource = xSource
        self.ySource = ySource
        self.textSource = textSource
        self.textTemplateSource = textTemplateSource
        self.hoverTextSource = hoverTextSource
        self.hoverTemplateSource = hoverTemplateSource
        self.textPositionSource = textPositionSource
        self.rSource = rSource
        self.tSource = tSource
    }
}