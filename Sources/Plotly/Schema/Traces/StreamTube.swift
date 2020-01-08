/// Use a streamtube trace to visualize flow in a vector field. 
///
/// Specify a vector field using 6 1D arrays of equal length, 3 position arrays `x`, `y` and `z` and
/// 3 vector component arrays `u`, `v`, and `w`. By default, the tubes' starting positions will be
/// cut from the vector field's x-z plane at its minimum y value. To specify your own starting
/// position, use attributes `starts.x`, `starts.y` and `starts.z`. The color is encoded by the norm
/// of (u, v, w), and the local radius by the divergence of (u, v, w).
public struct StreamTube: Trace {
    public let type: String = "streamtube"

    public let animatable: Bool = false

    /// Determines whether or not this trace is visible. 
    ///
    /// If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the
    /// legend itself is visible).
    public var visible: Visible0?

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

    public var hoverLabel: HoverLabel0?

    public var stream: Stream0?

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

    /// Sets the x coordinates of the vector field.
    public var x: [Double]?

    /// Sets the y coordinates of the vector field.
    public var y: [Double]?

    /// Sets the z coordinates of the vector field.
    public var z: [Double]?

    /// Sets the x components of the vector field.
    public var u: [Double]?

    /// Sets the y components of the vector field.
    public var v: [Double]?

    /// Sets the z components of the vector field.
    public var w: [Double]?

    /// - traces/streamtube/attributes/starts
    public struct Starts: Encodable {
        /// Sets the x components of the starting position of the streamtubes
        public var x: [Double]?
    
        /// Sets the y components of the starting position of the streamtubes
        public var y: [Double]?
    
        /// Sets the z components of the starting position of the streamtubes
        public var z: [Double]?
    
        /// Sets the source reference on plot.ly for  x .
        public var xSource: String?
    
        /// Sets the source reference on plot.ly for  y .
        public var ySource: String?
    
        /// Sets the source reference on plot.ly for  z .
        public var zSource: String?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case x
            case y
            case z
            case xSource = "xsrc"
            case ySource = "ysrc"
            case zSource = "zsrc"
        }
        
