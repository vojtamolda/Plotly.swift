/// The scatter trace type encompasses line charts, scatter charts, text charts, and bubble charts. 
///
/// The data visualized as scatter point or lines is set in `x` and `y`. Text (appearing either on
/// the chart or on hover only) is via `text`. Bubble charts are achieved by setting `marker.size`
/// and/or `marker.color` to numerical arrays.
public struct Scatter: Trace {
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#type) |
    /// [Python](https://plot.ly/python/reference/#type) |
    /// [R](https://plot.ly/r/reference/#type)
    public let type: String = "scatter"

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#animatable) |
    /// [Python](https://plot.ly/python/reference/#animatable) |
    /// [R](https://plot.ly/r/reference/#animatable)
    public let animatable: Bool = true

    /// Determines whether or not this trace is visible. 
    ///
    /// If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the
    /// legend itself is visible).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-visible) |
    /// [Python](https://plot.ly/python/reference/#scatter-visible) |
    /// [R](https://plot.ly/r/reference/#scatter-visible)
    public var visible: Visible0?

    /// Determines whether or not an item corresponding to this trace is shown in the legend.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-showlegend) |
    /// [Python](https://plot.ly/python/reference/#scatter-showlegend) |
    /// [R](https://plot.ly/r/reference/#scatter-showlegend)
    public var showLegend: Bool?

    /// Sets the legend group for this trace. 
    ///
    /// Traces part of the same legend group hide/show at the same time when toggling legend items.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-legendgroup) |
    /// [Python](https://plot.ly/python/reference/#scatter-legendgroup) |
    /// [R](https://plot.ly/r/reference/#scatter-legendgroup)
    public var legendGroup: String?

