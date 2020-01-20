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
    public var visible: Shared.Visible?

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
    public var hoverInfo: Shared.HoverInfo?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#area-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#area-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#area-hoverlabel)
    public var hoverLabel: Shared.HoverLabel?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#area-stream) |
    /// [Python](https://plot.ly/python/reference/#area-stream) |
    /// [R](https://plot.ly/r/reference/#area-stream)
    public var stream: Shared.Stream?

    /// An array of operations that manipulate the trace data, for example filtering or sorting the data arrays.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#area-transforms-items-transform) |
    /// [Python](https://plot.ly/python/reference/#area-transforms-items-transform) |
    /// [R](https://plot.ly/r/reference/#area-transforms-items-transform)
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

    /// # Used By
    /// `Area.marker` |
    public struct SymbolicMarker: Encodable {
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
        public var symbol: Shared.Symbol?
    
        /// Area traces are deprecated! Please switch to the *barpolar* trace type. 
        ///
        /// Sets the marker opacity.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#area-marker-opacity) |
        /// [Python](https://plot.ly/python/reference/#area-marker-opacity) |
        /// [R](https://plot.ly/r/reference/#area-marker-opacity)
        public var opacity: Double?
    
        public init(color: Color? = nil, size: Double? = nil, symbol: Shared.Symbol? = nil, opacity: Double? = nil) {
            self.color = color
            self.size = size
            self.symbol = symbol
            self.opacity = opacity
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#area-marker) |
    /// [Python](https://plot.ly/python/reference/#area-marker) |
    /// [R](https://plot.ly/r/reference/#area-marker)
    public var marker: SymbolicMarker?

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
        case transforms = "transform"
        case uiRevision = "uirevision"
        case r
        case t
        case marker
    }
    
    public init(visible: Shared.Visible? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, hoverInfo: Shared.HoverInfo? = nil, hoverLabel: Shared.HoverLabel? = nil, stream: Shared.Stream? = nil, transforms: [Shared.Transform]? = nil, uiRevision: Anything? = nil, r: [Double]? = nil, t: [Double]? = nil, marker: SymbolicMarker? = nil) {
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
    }
}