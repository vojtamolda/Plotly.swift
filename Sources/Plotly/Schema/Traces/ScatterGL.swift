/// The data visualized as scatter point or lines is set in `x` and `y` using the WebGL plotting
/// engine.
/// 
/// Bubble charts are achieved by setting `marker.size` and/or `marker.color` to a numerical arrays.
/// 
/// - SeeAlso:
///   Documentation for 
///   [Python](https://plot.ly/python/reference/#scattergl), 
///   [JavaScript](https://plot.ly/javascript/reference/#scattergl) or 
///   [R](https://plot.ly/r/reference/#scattergl)
public struct ScatterGL<XData, YData>: Trace where XData: Plotable, YData: Plotable {
    public let type: String = "scattergl"

    public let animatable: Bool = false

    /// Determines whether or not this trace is visible.
    /// 
    /// If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the
    /// legend itself is visible).
    public var visible: Shared.Visible?

    /// Determines whether or not an item corresponding to this trace is shown in the legend.
    public var showLegend: Bool?

    /// Sets the legend group for this trace.
    /// 
    /// Traces part of the same legend group hide/show at the same time when toggling legend items.
    public var legendGroup: String?

    /// Sets the trace name.
    /// 
    /// The trace name appear as the legend item and on hover.
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during
    /// animations and transitions.
    public var uid: String?

    /// Assigns id labels to each datum.
    /// 
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    public var ids: [String]?

    /// Assigns extra data each datum.
    /// 
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    public var customData: [String]?

    /// Assigns extra meta information associated with this trace that can be used in various text
    /// attributes.
    /// 
    /// Attributes such as trace `name`, graph, axis and colorbar `title.text`, annotation `text`
    /// `rangeselector`, `updatemenues` and `sliders` `label` text all support `meta`. To access the
    /// trace `meta` values in an attribute in the same trace, simply use `%{meta[i]}` where `i` is the
    /// index or key of the `meta` item in question. To access trace `meta` in layout attributes, use
    /// `%{data[n[.meta[i]}` where `i` is the index or key of the `meta` and `n` is the trace index.
    public var meta: ArrayOrAnything?

    /// Array containing integer indices of selected points.
    /// 
    /// Has an effect only for traces that support selections. Note that an empty array means an empty
    /// selection where the `unselected` are turned on for all points, whereas, any other non-array
    /// values means no selection all where the `selected` and `unselected` styles have no effect.
    public var selectedPoints: Anything?

    /// Determines which trace information appear on hover.
    /// 
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    public var hoverInfo: Shared.HoverInfo?

    public var hoverLabel: Shared.HoverLabel?

    public var stream: Shared.Stream?

    public var transforms: [Shared.Transform]?

    /// Controls persistence of some user-driven changes to the trace: `constraintrange` in `parcoords`
    /// traces, as well as some `editable: true` modifications such as `name` and `colorbar.title`.
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
    public var x: XData?

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
    public var y: YData?

    /// Alternate to `y`.
    /// 
    /// Builds a linear space of y coordinates. Use with `dy` where `y0` is the starting coordinate and
    /// `dy` the step.
    public var y0: Anything?

    /// Sets the y coordinate step.
    /// 
    /// See `y0` for more info.
    public var dy: Double?

    /// Sets text elements associated with each (x,y) pair.
    /// 
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to the this trace's (x,y) coordinates. If trace `hoverinfo` contains a
    /// *text* flag and *hovertext* is not set, these elements will be seen in the hover labels.
    public var text: ArrayOrString?

    /// Sets hover text elements associated with each (x,y) pair.
    /// 
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to the this trace's (x,y) coordinates. To be seen, trace `hoverinfo`
    /// must contain a *text* flag.
    public var hoverText: ArrayOrString?

    /// Sets the positions of the `text` elements with respects to the (x,y) coordinates.
    public var textPosition: Shared.TextPosition?

    /// Sets the text font.
    public var textFont: Shared.Font?

    /// Determines the drawing mode for this scatter trace.
    public var mode: Shared.Mode?

    public struct SplineDashedLine: Encodable {
        /// Sets the line color.
        public var color: Color?
    
        /// Sets the line width (in px).
        public var width: Double?
    
        /// Determines the line shape.
        /// 
        /// The values correspond to step-wise line shapes.
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
        public var shape: Shape?
    