    /// Sets the opacity of the trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-opacity) |
    /// [Python](https://plot.ly/python/reference/#scatter-opacity) |
    /// [R](https://plot.ly/r/reference/#scatter-opacity)
    public var opacity: Double?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-name) |
    /// [Python](https://plot.ly/python/reference/#scatter-name) |
    /// [R](https://plot.ly/r/reference/#scatter-name)
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-uid) |
    /// [Python](https://plot.ly/python/reference/#scatter-uid) |
    /// [R](https://plot.ly/r/reference/#scatter-uid)
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-ids) |
    /// [Python](https://plot.ly/python/reference/#scatter-ids) |
    /// [R](https://plot.ly/r/reference/#scatter-ids)
    public var ids: [Double]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-customdata) |
    /// [Python](https://plot.ly/python/reference/#scatter-customdata) |
    /// [R](https://plot.ly/r/reference/#scatter-customdata)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-meta) |
    /// [Python](https://plot.ly/python/reference/#scatter-meta) |
    /// [R](https://plot.ly/r/reference/#scatter-meta)
    public var meta: Anything?

    /// Array containing integer indices of selected points. 
    ///
    /// Has an effect only for traces that support selections. Note that an empty array means an empty
    /// selection where the `unselected` are turned on for all points, whereas, any other non-array
    /// values means no selection all where the `selected` and `unselected` styles have no effect.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-selectedpoints) |
    /// [Python](https://plot.ly/python/reference/#scatter-selectedpoints) |
    /// [R](https://plot.ly/r/reference/#scatter-selectedpoints)
    public var selectedPoints: Anything?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-hoverinfo) |
    /// [Python](https://plot.ly/python/reference/#scatter-hoverinfo) |
    /// [R](https://plot.ly/r/reference/#scatter-hoverinfo)
    public var hoverInfo: HoverInfo0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#scatter-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#scatter-hoverlabel)
    public var hoverLabel: HoverLabel0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-stream) |
    /// [Python](https://plot.ly/python/reference/#scatter-stream) |
    /// [R](https://plot.ly/r/reference/#scatter-stream)
    public var stream: Stream0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-transforms) |
    /// [Python](https://plot.ly/python/reference/#scatter-transforms) |
    /// [R](https://plot.ly/r/reference/#scatter-transforms)
    public var transforms: Transforms0?

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
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-uirevision) |
    /// [Python](https://plot.ly/python/reference/#scatter-uirevision) |
    /// [R](https://plot.ly/r/reference/#scatter-uirevision)
    public var uiRevision: Anything?

    /// Sets the x coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-x) |
    /// [Python](https://plot.ly/python/reference/#scatter-x) |
    /// [R](https://plot.ly/r/reference/#scatter-x)
    public var x: [Double]?

    /// Alternate to `x`. 
    ///
    /// Builds a linear space of x coordinates. Use with `dx` where `x0` is the starting coordinate and
    /// `dx` the step.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-x0) |
    /// [Python](https://plot.ly/python/reference/#scatter-x0) |
    /// [R](https://plot.ly/r/reference/#scatter-x0)
    public var x0: Anything?

    /// Sets the x coordinate step. 
    ///
    /// See `x0` for more info.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-dx) |
    /// [Python](https://plot.ly/python/reference/#scatter-dx) |
    /// [R](https://plot.ly/r/reference/#scatter-dx)
    public var dx: Double?

    /// Sets the y coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-y) |
    /// [Python](https://plot.ly/python/reference/#scatter-y) |
    /// [R](https://plot.ly/r/reference/#scatter-y)
    public var y: [Double]?

    /// Alternate to `y`. 
    ///
    /// Builds a linear space of y coordinates. Use with `dy` where `y0` is the starting coordinate and
    /// `dy` the step.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-y0) |
    /// [Python](https://plot.ly/python/reference/#scatter-y0) |
    /// [R](https://plot.ly/r/reference/#scatter-y0)
    public var y0: Anything?

    /// Sets the y coordinate step. 
    ///
    /// See `y0` for more info.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-dy) |
    /// [Python](https://plot.ly/python/reference/#scatter-dy) |
    /// [R](https://plot.ly/r/reference/#scatter-dy)
    public var dy: Double?

    /// Set several scatter traces (on the same subplot) to the same stackgroup in order to add their y values (or their x values if `orientation` is *h*). 
    ///
    /// If blank or omitted this trace will not be stacked. Stacking also turns `fill` on by default,
    /// using *tonexty* (*tonextx*) if `orientation` is *h* (*v*) and sets the default `mode` to *lines*
    /// irrespective of point count. You can only stack on a numeric (linear or log) axis. Traces in a
    /// `stackgroup` will only fill to (or be filled to) other traces in the same group. With multiple
    /// `stackgroup`s or some traces stacked and some not, if fill-linked traces are not already
    /// consecutive, the later ones will be pushed down in the drawing order.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-stackgroup) |
    /// [Python](https://plot.ly/python/reference/#scatter-stackgroup) |
    /// [R](https://plot.ly/r/reference/#scatter-stackgroup)
    public var stackGroup: String?

    /// Only relevant when `stackgroup` is used, and only the first `orientation` found in the `stackgroup` will be used - including if `visible` is *legendonly* but not if it is `false`. 
    ///
    /// Sets the stacking direction. With *v* (*h*), the y (x) values of subsequent traces are added.
    /// Also affects the default value of `fill`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-orientation) |
    /// [Python](https://plot.ly/python/reference/#scatter-orientation) |
    /// [R](https://plot.ly/r/reference/#scatter-orientation)
    public var orientation: Orientation0?

    /// Only relevant when `stackgroup` is used, and only the first `groupnorm` found in the `stackgroup` will be used - including if `visible` is *legendonly* but not if it is `false`. 
    ///
    /// Sets the normalization for the sum of this `stackgroup`. With *fraction*, the value of each
    /// trace at each location is divided by the sum of all trace values at that location. *percent* is
    /// the same but multiplied by 100 to show percentages. If there are multiple subplots, or multiple
    /// `stackgroup`s on one subplot, each will be normalized within its own set.
    ///
    /// # Used By
    /// `Scatter.groupNormalization` |
    public enum GroupNormalization: String, Encodable {
        case none = ""
        case fraction
        case percent
    }
    /// Only relevant when `stackgroup` is used, and only the first `groupnorm` found in the `stackgroup` will be used - including if `visible` is *legendonly* but not if it is `false`. 
    ///
    /// Sets the normalization for the sum of this `stackgroup`. With *fraction*, the value of each
    /// trace at each location is divided by the sum of all trace values at that location. *percent* is
    /// the same but multiplied by 100 to show percentages. If there are multiple subplots, or multiple
    /// `stackgroup`s on one subplot, each will be normalized within its own set.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-groupnorm) |
    /// [Python](https://plot.ly/python/reference/#scatter-groupnorm) |
    /// [R](https://plot.ly/r/reference/#scatter-groupnorm)
    public var groupNormalization: GroupNormalization?

    /// Only relevant when `stackgroup` is used, and only the first `stackgaps` found in the `stackgroup` will be used - including if `visible` is *legendonly* but not if it is `false`. 
    ///
    /// Determines how we handle locations at which other traces in this group have data but this one
    /// does not. With *infer zero* we insert a zero at these locations. With *interpolate* we linearly
    /// interpolate between existing values, and extrapolate a constant beyond the existing values.
    ///
    /// # Used By
    /// `Scatter.stackGaps` |
    public enum StackGaps: String, Encodable {
        case inferZero = "infer zero"
        case interpolate
    }
    /// Only relevant when `stackgroup` is used, and only the first `stackgaps` found in the `stackgroup` will be used - including if `visible` is *legendonly* but not if it is `false`. 
    ///
    /// Determines how we handle locations at which other traces in this group have data but this one
    /// does not. With *infer zero* we insert a zero at these locations. With *interpolate* we linearly
    /// interpolate between existing values, and extrapolate a constant beyond the existing values.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-stackgaps) |
    /// [Python](https://plot.ly/python/reference/#scatter-stackgaps) |
    /// [R](https://plot.ly/r/reference/#scatter-stackgaps)
    public var stackGaps: StackGaps?

    /// Sets text elements associated with each (x,y) pair. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to the this trace's (x,y) coordinates. If trace `hoverinfo` contains a
    /// *text* flag and *hovertext* is not set, these elements will be seen in the hover labels.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-text) |
    /// [Python](https://plot.ly/python/reference/#scatter-text) |
    /// [R](https://plot.ly/r/reference/#scatter-text)
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-texttemplate) |
    /// [Python](https://plot.ly/python/reference/#scatter-texttemplate) |
    /// [R](https://plot.ly/r/reference/#scatter-texttemplate)
    public var textTemplate: String?

    /// Sets hover text elements associated with each (x,y) pair. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to the this trace's (x,y) coordinates. To be seen, trace `hoverinfo`
    /// must contain a *text* flag.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-hovertext) |
    /// [Python](https://plot.ly/python/reference/#scatter-hovertext) |
    /// [R](https://plot.ly/r/reference/#scatter-hovertext)
    public var hoverText: String?

    /// Determines the drawing mode for this scatter trace. 
    ///
    /// If the provided `mode` includes *text* then the `text` elements appear at the coordinates.
    /// Otherwise, the `text` elements appear on hover. If there are less than 20 points and the trace
    /// is not stacked then the default is *lines+markers*. Otherwise, *lines*.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-mode) |
    /// [Python](https://plot.ly/python/reference/#scatter-mode) |
    /// [R](https://plot.ly/r/reference/#scatter-mode)
    public var mode: Mode0?

    /// Do the hover effects highlight individual points (markers or line points) or do they highlight filled regions? If the fill is *toself* or *tonext* and there are no markers or text, then the default is *fills*, otherwise it is *points*.
    ///
    /// # Used By
    /// `Scatter.hoverOn` |
    public struct HoverOn: OptionSet, Encodable {
        public let rawValue: Int
    
        public static let points = HoverOn(rawValue: 1 << 0)
        public static let fills = HoverOn(rawValue: 1 << 1)
    
        public init(rawValue: Int) { self.rawValue = rawValue }
    
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["points"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["fills"] }
            var container = encoder.singleValueContainer()
            try container.encode(options.joined(separator: "+"))
        }
    }
    /// Do the hover effects highlight individual points (markers or line points) or do they highlight filled regions? If the fill is *toself* or *tonext* and there are no markers or text, then the default is *fills*, otherwise it is *points*.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-hoveron) |
    /// [Python](https://plot.ly/python/reference/#scatter-hoveron) |
    /// [R](https://plot.ly/r/reference/#scatter-hoveron)
    public var hoverOn: HoverOn?

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
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-hovertemplate) |
    /// [Python](https://plot.ly/python/reference/#scatter-hovertemplate) |
    /// [R](https://plot.ly/r/reference/#scatter-hovertemplate)
    public var hoverTemplate: String?

    ///
    /// # Used By
    /// `Scatter.line` |
    public struct Line: Encodable {
        /// Sets the line color.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-line-color) |
        /// [Python](https://plot.ly/python/reference/#scatter-line-color) |
        /// [R](https://plot.ly/r/reference/#scatter-line-color)
        public var color: Color?
    
        /// Sets the line width (in px).
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-line-width) |
        /// [Python](https://plot.ly/python/reference/#scatter-line-width) |
        /// [R](https://plot.ly/r/reference/#scatter-line-width)
        public var width: Double?
    
        /// Determines the line shape. 
        ///
        /// With *spline* the lines are drawn using spline interpolation. The other available values
        /// correspond to step-wise line shapes.
        ///
        /// # Used By
        /// `Scatter.Line.shape` |
        public enum Shape: String, Encodable {
            case linear
            case spline
            case hv
            case vh
            case hvh
            case vhv
        }
        /// Determines the line shape. 
        ///
        /// With *spline* the lines are drawn using spline interpolation. The other available values
        /// correspond to step-wise line shapes.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-line-shape) |
        /// [Python](https://plot.ly/python/reference/#scatter-line-shape) |
        /// [R](https://plot.ly/r/reference/#scatter-line-shape)
        public var shape: Shape?
    
        /// Has an effect only if `shape` is set to *spline* Sets the amount of smoothing. 
        ///
        /// *0* corresponds to no smoothing (equivalent to a *linear* shape).
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-line-smoothing) |
        /// [Python](https://plot.ly/python/reference/#scatter-line-smoothing) |
        /// [R](https://plot.ly/r/reference/#scatter-line-smoothing)
        public var smoothing: Double?
    
        /// Sets the dash style of lines. 
        ///
        /// Set to a dash type string (*solid*, *dot*, *dash*, *longdash*, *dashdot*, or *longdashdot*) or a
        /// dash length list in px (eg *5px,10px,2px,2px*).
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-line-dash) |
        /// [Python](https://plot.ly/python/reference/#scatter-line-dash) |
        /// [R](https://plot.ly/r/reference/#scatter-line-dash)
        public var dash: String?
    
        /// Simplifies lines by removing nearly-collinear points. 
        ///
        /// When transitioning lines, it may be desirable to disable this so that the number of points along
        /// the resulting SVG path is unaffected.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-line-simplify) |
        /// [Python](https://plot.ly/python/reference/#scatter-line-simplify) |
        /// [R](https://plot.ly/r/reference/#scatter-line-simplify)
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-line) |
    /// [Python](https://plot.ly/python/reference/#scatter-line) |
    /// [R](https://plot.ly/r/reference/#scatter-line)
    public var line: Line?

    /// Determines whether or not gaps (i.e. 
    ///
    /// {nan} or missing values) in the provided data arrays are connected.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-connectgaps) |
    /// [Python](https://plot.ly/python/reference/#scatter-connectgaps) |
    /// [R](https://plot.ly/r/reference/#scatter-connectgaps)
    public var connectGaps: Bool?

    /// Determines whether or not markers and text nodes are clipped about the subplot axes. 
    ///
    /// To show markers and text nodes above axis lines and tick labels, make sure to set `xaxis.layer`
    /// and `yaxis.layer` to *below traces*.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-cliponaxis) |
    /// [Python](https://plot.ly/python/reference/#scatter-cliponaxis) |
    /// [R](https://plot.ly/r/reference/#scatter-cliponaxis)
    public var clipOnAxis: Bool?

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
    public enum Fill: String, Encodable {
        case none
        case toZeroY = "tozeroy"
        case toZeroX = "tozerox"
        case toNextY = "tonexty"
        case toNextX = "tonextx"
        case toSelf = "toself"
        case toNext = "tonext"
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
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-fill) |
    /// [Python](https://plot.ly/python/reference/#scatter-fill) |
    /// [R](https://plot.ly/r/reference/#scatter-fill)
    public var fill: Fill?

    /// Sets the fill color. 
    ///
    /// Defaults to a half-transparent variant of the line color, marker color, or marker line color,
    /// whichever is available.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-fillcolor) |
    /// [Python](https://plot.ly/python/reference/#scatter-fillcolor) |
    /// [R](https://plot.ly/r/reference/#scatter-fillcolor)
    public var fillColor: Color?

    ///
    /// # Used By
    /// `Scatter.marker` |
    public struct Marker: Encodable {
        /// Sets the marker symbol type. 
        ///
        /// Adding 100 is equivalent to appending *-open* to a symbol name. Adding 200 is equivalent to
        /// appending *-dot* to a symbol name. Adding 300 is equivalent to appending *-open-dot* or
        /// *dot-open* to a symbol name.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-symbol) |
        /// [Python](https://plot.ly/python/reference/#scatter-marker-symbol) |
        /// [R](https://plot.ly/r/reference/#scatter-marker-symbol)
        public var symbol: Symbol0?
    
        /// Sets the marker opacity.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-opacity) |
        /// [Python](https://plot.ly/python/reference/#scatter-marker-opacity) |
        /// [R](https://plot.ly/r/reference/#scatter-marker-opacity)
        public var opacity: Double?
    
        /// Sets the marker size (in px).
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-size) |
        /// [Python](https://plot.ly/python/reference/#scatter-marker-size) |
        /// [R](https://plot.ly/r/reference/#scatter-marker-size)
        public var size: Double?
    
        /// Sets a maximum number of points to be drawn on the graph. 
        ///
        /// *0* corresponds to no limit.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-maxdisplayed) |
        /// [Python](https://plot.ly/python/reference/#scatter-marker-maxdisplayed) |
        /// [R](https://plot.ly/r/reference/#scatter-marker-maxdisplayed)
        public var maxDisplayed: Double?
    
        /// Has an effect only if `marker.size` is set to a numerical array. 
        ///
        /// Sets the scale factor used to determine the rendered size of marker points. Use with `sizemin`
        /// and `sizemode`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-sizeref) |
        /// [Python](https://plot.ly/python/reference/#scatter-marker-sizeref) |
        /// [R](https://plot.ly/r/reference/#scatter-marker-sizeref)
        public var sizeReference: Double?
    
        /// Has an effect only if `marker.size` is set to a numerical array. 
        ///
        /// Sets the minimum size (in px) of the rendered marker points.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-sizemin) |
        /// [Python](https://plot.ly/python/reference/#scatter-marker-sizemin) |
        /// [R](https://plot.ly/r/reference/#scatter-marker-sizemin)
        public var sizeMin: Double?
    
        /// Has an effect only if `marker.size` is set to a numerical array. 
        ///
        /// Sets the rule for which the data in `size` is converted to pixels.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-sizemode) |
        /// [Python](https://plot.ly/python/reference/#scatter-marker-sizemode) |
        /// [R](https://plot.ly/r/reference/#scatter-marker-sizemode)
        public var sizeMode: SizeMode0?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-line) |
        /// [Python](https://plot.ly/python/reference/#scatter-marker-line) |
        /// [R](https://plot.ly/r/reference/#scatter-marker-line)
        public var line: Line1?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-gradient) |
        /// [Python](https://plot.ly/python/reference/#scatter-marker-gradient) |
        /// [R](https://plot.ly/r/reference/#scatter-marker-gradient)
        public var gradient: Gradient0?
    
        /// Sets themarkercolor. 
        ///
        /// It accepts either a specific color or an array of numbers that are mapped to the colorscale
        /// relative to the max and min values of the array or relative to `marker.cmin` and `marker.cmax`
        /// if set.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-color) |
        /// [Python](https://plot.ly/python/reference/#scatter-marker-color) |
        /// [R](https://plot.ly/r/reference/#scatter-marker-color)
        public var color: Color?
    
        /// Determines whether or not the color domain is computed with respect to the input data (here in `marker.color`) or the bounds set in `marker.cmin` and `marker.cmax`  Has an effect only if in `marker.color`is set to a numerical array. 
        ///
        /// Defaults to `false` when `marker.cmin` and `marker.cmax` are set by the user.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-cauto) |
        /// [Python](https://plot.ly/python/reference/#scatter-marker-cauto) |
        /// [R](https://plot.ly/r/reference/#scatter-marker-cauto)
        public var cAuto: Bool?
    
        /// Sets the lower bound of the color domain. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
        /// units as in `marker.color` and if set, `marker.cmax` must be set as well.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-cmin) |
        /// [Python](https://plot.ly/python/reference/#scatter-marker-cmin) |
        /// [R](https://plot.ly/r/reference/#scatter-marker-cmin)
        public var cMin: Double?
    
        /// Sets the upper bound of the color domain. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
        /// units as in `marker.color` and if set, `marker.cmin` must be set as well.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-cmax) |
        /// [Python](https://plot.ly/python/reference/#scatter-marker-cmax) |
        /// [R](https://plot.ly/r/reference/#scatter-marker-cmax)
        public var cMax: Double?
    
        /// Sets the mid-point of the color domain by scaling `marker.cmin` and/or `marker.cmax` to be equidistant to this point. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
        /// units as in `marker.color`. Has no effect when `marker.cauto` is `false`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-cmid) |
        /// [Python](https://plot.ly/python/reference/#scatter-marker-cmid) |
        /// [R](https://plot.ly/r/reference/#scatter-marker-cmid)
        public var cMiddle: Double?
    
        /// Sets the colorscale. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. The colorscale must be an
        /// array containing arrays mapping a normalized value to an rgb, rgba, hex, hsl, hsv, or named
        /// color string. At minimum, a mapping for the lowest (0) and highest (1) values are required. For
        /// example, `[[0, 'rgb(0,0,255)'], [1, 'rgb(255,0,0)']]`. To control the bounds of the colorscale
        /// in color space, use`marker.cmin` and `marker.cmax`. Alternatively, `colorscale` may be a palette
        /// name string of the following list:
        /// Greys,YlGnBu,Greens,YlOrRd,Bluered,RdBu,Reds,Blues,Picnic,Rainbow,Portland,Jet,Hot,Blackbody,Earth,Electric,Viridis,Cividis.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-colorscale) |
        /// [Python](https://plot.ly/python/reference/#scatter-marker-colorscale) |
        /// [R](https://plot.ly/r/reference/#scatter-marker-colorscale)
        public var colorScale: ColorScale?
    
        /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `marker.colorscale`. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. In case `colorscale` is
        /// unspecified or `autocolorscale` is true, the default palette will be chosen according to whether
        /// numbers in the `color` array are all positive, all negative or mixed.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-autocolorscale) |
        /// [Python](https://plot.ly/python/reference/#scatter-marker-autocolorscale) |
        /// [R](https://plot.ly/r/reference/#scatter-marker-autocolorscale)
        public var autoColorScale: Bool?
    
        /// Reverses the color mapping if true. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. If true, `marker.cmin` will
        /// correspond to the last color in the array and `marker.cmax` will correspond to the first color.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-reversescale) |
        /// [Python](https://plot.ly/python/reference/#scatter-marker-reversescale) |
        /// [R](https://plot.ly/r/reference/#scatter-marker-reversescale)
        public var reverseScale: Bool?
    
        /// Determines whether or not a colorbar is displayed for this trace. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-showscale) |
        /// [Python](https://plot.ly/python/reference/#scatter-marker-showscale) |
        /// [R](https://plot.ly/r/reference/#scatter-marker-showscale)
        public var showScale: Bool?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-colorbar) |
        /// [Python](https://plot.ly/python/reference/#scatter-marker-colorbar) |
        /// [R](https://plot.ly/r/reference/#scatter-marker-colorbar)
        public var colorBar: ColorBar0?
    
        /// Sets a reference to a shared color axis. 
        ///
        /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
        /// for these shared color axes are set in the layout, under `layout.coloraxis`,
        /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-coloraxis) |
        /// [Python](https://plot.ly/python/reference/#scatter-marker-coloraxis) |
        /// [R](https://plot.ly/r/reference/#scatter-marker-coloraxis)
        public var colorAxis: SubPlotID?
    
        /// Sets the source reference on plot.ly for  symbol .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-symbolsrc) |
        /// [Python](https://plot.ly/python/reference/#scatter-marker-symbolsrc) |
        /// [R](https://plot.ly/r/reference/#scatter-marker-symbolsrc)
        public var symbolSource: String?
    
        /// Sets the source reference on plot.ly for  opacity .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-opacitysrc) |
        /// [Python](https://plot.ly/python/reference/#scatter-marker-opacitysrc) |
        /// [R](https://plot.ly/r/reference/#scatter-marker-opacitysrc)
        public var opacitySource: String?
    
        /// Sets the source reference on plot.ly for  size .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-sizesrc) |
        /// [Python](https://plot.ly/python/reference/#scatter-marker-sizesrc) |
        /// [R](https://plot.ly/r/reference/#scatter-marker-sizesrc)
        public var sizeSource: String?
    
        /// Sets the source reference on plot.ly for  color .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker-colorsrc) |
        /// [Python](https://plot.ly/python/reference/#scatter-marker-colorsrc) |
        /// [R](https://plot.ly/r/reference/#scatter-marker-colorsrc)
        public var colorSource: String?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case symbol
            case opacity
            case size
            case maxDisplayed = "maxdisplayed"
            case sizeReference = "sizeref"
            case sizeMin = "sizemin"
            case sizeMode = "sizemode"
            case line
            case gradient
            case color
            case cAuto = "cauto"
            case cMin = "cmin"
            case cMax = "cmax"
            case cMiddle = "cmid"
            case colorScale = "colorscale"
            case autoColorScale = "autocolorscale"
            case reverseScale = "reversescale"
            case showScale = "showscale"
            case colorBar = "colorbar"
            case colorAxis = "coloraxis"
            case symbolSource = "symbolsrc"
            case opacitySource = "opacitysrc"
            case sizeSource = "sizesrc"
            case colorSource = "colorsrc"
        }
        
        public init(symbol: Symbol0? = nil, opacity: Double? = nil, size: Double? = nil, maxDisplayed: Double? = nil, sizeReference: Double? = nil, sizeMin: Double? = nil, sizeMode: SizeMode0? = nil, line: Line1? = nil, gradient: Gradient0? = nil, color: Color? = nil, cAuto: Bool? = nil, cMin: Double? = nil, cMax: Double? = nil, cMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: ColorBar0? = nil, colorAxis: SubPlotID? = nil, symbolSource: String? = nil, opacitySource: String? = nil, sizeSource: String? = nil, colorSource: String? = nil) {
            self.symbol = symbol
            self.opacity = opacity
            self.size = size
            self.maxDisplayed = maxDisplayed
            self.sizeReference = sizeReference
            self.sizeMin = sizeMin
            self.sizeMode = sizeMode
            self.line = line
            self.gradient = gradient
            self.color = color
            self.cAuto = cAuto
            self.cMin = cMin
            self.cMax = cMax
            self.cMiddle = cMiddle
            self.colorScale = colorScale
            self.autoColorScale = autoColorScale
            self.reverseScale = reverseScale
            self.showScale = showScale
            self.colorBar = colorBar
            self.colorAxis = colorAxis
            self.symbolSource = symbolSource
            self.opacitySource = opacitySource
            self.sizeSource = sizeSource
            self.colorSource = colorSource
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker) |
    /// [Python](https://plot.ly/python/reference/#scatter-marker) |
    /// [R](https://plot.ly/r/reference/#scatter-marker)
    public var marker: Marker?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-selected) |
    /// [Python](https://plot.ly/python/reference/#scatter-selected) |
    /// [R](https://plot.ly/r/reference/#scatter-selected)
    public var selected: Selected0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-unselected) |
    /// [Python](https://plot.ly/python/reference/#scatter-unselected) |
    /// [R](https://plot.ly/r/reference/#scatter-unselected)
    public var unselected: Selected0?

    /// Sets the positions of the `text` elements with respects to the (x,y) coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-textposition) |
    /// [Python](https://plot.ly/python/reference/#scatter-textposition) |
    /// [R](https://plot.ly/r/reference/#scatter-textposition)
    public var textPosition: TextPosition0?

    /// Sets the text font.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-textfont) |
    /// [Python](https://plot.ly/python/reference/#scatter-textfont) |
    /// [R](https://plot.ly/r/reference/#scatter-textfont)
    public var textFont: Font0?

    /// r coordinates in scatter traces are deprecated!Please switch to the *scatterpolar* trace type.Sets the radial coordinatesfor legacy polar chart only.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-r) |
    /// [Python](https://plot.ly/python/reference/#scatter-r) |
    /// [R](https://plot.ly/r/reference/#scatter-r)
    public var r: [Double]?

    /// t coordinates in scatter traces are deprecated!Please switch to the *scatterpolar* trace type.Sets the angular coordinatesfor legacy polar chart only.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-t) |
    /// [Python](https://plot.ly/python/reference/#scatter-t) |
    /// [R](https://plot.ly/r/reference/#scatter-t)
    public var t: [Double]?

    ///
    /// # Used By
    /// `Scatter.xError` |
    public struct XError: Encodable {
        /// Determines whether or not this set of error bars is visible.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-error_x-visible) |
        /// [Python](https://plot.ly/python/reference/#scatter-error_x-visible) |
        /// [R](https://plot.ly/r/reference/#scatter-error_x-visible)
        public var visible: Bool?
    
        /// Determines the rule used to generate the error bars. 
        ///
        /// If *constant`, the bar lengths are of a constant value. Set this constant in `value`. If
        /// *percent*, the bar lengths correspond to a percentage of underlying data. Set this percentage in
        /// `value`. If *sqrt*, the bar lengths correspond to the sqaure of the underlying data. If *data*,
        /// the bar lengths are set with data set `array`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-error_x-type) |
        /// [Python](https://plot.ly/python/reference/#scatter-error_x-type) |
        /// [R](https://plot.ly/r/reference/#scatter-error_x-type)
        public var type: Rule1?
    
        /// Determines whether or not the error bars have the same length in both direction (top/bottom for vertical bars, left/right for horizontal bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-error_x-symmetric) |
        /// [Python](https://plot.ly/python/reference/#scatter-error_x-symmetric) |
        /// [R](https://plot.ly/r/reference/#scatter-error_x-symmetric)
        public var symmetric: Bool?
    
        /// Sets the data corresponding the length of each error bar. 
        ///
        /// Values are plotted relative to the underlying data.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-error_x-array) |
        /// [Python](https://plot.ly/python/reference/#scatter-error_x-array) |
        /// [R](https://plot.ly/r/reference/#scatter-error_x-array)
        public var array: [Double]?
    
        /// Sets the data corresponding the length of each error bar in the bottom (left) direction for vertical (horizontal) bars Values are plotted relative to the underlying data.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-error_x-arrayminus) |
        /// [Python](https://plot.ly/python/reference/#scatter-error_x-arrayminus) |
        /// [R](https://plot.ly/r/reference/#scatter-error_x-arrayminus)
        public var arrayMinus: [Double]?
    
        /// Sets the value of either the percentage (if `type` is set to *percent*) or the constant (if `type` is set to *constant*) corresponding to the lengths of the error bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-error_x-value) |
        /// [Python](https://plot.ly/python/reference/#scatter-error_x-value) |
        /// [R](https://plot.ly/r/reference/#scatter-error_x-value)
        public var value: Double?
    
        /// Sets the value of either the percentage (if `type` is set to *percent*) or the constant (if `type` is set to *constant*) corresponding to the lengths of the error bars in the bottom (left) direction for vertical (horizontal) bars
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-error_x-valueminus) |
        /// [Python](https://plot.ly/python/reference/#scatter-error_x-valueminus) |
        /// [R](https://plot.ly/r/reference/#scatter-error_x-valueminus)
        public var valueMinus: Double?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-error_x-traceref) |
        /// [Python](https://plot.ly/python/reference/#scatter-error_x-traceref) |
        /// [R](https://plot.ly/r/reference/#scatter-error_x-traceref)
        public var traceReference: Int?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-error_x-tracerefminus) |
        /// [Python](https://plot.ly/python/reference/#scatter-error_x-tracerefminus) |
        /// [R](https://plot.ly/r/reference/#scatter-error_x-tracerefminus)
        public var traceReferenceMinus: Int?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-error_x-copy_ystyle) |
        /// [Python](https://plot.ly/python/reference/#scatter-error_x-copy_ystyle) |
        /// [R](https://plot.ly/r/reference/#scatter-error_x-copy_ystyle)
        public var yCopyStyle: Bool?
    
        /// Sets the stoke color of the error bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-error_x-color) |
        /// [Python](https://plot.ly/python/reference/#scatter-error_x-color) |
        /// [R](https://plot.ly/r/reference/#scatter-error_x-color)
        public var color: Color?
    
        /// Sets the thickness (in px) of the error bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-error_x-thickness) |
        /// [Python](https://plot.ly/python/reference/#scatter-error_x-thickness) |
        /// [R](https://plot.ly/r/reference/#scatter-error_x-thickness)
        public var thickness: Double?
    
        /// Sets the width (in px) of the cross-bar at both ends of the error bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-error_x-width) |
        /// [Python](https://plot.ly/python/reference/#scatter-error_x-width) |
        /// [R](https://plot.ly/r/reference/#scatter-error_x-width)
        public var width: Double?
    
        /// Sets the source reference on plot.ly for  array .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-error_x-arraysrc) |
        /// [Python](https://plot.ly/python/reference/#scatter-error_x-arraysrc) |
        /// [R](https://plot.ly/r/reference/#scatter-error_x-arraysrc)
        public var arraySource: String?
    
        /// Sets the source reference on plot.ly for  arrayminus .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-error_x-arrayminussrc) |
        /// [Python](https://plot.ly/python/reference/#scatter-error_x-arrayminussrc) |
        /// [R](https://plot.ly/r/reference/#scatter-error_x-arrayminussrc)
        public var arrayMinusSource: String?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case visible
            case type
            case symmetric
            case array
            case arrayMinus = "arrayminus"
            case value
            case valueMinus = "valueminus"
            case traceReference = "traceref"
            case traceReferenceMinus = "tracerefminus"
            case yCopyStyle = "copy_ystyle"
            case color
            case thickness
            case width
            case arraySource = "arraysrc"
            case arrayMinusSource = "arrayminussrc"
        }
        
        public init(visible: Bool? = nil, type: Rule1? = nil, symmetric: Bool? = nil, array: [Double]? = nil, arrayMinus: [Double]? = nil, value: Double? = nil, valueMinus: Double? = nil, traceReference: Int? = nil, traceReferenceMinus: Int? = nil, yCopyStyle: Bool? = nil, color: Color? = nil, thickness: Double? = nil, width: Double? = nil, arraySource: String? = nil, arrayMinusSource: String? = nil) {
            self.visible = visible
            self.type = type
            self.symmetric = symmetric
            self.array = array
            self.arrayMinus = arrayMinus
            self.value = value
            self.valueMinus = valueMinus
            self.traceReference = traceReference
            self.traceReferenceMinus = traceReferenceMinus
            self.yCopyStyle = yCopyStyle
            self.color = color
            self.thickness = thickness
            self.width = width
            self.arraySource = arraySource
            self.arrayMinusSource = arrayMinusSource
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-error_x) |
    /// [Python](https://plot.ly/python/reference/#scatter-error_x) |
    /// [R](https://plot.ly/r/reference/#scatter-error_x)
    public var xError: XError?

    ///
    /// # Used By
    /// `Scatter.yError` |
    public struct YError: Encodable {
        /// Determines whether or not this set of error bars is visible.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-error_y-visible) |
        /// [Python](https://plot.ly/python/reference/#scatter-error_y-visible) |
        /// [R](https://plot.ly/r/reference/#scatter-error_y-visible)
        public var visible: Bool?
    
        /// Determines the rule used to generate the error bars. 
        ///
        /// If *constant`, the bar lengths are of a constant value. Set this constant in `value`. If
        /// *percent*, the bar lengths correspond to a percentage of underlying data. Set this percentage in
        /// `value`. If *sqrt*, the bar lengths correspond to the sqaure of the underlying data. If *data*,
        /// the bar lengths are set with data set `array`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-error_y-type) |
        /// [Python](https://plot.ly/python/reference/#scatter-error_y-type) |
        /// [R](https://plot.ly/r/reference/#scatter-error_y-type)
        public var type: Rule1?
    
        /// Determines whether or not the error bars have the same length in both direction (top/bottom for vertical bars, left/right for horizontal bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-error_y-symmetric) |
        /// [Python](https://plot.ly/python/reference/#scatter-error_y-symmetric) |
        /// [R](https://plot.ly/r/reference/#scatter-error_y-symmetric)
        public var symmetric: Bool?
    
        /// Sets the data corresponding the length of each error bar. 
        ///
        /// Values are plotted relative to the underlying data.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-error_y-array) |
        /// [Python](https://plot.ly/python/reference/#scatter-error_y-array) |
        /// [R](https://plot.ly/r/reference/#scatter-error_y-array)
        public var array: [Double]?
    
        /// Sets the data corresponding the length of each error bar in the bottom (left) direction for vertical (horizontal) bars Values are plotted relative to the underlying data.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-error_y-arrayminus) |
        /// [Python](https://plot.ly/python/reference/#scatter-error_y-arrayminus) |
        /// [R](https://plot.ly/r/reference/#scatter-error_y-arrayminus)
        public var arrayMinus: [Double]?
    
        /// Sets the value of either the percentage (if `type` is set to *percent*) or the constant (if `type` is set to *constant*) corresponding to the lengths of the error bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-error_y-value) |
        /// [Python](https://plot.ly/python/reference/#scatter-error_y-value) |
        /// [R](https://plot.ly/r/reference/#scatter-error_y-value)
        public var value: Double?
    
        /// Sets the value of either the percentage (if `type` is set to *percent*) or the constant (if `type` is set to *constant*) corresponding to the lengths of the error bars in the bottom (left) direction for vertical (horizontal) bars
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-error_y-valueminus) |
        /// [Python](https://plot.ly/python/reference/#scatter-error_y-valueminus) |
        /// [R](https://plot.ly/r/reference/#scatter-error_y-valueminus)
        public var valueMinus: Double?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-error_y-traceref) |
        /// [Python](https://plot.ly/python/reference/#scatter-error_y-traceref) |
        /// [R](https://plot.ly/r/reference/#scatter-error_y-traceref)
        public var traceReference: Int?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-error_y-tracerefminus) |
        /// [Python](https://plot.ly/python/reference/#scatter-error_y-tracerefminus) |
        /// [R](https://plot.ly/r/reference/#scatter-error_y-tracerefminus)
        public var traceReferenceMinus: Int?
    
        /// Sets the stoke color of the error bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-error_y-color) |
        /// [Python](https://plot.ly/python/reference/#scatter-error_y-color) |
        /// [R](https://plot.ly/r/reference/#scatter-error_y-color)
        public var color: Color?
    
        /// Sets the thickness (in px) of the error bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-error_y-thickness) |
        /// [Python](https://plot.ly/python/reference/#scatter-error_y-thickness) |
        /// [R](https://plot.ly/r/reference/#scatter-error_y-thickness)
        public var thickness: Double?
    
        /// Sets the width (in px) of the cross-bar at both ends of the error bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-error_y-width) |
        /// [Python](https://plot.ly/python/reference/#scatter-error_y-width) |
        /// [R](https://plot.ly/r/reference/#scatter-error_y-width)
        public var width: Double?
    
        /// Sets the source reference on plot.ly for  array .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-error_y-arraysrc) |
        /// [Python](https://plot.ly/python/reference/#scatter-error_y-arraysrc) |
        /// [R](https://plot.ly/r/reference/#scatter-error_y-arraysrc)
        public var arraySource: String?
    
        /// Sets the source reference on plot.ly for  arrayminus .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-error_y-arrayminussrc) |
        /// [Python](https://plot.ly/python/reference/#scatter-error_y-arrayminussrc) |
        /// [R](https://plot.ly/r/reference/#scatter-error_y-arrayminussrc)
        public var arrayMinusSource: String?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case visible
            case type
            case symmetric
            case array
            case arrayMinus = "arrayminus"
            case value
            case valueMinus = "valueminus"
            case traceReference = "traceref"
            case traceReferenceMinus = "tracerefminus"
            case color
            case thickness
            case width
            case arraySource = "arraysrc"
            case arrayMinusSource = "arrayminussrc"
        }
        
        public init(visible: Bool? = nil, type: Rule1? = nil, symmetric: Bool? = nil, array: [Double]? = nil, arrayMinus: [Double]? = nil, value: Double? = nil, valueMinus: Double? = nil, traceReference: Int? = nil, traceReferenceMinus: Int? = nil, color: Color? = nil, thickness: Double? = nil, width: Double? = nil, arraySource: String? = nil, arrayMinusSource: String? = nil) {
            self.visible = visible
            self.type = type
            self.symmetric = symmetric
            self.array = array
            self.arrayMinus = arrayMinus
            self.value = value
            self.valueMinus = valueMinus
            self.traceReference = traceReference
            self.traceReferenceMinus = traceReferenceMinus
            self.color = color
            self.thickness = thickness
            self.width = width
            self.arraySource = arraySource
            self.arrayMinusSource = arrayMinusSource
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-error_y) |
    /// [Python](https://plot.ly/python/reference/#scatter-error_y) |
    /// [R](https://plot.ly/r/reference/#scatter-error_y)
    public var yError: YError?

    /// Sets the calendar system to use with `x` date data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-xcalendar) |
    /// [Python](https://plot.ly/python/reference/#scatter-xcalendar) |
    /// [R](https://plot.ly/r/reference/#scatter-xcalendar)
    public var xCalendar: Calendar0?

    /// Sets the calendar system to use with `y` date data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-ycalendar) |
    /// [Python](https://plot.ly/python/reference/#scatter-ycalendar) |
    /// [R](https://plot.ly/r/reference/#scatter-ycalendar)
    public var yCalendar: Calendar0?

    /// Sets a reference between this trace's x coordinates and a 2D cartesian x axis. 
    ///
    /// If *x* (the default value), the x coordinates refer to `layout.xaxis`. If *x2*, the x
    /// coordinates refer to `layout.xaxis2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-xaxis) |
    /// [Python](https://plot.ly/python/reference/#scatter-xaxis) |
    /// [R](https://plot.ly/r/reference/#scatter-xaxis)
    public var xAxis: SubPlotID?

    /// Sets a reference between this trace's y coordinates and a 2D cartesian y axis. 
    ///
    /// If *y* (the default value), the y coordinates refer to `layout.yaxis`. If *y2*, the y
    /// coordinates refer to `layout.yaxis2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-yaxis) |
    /// [Python](https://plot.ly/python/reference/#scatter-yaxis) |
    /// [R](https://plot.ly/r/reference/#scatter-yaxis)
    public var yAxis: SubPlotID?

    /// Sets the source reference on plot.ly for  ids .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-idssrc) |
    /// [Python](https://plot.ly/python/reference/#scatter-idssrc) |
    /// [R](https://plot.ly/r/reference/#scatter-idssrc)
    public var idsSource: String?

    /// Sets the source reference on plot.ly for  customdata .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-customdatasrc) |
    /// [Python](https://plot.ly/python/reference/#scatter-customdatasrc) |
    /// [R](https://plot.ly/r/reference/#scatter-customdatasrc)
    public var customDataSource: String?

    /// Sets the source reference on plot.ly for  meta .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-metasrc) |
    /// [Python](https://plot.ly/python/reference/#scatter-metasrc) |
    /// [R](https://plot.ly/r/reference/#scatter-metasrc)
    public var metaSource: String?

    /// Sets the source reference on plot.ly for  hoverinfo .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-hoverinfosrc) |
    /// [Python](https://plot.ly/python/reference/#scatter-hoverinfosrc) |
    /// [R](https://plot.ly/r/reference/#scatter-hoverinfosrc)
    public var hoverInfoSource: String?

    /// Sets the source reference on plot.ly for  x .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-xsrc) |
    /// [Python](https://plot.ly/python/reference/#scatter-xsrc) |
    /// [R](https://plot.ly/r/reference/#scatter-xsrc)
    public var xSource: String?

    /// Sets the source reference on plot.ly for  y .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-ysrc) |
    /// [Python](https://plot.ly/python/reference/#scatter-ysrc) |
    /// [R](https://plot.ly/r/reference/#scatter-ysrc)
    public var ySource: String?

    /// Sets the source reference on plot.ly for  text .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-textsrc) |
    /// [Python](https://plot.ly/python/reference/#scatter-textsrc) |
    /// [R](https://plot.ly/r/reference/#scatter-textsrc)
    public var textSource: String?

    /// Sets the source reference on plot.ly for  texttemplate .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-texttemplatesrc) |
    /// [Python](https://plot.ly/python/reference/#scatter-texttemplatesrc) |
    /// [R](https://plot.ly/r/reference/#scatter-texttemplatesrc)
    public var textTemplateSource: String?

    /// Sets the source reference on plot.ly for  hovertext .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-hovertextsrc) |
    /// [Python](https://plot.ly/python/reference/#scatter-hovertextsrc) |
    /// [R](https://plot.ly/r/reference/#scatter-hovertextsrc)
    public var hoverTextSource: String?

    /// Sets the source reference on plot.ly for  hovertemplate .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-hovertemplatesrc) |
    /// [Python](https://plot.ly/python/reference/#scatter-hovertemplatesrc) |
    /// [R](https://plot.ly/r/reference/#scatter-hovertemplatesrc)
    public var hoverTemplateSource: String?

    /// Sets the source reference on plot.ly for  textposition .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-textpositionsrc) |
    /// [Python](https://plot.ly/python/reference/#scatter-textpositionsrc) |
    /// [R](https://plot.ly/r/reference/#scatter-textpositionsrc)
    public var textPositionSource: String?

    /// Sets the source reference on plot.ly for  r .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-rsrc) |
    /// [Python](https://plot.ly/python/reference/#scatter-rsrc) |
    /// [R](https://plot.ly/r/reference/#scatter-rsrc)
    public var rSource: String?

    /// Sets the source reference on plot.ly for  t .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-tsrc) |
    /// [Python](https://plot.ly/python/reference/#scatter-tsrc) |
    /// [R](https://plot.ly/r/reference/#scatter-tsrc)
    public var tSource: String?

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
        case selectedPoints = "selectedpoints"
        case hoverInfo = "hoverinfo"
        case hoverLabel = "hoverlabel"
        case stream
        case transforms
        case uiRevision = "uirevision"
        case x
        case x0
        case dx
        case y
        case y0
        case dy
        case stackGroup = "stackgroup"
        case orientation
        case groupNormalization = "groupnorm"
        case stackGaps = "stackgaps"
        case text
        case textTemplate = "texttemplate"
        case hoverText = "hovertext"
        case mode
        case hoverOn = "hoveron"
        case hoverTemplate = "hovertemplate"
        case line
        case connectGaps = "connectgaps"
        case clipOnAxis = "cliponaxis"
        case fill
        case fillColor = "fillcolor"
        case marker
        case selected
        case unselected
        case textPosition = "textposition"
        case textFont = "textfont"
        case r
        case t
        case xError = "error_x"
        case yError = "error_y"
        case xCalendar = "xcalendar"
        case yCalendar = "ycalendar"
        case xAxis = "xaxis"
        case yAxis = "yaxis"
        case idsSource = "idssrc"
        case customDataSource = "customdatasrc"
        case metaSource = "metasrc"
        case hoverInfoSource = "hoverinfosrc"
        case xSource = "xsrc"
        case ySource = "ysrc"
        case textSource = "textsrc"
        case textTemplateSource = "texttemplatesrc"
        case hoverTextSource = "hovertextsrc"
        case hoverTemplateSource = "hovertemplatesrc"
        case textPositionSource = "textpositionsrc"
        case rSource = "rsrc"
        case tSource = "tsrc"
    }
    
    public init(visible: Visible0? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, selectedPoints: Anything? = nil, hoverInfo: HoverInfo0? = nil, hoverLabel: HoverLabel0? = nil, stream: Stream0? = nil, transforms: Transforms0? = nil, uiRevision: Anything? = nil, x: [Double]? = nil, x0: Anything? = nil, dx: Double? = nil, y: [Double]? = nil, y0: Anything? = nil, dy: Double? = nil, stackGroup: String? = nil, orientation: Orientation0? = nil, groupNormalization: GroupNormalization? = nil, stackGaps: StackGaps? = nil, text: String? = nil, textTemplate: String? = nil, hoverText: String? = nil, mode: Mode0? = nil, hoverOn: HoverOn? = nil, hoverTemplate: String? = nil, line: Line? = nil, connectGaps: Bool? = nil, clipOnAxis: Bool? = nil, fill: Fill? = nil, fillColor: Color? = nil, marker: Marker? = nil, selected: Selected0? = nil, unselected: Selected0? = nil, textPosition: TextPosition0? = nil, textFont: Font0? = nil, r: [Double]? = nil, t: [Double]? = nil, xError: XError? = nil, yError: YError? = nil, xCalendar: Calendar0? = nil, yCalendar: Calendar0? = nil, xAxis: SubPlotID? = nil, yAxis: SubPlotID? = nil, idsSource: String? = nil, customDataSource: String? = nil, metaSource: String? = nil, hoverInfoSource: String? = nil, xSource: String? = nil, ySource: String? = nil, textSource: String? = nil, textTemplateSource: String? = nil, hoverTextSource: String? = nil, hoverTemplateSource: String? = nil, textPositionSource: String? = nil, rSource: String? = nil, tSource: String? = nil) {
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