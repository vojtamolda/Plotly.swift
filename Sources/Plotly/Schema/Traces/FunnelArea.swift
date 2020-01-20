/// Visualize stages in a process using area-encoded trapezoids. 
///
/// This trace can be used to show data in a part-to-whole representation similar to a "pie" trace,
/// wherein each item appears in a single stage. See also the "funnel" trace type for a different
/// approach to visualizing funnel data.
public struct FunnelArea: Trace {
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#type) |
    /// [Python](https://plot.ly/python/reference/#type) |
    /// [R](https://plot.ly/r/reference/#type)
    public let type: String = "funnelarea"

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
    /// [JavaScript](https://plot.ly/javascript/reference/#funnelarea-visible) |
    /// [Python](https://plot.ly/python/reference/#funnelarea-visible) |
    /// [R](https://plot.ly/r/reference/#funnelarea-visible)
    public var visible: Shared.Visible?

    /// Determines whether or not an item corresponding to this trace is shown in the legend.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnelarea-showlegend) |
    /// [Python](https://plot.ly/python/reference/#funnelarea-showlegend) |
    /// [R](https://plot.ly/r/reference/#funnelarea-showlegend)
    public var showLegend: Bool?

    /// Sets the legend group for this trace. 
    ///
    /// Traces part of the same legend group hide/show at the same time when toggling legend items.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnelarea-legendgroup) |
    /// [Python](https://plot.ly/python/reference/#funnelarea-legendgroup) |
    /// [R](https://plot.ly/r/reference/#funnelarea-legendgroup)
    public var legendGroup: String?

