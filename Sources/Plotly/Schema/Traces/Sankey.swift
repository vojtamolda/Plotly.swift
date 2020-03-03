/// Sankey plots for network flow data analysis.
/// 
/// The nodes are specified in `nodes` and the links between sources and targets in `links`. The
/// colors are set in `nodes[i].color` and `links[i].color`, otherwise defaults are used.
/// 
/// - SeeAlso:
///   Documentation for 
///   [Python](https://plot.ly/python/reference/#sankey), 
///   [JavaScript](https://plot.ly/javascript/reference/#sankey) or 
///   [R](https://plot.ly/r/reference/#sankey)
public struct Sankey: Trace {
    public let type: String = "sankey"

    public let animatable: Bool = false

    /// Determines whether or not this trace is visible.
    /// 
    /// If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the
    /// legend itself is visible).
    public var visible: Shared.Visible? = nil

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

    public var stream: Shared.Stream? = nil

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

    /// Determines which trace information appear on hover.
    /// 
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired. Note that this attribute is superseded by
    /// `node.hoverinfo` and `node.hoverinfo` for nodes and links respectively.
    public struct HoverInfo: OptionSet, Encodable {
        public let rawValue: Int
        public static var all: HoverInfo { HoverInfo(rawValue: 1 << 0) }
        public static var none: HoverInfo { HoverInfo(rawValue: 1 << 1) }
        public static var skip: HoverInfo { HoverInfo(rawValue: 1 << 2) }
        
