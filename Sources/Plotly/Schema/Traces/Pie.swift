/// A data visualized by the sectors of the pie is set in `values`. 
///
/// The sector labels are set in `labels`. The sector colors are set in `marker.colors`
public struct Pie: Trace {
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#type) |
    /// [Python](https://plot.ly/python/reference/#type) |
    /// [R](https://plot.ly/r/reference/#type)
    public let type: String = "pie"

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
    /// [JavaScript](https://plot.ly/javascript/reference/#pie-visible) |
    /// [Python](https://plot.ly/python/reference/#pie-visible) |
    /// [R](https://plot.ly/r/reference/#pie-visible)
    public var visible: Shared.Visible?

    /// Determines whether or not an item corresponding to this trace is shown in the legend.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pie-showlegend) |
    /// [Python](https://plot.ly/python/reference/#pie-showlegend) |
    /// [R](https://plot.ly/r/reference/#pie-showlegend)
    public var showLegend: Bool?

    /// Sets the legend group for this trace. 
    ///
    /// Traces part of the same legend group hide/show at the same time when toggling legend items.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pie-legendgroup) |
    /// [Python](https://plot.ly/python/reference/#pie-legendgroup) |
    /// [R](https://plot.ly/r/reference/#pie-legendgroup)
    public var legendGroup: String?

