/// Sankey plots for network flow data analysis. 
///
/// The nodes are specified in `nodes` and the links between sources and targets in `links`. The
/// colors are set in `nodes[i].color` and `links[i].color`, otherwise defaults are used.
public struct Sankey: Trace {
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#type) |
    /// [Python](https://plot.ly/python/reference/#type) |
    /// [R](https://plot.ly/r/reference/#type)
    public let type: String = "sankey"

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
    /// [JavaScript](https://plot.ly/javascript/reference/#sankey-visible) |
    /// [Python](https://plot.ly/python/reference/#sankey-visible) |
    /// [R](https://plot.ly/r/reference/#sankey-visible)
    public var visible: Shared.Visible?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#sankey-name) |
    /// [Python](https://plot.ly/python/reference/#sankey-name) |
    /// [R](https://plot.ly/r/reference/#sankey-name)
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#sankey-uid) |
    /// [Python](https://plot.ly/python/reference/#sankey-uid) |
    /// [R](https://plot.ly/r/reference/#sankey-uid)
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#sankey-ids) |
    /// [Python](https://plot.ly/python/reference/#sankey-ids) |
    /// [R](https://plot.ly/r/reference/#sankey-ids)
    public var ids: [String]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#sankey-customdata) |
    /// [Python](https://plot.ly/python/reference/#sankey-customdata) |
    /// [R](https://plot.ly/r/reference/#sankey-customdata)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#sankey-meta) |
    /// [Python](https://plot.ly/python/reference/#sankey-meta) |
    /// [R](https://plot.ly/r/reference/#sankey-meta)
    public var meta: ArrayOrAnything?

    /// Array containing integer indices of selected points. 
    ///
    /// Has an effect only for traces that support selections. Note that an empty array means an empty
    /// selection where the `unselected` are turned on for all points, whereas, any other non-array
    /// values means no selection all where the `selected` and `unselected` styles have no effect.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#sankey-selectedpoints) |
    /// [Python](https://plot.ly/python/reference/#sankey-selectedpoints) |
    /// [R](https://plot.ly/r/reference/#sankey-selectedpoints)
    public var selectedPoints: Anything?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#sankey-stream) |
    /// [Python](https://plot.ly/python/reference/#sankey-stream) |
    /// [R](https://plot.ly/r/reference/#sankey-stream)
    public var stream: Shared.Stream?

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
    /// [JavaScript](https://plot.ly/javascript/reference/#sankey-uirevision) |
    /// [Python](https://plot.ly/python/reference/#sankey-uirevision) |
    /// [R](https://plot.ly/r/reference/#sankey-uirevision)
    public var uiRevision: Anything?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired. Note that this attribute is superseded by
    /// `node.hoverinfo` and `node.hoverinfo` for nodes and links respectively.
    ///
    /// # Used By
    /// `Sankey.hoverInfo` |
    public struct HoverInfo: OptionSet, Encodable {
        public let rawValue: Int
    
        public static var all: HoverInfo { HoverInfo(rawValue: 1 << 0) }
        public static var none: HoverInfo { HoverInfo(rawValue: 1 << 1) }
        public static var skip: HoverInfo { HoverInfo(rawValue: 1 << 2) }
    
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
    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired. Note that this attribute is superseded by
    /// `node.hoverinfo` and `node.hoverinfo` for nodes and links respectively.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#sankey-hoverinfo) |
    /// [Python](https://plot.ly/python/reference/#sankey-hoverinfo) |
    /// [R](https://plot.ly/r/reference/#sankey-hoverinfo)
    public var hoverInfo: HoverInfo?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#sankey-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#sankey-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#sankey-hoverlabel)
    public var hoverLabel: Shared.HoverLabel?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#sankey-domain) |
    /// [Python](https://plot.ly/python/reference/#sankey-domain) |
    /// [R](https://plot.ly/r/reference/#sankey-domain)
    public var domain: Shared.Domain?

