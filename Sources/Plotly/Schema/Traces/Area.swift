public struct Area: Trace {
    public let type: String = "area"

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

    public var hoverInfo: HoverInfo1?

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

    /// Area traces are deprecated! Please switch to the *barpolar* trace type. 
    ///
    /// Sets the radial coordinates for legacy polar chart only.
    public var r: [Double]?

    /// Area traces are deprecated! Please switch to the *barpolar* trace type. 
    ///
    /// Sets the angular coordinates for legacy polar chart only.
    public var t: [Double]?

    /// - traces/area/attributes/marker
    public struct Marker: Encodable {
        /// Area traces are deprecated! Please switch to the *barpolar* trace type. 
        ///
        /// Sets themarkercolor. It accepts either a specific color or an array of numbers that are mapped
        /// to the colorscale relative to the max and min values of the array or relative to `marker.cmin`
        /// and `marker.cmax` if set.
        public var color: Color?
    
        /// Area traces are deprecated! Please switch to the *barpolar* trace type. 
        ///
        /// Sets the marker size (in px).
        public var size: Double?
    
        public var symbol: Symbol0?
    
        /// Area traces are deprecated! Please switch to the *barpolar* trace type. 
        ///
        /// Sets the marker opacity.
        public var opacity: Double?
    
        /// Sets the source reference on plot.ly for  color .
        public var colorSource: String?
    
        /// Sets the source reference on plot.ly for  size .
        public var sizeSource: String?
    
        /// Sets the source reference on plot.ly for  symbol .
        public var symbolSource: String?
    
        /// Sets the source reference on plot.ly for  opacity .
        public var opacitySource: String?
    
        public init(color: Color? = nil, size: Double? = nil, symbol: Symbol0? = nil, opacity: Double? = nil, colorSource: String? = nil, sizeSource: String? = nil, symbolSource: String? = nil, opacitySource: String? = nil) {
            self.color = color
            self.size = size
            self.symbol = symbol
            self.opacity = opacity
            self.colorSource = colorSource
            self.sizeSource = sizeSource
            self.symbolSource = symbolSource
            self.opacitySource = opacitySource
        }
    }
    public var marker: Marker?

    /// Sets the source reference on plot.ly for  ids .
    public var idsSource: String?

    /// Sets the source reference on plot.ly for  customdata .
    public var customDataSource: String?

    /// Sets the source reference on plot.ly for  meta .
    public var metaSource: String?

    /// Sets the source reference on plot.ly for  hoverinfo .
    public var hoverInfoSource: String?

    /// Sets the source reference on plot.ly for  r .
    public var rSource: String?

    /// Sets the source reference on plot.ly for  t .
    public var tSource: String?

    public init(visible: Visible0? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, hoverInfo: HoverInfo1? = nil, hoverLabel: HoverLabel1? = nil, stream: Stream0? = nil, transforms: TickFormatStops0? = nil, uiRevision: Anything? = nil, r: [Double]? = nil, t: [Double]? = nil, marker: Marker? = nil, idsSource: String? = nil, customDataSource: String? = nil, metaSource: String? = nil, hoverInfoSource: String? = nil, rSource: String? = nil, tSource: String? = nil) {
        self.visible = visible
        self.showLegend = showLegend
        self.legendGroup = legendGroup
        self.opacity = opacity
        self.name = name
        self.uid = uid
        self.ids = ids
        self.customData = customData
        self.meta = meta
        self.hoverInfo = hoverInfo
        self.hoverLabel = hoverLabel
        self.stream = stream
        self.transforms = transforms
        self.uiRevision = uiRevision
        self.r = r
        self.t = t
        self.marker = marker
        self.idsSource = idsSource
        self.customDataSource = customDataSource
        self.metaSource = metaSource
        self.hoverInfoSource = hoverInfoSource
        self.rSource = rSource
        self.tSource = tSource
    }
}