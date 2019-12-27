/// A data visualized by the sectors of the pie is set in `values`. 
///
/// The sector labels are set in `labels`. The sector colors are set in `marker.colors`
public struct Pie: Trace {
    public let type: String = "pie"

    public let animatable: Bool = false

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

    public var hoverLabel: HoverLabel1?

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

    /// Sets the sector labels. 
    ///
    /// If `labels` entries are duplicated, we sum associated `values` or simply count occurrences if
    /// `values` is not provided. For other array attributes (including color) we use the first
    /// non-empty entry among all occurrences of the label.
    public var labels: [Double]?

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
    public var values: [Double]?

    public var marker: Marker8?

    /// Sets text elements associated with each sector. 
    ///
    /// If trace `textinfo` contains a *text* flag, these elements will be seen on the chart. If trace
    /// `hoverinfo` contains a *text* flag and *hovertext* is not set, these elements will be seen in
    /// the hover labels.
    public var text: [Double]?

    /// Sets hover text elements associated with each sector. 
    ///
    /// If a single string, the same string appears for all data points. If an array of string, the
    /// items are mapped in order of this trace's sectors. To be seen, trace `hoverinfo` must contain a
    /// *text* flag.
    public var hoverText: String?

    /// If there are multiple pie charts that should be sized according to their totals, link them by providing a non-empty group id here shared by every trace in the same group.
    public var scaleGroup: String?

    public var textInfo: TextInfo0?

    public var hoverInfo: HoverInfo2?

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
    public var hoverTemplate: String?

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
    public var textTemplate: String?

    public var textPosition: TextPosition1?

    public var textFont: Font1?

    public var insideTextFont: Font1?

    public var outSideTextFont: Font1?

    /// Determines whether outside text labels can push the margins.
    public var autoMargin: Bool?

    public var title: Title3?

    public var domain: Domain0?

    /// Sets the fraction of the radius to cut out of the pie. 
    ///
    /// Use this to make a donut chart.
    public var hole: Double?

    /// Determines whether or not the sectors are reordered from largest to smallest.
    public var sort: Bool?

    public var direction: Side1?

    /// Instead of the first slice starting at 12 o'clock, rotate to some other angle.
    public var rotation: Double?

    /// Sets the fraction of larger radius to pull the sectors out from the center. 
    ///
    /// This can be a constant to pull all slices apart from each other equally or an array to highlight
    /// one or more slices.
    public var pull: Double?

    /// - traces/pie/attributes/_deprecated
    public struct Deprecated: Encodable {
        /// Deprecated in favor of `title.text`. 
        ///
        /// Note that value of `title` is no longer a simple *string* but a set of sub-attributes.
        public var title: String?
    
        public var titleFont: Font0?
    
        public var titlePosition: Position0?
    
        public init(title: String? = nil, titleFont: Font0? = nil, titlePosition: Position0? = nil) {
            self.title = title
            self.titleFont = titleFont
            self.titlePosition = titlePosition
        }
    }
    public var deprecated: Deprecated?

    /// Sets the source reference on plot.ly for  ids .
    public var idsSource: String?

    /// Sets the source reference on plot.ly for  customdata .
    public var customDataSource: String?

    /// Sets the source reference on plot.ly for  meta .
    public var metaSource: String?

    /// Sets the source reference on plot.ly for  labels .
    public var labelsSource: String?

    /// Sets the source reference on plot.ly for  values .
    public var valuesSource: String?

    /// Sets the source reference on plot.ly for  text .
    public var textSource: String?

    /// Sets the source reference on plot.ly for  hovertext .
    public var hoverTextSource: String?

    /// Sets the source reference on plot.ly for  hoverinfo .
    public var hoverInfoSource: String?

    /// Sets the source reference on plot.ly for  hovertemplate .
    public var hoverTemplateSource: String?

    /// Sets the source reference on plot.ly for  texttemplate .
    public var textTemplateSource: String?

    /// Sets the source reference on plot.ly for  textposition .
    public var textPositionSource: String?

    /// Sets the source reference on plot.ly for  pull .
    public var pullSource: String?

    public init(visible: Visible0? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, hoverLabel: HoverLabel1? = nil, stream: Stream0? = nil, transforms: TickFormatStops0? = nil, uiRevision: Anything? = nil, labels: [Double]? = nil, label0: Double? = nil, dLabel: Double? = nil, values: [Double]? = nil, marker: Marker8? = nil, text: [Double]? = nil, hoverText: String? = nil, scaleGroup: String? = nil, textInfo: TextInfo0? = nil, hoverInfo: HoverInfo2? = nil, hoverTemplate: String? = nil, textTemplate: String? = nil, textPosition: TextPosition1? = nil, textFont: Font1? = nil, insideTextFont: Font1? = nil, outSideTextFont: Font1? = nil, autoMargin: Bool? = nil, title: Title3? = nil, domain: Domain0? = nil, hole: Double? = nil, sort: Bool? = nil, direction: Side1? = nil, rotation: Double? = nil, pull: Double? = nil, deprecated: Deprecated? = nil, idsSource: String? = nil, customDataSource: String? = nil, metaSource: String? = nil, labelsSource: String? = nil, valuesSource: String? = nil, textSource: String? = nil, hoverTextSource: String? = nil, hoverInfoSource: String? = nil, hoverTemplateSource: String? = nil, textTemplateSource: String? = nil, textPositionSource: String? = nil, pullSource: String? = nil) {
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
        self.deprecated = deprecated
        self.idsSource = idsSource
        self.customDataSource = customDataSource
        self.metaSource = metaSource
        self.labelsSource = labelsSource
        self.valuesSource = valuesSource
        self.textSource = textSource
        self.hoverTextSource = hoverTextSource
        self.hoverInfoSource = hoverInfoSource
        self.hoverTemplateSource = hoverTemplateSource
        self.textTemplateSource = textTemplateSource
        self.textPositionSource = textPositionSource
        self.pullSource = pullSource
    }
}