    /// Sets the orientation of the Sankey diagram.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#sankey-orientation) |
    /// [Python](https://plot.ly/python/reference/#sankey-orientation) |
    /// [R](https://plot.ly/r/reference/#sankey-orientation)
    public var orientation: Shared.Orientation?

    /// Sets the value formatting rule using d3 formatting mini-language which is similar to those of Python. 
    ///
    /// See https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#sankey-valueformat) |
    /// [Python](https://plot.ly/python/reference/#sankey-valueformat) |
    /// [R](https://plot.ly/r/reference/#sankey-valueformat)
    public var valueFormat: String?

    /// Adds a unit to follow the value in the hover tooltip. 
    ///
    /// Add a space if a separation is necessary from the value.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#sankey-valuesuffix) |
    /// [Python](https://plot.ly/python/reference/#sankey-valuesuffix) |
    /// [R](https://plot.ly/r/reference/#sankey-valuesuffix)
    public var valueSuffix: String?

    /// If value is `snap` (the default), the node arrangement is assisted by automatic snapping of elements to preserve space between nodes specified via `nodepad`. 
    ///
    /// If value is `perpendicular`, the nodes can only move along a line perpendicular to the flow. If
    /// value is `freeform`, the nodes can freely move on the plane. If value is `fixed`, the nodes are
    /// stationary.
    ///
    /// # Used By
    /// `Sankey.arrangement` |
    public enum Arrangement: String, Encodable {
        case snap
        case perpendicular
        case freeform
        case fixed
    }
    /// If value is `snap` (the default), the node arrangement is assisted by automatic snapping of elements to preserve space between nodes specified via `nodepad`. 
    ///
    /// If value is `perpendicular`, the nodes can only move along a line perpendicular to the flow. If
    /// value is `freeform`, the nodes can freely move on the plane. If value is `fixed`, the nodes are
    /// stationary.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#sankey-arrangement) |
    /// [Python](https://plot.ly/python/reference/#sankey-arrangement) |
    /// [R](https://plot.ly/r/reference/#sankey-arrangement)
    public var arrangement: Arrangement?

    /// Sets the font for node labels
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#sankey-textfont) |
    /// [Python](https://plot.ly/python/reference/#sankey-textfont) |
    /// [R](https://plot.ly/r/reference/#sankey-textfont)
    public var textFont: Shared.Font?

    /// The nodes of the Sankey plot.
    ///
    /// # Used By
    /// `Sankey.node` |
    public struct Node: Encodable {
        /// The shown name of the node.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#sankey-node-label) |
        /// [Python](https://plot.ly/python/reference/#sankey-node-label) |
        /// [R](https://plot.ly/r/reference/#sankey-node-label)
        public var label: [Double]?
    
        /// Groups of nodes. 
        ///
        /// Each group is defined by an array with the indices of the nodes it contains. Multiple groups can
        /// be specified.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#sankey-node-groups) |
        /// [Python](https://plot.ly/python/reference/#sankey-node-groups) |
        /// [R](https://plot.ly/r/reference/#sankey-node-groups)
        public var groups: InfoArray?
    
        /// The normalized horizontal position of the node.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#sankey-node-x) |
        /// [Python](https://plot.ly/python/reference/#sankey-node-x) |
        /// [R](https://plot.ly/r/reference/#sankey-node-x)
        public var x: [Double]?
    
        /// The normalized vertical position of the node.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#sankey-node-y) |
        /// [Python](https://plot.ly/python/reference/#sankey-node-y) |
        /// [R](https://plot.ly/r/reference/#sankey-node-y)
        public var y: [Double]?
    
        /// Sets the `node` color. 
        ///
        /// It can be a single value, or an array for specifying color for each `node`. If `node.color` is
        /// omitted, then the default `Plotly` color palette will be cycled through to have a variety of
        /// colors. These defaults are not fully opaque, to allow some visibility of what is beneath the
        /// node.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#sankey-node-color) |
        /// [Python](https://plot.ly/python/reference/#sankey-node-color) |
        /// [R](https://plot.ly/r/reference/#sankey-node-color)
        public var color: ArrayOrColor?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#sankey-node-line) |
        /// [Python](https://plot.ly/python/reference/#sankey-node-line) |
        /// [R](https://plot.ly/r/reference/#sankey-node-line)
        public var line: Shared.Line?
    