        public init(rawValue: Int) {
            self.rawValue = rawValue
        }
        
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["all"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["none"] }
            if (self.rawValue & 1 << 2) != 0 { options += ["skip"] }
            var container = encoder.singleValueContainer()
            try container.encode(options.joined(separator: "+"))
        }
    }
    /// Determines which trace information appear on hover.
    /// 
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired. Note that this attribute is superseded by
    /// `node.hoverinfo` and `node.hoverinfo` for nodes and links respectively.
    public var hoverInfo: HoverInfo? = nil

    public var hoverLabel: Shared.HoverLabel? = nil

    public var domain: Shared.Domain? = nil

    /// Sets the orientation of the Sankey diagram.
    public var orientation: Shared.Orientation? = nil

    /// Sets the value formatting rule using d3 formatting mini-language which is similar to those of
    /// Python.
    /// 
    /// See https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
    public var valueFormat: String? = nil

    /// Adds a unit to follow the value in the hover tooltip.
    /// 
    /// Add a space if a separation is necessary from the value.
    public var valueSuffix: String? = nil

    /// If value is `snap` (the default), the node arrangement is assisted by automatic snapping of
    /// elements to preserve space between nodes specified via `nodepad`.
    /// 
    /// If value is `perpendicular`, the nodes can only move along a line perpendicular to the flow. If
    /// value is `freeform`, the nodes can freely move on the plane. If value is `fixed`, the nodes are
    /// stationary.
    public enum Arrangement: String, Encodable {
        case snap
        case perpendicular
        case freeform
        case fixed
    }
    /// If value is `snap` (the default), the node arrangement is assisted by automatic snapping of
    /// elements to preserve space between nodes specified via `nodepad`.
    /// 
    /// If value is `perpendicular`, the nodes can only move along a line perpendicular to the flow. If
    /// value is `freeform`, the nodes can freely move on the plane. If value is `fixed`, the nodes are
    /// stationary.
    public var arrangement: Arrangement? = nil

    /// Sets the font for node labels
    public var textFont: Shared.Font? = nil

    /// The nodes of the Sankey plot.
    public struct Node: Encodable {
        /// The shown name of the node.
        public var label: [Double]? = nil
    
        /// Groups of nodes.
        /// 
        /// Each group is defined by an array with the indices of the nodes it contains. Multiple groups can
        /// be specified.
        public var groups: InfoArray? = nil
    
        /// The normalized horizontal position of the node.
        public var x: [Double]? = nil
    
        /// The normalized vertical position of the node.
        public var y: [Double]? = nil
    
        /// Sets the `node` color.
        /// 
        /// It can be a single value, or an array for specifying color for each `node`. If `node.color` is
        /// omitted, then the default `Plotly` color palette will be cycled through to have a variety of
        /// colors. These defaults are not fully opaque, to allow some visibility of what is beneath the
        /// node.
        public var coloring: Coloring? = nil
    
        public var line: Shared.VariableLine? = nil
    
        /// Sets the padding (in px) between the `nodes`.
        public var padding: Double? = nil
    
        /// Sets the thickness (in px) of the `nodes`.
        public var thickness: Double? = nil
    
        /// Determines which trace information appear when hovering nodes.
        /// 
        /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
        /// click and hover events are still fired.
        public enum HoverInfo: String, Encodable {
            case all
            case none
            case skip
        }
        /// Determines which trace information appear when hovering nodes.
        /// 
        /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
        /// click and hover events are still fired.
        public var hoverInfo: HoverInfo? = nil
    
        public var hoverLabel: Shared.HoverLabel? = nil
    
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
        public var hoverTemplate: Data<String>? = nil
    
        /// Decoding and encoding keys compatible with Plotly schema.
        enum CodingKeys: String, CodingKey {
            case label
            case groups
            case x
            case y
            case coloring = "color"
            case line
            case padding = "pad"
            case thickness
            case hoverInfo = "hoverinfo"
            case hoverLabel = "hoverlabel"
            case hoverTemplate = "hovertemplate"
        }
        
        /// Creates `Node` object with specified properties.
        /// 
        /// - Parameters:
        ///   - label: The shown name of the node.
        ///   - groups: Groups of nodes.
        ///   - x: The normalized horizontal position of the node.
        ///   - y: The normalized vertical position of the node.
        ///   - coloring: Sets the `node` color.
        ///   - line:
        ///   - padding: Sets the padding (in px) between the `nodes`.
        ///   - thickness: Sets the thickness (in px) of the `nodes`.
        ///   - hoverInfo: Determines which trace information appear when hovering nodes.
        ///   - hoverLabel:
        ///   - hoverTemplate: Template string used for rendering the information that appear on hover box.
        public init(label: [Double]? = nil, groups: InfoArray? = nil, x: [Double]? = nil, y: [Double]? =
                nil, coloring: Coloring? = nil, line: Shared.VariableLine? = nil, padding: Double? = nil,
                thickness: Double? = nil, hoverInfo: HoverInfo? = nil, hoverLabel: Shared.HoverLabel? = nil,
                hoverTemplate: Data<String>? = nil) {
            self.label = label
            self.groups = groups
            self.x = x
            self.y = y
            self.coloring = coloring
            self.line = line
            self.padding = padding
            self.thickness = thickness
            self.hoverInfo = hoverInfo
            self.hoverLabel = hoverLabel
            self.hoverTemplate = hoverTemplate
        }
        
    }
    /// The nodes of the Sankey plot.
    public var node: Node? = nil

    /// The links of the Sankey plot.
    public struct Link: Encodable {
        /// The shown name of the link.
        public var label: [Double]? = nil
    
        /// Sets the `link` color.
        /// 
        /// It can be a single value, or an array for specifying color for each `link`. If `link.color` is
        /// omitted, then by default, a translucent grey link will be used.
        public var coloring: Coloring? = nil
    
        public var line: Shared.VariableLine? = nil
    
        /// An integer number `[0..nodes.length - 1]` that represents the source node.
        public var source: [Double]? = nil
    
        /// An integer number `[0..nodes.length - 1]` that represents the target node.
        public var target: [Double]? = nil
    
        /// A numeric value representing the flow volume value.
        public var value: [Double]? = nil
    
        /// Determines which trace information appear when hovering links.
        /// 
        /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
        /// click and hover events are still fired.
        public enum HoverInfo: String, Encodable {
            case all
            case none
            case skip
        }
        /// Determines which trace information appear when hovering links.
        /// 
        /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
        /// click and hover events are still fired.
        public var hoverInfo: HoverInfo? = nil
    
        public var hoverLabel: Shared.HoverLabel? = nil
    
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
        public var hoverTemplate: Data<String>? = nil
    
        public struct ConcentrationScales: Encodable {
            /// The label of the links to color based on their concentration within a flow.
            public var label: String? = nil
        
            /// Sets the upper bound of the color domain.
            public var cMax: Double? = nil
        
            /// Sets the lower bound of the color domain.
            public var cMin: Double? = nil
        
            /// Sets the colorscale.
            /// 
            /// The colorscale must be an array containing arrays mapping a normalized value to an rgb, rgba,
            /// hex, hsl, hsv, or named color string. At minimum, a mapping for the lowest (0) and highest (1)
            /// values are required. For example, `[[0, 'rgb(0,0,255)'], [1, 'rgb(255,0,0)']]`. To control the
            /// bounds of the colorscale in color space, use`cmin` and `cmax`. Alternatively, `colorscale` may
            /// be a palette name string of the following list:
            /// Greys,YlGnBu,Greens,YlOrRd,Bluered,RdBu,Reds,Blues,Picnic,Rainbow,Portland,Jet,Hot,Blackbody,Earth,Electric,Viridis,Cividis.
            public var colorScale: ColorScale? = nil
        
            /// When used in a template, named items are created in the output figure in addition to any items
            /// the figure already has in this array.
            /// 
            /// You can modify these items in the output figure by making your own item with `templateitemname`
            /// matching this `name` alongside your modifications (including `visible: false` or `enabled:
            /// false` to hide it). Has no effect outside of a template.
            public var name: String? = nil
        
            /// Used to refer to a named item in this array in the template.
            /// 
            /// Named items from the template will be created even without a matching item in the input figure,
            /// but you can modify one by making an item with `templateitemname` matching its `name`, alongside
            /// your modifications (including `visible: false` or `enabled: false` to hide it). If there is no
            /// template or no matching item, this item will be hidden unless you explicitly show it with
            /// `visible: true`.
            public var templateItemName: String? = nil
        
            /// Decoding and encoding keys compatible with Plotly schema.
            enum CodingKeys: String, CodingKey {
                case label
                case cMax = "cmax"
                case cMin = "cmin"
                case colorScale = "colorscale"
                case name
                case templateItemName = "templateitemname"
            }
            
            /// Creates `ConcentrationScales` object with specified properties.
            /// 
            /// - Parameters:
            ///   - label: The label of the links to color based on their concentration within a flow.
            ///   - cMax: Sets the upper bound of the color domain.
            ///   - cMin: Sets the lower bound of the color domain.
            ///   - colorScale: Sets the colorscale.
            ///   - name: When used in a template, named items are created in the output figure in addition to any
            ///   items the figure already has in this array.
            ///   - templateItemName: Used to refer to a named item in this array in the template.
            public init(label: String? = nil, cMax: Double? = nil, cMin: Double? = nil, colorScale:
                    ColorScale? = nil, name: String? = nil, templateItemName: String? = nil) {
                self.label = label
                self.cMax = cMax
                self.cMin = cMin
                self.colorScale = colorScale
                self.name = name
                self.templateItemName = templateItemName
            }
            
        }
        public var colorScales: [ConcentrationScales]? = nil
    
        /// Decoding and encoding keys compatible with Plotly schema.
        enum CodingKeys: String, CodingKey {
            case label
            case coloring = "color"
            case line
            case source
            case target
            case value
            case hoverInfo = "hoverinfo"
            case hoverLabel = "hoverlabel"
            case hoverTemplate = "hovertemplate"
            case colorScales = "colorscales"
        }
        
        /// Creates `Link` object with specified properties.
        /// 
        /// - Parameters:
        ///   - label: The shown name of the link.
        ///   - coloring: Sets the `link` color.
        ///   - line:
        ///   - source: An integer number `[0..nodes.length - 1]` that represents the source node.
        ///   - target: An integer number `[0..nodes.length - 1]` that represents the target node.
        ///   - value: A numeric value representing the flow volume value.
        ///   - hoverInfo: Determines which trace information appear when hovering links.
        ///   - hoverLabel:
        ///   - hoverTemplate: Template string used for rendering the information that appear on hover box.
        ///   - colorScales:
        public init(label: [Double]? = nil, coloring: Coloring? = nil, line: Shared.VariableLine? = nil,
                source: [Double]? = nil, target: [Double]? = nil, value: [Double]? = nil, hoverInfo: HoverInfo?
                = nil, hoverLabel: Shared.HoverLabel? = nil, hoverTemplate: Data<String>? = nil, colorScales:
                [ConcentrationScales]? = nil) {
            self.label = label
            self.coloring = coloring
            self.line = line
            self.source = source
            self.target = target
            self.value = value
            self.hoverInfo = hoverInfo
            self.hoverLabel = hoverLabel
            self.hoverTemplate = hoverTemplate
            self.colorScales = colorScales
        }
        
    }
    /// The links of the Sankey plot.
    public var link: Link? = nil

    /// Decoding and encoding keys compatible with Plotly schema.
    enum CodingKeys: String, CodingKey {
        case type
        case visible
        case name
        case uid
        case ids
        case customData = "customdata"
        case meta
        case selectedPoints = "selectedpoints"
        case stream
        case uiRevision = "uirevision"
        case hoverInfo = "hoverinfo"
        case hoverLabel = "hoverlabel"
        case domain
        case orientation
        case valueFormat = "valueformat"
        case valueSuffix = "valuesuffix"
        case arrangement
        case textFont = "textfont"
        case node
        case link
    }
    
    /// Creates `Sankey` object with specified properties.
    /// 
    /// - Parameters:
    ///   - visible: Determines whether or not this trace is visible.
    ///   - name: Sets the trace name.
    ///   - uid: Assign an id to this trace, Use this to provide object constancy between traces during
    ///   animations and transitions.
    ///   - ids: Assigns id labels to each datum.
    ///   - customData: Assigns extra data each datum.
    ///   - meta: Assigns extra meta information associated with this trace that can be used in various
    ///   text attributes.
    ///   - selectedPoints: Array containing integer indices of selected points.
    ///   - stream:
    ///   - uiRevision: Controls persistence of some user-driven changes to the trace: `constraintrange`
    ///   in `parcoords` traces, as well as some `editable: true` modifications such as `name` and
    ///   `colorbar.title`.
    ///   - hoverInfo: Determines which trace information appear on hover.
    ///   - hoverLabel:
    ///   - domain:
    ///   - orientation: Sets the orientation of the Sankey diagram.
    ///   - valueFormat: Sets the value formatting rule using d3 formatting mini-language which is similar
    ///   to those of Python.
    ///   - valueSuffix: Adds a unit to follow the value in the hover tooltip.
    ///   - arrangement: If value is `snap` (the default), the node arrangement is assisted by automatic
    ///   snapping of elements to preserve space between nodes specified via `nodepad`.
    ///   - textFont: Sets the font for node labels
    ///   - node: The nodes of the Sankey plot.
    ///   - link: The links of the Sankey plot.
    public init(visible: Shared.Visible? = nil, name: String? = nil, uid: String? = nil, ids:
            [String]? = nil, customData: [String]? = nil, meta: Data<Anything>? = nil, selectedPoints:
            Anything? = nil, stream: Shared.Stream? = nil, uiRevision: Anything? = nil, hoverInfo:
            HoverInfo? = nil, hoverLabel: Shared.HoverLabel? = nil, domain: Shared.Domain? = nil,
            orientation: Shared.Orientation? = nil, valueFormat: String? = nil, valueSuffix: String? = nil,
            arrangement: Arrangement? = nil, textFont: Shared.Font? = nil, node: Node? = nil, link: Link? =
            nil) {
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
    }
    
}