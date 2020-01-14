/// Draws a bivariate kernel density estimation with a Gaussian kernel from `lon` and `lat` coordinates and optional `z` values using a colorscale.
public struct DensityMapbox: Trace {
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#type) |
    /// [Python](https://plot.ly/python/reference/#type) |
    /// [R](https://plot.ly/r/reference/#type)
    public let type: String = "densitymapbox"

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
    /// [JavaScript](https://plot.ly/javascript/reference/#densitymapbox-visible) |
    /// [Python](https://plot.ly/python/reference/#densitymapbox-visible) |
    /// [R](https://plot.ly/r/reference/#densitymapbox-visible)
    public var visible: Visible?

    /// Sets the opacity of the trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#densitymapbox-opacity) |
    /// [Python](https://plot.ly/python/reference/#densitymapbox-opacity) |
    /// [R](https://plot.ly/r/reference/#densitymapbox-opacity)
    public var opacity: Double?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#densitymapbox-name) |
    /// [Python](https://plot.ly/python/reference/#densitymapbox-name) |
    /// [R](https://plot.ly/r/reference/#densitymapbox-name)
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#densitymapbox-uid) |
    /// [Python](https://plot.ly/python/reference/#densitymapbox-uid) |
    /// [R](https://plot.ly/r/reference/#densitymapbox-uid)
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#densitymapbox-ids) |
    /// [Python](https://plot.ly/python/reference/#densitymapbox-ids) |
    /// [R](https://plot.ly/r/reference/#densitymapbox-ids)
    public var ids: [Double]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#densitymapbox-customdata) |
    /// [Python](https://plot.ly/python/reference/#densitymapbox-customdata) |
    /// [R](https://plot.ly/r/reference/#densitymapbox-customdata)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#densitymapbox-meta) |
    /// [Python](https://plot.ly/python/reference/#densitymapbox-meta) |
    /// [R](https://plot.ly/r/reference/#densitymapbox-meta)
    public var meta: Anything?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#densitymapbox-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#densitymapbox-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#densitymapbox-hoverlabel)
    public var hoverLabel: HoverLabel?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#densitymapbox-stream) |
    /// [Python](https://plot.ly/python/reference/#densitymapbox-stream) |
    /// [R](https://plot.ly/r/reference/#densitymapbox-stream)
    public var stream: Stream?

    /// An array of operations that manipulate the trace data, for example filtering or sorting the data arrays.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#densitymapbox-transforms-items-transform) |
    /// [Python](https://plot.ly/python/reference/#densitymapbox-transforms-items-transform) |
    /// [R](https://plot.ly/r/reference/#densitymapbox-transforms-items-transform)
    public var transforms: [Transform]?

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
    /// [JavaScript](https://plot.ly/javascript/reference/#densitymapbox-uirevision) |
    /// [Python](https://plot.ly/python/reference/#densitymapbox-uirevision) |
    /// [R](https://plot.ly/r/reference/#densitymapbox-uirevision)
    public var uiRevision: Anything?

    /// Sets the longitude coordinates (in degrees East).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#densitymapbox-lon) |
    /// [Python](https://plot.ly/python/reference/#densitymapbox-lon) |
    /// [R](https://plot.ly/r/reference/#densitymapbox-lon)
    public var longitude: [Double]?

    /// Sets the latitude coordinates (in degrees North).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#densitymapbox-lat) |
    /// [Python](https://plot.ly/python/reference/#densitymapbox-lat) |
    /// [R](https://plot.ly/r/reference/#densitymapbox-lat)
    public var latitude: [Double]?

    /// Sets the points' weight. 
    ///
    /// For example, a value of 10 would be equivalent to having 10 points of weight 1 in the same spot
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#densitymapbox-z) |
    /// [Python](https://plot.ly/python/reference/#densitymapbox-z) |
    /// [R](https://plot.ly/r/reference/#densitymapbox-z)
    public var z: [Double]?

    /// Sets the radius of influence of one `lon` / `lat` point in pixels. 
    ///
    /// Increasing the value makes the densitymapbox trace smoother, but less detailed.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#densitymapbox-radius) |
    /// [Python](https://plot.ly/python/reference/#densitymapbox-radius) |
    /// [R](https://plot.ly/r/reference/#densitymapbox-radius)
    public var radius: Double?

    /// Determines if the densitymapbox trace will be inserted before the layer with the specified ID. 
    ///
    /// By default, densitymapbox traces are placed below the first layer of type symbol If set to '',
    /// the layer will be inserted above every existing layer.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#densitymapbox-below) |
    /// [Python](https://plot.ly/python/reference/#densitymapbox-below) |
    /// [R](https://plot.ly/r/reference/#densitymapbox-below)
    public var below: String?