        /// Sets the padding (in px) between the `nodes`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#sankey-node-pad) |
        /// [Python](https://plot.ly/python/reference/#sankey-node-pad) |
        /// [R](https://plot.ly/r/reference/#sankey-node-pad)
        public var padding: Double?
    
        /// Sets the thickness (in px) of the `nodes`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#sankey-node-thickness) |
        /// [Python](https://plot.ly/python/reference/#sankey-node-thickness) |
        /// [R](https://plot.ly/r/reference/#sankey-node-thickness)
        public var thickness: Double?
    
        /// Determines which trace information appear when hovering nodes. 
        ///
        /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
        /// click and hover events are still fired.
        ///
        /// # Used By
        /// `Sankey.Node.hoverInfo` |
        public enum HoverInfo: String, Encodable {
            case all
            case none
            case skip
        }
        /// Determines which trace information appear when hovering nodes. 
        ///
        /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
        /// click and hover events are still fired.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#sankey-node-hoverinfo) |
        /// [Python](https://plot.ly/python/reference/#sankey-node-hoverinfo) |
        /// [R](https://plot.ly/r/reference/#sankey-node-hoverinfo)
        public var hoverInfo: HoverInfo?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#sankey-node-hoverlabel) |
        /// [Python](https://plot.ly/python/reference/#sankey-node-hoverlabel) |
        /// [R](https://plot.ly/r/reference/#sankey-node-hoverlabel)
        public var hoverLabel: Shared.HoverLabel?
    
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
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#sankey-node-hovertemplate) |
        /// [Python](https://plot.ly/python/reference/#sankey-node-hovertemplate) |
        /// [R](https://plot.ly/r/reference/#sankey-node-hovertemplate)
        public var hoverTemplate: ArrayOrString?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case label
            case groups
            case x
            case y
            case color
            case line
            case padding = "pad"
            case thickness
            case hoverInfo = "hoverinfo"
            case hoverLabel = "hoverlabel"
            case hoverTemplate = "hovertemplate"
        }
        
        public init(label: [Double]? = nil, groups: InfoArray? = nil, x: [Double]? = nil, y: [Double]? = nil, color: ArrayOrColor? = nil, line: Shared.Line? = nil, padding: Double? = nil, thickness: Double? = nil, hoverInfo: HoverInfo? = nil, hoverLabel: Shared.HoverLabel? = nil, hoverTemplate: ArrayOrString? = nil) {
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
        }
    }
    /// The nodes of the Sankey plot.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#sankey-node) |
    /// [Python](https://plot.ly/python/reference/#sankey-node) |
    /// [R](https://plot.ly/r/reference/#sankey-node)
    public var node: Node?

    /// The links of the Sankey plot.
    ///
    /// # Used By
    /// `Sankey.link` |
    public struct Link: Encodable {
        /// The shown name of the link.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#sankey-link-label) |
        /// [Python](https://plot.ly/python/reference/#sankey-link-label) |
        /// [R](https://plot.ly/r/reference/#sankey-link-label)
        public var label: [Double]?
    
        /// Sets the `link` color. 
        ///
        /// It can be a single value, or an array for specifying color for each `link`. If `link.color` is
        /// omitted, then by default, a translucent grey link will be used.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#sankey-link-color) |
        /// [Python](https://plot.ly/python/reference/#sankey-link-color) |
        /// [R](https://plot.ly/r/reference/#sankey-link-color)
        public var color: ArrayOrColor?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#sankey-link-line) |
        /// [Python](https://plot.ly/python/reference/#sankey-link-line) |
        /// [R](https://plot.ly/r/reference/#sankey-link-line)
        public var line: Shared.Line?
    
