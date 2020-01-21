/// Use cone traces to visualize vector fields. 
///
/// Specify a vector field using 6 1D arrays, 3 position arrays `x`, `y` and `z` and 3 vector
/// component arrays `u`, `v`, `w`. The cones are drawn exactly at the positions given by `x`, `y`
/// and `z`.
public struct Cone<XData, YData, ZData>: Trace where XData: Encodable, YData: Encodable, ZData: Encodable {
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#type) |
    /// [Python](https://plot.ly/python/reference/#type) |
    /// [R](https://plot.ly/r/reference/#type)
    public let type: String = "cone"

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
    /// [JavaScript](https://plot.ly/javascript/reference/#cone-visible) |
    /// [Python](https://plot.ly/python/reference/#cone-visible) |
    /// [R](https://plot.ly/r/reference/#cone-visible)
    public var visible: Shared.Visible?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#cone-name) |
    /// [Python](https://plot.ly/python/reference/#cone-name) |
    /// [R](https://plot.ly/r/reference/#cone-name)
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#cone-uid) |
    /// [Python](https://plot.ly/python/reference/#cone-uid) |
    /// [R](https://plot.ly/r/reference/#cone-uid)
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#cone-ids) |
    /// [Python](https://plot.ly/python/reference/#cone-ids) |
    /// [R](https://plot.ly/r/reference/#cone-ids)
    public var ids: [Double]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#cone-customdata) |
    /// [Python](https://plot.ly/python/reference/#cone-customdata) |
    /// [R](https://plot.ly/r/reference/#cone-customdata)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#cone-meta) |
    /// [Python](https://plot.ly/python/reference/#cone-meta) |
    /// [R](https://plot.ly/r/reference/#cone-meta)
    public var meta: Anything?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#cone-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#cone-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#cone-hoverlabel)
    public var hoverLabel: Shared.HoverLabel?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#cone-stream) |
    /// [Python](https://plot.ly/python/reference/#cone-stream) |
    /// [R](https://plot.ly/r/reference/#cone-stream)
    public var stream: Shared.Stream?

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
    /// [JavaScript](https://plot.ly/javascript/reference/#cone-uirevision) |
    /// [Python](https://plot.ly/python/reference/#cone-uirevision) |
    /// [R](https://plot.ly/r/reference/#cone-uirevision)
    public var uiRevision: Anything?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#cone-attributes) |
    /// [Python](https://plot.ly/python/reference/#cone-attributes) |
    /// [R](https://plot.ly/r/reference/#cone-attributes)
    public var x: XData?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#cone-attributes) |
    /// [Python](https://plot.ly/python/reference/#cone-attributes) |
    /// [R](https://plot.ly/r/reference/#cone-attributes)
    public var y: YData?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#cone-attributes) |
    /// [Python](https://plot.ly/python/reference/#cone-attributes) |
    /// [R](https://plot.ly/r/reference/#cone-attributes)
    public var z: ZData?

    /// Sets the x components of the vector field.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#cone-u) |
    /// [Python](https://plot.ly/python/reference/#cone-u) |
    /// [R](https://plot.ly/r/reference/#cone-u)
    public var u: [Double]?

    /// Sets the y components of the vector field.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#cone-v) |
    /// [Python](https://plot.ly/python/reference/#cone-v) |
    /// [R](https://plot.ly/r/reference/#cone-v)
    public var v: [Double]?

    /// Sets the z components of the vector field.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#cone-w) |
    /// [Python](https://plot.ly/python/reference/#cone-w) |
    /// [R](https://plot.ly/r/reference/#cone-w)
    public var w: [Double]?

    /// Determines whether `sizeref` is set as a *scaled* (i.e unitless) scalar (normalized by the max u/v/w norm in the vector field) or as *absolute* value (in the same units as the vector field).
    ///
    /// # Used By
    /// `Cone.sizeMode` |
    public enum SizeMode: String, Encodable {
        case scaled
        case absolute
    }
    /// Determines whether `sizeref` is set as a *scaled* (i.e unitless) scalar (normalized by the max u/v/w norm in the vector field) or as *absolute* value (in the same units as the vector field).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#cone-sizemode) |
    /// [Python](https://plot.ly/python/reference/#cone-sizemode) |
    /// [R](https://plot.ly/r/reference/#cone-sizemode)
    public var sizeMode: SizeMode?

