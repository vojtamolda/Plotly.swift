/// The scatterpolargl trace type encompasses line charts, scatter charts, and bubble charts in polar coordinates using the WebGL plotting engine. 
///
/// The data visualized as scatter point or lines is set in `r` (radial) and `theta` (angular)
/// coordinates Bubble charts are achieved by setting `marker.size` and/or `marker.color` to
/// numerical arrays.
public struct ScatterPolarGL<RData, ThetaData>: Trace where RData: Plotable, ThetaData: Plotable {
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#type) |
    /// [Python](https://plot.ly/python/reference/#type) |
    /// [R](https://plot.ly/r/reference/#type)
    public let type: String = "scatterpolargl"

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
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-visible) |
    /// [Python](https://plot.ly/python/reference/#scatterpolargl-visible) |
    /// [R](https://plot.ly/r/reference/#scatterpolargl-visible)
    public var visible: Shared.Visible?

    /// Determines whether or not an item corresponding to this trace is shown in the legend.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-showlegend) |
    /// [Python](https://plot.ly/python/reference/#scatterpolargl-showlegend) |
    /// [R](https://plot.ly/r/reference/#scatterpolargl-showlegend)
    public var showLegend: Bool?

    /// Sets the legend group for this trace. 
    ///
    /// Traces part of the same legend group hide/show at the same time when toggling legend items.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-legendgroup) |
    /// [Python](https://plot.ly/python/reference/#scatterpolargl-legendgroup) |
    /// [R](https://plot.ly/r/reference/#scatterpolargl-legendgroup)
    public var legendGroup: String?

    /// Sets the opacity of the trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-opacity) |
    /// [Python](https://plot.ly/python/reference/#scatterpolargl-opacity) |
    /// [R](https://plot.ly/r/reference/#scatterpolargl-opacity)
    public var opacity: Double?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-name) |
    /// [Python](https://plot.ly/python/reference/#scatterpolargl-name) |
    /// [R](https://plot.ly/r/reference/#scatterpolargl-name)
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-uid) |
    /// [Python](https://plot.ly/python/reference/#scatterpolargl-uid) |
    /// [R](https://plot.ly/r/reference/#scatterpolargl-uid)
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-ids) |
    /// [Python](https://plot.ly/python/reference/#scatterpolargl-ids) |
    /// [R](https://plot.ly/r/reference/#scatterpolargl-ids)
    public var ids: [String]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-customdata) |
    /// [Python](https://plot.ly/python/reference/#scatterpolargl-customdata) |
    /// [R](https://plot.ly/r/reference/#scatterpolargl-customdata)
    public var customData: [String]?

    /// Assigns extra meta information associated with this trace that can be used in various text attributes. 
    ///
    /// Attributes such as trace `name`, graph, axis and colorbar `title.text`, annotation `text`
    /// `rangeselector`, `updatemenues` and `sliders` `label` text all support `meta`. To access the
    /// trace `meta` values in an attribute in the same trace, simply use `%{meta[i]}` where `i` is the
    /// index or key of the `meta` item in question. To access trace `meta` in layout attributes, use
    /// `%{data[n[.meta[i]}` where `i` is the index or key of the `meta` and `n` is the trace index.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-meta) |
    /// [Python](https://plot.ly/python/reference/#scatterpolargl-meta) |
    /// [R](https://plot.ly/r/reference/#scatterpolargl-meta)
    public var meta: ArrayOrAnything?

    /// Array containing integer indices of selected points. 
    ///
    /// Has an effect only for traces that support selections. Note that an empty array means an empty
    /// selection where the `unselected` are turned on for all points, whereas, any other non-array
    /// values means no selection all where the `selected` and `unselected` styles have no effect.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-selectedpoints) |
    /// [Python](https://plot.ly/python/reference/#scatterpolargl-selectedpoints) |
    /// [R](https://plot.ly/r/reference/#scatterpolargl-selectedpoints)
    public var selectedPoints: Anything?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#scatterpolargl-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#scatterpolargl-hoverlabel)
    public var hoverLabel: Shared.HoverLabel?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-stream) |
    /// [Python](https://plot.ly/python/reference/#scatterpolargl-stream) |
    /// [R](https://plot.ly/r/reference/#scatterpolargl-stream)
    public var stream: Shared.Stream?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-transforms) |
    /// [Python](https://plot.ly/python/reference/#scatterpolargl-transforms) |
    /// [R](https://plot.ly/r/reference/#scatterpolargl-transforms)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-uirevision) |
    /// [Python](https://plot.ly/python/reference/#scatterpolargl-uirevision) |
    /// [R](https://plot.ly/r/reference/#scatterpolargl-uirevision)
    public var uiRevision: Anything?

    /// Determines the drawing mode for this scatter trace. 
    ///
    /// If the provided `mode` includes *text* then the `text` elements appear at the coordinates.
    /// Otherwise, the `text` elements appear on hover. If there are less than 20 points and the trace
    /// is not stacked then the default is *lines+markers*. Otherwise, *lines*.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-mode) |
    /// [Python](https://plot.ly/python/reference/#scatterpolargl-mode) |
    /// [R](https://plot.ly/r/reference/#scatterpolargl-mode)
    public var mode: Shared.Mode?

    /// Sets the radial coordinates
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-r) |
    /// [Python](https://plot.ly/python/reference/#scatterpolargl-r) |
    /// [R](https://plot.ly/r/reference/#scatterpolargl-r)
    public var r: RData?

    /// Sets the angular coordinates
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-theta) |
    /// [Python](https://plot.ly/python/reference/#scatterpolargl-theta) |
    /// [R](https://plot.ly/r/reference/#scatterpolargl-theta)
    public var theta: ThetaData?

    /// Alternate to `r`. 
    ///
    /// Builds a linear space of r coordinates. Use with `dr` where `r0` is the starting coordinate and
    /// `dr` the step.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-r0) |
    /// [Python](https://plot.ly/python/reference/#scatterpolargl-r0) |
    /// [R](https://plot.ly/r/reference/#scatterpolargl-r0)
    public var r0: Anything?

    /// Sets the r coordinate step.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-dr) |
    /// [Python](https://plot.ly/python/reference/#scatterpolargl-dr) |
    /// [R](https://plot.ly/r/reference/#scatterpolargl-dr)
    public var dr: Double?

    /// Alternate to `theta`. 
    ///
    /// Builds a linear space of theta coordinates. Use with `dtheta` where `theta0` is the starting
    /// coordinate and `dtheta` the step.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-theta0) |
    /// [Python](https://plot.ly/python/reference/#scatterpolargl-theta0) |
    /// [R](https://plot.ly/r/reference/#scatterpolargl-theta0)
    public var theta0: Anything?

    /// Sets the theta coordinate step. 
    ///
    /// By default, the `dtheta` step equals the subplot's period divided by the length of the `r`
    /// coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-dtheta) |
    /// [Python](https://plot.ly/python/reference/#scatterpolargl-dtheta) |
    /// [R](https://plot.ly/r/reference/#scatterpolargl-dtheta)
    public var dTheta: Double?

    /// Sets the unit of input *theta* values. 
    ///
    /// Has an effect only when on *linear* angular axes.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-thetaunit) |
    /// [Python](https://plot.ly/python/reference/#scatterpolargl-thetaunit) |
    /// [R](https://plot.ly/r/reference/#scatterpolargl-thetaunit)
    public var thetaUnit: Shared.ThetaUnit?

    /// Sets text elements associated with each (x,y) pair. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to the this trace's (x,y) coordinates. If trace `hoverinfo` contains a
    /// *text* flag and *hovertext* is not set, these elements will be seen in the hover labels.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-text) |
    /// [Python](https://plot.ly/python/reference/#scatterpolargl-text) |
    /// [R](https://plot.ly/r/reference/#scatterpolargl-text)
    public var text: ArrayOrString?

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
    /// `arrayOk: true`) are available. variables `r`, `theta` and `text`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-texttemplate) |
    /// [Python](https://plot.ly/python/reference/#scatterpolargl-texttemplate) |
    /// [R](https://plot.ly/r/reference/#scatterpolargl-texttemplate)
    public var textTemplate: ArrayOrString?

    /// Sets hover text elements associated with each (x,y) pair. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to the this trace's (x,y) coordinates. To be seen, trace `hoverinfo`
    /// must contain a *text* flag.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-hovertext) |
    /// [Python](https://plot.ly/python/reference/#scatterpolargl-hovertext) |
    /// [R](https://plot.ly/r/reference/#scatterpolargl-hovertext)
    public var hoverText: ArrayOrString?

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
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-hovertemplate) |
    /// [Python](https://plot.ly/python/reference/#scatterpolargl-hovertemplate) |
    /// [R](https://plot.ly/r/reference/#scatterpolargl-hovertemplate)
    public var hoverTemplate: ArrayOrString?

    /// # Used By
    /// `ScatterPolarGL.line` |
    public struct SplineDashedLine: Encodable {
        /// Sets the line color.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-line-color) |
        /// [Python](https://plot.ly/python/reference/#scatterpolargl-line-color) |
        /// [R](https://plot.ly/r/reference/#scatterpolargl-line-color)
        public var color: Color?
    
        /// Sets the line width (in px).
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-line-width) |
        /// [Python](https://plot.ly/python/reference/#scatterpolargl-line-width) |
        /// [R](https://plot.ly/r/reference/#scatterpolargl-line-width)
        public var width: Double?
    
        /// Determines the line shape. 
        ///
        /// The values correspond to step-wise line shapes.
        ///
        /// # Used By
        /// `ScatterPolarGL.SplineDashedLine.shape` |
        public enum Shape: String, Encodable {
            case linear
            case hv
            case vh
            case hvh
            case vhv
        }
        /// Determines the line shape. 
        ///
        /// The values correspond to step-wise line shapes.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-line-shape) |
        /// [Python](https://plot.ly/python/reference/#scatterpolargl-line-shape) |
        /// [R](https://plot.ly/r/reference/#scatterpolargl-line-shape)
        public var shape: Shape?
    
        /// Sets the style of the lines.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-line-dash) |
        /// [Python](https://plot.ly/python/reference/#scatterpolargl-line-dash) |
        /// [R](https://plot.ly/r/reference/#scatterpolargl-line-dash)
        public var dash: Shared.Dash?
    
        public init(color: Color? = nil, width: Double? = nil, shape: Shape? = nil, dash: Shared.Dash? = nil) {
            self.color = color
            self.width = width
            self.shape = shape
            self.dash = dash
        }
        
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-line) |
    /// [Python](https://plot.ly/python/reference/#scatterpolargl-line) |
    /// [R](https://plot.ly/r/reference/#scatterpolargl-line)
    public var line: SplineDashedLine?

    /// Determines whether or not gaps (i.e. 
    ///
    /// {nan} or missing values) in the provided data arrays are connected.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-connectgaps) |
    /// [Python](https://plot.ly/python/reference/#scatterpolargl-connectgaps) |
    /// [R](https://plot.ly/r/reference/#scatterpolargl-connectgaps)
    public var connectGaps: Bool?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-marker) |
    /// [Python](https://plot.ly/python/reference/#scatterpolargl-marker) |
    /// [R](https://plot.ly/r/reference/#scatterpolargl-marker)
    public var marker: Shared.SymbolicMarker?

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
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-fill) |
    /// [Python](https://plot.ly/python/reference/#scatterpolargl-fill) |
    /// [R](https://plot.ly/r/reference/#scatterpolargl-fill)
    public var fill: Shared.Fill?

    /// Sets the fill color. 
    ///
    /// Defaults to a half-transparent variant of the line color, marker color, or marker line color,
    /// whichever is available.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-fillcolor) |
    /// [Python](https://plot.ly/python/reference/#scatterpolargl-fillcolor) |
    /// [R](https://plot.ly/r/reference/#scatterpolargl-fillcolor)
    public var fillColor: Color?

    /// Sets the positions of the `text` elements with respects to the (x,y) coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-textposition) |
    /// [Python](https://plot.ly/python/reference/#scatterpolargl-textposition) |
    /// [R](https://plot.ly/r/reference/#scatterpolargl-textposition)
    public var textPosition: Shared.TextPosition?

    /// Sets the text font.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-textfont) |
    /// [Python](https://plot.ly/python/reference/#scatterpolargl-textfont) |
    /// [R](https://plot.ly/r/reference/#scatterpolargl-textfont)
    public var textFont: Shared.Font?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-hoverinfo) |
    /// [Python](https://plot.ly/python/reference/#scatterpolargl-hoverinfo) |
    /// [R](https://plot.ly/r/reference/#scatterpolargl-hoverinfo)
    public var hoverInfo: Shared.PolarHoverInfo?

    /// # Used By
    /// `ScatterPolarGL.selected` |
    public struct Selected: Encodable {
        /// # Used By
        /// `ScatterPolarGL.Selected.marker` |
        public struct Marker: Encodable {
            /// Sets the marker opacity of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-selected-marker-opacity) |
            /// [Python](https://plot.ly/python/reference/#scatterpolargl-selected-marker-opacity) |
            /// [R](https://plot.ly/r/reference/#scatterpolargl-selected-marker-opacity)
            public var opacity: Double?
        
            /// Sets the marker color of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-selected-marker-color) |
            /// [Python](https://plot.ly/python/reference/#scatterpolargl-selected-marker-color) |
            /// [R](https://plot.ly/r/reference/#scatterpolargl-selected-marker-color)
            public var color: Color?
        
            /// Sets the marker size of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-selected-marker-size) |
            /// [Python](https://plot.ly/python/reference/#scatterpolargl-selected-marker-size) |
            /// [R](https://plot.ly/r/reference/#scatterpolargl-selected-marker-size)
            public var size: Double?
        
            public init(opacity: Double? = nil, color: Color? = nil, size: Double? = nil) {
                self.opacity = opacity
                self.color = color
                self.size = size
            }
            
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-selected-marker) |
        /// [Python](https://plot.ly/python/reference/#scatterpolargl-selected-marker) |
        /// [R](https://plot.ly/r/reference/#scatterpolargl-selected-marker)
        public var marker: Marker?
    
        /// # Used By
        /// `ScatterPolarGL.Selected.textFont` |
        public struct TextFont: Encodable {
            /// Sets the text font color of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-selected-textfont-color) |
            /// [Python](https://plot.ly/python/reference/#scatterpolargl-selected-textfont-color) |
            /// [R](https://plot.ly/r/reference/#scatterpolargl-selected-textfont-color)
            public var color: Color?
        
            public init(color: Color? = nil) {
                self.color = color
            }
            
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-selected-textfont) |
        /// [Python](https://plot.ly/python/reference/#scatterpolargl-selected-textfont) |
        /// [R](https://plot.ly/r/reference/#scatterpolargl-selected-textfont)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-selected) |
    /// [Python](https://plot.ly/python/reference/#scatterpolargl-selected) |
    /// [R](https://plot.ly/r/reference/#scatterpolargl-selected)
    public var selected: Selected?

    /// # Used By
    /// `ScatterPolarGL.unselected` |
    public struct Unselected: Encodable {
        /// # Used By
        /// `ScatterPolarGL.Unselected.marker` |
        public struct Marker: Encodable {
            /// Sets the marker opacity of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-unselected-marker-opacity) |
            /// [Python](https://plot.ly/python/reference/#scatterpolargl-unselected-marker-opacity) |
            /// [R](https://plot.ly/r/reference/#scatterpolargl-unselected-marker-opacity)
            public var opacity: Double?
        
            /// Sets the marker color of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-unselected-marker-color) |
            /// [Python](https://plot.ly/python/reference/#scatterpolargl-unselected-marker-color) |
            /// [R](https://plot.ly/r/reference/#scatterpolargl-unselected-marker-color)
            public var color: Color?
        
            /// Sets the marker size of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-unselected-marker-size) |
            /// [Python](https://plot.ly/python/reference/#scatterpolargl-unselected-marker-size) |
            /// [R](https://plot.ly/r/reference/#scatterpolargl-unselected-marker-size)
            public var size: Double?
        
            public init(opacity: Double? = nil, color: Color? = nil, size: Double? = nil) {
                self.opacity = opacity
                self.color = color
                self.size = size
            }
            
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-unselected-marker) |
        /// [Python](https://plot.ly/python/reference/#scatterpolargl-unselected-marker) |
        /// [R](https://plot.ly/r/reference/#scatterpolargl-unselected-marker)
        public var marker: Marker?
    
        /// # Used By
        /// `ScatterPolarGL.Unselected.textFont` |
        public struct TextFont: Encodable {
            /// Sets the text font color of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-unselected-textfont-color) |
            /// [Python](https://plot.ly/python/reference/#scatterpolargl-unselected-textfont-color) |
            /// [R](https://plot.ly/r/reference/#scatterpolargl-unselected-textfont-color)
            public var color: Color?
        
            public init(color: Color? = nil) {
                self.color = color
            }
            
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-unselected-textfont) |
        /// [Python](https://plot.ly/python/reference/#scatterpolargl-unselected-textfont) |
        /// [R](https://plot.ly/r/reference/#scatterpolargl-unselected-textfont)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-unselected) |
    /// [Python](https://plot.ly/python/reference/#scatterpolargl-unselected) |
    /// [R](https://plot.ly/r/reference/#scatterpolargl-unselected)
    public var unselected: Unselected?

    /// Sets a reference between this trace's data coordinates and a polar subplot. 
    ///
    /// If *polar* (the default value), the data refer to `layout.polar`. If *polar2*, the data refer to
    /// `layout.polar2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolargl-subplot) |
    /// [Python](https://plot.ly/python/reference/#scatterpolargl-subplot) |
    /// [R](https://plot.ly/r/reference/#scatterpolargl-subplot)
    public var subPlot: SubPlotID?

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
        case hoverLabel = "hoverlabel"
        case stream
        case transforms
        case uiRevision = "uirevision"
        case mode
        case r
        case theta
        case r0
        case dr
        case theta0
        case dTheta = "dtheta"
        case thetaUnit = "thetaunit"
        case text
        case textTemplate = "texttemplate"
        case hoverText = "hovertext"
        case hoverTemplate = "hovertemplate"
        case line
        case connectGaps = "connectgaps"
        case marker
        case fill
        case fillColor = "fillcolor"
        case textPosition = "textposition"
        case textFont = "textfont"
        case hoverInfo = "hoverinfo"
        case selected
        case unselected
        case subPlot = "subplot"
    }
    
    public init(visible: Shared.Visible? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [String]? = nil, customData: [String]? = nil, meta: ArrayOrAnything? = nil, selectedPoints: Anything? = nil, hoverLabel: Shared.HoverLabel? = nil, stream: Shared.Stream? = nil, transforms: [Shared.Transform]? = nil, uiRevision: Anything? = nil, mode: Shared.Mode? = nil, r: RData? = nil, theta: ThetaData? = nil, r0: Anything? = nil, dr: Double? = nil, theta0: Anything? = nil, dTheta: Double? = nil, thetaUnit: Shared.ThetaUnit? = nil, text: ArrayOrString? = nil, textTemplate: ArrayOrString? = nil, hoverText: ArrayOrString? = nil, hoverTemplate: ArrayOrString? = nil, line: SplineDashedLine? = nil, connectGaps: Bool? = nil, marker: Shared.SymbolicMarker? = nil, fill: Shared.Fill? = nil, fillColor: Color? = nil, textPosition: Shared.TextPosition? = nil, textFont: Shared.Font? = nil, hoverInfo: Shared.PolarHoverInfo? = nil, selected: Selected? = nil, unselected: Unselected? = nil, subPlot: SubPlotID? = nil) {
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
        self.hoverLabel = hoverLabel
        self.stream = stream
        self.transforms = transforms
        self.uiRevision = uiRevision
        self.mode = mode
        self.r = r
        self.theta = theta
        self.r0 = r0
        self.dr = dr
        self.theta0 = theta0
        self.dTheta = dTheta
        self.thetaUnit = thetaUnit
        self.text = text
        self.textTemplate = textTemplate
        self.hoverText = hoverText
        self.hoverTemplate = hoverTemplate
        self.line = line
        self.connectGaps = connectGaps
        self.marker = marker
        self.fill = fill
        self.fillColor = fillColor
        self.textPosition = textPosition
        self.textFont = textFont
        self.hoverInfo = hoverInfo
        self.selected = selected
        self.unselected = unselected
        self.subPlot = subPlot
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(animatable, forKey: .animatable)
        try container.encodeIfPresent(visible, forKey: .visible)
        try container.encodeIfPresent(showLegend, forKey: .showLegend)
        try container.encodeIfPresent(legendGroup, forKey: .legendGroup)
        try container.encodeIfPresent(opacity, forKey: .opacity)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(uid, forKey: .uid)
        try container.encodeIfPresent(ids, forKey: .ids)
        try container.encodeIfPresent(customData, forKey: .customData)
        try container.encodeIfPresent(meta, forKey: .meta)
        try container.encodeIfPresent(selectedPoints, forKey: .selectedPoints)
        try container.encodeIfPresent(hoverLabel, forKey: .hoverLabel)
        try container.encodeIfPresent(stream, forKey: .stream)
        try container.encodeIfPresent(transforms, forKey: .transforms)
        try container.encodeIfPresent(uiRevision, forKey: .uiRevision)
        try container.encodeIfPresent(mode, forKey: .mode)
        try container.encodeIfPresent(r0, forKey: .r0)
        try container.encodeIfPresent(dr, forKey: .dr)
        try container.encodeIfPresent(theta0, forKey: .theta0)
        try container.encodeIfPresent(dTheta, forKey: .dTheta)
        try container.encodeIfPresent(thetaUnit, forKey: .thetaUnit)
        try container.encodeIfPresent(text, forKey: .text)
        try container.encodeIfPresent(textTemplate, forKey: .textTemplate)
        try container.encodeIfPresent(hoverText, forKey: .hoverText)
        try container.encodeIfPresent(hoverTemplate, forKey: .hoverTemplate)
        try container.encodeIfPresent(line, forKey: .line)
        try container.encodeIfPresent(connectGaps, forKey: .connectGaps)
        try container.encodeIfPresent(marker, forKey: .marker)
        try container.encodeIfPresent(fill, forKey: .fill)
        try container.encodeIfPresent(fillColor, forKey: .fillColor)
        try container.encodeIfPresent(textPosition, forKey: .textPosition)
        try container.encodeIfPresent(textFont, forKey: .textFont)
        try container.encodeIfPresent(hoverInfo, forKey: .hoverInfo)
        try container.encodeIfPresent(selected, forKey: .selected)
        try container.encodeIfPresent(unselected, forKey: .unselected)
        try container.encodeIfPresent(subPlot, forKey: .subPlot)
    
        if let r = self.r {
            let rEncoder = container.superEncoder(forKey: .r)
            try r.encode(toPlotly: rEncoder)
        }
    
        if let theta = self.theta {
            let thetaEncoder = container.superEncoder(forKey: .theta)
            try theta.encode(toPlotly: thetaEncoder)
        }
    }
    
}