        /// An integer number `[0..nodes.length - 1]` that represents the source node.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#sankey-link-source) |
        /// [Python](https://plot.ly/python/reference/#sankey-link-source) |
        /// [R](https://plot.ly/r/reference/#sankey-link-source)
        public var source: [Double]?
    
        /// An integer number `[0..nodes.length - 1]` that represents the target node.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#sankey-link-target) |
        /// [Python](https://plot.ly/python/reference/#sankey-link-target) |
        /// [R](https://plot.ly/r/reference/#sankey-link-target)
        public var target: [Double]?
    
        /// A numeric value representing the flow volume value.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#sankey-link-value) |
        /// [Python](https://plot.ly/python/reference/#sankey-link-value) |
        /// [R](https://plot.ly/r/reference/#sankey-link-value)
        public var value: [Double]?
    
        /// Determines which trace information appear when hovering links. 
        ///
        /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
        /// click and hover events are still fired.
        ///
        /// # Used By
        /// `Sankey.Link.hoverInfo` |
        public enum HoverInfo: String, Encodable {
            case all
            case none
            case skip
        }
        /// Determines which trace information appear when hovering links. 
        ///
        /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
        /// click and hover events are still fired.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#sankey-link-hoverinfo) |
        /// [Python](https://plot.ly/python/reference/#sankey-link-hoverinfo) |
        /// [R](https://plot.ly/r/reference/#sankey-link-hoverinfo)
        public var hoverInfo: HoverInfo?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#sankey-link-hoverlabel) |
        /// [Python](https://plot.ly/python/reference/#sankey-link-hoverlabel) |
        /// [R](https://plot.ly/r/reference/#sankey-link-hoverlabel)
        public var hoverLabel: Shared.HoverLabel?
    
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
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#sankey-link-hovertemplate) |
        /// [Python](https://plot.ly/python/reference/#sankey-link-hovertemplate) |
        /// [R](https://plot.ly/r/reference/#sankey-link-hovertemplate)
        public var hoverTemplate: ArrayOrString?
    
        /// # Used By
        /// `Sankey.Link.colorScales` |
        public struct ConcentrationScales: Encodable {
            /// The label of the links to color based on their concentration within a flow.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#sankey-link-colorscales-items-concentrationscales-label) |
            /// [Python](https://plot.ly/python/reference/#sankey-link-colorscales-items-concentrationscales-label) |
            /// [R](https://plot.ly/r/reference/#sankey-link-colorscales-items-concentrationscales-label)
            public var label: String?
        
            /// Sets the upper bound of the color domain.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#sankey-link-colorscales-items-concentrationscales-cmax) |
            /// [Python](https://plot.ly/python/reference/#sankey-link-colorscales-items-concentrationscales-cmax) |
            /// [R](https://plot.ly/r/reference/#sankey-link-colorscales-items-concentrationscales-cmax)
            public var cMax: Double?
        
            /// Sets the lower bound of the color domain.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#sankey-link-colorscales-items-concentrationscales-cmin) |
            /// [Python](https://plot.ly/python/reference/#sankey-link-colorscales-items-concentrationscales-cmin) |
            /// [R](https://plot.ly/r/reference/#sankey-link-colorscales-items-concentrationscales-cmin)
            public var cMin: Double?
        
            /// Sets the colorscale. 
            ///
            /// The colorscale must be an array containing arrays mapping a normalized value to an rgb, rgba,
            /// hex, hsl, hsv, or named color string. At minimum, a mapping for the lowest (0) and highest (1)
            /// values are required. For example, `[[0, 'rgb(0,0,255)'], [1, 'rgb(255,0,0)']]`. To control the
            /// bounds of the colorscale in color space, use`cmin` and `cmax`. Alternatively, `colorscale` may
            /// be a palette name string of the following list:
            /// Greys,YlGnBu,Greens,YlOrRd,Bluered,RdBu,Reds,Blues,Picnic,Rainbow,Portland,Jet,Hot,Blackbody,Earth,Electric,Viridis,Cividis.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#sankey-link-colorscales-items-concentrationscales-colorscale) |
            /// [Python](https://plot.ly/python/reference/#sankey-link-colorscales-items-concentrationscales-colorscale) |
            /// [R](https://plot.ly/r/reference/#sankey-link-colorscales-items-concentrationscales-colorscale)
            public var colorScale: ColorScale?
        
