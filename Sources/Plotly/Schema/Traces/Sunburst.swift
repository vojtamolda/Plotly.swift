/// Visualize hierarchal data spanning outward radially from root to leaves. 
///
/// The sunburst sectors are determined by the entries in *labels* or *ids* and in *parents*.
public struct Sunburst: Trace {
    public let type: String = "sunburst"

    public let animatable: Bool = true

    public var visible: Visible0?

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

    /// Sets the labels of each of the sectors.
    public var labels: [Double]?

    /// Sets the parent sectors for each of the sectors. 
    ///
    /// Empty string items '' are understood to reference the root node in the hierarchy. If `ids` is
    /// filled, `parents` items are understood to be "ids" themselves. When `ids` is not set, plotly
    /// attempts to find matching items in `labels`, but beware they must be unique.
    public var parents: [Double]?

    /// Sets the values associated with each of the sectors. 
    ///
    /// Use with `branchvalues` to determine how the values are summed.
    public var values: [Double]?

    public var branchValues: BranchValues0?

    public var count: Count0?

    /// Sets the level from which this trace hierarchy is rendered. 
    ///
    /// Set `level` to `''` to start from the root node in the hierarchy. Must be an "id" if `ids` is
    /// filled in, otherwise plotly attempts to find a matching item in `labels`.
    public var level: Anything?

    /// Sets the number of rendered sectors from any given `level`. 
    ///
    /// Set `maxdepth` to *-1* to render all the levels in the hierarchy.
    public var maxDepth: Int?

    /// - traces/sunburst/attributes/marker
    public struct Marker: Encodable {
        /// Sets the color of each sector of this trace. 
        ///
        /// If not specified, the default trace color set is used to pick the sector colors.
        public var colors: [Double]?
    
        public var line: Line6?
    
        /// Determines whether or not the color domain is computed with respect to the input data (here colors) or the bounds set in `marker.cmin` and `marker.cmax`  Has an effect only if colorsis set to a numerical array. 
        ///
        /// Defaults to `false` when `marker.cmin` and `marker.cmax` are set by the user.
        public var cAuto: Bool?
    
        /// Sets the lower bound of the color domain. 
        ///
        /// Has an effect only if colorsis set to a numerical array. Value should have the same units as
        /// colors and if set, `marker.cmax` must be set as well.
        public var cMin: Double?
    
        /// Sets the upper bound of the color domain. 
        ///
        /// Has an effect only if colorsis set to a numerical array. Value should have the same units as
        /// colors and if set, `marker.cmin` must be set as well.
        public var cMax: Double?
    
        /// Sets the mid-point of the color domain by scaling `marker.cmin` and/or `marker.cmax` to be equidistant to this point. 
        ///
        /// Has an effect only if colorsis set to a numerical array. Value should have the same units as
        /// colors. Has no effect when `marker.cauto` is `false`.
        public var cMiddle: Double?
    
        /// Sets the colorscale. 
        ///
        /// Has an effect only if colorsis set to a numerical array. The colorscale must be an array
        /// containing arrays mapping a normalized value to an rgb, rgba, hex, hsl, hsv, or named color
        /// string. At minimum, a mapping for the lowest (0) and highest (1) values are required. For
        /// example, `[[0, 'rgb(0,0,255)'], [1, 'rgb(255,0,0)']]`. To control the bounds of the colorscale
        /// in color space, use`marker.cmin` and `marker.cmax`. Alternatively, `colorscale` may be a palette
        /// name string of the following list:
        /// Greys,YlGnBu,Greens,YlOrRd,Bluered,RdBu,Reds,Blues,Picnic,Rainbow,Portland,Jet,Hot,Blackbody,Earth,Electric,Viridis,Cividis.
        public var colorScale: ColorScale?
    
        /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `marker.colorscale`. 
        ///
        /// Has an effect only if colorsis set to a numerical array. In case `colorscale` is unspecified or
        /// `autocolorscale` is true, the default palette will be chosen according to whether numbers in the
        /// `color` array are all positive, all negative or mixed.
        public var autoColorScale: Bool?
    
        /// Reverses the color mapping if true. 
        ///
        /// Has an effect only if colorsis set to a numerical array. If true, `marker.cmin` will correspond
        /// to the last color in the array and `marker.cmax` will correspond to the first color.
        public var reverseScale: Bool?
    
        /// Determines whether or not a colorbar is displayed for this trace. 
        ///
        /// Has an effect only if colorsis set to a numerical array.
        public var showScale: Bool?
    
        public var colorBar: ColorBar0?
    
        /// Sets a reference to a shared color axis. 
        ///
        /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
        /// for these shared color axes are set in the layout, under `layout.coloraxis`,
        /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
        public var colorAxis: SubPlotID?
    
        /// Sets the source reference on plot.ly for  colors .
        public var colorsSource: String?
    
