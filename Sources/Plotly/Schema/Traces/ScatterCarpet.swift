/// Plots a scatter trace on either the first carpet axis or the carpet axis with a matching
/// `carpet` attribute.
/// 
/// - SeeAlso:
///   Documentation for 
///   [Python](https://plot.ly/python/reference/#scattercarpet), 
///   [JavaScript](https://plot.ly/javascript/reference/#scattercarpet) or 
///   [R](https://plot.ly/r/reference/#scattercarpet)
public struct ScatterCarpet<AData, BData>: Trace, XYSubplot where AData: Plotable, BData: Plotable {
    public let type: String = "scattercarpet"

    public let animatable: Bool = false

    /// Determines whether or not this trace is visible.
    /// 
    /// If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the
    /// legend itself is visible).
    public var visible: Shared.Visible? = nil

    /// Determines whether or not an item corresponding to this trace is shown in the legend.
    public var showLegend: Bool? = nil

    /// Sets the legend group for this trace.
    /// 
    /// Traces part of the same legend group hide/show at the same time when toggling legend items.
    public var legendGroup: String? = nil

    /// Sets the opacity of the trace.
    public var opacity: Double? = nil

    /// Sets the trace name.
    /// 
    /// The trace name appear as the legend item and on hover.
    public var name: String? = nil

    /// Assign an id to this trace, Use this to provide object constancy between traces during
    /// animations and transitions.
    public var uid: String? = nil

    /// Assigns id labels to each datum.
    /// 
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    public var ids: [String]? = nil

    /// Assigns extra data each datum.
    /// 
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    public var customData: [String]? = nil

    /// Assigns extra meta information associated with this trace that can be used in various text
    /// attributes.
    /// 
    /// Attributes such as trace `name`, graph, axis and colorbar `title.text`, annotation `text`
    /// `rangeselector`, `updatemenues` and `sliders` `label` text all support `meta`. To access the
    /// trace `meta` values in an attribute in the same trace, simply use `%{meta[i]}` where `i` is the
    /// index or key of the `meta` item in question. To access trace `meta` in layout attributes, use
    /// `%{data[n[.meta[i]}` where `i` is the index or key of the `meta` and `n` is the trace index.
    public var meta: Data<Anything>? = nil

    /// Array containing integer indices of selected points.
    /// 
    /// Has an effect only for traces that support selections. Note that an empty array means an empty
    /// selection where the `unselected` are turned on for all points, whereas, any other non-array
    /// values means no selection all where the `selected` and `unselected` styles have no effect.
    public var selectedPoints: Anything? = nil

    public var hoverLabel: Shared.HoverLabel? = nil

    public var stream: Shared.Stream? = nil

    public var transforms: [Shared.Transform]? = nil

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
    public var uiRevision: Anything? = nil

    /// An identifier for this carpet, so that `scattercarpet` and `contourcarpet` traces can specify a
    /// carpet plot on which they lie
    public var carpet: String? = nil

    /// Sets the a-axis coordinates.
    public var a: AData? = nil

    /// Sets the b-axis coordinates.
    public var b: BData? = nil

    /// Determines the drawing mode for this scatter trace.
    /// 
    /// If the provided `mode` includes *text* then the `text` elements appear at the coordinates.
    /// Otherwise, the `text` elements appear on hover. If there are less than 20 points and the trace
    /// is not stacked then the default is *lines+markers*. Otherwise, *lines*.
    public var mode: Shared.Mode? = nil

    /// Sets text elements associated with each (a,b) point.
    /// 
    /// If a single string, the same string appears over all the data points. If an array of strings,
    /// the items are mapped in order to the the data points in (a,b). If trace `hoverinfo` contains a
    /// *text* flag and *hovertext* is not set, these elements will be seen in the hover labels.
    public var text: Data<String>? = nil

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
    /// `arrayOk: true`) are available. variables `a`, `b` and `text`.
    public var textTemplate: Data<String>? = nil

    /// Sets hover text elements associated with each (a,b) point.
    /// 
    /// If a single string, the same string appears over all the data points. If an array of strings,
    /// the items are mapped in order to the the data points in (a,b). To be seen, trace `hoverinfo`
    /// must contain a *text* flag.
    public var hoverText: Data<String>? = nil

