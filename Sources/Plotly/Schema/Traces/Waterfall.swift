/// Draws waterfall trace which is useful graph to displays the contribution of various elements
/// (either positive or negative) in a bar chart.
/// 
/// The data visualized by the span of the bars is set in `y` if `orientation` is set th *v* (the
/// default) and the labels are set in `x`. By setting `orientation` to *h*, the roles are
/// interchanged.
/// 
/// - SeeAlso:
///   Documentation for 
///   [Python](https://plot.ly/python/reference/#waterfall), 
///   [JavaScript](https://plot.ly/javascript/reference/#waterfall) or 
///   [R](https://plot.ly/r/reference/#waterfall)
public struct Waterfall<XData, YData>: Trace where XData: Plotable, YData: Plotable {
    public let type: String = "waterfall"

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

    /// Sets the opacity of the trace.
    public var opacity: Double?

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
    public var meta: Data<Anything>?

    /// Array containing integer indices of selected points.
    /// 
    /// Has an effect only for traces that support selections. Note that an empty array means an empty
    /// selection where the `unselected` are turned on for all points, whereas, any other non-array
    /// values means no selection all where the `selected` and `unselected` styles have no effect.
    public var selectedPoints: Anything?

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

    /// An array containing types of values.
    /// 
    /// By default the values are considered as 'relative'. However; it is possible to use 'total' to
    /// compute the sums. Also 'absolute' could be applied to reset the computed total or to declare an
    /// initial value where needed.
    public var measure: [String]?

    /// Sets where the bar base is drawn (in position axis units).
    public var base: Double?

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

    /// Sets hover text elements associated with each (x,y) pair.
    /// 
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to the this trace's (x,y) coordinates. To be seen, trace `hoverinfo`
    /// must contain a *text* flag.
    public var hoverText: Data<String>?

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
    /// true`) are available. variables `initial`, `delta` and `final`. Anything contained in tag
    /// `<extra>` is displayed in the secondary box, for example "<extra>{fullData.name}</extra>". To
    /// hide the secondary box completely, use an empty tag `<extra></extra>`.
    public var hoverTemplate: Data<String>?