    /// Sets the opacity of the trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pie-opacity) |
    /// [Python](https://plot.ly/python/reference/#pie-opacity) |
    /// [R](https://plot.ly/r/reference/#pie-opacity)
    public var opacity: Double?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pie-name) |
    /// [Python](https://plot.ly/python/reference/#pie-name) |
    /// [R](https://plot.ly/r/reference/#pie-name)
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pie-uid) |
    /// [Python](https://plot.ly/python/reference/#pie-uid) |
    /// [R](https://plot.ly/r/reference/#pie-uid)
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pie-ids) |
    /// [Python](https://plot.ly/python/reference/#pie-ids) |
    /// [R](https://plot.ly/r/reference/#pie-ids)
    public var ids: [Double]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pie-customdata) |
    /// [Python](https://plot.ly/python/reference/#pie-customdata) |
    /// [R](https://plot.ly/r/reference/#pie-customdata)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#pie-meta) |
    /// [Python](https://plot.ly/python/reference/#pie-meta) |
    /// [R](https://plot.ly/r/reference/#pie-meta)
    public var meta: ArrayOrAnything?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pie-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#pie-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#pie-hoverlabel)
    public var hoverLabel: Shared.HoverLabel?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pie-stream) |
    /// [Python](https://plot.ly/python/reference/#pie-stream) |
    /// [R](https://plot.ly/r/reference/#pie-stream)
    public var stream: Shared.Stream?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pie-transforms) |
    /// [Python](https://plot.ly/python/reference/#pie-transforms) |
    /// [R](https://plot.ly/r/reference/#pie-transforms)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#pie-uirevision) |
    /// [Python](https://plot.ly/python/reference/#pie-uirevision) |
    /// [R](https://plot.ly/r/reference/#pie-uirevision)
    public var uiRevision: Anything?

    /// Sets the sector labels. 
    ///
    /// If `labels` entries are duplicated, we sum associated `values` or simply count occurrences if
    /// `values` is not provided. For other array attributes (including color) we use the first
    /// non-empty entry among all occurrences of the label.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pie-labels) |
    /// [Python](https://plot.ly/python/reference/#pie-labels) |
    /// [R](https://plot.ly/r/reference/#pie-labels)
    public var labels: [Double]?

    /// Alternate to `labels`. 
    ///
    /// Builds a numeric set of labels. Use with `dlabel` where `label0` is the starting label and
    /// `dlabel` the step.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pie-label0) |
    /// [Python](https://plot.ly/python/reference/#pie-label0) |
    /// [R](https://plot.ly/r/reference/#pie-label0)
    public var label0: Double?

    /// Sets the label step. 
    ///
    /// See `label0` for more info.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pie-dlabel) |
    /// [Python](https://plot.ly/python/reference/#pie-dlabel) |
    /// [R](https://plot.ly/r/reference/#pie-dlabel)
    public var dLabel: Double?

    /// Sets the values of the sectors. 
    ///
    /// If omitted, we count occurrences of each label.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pie-values) |
    /// [Python](https://plot.ly/python/reference/#pie-values) |
    /// [R](https://plot.ly/r/reference/#pie-values)
    public var values: [Double]?

    /// # Used By
    /// `Pie.marker` |
    public struct Marker: Encodable {
        /// Sets the color of each sector. 
        ///
        /// If not specified, the default trace color set is used to pick the sector colors.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#pie-marker-colors) |
        /// [Python](https://plot.ly/python/reference/#pie-marker-colors) |
        /// [R](https://plot.ly/r/reference/#pie-marker-colors)
        public var colors: [Double]?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#pie-marker-line) |
        /// [Python](https://plot.ly/python/reference/#pie-marker-line) |
        /// [R](https://plot.ly/r/reference/#pie-marker-line)
        public var line: Shared.Line?
    
        public init(colors: [Double]? = nil, line: Shared.Line? = nil) {
            self.colors = colors
            self.line = line
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pie-marker) |
    /// [Python](https://plot.ly/python/reference/#pie-marker) |
    /// [R](https://plot.ly/r/reference/#pie-marker)
    public var marker: Marker?

    /// Sets text elements associated with each sector. 
    ///
    /// If trace `textinfo` contains a *text* flag, these elements will be seen on the chart. If trace
    /// `hoverinfo` contains a *text* flag and *hovertext* is not set, these elements will be seen in
    /// the hover labels.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pie-text) |
    /// [Python](https://plot.ly/python/reference/#pie-text) |
    /// [R](https://plot.ly/r/reference/#pie-text)
    public var text: [Double]?

    /// Sets hover text elements associated with each sector. 
    ///
    /// If a single string, the same string appears for all data points. If an array of string, the
    /// items are mapped in order of this trace's sectors. To be seen, trace `hoverinfo` must contain a
    /// *text* flag.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pie-hovertext) |
    /// [Python](https://plot.ly/python/reference/#pie-hovertext) |
    /// [R](https://plot.ly/r/reference/#pie-hovertext)
    public var hoverText: ArrayOrString?

    /// If there are multiple pie charts that should be sized according to their totals, link them by providing a non-empty group id here shared by every trace in the same group.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pie-scalegroup) |
    /// [Python](https://plot.ly/python/reference/#pie-scalegroup) |
    /// [R](https://plot.ly/r/reference/#pie-scalegroup)
    public var scaleGroup: String?

    /// Determines which trace information appear on the graph.
    ///
    /// # Used By
    /// `Pie.textInfo` |
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pie-textinfo) |
    /// [Python](https://plot.ly/python/reference/#pie-textinfo) |
    /// [R](https://plot.ly/r/reference/#pie-textinfo)
    public var textInfo: TextInfo?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    ///
    /// # Used By
    /// `Pie.hoverInfo` |
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pie-hoverinfo) |
    /// [Python](https://plot.ly/python/reference/#pie-hoverinfo) |
    /// [R](https://plot.ly/r/reference/#pie-hoverinfo)
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pie-hovertemplate) |
    /// [Python](https://plot.ly/python/reference/#pie-hovertemplate) |
    /// [R](https://plot.ly/r/reference/#pie-hovertemplate)
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pie-texttemplate) |
    /// [Python](https://plot.ly/python/reference/#pie-texttemplate) |
    /// [R](https://plot.ly/r/reference/#pie-texttemplate)
    public var textTemplate: ArrayOrString?

    /// Specifies the location of the `textinfo`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pie-textposition) |
    /// [Python](https://plot.ly/python/reference/#pie-textposition) |
    /// [R](https://plot.ly/r/reference/#pie-textposition)
    public var textPosition: Shared.AdjacentPosition?

    /// Sets the font used for `textinfo`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pie-textfont) |
    /// [Python](https://plot.ly/python/reference/#pie-textfont) |
    /// [R](https://plot.ly/r/reference/#pie-textfont)
    public var textFont: Shared.Font?

    /// Sets the font used for `textinfo` lying inside the sector.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pie-insidetextfont) |
    /// [Python](https://plot.ly/python/reference/#pie-insidetextfont) |
    /// [R](https://plot.ly/r/reference/#pie-insidetextfont)
    public var insideTextFont: Shared.Font?

    /// Sets the font used for `textinfo` lying outside the sector.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pie-outsidetextfont) |
    /// [Python](https://plot.ly/python/reference/#pie-outsidetextfont) |
    /// [R](https://plot.ly/r/reference/#pie-outsidetextfont)
    public var outSideTextFont: Shared.Font?

    /// Determines whether outside text labels can push the margins.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pie-automargin) |
    /// [Python](https://plot.ly/python/reference/#pie-automargin) |
    /// [R](https://plot.ly/r/reference/#pie-automargin)
    public var autoMargin: Bool?

    /// # Used By
    /// `Pie.title` |
    public struct Title: Encodable {
        /// Sets the title of the chart. 
        ///
        /// If it is empty, no title is displayed. Note that before the existence of `title.text`, the
        /// title's contents used to be defined as the `title` attribute itself. This behavior has been
        /// deprecated.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#pie-title-text) |
        /// [Python](https://plot.ly/python/reference/#pie-title-text) |
        /// [R](https://plot.ly/r/reference/#pie-title-text)
        public var text: String?
    
        /// Sets the font used for `title`. 
        ///
        /// Note that the title's font used to be set by the now deprecated `titlefont` attribute.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#pie-title-font) |
        /// [Python](https://plot.ly/python/reference/#pie-title-font) |
        /// [R](https://plot.ly/r/reference/#pie-title-font)
        public var font: Shared.Font?
    
        /// Specifies the location of the `title`. 
        ///
        /// Note that the title's position used to be set by the now deprecated `titleposition` attribute.
        ///
        /// # Used By
        /// `Pie.Title.position` |
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
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#pie-title-position) |
        /// [Python](https://plot.ly/python/reference/#pie-title-position) |
        /// [R](https://plot.ly/r/reference/#pie-title-position)
        public var position: Position?
    
        public init(text: String? = nil, font: Shared.Font? = nil, position: Position? = nil) {
            self.text = text
            self.font = font
            self.position = position
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pie-title) |
    /// [Python](https://plot.ly/python/reference/#pie-title) |
    /// [R](https://plot.ly/r/reference/#pie-title)
    public var title: Title?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pie-domain) |
    /// [Python](https://plot.ly/python/reference/#pie-domain) |
    /// [R](https://plot.ly/r/reference/#pie-domain)
    public var domain: Shared.Domain?

    /// Sets the fraction of the radius to cut out of the pie. 
    ///
    /// Use this to make a donut chart.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pie-hole) |
    /// [Python](https://plot.ly/python/reference/#pie-hole) |
    /// [R](https://plot.ly/r/reference/#pie-hole)
    public var hole: Double?

    /// Determines whether or not the sectors are reordered from largest to smallest.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pie-sort) |
    /// [Python](https://plot.ly/python/reference/#pie-sort) |
    /// [R](https://plot.ly/r/reference/#pie-sort)
    public var sort: Bool?

    /// Specifies the direction at which succeeding sectors follow one another.
    ///
    /// # Used By
    /// `Pie.direction` |
    public enum Direction: String, Encodable {
        case clockwise
        case counterClockwise = "counterclockwise"
    }
    /// Specifies the direction at which succeeding sectors follow one another.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pie-direction) |
    /// [Python](https://plot.ly/python/reference/#pie-direction) |
    /// [R](https://plot.ly/r/reference/#pie-direction)
    public var direction: Direction?

    /// Instead of the first slice starting at 12 o'clock, rotate to some other angle.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pie-rotation) |
    /// [Python](https://plot.ly/python/reference/#pie-rotation) |
    /// [R](https://plot.ly/r/reference/#pie-rotation)
    public var rotation: Double?

    /// Sets the fraction of larger radius to pull the sectors out from the center. 
    ///
    /// This can be a constant to pull all slices apart from each other equally or an array to highlight
    /// one or more slices.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#pie-pull) |
    /// [Python](https://plot.ly/python/reference/#pie-pull) |
    /// [R](https://plot.ly/r/reference/#pie-pull)
    public var pull: ArrayOrDouble?

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
    
    public init(visible: Shared.Visible? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: ArrayOrAnything? = nil, hoverLabel: Shared.HoverLabel? = nil, stream: Shared.Stream? = nil, transforms: [Shared.Transform]? = nil, uiRevision: Anything? = nil, labels: [Double]? = nil, label0: Double? = nil, dLabel: Double? = nil, values: [Double]? = nil, marker: Marker? = nil, text: [Double]? = nil, hoverText: ArrayOrString? = nil, scaleGroup: String? = nil, textInfo: TextInfo? = nil, hoverInfo: HoverInfo? = nil, hoverTemplate: ArrayOrString? = nil, textTemplate: ArrayOrString? = nil, textPosition: Shared.AdjacentPosition? = nil, textFont: Shared.Font? = nil, insideTextFont: Shared.Font? = nil, outSideTextFont: Shared.Font? = nil, autoMargin: Bool? = nil, title: Title? = nil, domain: Shared.Domain? = nil, hole: Double? = nil, sort: Bool? = nil, direction: Direction? = nil, rotation: Double? = nil, pull: ArrayOrDouble? = nil) {
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
}