    public var line: Shared.ShapedSmoothDashedLine? = nil

    /// Determines whether or not gaps (i.e.
    /// 
    /// {nan} or missing values) in the provided data arrays are connected.
    public var connectGaps: Bool? = nil

    /// Sets the area to fill with a solid color.
    /// 
    /// Use with `fillcolor` if not *none*. scatterternary has a subset of the options available to
    /// scatter. *toself* connects the endpoints of the trace (or each segment of the trace if it has
    /// gaps) into a closed shape. *tonext* fills the space between two traces if one completely
    /// encloses the other (eg consecutive contour lines), and behaves like *toself* if there is no
    /// trace before it. *tonext* should not be used if one trace does not enclose the other.
    public var fill: Shared.AreaFill? = nil

    /// Sets the fill color.
    /// 
    /// Defaults to a half-transparent variant of the line color, marker color, or marker line color,
    /// whichever is available.
    public var fillColor: Color? = nil

    public var marker: Shared.GradientMarker? = nil

    /// Sets the text font.
    public var textFont: Shared.VariableFont? = nil

    /// Sets the positions of the `text` elements with respects to the (x,y) coordinates.
    public var textPosition: Shared.TextPosition? = nil

    public struct Selected: Encodable {
        public struct Marker: Encodable {
            /// Sets the marker opacity of selected points.
            public var opacity: Double? = nil
        
            /// Sets the marker color of selected points.
            public var color: Color? = nil
        
            /// Sets the marker size of selected points.
            public var size: Double? = nil
        
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
        public var marker: Marker? = nil
    
        public struct TextFont: Encodable {
            /// Sets the text font color of selected points.
            public var color: Color? = nil
        
            /// Creates `TextFont` object with specified properties.
            /// 
            /// - Parameters:
            ///   - color: Sets the text font color of selected points.
            public init(color: Color? = nil) {
                self.color = color
            }
            
        }
        public var textFont: TextFont? = nil
    
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
    public var selected: Selected? = nil

    public struct Unselected: Encodable {
        public struct Marker: Encodable {
            /// Sets the marker opacity of unselected points, applied only when a selection exists.
            public var opacity: Double? = nil
        
            /// Sets the marker color of unselected points, applied only when a selection exists.
            public var color: Color? = nil
        
            /// Sets the marker size of unselected points, applied only when a selection exists.
            public var size: Double? = nil
        
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
        public var marker: Marker? = nil
    
        public struct TextFont: Encodable {
            /// Sets the text font color of unselected points, applied only when a selection exists.
            public var color: Color? = nil
        
            /// Creates `TextFont` object with specified properties.
            /// 
            /// - Parameters:
            ///   - color: Sets the text font color of unselected points, applied only when a selection exists.
            public init(color: Color? = nil) {
                self.color = color
            }
            
        }
        public var textFont: TextFont? = nil
    
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
    public var unselected: Unselected? = nil

    /// Determines which trace information appear on hover.
    /// 
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    public struct HoverInfo: OptionSet, Encodable {
        public let rawValue: Int
        public static var a: HoverInfo { HoverInfo(rawValue: 1 << 0) }
        public static var b: HoverInfo { HoverInfo(rawValue: 1 << 1) }
        public static var text: HoverInfo { HoverInfo(rawValue: 1 << 2) }
        public static var name: HoverInfo { HoverInfo(rawValue: 1 << 3) }
        public static var all: HoverInfo { HoverInfo(rawValue: 1 << 4) }
        public static var none: HoverInfo { HoverInfo(rawValue: 1 << 5) }
        public static var skip: HoverInfo { HoverInfo(rawValue: 1 << 6) }
        
        public init(rawValue: Int) {
            self.rawValue = rawValue
        }
        
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["a"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["b"] }
            if (self.rawValue & 1 << 2) != 0 { options += ["text"] }
            if (self.rawValue & 1 << 3) != 0 { options += ["name"] }
            if (self.rawValue & 1 << 4) != 0 { options += ["all"] }
            if (self.rawValue & 1 << 5) != 0 { options += ["none"] }
            if (self.rawValue & 1 << 6) != 0 { options += ["skip"] }
            var container = encoder.singleValueContainer()
            try container.encode(options.joined(separator: "+"))
        }
    }
    /// Determines which trace information appear on hover.
    /// 
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    public var hoverInfo: HoverInfo? = nil

