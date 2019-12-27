/// Sankey plots for network flow data analysis. 
///
/// The nodes are specified in `nodes` and the links between sources and targets in `links`. The
/// colors are set in `nodes[i].color` and `links[i].color`, otherwise defaults are used.
public struct Sankey: Trace {
    public let type: String = "sankey"

    public let animatable: Bool = false

    public var visible: Visible0?

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

    public var stream: Stream0?

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

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired. Note that this attribute is superseded by
    /// `node.hoverinfo` and `node.hoverinfo` for nodes and links respectively.
    /// - traces/sankey/attributes/hoverinfo
    public struct HoverInfo: OptionSet, Encodable {
        public let rawValue: Int
    
        public static let all = HoverInfo(rawValue: 1 << 0)
        public static let none = HoverInfo(rawValue: 1 << 1)
        public static let skip = HoverInfo(rawValue: 1 << 2)
    
        public init(rawValue: Int) { self.rawValue = rawValue }
    
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["all"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["none"] }
            if (self.rawValue & 1 << 2) != 0 { options += ["skip"] }
            var container = encoder.singleValueContainer()
            try container.encode(options.joined(separator: "+"))
        }
    }
    public var hoverInfo: HoverInfo?

    public var hoverLabel: HoverLabel1?

    public var domain: Domain0?

    public var orientation: Orientation0?

    /// Sets the value formatting rule using d3 formatting mini-language which is similar to those of Python. 
    ///
    /// See https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
    public var valueFormat: String?

    /// Adds a unit to follow the value in the hover tooltip. 
    ///
    /// Add a space if a separation is necessary from the value.
    public var valueSuffix: String?

    /// If value is `snap` (the default), the node arrangement is assisted by automatic snapping of elements to preserve space between nodes specified via `nodepad`. 
    ///
    /// If value is `perpendicular`, the nodes can only move along a line perpendicular to the flow. If
    /// value is `freeform`, the nodes can freely move on the plane. If value is `fixed`, the nodes are
    /// stationary.
    /// - traces/sankey/attributes/arrangement
    public enum Arrangement: String, Encodable {
        case snap
        case perpendicular
        case freeform
        case fixed
    }
    public var arrangement: Arrangement?

    public var textFont: Font0?

    /// The nodes of the Sankey plot.
    /// - traces/sankey/attributes/node
    public struct Node: Encodable {
        /// The shown name of the node.
        public var label: [Double]?
    
        /// Groups of nodes. 
        ///
        /// Each group is defined by an array with the indices of the nodes it contains. Multiple groups can
        /// be specified.
        public var groups: InfoArray?
    
        /// The normalized horizontal position of the node.
        public var x: [Double]?
    
        /// The normalized vertical position of the node.
        public var y: [Double]?
    
        /// Sets the `node` color. 
        ///
        /// It can be a single value, or an array for specifying color for each `node`. If `node.color` is
        /// omitted, then the default `Plotly` color palette will be cycled through to have a variety of
        /// colors. These defaults are not fully opaque, to allow some visibility of what is beneath the
        /// node.
        public var color: Color?
    
        public var line: Line6?
    
        /// Sets the padding (in px) between the `nodes`.
        public var padding: Double?
    
        /// Sets the thickness (in px) of the `nodes`.
        public var thickness: Double?
    
        public var hoverInfo: HoverInfo0?
    
        public var hoverLabel: HoverLabel1?
    
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
        /// true`) are available. variables `value` and `label`. Anything contained in tag `<extra>` is
        /// displayed in the secondary box, for example "<extra>{fullData.name}</extra>". To hide the
        /// secondary box completely, use an empty tag `<extra></extra>`.
        public var hoverTemplate: String?
    
        /// Sets the source reference on plot.ly for  label .
        public var labelSource: String?
    
        /// Sets the source reference on plot.ly for  x .
        public var xSource: String?
    
        /// Sets the source reference on plot.ly for  y .
        public var ySource: String?
    
        /// Sets the source reference on plot.ly for  color .
        public var colorSource: String?
    
        /// Sets the source reference on plot.ly for  hovertemplate .
        public var hoverTemplateSource: String?
    
        public init(label: [Double]? = nil, groups: InfoArray? = nil, x: [Double]? = nil, y: [Double]? = nil, color: Color? = nil, line: Line6? = nil, padding: Double? = nil, thickness: Double? = nil, hoverInfo: HoverInfo0? = nil, hoverLabel: HoverLabel1? = nil, hoverTemplate: String? = nil, labelSource: String? = nil, xSource: String? = nil, ySource: String? = nil, colorSource: String? = nil, hoverTemplateSource: String? = nil) {
            self.label = label
            self.groups = groups
            self.x = x
            self.y = y
            self.color = color
            self.line = line
            self.padding = padding
            self.thickness = thickness
            self.hoverInfo = hoverInfo
            self.hoverLabel = hoverLabel
            self.hoverTemplate = hoverTemplate
            self.labelSource = labelSource
            self.xSource = xSource
            self.ySource = ySource
            self.colorSource = colorSource
            self.hoverTemplateSource = hoverTemplateSource
        }
    }
    public var node: Node?

    /// The links of the Sankey plot.
    /// - traces/sankey/attributes/link
    public struct Link: Encodable {
        /// The shown name of the link.
        public var label: [Double]?
    
        /// Sets the `link` color. 
        ///
        /// It can be a single value, or an array for specifying color for each `link`. If `link.color` is
        /// omitted, then by default, a translucent grey link will be used.
        public var color: Color?
    
        public var line: Line6?
    
        /// An integer number `[0..nodes.length - 1]` that represents the source node.
        public var source: [Double]?
    
        /// An integer number `[0..nodes.length - 1]` that represents the target node.
        public var target: [Double]?
    
        /// A numeric value representing the flow volume value.
        public var value: [Double]?
    
        public var hoverInfo: HoverInfo0?
    
        public var hoverLabel: HoverLabel1?
    
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
        /// true`) are available. variables `value` and `label`. Anything contained in tag `<extra>` is
        /// displayed in the secondary box, for example "<extra>{fullData.name}</extra>". To hide the
        /// secondary box completely, use an empty tag `<extra></extra>`.
        public var hoverTemplate: String?
    
        public var colorScales: TickFormatStops0?
    
        /// Sets the source reference on plot.ly for  label .
        public var labelSource: String?
    
        /// Sets the source reference on plot.ly for  color .
        public var colorSource: String?
    
        /// Sets the source reference on plot.ly for  source .
        public var sourceSource: String?
    
        /// Sets the source reference on plot.ly for  target .
        public var targetSource: String?
    
        /// Sets the source reference on plot.ly for  value .
        public var valueSource: String?
    
        /// Sets the source reference on plot.ly for  hovertemplate .
        public var hoverTemplateSource: String?
    
        public init(label: [Double]? = nil, color: Color? = nil, line: Line6? = nil, source: [Double]? = nil, target: [Double]? = nil, value: [Double]? = nil, hoverInfo: HoverInfo0? = nil, hoverLabel: HoverLabel1? = nil, hoverTemplate: String? = nil, colorScales: TickFormatStops0? = nil, labelSource: String? = nil, colorSource: String? = nil, sourceSource: String? = nil, targetSource: String? = nil, valueSource: String? = nil, hoverTemplateSource: String? = nil) {
            self.label = label
            self.color = color
            self.line = line
            self.source = source
            self.target = target
            self.value = value
            self.hoverInfo = hoverInfo
            self.hoverLabel = hoverLabel
            self.hoverTemplate = hoverTemplate
            self.colorScales = colorScales
            self.labelSource = labelSource
            self.colorSource = colorSource
            self.sourceSource = sourceSource
            self.targetSource = targetSource
            self.valueSource = valueSource
            self.hoverTemplateSource = hoverTemplateSource
        }
    }
    public var link: Link?

    /// Sets the source reference on plot.ly for  ids .
    public var idsSource: String?

    /// Sets the source reference on plot.ly for  customdata .
    public var customDataSource: String?

    /// Sets the source reference on plot.ly for  meta .
    public var metaSource: String?

    public init(visible: Visible0? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, selectedPoints: Anything? = nil, stream: Stream0? = nil, uiRevision: Anything? = nil, hoverInfo: HoverInfo? = nil, hoverLabel: HoverLabel1? = nil, domain: Domain0? = nil, orientation: Orientation0? = nil, valueFormat: String? = nil, valueSuffix: String? = nil, arrangement: Arrangement? = nil, textFont: Font0? = nil, node: Node? = nil, link: Link? = nil, idsSource: String? = nil, customDataSource: String? = nil, metaSource: String? = nil) {
        self.visible = visible
        self.name = name
        self.uid = uid
        self.ids = ids
        self.customData = customData
        self.meta = meta
        self.selectedPoints = selectedPoints
        self.stream = stream
        self.uiRevision = uiRevision
        self.hoverInfo = hoverInfo
        self.hoverLabel = hoverLabel
        self.domain = domain
        self.orientation = orientation
        self.valueFormat = valueFormat
        self.valueSuffix = valueSuffix
        self.arrangement = arrangement
        self.textFont = textFont
        self.node = node
        self.link = link
        self.idsSource = idsSource
        self.customDataSource = customDataSource
        self.metaSource = metaSource
    }
}