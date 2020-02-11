/// A data visualized by the sectors of the pie is set in `values`.
/// 
/// The sector labels are set in `labels`. The sector colors are set in `marker.colors`
/// 
/// - SeeAlso:
///   Documentation for 
///   [Python](https://plot.ly/python/reference/#pie), 
///   [JavaScript](https://plot.ly/javascript/reference/#pie) or 
///   [R](https://plot.ly/r/reference/#pie)
public struct Pie<LabelsData, ValuesData>: Trace where LabelsData: Plotable, ValuesData: Plotable {
    public let type: String = "pie"

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
    public var meta: ArrayOrAnything?

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

    /// Sets the sector labels.
    /// 
    /// If `labels` entries are duplicated, we sum associated `values` or simply count occurrences if
    /// `values` is not provided. For other array attributes (including color) we use the first
    /// non-empty entry among all occurrences of the label.
    public var labels: LabelsData?

    /// Alternate to `labels`.
    /// 
    /// Builds a numeric set of labels. Use with `dlabel` where `label0` is the starting label and
    /// `dlabel` the step.
    public var label0: Double?

    /// Sets the label step.
    /// 
    /// See `label0` for more info.
    public var dLabel: Double?

    /// Sets the values of the sectors.
    /// 
    /// If omitted, we count occurrences of each label.
    public var values: ValuesData?

    public struct Marker: Encodable {
        /// Sets the color of each sector.
        /// 
        /// If not specified, the default trace color set is used to pick the sector colors.
        public var colors: ArrayOrColor?
    
        public var line: Shared.Line?
    
        /// Creates `Marker` object with specified properties.
        /// 
        /// - Parameters:
        ///   - colors: Sets the color of each sector.
        ///   - line:
        public init(colors: ArrayOrColor? = nil, line: Shared.Line? = nil) {
            self.colors = colors
            self.line = line
        }
        
    }
    public var marker: Marker?

    /// Sets text elements associated with each sector.
    /// 
    /// If trace `textinfo` contains a *text* flag, these elements will be seen on the chart. If trace
    /// `hoverinfo` contains a *text* flag and *hovertext* is not set, these elements will be seen in
    /// the hover labels.
    public var text: ArrayOrString?

    /// Sets hover text elements associated with each sector.
    /// 
    /// If a single string, the same string appears for all data points. If an array of string, the
    /// items are mapped in order of this trace's sectors. To be seen, trace `hoverinfo` must contain a
    /// *text* flag.
    public var hoverText: ArrayOrString?

    /// If there are multiple pie charts that should be sized according to their totals, link them by
    /// providing a non-empty group id here shared by every trace in the same group.
    public var scaleGroup: String?

    /// Determines which trace information appear on the graph.
    public struct TextInfo: OptionSet, Encodable {
        public let rawValue: Int
    
        public static var label: TextInfo { TextInfo(rawValue: 1 << 0) }
        public static var text: TextInfo { TextInfo(rawValue: 1 << 1) }
        public static var value: TextInfo { TextInfo(rawValue: 1 << 2) }
        public static var percent: TextInfo { TextInfo(rawValue: 1 << 3) }
        public static var none: TextInfo { TextInfo(rawValue: 1 << 4) }
    
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
    public var textInfo: TextInfo?

