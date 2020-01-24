/// The data visualized as scatter point or lines is set in `x` and `y` using the WebGL plotting engine. 
///
/// Bubble charts are achieved by setting `marker.size` and/or `marker.color` to a numerical arrays.
public struct ScatterGL<XData, YData>: Trace where XData: Encodable, YData: Encodable {
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#type) |
    /// [Python](https://plot.ly/python/reference/#type) |
    /// [R](https://plot.ly/r/reference/#type)
    public let type: String = "scattergl"

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
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-visible) |
    /// [Python](https://plot.ly/python/reference/#scattergl-visible) |
    /// [R](https://plot.ly/r/reference/#scattergl-visible)
    public var visible: Shared.Visible?

    /// Determines whether or not an item corresponding to this trace is shown in the legend.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-showlegend) |
    /// [Python](https://plot.ly/python/reference/#scattergl-showlegend) |
    /// [R](https://plot.ly/r/reference/#scattergl-showlegend)
    public var showLegend: Bool?

    /// Sets the legend group for this trace. 
    ///
    /// Traces part of the same legend group hide/show at the same time when toggling legend items.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-legendgroup) |
    /// [Python](https://plot.ly/python/reference/#scattergl-legendgroup) |
    /// [R](https://plot.ly/r/reference/#scattergl-legendgroup)
    public var legendGroup: String?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-name) |
    /// [Python](https://plot.ly/python/reference/#scattergl-name) |
    /// [R](https://plot.ly/r/reference/#scattergl-name)
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-uid) |
    /// [Python](https://plot.ly/python/reference/#scattergl-uid) |
    /// [R](https://plot.ly/r/reference/#scattergl-uid)
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-ids) |
    /// [Python](https://plot.ly/python/reference/#scattergl-ids) |
    /// [R](https://plot.ly/r/reference/#scattergl-ids)
    public var ids: [String]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-customdata) |
    /// [Python](https://plot.ly/python/reference/#scattergl-customdata) |
    /// [R](https://plot.ly/r/reference/#scattergl-customdata)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-meta) |
    /// [Python](https://plot.ly/python/reference/#scattergl-meta) |
    /// [R](https://plot.ly/r/reference/#scattergl-meta)
    public var meta: ArrayOrAnything?

    /// Array containing integer indices of selected points. 
    ///
    /// Has an effect only for traces that support selections. Note that an empty array means an empty
    /// selection where the `unselected` are turned on for all points, whereas, any other non-array
    /// values means no selection all where the `selected` and `unselected` styles have no effect.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-selectedpoints) |
    /// [Python](https://plot.ly/python/reference/#scattergl-selectedpoints) |
    /// [R](https://plot.ly/r/reference/#scattergl-selectedpoints)
    public var selectedPoints: Anything?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-hoverinfo) |
    /// [Python](https://plot.ly/python/reference/#scattergl-hoverinfo) |
    /// [R](https://plot.ly/r/reference/#scattergl-hoverinfo)
    public var hoverInfo: Shared.HoverInfo?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#scattergl-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#scattergl-hoverlabel)
    public var hoverLabel: Shared.HoverLabel?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-stream) |
    /// [Python](https://plot.ly/python/reference/#scattergl-stream) |
    /// [R](https://plot.ly/r/reference/#scattergl-stream)
    public var stream: Shared.Stream?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-transforms) |
    /// [Python](https://plot.ly/python/reference/#scattergl-transforms) |
    /// [R](https://plot.ly/r/reference/#scattergl-transforms)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-uirevision) |
    /// [Python](https://plot.ly/python/reference/#scattergl-uirevision) |
    /// [R](https://plot.ly/r/reference/#scattergl-uirevision)
    public var uiRevision: Anything?

    /// Sets the x coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-x) |
    /// [Python](https://plot.ly/python/reference/#scattergl-x) |
    /// [R](https://plot.ly/r/reference/#scattergl-x)
    public var x: XData?

    /// Alternate to `x`. 
    ///
    /// Builds a linear space of x coordinates. Use with `dx` where `x0` is the starting coordinate and
    /// `dx` the step.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-x0) |
    /// [Python](https://plot.ly/python/reference/#scattergl-x0) |
    /// [R](https://plot.ly/r/reference/#scattergl-x0)
    public var x0: Anything?

    /// Sets the x coordinate step. 
    ///
    /// See `x0` for more info.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-dx) |
    /// [Python](https://plot.ly/python/reference/#scattergl-dx) |
    /// [R](https://plot.ly/r/reference/#scattergl-dx)
    public var dx: Double?

    /// Sets the y coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-y) |
    /// [Python](https://plot.ly/python/reference/#scattergl-y) |
    /// [R](https://plot.ly/r/reference/#scattergl-y)
    public var y: YData?

    /// Alternate to `y`. 
    ///
    /// Builds a linear space of y coordinates. Use with `dy` where `y0` is the starting coordinate and
    /// `dy` the step.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-y0) |
    /// [Python](https://plot.ly/python/reference/#scattergl-y0) |
    /// [R](https://plot.ly/r/reference/#scattergl-y0)
    public var y0: Anything?

    /// Sets the y coordinate step. 
    ///
    /// See `y0` for more info.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-dy) |
    /// [Python](https://plot.ly/python/reference/#scattergl-dy) |
    /// [R](https://plot.ly/r/reference/#scattergl-dy)
    public var dy: Double?

    /// Sets text elements associated with each (x,y) pair. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to the this trace's (x,y) coordinates. If trace `hoverinfo` contains a
    /// *text* flag and *hovertext* is not set, these elements will be seen in the hover labels.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-text) |
    /// [Python](https://plot.ly/python/reference/#scattergl-text) |
    /// [R](https://plot.ly/r/reference/#scattergl-text)
    public var text: ArrayOrString?

    /// Sets hover text elements associated with each (x,y) pair. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to the this trace's (x,y) coordinates. To be seen, trace `hoverinfo`
    /// must contain a *text* flag.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-hovertext) |
    /// [Python](https://plot.ly/python/reference/#scattergl-hovertext) |
    /// [R](https://plot.ly/r/reference/#scattergl-hovertext)
    public var hoverText: ArrayOrString?

    /// Sets the positions of the `text` elements with respects to the (x,y) coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-textposition) |
    /// [Python](https://plot.ly/python/reference/#scattergl-textposition) |
    /// [R](https://plot.ly/r/reference/#scattergl-textposition)
    public var textPosition: Shared.TextPosition?

    /// Sets the text font.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-textfont) |
    /// [Python](https://plot.ly/python/reference/#scattergl-textfont) |
    /// [R](https://plot.ly/r/reference/#scattergl-textfont)
    public var textFont: Shared.Font?

    /// Determines the drawing mode for this scatter trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-mode) |
    /// [Python](https://plot.ly/python/reference/#scattergl-mode) |
    /// [R](https://plot.ly/r/reference/#scattergl-mode)
    public var mode: Shared.Mode?

    /// # Used By
    /// `ScatterGL.line` |
    public struct SplineDashedLine: Encodable {
        /// Sets the line color.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-line-color) |
        /// [Python](https://plot.ly/python/reference/#scattergl-line-color) |
        /// [R](https://plot.ly/r/reference/#scattergl-line-color)
        public var color: Color?
    
        /// Sets the line width (in px).
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-line-width) |
        /// [Python](https://plot.ly/python/reference/#scattergl-line-width) |
        /// [R](https://plot.ly/r/reference/#scattergl-line-width)
        public var width: Double?
    
        /// Determines the line shape. 
        ///
        /// The values correspond to step-wise line shapes.
        ///
        /// # Used By
        /// `ScatterGL.SplineDashedLine.shape` |
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
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-line-shape) |
        /// [Python](https://plot.ly/python/reference/#scattergl-line-shape) |
        /// [R](https://plot.ly/r/reference/#scattergl-line-shape)
        public var shape: Shape?
    
        /// Sets the style of the lines.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-line-dash) |
        /// [Python](https://plot.ly/python/reference/#scattergl-line-dash) |
        /// [R](https://plot.ly/r/reference/#scattergl-line-dash)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-line) |
    /// [Python](https://plot.ly/python/reference/#scattergl-line) |
    /// [R](https://plot.ly/r/reference/#scattergl-line)
    public var line: SplineDashedLine?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-marker) |
    /// [Python](https://plot.ly/python/reference/#scattergl-marker) |
    /// [R](https://plot.ly/r/reference/#scattergl-marker)
    public var marker: Shared.SymbolicMarker?

    /// Determines whether or not gaps (i.e. 
    ///
    /// {nan} or missing values) in the provided data arrays are connected.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-connectgaps) |
    /// [Python](https://plot.ly/python/reference/#scattergl-connectgaps) |
    /// [R](https://plot.ly/r/reference/#scattergl-connectgaps)
    public var connectGaps: Bool?

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
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-fill) |
    /// [Python](https://plot.ly/python/reference/#scattergl-fill) |
    /// [R](https://plot.ly/r/reference/#scattergl-fill)
    public var fill: Shared.Fill?

    /// Sets the fill color. 
    ///
    /// Defaults to a half-transparent variant of the line color, marker color, or marker line color,
    /// whichever is available.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-fillcolor) |
    /// [Python](https://plot.ly/python/reference/#scattergl-fillcolor) |
    /// [R](https://plot.ly/r/reference/#scattergl-fillcolor)
    public var fillColor: Color?

    /// # Used By
    /// `ScatterGL.selected` |
    public struct Selected: Encodable {
        /// # Used By
        /// `ScatterGL.Selected.marker` |
        public struct Marker: Encodable {
            /// Sets the marker opacity of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-selected-marker-opacity) |
            /// [Python](https://plot.ly/python/reference/#scattergl-selected-marker-opacity) |
            /// [R](https://plot.ly/r/reference/#scattergl-selected-marker-opacity)
            public var opacity: Double?
        
            /// Sets the marker color of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-selected-marker-color) |
            /// [Python](https://plot.ly/python/reference/#scattergl-selected-marker-color) |
            /// [R](https://plot.ly/r/reference/#scattergl-selected-marker-color)
            public var color: Color?
        
            /// Sets the marker size of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-selected-marker-size) |
            /// [Python](https://plot.ly/python/reference/#scattergl-selected-marker-size) |
            /// [R](https://plot.ly/r/reference/#scattergl-selected-marker-size)
            public var size: Double?
        
            public init(opacity: Double? = nil, color: Color? = nil, size: Double? = nil) {
                self.opacity = opacity
                self.color = color
                self.size = size
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-selected-marker) |
        /// [Python](https://plot.ly/python/reference/#scattergl-selected-marker) |
        /// [R](https://plot.ly/r/reference/#scattergl-selected-marker)
        public var marker: Marker?
    
        /// # Used By
        /// `ScatterGL.Selected.textFont` |
        public struct TextFont: Encodable {
            /// Sets the text font color of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-selected-textfont-color) |
            /// [Python](https://plot.ly/python/reference/#scattergl-selected-textfont-color) |
            /// [R](https://plot.ly/r/reference/#scattergl-selected-textfont-color)
            public var color: Color?
        
            public init(color: Color? = nil) {
                self.color = color
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-selected-textfont) |
        /// [Python](https://plot.ly/python/reference/#scattergl-selected-textfont) |
        /// [R](https://plot.ly/r/reference/#scattergl-selected-textfont)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-selected) |
    /// [Python](https://plot.ly/python/reference/#scattergl-selected) |
    /// [R](https://plot.ly/r/reference/#scattergl-selected)
    public var selected: Selected?

    /// # Used By
    /// `ScatterGL.unselected` |
    public struct Unselected: Encodable {
        /// # Used By
        /// `ScatterGL.Unselected.marker` |
        public struct Marker: Encodable {
            /// Sets the marker opacity of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-unselected-marker-opacity) |
            /// [Python](https://plot.ly/python/reference/#scattergl-unselected-marker-opacity) |
            /// [R](https://plot.ly/r/reference/#scattergl-unselected-marker-opacity)
            public var opacity: Double?
        
            /// Sets the marker color of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-unselected-marker-color) |
            /// [Python](https://plot.ly/python/reference/#scattergl-unselected-marker-color) |
            /// [R](https://plot.ly/r/reference/#scattergl-unselected-marker-color)
            public var color: Color?
        
            /// Sets the marker size of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-unselected-marker-size) |
            /// [Python](https://plot.ly/python/reference/#scattergl-unselected-marker-size) |
            /// [R](https://plot.ly/r/reference/#scattergl-unselected-marker-size)
            public var size: Double?
        
            public init(opacity: Double? = nil, color: Color? = nil, size: Double? = nil) {
                self.opacity = opacity
                self.color = color
                self.size = size
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-unselected-marker) |
        /// [Python](https://plot.ly/python/reference/#scattergl-unselected-marker) |
        /// [R](https://plot.ly/r/reference/#scattergl-unselected-marker)
        public var marker: Marker?
    
        /// # Used By
        /// `ScatterGL.Unselected.textFont` |
        public struct TextFont: Encodable {
            /// Sets the text font color of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-unselected-textfont-color) |
            /// [Python](https://plot.ly/python/reference/#scattergl-unselected-textfont-color) |
            /// [R](https://plot.ly/r/reference/#scattergl-unselected-textfont-color)
            public var color: Color?
        
            public init(color: Color? = nil) {
                self.color = color
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-unselected-textfont) |
        /// [Python](https://plot.ly/python/reference/#scattergl-unselected-textfont) |
        /// [R](https://plot.ly/r/reference/#scattergl-unselected-textfont)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-unselected) |
    /// [Python](https://plot.ly/python/reference/#scattergl-unselected) |
    /// [R](https://plot.ly/r/reference/#scattergl-unselected)
    public var unselected: Unselected?

    /// Sets the opacity of the trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-opacity) |
    /// [Python](https://plot.ly/python/reference/#scattergl-opacity) |
    /// [R](https://plot.ly/r/reference/#scattergl-opacity)
    public var opacity: Double?

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
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-hovertemplate) |
    /// [Python](https://plot.ly/python/reference/#scattergl-hovertemplate) |
    /// [R](https://plot.ly/r/reference/#scattergl-hovertemplate)
    public var hoverTemplate: ArrayOrString?

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
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-texttemplate) |
    /// [Python](https://plot.ly/python/reference/#scattergl-texttemplate) |
    /// [R](https://plot.ly/r/reference/#scattergl-texttemplate)
    public var textTemplate: ArrayOrString?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-error_x) |
    /// [Python](https://plot.ly/python/reference/#scattergl-error_x) |
    /// [R](https://plot.ly/r/reference/#scattergl-error_x)
    public var xError: Shared.Error?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-error_y) |
    /// [Python](https://plot.ly/python/reference/#scattergl-error_y) |
    /// [R](https://plot.ly/r/reference/#scattergl-error_y)
    public var yError: Shared.Error?

    /// Sets the calendar system to use with `x` date data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-xcalendar) |
    /// [Python](https://plot.ly/python/reference/#scattergl-xcalendar) |
    /// [R](https://plot.ly/r/reference/#scattergl-xcalendar)
    public var xCalendar: Shared.Calendar?

    /// Sets the calendar system to use with `y` date data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-ycalendar) |
    /// [Python](https://plot.ly/python/reference/#scattergl-ycalendar) |
    /// [R](https://plot.ly/r/reference/#scattergl-ycalendar)
    public var yCalendar: Shared.Calendar?

    /// Sets a reference between this trace's x coordinates and a 2D cartesian x axis. 
    ///
    /// If *x* (the default value), the x coordinates refer to `layout.xaxis`. If *x2*, the x
    /// coordinates refer to `layout.xaxis2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-xaxis) |
    /// [Python](https://plot.ly/python/reference/#scattergl-xaxis) |
    /// [R](https://plot.ly/r/reference/#scattergl-xaxis)
    public var xAxis: SubPlotID?

    /// Sets a reference between this trace's y coordinates and a 2D cartesian y axis. 
    ///
    /// If *y* (the default value), the y coordinates refer to `layout.yaxis`. If *y2*, the y
    /// coordinates refer to `layout.yaxis2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-yaxis) |
    /// [Python](https://plot.ly/python/reference/#scattergl-yaxis) |
    /// [R](https://plot.ly/r/reference/#scattergl-yaxis)
    public var yAxis: SubPlotID?

    /// Plotly compatible property encoding
    enum CodingKeys: String, CodingKey {
        case type
        case animatable
        case visible
        case showLegend = "showlegend"
        case legendGroup = "legendgroup"
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
        case text
        case hoverText = "hovertext"
        case textPosition = "textposition"
        case textFont = "textfont"
        case mode
        case line
        case marker
        case connectGaps = "connectgaps"
        case fill
        case fillColor = "fillcolor"
        case selected
        case unselected
        case opacity
        case hoverTemplate = "hovertemplate"
        case textTemplate = "texttemplate"
        case xError = "error_x"
        case yError = "error_y"
        case xCalendar = "xcalendar"
        case yCalendar = "ycalendar"
        case xAxis = "xaxis"
        case yAxis = "yaxis"
    }
    
    public init(visible: Shared.Visible? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, name: String? = nil, uid: String? = nil, ids: [String]? = nil, customData: [String]? = nil, meta: ArrayOrAnything? = nil, selectedPoints: Anything? = nil, hoverInfo: Shared.HoverInfo? = nil, hoverLabel: Shared.HoverLabel? = nil, stream: Shared.Stream? = nil, transforms: [Shared.Transform]? = nil, uiRevision: Anything? = nil, x: XData? = nil, x0: Anything? = nil, dx: Double? = nil, y: YData? = nil, y0: Anything? = nil, dy: Double? = nil, text: ArrayOrString? = nil, hoverText: ArrayOrString? = nil, textPosition: Shared.TextPosition? = nil, textFont: Shared.Font? = nil, mode: Shared.Mode? = nil, line: SplineDashedLine? = nil, marker: Shared.SymbolicMarker? = nil, connectGaps: Bool? = nil, fill: Shared.Fill? = nil, fillColor: Color? = nil, selected: Selected? = nil, unselected: Unselected? = nil, opacity: Double? = nil, hoverTemplate: ArrayOrString? = nil, textTemplate: ArrayOrString? = nil, xError: Shared.Error? = nil, yError: Shared.Error? = nil, xCalendar: Shared.Calendar? = nil, yCalendar: Shared.Calendar? = nil, xAxis: SubPlotID? = nil, yAxis: SubPlotID? = nil) {
        self.visible = visible
        self.showLegend = showLegend
        self.legendGroup = legendGroup
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
        self.text = text
        self.hoverText = hoverText
        self.textPosition = textPosition
        self.textFont = textFont
        self.mode = mode
        self.line = line
        self.marker = marker
        self.connectGaps = connectGaps
        self.fill = fill
        self.fillColor = fillColor
        self.selected = selected
        self.unselected = unselected
        self.opacity = opacity
        self.hoverTemplate = hoverTemplate
        self.textTemplate = textTemplate
        self.xError = xError
        self.yError = yError
        self.xCalendar = xCalendar
        self.yCalendar = yCalendar
        self.xAxis = xAxis
        self.yAxis = yAxis
    }
}