        /// Sets the style of the lines.
        public var dash: Shared.Dash?
    
        /// Creates `SplineDashedLine` object with specified properties.
        /// 
        /// - Parameters:
        ///   - color: Sets the line color.
        ///   - width: Sets the line width (in px).
        ///   - shape: Determines the line shape.
        ///   - dash: Sets the style of the lines.
        public init(color: Color? = nil, width: Double? = nil, shape: Shape? = nil, dash: Shared.Dash? =
                nil) {
            self.color = color
            self.width = width
            self.shape = shape
            self.dash = dash
        }
        
    }
    public var line: SplineDashedLine?

    public var marker: Shared.SymbolicMarker?

    /// Determines whether or not gaps (i.e.
    /// 
    /// {nan} or missing values) in the provided data arrays are connected.
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
    public var fill: Shared.Fill?

    /// Sets the fill color.
    /// 
    /// Defaults to a half-transparent variant of the line color, marker color, or marker line color,
    /// whichever is available.
    public var fillColor: Color?

    public struct Selected: Encodable {
        public struct Marker: Encodable {
            /// Sets the marker opacity of selected points.
            public var opacity: Double?
        
            /// Sets the marker color of selected points.
            public var color: Color?
        
            /// Sets the marker size of selected points.
            public var size: Double?
        
            /// Creates `Marker` object with specified properties.
            /// 
            /// - Parameters:
            ///   - opacity: Sets the marker opacity of selected points.
            ///   - color: Sets the marker color of selected points.
            ///   - size: Sets the marker size of selected points.
            public init(opacity: Double? = nil, color: Color? = nil, size: Double? = nil) {
                self.opacity = opacity
                self.color = color
                self.size = size
            }
            
        }
        public var marker: Marker?
    
        public struct TextFont: Encodable {
            /// Sets the text font color of selected points.
            public var color: Color?
        
            /// Creates `TextFont` object with specified properties.
            /// 
            /// - Parameters:
            ///   - color: Sets the text font color of selected points.
            public init(color: Color? = nil) {
                self.color = color
            }
            
        }
        public var textFont: TextFont?
    
        /// Decoding and encoding keys compatible with Plotly schema.
        enum CodingKeys: String, CodingKey {
            case marker
            case textFont = "textfont"
        }
        
        /// Creates `Selected` object with specified properties.
        public init(marker: Marker? = nil, textFont: TextFont? = nil) {
            self.marker = marker
            self.textFont = textFont
        }
        
    }
    public var selected: Selected?

    public struct Unselected: Encodable {
        public struct Marker: Encodable {
            /// Sets the marker opacity of unselected points, applied only when a selection exists.
            public var opacity: Double?
        
            /// Sets the marker color of unselected points, applied only when a selection exists.
            public var color: Color?
        
            /// Sets the marker size of unselected points, applied only when a selection exists.
            public var size: Double?
        
            /// Creates `Marker` object with specified properties.
            /// 
            /// - Parameters:
            ///   - opacity: Sets the marker opacity of unselected points, applied only when a selection exists.
            ///   - color: Sets the marker color of unselected points, applied only when a selection exists.
            ///   - size: Sets the marker size of unselected points, applied only when a selection exists.
            public init(opacity: Double? = nil, color: Color? = nil, size: Double? = nil) {
                self.opacity = opacity
                self.color = color
                self.size = size
            }
            
        }
        public var marker: Marker?
    
        public struct TextFont: Encodable {
            /// Sets the text font color of unselected points, applied only when a selection exists.
            public var color: Color?
        
            /// Creates `TextFont` object with specified properties.
            /// 
            /// - Parameters:
            ///   - color: Sets the text font color of unselected points, applied only when a selection exists.
            public init(color: Color? = nil) {
                self.color = color
            }
            
        }
        public var textFont: TextFont?
    
        /// Decoding and encoding keys compatible with Plotly schema.
        enum CodingKeys: String, CodingKey {
            case marker
            case textFont = "textfont"
        }
        
        /// Creates `Unselected` object with specified properties.
        public init(marker: Marker? = nil, textFont: TextFont? = nil) {
            self.marker = marker
            self.textFont = textFont
        }
        
    }
    public var unselected: Unselected?

