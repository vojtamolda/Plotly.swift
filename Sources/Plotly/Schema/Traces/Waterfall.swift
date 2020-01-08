/// Draws waterfall trace which is useful graph to displays the contribution of various elements (either positive or negative) in a bar chart. 
///
/// The data visualized by the span of the bars is set in `y` if `orientation` is set th *v* (the
/// default) and the labels are set in `x`. By setting `orientation` to *h*, the roles are
/// interchanged.
public struct Waterfall: Trace {
    public let type: String = "waterfall"

    public let animatable: Bool = false

    /// Determines whether or not this trace is visible. 
    ///
    /// If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the
    /// legend itself is visible).
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

    public var hoverLabel: HoverLabel0?

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

    /// An array containing types of values. 
    ///
    /// By default the values are considered as 'relative'. However; it is possible to use 'total' to
    /// compute the sums. Also 'absolute' could be applied to reset the computed total or to declare an
    /// initial value where needed.
    public var measure: [Double]?

    /// Sets where the bar base is drawn (in position axis units).
    public var base: Double?

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

    /// Sets hover text elements associated with each (x,y) pair. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to the this trace's (x,y) coordinates. To be seen, trace `hoverinfo`
    /// must contain a *text* flag.
    public var hoverText: String?

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
    public var hoverTemplate: String?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    /// - traces/waterfall/attributes/hoverinfo
    public struct HoverInfo: OptionSet, Encodable {
        public let rawValue: Int
    
        public static let name = HoverInfo(rawValue: 1 << 0)
        public static let x = HoverInfo(rawValue: 1 << 1)
        public static let y = HoverInfo(rawValue: 1 << 2)
        public static let text = HoverInfo(rawValue: 1 << 3)
        public static let initial = HoverInfo(rawValue: 1 << 4)
        public static let delta = HoverInfo(rawValue: 1 << 5)
        public static let final = HoverInfo(rawValue: 1 << 6)
        public static let all = HoverInfo(rawValue: 1 << 7)
        public static let none = HoverInfo(rawValue: 1 << 8)
        public static let skip = HoverInfo(rawValue: 1 << 9)
    
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
    /// - traces/waterfall/attributes/textinfo
    public struct TextInfo: OptionSet, Encodable {
        public let rawValue: Int
    
        public static let label = TextInfo(rawValue: 1 << 0)
        public static let text = TextInfo(rawValue: 1 << 1)
        public static let initial = TextInfo(rawValue: 1 << 2)
        public static let delta = TextInfo(rawValue: 1 << 3)
        public static let final = TextInfo(rawValue: 1 << 4)
        public static let none = TextInfo(rawValue: 1 << 5)
    
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
    public var textTemplate: String?

    /// Sets text elements associated with each (x,y) pair. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to the this trace's (x,y) coordinates. If trace `hoverinfo` contains a
    /// *text* flag and *hovertext* is not set, these elements will be seen in the hover labels.
    public var text: String?

    /// Specifies the location of the `text`. 
    ///
    /// *inside* positions `text` inside, next to the bar end (rotated and scaled if needed). *outside*
    /// positions `text` outside, next to the bar end (scaled if needed), unless there is another bar
    /// stacked on this one, then the text gets pushed inside. *auto* tries to position `text` inside
    /// the bar, but if the bar is too small and no bar is stacked on this one the text is moved
    /// outside.
    /// - traces/waterfall/attributes/textposition
    public enum TextPosition: String, Encodable {
        case inside
        case outside
        case auto
        case none
    }
    /// Specifies the location of the `text`. 
    ///
    /// *inside* positions `text` inside, next to the bar end (rotated and scaled if needed). *outside*
    /// positions `text` outside, next to the bar end (scaled if needed), unless there is another bar
    /// stacked on this one, then the text gets pushed inside. *auto* tries to position `text` inside
    /// the bar, but if the bar is too small and no bar is stacked on this one the text is moved
    /// outside.
    public var textPosition: TextPosition?

    /// Determines if texts are kept at center or start/end points in `textposition` *inside* mode.
    /// - traces/waterfall/attributes/insidetextanchor
    public enum InsideTextAnchor: String, Encodable {
        case end
        case middle
        case start
    }
    /// Determines if texts are kept at center or start/end points in `textposition` *inside* mode.
    public var insideTextAnchor: InsideTextAnchor?

    /// Sets the angle of the tick labels with respect to the bar. 
    ///
    /// For example, a `tickangle` of -90 draws the tick labels vertically. With *auto* the texts may
    /// automatically be rotated to fit with the maximum size in bars.
    public var textAngle: Angle?

    /// Sets the font used for `text`.
    public var textFont: Font1?

    /// Sets the font used for `text` lying inside the bar.
    public var insideTextFont: Font1?

    /// Sets the font used for `text` lying outside the bar.
    public var outSideTextFont: Font1?

    /// Constrain the size of text inside or outside a bar to be no larger than the bar itself.
    /// - traces/waterfall/attributes/constraintext
    public enum ConstrainText: String, Encodable {
        case inside
        case outside
        case both
        case none
    }
    /// Constrain the size of text inside or outside a bar to be no larger than the bar itself.
    public var constrainText: ConstrainText?

    /// Determines whether the text nodes are clipped about the subplot axes. 
    ///
    /// To show the text nodes above axis lines and tick labels, make sure to set `xaxis.layer` and
    /// `yaxis.layer` to *below traces*.
    public var clipOnAxis: Bool?