        public init(x: [Double]? = nil, y: [Double]? = nil, z: [Double]? = nil, xSource: String? = nil, ySource: String? = nil, zSource: String? = nil) {
            self.x = x
            self.y = y
            self.z = z
            self.xSource = xSource
            self.ySource = ySource
            self.zSource = zSource
        }
    }
    public var starts: Starts?

    /// The maximum number of displayed segments in a streamtube.
    public var maxDisplayed: Int?

    /// The scaling factor for the streamtubes. 
    ///
    /// The default is 1, which avoids two max divergence tubes from touching at adjacent starting
    /// positions.
    public var sizeReference: Double?

    /// Sets a text element associated with this trace. 
    ///
    /// If trace `hoverinfo` contains a *text* flag, this text element will be seen in all hover labels.
    /// Note that streamtube traces do not support array `text` values.
    public var text: String?

    /// Same as `text`.
    public var hoverText: String?

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
    /// true`) are available. variables `tubex`, `tubey`, `tubez`, `tubeu`, `tubev`, `tubew`, `norm` and
    /// `divergence`. Anything contained in tag `<extra>` is displayed in the secondary box, for example
    /// "<extra>{fullData.name}</extra>". To hide the secondary box completely, use an empty tag
    /// `<extra></extra>`.
    public var hoverTemplate: String?

    /// Determines whether or not the color domain is computed with respect to the input data (here u/v/w norm) or the bounds set in `cmin` and `cmax`  Defaults to `false` when `cmin` and `cmax` are set by the user.
    public var cAuto: Bool?

    /// Sets the lower bound of the color domain. 
    ///
    /// Value should have the same units as u/v/w norm and if set, `cmax` must be set as well.
    public var cMin: Double?

    /// Sets the upper bound of the color domain. 
    ///
    /// Value should have the same units as u/v/w norm and if set, `cmin` must be set as well.
    public var cMax: Double?

    /// Sets the mid-point of the color domain by scaling `cmin` and/or `cmax` to be equidistant to this point. 
    ///
    /// Value should have the same units as u/v/w norm. Has no effect when `cauto` is `false`.
    public var cMiddle: Double?

    /// Sets the colorscale. 
    ///
    /// The colorscale must be an array containing arrays mapping a normalized value to an rgb, rgba,
    /// hex, hsl, hsv, or named color string. At minimum, a mapping for the lowest (0) and highest (1)
    /// values are required. For example, `[[0, 'rgb(0,0,255)'], [1, 'rgb(255,0,0)']]`. To control the
    /// bounds of the colorscale in color space, use`cmin` and `cmax`. Alternatively, `colorscale` may
    /// be a palette name string of the following list:
    /// Greys,YlGnBu,Greens,YlOrRd,Bluered,RdBu,Reds,Blues,Picnic,Rainbow,Portland,Jet,Hot,Blackbody,Earth,Electric,Viridis,Cividis.
    public var colorScale: ColorScale?

    /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `colorscale`. 
    ///
    /// In case `colorscale` is unspecified or `autocolorscale` is true, the default palette will be
    /// chosen according to whether numbers in the `color` array are all positive, all negative or
    /// mixed.
    public var autoColorScale: Bool?

    /// Reverses the color mapping if true. 
    ///
    /// If true, `cmin` will correspond to the last color in the array and `cmax` will correspond to the
    /// first color.
    public var reverseScale: Bool?

    /// Determines whether or not a colorbar is displayed for this trace.
    public var showScale: Bool?

    public var colorBar: ColorBar0?

    /// Sets a reference to a shared color axis. 
    ///
    /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
    /// for these shared color axes are set in the layout, under `layout.coloraxis`,
    /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
    public var colorAxis: SubPlotID?

    /// Sets the opacity of the surface. 
    ///
    /// Please note that in the case of using high `opacity` values for example a value greater than or
    /// equal to 0.5 on two surfaces (and 0.25 with four surfaces), an overlay of multiple transparent
    /// surfaces may not perfectly be sorted in depth by the webgl API. This behavior may be improved in
    /// the near future and is subject to change.
    public var opacity: Double?

    public var lightPosition: Up0?

    public var lighting: Lighting0?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    /// - traces/streamtube/attributes/hoverinfo
    public struct HoverInfo: OptionSet, Encodable {
        public let rawValue: Int
    
        public static let x = HoverInfo(rawValue: 1 << 0)
        public static let y = HoverInfo(rawValue: 1 << 1)
        public static let z = HoverInfo(rawValue: 1 << 2)
        public static let u = HoverInfo(rawValue: 1 << 3)
        public static let v = HoverInfo(rawValue: 1 << 4)
        public static let w = HoverInfo(rawValue: 1 << 5)
        public static let norm = HoverInfo(rawValue: 1 << 6)
        public static let divergence = HoverInfo(rawValue: 1 << 7)
        public static let text = HoverInfo(rawValue: 1 << 8)
        public static let name = HoverInfo(rawValue: 1 << 9)
        public static let all = HoverInfo(rawValue: 1 << 10)
        public static let none = HoverInfo(rawValue: 1 << 11)
        public static let skip = HoverInfo(rawValue: 1 << 12)
    
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
            if (self.rawValue & 1 << 7) != 0 { options += ["divergence"] }
            if (self.rawValue & 1 << 8) != 0 { options += ["text"] }
            if (self.rawValue & 1 << 9) != 0 { options += ["name"] }
            if (self.rawValue & 1 << 10) != 0 { options += ["all"] }
            if (self.rawValue & 1 << 11) != 0 { options += ["none"] }
            if (self.rawValue & 1 << 12) != 0 { options += ["skip"] }
            var container = encoder.singleValueContainer()
            try container.encode(options.joined(separator: "+"))
        }
    }
    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    public var hoverInfo: HoverInfo?

    /// Sets a reference between this trace's 3D coordinate system and a 3D scene. 
    ///
    /// If *scene* (the default value), the (x,y,z) coordinates refer to `layout.scene`. If *scene2*,
    /// the (x,y,z) coordinates refer to `layout.scene2`, and so on.
    public var scene: SubPlotID?

    /// Sets the source reference on plot.ly for  ids .
    public var idsSource: String?

    /// Sets the source reference on plot.ly for  customdata .
    public var customDataSource: String?

    /// Sets the source reference on plot.ly for  meta .
    public var metaSource: String?

    /// Sets the source reference on plot.ly for  x .
    public var xSource: String?

    /// Sets the source reference on plot.ly for  y .
    public var ySource: String?

    /// Sets the source reference on plot.ly for  z .
    public var zSource: String?

    /// Sets the source reference on plot.ly for  u .
    public var uSource: String?

    /// Sets the source reference on plot.ly for  v .
    public var vSource: String?

    /// Sets the source reference on plot.ly for  w .
    public var wSource: String?

    /// Sets the source reference on plot.ly for  hovertemplate .
    public var hoverTemplateSource: String?

    /// Sets the source reference on plot.ly for  hoverinfo .
    public var hoverInfoSource: String?

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
        case x
        case y
        case z
        case u
        case v
        case w
        case starts
        case maxDisplayed = "maxdisplayed"
        case sizeReference = "sizeref"
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
        case idsSource = "idssrc"
        case customDataSource = "customdatasrc"
        case metaSource = "metasrc"
        case xSource = "xsrc"
        case ySource = "ysrc"
        case zSource = "zsrc"
        case uSource = "usrc"
        case vSource = "vsrc"
        case wSource = "wsrc"
        case hoverTemplateSource = "hovertemplatesrc"
        case hoverInfoSource = "hoverinfosrc"
    }
    
    public init(visible: Visible0? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, hoverLabel: HoverLabel0? = nil, stream: Stream0? = nil, uiRevision: Anything? = nil, x: [Double]? = nil, y: [Double]? = nil, z: [Double]? = nil, u: [Double]? = nil, v: [Double]? = nil, w: [Double]? = nil, starts: Starts? = nil, maxDisplayed: Int? = nil, sizeReference: Double? = nil, text: String? = nil, hoverText: String? = nil, hoverTemplate: String? = nil, cAuto: Bool? = nil, cMin: Double? = nil, cMax: Double? = nil, cMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: ColorBar0? = nil, colorAxis: SubPlotID? = nil, opacity: Double? = nil, lightPosition: Up0? = nil, lighting: Lighting0? = nil, hoverInfo: HoverInfo? = nil, scene: SubPlotID? = nil, idsSource: String? = nil, customDataSource: String? = nil, metaSource: String? = nil, xSource: String? = nil, ySource: String? = nil, zSource: String? = nil, uSource: String? = nil, vSource: String? = nil, wSource: String? = nil, hoverTemplateSource: String? = nil, hoverInfoSource: String? = nil) {
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
        self.starts = starts
        self.maxDisplayed = maxDisplayed
        self.sizeReference = sizeReference
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
        self.idsSource = idsSource
        self.customDataSource = customDataSource
        self.metaSource = metaSource
        self.xSource = xSource
        self.ySource = ySource
        self.zSource = zSource
        self.uSource = uSource
        self.vSource = vSource
        self.wSource = wSource
        self.hoverTemplateSource = hoverTemplateSource
        self.hoverInfoSource = hoverInfoSource
    }
}