    /// Sets text elements associated with each (lon,lat) pair If a single string, the same string appears over all the data points. 
    ///
    /// If an array of string, the items are mapped in order to the this trace's (lon,lat) coordinates.
    /// If trace `hoverinfo` contains a *text* flag and *hovertext* is not set, these elements will be
    /// seen in the hover labels.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#densitymapbox-text) |
    /// [Python](https://plot.ly/python/reference/#densitymapbox-text) |
    /// [R](https://plot.ly/r/reference/#densitymapbox-text)
    public var text: String?

    /// Sets hover text elements associated with each (lon,lat) pair If a single string, the same string appears over all the data points. 
    ///
    /// If an array of string, the items are mapped in order to the this trace's (lon,lat) coordinates.
    /// To be seen, trace `hoverinfo` must contain a *text* flag.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#densitymapbox-hovertext) |
    /// [Python](https://plot.ly/python/reference/#densitymapbox-hovertext) |
    /// [R](https://plot.ly/r/reference/#densitymapbox-hovertext)
    public var hoverText: String?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    ///
    /// # Used By
    /// `DensityMapbox.hoverInfo` |
    public struct HoverInfo: OptionSet, Encodable {
        public let rawValue: Int
    
        public static let longitude = HoverInfo(rawValue: 1 << 0)
        public static let latitude = HoverInfo(rawValue: 1 << 1)
        public static let z = HoverInfo(rawValue: 1 << 2)
        public static let text = HoverInfo(rawValue: 1 << 3)
        public static let name = HoverInfo(rawValue: 1 << 4)
        public static let all = HoverInfo(rawValue: 1 << 5)
        public static let none = HoverInfo(rawValue: 1 << 6)
        public static let skip = HoverInfo(rawValue: 1 << 7)
    
        public init(rawValue: Int) { self.rawValue = rawValue }
    
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["lon"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["lat"] }
            if (self.rawValue & 1 << 2) != 0 { options += ["z"] }
            if (self.rawValue & 1 << 3) != 0 { options += ["text"] }
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
    /// [JavaScript](https://plot.ly/javascript/reference/#densitymapbox-hoverinfo) |
    /// [Python](https://plot.ly/python/reference/#densitymapbox-hoverinfo) |
    /// [R](https://plot.ly/r/reference/#densitymapbox-hoverinfo)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#densitymapbox-hovertemplate) |
    /// [Python](https://plot.ly/python/reference/#densitymapbox-hovertemplate) |
    /// [R](https://plot.ly/r/reference/#densitymapbox-hovertemplate)
    public var hoverTemplate: String?

    /// Determines whether or not the color domain is computed with respect to the input data (here in `z`) or the bounds set in `zmin` and `zmax`  Defaults to `false` when `zmin` and `zmax` are set by the user.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#densitymapbox-zauto) |
    /// [Python](https://plot.ly/python/reference/#densitymapbox-zauto) |
    /// [R](https://plot.ly/r/reference/#densitymapbox-zauto)
    public var zAuto: Bool?

    /// Sets the lower bound of the color domain. 
    ///
    /// Value should have the same units as in `z` and if set, `zmax` must be set as well.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#densitymapbox-zmin) |
    /// [Python](https://plot.ly/python/reference/#densitymapbox-zmin) |
    /// [R](https://plot.ly/r/reference/#densitymapbox-zmin)
    public var zMin: Double?

    /// Sets the upper bound of the color domain. 
    ///
    /// Value should have the same units as in `z` and if set, `zmin` must be set as well.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#densitymapbox-zmax) |
    /// [Python](https://plot.ly/python/reference/#densitymapbox-zmax) |
    /// [R](https://plot.ly/r/reference/#densitymapbox-zmax)
    public var zMax: Double?

    /// Sets the mid-point of the color domain by scaling `zmin` and/or `zmax` to be equidistant to this point. 
    ///
    /// Value should have the same units as in `z`. Has no effect when `zauto` is `false`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#densitymapbox-zmid) |
    /// [Python](https://plot.ly/python/reference/#densitymapbox-zmid) |
    /// [R](https://plot.ly/r/reference/#densitymapbox-zmid)
    public var zMiddle: Double?

    /// Sets the colorscale. 
    ///
    /// The colorscale must be an array containing arrays mapping a normalized value to an rgb, rgba,
    /// hex, hsl, hsv, or named color string. At minimum, a mapping for the lowest (0) and highest (1)
    /// values are required. For example, `[[0, 'rgb(0,0,255)'], [1, 'rgb(255,0,0)']]`. To control the
    /// bounds of the colorscale in color space, use`zmin` and `zmax`. Alternatively, `colorscale` may
    /// be a palette name string of the following list:
    /// Greys,YlGnBu,Greens,YlOrRd,Bluered,RdBu,Reds,Blues,Picnic,Rainbow,Portland,Jet,Hot,Blackbody,Earth,Electric,Viridis,Cividis.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#densitymapbox-colorscale) |
    /// [Python](https://plot.ly/python/reference/#densitymapbox-colorscale) |
    /// [R](https://plot.ly/r/reference/#densitymapbox-colorscale)
    public var colorScale: ColorScale?

