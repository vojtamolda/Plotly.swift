public struct Area: Trace {
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#type) |
    /// [Python](https://plot.ly/python/reference/#type) |
    /// [R](https://plot.ly/r/reference/#type)
    public let type: String = "area"

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
    /// [JavaScript](https://plot.ly/javascript/reference/#area-visible) |
    /// [Python](https://plot.ly/python/reference/#area-visible) |
    /// [R](https://plot.ly/r/reference/#area-visible)
    public var visible: Visible0?

    /// Determines whether or not an item corresponding to this trace is shown in the legend.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#area-showlegend) |
    /// [Python](https://plot.ly/python/reference/#area-showlegend) |
    /// [R](https://plot.ly/r/reference/#area-showlegend)
    public var showLegend: Bool?

    /// Sets the legend group for this trace. 
    ///
    /// Traces part of the same legend group hide/show at the same time when toggling legend items.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#area-legendgroup) |
    /// [Python](https://plot.ly/python/reference/#area-legendgroup) |
    /// [R](https://plot.ly/r/reference/#area-legendgroup)
    public var legendGroup: String?

    /// Sets the opacity of the trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#area-opacity) |
    /// [Python](https://plot.ly/python/reference/#area-opacity) |
    /// [R](https://plot.ly/r/reference/#area-opacity)
    public var opacity: Double?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#area-name) |
    /// [Python](https://plot.ly/python/reference/#area-name) |
    /// [R](https://plot.ly/r/reference/#area-name)
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#area-uid) |
    /// [Python](https://plot.ly/python/reference/#area-uid) |
    /// [R](https://plot.ly/r/reference/#area-uid)
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#area-ids) |
    /// [Python](https://plot.ly/python/reference/#area-ids) |
    /// [R](https://plot.ly/r/reference/#area-ids)
    public var ids: [Double]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#area-customdata) |
    /// [Python](https://plot.ly/python/reference/#area-customdata) |
    /// [R](https://plot.ly/r/reference/#area-customdata)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#area-meta) |
    /// [Python](https://plot.ly/python/reference/#area-meta) |
    /// [R](https://plot.ly/r/reference/#area-meta)
    public var meta: Anything?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#area-hoverinfo) |
    /// [Python](https://plot.ly/python/reference/#area-hoverinfo) |
    /// [R](https://plot.ly/r/reference/#area-hoverinfo)
    public var hoverInfo: HoverInfo0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#area-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#area-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#area-hoverlabel)
    public var hoverLabel: HoverLabel0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#area-stream) |
    /// [Python](https://plot.ly/python/reference/#area-stream) |
    /// [R](https://plot.ly/r/reference/#area-stream)
    public var stream: Stream0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#area-transforms) |
    /// [Python](https://plot.ly/python/reference/#area-transforms) |
    /// [R](https://plot.ly/r/reference/#area-transforms)
    public var transforms: Transforms0?

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
    /// [JavaScript](https://plot.ly/javascript/reference/#area-uirevision) |
    /// [Python](https://plot.ly/python/reference/#area-uirevision) |
    /// [R](https://plot.ly/r/reference/#area-uirevision)
    public var uiRevision: Anything?

    /// Area traces are deprecated! Please switch to the *barpolar* trace type. 
    ///
    /// Sets the radial coordinates for legacy polar chart only.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#area-r) |
    /// [Python](https://plot.ly/python/reference/#area-r) |
    /// [R](https://plot.ly/r/reference/#area-r)
    public var r: [Double]?

    /// Area traces are deprecated! Please switch to the *barpolar* trace type. 
    ///
    /// Sets the angular coordinates for legacy polar chart only.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#area-t) |
    /// [Python](https://plot.ly/python/reference/#area-t) |
    /// [R](https://plot.ly/r/reference/#area-t)
    public var t: [Double]?

    ///
    /// # Used By
    /// `Area.marker` |
    public struct Marker: Encodable {
        /// Area traces are deprecated! Please switch to the *barpolar* trace type. 
        ///
        /// Sets themarkercolor. It accepts either a specific color or an array of numbers that are mapped
        /// to the colorscale relative to the max and min values of the array or relative to `marker.cmin`
        /// and `marker.cmax` if set.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#area-marker-color) |
        /// [Python](https://plot.ly/python/reference/#area-marker-color) |
        /// [R](https://plot.ly/r/reference/#area-marker-color)
        public var color: Color?
    
        /// Area traces are deprecated! Please switch to the *barpolar* trace type. 
        ///
        /// Sets the marker size (in px).
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#area-marker-size) |
        /// [Python](https://plot.ly/python/reference/#area-marker-size) |
        /// [R](https://plot.ly/r/reference/#area-marker-size)
        public var size: Double?
    
        /// Area traces are deprecated! Please switch to the *barpolar* trace type. 
        ///
        /// Sets the marker symbol type. Adding 100 is equivalent to appending *-open* to a symbol name.
        /// Adding 200 is equivalent to appending *-dot* to a symbol name. Adding 300 is equivalent to
        /// appending *-open-dot* or *dot-open* to a symbol name.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#area-marker-symbol) |
        /// [Python](https://plot.ly/python/reference/#area-marker-symbol) |
        /// [R](https://plot.ly/r/reference/#area-marker-symbol)
        public var symbol: Symbol0?
    
        /// Area traces are deprecated! Please switch to the *barpolar* trace type. 
        ///
        /// Sets the marker opacity.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#area-marker-opacity) |
        /// [Python](https://plot.ly/python/reference/#area-marker-opacity) |
        /// [R](https://plot.ly/r/reference/#area-marker-opacity)
        public var opacity: Double?
    
        /// Sets the source reference on plot.ly for  color .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#area-marker-colorsrc) |
        /// [Python](https://plot.ly/python/reference/#area-marker-colorsrc) |
        /// [R](https://plot.ly/r/reference/#area-marker-colorsrc)
        public var colorSource: String?
    
        /// Sets the source reference on plot.ly for  size .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#area-marker-sizesrc) |
        /// [Python](https://plot.ly/python/reference/#area-marker-sizesrc) |
        /// [R](https://plot.ly/r/reference/#area-marker-sizesrc)
        public var sizeSource: String?
    
        /// Sets the source reference on plot.ly for  symbol .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#area-marker-symbolsrc) |
        /// [Python](https://plot.ly/python/reference/#area-marker-symbolsrc) |
        /// [R](https://plot.ly/r/reference/#area-marker-symbolsrc)
        public var symbolSource: String?
    
        /// Sets the source reference on plot.ly for  opacity .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#area-marker-opacitysrc) |
        /// [Python](https://plot.ly/python/reference/#area-marker-opacitysrc) |
        /// [R](https://plot.ly/r/reference/#area-marker-opacitysrc)
        public var opacitySource: String?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case color
            case size
            case symbol
            case opacity
            case colorSource = "colorsrc"
            case sizeSource = "sizesrc"
            case symbolSource = "symbolsrc"
            case opacitySource = "opacitysrc"
        }
        
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#area-marker) |
    /// [Python](https://plot.ly/python/reference/#area-marker) |
    /// [R](https://plot.ly/r/reference/#area-marker)
    public var marker: Marker?

    /// Sets the source reference on plot.ly for  ids .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#area-idssrc) |
    /// [Python](https://plot.ly/python/reference/#area-idssrc) |
    /// [R](https://plot.ly/r/reference/#area-idssrc)
    public var idsSource: String?

    /// Sets the source reference on plot.ly for  customdata .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#area-customdatasrc) |
    /// [Python](https://plot.ly/python/reference/#area-customdatasrc) |
    /// [R](https://plot.ly/r/reference/#area-customdatasrc)
    public var customDataSource: String?

    /// Sets the source reference on plot.ly for  meta .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#area-metasrc) |
    /// [Python](https://plot.ly/python/reference/#area-metasrc) |
    /// [R](https://plot.ly/r/reference/#area-metasrc)
    public var metaSource: String?

    /// Sets the source reference on plot.ly for  hoverinfo .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#area-hoverinfosrc) |
    /// [Python](https://plot.ly/python/reference/#area-hoverinfosrc) |
    /// [R](https://plot.ly/r/reference/#area-hoverinfosrc)
    public var hoverInfoSource: String?

    /// Sets the source reference on plot.ly for  r .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#area-rsrc) |
    /// [Python](https://plot.ly/python/reference/#area-rsrc) |
    /// [R](https://plot.ly/r/reference/#area-rsrc)
    public var rSource: String?

    /// Sets the source reference on plot.ly for  t .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#area-tsrc) |
    /// [Python](https://plot.ly/python/reference/#area-tsrc) |
    /// [R](https://plot.ly/r/reference/#area-tsrc)
    public var tSource: String?

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
        case hoverInfo = "hoverinfo"
        case hoverLabel = "hoverlabel"
        case stream
        case transforms
        case uiRevision = "uirevision"
        case r
        case t
        case marker
        case idsSource = "idssrc"
        case customDataSource = "customdatasrc"
        case metaSource = "metasrc"
        case hoverInfoSource = "hoverinfosrc"
        case rSource = "rsrc"
        case tSource = "tsrc"
    }
    
    public init(visible: Visible0? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, hoverInfo: HoverInfo0? = nil, hoverLabel: HoverLabel0? = nil, stream: Stream0? = nil, transforms: Transforms0? = nil, uiRevision: Anything? = nil, r: [Double]? = nil, t: [Double]? = nil, marker: Marker? = nil, idsSource: String? = nil, customDataSource: String? = nil, metaSource: String? = nil, hoverInfoSource: String? = nil, rSource: String? = nil, tSource: String? = nil) {
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