            /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. 
            ///
            /// You can modify these items in the output figure by making your own item with `templateitemname`
            /// matching this `name` alongside your modifications (including `visible: false` or `enabled:
            /// false` to hide it). Has no effect outside of a template.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#sankey-link-colorscales-items-concentrationscales-name) |
            /// [Python](https://plot.ly/python/reference/#sankey-link-colorscales-items-concentrationscales-name) |
            /// [R](https://plot.ly/r/reference/#sankey-link-colorscales-items-concentrationscales-name)
            public var name: String?
        
            /// Used to refer to a named item in this array in the template. 
            ///
            /// Named items from the template will be created even without a matching item in the input figure,
            /// but you can modify one by making an item with `templateitemname` matching its `name`, alongside
            /// your modifications (including `visible: false` or `enabled: false` to hide it). If there is no
            /// template or no matching item, this item will be hidden unless you explicitly show it with
            /// `visible: true`.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#sankey-link-colorscales-items-concentrationscales-templateitemname) |
            /// [Python](https://plot.ly/python/reference/#sankey-link-colorscales-items-concentrationscales-templateitemname) |
            /// [R](https://plot.ly/r/reference/#sankey-link-colorscales-items-concentrationscales-templateitemname)
            public var templateItemName: String?
        
            /// Plotly compatible property encoding
            enum CodingKeys: String, CodingKey {
                case label
                case cMax = "cmax"
                case cMin = "cmin"
                case colorScale = "colorscale"
                case name
                case templateItemName = "templateitemname"
            }
            
            public init(label: String? = nil, cMax: Double? = nil, cMin: Double? = nil, colorScale: ColorScale? = nil, name: String? = nil, templateItemName: String? = nil) {
                self.label = label
                self.cMax = cMax
                self.cMin = cMin
                self.colorScale = colorScale
                self.name = name
                self.templateItemName = templateItemName
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#sankey-link-colorscales) |
        /// [Python](https://plot.ly/python/reference/#sankey-link-colorscales) |
        /// [R](https://plot.ly/r/reference/#sankey-link-colorscales)
        public var colorScales: [ConcentrationScales]?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case label
            case color
            case line
            case source
            case target
            case value
            case hoverInfo = "hoverinfo"
            case hoverLabel = "hoverlabel"
            case hoverTemplate = "hovertemplate"
            case colorScales = "colorscales"
        }
        
        public init(label: [Double]? = nil, color: ArrayOrColor? = nil, line: Shared.Line? = nil, source: [Double]? = nil, target: [Double]? = nil, value: [Double]? = nil, hoverInfo: HoverInfo? = nil, hoverLabel: Shared.HoverLabel? = nil, hoverTemplate: ArrayOrString? = nil, colorScales: [ConcentrationScales]? = nil) {
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
        }
    }
    /// The links of the Sankey plot.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#sankey-link) |
    /// [Python](https://plot.ly/python/reference/#sankey-link) |
    /// [R](https://plot.ly/r/reference/#sankey-link)
    public var link: Link?

    /// Plotly compatible property encoding
    enum CodingKeys: String, CodingKey {
        case type
        case animatable
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
    
    public init(visible: Shared.Visible? = nil, name: String? = nil, uid: String? = nil, ids: [String]? = nil, customData: [String]? = nil, meta: ArrayOrAnything? = nil, selectedPoints: Anything? = nil, stream: Shared.Stream? = nil, uiRevision: Anything? = nil, hoverInfo: HoverInfo? = nil, hoverLabel: Shared.HoverLabel? = nil, domain: Shared.Domain? = nil, orientation: Shared.Orientation? = nil, valueFormat: String? = nil, valueSuffix: String? = nil, arrangement: Arrangement? = nil, textFont: Shared.Font? = nil, node: Node? = nil, link: Link? = nil) {
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