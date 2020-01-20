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
    public var visible: Shared.Visible?

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
    public var hoverInfo: Shared.HoverInfo?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#scatter-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#scatter-hoverlabel)
    public var hoverLabel: Shared.HoverLabel?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-stream) |
    /// [Python](https://plot.ly/python/reference/#scatter-stream) |
    /// [R](https://plot.ly/r/reference/#scatter-stream)
    public var stream: Shared.Stream?

    /// An array of operations that manipulate the trace data, for example filtering or sorting the data arrays.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-transforms-items-transform) |
    /// [Python](https://plot.ly/python/reference/#scatter-transforms-items-transform) |
    /// [R](https://plot.ly/r/reference/#scatter-transforms-items-transform)
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
    public var orientation: Shared.Orientation?

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
    public var mode: Shared.Mode?

    /// Do the hover effects highlight individual points (markers or line points) or do they highlight filled regions? If the fill is *toself* or *tonext* and there are no markers or text, then the default is *fills*, otherwise it is *points*.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-hoveron) |
    /// [Python](https://plot.ly/python/reference/#scatter-hoveron) |
    /// [R](https://plot.ly/r/reference/#scatter-hoveron)
    public var hoverOn: Shared.HoverOn?

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

    /// # Used By
    /// `Scatter.line` |
    public struct SplineSmoothedDashedLine: Encodable {
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
        /// `Scatter.SplineSmoothedDashedLine.shape` |
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
    public var line: SplineSmoothedDashedLine?

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
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-fill) |
    /// [Python](https://plot.ly/python/reference/#scatter-fill) |
    /// [R](https://plot.ly/r/reference/#scatter-fill)
    public var fill: Shared.Fill?

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
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-marker) |
    /// [Python](https://plot.ly/python/reference/#scatter-marker) |
    /// [R](https://plot.ly/r/reference/#scatter-marker)
    public var marker: Shared.GradientMarker?

    /// # Used By
    /// `Scatter.selected` |
    public struct Selected: Encodable {
        /// # Used By
        /// `Scatter.Selected.marker` |
        public struct Marker: Encodable {
            /// Sets the marker opacity of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatter-selected-marker-opacity) |
            /// [Python](https://plot.ly/python/reference/#scatter-selected-marker-opacity) |
            /// [R](https://plot.ly/r/reference/#scatter-selected-marker-opacity)
            public var opacity: Double?
        
            /// Sets the marker color of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatter-selected-marker-color) |
            /// [Python](https://plot.ly/python/reference/#scatter-selected-marker-color) |
            /// [R](https://plot.ly/r/reference/#scatter-selected-marker-color)
            public var color: Color?
        
            /// Sets the marker size of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatter-selected-marker-size) |
            /// [Python](https://plot.ly/python/reference/#scatter-selected-marker-size) |
            /// [R](https://plot.ly/r/reference/#scatter-selected-marker-size)
            public var size: Double?
        
            public init(opacity: Double? = nil, color: Color? = nil, size: Double? = nil) {
                self.opacity = opacity
                self.color = color
                self.size = size
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-selected-marker) |
        /// [Python](https://plot.ly/python/reference/#scatter-selected-marker) |
        /// [R](https://plot.ly/r/reference/#scatter-selected-marker)
        public var marker: Marker?
    
        /// # Used By
        /// `Scatter.Selected.textFont` |
        public struct TextFont: Encodable {
            /// Sets the text font color of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatter-selected-textfont-color) |
            /// [Python](https://plot.ly/python/reference/#scatter-selected-textfont-color) |
            /// [R](https://plot.ly/r/reference/#scatter-selected-textfont-color)
            public var color: Color?
        
            public init(color: Color? = nil) {
                self.color = color
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-selected-textfont) |
        /// [Python](https://plot.ly/python/reference/#scatter-selected-textfont) |
        /// [R](https://plot.ly/r/reference/#scatter-selected-textfont)
        public var textFont: TextFont?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case marker
            case textFont = "textfont"
        }
        
        public init(marker: Marker? = nil, textFont: TextFont? = nil) {
            self.marker = marker
            self.textFont = textFont
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-selected) |
    /// [Python](https://plot.ly/python/reference/#scatter-selected) |
    /// [R](https://plot.ly/r/reference/#scatter-selected)
    public var selected: Selected?

    /// # Used By
    /// `Scatter.unselected` |
    public struct Unselected: Encodable {
        /// # Used By
        /// `Scatter.Unselected.marker` |
        public struct Marker: Encodable {
            /// Sets the marker opacity of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatter-unselected-marker-opacity) |
            /// [Python](https://plot.ly/python/reference/#scatter-unselected-marker-opacity) |
            /// [R](https://plot.ly/r/reference/#scatter-unselected-marker-opacity)
            public var opacity: Double?
        
            /// Sets the marker color of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatter-unselected-marker-color) |
            /// [Python](https://plot.ly/python/reference/#scatter-unselected-marker-color) |
            /// [R](https://plot.ly/r/reference/#scatter-unselected-marker-color)
            public var color: Color?
        
            /// Sets the marker size of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatter-unselected-marker-size) |
            /// [Python](https://plot.ly/python/reference/#scatter-unselected-marker-size) |
            /// [R](https://plot.ly/r/reference/#scatter-unselected-marker-size)
            public var size: Double?
        
            public init(opacity: Double? = nil, color: Color? = nil, size: Double? = nil) {
                self.opacity = opacity
                self.color = color
                self.size = size
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-unselected-marker) |
        /// [Python](https://plot.ly/python/reference/#scatter-unselected-marker) |
        /// [R](https://plot.ly/r/reference/#scatter-unselected-marker)
        public var marker: Marker?
    
        /// # Used By
        /// `Scatter.Unselected.textFont` |
        public struct TextFont: Encodable {
            /// Sets the text font color of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatter-unselected-textfont-color) |
            /// [Python](https://plot.ly/python/reference/#scatter-unselected-textfont-color) |
            /// [R](https://plot.ly/r/reference/#scatter-unselected-textfont-color)
            public var color: Color?
        
            public init(color: Color? = nil) {
                self.color = color
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-unselected-textfont) |
        /// [Python](https://plot.ly/python/reference/#scatter-unselected-textfont) |
        /// [R](https://plot.ly/r/reference/#scatter-unselected-textfont)
        public var textFont: TextFont?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case marker
            case textFont = "textfont"
        }
        
        public init(marker: Marker? = nil, textFont: TextFont? = nil) {
            self.marker = marker
            self.textFont = textFont
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-unselected) |
    /// [Python](https://plot.ly/python/reference/#scatter-unselected) |
    /// [R](https://plot.ly/r/reference/#scatter-unselected)
    public var unselected: Unselected?

    /// Sets the positions of the `text` elements with respects to the (x,y) coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-textposition) |
    /// [Python](https://plot.ly/python/reference/#scatter-textposition) |
    /// [R](https://plot.ly/r/reference/#scatter-textposition)
    public var textPosition: Shared.TextPosition?

    /// Sets the text font.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-textfont) |
    /// [Python](https://plot.ly/python/reference/#scatter-textfont) |
    /// [R](https://plot.ly/r/reference/#scatter-textfont)
    public var textFont: Shared.Font?

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
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-error_x) |
    /// [Python](https://plot.ly/python/reference/#scatter-error_x) |
    /// [R](https://plot.ly/r/reference/#scatter-error_x)
    public var xError: Shared.Error?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-error_y) |
    /// [Python](https://plot.ly/python/reference/#scatter-error_y) |
    /// [R](https://plot.ly/r/reference/#scatter-error_y)
    public var yError: Shared.Error?

    /// Sets the calendar system to use with `x` date data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-xcalendar) |
    /// [Python](https://plot.ly/python/reference/#scatter-xcalendar) |
    /// [R](https://plot.ly/r/reference/#scatter-xcalendar)
    public var xCalendar: Shared.Calendar?

    /// Sets the calendar system to use with `y` date data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter-ycalendar) |
    /// [Python](https://plot.ly/python/reference/#scatter-ycalendar) |
    /// [R](https://plot.ly/r/reference/#scatter-ycalendar)
    public var yCalendar: Shared.Calendar?

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
        case transforms = "transform"
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
    }
    
    public init(visible: Shared.Visible? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, selectedPoints: Anything? = nil, hoverInfo: Shared.HoverInfo? = nil, hoverLabel: Shared.HoverLabel? = nil, stream: Shared.Stream? = nil, transforms: [Shared.Transform]? = nil, uiRevision: Anything? = nil, x: [Double]? = nil, x0: Anything? = nil, dx: Double? = nil, y: [Double]? = nil, y0: Anything? = nil, dy: Double? = nil, stackGroup: String? = nil, orientation: Shared.Orientation? = nil, groupNormalization: GroupNormalization? = nil, stackGaps: StackGaps? = nil, text: String? = nil, textTemplate: String? = nil, hoverText: String? = nil, mode: Shared.Mode? = nil, hoverOn: Shared.HoverOn? = nil, hoverTemplate: String? = nil, line: SplineSmoothedDashedLine? = nil, connectGaps: Bool? = nil, clipOnAxis: Bool? = nil, fill: Shared.Fill? = nil, fillColor: Color? = nil, marker: Shared.GradientMarker? = nil, selected: Selected? = nil, unselected: Unselected? = nil, textPosition: Shared.TextPosition? = nil, textFont: Shared.Font? = nil, r: [Double]? = nil, t: [Double]? = nil, xError: Shared.Error? = nil, yError: Shared.Error? = nil, xCalendar: Shared.Calendar? = nil, yCalendar: Shared.Calendar? = nil, xAxis: SubPlotID? = nil, yAxis: SubPlotID? = nil) {
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
    }
}