        public init(colors: [Double]? = nil, line: Line6? = nil, cAuto: Bool? = nil, cMin: Double? = nil, cMax: Double? = nil, cMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: ColorBar0? = nil, colorAxis: SubPlotID? = nil, colorsSource: String? = nil) {
            self.colors = colors
            self.line = line
            self.cAuto = cAuto
            self.cMin = cMin
            self.cMax = cMax
            self.cMiddle = cMiddle
            self.colorScale = colorScale
            self.autoColorScale = autoColorScale
            self.reverseScale = reverseScale
            self.showScale = showScale
            self.colorBar = colorBar
            self.colorAxis = colorAxis
            self.colorsSource = colorsSource
        }
    }
    public var marker: Marker?

    public var leaf: Deprecated3?

    /// Sets text elements associated with each sector. 
    ///
    /// If trace `textinfo` contains a *text* flag, these elements will be seen on the chart. If trace
    /// `hoverinfo` contains a *text* flag and *hovertext* is not set, these elements will be seen in
    /// the hover labels.
    public var text: [Double]?

    public var textInfo: TextInfo1?

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
    /// `arrayOk: true`) are available. variables `currentPath`, `root`, `entry`, `percentRoot`,
    /// `percentEntry`, `percentParent`, `label` and `value`.
    public var textTemplate: String?

    /// Sets hover text elements associated with each sector. 
    ///
    /// If a single string, the same string appears for all data points. If an array of string, the
    /// items are mapped in order of this trace's sectors. To be seen, trace `hoverinfo` must contain a
    /// *text* flag.
    public var hoverText: String?

    public var hoverInfo: HoverInfo3?

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
    /// true`) are available. variables `currentPath`, `root`, `entry`, `percentRoot`, `percentEntry`
    /// and `percentParent`. Anything contained in tag `<extra>` is displayed in the secondary box, for
    /// example "<extra>{fullData.name}</extra>". To hide the secondary box completely, use an empty tag
    /// `<extra></extra>`.
    public var hoverTemplate: String?

    public var textFont: Font1?

    public var insideTextFont: Font1?

    public var outSideTextFont: Font1?

    public var domain: Domain0?

    /// Sets the source reference on plot.ly for  ids .
    public var idsSource: String?

    /// Sets the source reference on plot.ly for  customdata .
    public var customDataSource: String?

    /// Sets the source reference on plot.ly for  meta .
    public var metaSource: String?

    /// Sets the source reference on plot.ly for  labels .
    public var labelsSource: String?

    /// Sets the source reference on plot.ly for  parents .
    public var parentsSource: String?

    /// Sets the source reference on plot.ly for  values .
    public var valuesSource: String?

    /// Sets the source reference on plot.ly for  text .
    public var textSource: String?

    /// Sets the source reference on plot.ly for  texttemplate .
    public var textTemplateSource: String?

    /// Sets the source reference on plot.ly for  hovertext .
    public var hoverTextSource: String?

    /// Sets the source reference on plot.ly for  hoverinfo .
    public var hoverInfoSource: String?

    /// Sets the source reference on plot.ly for  hovertemplate .
    public var hoverTemplateSource: String?

    public init(visible: Visible0? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, hoverLabel: HoverLabel1? = nil, stream: Stream0? = nil, transforms: TickFormatStops0? = nil, uiRevision: Anything? = nil, labels: [Double]? = nil, parents: [Double]? = nil, values: [Double]? = nil, branchValues: BranchValues0? = nil, count: Count0? = nil, level: Anything? = nil, maxDepth: Int? = nil, marker: Marker? = nil, leaf: Deprecated3? = nil, text: [Double]? = nil, textInfo: TextInfo1? = nil, textTemplate: String? = nil, hoverText: String? = nil, hoverInfo: HoverInfo3? = nil, hoverTemplate: String? = nil, textFont: Font1? = nil, insideTextFont: Font1? = nil, outSideTextFont: Font1? = nil, domain: Domain0? = nil, idsSource: String? = nil, customDataSource: String? = nil, metaSource: String? = nil, labelsSource: String? = nil, parentsSource: String? = nil, valuesSource: String? = nil, textSource: String? = nil, textTemplateSource: String? = nil, hoverTextSource: String? = nil, hoverInfoSource: String? = nil, hoverTemplateSource: String? = nil) {
        self.visible = visible
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
        self.parents = parents
        self.values = values
        self.branchValues = branchValues
        self.count = count
        self.level = level
        self.maxDepth = maxDepth
        self.marker = marker
        self.leaf = leaf
        self.text = text
        self.textInfo = textInfo
        self.textTemplate = textTemplate
        self.hoverText = hoverText
        self.hoverInfo = hoverInfo
        self.hoverTemplate = hoverTemplate
        self.textFont = textFont
        self.insideTextFont = insideTextFont
        self.outSideTextFont = outSideTextFont
        self.domain = domain
        self.idsSource = idsSource
        self.customDataSource = customDataSource
        self.metaSource = metaSource
        self.labelsSource = labelsSource
        self.parentsSource = parentsSource
        self.valuesSource = valuesSource
        self.textSource = textSource
        self.textTemplateSource = textTemplateSource
        self.hoverTextSource = hoverTextSource
        self.hoverInfoSource = hoverInfoSource
        self.hoverTemplateSource = hoverTemplateSource
    }
}