    /// Adjusts the cone size scaling. 
    ///
    /// The size of the cones is determined by their u/v/w norm multiplied a factor and `sizeref`. This
    /// factor (computed internally) corresponds to the minimum "time" to travel across two successive
    /// x/y/z positions at the average velocity of those two successive positions. All cones in a given
    /// trace use the same factor. With `sizemode` set to *scaled*, `sizeref` is unitless, its default
    /// value is *0.5* With `sizemode` set to *absolute*, `sizeref` has the same units as the u/v/w
    /// vector field, its the default value is half the sample's maximum vector norm.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#cone-sizeref) |
    /// [Python](https://plot.ly/python/reference/#cone-sizeref) |
    /// [R](https://plot.ly/r/reference/#cone-sizeref)
    public var sizeReference: Double?

    /// Sets the cones' anchor with respect to their x/y/z positions. 
    ///
    /// Note that *cm* denote the cone's center of mass which corresponds to 1/4 from the tail to tip.
    ///
    /// # Used By
    /// `Cone.anchor` |
    public enum Anchor: String, Encodable {
        case tip
        case tail
        case cm
        case center
    }
    /// Sets the cones' anchor with respect to their x/y/z positions. 
    ///
    /// Note that *cm* denote the cone's center of mass which corresponds to 1/4 from the tail to tip.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#cone-anchor) |
    /// [Python](https://plot.ly/python/reference/#cone-anchor) |
    /// [R](https://plot.ly/r/reference/#cone-anchor)
    public var anchor: Anchor?

    /// Sets the text elements associated with the cones. 
    ///
    /// If trace `hoverinfo` contains a *text* flag and *hovertext* is not set, these elements will be
    /// seen in the hover labels.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#cone-text) |
    /// [Python](https://plot.ly/python/reference/#cone-text) |
    /// [R](https://plot.ly/r/reference/#cone-text)
    public var text: ArrayOrString?

    /// Same as `text`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#cone-hovertext) |
    /// [Python](https://plot.ly/python/reference/#cone-hovertext) |
    /// [R](https://plot.ly/r/reference/#cone-hovertext)
    public var hoverText: ArrayOrString?

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
    /// true`) are available. variable `norm` Anything contained in tag `<extra>` is displayed in the
    /// secondary box, for example "<extra>{fullData.name}</extra>". To hide the secondary box
    /// completely, use an empty tag `<extra></extra>`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#cone-hovertemplate) |
    /// [Python](https://plot.ly/python/reference/#cone-hovertemplate) |
    /// [R](https://plot.ly/r/reference/#cone-hovertemplate)
    public var hoverTemplate: ArrayOrString?

    /// Determines whether or not the color domain is computed with respect to the input data (here u/v/w norm) or the bounds set in `cmin` and `cmax`  Defaults to `false` when `cmin` and `cmax` are set by the user.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#cone-cauto) |
    /// [Python](https://plot.ly/python/reference/#cone-cauto) |
    /// [R](https://plot.ly/r/reference/#cone-cauto)
    public var cAuto: Bool?

    /// Sets the lower bound of the color domain. 
    ///
    /// Value should have the same units as u/v/w norm and if set, `cmax` must be set as well.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#cone-cmin) |
    /// [Python](https://plot.ly/python/reference/#cone-cmin) |
    /// [R](https://plot.ly/r/reference/#cone-cmin)
    public var cMin: Double?

    /// Sets the upper bound of the color domain. 
    ///
    /// Value should have the same units as u/v/w norm and if set, `cmin` must be set as well.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#cone-cmax) |
    /// [Python](https://plot.ly/python/reference/#cone-cmax) |
    /// [R](https://plot.ly/r/reference/#cone-cmax)
    public var cMax: Double?

    /// Sets the mid-point of the color domain by scaling `cmin` and/or `cmax` to be equidistant to this point. 
    ///
    /// Value should have the same units as u/v/w norm. Has no effect when `cauto` is `false`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#cone-cmid) |
    /// [Python](https://plot.ly/python/reference/#cone-cmid) |
    /// [R](https://plot.ly/r/reference/#cone-cmid)
    public var cMiddle: Double?