    /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `colorscale`. 
    ///
    /// In case `colorscale` is unspecified or `autocolorscale` is true, the default palette will be
    /// chosen according to whether numbers in the `color` array are all positive, all negative or
    /// mixed.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#densitymapbox-autocolorscale) |
    /// [Python](https://plot.ly/python/reference/#densitymapbox-autocolorscale) |
    /// [R](https://plot.ly/r/reference/#densitymapbox-autocolorscale)
    public var autoColorScale: Bool?

    /// Reverses the color mapping if true. 
    ///
    /// If true, `zmin` will correspond to the last color in the array and `zmax` will correspond to the
    /// first color.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#densitymapbox-reversescale) |
    /// [Python](https://plot.ly/python/reference/#densitymapbox-reversescale) |
    /// [R](https://plot.ly/r/reference/#densitymapbox-reversescale)
    public var reverseScale: Bool?

    /// Determines whether or not a colorbar is displayed for this trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#densitymapbox-showscale) |
    /// [Python](https://plot.ly/python/reference/#densitymapbox-showscale) |
    /// [R](https://plot.ly/r/reference/#densitymapbox-showscale)
    public var showScale: Bool?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#densitymapbox-colorbar) |
    /// [Python](https://plot.ly/python/reference/#densitymapbox-colorbar) |
    /// [R](https://plot.ly/r/reference/#densitymapbox-colorbar)
    public var colorBar: ColorBar?

    /// Sets a reference to a shared color axis. 
    ///
    /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
    /// for these shared color axes are set in the layout, under `layout.coloraxis`,
    /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#densitymapbox-coloraxis) |
    /// [Python](https://plot.ly/python/reference/#densitymapbox-coloraxis) |
    /// [R](https://plot.ly/r/reference/#densitymapbox-coloraxis)
    public var colorAxis: SubPlotID?

    /// Sets a reference between this trace's data coordinates and a mapbox subplot. 
    ///
    /// If *mapbox* (the default value), the data refer to `layout.mapbox`. If *mapbox2*, the data refer
    /// to `layout.mapbox2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#densitymapbox-subplot) |
    /// [Python](https://plot.ly/python/reference/#densitymapbox-subplot) |
    /// [R](https://plot.ly/r/reference/#densitymapbox-subplot)
    public var subPlot: SubPlotID?

    /// Plotly compatible property encoding
    enum CodingKeys: String, CodingKey {
        case type
        case animatable
        case visible
        case opacity
        case name
        case uid
        case ids
        case customData = "customdata"
        case meta
        case hoverLabel = "hoverlabel"
        case stream
        case transforms = "transform"
        case uiRevision = "uirevision"
        case longitude = "lon"
        case latitude = "lat"
        case z
        case radius
        case below
        case text
        case hoverText = "hovertext"
        case hoverInfo = "hoverinfo"
        case hoverTemplate = "hovertemplate"
        case zAuto = "zauto"
        case zMin = "zmin"
        case zMax = "zmax"
        case zMiddle = "zmid"
        case colorScale = "colorscale"
        case autoColorScale = "autocolorscale"
        case reverseScale = "reversescale"
        case showScale = "showscale"
        case colorBar = "colorbar"
        case colorAxis = "coloraxis"
        case subPlot = "subplot"
    }
    
    public init(visible: Visible? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, hoverLabel: HoverLabel? = nil, stream: Stream? = nil, transforms: [Transform]? = nil, uiRevision: Anything? = nil, longitude: [Double]? = nil, latitude: [Double]? = nil, z: [Double]? = nil, radius: Double? = nil, below: String? = nil, text: String? = nil, hoverText: String? = nil, hoverInfo: HoverInfo? = nil, hoverTemplate: String? = nil, zAuto: Bool? = nil, zMin: Double? = nil, zMax: Double? = nil, zMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: ColorBar? = nil, colorAxis: SubPlotID? = nil, subPlot: SubPlotID? = nil) {
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
        self.longitude = longitude
        self.latitude = latitude
        self.z = z
        self.radius = radius
        self.below = below
        self.text = text
        self.hoverText = hoverText
        self.hoverInfo = hoverInfo
        self.hoverTemplate = hoverTemplate
        self.zAuto = zAuto
        self.zMin = zMin
        self.zMax = zMax
        self.zMiddle = zMiddle
        self.colorScale = colorScale
        self.autoColorScale = autoColorScale
        self.reverseScale = reverseScale
        self.showScale = showScale
        self.colorBar = colorBar
        self.colorAxis = colorAxis
        self.subPlot = subPlot
    }
}