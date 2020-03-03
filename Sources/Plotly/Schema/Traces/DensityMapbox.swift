/// Draws a bivariate kernel density estimation with a Gaussian kernel from `lon` and `lat`
/// coordinates and optional `z` values using a colorscale.
/// 
/// - SeeAlso:
///   Documentation for 
///   [Python](https://plot.ly/python/reference/#densitymapbox), 
///   [JavaScript](https://plot.ly/javascript/reference/#densitymapbox) or 
///   [R](https://plot.ly/r/reference/#densitymapbox)
public struct DensityMapbox<CoordinateData, ZData>: Trace where CoordinateData: Plotable, ZData: Plotable {
    public let type: String = "densitymapbox"

    public let animatable: Bool = false

    /// Determines whether or not this trace is visible.
    /// 
    /// If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the
    /// legend itself is visible).
    public var visible: Shared.Visible? = nil

    /// Sets the opacity of the trace.
    public var opacity: Double? = nil

    /// Sets the trace name.
    /// 
    /// The trace name appear as the legend item and on hover.
    public var name: String? = nil

    /// Assign an id to this trace, Use this to provide object constancy between traces during
    /// animations and transitions.
    public var uid: String? = nil

    /// Assigns id labels to each datum.
    /// 
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    public var ids: [String]? = nil

    /// Assigns extra data each datum.
    /// 
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    public var customData: [String]? = nil

    /// Assigns extra meta information associated with this trace that can be used in various text
    /// attributes.
    /// 
    /// Attributes such as trace `name`, graph, axis and colorbar `title.text`, annotation `text`
    /// `rangeselector`, `updatemenues` and `sliders` `label` text all support `meta`. To access the
    /// trace `meta` values in an attribute in the same trace, simply use `%{meta[i]}` where `i` is the
    /// index or key of the `meta` item in question. To access trace `meta` in layout attributes, use
    /// `%{data[n[.meta[i]}` where `i` is the index or key of the `meta` and `n` is the trace index.
    public var meta: Data<Anything>? = nil

    public var hoverLabel: Shared.HoverLabel? = nil

    public var stream: Shared.Stream? = nil

    public var transforms: [Shared.Transform]? = nil

    /// Controls persistence of some user-driven changes to the trace: `constraintrange` in `parcoords`
    /// traces, as well as some `editable: true` modifications such as `name` and `colorbar.title`.
    /// 
    /// Defaults to `layout.uirevision`. Note that other user-driven trace attribute changes are
    /// controlled by `layout` attributes: `trace.visible` is controlled by `layout.legend.uirevision`,
    /// `selectedpoints` is controlled by `layout.selectionrevision`, and `colorbar.(x|y)` (accessible
    /// with `config: {editable: true}`) is controlled by `layout.editrevision`. Trace changes are
    /// tracked by `uid`, which only falls back on trace index if no `uid` is provided. So if your app
    /// can add/remove traces before the end of the `data` array, such that the same trace has a
    /// different index, you can still preserve user-driven changes if you give each trace a `uid` that
    /// stays with it as it moves.
    public var uiRevision: Anything? = nil

    /// Sets the longitude coordinates (in degrees East).
    public var longitude: CoordinateData? = nil

    /// Sets the latitude coordinates (in degrees North).
    public var latitude: CoordinateData? = nil

    /// Sets the points' weight.
    /// 
    /// For example, a value of 10 would be equivalent to having 10 points of weight 1 in the same spot
    public var z: ZData? = nil

    /// Sets the radius of influence of one `lon` / `lat` point in pixels.
    /// 
    /// Increasing the value makes the densitymapbox trace smoother, but less detailed.
    public var radius: Data<Double>? = nil

    /// Determines if the densitymapbox trace will be inserted before the layer with the specified ID.
    /// 
    /// By default, densitymapbox traces are placed below the first layer of type symbol If set to '',
    /// the layer will be inserted above every existing layer.
    public var below: String? = nil