    /// Determines which trace information appear on hover.
    /// 
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    public struct HoverInfo: OptionSet, Encodable {
        public let rawValue: Int
    
        public static var label: HoverInfo { HoverInfo(rawValue: 1 << 0) }
        public static var text: HoverInfo { HoverInfo(rawValue: 1 << 1) }
        public static var value: HoverInfo { HoverInfo(rawValue: 1 << 2) }
        public static var percent: HoverInfo { HoverInfo(rawValue: 1 << 3) }
        public static var name: HoverInfo { HoverInfo(rawValue: 1 << 4) }
        public static var all: HoverInfo { HoverInfo(rawValue: 1 << 5) }
        public static var none: HoverInfo { HoverInfo(rawValue: 1 << 6) }
        public static var skip: HoverInfo { HoverInfo(rawValue: 1 << 7) }
    
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
    /// true`) are available. variables `label`, `color`, `value`, `percent` and `text`. Anything
    /// contained in tag `<extra>` is displayed in the secondary box, for example
    /// "<extra>{fullData.name}</extra>". To hide the secondary box completely, use an empty tag
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
    /// `arrayOk: true`) are available. variables `label`, `color`, `value`, `percent` and `text`.
    public var textTemplate: ArrayOrString?

    /// Specifies the location of the `textinfo`.
    public var textPosition: Shared.AdjacentPosition?

    /// Sets the font used for `textinfo`.
    public var textFont: Shared.Font?

    /// Sets the font used for `textinfo` lying inside the sector.
    public var insideTextFont: Shared.Font?

    /// Sets the font used for `textinfo` lying outside the sector.
    public var outSideTextFont: Shared.Font?

    /// Determines whether outside text labels can push the margins.
    public var autoMargin: Bool?

    public struct Title: Encodable {
        /// Sets the title of the chart.
        /// 
        /// If it is empty, no title is displayed. Note that before the existence of `title.text`, the
        /// title's contents used to be defined as the `title` attribute itself. This behavior has been
        /// deprecated.
        public var text: String?
    
        /// Sets the font used for `title`.
        /// 
        /// Note that the title's font used to be set by the now deprecated `titlefont` attribute.
        public var font: Shared.Font?
    
        /// Specifies the location of the `title`.
        /// 
        /// Note that the title's position used to be set by the now deprecated `titleposition` attribute.
        public enum Position: String, Encodable {
            case topLeft = "top left"
            case topCenter = "top center"
            case topRight = "top right"
            case middleCenter = "middle center"
            case bottomLeft = "bottom left"
            case bottomCenter = "bottom center"
            case bottomRight = "bottom right"
        }
        /// Specifies the location of the `title`.
        /// 
        /// Note that the title's position used to be set by the now deprecated `titleposition` attribute.
        public var position: Position?
    
        /// Creates `Title` object with specified properties.
        /// 
        /// - Parameters:
        ///   - text: Sets the title of the chart.
        ///   - font: Sets the font used for `title`.
        ///   - position: Specifies the location of the `title`.
        public init(text: String? = nil, font: Shared.Font? = nil, position: Position? = nil) {
            self.text = text
            self.font = font
            self.position = position
        }
        
    }
    public var title: Title?

    public var domain: Shared.Domain?

    /// Sets the fraction of the radius to cut out of the pie.
    /// 
    /// Use this to make a donut chart.
    public var hole: Double?

    /// Determines whether or not the sectors are reordered from largest to smallest.
    public var sort: Bool?

    /// Specifies the direction at which succeeding sectors follow one another.
    public enum Direction: String, Encodable {
        case clockwise
        case counterClockwise = "counterclockwise"
    }
    /// Specifies the direction at which succeeding sectors follow one another.
    public var direction: Direction?

    /// Instead of the first slice starting at 12 o'clock, rotate to some other angle.
    public var rotation: Double?

    /// Sets the fraction of larger radius to pull the sectors out from the center.
    /// 
    /// This can be a constant to pull all slices apart from each other equally or an array to highlight
    /// one or more slices.
    public var pull: ArrayOrDouble?

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
        case hoverLabel = "hoverlabel"
        case stream
        case transforms
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
        case hoverInfo = "hoverinfo"
        case hoverTemplate = "hovertemplate"
        case textTemplate = "texttemplate"
        case textPosition = "textposition"
        case textFont = "textfont"
        case insideTextFont = "insidetextfont"
        case outSideTextFont = "outsidetextfont"
        case autoMargin = "automargin"
        case title
        case domain
        case hole
        case sort
        case direction
        case rotation
        case pull
    }
    
    /// Creates `Pie` object from the most frequently used properties.
    /// 
    /// - Parameters:
    ///   - name: Sets the trace name.
    ///   - labels: Sets the sector labels.
    ///   - values: Sets the values of the sectors.
    ///   - marker:
    ///   - text: Sets text elements associated with each sector.
    ///   - hoverText: Sets hover text elements associated with each sector.
    public init(name: String? = nil, labels: LabelsData? = nil, values: ValuesData? = nil, marker:
            Marker? = nil, text: ArrayOrString? = nil, hoverText: ArrayOrString? = nil) {
        self.name = name
        self.labels = labels
        self.values = values
        self.marker = marker
        self.text = text
        self.hoverText = hoverText
    }
    
