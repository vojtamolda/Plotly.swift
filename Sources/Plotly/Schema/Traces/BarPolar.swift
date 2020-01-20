/// The data visualized by the radial span of the bars is set in `r`
public struct BarPolar: Trace {
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#type) |
    /// [Python](https://plot.ly/python/reference/#type) |
    /// [R](https://plot.ly/r/reference/#type)
    public let type: String = "barpolar"

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
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-visible) |
    /// [Python](https://plot.ly/python/reference/#barpolar-visible) |
    /// [R](https://plot.ly/r/reference/#barpolar-visible)
    public var visible: Shared.Visible?

    /// Determines whether or not an item corresponding to this trace is shown in the legend.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-showlegend) |
    /// [Python](https://plot.ly/python/reference/#barpolar-showlegend) |
    /// [R](https://plot.ly/r/reference/#barpolar-showlegend)
    public var showLegend: Bool?

    /// Sets the legend group for this trace. 
    ///
    /// Traces part of the same legend group hide/show at the same time when toggling legend items.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-legendgroup) |
    /// [Python](https://plot.ly/python/reference/#barpolar-legendgroup) |
    /// [R](https://plot.ly/r/reference/#barpolar-legendgroup)
    public var legendGroup: String?

    /// Sets the opacity of the trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-opacity) |
    /// [Python](https://plot.ly/python/reference/#barpolar-opacity) |
    /// [R](https://plot.ly/r/reference/#barpolar-opacity)
    public var opacity: Double?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-name) |
    /// [Python](https://plot.ly/python/reference/#barpolar-name) |
    /// [R](https://plot.ly/r/reference/#barpolar-name)
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-uid) |
    /// [Python](https://plot.ly/python/reference/#barpolar-uid) |
    /// [R](https://plot.ly/r/reference/#barpolar-uid)
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-ids) |
    /// [Python](https://plot.ly/python/reference/#barpolar-ids) |
    /// [R](https://plot.ly/r/reference/#barpolar-ids)
    public var ids: [Double]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-customdata) |
    /// [Python](https://plot.ly/python/reference/#barpolar-customdata) |
    /// [R](https://plot.ly/r/reference/#barpolar-customdata)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-meta) |
    /// [Python](https://plot.ly/python/reference/#barpolar-meta) |
    /// [R](https://plot.ly/r/reference/#barpolar-meta)
    public var meta: Anything?

    /// Array containing integer indices of selected points. 
    ///
    /// Has an effect only for traces that support selections. Note that an empty array means an empty
    /// selection where the `unselected` are turned on for all points, whereas, any other non-array
    /// values means no selection all where the `selected` and `unselected` styles have no effect.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-selectedpoints) |
    /// [Python](https://plot.ly/python/reference/#barpolar-selectedpoints) |
    /// [R](https://plot.ly/r/reference/#barpolar-selectedpoints)
    public var selectedPoints: Anything?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#barpolar-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#barpolar-hoverlabel)
    public var hoverLabel: Shared.HoverLabel?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-stream) |
    /// [Python](https://plot.ly/python/reference/#barpolar-stream) |
    /// [R](https://plot.ly/r/reference/#barpolar-stream)
    public var stream: Shared.Stream?

    /// An array of operations that manipulate the trace data, for example filtering or sorting the data arrays.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-transforms-items-transform) |
    /// [Python](https://plot.ly/python/reference/#barpolar-transforms-items-transform) |
    /// [R](https://plot.ly/r/reference/#barpolar-transforms-items-transform)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-uirevision) |
    /// [Python](https://plot.ly/python/reference/#barpolar-uirevision) |
    /// [R](https://plot.ly/r/reference/#barpolar-uirevision)
    public var uiRevision: Anything?

    /// Sets the radial coordinates
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-r) |
    /// [Python](https://plot.ly/python/reference/#barpolar-r) |
    /// [R](https://plot.ly/r/reference/#barpolar-r)
    public var r: [Double]?

    /// Sets the angular coordinates
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-theta) |
    /// [Python](https://plot.ly/python/reference/#barpolar-theta) |
    /// [R](https://plot.ly/r/reference/#barpolar-theta)
    public var theta: [Double]?

    /// Alternate to `r`. 
    ///
    /// Builds a linear space of r coordinates. Use with `dr` where `r0` is the starting coordinate and
    /// `dr` the step.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-r0) |
    /// [Python](https://plot.ly/python/reference/#barpolar-r0) |
    /// [R](https://plot.ly/r/reference/#barpolar-r0)
    public var r0: Anything?

    /// Sets the r coordinate step.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-dr) |
    /// [Python](https://plot.ly/python/reference/#barpolar-dr) |
    /// [R](https://plot.ly/r/reference/#barpolar-dr)
    public var dr: Double?

    /// Alternate to `theta`. 
    ///
    /// Builds a linear space of theta coordinates. Use with `dtheta` where `theta0` is the starting
    /// coordinate and `dtheta` the step.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-theta0) |
    /// [Python](https://plot.ly/python/reference/#barpolar-theta0) |
    /// [R](https://plot.ly/r/reference/#barpolar-theta0)
    public var theta0: Anything?

    /// Sets the theta coordinate step. 
    ///
    /// By default, the `dtheta` step equals the subplot's period divided by the length of the `r`
    /// coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-dtheta) |
    /// [Python](https://plot.ly/python/reference/#barpolar-dtheta) |
    /// [R](https://plot.ly/r/reference/#barpolar-dtheta)
    public var dTheta: Double?

    /// Sets the unit of input *theta* values. 
    ///
    /// Has an effect only when on *linear* angular axes.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-thetaunit) |
    /// [Python](https://plot.ly/python/reference/#barpolar-thetaunit) |
    /// [R](https://plot.ly/r/reference/#barpolar-thetaunit)
    public var thetaUnit: Shared.ThetaUnit?

    /// Sets where the bar base is drawn (in radial axis units). 
    ///
    /// In *stack* barmode, traces that set *base* will be excluded and drawn in *overlay* mode instead.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-base) |
    /// [Python](https://plot.ly/python/reference/#barpolar-base) |
    /// [R](https://plot.ly/r/reference/#barpolar-base)
    public var base: Anything?

    /// Shifts the angular position where the bar is drawn (in *thetatunit* units).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-offset) |
    /// [Python](https://plot.ly/python/reference/#barpolar-offset) |
    /// [R](https://plot.ly/r/reference/#barpolar-offset)
    public var offset: Double?

    /// Sets the bar angular width (in *thetaunit* units).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-width) |
    /// [Python](https://plot.ly/python/reference/#barpolar-width) |
    /// [R](https://plot.ly/r/reference/#barpolar-width)
    public var width: Double?

    /// Sets hover text elements associated with each bar. 
    ///
    /// If a single string, the same string appears over all bars. If an array of string, the items are
    /// mapped in order to the this trace's coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-text) |
    /// [Python](https://plot.ly/python/reference/#barpolar-text) |
    /// [R](https://plot.ly/r/reference/#barpolar-text)
    public var text: String?

    /// Same as `text`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-hovertext) |
    /// [Python](https://plot.ly/python/reference/#barpolar-hovertext) |
    /// [R](https://plot.ly/r/reference/#barpolar-hovertext)
    public var hoverText: String?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-marker) |
    /// [Python](https://plot.ly/python/reference/#barpolar-marker) |
    /// [R](https://plot.ly/r/reference/#barpolar-marker)
    public var marker: Shared.Marker?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-hoverinfo) |
    /// [Python](https://plot.ly/python/reference/#barpolar-hoverinfo) |
    /// [R](https://plot.ly/r/reference/#barpolar-hoverinfo)
    public var hoverInfo: Shared.PolarHoverInfo?

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
    /// true`) are available. Anything contained in tag `<extra>` is displayed in the secondary box, for
    /// example "<extra>{fullData.name}</extra>". To hide the secondary box completely, use an empty tag
    /// `<extra></extra>`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-hovertemplate) |
    /// [Python](https://plot.ly/python/reference/#barpolar-hovertemplate) |
    /// [R](https://plot.ly/r/reference/#barpolar-hovertemplate)
    public var hoverTemplate: String?

    /// # Used By
    /// `BarPolar.selected` |
    public struct Selected: Encodable {
        /// # Used By
        /// `BarPolar.Selected.marker` |
        public struct Marker: Encodable {
            /// Sets the marker opacity of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-selected-marker-opacity) |
            /// [Python](https://plot.ly/python/reference/#barpolar-selected-marker-opacity) |
            /// [R](https://plot.ly/r/reference/#barpolar-selected-marker-opacity)
            public var opacity: Double?
        
            /// Sets the marker color of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-selected-marker-color) |
            /// [Python](https://plot.ly/python/reference/#barpolar-selected-marker-color) |
            /// [R](https://plot.ly/r/reference/#barpolar-selected-marker-color)
            public var color: Color?
        
            public init(opacity: Double? = nil, color: Color? = nil) {
                self.opacity = opacity
                self.color = color
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-selected-marker) |
        /// [Python](https://plot.ly/python/reference/#barpolar-selected-marker) |
        /// [R](https://plot.ly/r/reference/#barpolar-selected-marker)
        public var marker: Marker?
    
        /// # Used By
        /// `BarPolar.Selected.textFont` |
        public struct TextFont: Encodable {
            /// Sets the text font color of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-selected-textfont-color) |
            /// [Python](https://plot.ly/python/reference/#barpolar-selected-textfont-color) |
            /// [R](https://plot.ly/r/reference/#barpolar-selected-textfont-color)
            public var color: Color?
        
            public init(color: Color? = nil) {
                self.color = color
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-selected-textfont) |
        /// [Python](https://plot.ly/python/reference/#barpolar-selected-textfont) |
        /// [R](https://plot.ly/r/reference/#barpolar-selected-textfont)
        public var textFont: TextFont?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case marker
            case textFont = "textfont"
        }
        
        public init(marker: Marker? = nil, textFont: TextFont? = nil) {
            self.marker = marker
            self.textFont = textFont
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-selected) |
    /// [Python](https://plot.ly/python/reference/#barpolar-selected) |
    /// [R](https://plot.ly/r/reference/#barpolar-selected)
    public var selected: Selected?

    /// # Used By
    /// `BarPolar.unselected` |
    public struct Unselected: Encodable {
        /// # Used By
        /// `BarPolar.Unselected.marker` |
        public struct Marker: Encodable {
            /// Sets the marker opacity of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-unselected-marker-opacity) |
            /// [Python](https://plot.ly/python/reference/#barpolar-unselected-marker-opacity) |
            /// [R](https://plot.ly/r/reference/#barpolar-unselected-marker-opacity)
            public var opacity: Double?
        
            /// Sets the marker color of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-unselected-marker-color) |
            /// [Python](https://plot.ly/python/reference/#barpolar-unselected-marker-color) |
            /// [R](https://plot.ly/r/reference/#barpolar-unselected-marker-color)
            public var color: Color?
        
            public init(opacity: Double? = nil, color: Color? = nil) {
                self.opacity = opacity
                self.color = color
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-unselected-marker) |
        /// [Python](https://plot.ly/python/reference/#barpolar-unselected-marker) |
        /// [R](https://plot.ly/r/reference/#barpolar-unselected-marker)
        public var marker: Marker?
    
        /// # Used By
        /// `BarPolar.Unselected.textFont` |
        public struct TextFont: Encodable {
            /// Sets the text font color of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-unselected-textfont-color) |
            /// [Python](https://plot.ly/python/reference/#barpolar-unselected-textfont-color) |
            /// [R](https://plot.ly/r/reference/#barpolar-unselected-textfont-color)
            public var color: Color?
        
            public init(color: Color? = nil) {
                self.color = color
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-unselected-textfont) |
        /// [Python](https://plot.ly/python/reference/#barpolar-unselected-textfont) |
        /// [R](https://plot.ly/r/reference/#barpolar-unselected-textfont)
        public var textFont: TextFont?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case marker
            case textFont = "textfont"
        }
        
        public init(marker: Marker? = nil, textFont: TextFont? = nil) {
            self.marker = marker
            self.textFont = textFont
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-unselected) |
    /// [Python](https://plot.ly/python/reference/#barpolar-unselected) |
    /// [R](https://plot.ly/r/reference/#barpolar-unselected)
    public var unselected: Unselected?

    /// Sets a reference between this trace's data coordinates and a polar subplot. 
    ///
    /// If *polar* (the default value), the data refer to `layout.polar`. If *polar2*, the data refer to
    /// `layout.polar2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-subplot) |
    /// [Python](https://plot.ly/python/reference/#barpolar-subplot) |
    /// [R](https://plot.ly/r/reference/#barpolar-subplot)
    public var subPlot: SubPlotID?

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
        case selectedPoints = "selectedpoints"
        case hoverLabel = "hoverlabel"
        case stream
        case transforms = "transform"
        case uiRevision = "uirevision"
        case r
        case theta
        case r0
        case dr
        case theta0
        case dTheta = "dtheta"
        case thetaUnit = "thetaunit"
        case base
        case offset
        case width
        case text
        case hoverText = "hovertext"
        case marker
        case hoverInfo = "hoverinfo"
        case hoverTemplate = "hovertemplate"
        case selected
        case unselected
        case subPlot = "subplot"
    }
    
    public init(visible: Shared.Visible? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, selectedPoints: Anything? = nil, hoverLabel: Shared.HoverLabel? = nil, stream: Shared.Stream? = nil, transforms: [Shared.Transform]? = nil, uiRevision: Anything? = nil, r: [Double]? = nil, theta: [Double]? = nil, r0: Anything? = nil, dr: Double? = nil, theta0: Anything? = nil, dTheta: Double? = nil, thetaUnit: Shared.ThetaUnit? = nil, base: Anything? = nil, offset: Double? = nil, width: Double? = nil, text: String? = nil, hoverText: String? = nil, marker: Shared.Marker? = nil, hoverInfo: Shared.PolarHoverInfo? = nil, hoverTemplate: String? = nil, selected: Selected? = nil, unselected: Unselected? = nil, subPlot: SubPlotID? = nil) {
        self.visible = visible
        self.showLegend = showLegend
        self.legendGroup = legendGroup
        self.opacity = opacity
        self.name = name
        self.uid = uid
        self.ids = ids
        self.customData = customData
        self.meta = meta
        self.selectedPoints = selectedPoints
        self.hoverLabel = hoverLabel
        self.stream = stream
        self.transforms = transforms
        self.uiRevision = uiRevision
        self.r = r
        self.theta = theta
        self.r0 = r0
        self.dr = dr
        self.theta0 = theta0
        self.dTheta = dTheta
        self.thetaUnit = thetaUnit
        self.base = base
        self.offset = offset
        self.width = width
        self.text = text
        self.hoverText = hoverText
        self.marker = marker
        self.hoverInfo = hoverInfo
        self.hoverTemplate = hoverTemplate
        self.selected = selected
        self.unselected = unselected
        self.subPlot = subPlot
    }
}