    /// Sets the opacity of the trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnelarea-opacity) |
    /// [Python](https://plot.ly/python/reference/#funnelarea-opacity) |
    /// [R](https://plot.ly/r/reference/#funnelarea-opacity)
    public var opacity: Double?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnelarea-name) |
    /// [Python](https://plot.ly/python/reference/#funnelarea-name) |
    /// [R](https://plot.ly/r/reference/#funnelarea-name)
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnelarea-uid) |
    /// [Python](https://plot.ly/python/reference/#funnelarea-uid) |
    /// [R](https://plot.ly/r/reference/#funnelarea-uid)
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnelarea-ids) |
    /// [Python](https://plot.ly/python/reference/#funnelarea-ids) |
    /// [R](https://plot.ly/r/reference/#funnelarea-ids)
    public var ids: [Double]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnelarea-customdata) |
    /// [Python](https://plot.ly/python/reference/#funnelarea-customdata) |
    /// [R](https://plot.ly/r/reference/#funnelarea-customdata)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#funnelarea-meta) |
    /// [Python](https://plot.ly/python/reference/#funnelarea-meta) |
    /// [R](https://plot.ly/r/reference/#funnelarea-meta)
    public var meta: Anything?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnelarea-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#funnelarea-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#funnelarea-hoverlabel)
    public var hoverLabel: Shared.HoverLabel?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnelarea-stream) |
    /// [Python](https://plot.ly/python/reference/#funnelarea-stream) |
    /// [R](https://plot.ly/r/reference/#funnelarea-stream)
    public var stream: Shared.Stream?

    /// An array of operations that manipulate the trace data, for example filtering or sorting the data arrays.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnelarea-transforms-items-transform) |
    /// [Python](https://plot.ly/python/reference/#funnelarea-transforms-items-transform) |
    /// [R](https://plot.ly/r/reference/#funnelarea-transforms-items-transform)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#funnelarea-uirevision) |
    /// [Python](https://plot.ly/python/reference/#funnelarea-uirevision) |
    /// [R](https://plot.ly/r/reference/#funnelarea-uirevision)
    public var uiRevision: Anything?

    /// Sets the sector labels. 
    ///
    /// If `labels` entries are duplicated, we sum associated `values` or simply count occurrences if
    /// `values` is not provided. For other array attributes (including color) we use the first
    /// non-empty entry among all occurrences of the label.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnelarea-labels) |
    /// [Python](https://plot.ly/python/reference/#funnelarea-labels) |
    /// [R](https://plot.ly/r/reference/#funnelarea-labels)
    public var labels: [Double]?

    /// Alternate to `labels`. 
    ///
    /// Builds a numeric set of labels. Use with `dlabel` where `label0` is the starting label and
    /// `dlabel` the step.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnelarea-label0) |
    /// [Python](https://plot.ly/python/reference/#funnelarea-label0) |
    /// [R](https://plot.ly/r/reference/#funnelarea-label0)
    public var label0: Double?

    /// Sets the label step. 
    ///
    /// See `label0` for more info.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnelarea-dlabel) |
    /// [Python](https://plot.ly/python/reference/#funnelarea-dlabel) |
    /// [R](https://plot.ly/r/reference/#funnelarea-dlabel)
    public var dLabel: Double?

    /// Sets the values of the sectors. 
    ///
    /// If omitted, we count occurrences of each label.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnelarea-values) |
    /// [Python](https://plot.ly/python/reference/#funnelarea-values) |
    /// [R](https://plot.ly/r/reference/#funnelarea-values)
    public var values: [Double]?

    /// # Used By
    /// `FunnelArea.marker` |
    public struct Marker: Encodable {
        /// Sets the color of each sector. 
        ///
        /// If not specified, the default trace color set is used to pick the sector colors.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#funnelarea-marker-colors) |
        /// [Python](https://plot.ly/python/reference/#funnelarea-marker-colors) |
        /// [R](https://plot.ly/r/reference/#funnelarea-marker-colors)
        public var colors: [Double]?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#funnelarea-marker-line) |
        /// [Python](https://plot.ly/python/reference/#funnelarea-marker-line) |
        /// [R](https://plot.ly/r/reference/#funnelarea-marker-line)
        public var line: Shared.Line?
    
        public init(colors: [Double]? = nil, line: Shared.Line? = nil) {
            self.colors = colors
            self.line = line
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnelarea-marker) |
    /// [Python](https://plot.ly/python/reference/#funnelarea-marker) |
    /// [R](https://plot.ly/r/reference/#funnelarea-marker)
    public var marker: Marker?

    /// Sets text elements associated with each sector. 
    ///
    /// If trace `textinfo` contains a *text* flag, these elements will be seen on the chart. If trace
    /// `hoverinfo` contains a *text* flag and *hovertext* is not set, these elements will be seen in
    /// the hover labels.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnelarea-text) |
    /// [Python](https://plot.ly/python/reference/#funnelarea-text) |
    /// [R](https://plot.ly/r/reference/#funnelarea-text)
    public var text: [Double]?

    /// Sets hover text elements associated with each sector. 
    ///
    /// If a single string, the same string appears for all data points. If an array of string, the
    /// items are mapped in order of this trace's sectors. To be seen, trace `hoverinfo` must contain a
    /// *text* flag.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnelarea-hovertext) |
    /// [Python](https://plot.ly/python/reference/#funnelarea-hovertext) |
    /// [R](https://plot.ly/r/reference/#funnelarea-hovertext)
    public var hoverText: String?

    /// If there are multiple funnelareas that should be sized according to their totals, link them by providing a non-empty group id here shared by every trace in the same group.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnelarea-scalegroup) |
    /// [Python](https://plot.ly/python/reference/#funnelarea-scalegroup) |
    /// [R](https://plot.ly/r/reference/#funnelarea-scalegroup)
    public var scaleGroup: String?

    /// Determines which trace information appear on the graph.
    ///
    /// # Used By
    /// `FunnelArea.textInfo` |
    public struct TextInfo: OptionSet, Encodable {
        public let rawValue: Int
    
        public static let label = TextInfo(rawValue: 1 << 0)
        public static let text = TextInfo(rawValue: 1 << 1)
        public static let value = TextInfo(rawValue: 1 << 2)
        public static let percent = TextInfo(rawValue: 1 << 3)
        public static let none = TextInfo(rawValue: 1 << 4)
    
        public init(rawValue: Int) { self.rawValue = rawValue }
    
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["label"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["text"] }
            if (self.rawValue & 1 << 2) != 0 { options += ["value"] }
            if (self.rawValue & 1 << 3) != 0 { options += ["percent"] }
            if (self.rawValue & 1 << 4) != 0 { options += ["none"] }
            var container = encoder.singleValueContainer()
            try container.encode(options.joined(separator: "+"))
        }
    }
    /// Determines which trace information appear on the graph.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnelarea-textinfo) |
    /// [Python](https://plot.ly/python/reference/#funnelarea-textinfo) |
    /// [R](https://plot.ly/r/reference/#funnelarea-textinfo)
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
    /// `arrayOk: true`) are available. variables `label`, `color`, `value`, `text` and `percent`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnelarea-texttemplate) |
    /// [Python](https://plot.ly/python/reference/#funnelarea-texttemplate) |
    /// [R](https://plot.ly/r/reference/#funnelarea-texttemplate)
    public var textTemplate: String?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    ///
    /// # Used By
    /// `FunnelArea.hoverInfo` |
    public struct HoverInfo: OptionSet, Encodable {
        public let rawValue: Int
    
        public static let label = HoverInfo(rawValue: 1 << 0)
        public static let text = HoverInfo(rawValue: 1 << 1)
        public static let value = HoverInfo(rawValue: 1 << 2)
        public static let percent = HoverInfo(rawValue: 1 << 3)
        public static let name = HoverInfo(rawValue: 1 << 4)
        public static let all = HoverInfo(rawValue: 1 << 5)
        public static let none = HoverInfo(rawValue: 1 << 6)
        public static let skip = HoverInfo(rawValue: 1 << 7)
    
        public init(rawValue: Int) { self.rawValue = rawValue }
    
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["label"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["text"] }
            if (self.rawValue & 1 << 2) != 0 { options += ["value"] }
            if (self.rawValue & 1 << 3) != 0 { options += ["percent"] }
            if (self.rawValue & 1 << 4) != 0 { options += ["name"] }
            if (self.rawValue & 1 << 5) != 0 { options += ["all"] }
            if (self.rawValue & 1 << 6) != 0 { options += ["none"] }
            if (self.rawValue & 1 << 7) != 0 { options += ["skip"] }
            var container = encoder.singleValueContainer()
            try container.encode(options.joined(separator: "+"))
        }
    }
    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnelarea-hoverinfo) |
    /// [Python](https://plot.ly/python/reference/#funnelarea-hoverinfo) |
    /// [R](https://plot.ly/r/reference/#funnelarea-hoverinfo)
    public var hoverInfo: HoverInfo?

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
    /// true`) are available. variables `label`, `color`, `value`, `text` and `percent`. Anything
    /// contained in tag `<extra>` is displayed in the secondary box, for example
    /// "<extra>{fullData.name}</extra>". To hide the secondary box completely, use an empty tag
    /// `<extra></extra>`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnelarea-hovertemplate) |
    /// [Python](https://plot.ly/python/reference/#funnelarea-hovertemplate) |
    /// [R](https://plot.ly/r/reference/#funnelarea-hovertemplate)
    public var hoverTemplate: String?

    /// Specifies the location of the `textinfo`.
    ///
    /// # Used By
    /// `FunnelArea.textPosition` |
    public enum TextPosition: String, Encodable {
        case inside
        case none
    }
    /// Specifies the location of the `textinfo`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnelarea-textposition) |
    /// [Python](https://plot.ly/python/reference/#funnelarea-textposition) |
    /// [R](https://plot.ly/r/reference/#funnelarea-textposition)
    public var textPosition: TextPosition?

    /// Sets the font used for `textinfo`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnelarea-textfont) |
    /// [Python](https://plot.ly/python/reference/#funnelarea-textfont) |
    /// [R](https://plot.ly/r/reference/#funnelarea-textfont)
    public var textFont: Shared.Font?

    /// Sets the font used for `textinfo` lying inside the sector.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnelarea-insidetextfont) |
    /// [Python](https://plot.ly/python/reference/#funnelarea-insidetextfont) |
    /// [R](https://plot.ly/r/reference/#funnelarea-insidetextfont)
    public var insideTextFont: Shared.Font?

    /// # Used By
    /// `FunnelArea.title` |
    public struct Title: Encodable {
        /// Sets the title of the chart. 
        ///
        /// If it is empty, no title is displayed. Note that before the existence of `title.text`, the
        /// title's contents used to be defined as the `title` attribute itself. This behavior has been
        /// deprecated.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#funnelarea-title-text) |
        /// [Python](https://plot.ly/python/reference/#funnelarea-title-text) |
        /// [R](https://plot.ly/r/reference/#funnelarea-title-text)
        public var text: String?
    
        /// Sets the font used for `title`. 
        ///
        /// Note that the title's font used to be set by the now deprecated `titlefont` attribute.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#funnelarea-title-font) |
        /// [Python](https://plot.ly/python/reference/#funnelarea-title-font) |
        /// [R](https://plot.ly/r/reference/#funnelarea-title-font)
        public var font: Shared.Font?
    
        /// Specifies the location of the `title`. 
        ///
        /// Note that the title's position used to be set by the now deprecated `titleposition` attribute.
        ///
        /// # Used By
        /// `FunnelArea.Title.position` |
        public enum Position: String, Encodable {
            case topLeft = "top left"
            case topCenter = "top center"
            case topRight = "top right"
        }
        /// Specifies the location of the `title`. 
        ///
        /// Note that the title's position used to be set by the now deprecated `titleposition` attribute.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#funnelarea-title-position) |
        /// [Python](https://plot.ly/python/reference/#funnelarea-title-position) |
        /// [R](https://plot.ly/r/reference/#funnelarea-title-position)
        public var position: Position?
    
        public init(text: String? = nil, font: Shared.Font? = nil, position: Position? = nil) {
            self.text = text
            self.font = font
            self.position = position
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnelarea-title) |
    /// [Python](https://plot.ly/python/reference/#funnelarea-title) |
    /// [R](https://plot.ly/r/reference/#funnelarea-title)
    public var title: Title?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnelarea-domain) |
    /// [Python](https://plot.ly/python/reference/#funnelarea-domain) |
    /// [R](https://plot.ly/r/reference/#funnelarea-domain)
    public var domain: Shared.Domain?

    /// Sets the ratio between height and width
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnelarea-aspectratio) |
    /// [Python](https://plot.ly/python/reference/#funnelarea-aspectratio) |
    /// [R](https://plot.ly/r/reference/#funnelarea-aspectratio)
    public var aspectRatio: Double?

    /// Sets the ratio between bottom length and maximum top length.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnelarea-baseratio) |
    /// [Python](https://plot.ly/python/reference/#funnelarea-baseratio) |
    /// [R](https://plot.ly/r/reference/#funnelarea-baseratio)
    public var baseRatio: Double?

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
        case hoverLabel = "hoverlabel"
        case stream
        case transforms = "transform"
        case uiRevision = "uirevision"
        case labels
        case label0
        case dLabel = "dlabel"
        case values
        case marker
        case text
        case hoverText = "hovertext"
        case scaleGroup = "scalegroup"
        case textInfo = "textinfo"
        case textTemplate = "texttemplate"
        case hoverInfo = "hoverinfo"
        case hoverTemplate = "hovertemplate"
        case textPosition = "textposition"
        case textFont = "textfont"
        case insideTextFont = "insidetextfont"
        case title
        case domain
        case aspectRatio = "aspectratio"
        case baseRatio = "baseratio"
    }
    
    public init(visible: Shared.Visible? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, hoverLabel: Shared.HoverLabel? = nil, stream: Shared.Stream? = nil, transforms: [Shared.Transform]? = nil, uiRevision: Anything? = nil, labels: [Double]? = nil, label0: Double? = nil, dLabel: Double? = nil, values: [Double]? = nil, marker: Marker? = nil, text: [Double]? = nil, hoverText: String? = nil, scaleGroup: String? = nil, textInfo: TextInfo? = nil, textTemplate: String? = nil, hoverInfo: HoverInfo? = nil, hoverTemplate: String? = nil, textPosition: TextPosition? = nil, textFont: Shared.Font? = nil, insideTextFont: Shared.Font? = nil, title: Title? = nil, domain: Shared.Domain? = nil, aspectRatio: Double? = nil, baseRatio: Double? = nil) {
        self.visible = visible
        self.showLegend = showLegend
        self.legendGroup = legendGroup
        self.opacity = opacity
        self.name = name
        self.uid = uid
        self.ids = ids
        self.customData = customData
        self.meta = meta
        self.hoverLabel = hoverLabel
        self.stream = stream
        self.transforms = transforms
        self.uiRevision = uiRevision
        self.labels = labels
        self.label0 = label0
        self.dLabel = dLabel
        self.values = values
        self.marker = marker
        self.text = text
        self.hoverText = hoverText
        self.scaleGroup = scaleGroup
        self.textInfo = textInfo
        self.textTemplate = textTemplate
        self.hoverInfo = hoverInfo
        self.hoverTemplate = hoverTemplate
        self.textPosition = textPosition
        self.textFont = textFont
        self.insideTextFont = insideTextFont
        self.title = title
        self.domain = domain
        self.aspectRatio = aspectRatio
        self.baseRatio = baseRatio
    }
}