    /// Do the hover effects highlight individual points (markers or line points) or do they highlight
    /// filled regions? If the fill is *toself* or *tonext* and there are no markers or text, then the
    /// default is *fills*, otherwise it is *points*.
    public var hoverOn: Shared.HoverOn? = nil

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
    public var hoverTemplate: Data<String>? = nil

    /// Sets a reference between this trace's x coordinates and a 2D cartesian x axis.
    /// 
    /// If *x* (the default value), the x coordinates refer to `layout.xaxis`. If *x2*, the x
    /// coordinates refer to `layout.xaxis2`, and so on.
    public var xAxis: Layout.XAxis = Layout.XAxis(uid: 1)

    /// Sets a reference between this trace's y coordinates and a 2D cartesian y axis.
    /// 
    /// If *y* (the default value), the y coordinates refer to `layout.yaxis`. If *y2*, the y
    /// coordinates refer to `layout.yaxis2`, and so on.
    public var yAxis: Layout.YAxis = Layout.YAxis(uid: 1)

    /// Decoding and encoding keys compatible with Plotly schema.
    enum CodingKeys: String, CodingKey {
        case type
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
        case carpet
        case a
        case b
        case mode
        case text
        case textTemplate = "texttemplate"
        case hoverText = "hovertext"
        case line
        case connectGaps = "connectgaps"
        case fill
        case fillColor = "fillcolor"
        case marker
        case textFont = "textfont"
        case textPosition = "textposition"
        case selected
        case unselected
        case hoverInfo = "hoverinfo"
        case hoverOn = "hoveron"
        case hoverTemplate = "hovertemplate"
        case xAxis = "xaxis"
        case yAxis = "yaxis"
    }
    
    /// Creates `ScatterCarpet` object from the most frequently used properties.
    /// 
    /// - Parameters:
    ///   - name: Sets the trace name.
    ///   - a: Sets the a-axis coordinates.
    ///   - b: Sets the b-axis coordinates.
    ///   - mode: Determines the drawing mode for this scatter trace.
    ///   - text: Sets text elements associated with each (a,b) point.
    ///   - hoverText: Sets hover text elements associated with each (a,b) point.
    ///   - line:
    ///   - marker:
    public init(name: String? = nil, a: AData? = nil, b: BData? = nil, mode: Shared.Mode? = nil,
            text: Data<String>? = nil, hoverText: Data<String>? = nil, line: Shared.ShapedSmoothDashedLine?
            = nil, marker: Shared.GradientMarker? = nil) {
        self.name = name
        self.a = a
        self.b = b
        self.mode = mode
        self.text = text
        self.hoverText = hoverText
        self.line = line
        self.marker = marker
    }
    
