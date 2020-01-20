/// The scatterpolar trace type encompasses line charts, scatter charts, text charts, and bubble charts in polar coordinates. 
///
/// The data visualized as scatter point or lines is set in `r` (radial) and `theta` (angular)
/// coordinates Text (appearing either on the chart or on hover only) is via `text`. Bubble charts
/// are achieved by setting `marker.size` and/or `marker.color` to numerical arrays.
public struct ScatterPolar: Trace {
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#type) |
    /// [Python](https://plot.ly/python/reference/#type) |
    /// [R](https://plot.ly/r/reference/#type)
    public let type: String = "scatterpolar"

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
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-visible) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-visible) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-visible)
    public var visible: Shared.Visible?

    /// Determines whether or not an item corresponding to this trace is shown in the legend.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-showlegend) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-showlegend) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-showlegend)
    public var showLegend: Bool?

    /// Sets the legend group for this trace. 
    ///
    /// Traces part of the same legend group hide/show at the same time when toggling legend items.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-legendgroup) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-legendgroup) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-legendgroup)
    public var legendGroup: String?

    /// Sets the opacity of the trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-opacity) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-opacity) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-opacity)
    public var opacity: Double?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-name) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-name) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-name)
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-uid) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-uid) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-uid)
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-ids) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-ids) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-ids)
    public var ids: [Double]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-customdata) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-customdata) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-customdata)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-meta) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-meta) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-meta)
    public var meta: Anything?

    /// Array containing integer indices of selected points. 
    ///
    /// Has an effect only for traces that support selections. Note that an empty array means an empty
    /// selection where the `unselected` are turned on for all points, whereas, any other non-array
    /// values means no selection all where the `selected` and `unselected` styles have no effect.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-selectedpoints) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-selectedpoints) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-selectedpoints)
    public var selectedPoints: Anything?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-hoverlabel)
    public var hoverLabel: Shared.HoverLabel?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-stream) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-stream) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-stream)
    public var stream: Shared.Stream?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-transforms) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-transforms) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-transforms)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-uirevision) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-uirevision) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-uirevision)
    public var uiRevision: Anything?

    /// Determines the drawing mode for this scatter trace. 
    ///
    /// If the provided `mode` includes *text* then the `text` elements appear at the coordinates.
    /// Otherwise, the `text` elements appear on hover. If there are less than 20 points and the trace
    /// is not stacked then the default is *lines+markers*. Otherwise, *lines*.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-mode) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-mode) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-mode)
    public var mode: Shared.Mode?

    /// Sets the radial coordinates
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-r) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-r) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-r)
    public var r: [Double]?

    /// Sets the angular coordinates
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-theta) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-theta) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-theta)
    public var theta: [Double]?

    /// Alternate to `r`. 
    ///
    /// Builds a linear space of r coordinates. Use with `dr` where `r0` is the starting coordinate and
    /// `dr` the step.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-r0) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-r0) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-r0)
    public var r0: Anything?

    /// Sets the r coordinate step.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-dr) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-dr) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-dr)
    public var dr: Double?

    /// Alternate to `theta`. 
    ///
    /// Builds a linear space of theta coordinates. Use with `dtheta` where `theta0` is the starting
    /// coordinate and `dtheta` the step.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-theta0) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-theta0) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-theta0)
    public var theta0: Anything?

    /// Sets the theta coordinate step. 
    ///
    /// By default, the `dtheta` step equals the subplot's period divided by the length of the `r`
    /// coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-dtheta) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-dtheta) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-dtheta)
    public var dTheta: Double?

    /// Sets the unit of input *theta* values. 
    ///
    /// Has an effect only when on *linear* angular axes.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-thetaunit) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-thetaunit) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-thetaunit)
    public var thetaUnit: Shared.ThetaUnit?

    /// Sets text elements associated with each (x,y) pair. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to the this trace's (x,y) coordinates. If trace `hoverinfo` contains a
    /// *text* flag and *hovertext* is not set, these elements will be seen in the hover labels.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-text) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-text) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-text)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-texttemplate) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-texttemplate) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-texttemplate)
    public var textTemplate: ArrayOrString?

    /// Sets hover text elements associated with each (x,y) pair. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to the this trace's (x,y) coordinates. To be seen, trace `hoverinfo`
    /// must contain a *text* flag.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-hovertext) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-hovertext) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-hovertext)
    public var hoverText: ArrayOrString?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-line) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-line) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-line)
    public var line: Shared.SplineSmoothedDashedLine?

    /// Determines whether or not gaps (i.e. 
    ///
    /// {nan} or missing values) in the provided data arrays are connected.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-connectgaps) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-connectgaps) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-connectgaps)
    public var connectGaps: Bool?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-marker) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-marker) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-marker)
    public var marker: Shared.GradientMarker?

    /// Determines whether or not markers and text nodes are clipped about the subplot axes. 
    ///
    /// To show markers and text nodes above axis lines and tick labels, make sure to set `xaxis.layer`
    /// and `yaxis.layer` to *below traces*.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-cliponaxis) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-cliponaxis) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-cliponaxis)
    public var clipOnAxis: Bool?

    /// Sets the positions of the `text` elements with respects to the (x,y) coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-textposition) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-textposition) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-textposition)
    public var textPosition: Shared.TextPosition?

    /// Sets the text font.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-textfont) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-textfont) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-textfont)
    public var textFont: Shared.Font?

    /// Sets the area to fill with a solid color. 
    ///
    /// Use with `fillcolor` if not *none*. scatterpolar has a subset of the options available to
    /// scatter. *toself* connects the endpoints of the trace (or each segment of the trace if it has
    /// gaps) into a closed shape. *tonext* fills the space between two traces if one completely
    /// encloses the other (eg consecutive contour lines), and behaves like *toself* if there is no
    /// trace before it. *tonext* should not be used if one trace does not enclose the other.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-fill) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-fill) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-fill)
    public var fill: Shared.AreaFill?

    /// Sets the fill color. 
    ///
    /// Defaults to a half-transparent variant of the line color, marker color, or marker line color,
    /// whichever is available.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-fillcolor) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-fillcolor) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-fillcolor)
    public var fillColor: Color?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-hoverinfo) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-hoverinfo) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-hoverinfo)
    public var hoverInfo: Shared.PolarHoverInfo?

    /// Do the hover effects highlight individual points (markers or line points) or do they highlight filled regions? If the fill is *toself* or *tonext* and there are no markers or text, then the default is *fills*, otherwise it is *points*.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-hoveron) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-hoveron) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-hoveron)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-hovertemplate) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-hovertemplate) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-hovertemplate)
    public var hoverTemplate: ArrayOrString?

    /// # Used By
    /// `ScatterPolar.selected` |
    public struct Selected: Encodable {
        /// # Used By
        /// `ScatterPolar.Selected.marker` |
        public struct Marker: Encodable {
            /// Sets the marker opacity of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-selected-marker-opacity) |
            /// [Python](https://plot.ly/python/reference/#scatterpolar-selected-marker-opacity) |
            /// [R](https://plot.ly/r/reference/#scatterpolar-selected-marker-opacity)
            public var opacity: Double?
        
            /// Sets the marker color of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-selected-marker-color) |
            /// [Python](https://plot.ly/python/reference/#scatterpolar-selected-marker-color) |
            /// [R](https://plot.ly/r/reference/#scatterpolar-selected-marker-color)
            public var color: Color?
        
            /// Sets the marker size of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-selected-marker-size) |
            /// [Python](https://plot.ly/python/reference/#scatterpolar-selected-marker-size) |
            /// [R](https://plot.ly/r/reference/#scatterpolar-selected-marker-size)
            public var size: Double?
        
            public init(opacity: Double? = nil, color: Color? = nil, size: Double? = nil) {
                self.opacity = opacity
                self.color = color
                self.size = size
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-selected-marker) |
        /// [Python](https://plot.ly/python/reference/#scatterpolar-selected-marker) |
        /// [R](https://plot.ly/r/reference/#scatterpolar-selected-marker)
        public var marker: Marker?
    
        /// # Used By
        /// `ScatterPolar.Selected.textFont` |
        public struct TextFont: Encodable {
            /// Sets the text font color of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-selected-textfont-color) |
            /// [Python](https://plot.ly/python/reference/#scatterpolar-selected-textfont-color) |
            /// [R](https://plot.ly/r/reference/#scatterpolar-selected-textfont-color)
            public var color: Color?
        
            public init(color: Color? = nil) {
                self.color = color
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-selected-textfont) |
        /// [Python](https://plot.ly/python/reference/#scatterpolar-selected-textfont) |
        /// [R](https://plot.ly/r/reference/#scatterpolar-selected-textfont)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-selected) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-selected) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-selected)
    public var selected: Selected?

    /// # Used By
    /// `ScatterPolar.unselected` |
    public struct Unselected: Encodable {
        /// # Used By
        /// `ScatterPolar.Unselected.marker` |
        public struct Marker: Encodable {
            /// Sets the marker opacity of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-unselected-marker-opacity) |
            /// [Python](https://plot.ly/python/reference/#scatterpolar-unselected-marker-opacity) |
            /// [R](https://plot.ly/r/reference/#scatterpolar-unselected-marker-opacity)
            public var opacity: Double?
        
            /// Sets the marker color of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-unselected-marker-color) |
            /// [Python](https://plot.ly/python/reference/#scatterpolar-unselected-marker-color) |
            /// [R](https://plot.ly/r/reference/#scatterpolar-unselected-marker-color)
            public var color: Color?
        
            /// Sets the marker size of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-unselected-marker-size) |
            /// [Python](https://plot.ly/python/reference/#scatterpolar-unselected-marker-size) |
            /// [R](https://plot.ly/r/reference/#scatterpolar-unselected-marker-size)
            public var size: Double?
        
            public init(opacity: Double? = nil, color: Color? = nil, size: Double? = nil) {
                self.opacity = opacity
                self.color = color
                self.size = size
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-unselected-marker) |
        /// [Python](https://plot.ly/python/reference/#scatterpolar-unselected-marker) |
        /// [R](https://plot.ly/r/reference/#scatterpolar-unselected-marker)
        public var marker: Marker?
    
        /// # Used By
        /// `ScatterPolar.Unselected.textFont` |
        public struct TextFont: Encodable {
            /// Sets the text font color of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-unselected-textfont-color) |
            /// [Python](https://plot.ly/python/reference/#scatterpolar-unselected-textfont-color) |
            /// [R](https://plot.ly/r/reference/#scatterpolar-unselected-textfont-color)
            public var color: Color?
        
            public init(color: Color? = nil) {
                self.color = color
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-unselected-textfont) |
        /// [Python](https://plot.ly/python/reference/#scatterpolar-unselected-textfont) |
        /// [R](https://plot.ly/r/reference/#scatterpolar-unselected-textfont)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-unselected) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-unselected) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-unselected)
    public var unselected: Unselected?

    /// Sets a reference between this trace's data coordinates and a polar subplot. 
    ///
    /// If *polar* (the default value), the data refer to `layout.polar`. If *polar2*, the data refer to
    /// `layout.polar2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-subplot) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-subplot) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-subplot)
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
        case line
        case connectGaps = "connectgaps"
        case marker
        case clipOnAxis = "cliponaxis"
        case textPosition = "textposition"
        case textFont = "textfont"
        case fill
        case fillColor = "fillcolor"
        case hoverInfo = "hoverinfo"
        case hoverOn = "hoveron"
        case hoverTemplate = "hovertemplate"
        case selected
        case unselected
        case subPlot = "subplot"
    }
    
    public init(visible: Shared.Visible? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, selectedPoints: Anything? = nil, hoverLabel: Shared.HoverLabel? = nil, stream: Shared.Stream? = nil, transforms: [Shared.Transform]? = nil, uiRevision: Anything? = nil, mode: Shared.Mode? = nil, r: [Double]? = nil, theta: [Double]? = nil, r0: Anything? = nil, dr: Double? = nil, theta0: Anything? = nil, dTheta: Double? = nil, thetaUnit: Shared.ThetaUnit? = nil, text: ArrayOrString? = nil, textTemplate: ArrayOrString? = nil, hoverText: ArrayOrString? = nil, line: Shared.SplineSmoothedDashedLine? = nil, connectGaps: Bool? = nil, marker: Shared.GradientMarker? = nil, clipOnAxis: Bool? = nil, textPosition: Shared.TextPosition? = nil, textFont: Shared.Font? = nil, fill: Shared.AreaFill? = nil, fillColor: Color? = nil, hoverInfo: Shared.PolarHoverInfo? = nil, hoverOn: Shared.HoverOn? = nil, hoverTemplate: ArrayOrString? = nil, selected: Selected? = nil, unselected: Unselected? = nil, subPlot: SubPlotID? = nil) {
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
        self.line = line
        self.connectGaps = connectGaps
        self.marker = marker
        self.clipOnAxis = clipOnAxis
        self.textPosition = textPosition
        self.textFont = textFont
        self.fill = fill
        self.fillColor = fillColor
        self.hoverInfo = hoverInfo
        self.hoverOn = hoverOn
        self.hoverTemplate = hoverTemplate
        self.selected = selected
        self.unselected = unselected
        self.subPlot = subPlot
    }
}