    /// Creates `Pie` object with specified properties.
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
    ///   - hoverLabel:
    ///   - stream:
    ///   - transforms:
    ///   - uiRevision: Controls persistence of some user-driven changes to the trace: `constraintrange`
    ///   in `parcoords` traces, as well as some `editable: true` modifications such as `name` and
    ///   `colorbar.title`.
    ///   - labels: Sets the sector labels.
    ///   - label0: Alternate to `labels`.
    ///   - dLabel: Sets the label step.
    ///   - values: Sets the values of the sectors.
    ///   - marker:
    ///   - text: Sets text elements associated with each sector.
    ///   - hoverText: Sets hover text elements associated with each sector.
    ///   - scaleGroup: If there are multiple pie charts that should be sized according to their totals,
    ///   link them by providing a non-empty group id here shared by every trace in the same group.
    ///   - textInfo: Determines which trace information appear on the graph.
    ///   - hoverInfo: Determines which trace information appear on hover.
    ///   - hoverTemplate: Template string used for rendering the information that appear on hover box.
    ///   - textTemplate: Template string used for rendering the information text that appear on points.
    ///   - textPosition: Specifies the location of the `textinfo`.
    ///   - textFont: Sets the font used for `textinfo`.
    ///   - insideTextFont: Sets the font used for `textinfo` lying inside the sector.
    ///   - outSideTextFont: Sets the font used for `textinfo` lying outside the sector.
    ///   - autoMargin: Determines whether outside text labels can push the margins.
    ///   - title:
    ///   - domain:
    ///   - hole: Sets the fraction of the radius to cut out of the pie.
    ///   - sort: Determines whether or not the sectors are reordered from largest to smallest.
    ///   - direction: Specifies the direction at which succeeding sectors follow one another.
    ///   - rotation: Instead of the first slice starting at 12 o'clock, rotate to some other angle.
    ///   - pull: Sets the fraction of larger radius to pull the sectors out from the center.
    public init(visible: Shared.Visible? = nil, showLegend: Bool? = nil, legendGroup: String? = nil,
            opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [String]? = nil,
            customData: [String]? = nil, meta: ArrayOrAnything? = nil, hoverLabel: Shared.HoverLabel? = nil,
            stream: Shared.Stream? = nil, transforms: [Shared.Transform]? = nil, uiRevision: Anything? =
            nil, labels: LabelsData? = nil, label0: Double? = nil, dLabel: Double? = nil, values:
            ValuesData? = nil, marker: Marker? = nil, text: ArrayOrString? = nil, hoverText: ArrayOrString?
            = nil, scaleGroup: String? = nil, textInfo: TextInfo? = nil, hoverInfo: HoverInfo? = nil,
            hoverTemplate: ArrayOrString? = nil, textTemplate: ArrayOrString? = nil, textPosition:
            Shared.AdjacentPosition? = nil, textFont: Shared.Font? = nil, insideTextFont: Shared.Font? =
            nil, outSideTextFont: Shared.Font? = nil, autoMargin: Bool? = nil, title: Title? = nil, domain:
            Shared.Domain? = nil, hole: Double? = nil, sort: Bool? = nil, direction: Direction? = nil,
            rotation: Double? = nil, pull: ArrayOrDouble? = nil) {
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
        self.hoverInfo = hoverInfo
        self.hoverTemplate = hoverTemplate
        self.textTemplate = textTemplate
        self.textPosition = textPosition
        self.textFont = textFont
        self.insideTextFont = insideTextFont
        self.outSideTextFont = outSideTextFont
        self.autoMargin = autoMargin
        self.title = title
        self.domain = domain
        self.hole = hole
        self.sort = sort
        self.direction = direction
        self.rotation = rotation
        self.pull = pull
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
        try container.encodeIfPresent(hoverLabel, forKey: .hoverLabel)
        try container.encodeIfPresent(stream, forKey: .stream)
        try container.encodeIfPresent(transforms, forKey: .transforms)
        try container.encodeIfPresent(uiRevision, forKey: .uiRevision)
        try container.encodeIfPresent(label0, forKey: .label0)
        try container.encodeIfPresent(dLabel, forKey: .dLabel)
        try container.encodeIfPresent(marker, forKey: .marker)
        try container.encodeIfPresent(text, forKey: .text)
        try container.encodeIfPresent(hoverText, forKey: .hoverText)
        try container.encodeIfPresent(scaleGroup, forKey: .scaleGroup)
        try container.encodeIfPresent(textInfo, forKey: .textInfo)
        try container.encodeIfPresent(hoverInfo, forKey: .hoverInfo)
        try container.encodeIfPresent(hoverTemplate, forKey: .hoverTemplate)
        try container.encodeIfPresent(textTemplate, forKey: .textTemplate)
        try container.encodeIfPresent(textPosition, forKey: .textPosition)
        try container.encodeIfPresent(textFont, forKey: .textFont)
        try container.encodeIfPresent(insideTextFont, forKey: .insideTextFont)
        try container.encodeIfPresent(outSideTextFont, forKey: .outSideTextFont)
        try container.encodeIfPresent(autoMargin, forKey: .autoMargin)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(domain, forKey: .domain)
        try container.encodeIfPresent(hole, forKey: .hole)
        try container.encodeIfPresent(sort, forKey: .sort)
        try container.encodeIfPresent(direction, forKey: .direction)
        try container.encodeIfPresent(rotation, forKey: .rotation)
        try container.encodeIfPresent(pull, forKey: .pull)
    
        if let labels = self.labels {
            let labelsEncoder = container.superEncoder(forKey: .labels)
            try labels.encode(toPlotly: labelsEncoder)
        }
    
        if let values = self.values {
            let valuesEncoder = container.superEncoder(forKey: .values)
            try values.encode(toPlotly: valuesEncoder)
        }
    }
    
}