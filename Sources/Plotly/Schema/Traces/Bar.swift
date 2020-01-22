/// The data visualized by the span of the bars is set in `y` if `orientation` is set th *v* (the default) and the labels are set in `x`. 
///
/// By setting `orientation` to *h*, the roles are interchanged.
public struct Bar<XData, YData>: Trace where XData: Encodable, YData: Encodable {
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#type) |
    /// [Python](https://plot.ly/python/reference/#type) |
    /// [R](https://plot.ly/r/reference/#type)
    public let type: String = "bar"

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
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-visible) |
    /// [Python](https://plot.ly/python/reference/#bar-visible) |
    /// [R](https://plot.ly/r/reference/#bar-visible)
    public var visible: Shared.Visible?

    /// Determines whether or not an item corresponding to this trace is shown in the legend.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-showlegend) |
    /// [Python](https://plot.ly/python/reference/#bar-showlegend) |
    /// [R](https://plot.ly/r/reference/#bar-showlegend)
    public var showLegend: Bool?

    /// Sets the legend group for this trace. 
    ///
    /// Traces part of the same legend group hide/show at the same time when toggling legend items.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-legendgroup) |
    /// [Python](https://plot.ly/python/reference/#bar-legendgroup) |
    /// [R](https://plot.ly/r/reference/#bar-legendgroup)
    public var legendGroup: String?

    /// Sets the opacity of the trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-opacity) |
    /// [Python](https://plot.ly/python/reference/#bar-opacity) |
    /// [R](https://plot.ly/r/reference/#bar-opacity)
    public var opacity: Double?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-name) |
    /// [Python](https://plot.ly/python/reference/#bar-name) |
    /// [R](https://plot.ly/r/reference/#bar-name)
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-uid) |
    /// [Python](https://plot.ly/python/reference/#bar-uid) |
    /// [R](https://plot.ly/r/reference/#bar-uid)
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-ids) |
    /// [Python](https://plot.ly/python/reference/#bar-ids) |
    /// [R](https://plot.ly/r/reference/#bar-ids)
    public var ids: [Double]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-customdata) |
    /// [Python](https://plot.ly/python/reference/#bar-customdata) |
    /// [R](https://plot.ly/r/reference/#bar-customdata)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-meta) |
    /// [Python](https://plot.ly/python/reference/#bar-meta) |
    /// [R](https://plot.ly/r/reference/#bar-meta)
    public var meta: Anything?

    /// Array containing integer indices of selected points. 
    ///
    /// Has an effect only for traces that support selections. Note that an empty array means an empty
    /// selection where the `unselected` are turned on for all points, whereas, any other non-array
    /// values means no selection all where the `selected` and `unselected` styles have no effect.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-selectedpoints) |
    /// [Python](https://plot.ly/python/reference/#bar-selectedpoints) |
    /// [R](https://plot.ly/r/reference/#bar-selectedpoints)
    public var selectedPoints: Anything?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-hoverinfo) |
    /// [Python](https://plot.ly/python/reference/#bar-hoverinfo) |
    /// [R](https://plot.ly/r/reference/#bar-hoverinfo)
    public var hoverInfo: Shared.HoverInfo?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#bar-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#bar-hoverlabel)
    public var hoverLabel: Shared.HoverLabel?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-stream) |
    /// [Python](https://plot.ly/python/reference/#bar-stream) |
    /// [R](https://plot.ly/r/reference/#bar-stream)
    public var stream: Shared.Stream?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-transforms) |
    /// [Python](https://plot.ly/python/reference/#bar-transforms) |
    /// [R](https://plot.ly/r/reference/#bar-transforms)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-uirevision) |
    /// [Python](https://plot.ly/python/reference/#bar-uirevision) |
    /// [R](https://plot.ly/r/reference/#bar-uirevision)
    public var uiRevision: Anything?

    /// Sets the x coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-x) |
    /// [Python](https://plot.ly/python/reference/#bar-x) |
    /// [R](https://plot.ly/r/reference/#bar-x)
    public var x: XData?

    /// Alternate to `x`. 
    ///
    /// Builds a linear space of x coordinates. Use with `dx` where `x0` is the starting coordinate and
    /// `dx` the step.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-x0) |
    /// [Python](https://plot.ly/python/reference/#bar-x0) |
    /// [R](https://plot.ly/r/reference/#bar-x0)
    public var x0: Anything?

    /// Sets the x coordinate step. 
    ///
    /// See `x0` for more info.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-dx) |
    /// [Python](https://plot.ly/python/reference/#bar-dx) |
    /// [R](https://plot.ly/r/reference/#bar-dx)
    public var dx: Double?

    /// Sets the y coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-y) |
    /// [Python](https://plot.ly/python/reference/#bar-y) |
    /// [R](https://plot.ly/r/reference/#bar-y)
    public var y: YData?

    /// Alternate to `y`. 
    ///
    /// Builds a linear space of y coordinates. Use with `dy` where `y0` is the starting coordinate and
    /// `dy` the step.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-y0) |
    /// [Python](https://plot.ly/python/reference/#bar-y0) |
    /// [R](https://plot.ly/r/reference/#bar-y0)
    public var y0: Anything?

    /// Sets the y coordinate step. 
    ///
    /// See `y0` for more info.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-dy) |
    /// [Python](https://plot.ly/python/reference/#bar-dy) |
    /// [R](https://plot.ly/r/reference/#bar-dy)
    public var dy: Double?

    /// Sets text elements associated with each (x,y) pair. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to the this trace's (x,y) coordinates. If trace `hoverinfo` contains a
    /// *text* flag and *hovertext* is not set, these elements will be seen in the hover labels.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-text) |
    /// [Python](https://plot.ly/python/reference/#bar-text) |
    /// [R](https://plot.ly/r/reference/#bar-text)
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
    /// `arrayOk: true`) are available. 
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-texttemplate) |
    /// [Python](https://plot.ly/python/reference/#bar-texttemplate) |
    /// [R](https://plot.ly/r/reference/#bar-texttemplate)
    public var textTemplate: ArrayOrString?

    /// Sets hover text elements associated with each (x,y) pair. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to the this trace's (x,y) coordinates. To be seen, trace `hoverinfo`
    /// must contain a *text* flag.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-hovertext) |
    /// [Python](https://plot.ly/python/reference/#bar-hovertext) |
    /// [R](https://plot.ly/r/reference/#bar-hovertext)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-hovertemplate) |
    /// [Python](https://plot.ly/python/reference/#bar-hovertemplate) |
    /// [R](https://plot.ly/r/reference/#bar-hovertemplate)
    public var hoverTemplate: ArrayOrString?

    /// Specifies the location of the `text`. 
    ///
    /// *inside* positions `text` inside, next to the bar end (rotated and scaled if needed). *outside*
    /// positions `text` outside, next to the bar end (scaled if needed), unless there is another bar
    /// stacked on this one, then the text gets pushed inside. *auto* tries to position `text` inside
    /// the bar, but if the bar is too small and no bar is stacked on this one the text is moved
    /// outside.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-textposition) |
    /// [Python](https://plot.ly/python/reference/#bar-textposition) |
    /// [R](https://plot.ly/r/reference/#bar-textposition)
    public var textPosition: Shared.AdjacentPosition?

    /// Determines if texts are kept at center or start/end points in `textposition` *inside* mode.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-insidetextanchor) |
    /// [Python](https://plot.ly/python/reference/#bar-insidetextanchor) |
    /// [R](https://plot.ly/r/reference/#bar-insidetextanchor)
    public var insideTextAnchor: Shared.InsideTextAnchor?

    /// Sets the angle of the tick labels with respect to the bar. 
    ///
    /// For example, a `tickangle` of -90 draws the tick labels vertically. With *auto* the texts may
    /// automatically be rotated to fit with the maximum size in bars.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-textangle) |
    /// [Python](https://plot.ly/python/reference/#bar-textangle) |
    /// [R](https://plot.ly/r/reference/#bar-textangle)
    public var textAngle: Angle?

    /// Sets the font used for `text`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-textfont) |
    /// [Python](https://plot.ly/python/reference/#bar-textfont) |
    /// [R](https://plot.ly/r/reference/#bar-textfont)
    public var textFont: Shared.Font?

    /// Sets the font used for `text` lying inside the bar.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-insidetextfont) |
    /// [Python](https://plot.ly/python/reference/#bar-insidetextfont) |
    /// [R](https://plot.ly/r/reference/#bar-insidetextfont)
    public var insideTextFont: Shared.Font?

    /// Sets the font used for `text` lying outside the bar.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-outsidetextfont) |
    /// [Python](https://plot.ly/python/reference/#bar-outsidetextfont) |
    /// [R](https://plot.ly/r/reference/#bar-outsidetextfont)
    public var outSideTextFont: Shared.Font?

    /// Constrain the size of text inside or outside a bar to be no larger than the bar itself.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-constraintext) |
    /// [Python](https://plot.ly/python/reference/#bar-constraintext) |
    /// [R](https://plot.ly/r/reference/#bar-constraintext)
    public var constrainText: Shared.ConstrainText?

    /// Determines whether the text nodes are clipped about the subplot axes. 
    ///
    /// To show the text nodes above axis lines and tick labels, make sure to set `xaxis.layer` and
    /// `yaxis.layer` to *below traces*.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-cliponaxis) |
    /// [Python](https://plot.ly/python/reference/#bar-cliponaxis) |
    /// [R](https://plot.ly/r/reference/#bar-cliponaxis)
    public var clipOnAxis: Bool?

    /// Sets the orientation of the bars. 
    ///
    /// With *v* (*h*), the value of the each bar spans along the vertical (horizontal).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-orientation) |
    /// [Python](https://plot.ly/python/reference/#bar-orientation) |
    /// [R](https://plot.ly/r/reference/#bar-orientation)
    public var orientation: Shared.Orientation?

    /// Sets where the bar base is drawn (in position axis units). 
    ///
    /// In *stack* or *relative* barmode, traces that set *base* will be excluded and drawn in *overlay*
    /// mode instead.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-base) |
    /// [Python](https://plot.ly/python/reference/#bar-base) |
    /// [R](https://plot.ly/r/reference/#bar-base)
    public var base: Anything?

    /// Shifts the position where the bar is drawn (in position axis units). 
    ///
    /// In *group* barmode, traces that set *offset* will be excluded and drawn in *overlay* mode
    /// instead.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-offset) |
    /// [Python](https://plot.ly/python/reference/#bar-offset) |
    /// [R](https://plot.ly/r/reference/#bar-offset)
    public var offset: ArrayOrDouble?

    /// Sets the bar width (in position axis units).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-width) |
    /// [Python](https://plot.ly/python/reference/#bar-width) |
    /// [R](https://plot.ly/r/reference/#bar-width)
    public var width: ArrayOrDouble?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-marker) |
    /// [Python](https://plot.ly/python/reference/#bar-marker) |
    /// [R](https://plot.ly/r/reference/#bar-marker)
    public var marker: Shared.Marker?

    /// Set several traces linked to the same position axis or matching axes to the same offsetgroup where bars of the same position coordinate will line up.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-offsetgroup) |
    /// [Python](https://plot.ly/python/reference/#bar-offsetgroup) |
    /// [R](https://plot.ly/r/reference/#bar-offsetgroup)
    public var offsetGroup: String?

    /// Set several traces linked to the same position axis or matching axes to the same alignmentgroup. 
    ///
    /// This controls whether bars compute their positional range dependently or independently.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-alignmentgroup) |
    /// [Python](https://plot.ly/python/reference/#bar-alignmentgroup) |
    /// [R](https://plot.ly/r/reference/#bar-alignmentgroup)
    public var alignmentGroup: String?

    /// # Used By
    /// `Bar.selected` |
    public struct Selected: Encodable {
        /// # Used By
        /// `Bar.Selected.marker` |
        public struct Marker: Encodable {
            /// Sets the marker opacity of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#bar-selected-marker-opacity) |
            /// [Python](https://plot.ly/python/reference/#bar-selected-marker-opacity) |
            /// [R](https://plot.ly/r/reference/#bar-selected-marker-opacity)
            public var opacity: Double?
        
            /// Sets the marker color of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#bar-selected-marker-color) |
            /// [Python](https://plot.ly/python/reference/#bar-selected-marker-color) |
            /// [R](https://plot.ly/r/reference/#bar-selected-marker-color)
            public var color: Color?
        
            public init(opacity: Double? = nil, color: Color? = nil) {
                self.opacity = opacity
                self.color = color
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-selected-marker) |
        /// [Python](https://plot.ly/python/reference/#bar-selected-marker) |
        /// [R](https://plot.ly/r/reference/#bar-selected-marker)
        public var marker: Marker?
    
        /// # Used By
        /// `Bar.Selected.textFont` |
        public struct TextFont: Encodable {
            /// Sets the text font color of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#bar-selected-textfont-color) |
            /// [Python](https://plot.ly/python/reference/#bar-selected-textfont-color) |
            /// [R](https://plot.ly/r/reference/#bar-selected-textfont-color)
            public var color: Color?
        
            public init(color: Color? = nil) {
                self.color = color
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-selected-textfont) |
        /// [Python](https://plot.ly/python/reference/#bar-selected-textfont) |
        /// [R](https://plot.ly/r/reference/#bar-selected-textfont)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-selected) |
    /// [Python](https://plot.ly/python/reference/#bar-selected) |
    /// [R](https://plot.ly/r/reference/#bar-selected)
    public var selected: Selected?

    /// # Used By
    /// `Bar.unselected` |
    public struct Unselected: Encodable {
        /// # Used By
        /// `Bar.Unselected.marker` |
        public struct Marker: Encodable {
            /// Sets the marker opacity of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#bar-unselected-marker-opacity) |
            /// [Python](https://plot.ly/python/reference/#bar-unselected-marker-opacity) |
            /// [R](https://plot.ly/r/reference/#bar-unselected-marker-opacity)
            public var opacity: Double?
        
            /// Sets the marker color of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#bar-unselected-marker-color) |
            /// [Python](https://plot.ly/python/reference/#bar-unselected-marker-color) |
            /// [R](https://plot.ly/r/reference/#bar-unselected-marker-color)
            public var color: Color?
        
            public init(opacity: Double? = nil, color: Color? = nil) {
                self.opacity = opacity
                self.color = color
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-unselected-marker) |
        /// [Python](https://plot.ly/python/reference/#bar-unselected-marker) |
        /// [R](https://plot.ly/r/reference/#bar-unselected-marker)
        public var marker: Marker?
    
        /// # Used By
        /// `Bar.Unselected.textFont` |
        public struct TextFont: Encodable {
            /// Sets the text font color of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#bar-unselected-textfont-color) |
            /// [Python](https://plot.ly/python/reference/#bar-unselected-textfont-color) |
            /// [R](https://plot.ly/r/reference/#bar-unselected-textfont-color)
            public var color: Color?
        
            public init(color: Color? = nil) {
                self.color = color
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-unselected-textfont) |
        /// [Python](https://plot.ly/python/reference/#bar-unselected-textfont) |
        /// [R](https://plot.ly/r/reference/#bar-unselected-textfont)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-unselected) |
    /// [Python](https://plot.ly/python/reference/#bar-unselected) |
    /// [R](https://plot.ly/r/reference/#bar-unselected)
    public var unselected: Unselected?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-error_x) |
    /// [Python](https://plot.ly/python/reference/#bar-error_x) |
    /// [R](https://plot.ly/r/reference/#bar-error_x)
    public var xError: Shared.Error?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-error_y) |
    /// [Python](https://plot.ly/python/reference/#bar-error_y) |
    /// [R](https://plot.ly/r/reference/#bar-error_y)
    public var yError: Shared.Error?

    /// Sets the calendar system to use with `x` date data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-xcalendar) |
    /// [Python](https://plot.ly/python/reference/#bar-xcalendar) |
    /// [R](https://plot.ly/r/reference/#bar-xcalendar)
    public var xCalendar: Shared.Calendar?

    /// Sets the calendar system to use with `y` date data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-ycalendar) |
    /// [Python](https://plot.ly/python/reference/#bar-ycalendar) |
    /// [R](https://plot.ly/r/reference/#bar-ycalendar)
    public var yCalendar: Shared.Calendar?

    /// Sets a reference between this trace's x coordinates and a 2D cartesian x axis. 
    ///
    /// If *x* (the default value), the x coordinates refer to `layout.xaxis`. If *x2*, the x
    /// coordinates refer to `layout.xaxis2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-xaxis) |
    /// [Python](https://plot.ly/python/reference/#bar-xaxis) |
    /// [R](https://plot.ly/r/reference/#bar-xaxis)
    public var xAxis: SubPlotID?

    /// Sets a reference between this trace's y coordinates and a 2D cartesian y axis. 
    ///
    /// If *y* (the default value), the y coordinates refer to `layout.yaxis`. If *y2*, the y
    /// coordinates refer to `layout.yaxis2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-yaxis) |
    /// [Python](https://plot.ly/python/reference/#bar-yaxis) |
    /// [R](https://plot.ly/r/reference/#bar-yaxis)
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
        case transforms
        case uiRevision = "uirevision"
        case x
        case x0
        case dx
        case y
        case y0
        case dy
        case text
        case textTemplate = "texttemplate"
        case hoverText = "hovertext"
        case hoverTemplate = "hovertemplate"
        case textPosition = "textposition"
        case insideTextAnchor = "insidetextanchor"
        case textAngle = "textangle"
        case textFont = "textfont"
        case insideTextFont = "insidetextfont"
        case outSideTextFont = "outsidetextfont"
        case constrainText = "constraintext"
        case clipOnAxis = "cliponaxis"
        case orientation
        case base
        case offset
        case width
        case marker
        case offsetGroup = "offsetgroup"
        case alignmentGroup = "alignmentgroup"
        case selected
        case unselected
        case xError = "error_x"
        case yError = "error_y"
        case xCalendar = "xcalendar"
        case yCalendar = "ycalendar"
        case xAxis = "xaxis"
        case yAxis = "yaxis"
    }
    
    public init(visible: Shared.Visible? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, selectedPoints: Anything? = nil, hoverInfo: Shared.HoverInfo? = nil, hoverLabel: Shared.HoverLabel? = nil, stream: Shared.Stream? = nil, transforms: [Shared.Transform]? = nil, uiRevision: Anything? = nil, x: XData? = nil, x0: Anything? = nil, dx: Double? = nil, y: YData? = nil, y0: Anything? = nil, dy: Double? = nil, text: ArrayOrString? = nil, textTemplate: ArrayOrString? = nil, hoverText: ArrayOrString? = nil, hoverTemplate: ArrayOrString? = nil, textPosition: Shared.AdjacentPosition? = nil, insideTextAnchor: Shared.InsideTextAnchor? = nil, textAngle: Angle? = nil, textFont: Shared.Font? = nil, insideTextFont: Shared.Font? = nil, outSideTextFont: Shared.Font? = nil, constrainText: Shared.ConstrainText? = nil, clipOnAxis: Bool? = nil, orientation: Shared.Orientation? = nil, base: Anything? = nil, offset: ArrayOrDouble? = nil, width: ArrayOrDouble? = nil, marker: Shared.Marker? = nil, offsetGroup: String? = nil, alignmentGroup: String? = nil, selected: Selected? = nil, unselected: Unselected? = nil, xError: Shared.Error? = nil, yError: Shared.Error? = nil, xCalendar: Shared.Calendar? = nil, yCalendar: Shared.Calendar? = nil, xAxis: SubPlotID? = nil, yAxis: SubPlotID? = nil) {
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
        self.text = text
        self.textTemplate = textTemplate
        self.hoverText = hoverText
        self.hoverTemplate = hoverTemplate
        self.textPosition = textPosition
        self.insideTextAnchor = insideTextAnchor
        self.textAngle = textAngle
        self.textFont = textFont
        self.insideTextFont = insideTextFont
        self.outSideTextFont = outSideTextFont
        self.constrainText = constrainText
        self.clipOnAxis = clipOnAxis
        self.orientation = orientation
        self.base = base
        self.offset = offset
        self.width = width
        self.marker = marker
        self.offsetGroup = offsetGroup
        self.alignmentGroup = alignmentGroup
        self.selected = selected
        self.unselected = unselected
        self.xError = xError
        self.yError = yError
        self.xCalendar = xCalendar
        self.yCalendar = yCalendar
        self.xAxis = xAxis
        self.yAxis = yAxis
    }
}