    /// Determines which trace information appear on hover.
    /// 
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    public struct HoverInfo: OptionSet, Encodable {
        public let rawValue: Int
    
        public static var name: HoverInfo { HoverInfo(rawValue: 1 << 0) }
        public static var x: HoverInfo { HoverInfo(rawValue: 1 << 1) }
        public static var y: HoverInfo { HoverInfo(rawValue: 1 << 2) }
        public static var text: HoverInfo { HoverInfo(rawValue: 1 << 3) }
        public static var initial: HoverInfo { HoverInfo(rawValue: 1 << 4) }
        public static var delta: HoverInfo { HoverInfo(rawValue: 1 << 5) }
        public static var final: HoverInfo { HoverInfo(rawValue: 1 << 6) }
        public static var all: HoverInfo { HoverInfo(rawValue: 1 << 7) }
        public static var none: HoverInfo { HoverInfo(rawValue: 1 << 8) }
        public static var skip: HoverInfo { HoverInfo(rawValue: 1 << 9) }
    
        public init(rawValue: Int) { self.rawValue = rawValue }
    
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["name"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["x"] }
            if (self.rawValue & 1 << 2) != 0 { options += ["y"] }
            if (self.rawValue & 1 << 3) != 0 { options += ["text"] }
            if (self.rawValue & 1 << 4) != 0 { options += ["initial"] }
            if (self.rawValue & 1 << 5) != 0 { options += ["delta"] }
            if (self.rawValue & 1 << 6) != 0 { options += ["final"] }
            if (self.rawValue & 1 << 7) != 0 { options += ["all"] }
            if (self.rawValue & 1 << 8) != 0 { options += ["none"] }
            if (self.rawValue & 1 << 9) != 0 { options += ["skip"] }
            var container = encoder.singleValueContainer()
            try container.encode(options.joined(separator: "+"))
        }
    }
    /// Determines which trace information appear on hover.
    /// 
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    public var hoverInfo: HoverInfo?

    /// Determines which trace information appear on the graph.
    /// 
    /// In the case of having multiple waterfalls, totals are computed separately (per trace).
    public struct TextInfo: OptionSet, Encodable {
        public let rawValue: Int
    
        public static var label: TextInfo { TextInfo(rawValue: 1 << 0) }
        public static var text: TextInfo { TextInfo(rawValue: 1 << 1) }
        public static var initial: TextInfo { TextInfo(rawValue: 1 << 2) }
        public static var delta: TextInfo { TextInfo(rawValue: 1 << 3) }
        public static var final: TextInfo { TextInfo(rawValue: 1 << 4) }
        public static var none: TextInfo { TextInfo(rawValue: 1 << 5) }
    
        public init(rawValue: Int) { self.rawValue = rawValue }
    
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["label"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["text"] }
            if (self.rawValue & 1 << 2) != 0 { options += ["initial"] }
            if (self.rawValue & 1 << 3) != 0 { options += ["delta"] }
            if (self.rawValue & 1 << 4) != 0 { options += ["final"] }
            if (self.rawValue & 1 << 5) != 0 { options += ["none"] }
            var container = encoder.singleValueContainer()
            try container.encode(options.joined(separator: "+"))
        }
    }
    /// Determines which trace information appear on the graph.
    /// 
    /// In the case of having multiple waterfalls, totals are computed separately (per trace).
    public var textInfo: TextInfo?

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
    /// `arrayOk: true`) are available. variables `initial`, `delta`, `final` and `label`.
    public var textTemplate: Data<String>?

    /// Sets text elements associated with each (x,y) pair.
    /// 
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to the this trace's (x,y) coordinates. If trace `hoverinfo` contains a
    /// *text* flag and *hovertext* is not set, these elements will be seen in the hover labels.
    public var text: Data<String>?

    /// Specifies the location of the `text`.
    /// 
    /// *inside* positions `text` inside, next to the bar end (rotated and scaled if needed). *outside*
    /// positions `text` outside, next to the bar end (scaled if needed), unless there is another bar
    /// stacked on this one, then the text gets pushed inside. *auto* tries to position `text` inside
    /// the bar, but if the bar is too small and no bar is stacked on this one the text is moved
    /// outside.
    public var textPosition: Shared.AdjacentPosition?

    /// Determines if texts are kept at center or start/end points in `textposition` *inside* mode.
    public var insideTextAnchor: Shared.InsideTextAnchor?

    /// Sets the angle of the tick labels with respect to the bar.
    /// 
    /// For example, a `tickangle` of -90 draws the tick labels vertically. With *auto* the texts may
    /// automatically be rotated to fit with the maximum size in bars.
    public var textAngle: Angle?

    /// Sets the font used for `text`.
    public var textFont: Shared.VariableFont?

    /// Sets the font used for `text` lying inside the bar.
    public var insideTextFont: Shared.VariableFont?

    /// Sets the font used for `text` lying outside the bar.
    public var outSideTextFont: Shared.VariableFont?

    /// Constrain the size of text inside or outside a bar to be no larger than the bar itself.
    public var constrainText: Shared.ConstrainText?

    /// Determines whether the text nodes are clipped about the subplot axes.
    /// 
    /// To show the text nodes above axis lines and tick labels, make sure to set `xaxis.layer` and
    /// `yaxis.layer` to *below traces*.
    public var clipOnAxis: Bool?

    /// Sets the orientation of the bars.
    /// 
    /// With *v* (*h*), the value of the each bar spans along the vertical (horizontal).
    public var orientation: Shared.Orientation?

    /// Shifts the position where the bar is drawn (in position axis units).
    /// 
    /// In *group* barmode, traces that set *offset* will be excluded and drawn in *overlay* mode
    /// instead.
    public var offset: Data<Double>?

    /// Sets the bar width (in position axis units).
    public var width: Data<Double>?

    public struct Increasing: Encodable {
        public struct Marker: Encodable {
            /// Sets the marker color of all increasing values.
            public var color: Color?
        
            public var line: Shared.Line?
        
            /// Creates `Marker` object with specified properties.
            /// 
            /// - Parameters:
            ///   - color: Sets the marker color of all increasing values.
            ///   - line:
            public init(color: Color? = nil, line: Shared.Line? = nil) {
                self.color = color
                self.line = line
            }
            
        }
        public var marker: Marker?
    
        /// Creates `Increasing` object with specified properties.
        public init(marker: Marker? = nil) {
            self.marker = marker
        }
        
    }
    public var increasing: Increasing?

    public struct Decreasing: Encodable {
        public struct Marker: Encodable {
            /// Sets the marker color of all decreasing values.
            public var color: Color?
        
            public var line: Shared.Line?
        
            /// Creates `Marker` object with specified properties.
            /// 
            /// - Parameters:
            ///   - color: Sets the marker color of all decreasing values.
            ///   - line:
            public init(color: Color? = nil, line: Shared.Line? = nil) {
                self.color = color
                self.line = line
            }
            
        }
        public var marker: Marker?
    
        /// Creates `Decreasing` object with specified properties.
        public init(marker: Marker? = nil) {
            self.marker = marker
        }
        
    }
    public var decreasing: Decreasing?

    public struct Totals: Encodable {
        public struct Marker: Encodable {
            /// Sets the marker color of all intermediate sums and total values.
            public var color: Color?
        
            public var line: Shared.Line?
        
            /// Creates `Marker` object with specified properties.
            /// 
            /// - Parameters:
            ///   - color: Sets the marker color of all intermediate sums and total values.
            ///   - line:
            public init(color: Color? = nil, line: Shared.Line? = nil) {
                self.color = color
                self.line = line
            }
            
        }
        public var marker: Marker?
    
        /// Creates `Totals` object with specified properties.
        public init(marker: Marker? = nil) {
            self.marker = marker
        }
        
    }
    public var totals: Totals?

    public struct Connector: Encodable {
        public var line: Shared.DashedLine?
    
        /// Sets the shape of connector lines.
        public enum Mode: String, Encodable {
            case spanning
            case between
        }
        /// Sets the shape of connector lines.
        public var mode: Mode?
    
        /// Determines if connector lines are drawn.
        public var visible: Bool?
    
        /// Creates `Connector` object with specified properties.
        /// 
        /// - Parameters:
        ///   - line:
        ///   - mode: Sets the shape of connector lines.
        ///   - visible: Determines if connector lines are drawn.
        public init(line: Shared.DashedLine? = nil, mode: Mode? = nil, visible: Bool? = nil) {
            self.line = line
            self.mode = mode
            self.visible = visible
        }
        
    }
    public var connector: Connector?

    /// Set several traces linked to the same position axis or matching axes to the same offsetgroup
    /// where bars of the same position coordinate will line up.
    public var offsetGroup: String?

    /// Set several traces linked to the same position axis or matching axes to the same alignmentgroup.
    /// 
    /// This controls whether bars compute their positional range dependently or independently.
    public var alignmentGroup: String?

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
        case measure
        case base
        case x
        case x0
        case dx
        case y
        case y0
        case dy
        case hoverText = "hovertext"
        case hoverTemplate = "hovertemplate"
        case hoverInfo = "hoverinfo"
        case textInfo = "textinfo"
        case textTemplate = "texttemplate"
        case text
        case textPosition = "textposition"
        case insideTextAnchor = "insidetextanchor"
        case textAngle = "textangle"
        case textFont = "textfont"
        case insideTextFont = "insidetextfont"
        case outSideTextFont = "outsidetextfont"
        case constrainText = "constraintext"
        case clipOnAxis = "cliponaxis"
        case orientation
        case offset
        case width
        case increasing
        case decreasing
        case totals
        case connector
        case offsetGroup = "offsetgroup"
        case alignmentGroup = "alignmentgroup"
        case xAxis = "xaxis"
        case yAxis = "yaxis"
    }
    
    /// Creates `Waterfall` object from the most frequently used properties.
    /// 
    /// - Parameters:
    ///   - name: Sets the trace name.
    ///   - x: Sets the x coordinates.
    ///   - y: Sets the y coordinates.
    ///   - hoverText: Sets hover text elements associated with each (x,y) pair.
    ///   - text: Sets text elements associated with each (x,y) pair.
    public init(name: String? = nil, x: XData? = nil, y: YData? = nil, hoverText: Data<String>? =
            nil, text: Data<String>? = nil) {
        self.name = name
        self.x = x
        self.y = y
        self.hoverText = hoverText
        self.text = text
    }
    
    /// Creates `Waterfall` object with specified properties.
    /// 
    /// - Parameters:
    ///   - visible: Determines whether or not this trace is visible.
    ///   - showLegend: Determines whether or not an item corresponding to this trace is shown in the
    ///   legend.
    ///   - legendGroup: Sets the legend group for this trace.
    ///   - opacity: Sets the opacity of the trace.
    ///   - name: Sets the trace name.
    ///   - uid: Assign an id to this trace, Use this to provide object constancy between traces during
    ///   animations and transitions.
    ///   - ids: Assigns id labels to each datum.
    ///   - customData: Assigns extra data each datum.
    ///   - meta: Assigns extra meta information associated with this trace that can be used in various
    ///   text attributes.
    ///   - selectedPoints: Array containing integer indices of selected points.
    ///   - hoverLabel:
    ///   - stream:
    ///   - transforms:
    ///   - uiRevision: Controls persistence of some user-driven changes to the trace: `constraintrange`
    ///   in `parcoords` traces, as well as some `editable: true` modifications such as `name` and
    ///   `colorbar.title`.
    ///   - measure: An array containing types of values.
    ///   - base: Sets where the bar base is drawn (in position axis units).
    ///   - x: Sets the x coordinates.
    ///   - x0: Alternate to `x`.
    ///   - dx: Sets the x coordinate step.
    ///   - y: Sets the y coordinates.
    ///   - y0: Alternate to `y`.
    ///   - dy: Sets the y coordinate step.
    ///   - hoverText: Sets hover text elements associated with each (x,y) pair.
    ///   - hoverTemplate: Template string used for rendering the information that appear on hover box.
    ///   - hoverInfo: Determines which trace information appear on hover.
    ///   - textInfo: Determines which trace information appear on the graph.
    ///   - textTemplate: Template string used for rendering the information text that appear on points.
    ///   - text: Sets text elements associated with each (x,y) pair.
    ///   - textPosition: Specifies the location of the `text`.
    ///   - insideTextAnchor: Determines if texts are kept at center or start/end points in `textposition`
    ///   *inside* mode.
    ///   - textAngle: Sets the angle of the tick labels with respect to the bar.
    ///   - textFont: Sets the font used for `text`.
    ///   - insideTextFont: Sets the font used for `text` lying inside the bar.
    ///   - outSideTextFont: Sets the font used for `text` lying outside the bar.
    ///   - constrainText: Constrain the size of text inside or outside a bar to be no larger than the bar
    ///   itself.
    ///   - clipOnAxis: Determines whether the text nodes are clipped about the subplot axes.
    ///   - orientation: Sets the orientation of the bars.
    ///   - offset: Shifts the position where the bar is drawn (in position axis units).
    ///   - width: Sets the bar width (in position axis units).
    ///   - increasing:
    ///   - decreasing:
    ///   - totals:
    ///   - connector:
    ///   - offsetGroup: Set several traces linked to the same position axis or matching axes to the same
    ///   offsetgroup where bars of the same position coordinate will line up.
    ///   - alignmentGroup: Set several traces linked to the same position axis or matching axes to the
    ///   same alignmentgroup.
    ///   - xAxis: Sets a reference between this trace's x coordinates and a 2D cartesian x axis.
    ///   - yAxis: Sets a reference between this trace's y coordinates and a 2D cartesian y axis.
    public init(visible: Shared.Visible? = nil, showLegend: Bool? = nil, legendGroup: String? = nil,
            opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [String]? = nil,
            customData: [String]? = nil, meta: Data<Anything>? = nil, selectedPoints: Anything? = nil,
            hoverLabel: Shared.HoverLabel? = nil, stream: Shared.Stream? = nil, transforms:
            [Shared.Transform]? = nil, uiRevision: Anything? = nil, measure: [String]? = nil, base: Double?
            = nil, x: XData? = nil, x0: Anything? = nil, dx: Double? = nil, y: YData? = nil, y0: Anything? =
            nil, dy: Double? = nil, hoverText: Data<String>? = nil, hoverTemplate: Data<String>? = nil,
            hoverInfo: HoverInfo? = nil, textInfo: TextInfo? = nil, textTemplate: Data<String>? = nil, text:
            Data<String>? = nil, textPosition: Shared.AdjacentPosition? = nil, insideTextAnchor:
            Shared.InsideTextAnchor? = nil, textAngle: Angle? = nil, textFont: Shared.VariableFont? = nil,
            insideTextFont: Shared.VariableFont? = nil, outSideTextFont: Shared.VariableFont? = nil,
            constrainText: Shared.ConstrainText? = nil, clipOnAxis: Bool? = nil, orientation:
            Shared.Orientation? = nil, offset: Data<Double>? = nil, width: Data<Double>? = nil, increasing:
            Increasing? = nil, decreasing: Decreasing? = nil, totals: Totals? = nil, connector: Connector? =
            nil, offsetGroup: String? = nil, alignmentGroup: String? = nil, xAxis: SubPlotID? = nil, yAxis:
            SubPlotID? = nil) {
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
        self.measure = measure
        self.base = base
        self.x = x
        self.x0 = x0
        self.dx = dx
        self.y = y
        self.y0 = y0
        self.dy = dy
        self.hoverText = hoverText
        self.hoverTemplate = hoverTemplate
        self.hoverInfo = hoverInfo
        self.textInfo = textInfo
        self.textTemplate = textTemplate
        self.text = text
        self.textPosition = textPosition
        self.insideTextAnchor = insideTextAnchor
        self.textAngle = textAngle
        self.textFont = textFont
        self.insideTextFont = insideTextFont
        self.outSideTextFont = outSideTextFont
        self.constrainText = constrainText
        self.clipOnAxis = clipOnAxis
        self.orientation = orientation
        self.offset = offset
        self.width = width
        self.increasing = increasing
        self.decreasing = decreasing
        self.totals = totals
        self.connector = connector
        self.offsetGroup = offsetGroup
        self.alignmentGroup = alignmentGroup
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
        try container.encodeIfPresent(measure, forKey: .measure)
        try container.encodeIfPresent(base, forKey: .base)
        try container.encodeIfPresent(x0, forKey: .x0)
        try container.encodeIfPresent(dx, forKey: .dx)
        try container.encodeIfPresent(y0, forKey: .y0)
        try container.encodeIfPresent(dy, forKey: .dy)
        try container.encodeIfPresent(hoverText, forKey: .hoverText)
        try container.encodeIfPresent(hoverTemplate, forKey: .hoverTemplate)
        try container.encodeIfPresent(hoverInfo, forKey: .hoverInfo)
        try container.encodeIfPresent(textInfo, forKey: .textInfo)
        try container.encodeIfPresent(textTemplate, forKey: .textTemplate)
        try container.encodeIfPresent(text, forKey: .text)
        try container.encodeIfPresent(textPosition, forKey: .textPosition)
        try container.encodeIfPresent(insideTextAnchor, forKey: .insideTextAnchor)
        try container.encodeIfPresent(textAngle, forKey: .textAngle)
        try container.encodeIfPresent(textFont, forKey: .textFont)
        try container.encodeIfPresent(insideTextFont, forKey: .insideTextFont)
        try container.encodeIfPresent(outSideTextFont, forKey: .outSideTextFont)
        try container.encodeIfPresent(constrainText, forKey: .constrainText)
        try container.encodeIfPresent(clipOnAxis, forKey: .clipOnAxis)
        try container.encodeIfPresent(orientation, forKey: .orientation)
        try container.encodeIfPresent(offset, forKey: .offset)
        try container.encodeIfPresent(width, forKey: .width)
        try container.encodeIfPresent(increasing, forKey: .increasing)
        try container.encodeIfPresent(decreasing, forKey: .decreasing)
        try container.encodeIfPresent(totals, forKey: .totals)
        try container.encodeIfPresent(connector, forKey: .connector)
        try container.encodeIfPresent(offsetGroup, forKey: .offsetGroup)
        try container.encodeIfPresent(alignmentGroup, forKey: .alignmentGroup)
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