    /// Creates `ScatterCarpet` object with specified properties.
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
    ///   - carpet: An identifier for this carpet, so that `scattercarpet` and `contourcarpet` traces can
    ///   specify a carpet plot on which they lie
    ///   - a: Sets the a-axis coordinates.
    ///   - b: Sets the b-axis coordinates.
    ///   - mode: Determines the drawing mode for this scatter trace.
    ///   - text: Sets text elements associated with each (a,b) point.
    ///   - textTemplate: Template string used for rendering the information text that appear on points.
    ///   - hoverText: Sets hover text elements associated with each (a,b) point.
    ///   - line:
    ///   - connectGaps: Determines whether or not gaps (i.e.
    ///   - fill: Sets the area to fill with a solid color.
    ///   - fillColor: Sets the fill color.
    ///   - marker:
    ///   - textFont: Sets the text font.
    ///   - textPosition: Sets the positions of the `text` elements with respects to the (x,y)
    ///   coordinates.
    ///   - selected:
    ///   - unselected:
    ///   - hoverInfo: Determines which trace information appear on hover.
    ///   - hoverOn: Do the hover effects highlight individual points (markers or line points) or do they
    ///   highlight filled regions? If the fill is *toself* or *tonext* and there are no markers or text,
    ///   then the default is *fills*, otherwise it is *points*.
    ///   - hoverTemplate: Template string used for rendering the information that appear on hover box.
    ///   - xAxis: Sets a reference between this trace's x coordinates and a 2D cartesian x axis.
    ///   - yAxis: Sets a reference between this trace's y coordinates and a 2D cartesian y axis.
    public init(visible: Shared.Visible? = nil, showLegend: Bool? = nil, legendGroup: String? = nil,
            opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [String]? = nil,
            customData: [String]? = nil, meta: Data<Anything>? = nil, selectedPoints: Anything? = nil,
            hoverLabel: Shared.HoverLabel? = nil, stream: Shared.Stream? = nil, transforms:
            [Shared.Transform]? = nil, uiRevision: Anything? = nil, carpet: String? = nil, a: AData? = nil,
            b: BData? = nil, mode: Shared.Mode? = nil, text: Data<String>? = nil, textTemplate:
            Data<String>? = nil, hoverText: Data<String>? = nil, line: Shared.ShapedSmoothDashedLine? = nil,
            connectGaps: Bool? = nil, fill: Shared.AreaFill? = nil, fillColor: Color? = nil, marker:
            Shared.GradientMarker? = nil, textFont: Shared.VariableFont? = nil, textPosition:
            Shared.TextPosition? = nil, selected: Selected? = nil, unselected: Unselected? = nil, hoverInfo:
            HoverInfo? = nil, hoverOn: Shared.HoverOn? = nil, hoverTemplate: Data<String>? = nil, xAxis:
            Layout.XAxis = Layout.XAxis(uid: 1), yAxis: Layout.YAxis = Layout.YAxis(uid: 1)) {
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
        self.carpet = carpet
        self.a = a
        self.b = b
        self.mode = mode
        self.text = text
        self.textTemplate = textTemplate
        self.hoverText = hoverText
        self.line = line
        self.connectGaps = connectGaps
        self.fill = fill
        self.fillColor = fillColor
        self.marker = marker
        self.textFont = textFont
        self.textPosition = textPosition
        self.selected = selected
        self.unselected = unselected
        self.hoverInfo = hoverInfo
        self.hoverOn = hoverOn
        self.hoverTemplate = hoverTemplate
        self.xAxis = xAxis
        self.yAxis = yAxis
    }
    
    /// Encodes the object in a format compatible with Plotly.
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
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
        try container.encodeIfPresent(carpet, forKey: .carpet)
        if let a = self.a {
            try a.encode(toPlotly: container.superEncoder(forKey: .a))
        }
        if let b = self.b {
            try b.encode(toPlotly: container.superEncoder(forKey: .b))
        }
        try container.encodeIfPresent(mode, forKey: .mode)
        try container.encodeIfPresent(text, forKey: .text)
        try container.encodeIfPresent(textTemplate, forKey: .textTemplate)
        try container.encodeIfPresent(hoverText, forKey: .hoverText)
        try container.encodeIfPresent(line, forKey: .line)
        try container.encodeIfPresent(connectGaps, forKey: .connectGaps)
        try container.encodeIfPresent(fill, forKey: .fill)
        try container.encodeIfPresent(fillColor, forKey: .fillColor)
        try container.encodeIfPresent(marker, forKey: .marker)
        try container.encodeIfPresent(textFont, forKey: .textFont)
        try container.encodeIfPresent(textPosition, forKey: .textPosition)
        try container.encodeIfPresent(selected, forKey: .selected)
        try container.encodeIfPresent(unselected, forKey: .unselected)
        try container.encodeIfPresent(hoverInfo, forKey: .hoverInfo)
        try container.encodeIfPresent(hoverOn, forKey: .hoverOn)
        try container.encodeIfPresent(hoverTemplate, forKey: .hoverTemplate)
        try container.encode("x\(xAxis.uid)", forKey: .xAxis)
        try container.encode("y\(yAxis.uid)", forKey: .yAxis)
    }
}