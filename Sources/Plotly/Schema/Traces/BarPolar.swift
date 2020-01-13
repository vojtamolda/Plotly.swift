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
    public var visible: Visible0?

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
    public var hoverLabel: HoverLabel0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-stream) |
    /// [Python](https://plot.ly/python/reference/#barpolar-stream) |
    /// [R](https://plot.ly/r/reference/#barpolar-stream)
    public var stream: Stream0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-transforms) |
    /// [Python](https://plot.ly/python/reference/#barpolar-transforms) |
    /// [R](https://plot.ly/r/reference/#barpolar-transforms)
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
    /// # Used By
    /// `BarPolar.thetaUnit` |
    public enum ThetaUnit: String, Encodable {
        case radians
        case degrees
        case gradians
    }
    /// Sets the unit of input *theta* values. 
    ///
    /// Has an effect only when on *linear* angular axes.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-thetaunit) |
    /// [Python](https://plot.ly/python/reference/#barpolar-thetaunit) |
    /// [R](https://plot.ly/r/reference/#barpolar-thetaunit)
    public var thetaUnit: ThetaUnit?

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
    /// # Used By
    /// `BarPolar.marker` |
    public struct Marker: Encodable {
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-marker-line) |
        /// [Python](https://plot.ly/python/reference/#barpolar-marker-line) |
        /// [R](https://plot.ly/r/reference/#barpolar-marker-line)
        public var line: Line1?
    
        /// Sets themarkercolor. 
        ///
        /// It accepts either a specific color or an array of numbers that are mapped to the colorscale
        /// relative to the max and min values of the array or relative to `marker.cmin` and `marker.cmax`
        /// if set.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-marker-color) |
        /// [Python](https://plot.ly/python/reference/#barpolar-marker-color) |
        /// [R](https://plot.ly/r/reference/#barpolar-marker-color)
        public var color: Color?
    
        /// Determines whether or not the color domain is computed with respect to the input data (here in `marker.color`) or the bounds set in `marker.cmin` and `marker.cmax`  Has an effect only if in `marker.color`is set to a numerical array. 
        ///
        /// Defaults to `false` when `marker.cmin` and `marker.cmax` are set by the user.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-marker-cauto) |
        /// [Python](https://plot.ly/python/reference/#barpolar-marker-cauto) |
        /// [R](https://plot.ly/r/reference/#barpolar-marker-cauto)
        public var cAuto: Bool?
    
        /// Sets the lower bound of the color domain. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
        /// units as in `marker.color` and if set, `marker.cmax` must be set as well.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-marker-cmin) |
        /// [Python](https://plot.ly/python/reference/#barpolar-marker-cmin) |
        /// [R](https://plot.ly/r/reference/#barpolar-marker-cmin)
        public var cMin: Double?
    
        /// Sets the upper bound of the color domain. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
        /// units as in `marker.color` and if set, `marker.cmin` must be set as well.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-marker-cmax) |
        /// [Python](https://plot.ly/python/reference/#barpolar-marker-cmax) |
        /// [R](https://plot.ly/r/reference/#barpolar-marker-cmax)
        public var cMax: Double?
    
        /// Sets the mid-point of the color domain by scaling `marker.cmin` and/or `marker.cmax` to be equidistant to this point. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
        /// units as in `marker.color`. Has no effect when `marker.cauto` is `false`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-marker-cmid) |
        /// [Python](https://plot.ly/python/reference/#barpolar-marker-cmid) |
        /// [R](https://plot.ly/r/reference/#barpolar-marker-cmid)
        public var cMiddle: Double?
    
        /// Sets the colorscale. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. The colorscale must be an
        /// array containing arrays mapping a normalized value to an rgb, rgba, hex, hsl, hsv, or named
        /// color string. At minimum, a mapping for the lowest (0) and highest (1) values are required. For
        /// example, `[[0, 'rgb(0,0,255)'], [1, 'rgb(255,0,0)']]`. To control the bounds of the colorscale
        /// in color space, use`marker.cmin` and `marker.cmax`. Alternatively, `colorscale` may be a palette
        /// name string of the following list:
        /// Greys,YlGnBu,Greens,YlOrRd,Bluered,RdBu,Reds,Blues,Picnic,Rainbow,Portland,Jet,Hot,Blackbody,Earth,Electric,Viridis,Cividis.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-marker-colorscale) |
        /// [Python](https://plot.ly/python/reference/#barpolar-marker-colorscale) |
        /// [R](https://plot.ly/r/reference/#barpolar-marker-colorscale)
        public var colorScale: ColorScale?
    
        /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `marker.colorscale`. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. In case `colorscale` is
        /// unspecified or `autocolorscale` is true, the default palette will be chosen according to whether
        /// numbers in the `color` array are all positive, all negative or mixed.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-marker-autocolorscale) |
        /// [Python](https://plot.ly/python/reference/#barpolar-marker-autocolorscale) |
        /// [R](https://plot.ly/r/reference/#barpolar-marker-autocolorscale)
        public var autoColorScale: Bool?
    
        /// Reverses the color mapping if true. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. If true, `marker.cmin` will
        /// correspond to the last color in the array and `marker.cmax` will correspond to the first color.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-marker-reversescale) |
        /// [Python](https://plot.ly/python/reference/#barpolar-marker-reversescale) |
        /// [R](https://plot.ly/r/reference/#barpolar-marker-reversescale)
        public var reverseScale: Bool?
    
        /// Determines whether or not a colorbar is displayed for this trace. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-marker-showscale) |
        /// [Python](https://plot.ly/python/reference/#barpolar-marker-showscale) |
        /// [R](https://plot.ly/r/reference/#barpolar-marker-showscale)
        public var showScale: Bool?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-marker-colorbar) |
        /// [Python](https://plot.ly/python/reference/#barpolar-marker-colorbar) |
        /// [R](https://plot.ly/r/reference/#barpolar-marker-colorbar)
        public var colorBar: ColorBar0?
    
        /// Sets a reference to a shared color axis. 
        ///
        /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
        /// for these shared color axes are set in the layout, under `layout.coloraxis`,
        /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-marker-coloraxis) |
        /// [Python](https://plot.ly/python/reference/#barpolar-marker-coloraxis) |
        /// [R](https://plot.ly/r/reference/#barpolar-marker-coloraxis)
        public var colorAxis: SubPlotID?
    
        /// Sets the opacity of the bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-marker-opacity) |
        /// [Python](https://plot.ly/python/reference/#barpolar-marker-opacity) |
        /// [R](https://plot.ly/r/reference/#barpolar-marker-opacity)
        public var opacity: Double?
    
        /// Sets the source reference on plot.ly for  color .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-marker-colorsrc) |
        /// [Python](https://plot.ly/python/reference/#barpolar-marker-colorsrc) |
        /// [R](https://plot.ly/r/reference/#barpolar-marker-colorsrc)
        public var colorSource: String?
    
        /// Sets the source reference on plot.ly for  opacity .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-marker-opacitysrc) |
        /// [Python](https://plot.ly/python/reference/#barpolar-marker-opacitysrc) |
        /// [R](https://plot.ly/r/reference/#barpolar-marker-opacitysrc)
        public var opacitySource: String?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case line
            case color
            case cAuto = "cauto"
            case cMin = "cmin"
            case cMax = "cmax"
            case cMiddle = "cmid"
            case colorScale = "colorscale"
            case autoColorScale = "autocolorscale"
            case reverseScale = "reversescale"
            case showScale = "showscale"
            case colorBar = "colorbar"
            case colorAxis = "coloraxis"
            case opacity
            case colorSource = "colorsrc"
            case opacitySource = "opacitysrc"
        }
        
        public init(line: Line1? = nil, color: Color? = nil, cAuto: Bool? = nil, cMin: Double? = nil, cMax: Double? = nil, cMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: ColorBar0? = nil, colorAxis: SubPlotID? = nil, opacity: Double? = nil, colorSource: String? = nil, opacitySource: String? = nil) {
            self.line = line
            self.color = color
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
            self.opacity = opacity
            self.colorSource = colorSource
            self.opacitySource = opacitySource
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-marker) |
    /// [Python](https://plot.ly/python/reference/#barpolar-marker) |
    /// [R](https://plot.ly/r/reference/#barpolar-marker)
    public var marker: Marker?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    ///
    /// # Used By
    /// `BarPolar.hoverInfo` |
    public struct HoverInfo: OptionSet, Encodable {
        public let rawValue: Int
    
        public static let r = HoverInfo(rawValue: 1 << 0)
        public static let theta = HoverInfo(rawValue: 1 << 1)
        public static let text = HoverInfo(rawValue: 1 << 2)
        public static let name = HoverInfo(rawValue: 1 << 3)
        public static let all = HoverInfo(rawValue: 1 << 4)
        public static let none = HoverInfo(rawValue: 1 << 5)
        public static let skip = HoverInfo(rawValue: 1 << 6)
    
        public init(rawValue: Int) { self.rawValue = rawValue }
    
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["r"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["theta"] }
            if (self.rawValue & 1 << 2) != 0 { options += ["text"] }
            if (self.rawValue & 1 << 3) != 0 { options += ["name"] }
            if (self.rawValue & 1 << 4) != 0 { options += ["all"] }
            if (self.rawValue & 1 << 5) != 0 { options += ["none"] }
            if (self.rawValue & 1 << 6) != 0 { options += ["skip"] }
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
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-hoverinfo) |
    /// [Python](https://plot.ly/python/reference/#barpolar-hoverinfo) |
    /// [R](https://plot.ly/r/reference/#barpolar-hoverinfo)
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
    /// true`) are available. Anything contained in tag `<extra>` is displayed in the secondary box, for
    /// example "<extra>{fullData.name}</extra>". To hide the secondary box completely, use an empty tag
    /// `<extra></extra>`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-hovertemplate) |
    /// [Python](https://plot.ly/python/reference/#barpolar-hovertemplate) |
    /// [R](https://plot.ly/r/reference/#barpolar-hovertemplate)
    public var hoverTemplate: String?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-selected) |
    /// [Python](https://plot.ly/python/reference/#barpolar-selected) |
    /// [R](https://plot.ly/r/reference/#barpolar-selected)
    public var selected: Selected0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-unselected) |
    /// [Python](https://plot.ly/python/reference/#barpolar-unselected) |
    /// [R](https://plot.ly/r/reference/#barpolar-unselected)
    public var unselected: Selected0?

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

    /// Sets the source reference on plot.ly for  ids .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-idssrc) |
    /// [Python](https://plot.ly/python/reference/#barpolar-idssrc) |
    /// [R](https://plot.ly/r/reference/#barpolar-idssrc)
    public var idsSource: String?

    /// Sets the source reference on plot.ly for  customdata .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-customdatasrc) |
    /// [Python](https://plot.ly/python/reference/#barpolar-customdatasrc) |
    /// [R](https://plot.ly/r/reference/#barpolar-customdatasrc)
    public var customDataSource: String?

    /// Sets the source reference on plot.ly for  meta .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-metasrc) |
    /// [Python](https://plot.ly/python/reference/#barpolar-metasrc) |
    /// [R](https://plot.ly/r/reference/#barpolar-metasrc)
    public var metaSource: String?

    /// Sets the source reference on plot.ly for  r .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-rsrc) |
    /// [Python](https://plot.ly/python/reference/#barpolar-rsrc) |
    /// [R](https://plot.ly/r/reference/#barpolar-rsrc)
    public var rSource: String?

    /// Sets the source reference on plot.ly for  theta .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-thetasrc) |
    /// [Python](https://plot.ly/python/reference/#barpolar-thetasrc) |
    /// [R](https://plot.ly/r/reference/#barpolar-thetasrc)
    public var thetaSource: String?

    /// Sets the source reference on plot.ly for  base .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-basesrc) |
    /// [Python](https://plot.ly/python/reference/#barpolar-basesrc) |
    /// [R](https://plot.ly/r/reference/#barpolar-basesrc)
    public var baseSource: String?

    /// Sets the source reference on plot.ly for  offset .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-offsetsrc) |
    /// [Python](https://plot.ly/python/reference/#barpolar-offsetsrc) |
    /// [R](https://plot.ly/r/reference/#barpolar-offsetsrc)
    public var offsetSource: String?

    /// Sets the source reference on plot.ly for  width .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-widthsrc) |
    /// [Python](https://plot.ly/python/reference/#barpolar-widthsrc) |
    /// [R](https://plot.ly/r/reference/#barpolar-widthsrc)
    public var widthSource: String?

    /// Sets the source reference on plot.ly for  text .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-textsrc) |
    /// [Python](https://plot.ly/python/reference/#barpolar-textsrc) |
    /// [R](https://plot.ly/r/reference/#barpolar-textsrc)
    public var textSource: String?

    /// Sets the source reference on plot.ly for  hovertext .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-hovertextsrc) |
    /// [Python](https://plot.ly/python/reference/#barpolar-hovertextsrc) |
    /// [R](https://plot.ly/r/reference/#barpolar-hovertextsrc)
    public var hoverTextSource: String?

    /// Sets the source reference on plot.ly for  hoverinfo .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-hoverinfosrc) |
    /// [Python](https://plot.ly/python/reference/#barpolar-hoverinfosrc) |
    /// [R](https://plot.ly/r/reference/#barpolar-hoverinfosrc)
    public var hoverInfoSource: String?

    /// Sets the source reference on plot.ly for  hovertemplate .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#barpolar-hovertemplatesrc) |
    /// [Python](https://plot.ly/python/reference/#barpolar-hovertemplatesrc) |
    /// [R](https://plot.ly/r/reference/#barpolar-hovertemplatesrc)
    public var hoverTemplateSource: String?

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
        case transforms
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
        case idsSource = "idssrc"
        case customDataSource = "customdatasrc"
        case metaSource = "metasrc"
        case rSource = "rsrc"
        case thetaSource = "thetasrc"
        case baseSource = "basesrc"
        case offsetSource = "offsetsrc"
        case widthSource = "widthsrc"
        case textSource = "textsrc"
        case hoverTextSource = "hovertextsrc"
        case hoverInfoSource = "hoverinfosrc"
        case hoverTemplateSource = "hovertemplatesrc"
    }
    
    public init(visible: Visible0? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, selectedPoints: Anything? = nil, hoverLabel: HoverLabel0? = nil, stream: Stream0? = nil, transforms: Transforms0? = nil, uiRevision: Anything? = nil, r: [Double]? = nil, theta: [Double]? = nil, r0: Anything? = nil, dr: Double? = nil, theta0: Anything? = nil, dTheta: Double? = nil, thetaUnit: ThetaUnit? = nil, base: Anything? = nil, offset: Double? = nil, width: Double? = nil, text: String? = nil, hoverText: String? = nil, marker: Marker? = nil, hoverInfo: HoverInfo? = nil, hoverTemplate: String? = nil, selected: Selected0? = nil, unselected: Selected0? = nil, subPlot: SubPlotID? = nil, idsSource: String? = nil, customDataSource: String? = nil, metaSource: String? = nil, rSource: String? = nil, thetaSource: String? = nil, baseSource: String? = nil, offsetSource: String? = nil, widthSource: String? = nil, textSource: String? = nil, hoverTextSource: String? = nil, hoverInfoSource: String? = nil, hoverTemplateSource: String? = nil) {
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
        self.idsSource = idsSource
        self.customDataSource = customDataSource
        self.metaSource = metaSource
        self.rSource = rSource
        self.thetaSource = thetaSource
        self.baseSource = baseSource
        self.offsetSource = offsetSource
        self.widthSource = widthSource
        self.textSource = textSource
        self.hoverTextSource = hoverTextSource
        self.hoverInfoSource = hoverInfoSource
        self.hoverTemplateSource = hoverTemplateSource
    }
}