    /// Sets the opacity of the trace.
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
    public var textTemplate: ArrayOrString?

    public var xError: Shared.Error?

    public var yError: Shared.Error?

    /// Sets the calendar system to use with `x` date data.
    public var xCalendar: Shared.Calendar?

    /// Sets the calendar system to use with `y` date data.
    public var yCalendar: Shared.Calendar?

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

    /// Decoding and encoding keys compatible with Plotly schema.
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
    
    /// Creates `ScatterGL` object from the most frequently used properties.
    /// 
    /// - Parameters:
    ///   - name: Sets the trace name.
    ///   - x: Sets the x coordinates.
    ///   - y: Sets the y coordinates.
    ///   - text: Sets text elements associated with each (x,y) pair.
    ///   - hoverText: Sets hover text elements associated with each (x,y) pair.
    ///   - mode: Determines the drawing mode for this scatter trace.
    ///   - line:
    ///   - marker:
    public init(name: String? = nil, x: XData? = nil, y: YData? = nil, text: ArrayOrString? = nil,
            hoverText: ArrayOrString? = nil, mode: Shared.Mode? = nil, line: SplineDashedLine? = nil,
            marker: Shared.SymbolicMarker? = nil) {
        self.name = name
        self.x = x
        self.y = y
        self.text = text
        self.hoverText = hoverText
        self.mode = mode
        self.line = line
        self.marker = marker
    }
    