    /// Sets the colorscale. 
    ///
    /// The colorscale must be an array containing arrays mapping a normalized value to an rgb, rgba,
    /// hex, hsl, hsv, or named color string. At minimum, a mapping for the lowest (0) and highest (1)
    /// values are required. For example, `[[0, 'rgb(0,0,255)'], [1, 'rgb(255,0,0)']]`. To control the
    /// bounds of the colorscale in color space, use`cmin` and `cmax`. Alternatively, `colorscale` may
    /// be a palette name string of the following list:
    /// Greys,YlGnBu,Greens,YlOrRd,Bluered,RdBu,Reds,Blues,Picnic,Rainbow,Portland,Jet,Hot,Blackbody,Earth,Electric,Viridis,Cividis.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#cone-colorscale) |
    /// [Python](https://plot.ly/python/reference/#cone-colorscale) |
    /// [R](https://plot.ly/r/reference/#cone-colorscale)
    public var colorScale: ColorScale?

    /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `colorscale`. 
    ///
    /// In case `colorscale` is unspecified or `autocolorscale` is true, the default palette will be
    /// chosen according to whether numbers in the `color` array are all positive, all negative or
    /// mixed.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#cone-autocolorscale) |
    /// [Python](https://plot.ly/python/reference/#cone-autocolorscale) |
    /// [R](https://plot.ly/r/reference/#cone-autocolorscale)
    public var autoColorScale: Bool?

    /// Reverses the color mapping if true. 
    ///
    /// If true, `cmin` will correspond to the last color in the array and `cmax` will correspond to the
    /// first color.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#cone-reversescale) |
    /// [Python](https://plot.ly/python/reference/#cone-reversescale) |
    /// [R](https://plot.ly/r/reference/#cone-reversescale)
    public var reverseScale: Bool?

    /// Determines whether or not a colorbar is displayed for this trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#cone-showscale) |
    /// [Python](https://plot.ly/python/reference/#cone-showscale) |
    /// [R](https://plot.ly/r/reference/#cone-showscale)
    public var showScale: Bool?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#cone-colorbar) |
    /// [Python](https://plot.ly/python/reference/#cone-colorbar) |
    /// [R](https://plot.ly/r/reference/#cone-colorbar)
    public var colorBar: Shared.ColorBar?

    /// Sets a reference to a shared color axis. 
    ///
    /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
    /// for these shared color axes are set in the layout, under `layout.coloraxis`,
    /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#cone-coloraxis) |
    /// [Python](https://plot.ly/python/reference/#cone-coloraxis) |
    /// [R](https://plot.ly/r/reference/#cone-coloraxis)
    public var colorAxis: SubPlotID?

    /// Sets the opacity of the surface. 
    ///
    /// Please note that in the case of using high `opacity` values for example a value greater than or
    /// equal to 0.5 on two surfaces (and 0.25 with four surfaces), an overlay of multiple transparent
    /// surfaces may not perfectly be sorted in depth by the webgl API. This behavior may be improved in
    /// the near future and is subject to change.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#cone-opacity) |
    /// [Python](https://plot.ly/python/reference/#cone-opacity) |
    /// [R](https://plot.ly/r/reference/#cone-opacity)
    public var opacity: Double?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#cone-lightposition) |
    /// [Python](https://plot.ly/python/reference/#cone-lightposition) |
    /// [R](https://plot.ly/r/reference/#cone-lightposition)
    public var lightPosition: Shared.LightPosition?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#cone-lighting) |
    /// [Python](https://plot.ly/python/reference/#cone-lighting) |
    /// [R](https://plot.ly/r/reference/#cone-lighting)
    public var lighting: Shared.Lighting?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    ///
    /// # Used By
    /// `Cone.hoverInfo` |
    public struct HoverInfo: OptionSet, Encodable {
        public let rawValue: Int
    
        public static let x = HoverInfo(rawValue: 1 << 0)
        public static let y = HoverInfo(rawValue: 1 << 1)
        public static let z = HoverInfo(rawValue: 1 << 2)
        public static let u = HoverInfo(rawValue: 1 << 3)
        public static let v = HoverInfo(rawValue: 1 << 4)
        public static let w = HoverInfo(rawValue: 1 << 5)
        public static let norm = HoverInfo(rawValue: 1 << 6)
        public static let text = HoverInfo(rawValue: 1 << 7)
        public static let name = HoverInfo(rawValue: 1 << 8)
        public static let all = HoverInfo(rawValue: 1 << 9)
        public static let none = HoverInfo(rawValue: 1 << 10)
        public static let skip = HoverInfo(rawValue: 1 << 11)
    