    /// Sets text elements associated with each (lon,lat) pair If a single string, the same string
    /// appears over all the data points.
    /// 
    /// If an array of string, the items are mapped in order to the this trace's (lon,lat) coordinates.
    /// If trace `hoverinfo` contains a *text* flag and *hovertext* is not set, these elements will be
    /// seen in the hover labels.
    public var text: Data<String>? = nil

    /// Sets hover text elements associated with each (lon,lat) pair If a single string, the same string
    /// appears over all the data points.
    /// 
    /// If an array of string, the items are mapped in order to the this trace's (lon,lat) coordinates.
    /// To be seen, trace `hoverinfo` must contain a *text* flag.
    public var hoverText: Data<String>? = nil

    /// Determines which trace information appear on hover.
    /// 
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    public struct HoverInfo: OptionSet, Encodable {
        public let rawValue: Int
        public static var longitude: HoverInfo { HoverInfo(rawValue: 1 << 0) }
        public static var latitude: HoverInfo { HoverInfo(rawValue: 1 << 1) }
        public static var z: HoverInfo { HoverInfo(rawValue: 1 << 2) }
        public static var text: HoverInfo { HoverInfo(rawValue: 1 << 3) }
        public static var name: HoverInfo { HoverInfo(rawValue: 1 << 4) }
        public static var all: HoverInfo { HoverInfo(rawValue: 1 << 5) }
        public static var none: HoverInfo { HoverInfo(rawValue: 1 << 6) }
        public static var skip: HoverInfo { HoverInfo(rawValue: 1 << 7) }
        
        public init(rawValue: Int) {
            self.rawValue = rawValue
        }
        
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
    public var hoverInfo: HoverInfo? = nil

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
    public var hoverTemplate: Data<String>? = nil

    /// Determines whether or not the color domain is computed with respect to the input data (here in
    /// `z`) or the bounds set in `zmin` and `zmax` Defaults to `false` when `zmin` and `zmax` are set
    /// by the user.
    public var zAuto: Bool? = nil

    /// Sets the lower bound of the color domain.
    /// 
    /// Value should have the same units as in `z` and if set, `zmax` must be set as well.
    public var zMin: Double? = nil

    /// Sets the upper bound of the color domain.
    /// 
    /// Value should have the same units as in `z` and if set, `zmin` must be set as well.
    public var zMax: Double? = nil

    /// Sets the mid-point of the color domain by scaling `zmin` and/or `zmax` to be equidistant to this
    /// point.
    /// 
    /// Value should have the same units as in `z`. Has no effect when `zauto` is `false`.
    public var zMiddle: Double? = nil

    /// Sets the colorscale.
    /// 
    /// The colorscale must be an array containing arrays mapping a normalized value to an rgb, rgba,
    /// hex, hsl, hsv, or named color string. At minimum, a mapping for the lowest (0) and highest (1)
    /// values are required. For example, `[[0, 'rgb(0,0,255)'], [1, 'rgb(255,0,0)']]`. To control the
    /// bounds of the colorscale in color space, use`zmin` and `zmax`. Alternatively, `colorscale` may
    /// be a palette name string of the following list:
    /// Greys,YlGnBu,Greens,YlOrRd,Bluered,RdBu,Reds,Blues,Picnic,Rainbow,Portland,Jet,Hot,Blackbody,Earth,Electric,Viridis,Cividis.
    public var colorScale: ColorScale? = nil

    /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette
    /// determined by `colorscale`.
    /// 
    /// In case `colorscale` is unspecified or `autocolorscale` is true, the default palette will be
    /// chosen according to whether numbers in the `color` array are all positive, all negative or
    /// mixed.
    public var autoColorScale: Bool? = nil

    /// Reverses the color mapping if true.
    /// 
    /// If true, `zmin` will correspond to the last color in the array and `zmax` will correspond to the
    /// first color.
    public var reverseScale: Bool? = nil

    /// Determines whether or not a colorbar is displayed for this trace.
    public var showScale: Bool? = nil

    public var colorBar: Shared.ColorBar? = nil

    /// Sets a reference to a shared color axis.
    /// 
    /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
    /// for these shared color axes are set in the layout, under `layout.coloraxis`,
    /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
    public var colorAxis: Layout.ColorAxis = Layout.ColorAxis(uid: 1)

    /// Sets a reference between this trace's data coordinates and a mapbox subplot.
    /// 
    /// If *mapbox* (the default value), the data refer to `layout.mapbox`. If *mapbox2*, the data refer
    /// to `layout.mapbox2`, and so on.
    public var subplot: Layout.Mapbox = Layout.Mapbox(uid: 1)

    /// Decoding and encoding keys compatible with Plotly schema.
    enum CodingKeys: String, CodingKey {
        case type
        case visible
        case opacity
        case name
        case uid
        case ids
        case customData = "customdata"
        case meta
        case hoverLabel = "hoverlabel"
        case stream
        case transforms
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
        case subplot
    }
    
    /// Creates `DensityMapbox` object from the most frequently used properties.
    /// 
    /// - Parameters:
    ///   - name: Sets the trace name.
    ///   - longitude: Sets the longitude coordinates (in degrees East).
    ///   - latitude: Sets the latitude coordinates (in degrees North).
    ///   - z: Sets the points' weight.
    ///   - text: Sets text elements associated with each (lon,lat) pair If a single string, the same
    ///   string appears over all the data points.
    ///   - hoverText: Sets hover text elements associated with each (lon,lat) pair If a single string,
    ///   the same string appears over all the data points.
    ///   - colorScale: Sets the colorscale.
    ///   - reverseScale: Reverses the color mapping if true.
    public init(name: String? = nil, longitude: CoordinateData? = nil, latitude: CoordinateData? =
            nil, z: ZData? = nil, text: Data<String>? = nil, hoverText: Data<String>? = nil, colorScale:
            ColorScale? = nil, reverseScale: Bool? = nil) {
        self.name = name
        self.longitude = longitude
        self.latitude = latitude
        self.z = z
        self.text = text
        self.hoverText = hoverText
        self.colorScale = colorScale
        self.reverseScale = reverseScale
    }
    
    /// Creates `DensityMapbox` object with specified properties.
    /// 
    /// - Parameters:
    ///   - visible: Determines whether or not this trace is visible.
    ///   - opacity: Sets the opacity of the trace.
    ///   - name: Sets the trace name.
    ///   - uid: Assign an id to this trace, Use this to provide object constancy between traces during
    ///   animations and transitions.
    ///   - ids: Assigns id labels to each datum.
    ///   - customData: Assigns extra data each datum.
    ///   - meta: Assigns extra meta information associated with this trace that can be used in various
    ///   text attributes.
    ///   - hoverLabel:
    ///   - stream:
    ///   - transforms:
    ///   - uiRevision: Controls persistence of some user-driven changes to the trace: `constraintrange`
    ///   in `parcoords` traces, as well as some `editable: true` modifications such as `name` and
    ///   `colorbar.title`.
    ///   - longitude: Sets the longitude coordinates (in degrees East).
    ///   - latitude: Sets the latitude coordinates (in degrees North).
    ///   - z: Sets the points' weight.
    ///   - radius: Sets the radius of influence of one `lon` / `lat` point in pixels.
    ///   - below: Determines if the densitymapbox trace will be inserted before the layer with the
    ///   specified ID.
    ///   - text: Sets text elements associated with each (lon,lat) pair If a single string, the same
    ///   string appears over all the data points.
    ///   - hoverText: Sets hover text elements associated with each (lon,lat) pair If a single string,
    ///   the same string appears over all the data points.
    ///   - hoverInfo: Determines which trace information appear on hover.
    ///   - hoverTemplate: Template string used for rendering the information that appear on hover box.
    ///   - zAuto: Determines whether or not the color domain is computed with respect to the input data
    ///   (here in `z`) or the bounds set in `zmin` and `zmax` Defaults to `false` when `zmin` and `zmax`
    ///   are set by the user.
    ///   - zMin: Sets the lower bound of the color domain.
    ///   - zMax: Sets the upper bound of the color domain.
    ///   - zMiddle: Sets the mid-point of the color domain by scaling `zmin` and/or `zmax` to be
    ///   equidistant to this point.
    ///   - colorScale: Sets the colorscale.
    ///   - autoColorScale: Determines whether the colorscale is a default palette (`autocolorscale:
    ///   true`) or the palette determined by `colorscale`.
    ///   - reverseScale: Reverses the color mapping if true.
    ///   - showScale: Determines whether or not a colorbar is displayed for this trace.
    ///   - colorBar:
    ///   - colorAxis: Sets a reference to a shared color axis.
    ///   - subplot: Sets a reference between this trace's data coordinates and a mapbox subplot.
    public init(visible: Shared.Visible? = nil, opacity: Double? = nil, name: String? = nil, uid:
            String? = nil, ids: [String]? = nil, customData: [String]? = nil, meta: Data<Anything>? = nil,
            hoverLabel: Shared.HoverLabel? = nil, stream: Shared.Stream? = nil, transforms:
            [Shared.Transform]? = nil, uiRevision: Anything? = nil, longitude: CoordinateData? = nil,
            latitude: CoordinateData? = nil, z: ZData? = nil, radius: Data<Double>? = nil, below: String? =
            nil, text: Data<String>? = nil, hoverText: Data<String>? = nil, hoverInfo: HoverInfo? = nil,
            hoverTemplate: Data<String>? = nil, zAuto: Bool? = nil, zMin: Double? = nil, zMax: Double? =
            nil, zMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil,
            reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: Shared.ColorBar? = nil, colorAxis:
            Layout.ColorAxis = Layout.ColorAxis(uid: 1), subplot: Layout.Mapbox = Layout.Mapbox(uid: 1)) {
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
        self.subplot = subplot
    }
    
    /// Encodes the object in a format compatible with Plotly.
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encodeIfPresent(visible, forKey: .visible)
        try container.encodeIfPresent(opacity, forKey: .opacity)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(uid, forKey: .uid)
        try container.encodeIfPresent(ids, forKey: .ids)
        try container.encodeIfPresent(customData, forKey: .customData)
        try container.encodeIfPresent(meta, forKey: .meta)
        try container.encodeIfPresent(hoverLabel, forKey: .hoverLabel)
        try container.encodeIfPresent(stream, forKey: .stream)
        try container.encodeIfPresent(transforms, forKey: .transforms)
        try container.encodeIfPresent(uiRevision, forKey: .uiRevision)
        if let longitude = self.longitude {
            try longitude.encode(toPlotly: container.superEncoder(forKey: .longitude))
        }
        if let latitude = self.latitude {
            try latitude.encode(toPlotly: container.superEncoder(forKey: .latitude))
        }
        if let z = self.z {
            try z.encode(toPlotly: container.superEncoder(forKey: .z))
        }
        try container.encodeIfPresent(radius, forKey: .radius)
        try container.encodeIfPresent(below, forKey: .below)
        try container.encodeIfPresent(text, forKey: .text)
        try container.encodeIfPresent(hoverText, forKey: .hoverText)
        try container.encodeIfPresent(hoverInfo, forKey: .hoverInfo)
        try container.encodeIfPresent(hoverTemplate, forKey: .hoverTemplate)
        try container.encodeIfPresent(zAuto, forKey: .zAuto)
        try container.encodeIfPresent(zMin, forKey: .zMin)
        try container.encodeIfPresent(zMax, forKey: .zMax)
        try container.encodeIfPresent(zMiddle, forKey: .zMiddle)
        try container.encodeIfPresent(colorScale, forKey: .colorScale)
        try container.encodeIfPresent(autoColorScale, forKey: .autoColorScale)
        try container.encodeIfPresent(reverseScale, forKey: .reverseScale)
        try container.encodeIfPresent(showScale, forKey: .showScale)
        try container.encodeIfPresent(colorBar, forKey: .colorBar)
        try container.encode("coloraxis\(colorAxis.uid)", forKey: .colorAxis)
        try container.encode("mapbox\(subplot.uid)", forKey: .subplot)
    }
}