    /// Creates `ScatterGL` object with specified properties.
    /// 
    /// - Parameters:
    ///   - visible: Determines whether or not this trace is visible.
    ///   - showLegend: Determines whether or not an item corresponding to this trace is shown in the
    ///   legend.
    ///   - legendGroup: Sets the legend group for this trace.
    ///   - name: Sets the trace name.
    ///   - uid: Assign an id to this trace, Use this to provide object constancy between traces during
    ///   animations and transitions.
    ///   - ids: Assigns id labels to each datum.
    ///   - customData: Assigns extra data each datum.
    ///   - meta: Assigns extra meta information associated with this trace that can be used in various
    ///   text attributes.
    ///   - selectedPoints: Array containing integer indices of selected points.
    ///   - hoverInfo: Determines which trace information appear on hover.
    ///   - hoverLabel:
    ///   - stream:
    ///   - transforms:
    ///   - uiRevision: Controls persistence of some user-driven changes to the trace: `constraintrange`
    ///   in `parcoords` traces, as well as some `editable: true` modifications such as `name` and
    ///   `colorbar.title`.
    ///   - x: Sets the x coordinates.
    ///   - x0: Alternate to `x`.
    ///   - dx: Sets the x coordinate step.
    ///   - y: Sets the y coordinates.
    ///   - y0: Alternate to `y`.
    ///   - dy: Sets the y coordinate step.
    ///   - text: Sets text elements associated with each (x,y) pair.
    ///   - hoverText: Sets hover text elements associated with each (x,y) pair.
    ///   - textPosition: Sets the positions of the `text` elements with respects to the (x,y)
    ///   coordinates.
    ///   - textFont: Sets the text font.
    ///   - mode: Determines the drawing mode for this scatter trace.
    ///   - line:
    ///   - marker:
    ///   - connectGaps: Determines whether or not gaps (i.e.
    ///   - fill: Sets the area to fill with a solid color.
    ///   - fillColor: Sets the fill color.
    ///   - selected:
    ///   - unselected:
    ///   - opacity: Sets the opacity of the trace.
    ///   - hoverTemplate: Template string used for rendering the information that appear on hover box.
    ///   - textTemplate: Template string used for rendering the information text that appear on points.
    ///   - xError:
    ///   - yError:
    ///   - xCalendar: Sets the calendar system to use with `x` date data.
    ///   - yCalendar: Sets the calendar system to use with `y` date data.
    ///   - xAxis: Sets a reference between this trace's x coordinates and a 2D cartesian x axis.
    ///   - yAxis: Sets a reference between this trace's y coordinates and a 2D cartesian y axis.
    public init(visible: Shared.Visible? = nil, showLegend: Bool? = nil, legendGroup: String? = nil,
            name: String? = nil, uid: String? = nil, ids: [String]? = nil, customData: [String]? = nil,
            meta: ArrayOrAnything? = nil, selectedPoints: Anything? = nil, hoverInfo: Shared.HoverInfo? =
            nil, hoverLabel: Shared.HoverLabel? = nil, stream: Shared.Stream? = nil, transforms:
            [Shared.Transform]? = nil, uiRevision: Anything? = nil, x: XData? = nil, x0: Anything? = nil,
            dx: Double? = nil, y: YData? = nil, y0: Anything? = nil, dy: Double? = nil, text: ArrayOrString?
            = nil, hoverText: ArrayOrString? = nil, textPosition: Shared.TextPosition? = nil, textFont:
            Shared.Font? = nil, mode: Shared.Mode? = nil, line: SplineDashedLine? = nil, marker:
            Shared.SymbolicMarker? = nil, connectGaps: Bool? = nil, fill: Shared.Fill? = nil, fillColor:
            Color? = nil, selected: Selected? = nil, unselected: Unselected? = nil, opacity: Double? = nil,
            hoverTemplate: ArrayOrString? = nil, textTemplate: ArrayOrString? = nil, xError: Shared.Error? =
            nil, yError: Shared.Error? = nil, xCalendar: Shared.Calendar? = nil, yCalendar: Shared.Calendar?
            = nil, xAxis: SubPlotID? = nil, yAxis: SubPlotID? = nil) {
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
    
    /// Encodes the object in a format compatible with Plotly.
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(animatable, forKey: .animatable)
        try container.encodeIfPresent(visible, forKey: .visible)
        try container.encodeIfPresent(showLegend, forKey: .showLegend)
        try container.encodeIfPresent(legendGroup, forKey: .legendGroup)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(uid, forKey: .uid)
        try container.encodeIfPresent(ids, forKey: .ids)
        try container.encodeIfPresent(customData, forKey: .customData)
        try container.encodeIfPresent(meta, forKey: .meta)
        try container.encodeIfPresent(selectedPoints, forKey: .selectedPoints)
        try container.encodeIfPresent(hoverInfo, forKey: .hoverInfo)
        try container.encodeIfPresent(hoverLabel, forKey: .hoverLabel)
        try container.encodeIfPresent(stream, forKey: .stream)
        try container.encodeIfPresent(transforms, forKey: .transforms)
        try container.encodeIfPresent(uiRevision, forKey: .uiRevision)
        try container.encodeIfPresent(x0, forKey: .x0)
        try container.encodeIfPresent(dx, forKey: .dx)
        try container.encodeIfPresent(y0, forKey: .y0)
        try container.encodeIfPresent(dy, forKey: .dy)
        try container.encodeIfPresent(text, forKey: .text)
        try container.encodeIfPresent(hoverText, forKey: .hoverText)
        try container.encodeIfPresent(textPosition, forKey: .textPosition)
        try container.encodeIfPresent(textFont, forKey: .textFont)
        try container.encodeIfPresent(mode, forKey: .mode)
        try container.encodeIfPresent(line, forKey: .line)
        try container.encodeIfPresent(marker, forKey: .marker)
        try container.encodeIfPresent(connectGaps, forKey: .connectGaps)
        try container.encodeIfPresent(fill, forKey: .fill)
        try container.encodeIfPresent(fillColor, forKey: .fillColor)
        try container.encodeIfPresent(selected, forKey: .selected)
        try container.encodeIfPresent(unselected, forKey: .unselected)
        try container.encodeIfPresent(opacity, forKey: .opacity)
        try container.encodeIfPresent(hoverTemplate, forKey: .hoverTemplate)
        try container.encodeIfPresent(textTemplate, forKey: .textTemplate)
        try container.encodeIfPresent(xError, forKey: .xError)
        try container.encodeIfPresent(yError, forKey: .yError)
        try container.encodeIfPresent(xCalendar, forKey: .xCalendar)
        try container.encodeIfPresent(yCalendar, forKey: .yCalendar)
        try container.encodeIfPresent(xAxis, forKey: .xAxis)
        try container.encodeIfPresent(yAxis, forKey: .yAxis)
    
        if let x = self.x {
            let xEncoder = container.superEncoder(forKey: .x)
            try x.encode(toPlotly: xEncoder)
        }
    
        if let y = self.y {
            let yEncoder = container.superEncoder(forKey: .y)
            try y.encode(toPlotly: yEncoder)
        }
    }
    
}