        public init(rawValue: Int) { self.rawValue = rawValue }
    
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["x"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["y"] }
            if (self.rawValue & 1 << 2) != 0 { options += ["z"] }
            if (self.rawValue & 1 << 3) != 0 { options += ["u"] }
            if (self.rawValue & 1 << 4) != 0 { options += ["v"] }
            if (self.rawValue & 1 << 5) != 0 { options += ["w"] }
            if (self.rawValue & 1 << 6) != 0 { options += ["norm"] }
            if (self.rawValue & 1 << 7) != 0 { options += ["text"] }
            if (self.rawValue & 1 << 8) != 0 { options += ["name"] }
            if (self.rawValue & 1 << 9) != 0 { options += ["all"] }
            if (self.rawValue & 1 << 10) != 0 { options += ["none"] }
            if (self.rawValue & 1 << 11) != 0 { options += ["skip"] }
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
    /// [JavaScript](https://plot.ly/javascript/reference/#cone-hoverinfo) |
    /// [Python](https://plot.ly/python/reference/#cone-hoverinfo) |
    /// [R](https://plot.ly/r/reference/#cone-hoverinfo)
    public var hoverInfo: HoverInfo?

    /// Sets a reference between this trace's 3D coordinate system and a 3D scene. 
    ///
    /// If *scene* (the default value), the (x,y,z) coordinates refer to `layout.scene`. If *scene2*,
    /// the (x,y,z) coordinates refer to `layout.scene2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#cone-scene) |
    /// [Python](https://plot.ly/python/reference/#cone-scene) |
    /// [R](https://plot.ly/r/reference/#cone-scene)
    public var scene: SubPlotID?

    /// Plotly compatible property encoding
    enum CodingKeys: String, CodingKey {
        case type
        case animatable
        case visible
        case name
        case uid
        case ids
        case customData = "customdata"
        case meta
        case hoverLabel = "hoverlabel"
        case stream
        case uiRevision = "uirevision"
        case x = "attributes"
        case y = "attributes"
        case z = "attributes"
        case u
        case v
        case w
        case sizeMode = "sizemode"
        case sizeReference = "sizeref"
        case anchor
        case text
        case hoverText = "hovertext"
        case hoverTemplate = "hovertemplate"
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
        case lightPosition = "lightposition"
        case lighting
        case hoverInfo = "hoverinfo"
        case scene
    }
    
    public init(visible: Shared.Visible? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, hoverLabel: Shared.HoverLabel? = nil, stream: Shared.Stream? = nil, uiRevision: Anything? = nil, x: XData? = nil, y: YData? = nil, z: ZData? = nil, u: [Double]? = nil, v: [Double]? = nil, w: [Double]? = nil, sizeMode: SizeMode? = nil, sizeReference: Double? = nil, anchor: Anchor? = nil, text: ArrayOrString? = nil, hoverText: ArrayOrString? = nil, hoverTemplate: ArrayOrString? = nil, cAuto: Bool? = nil, cMin: Double? = nil, cMax: Double? = nil, cMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: Shared.ColorBar? = nil, colorAxis: SubPlotID? = nil, opacity: Double? = nil, lightPosition: Shared.LightPosition? = nil, lighting: Shared.Lighting? = nil, hoverInfo: HoverInfo? = nil, scene: SubPlotID? = nil) {
        self.visible = visible
        self.name = name
        self.uid = uid
        self.ids = ids
        self.customData = customData
        self.meta = meta
        self.hoverLabel = hoverLabel
        self.stream = stream
        self.uiRevision = uiRevision
        self.x = x
        self.y = y
        self.z = z
        self.u = u
        self.v = v
        self.w = w
        self.sizeMode = sizeMode
        self.sizeReference = sizeReference
        self.anchor = anchor
        self.text = text
        self.hoverText = hoverText
        self.hoverTemplate = hoverTemplate
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
        self.lightPosition = lightPosition
        self.lighting = lighting
        self.hoverInfo = hoverInfo
        self.scene = scene
    }
}