    /// Sets the orientation of the bars. 
    ///
    /// With *v* (*h*), the value of the each bar spans along the vertical (horizontal).
    public var orientation: Orientation0?

    /// Shifts the position where the bar is drawn (in position axis units). 
    ///
    /// In *group* barmode, traces that set *offset* will be excluded and drawn in *overlay* mode
    /// instead.
    public var offset: Double?

    /// Sets the bar width (in position axis units).
    public var width: Double?

    public var increasing: Selected1?

    public var decreasing: Selected1?

    public var totals: Selected1?

    /// - traces/waterfall/attributes/connector
    public struct Connector: Encodable {
        public var line: Line0?
    
        /// Sets the shape of connector lines.
        /// - traces/waterfall/attributes/connector/mode
        public enum Mode: String, Encodable {
            case spanning
            case between
        }
        /// Sets the shape of connector lines.
        public var mode: Mode?
    
        /// Determines if connector lines are drawn. 
        public var visible: Bool?
    
        public init(line: Line0? = nil, mode: Mode? = nil, visible: Bool? = nil) {
            self.line = line
            self.mode = mode
            self.visible = visible
        }
    }
    public var connector: Connector?

    /// Set several traces linked to the same position axis or matching axes to the same offsetgroup where bars of the same position coordinate will line up.
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

    /// Sets the source reference on plot.ly for  ids .
    public var idsSource: String?

    /// Sets the source reference on plot.ly for  customdata .
    public var customDataSource: String?

    /// Sets the source reference on plot.ly for  meta .
    public var metaSource: String?

    /// Sets the source reference on plot.ly for  measure .
    public var measureSource: String?

    /// Sets the source reference on plot.ly for  x .
    public var xSource: String?

    /// Sets the source reference on plot.ly for  y .
    public var ySource: String?

    /// Sets the source reference on plot.ly for  hovertext .
    public var hoverTextSource: String?

    /// Sets the source reference on plot.ly for  hovertemplate .
    public var hoverTemplateSource: String?

    /// Sets the source reference on plot.ly for  hoverinfo .
    public var hoverInfoSource: String?

    /// Sets the source reference on plot.ly for  texttemplate .
    public var textTemplateSource: String?

    /// Sets the source reference on plot.ly for  text .
    public var textSource: String?

    /// Sets the source reference on plot.ly for  textposition .
    public var textPositionSource: String?

    /// Sets the source reference on plot.ly for  offset .
    public var offsetSource: String?

    /// Sets the source reference on plot.ly for  width .
    public var widthSource: String?

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
        case idsSource = "idssrc"
        case customDataSource = "customdatasrc"
        case metaSource = "metasrc"
        case measureSource = "measuresrc"
        case xSource = "xsrc"
        case ySource = "ysrc"
        case hoverTextSource = "hovertextsrc"
        case hoverTemplateSource = "hovertemplatesrc"
        case hoverInfoSource = "hoverinfosrc"
        case textTemplateSource = "texttemplatesrc"
        case textSource = "textsrc"
        case textPositionSource = "textpositionsrc"
        case offsetSource = "offsetsrc"
        case widthSource = "widthsrc"
    }
    
    public init(visible: Visible0? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, selectedPoints: Anything? = nil, hoverLabel: HoverLabel0? = nil, stream: Stream0? = nil, transforms: TickFormatStops0? = nil, uiRevision: Anything? = nil, measure: [Double]? = nil, base: Double? = nil, x: [Double]? = nil, x0: Anything? = nil, dx: Double? = nil, y: [Double]? = nil, y0: Anything? = nil, dy: Double? = nil, hoverText: String? = nil, hoverTemplate: String? = nil, hoverInfo: HoverInfo? = nil, textInfo: TextInfo? = nil, textTemplate: String? = nil, text: String? = nil, textPosition: TextPosition? = nil, insideTextAnchor: InsideTextAnchor? = nil, textAngle: Angle? = nil, textFont: Font1? = nil, insideTextFont: Font1? = nil, outSideTextFont: Font1? = nil, constrainText: ConstrainText? = nil, clipOnAxis: Bool? = nil, orientation: Orientation0? = nil, offset: Double? = nil, width: Double? = nil, increasing: Selected1? = nil, decreasing: Selected1? = nil, totals: Selected1? = nil, connector: Connector? = nil, offsetGroup: String? = nil, alignmentGroup: String? = nil, xAxis: SubPlotID? = nil, yAxis: SubPlotID? = nil, idsSource: String? = nil, customDataSource: String? = nil, metaSource: String? = nil, measureSource: String? = nil, xSource: String? = nil, ySource: String? = nil, hoverTextSource: String? = nil, hoverTemplateSource: String? = nil, hoverInfoSource: String? = nil, textTemplateSource: String? = nil, textSource: String? = nil, textPositionSource: String? = nil, offsetSource: String? = nil, widthSource: String? = nil) {
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
        self.idsSource = idsSource
        self.customDataSource = customDataSource
        self.metaSource = metaSource
        self.measureSource = measureSource
        self.xSource = xSource
        self.ySource = ySource
        self.hoverTextSource = hoverTextSource
        self.hoverTemplateSource = hoverTemplateSource
        self.hoverInfoSource = hoverInfoSource
        self.textTemplateSource = textTemplateSource
        self.textSource = textSource
        self.textPositionSource = textPositionSource
        self.offsetSource = offsetSource
        self.widthSource = widthSource
    }
}