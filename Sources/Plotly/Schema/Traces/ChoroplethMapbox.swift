/// GeoJSON features to be filled are set in `geojson` The data that describes the choropleth
/// value-to-color mapping is set in `locations` and `z`.
/// 
/// - SeeAlso:
///   Documentation for 
///   [Python](https://plot.ly/python/reference/#choroplethmapbox), 
///   [JavaScript](https://plot.ly/javascript/reference/#choroplethmapbox) or 
///   [R](https://plot.ly/r/reference/#choroplethmapbox)
public struct ChoroplethMapbox<LocationsData, ZData>: Trace where LocationsData: Plotable, ZData: Plotable {
    public let type: String = "choroplethmapbox"

    public let animatable: Bool = false

    /// Determines whether or not this trace is visible.
    /// 
    /// If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the
    /// legend itself is visible).
    public var visible: Shared.Visible?

    /// Sets the trace name.
    /// 
    /// The trace name appear as the legend item and on hover.
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during
    /// animations and transitions.
    public var uid: String?

    /// Assigns id labels to each datum.
    /// 
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    public var ids: [String]?

    /// Assigns extra data each datum.
    /// 
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    public var customData: [String]?

    /// Assigns extra meta information associated with this trace that can be used in various text
    /// attributes.
    /// 
    /// Attributes such as trace `name`, graph, axis and colorbar `title.text`, annotation `text`
    /// `rangeselector`, `updatemenues` and `sliders` `label` text all support `meta`. To access the
    /// trace `meta` values in an attribute in the same trace, simply use `%{meta[i]}` where `i` is the
    /// index or key of the `meta` item in question. To access trace `meta` in layout attributes, use
    /// `%{data[n[.meta[i]}` where `i` is the index or key of the `meta` and `n` is the trace index.
    public var meta: ArrayOrAnything?

    /// Array containing integer indices of selected points.
    /// 
    /// Has an effect only for traces that support selections. Note that an empty array means an empty
    /// selection where the `unselected` are turned on for all points, whereas, any other non-array
    /// values means no selection all where the `selected` and `unselected` styles have no effect.
    public var selectedPoints: Anything?

    public var hoverLabel: Shared.HoverLabel?

    public var stream: Shared.Stream?

    public var transforms: [Shared.Transform]?

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
    public var uiRevision: Anything?

    /// Sets which features found in *geojson* to plot using their feature `id` field.
    public var locations: LocationsData?

    /// Sets the color values.
    public var z: ZData?

    /// Sets the GeoJSON data associated with this trace.
    /// 
    /// Can be set as a valid GeoJSON object or as URL string Note that we only accept GeoJSON of type
    /// *FeatureCollection* and *Feature* with geometries of type *Polygon* and *MultiPolygon*.
    public var geoJson: Anything?

    /// Determines if the choropleth polygons will be inserted before the layer with the specified ID.
    /// 
    /// By default, choroplethmapbox traces are placed above the water layers. If set to '', the layer
    /// will be inserted above every existing layer.
    public var below: String?

    /// Sets the text elements associated with each location.
    public var text: ArrayOrString?

    /// Same as `text`.
    public var hoverText: ArrayOrString?

    public struct Marker: Encodable {
        public var line: Shared.Line?
    
        /// Sets the opacity of the locations.
        public var opacity: ArrayOrDouble?
    
        /// Creates `Marker` object with specified properties.
        /// 
        /// - Parameters:
        ///   - line:
        ///   - opacity: Sets the opacity of the locations.
        public init(line: Shared.Line? = nil, opacity: ArrayOrDouble? = nil) {
            self.line = line
            self.opacity = opacity
        }
        
    }
    public var marker: Marker?

    public struct Selected: Encodable {
        public struct Marker: Encodable {
            /// Sets the marker opacity of selected points.
            public var opacity: Double?
        
            /// Creates `Marker` object with specified properties.
            /// 
            /// - Parameters:
            ///   - opacity: Sets the marker opacity of selected points.
            public init(opacity: Double? = nil) {
                self.opacity = opacity
            }
            
        }
        public var marker: Marker?
    
        /// Creates `Selected` object with specified properties.
        public init(marker: Marker? = nil) {
            self.marker = marker
        }
        
    }
    public var selected: Selected?

    public struct Unselected: Encodable {
        public struct Marker: Encodable {
            /// Sets the marker opacity of unselected points, applied only when a selection exists.
            public var opacity: Double?
        
            /// Creates `Marker` object with specified properties.
            /// 
            /// - Parameters:
            ///   - opacity: Sets the marker opacity of unselected points, applied only when a selection exists.
            public init(opacity: Double? = nil) {
                self.opacity = opacity
            }
            
        }
        public var marker: Marker?
    
        /// Creates `Unselected` object with specified properties.
        public init(marker: Marker? = nil) {
            self.marker = marker
        }
        
    }
    public var unselected: Unselected?

    /// Determines which trace information appear on hover.
    /// 
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    public struct HoverInfo: OptionSet, Encodable {
        public let rawValue: Int
    
        public static var location: HoverInfo { HoverInfo(rawValue: 1 << 0) }
        public static var z: HoverInfo { HoverInfo(rawValue: 1 << 1) }
        public static var text: HoverInfo { HoverInfo(rawValue: 1 << 2) }
        public static var name: HoverInfo { HoverInfo(rawValue: 1 << 3) }
        public static var all: HoverInfo { HoverInfo(rawValue: 1 << 4) }
        public static var none: HoverInfo { HoverInfo(rawValue: 1 << 5) }
        public static var skip: HoverInfo { HoverInfo(rawValue: 1 << 6) }
    
        public init(rawValue: Int) { self.rawValue = rawValue }
    
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["location"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["z"] }
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
    /// true`) are available. variable `properties` Anything contained in tag `<extra>` is displayed in
    /// the secondary box, for example "<extra>{fullData.name}</extra>". To hide the secondary box
    /// completely, use an empty tag `<extra></extra>`.
    public var hoverTemplate: ArrayOrString?

    /// Determines whether or not the color domain is computed with respect to the input data (here in
    /// `z`) or the bounds set in `zmin` and `zmax` Defaults to `false` when `zmin` and `zmax` are set
    /// by the user.
    public var zAuto: Bool?

    /// Sets the lower bound of the color domain.
    /// 
    /// Value should have the same units as in `z` and if set, `zmax` must be set as well.
    public var zMin: Double?

    /// Sets the upper bound of the color domain.
    /// 
    /// Value should have the same units as in `z` and if set, `zmin` must be set as well.
    public var zMax: Double?

    /// Sets the mid-point of the color domain by scaling `zmin` and/or `zmax` to be equidistant to this
    /// point.
    /// 
    /// Value should have the same units as in `z`. Has no effect when `zauto` is `false`.
    public var zMiddle: Double?

    /// Sets the colorscale.
    /// 
    /// The colorscale must be an array containing arrays mapping a normalized value to an rgb, rgba,
    /// hex, hsl, hsv, or named color string. At minimum, a mapping for the lowest (0) and highest (1)
    /// values are required. For example, `[[0, 'rgb(0,0,255)'], [1, 'rgb(255,0,0)']]`. To control the
    /// bounds of the colorscale in color space, use`zmin` and `zmax`. Alternatively, `colorscale` may
    /// be a palette name string of the following list:
    /// Greys,YlGnBu,Greens,YlOrRd,Bluered,RdBu,Reds,Blues,Picnic,Rainbow,Portland,Jet,Hot,Blackbody,Earth,Electric,Viridis,Cividis.
    public var colorScale: ColorScale?

    /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette
    /// determined by `colorscale`.
    /// 
    /// In case `colorscale` is unspecified or `autocolorscale` is true, the default palette will be
    /// chosen according to whether numbers in the `color` array are all positive, all negative or
    /// mixed.
    public var autoColorScale: Bool?

    /// Reverses the color mapping if true.
    /// 
    /// If true, `zmin` will correspond to the last color in the array and `zmax` will correspond to the
    /// first color.
    public var reverseScale: Bool?

    /// Determines whether or not a colorbar is displayed for this trace.
    public var showScale: Bool?

    public var colorBar: Shared.ColorBar?

    /// Sets a reference to a shared color axis.
    /// 
    /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
    /// for these shared color axes are set in the layout, under `layout.coloraxis`,
    /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
    public var colorAxis: SubPlotID?

    /// Sets a reference between this trace's data coordinates and a mapbox subplot.
    /// 
    /// If *mapbox* (the default value), the data refer to `layout.mapbox`. If *mapbox2*, the data refer
    /// to `layout.mapbox2`, and so on.
    public var subPlot: SubPlotID?

    /// Decoding and encoding keys compatible with Plotly schema.
    enum CodingKeys: String, CodingKey {
        case type
        case animatable
        case visible
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
        case locations
        case z
        case geoJson = "geojson"
        case below
        case text
        case hoverText = "hovertext"
        case marker
        case selected
        case unselected
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
    
    /// Creates `ChoroplethMapbox` object from the most frequently used properties.
    /// 
    /// - Parameters:
    ///   - name: Sets the trace name.
    ///   - locations: Sets which features found in *geojson* to plot using their feature `id` field.
    ///   - z: Sets the color values.
    ///   - text: Sets the text elements associated with each location.
    ///   - hoverText: Same as `text`.
    ///   - marker:
    ///   - colorScale: Sets the colorscale.
    ///   - reverseScale: Reverses the color mapping if true.
    public init(name: String? = nil, locations: LocationsData? = nil, z: ZData? = nil, text:
            ArrayOrString? = nil, hoverText: ArrayOrString? = nil, marker: Marker? = nil, colorScale:
            ColorScale? = nil, reverseScale: Bool? = nil) {
        self.name = name
        self.locations = locations
        self.z = z
        self.text = text
        self.hoverText = hoverText
        self.marker = marker
        self.colorScale = colorScale
        self.reverseScale = reverseScale
    }
    
    /// Creates `ChoroplethMapbox` object with specified properties.
    /// 
    /// - Parameters:
    ///   - visible: Determines whether or not this trace is visible.
    ///   - name: Sets the trace name.
    ///   - uid: Assign an id to this trace, Use this to provide object constancy between traces during
    ///   animations and transitions.
    ///   - ids: Assigns id labels to each datum.
    ///   - customData: Assigns extra data each datum.
    ///   - meta: Assigns extra meta information associated with this trace that can be used in various
    ///   text attributes.
    ///   - selectedPoints: Array containing integer indices of selected points.
    ///   - hoverLabel:
    ///   - stream:
    ///   - transforms:
    ///   - uiRevision: Controls persistence of some user-driven changes to the trace: `constraintrange`
    ///   in `parcoords` traces, as well as some `editable: true` modifications such as `name` and
    ///   `colorbar.title`.
    ///   - locations: Sets which features found in *geojson* to plot using their feature `id` field.
    ///   - z: Sets the color values.
    ///   - geoJson: Sets the GeoJSON data associated with this trace.
    ///   - below: Determines if the choropleth polygons will be inserted before the layer with the
    ///   specified ID.
    ///   - text: Sets the text elements associated with each location.
    ///   - hoverText: Same as `text`.
    ///   - marker:
    ///   - selected:
    ///   - unselected:
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
    ///   - subPlot: Sets a reference between this trace's data coordinates and a mapbox subplot.
    public init(visible: Shared.Visible? = nil, name: String? = nil, uid: String? = nil, ids:
            [String]? = nil, customData: [String]? = nil, meta: ArrayOrAnything? = nil, selectedPoints:
            Anything? = nil, hoverLabel: Shared.HoverLabel? = nil, stream: Shared.Stream? = nil, transforms:
            [Shared.Transform]? = nil, uiRevision: Anything? = nil, locations: LocationsData? = nil, z:
            ZData? = nil, geoJson: Anything? = nil, below: String? = nil, text: ArrayOrString? = nil,
            hoverText: ArrayOrString? = nil, marker: Marker? = nil, selected: Selected? = nil, unselected:
            Unselected? = nil, hoverInfo: HoverInfo? = nil, hoverTemplate: ArrayOrString? = nil, zAuto:
            Bool? = nil, zMin: Double? = nil, zMax: Double? = nil, zMiddle: Double? = nil, colorScale:
            ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? =
            nil, colorBar: Shared.ColorBar? = nil, colorAxis: SubPlotID? = nil, subPlot: SubPlotID? = nil) {
        self.visible = visible
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
        self.locations = locations
        self.z = z
        self.geoJson = geoJson
        self.below = below
        self.text = text
        self.hoverText = hoverText
        self.marker = marker
        self.selected = selected
        self.unselected = unselected
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
    
    /// Encodes the object in a format compatible with Plotly.
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(animatable, forKey: .animatable)
        try container.encodeIfPresent(visible, forKey: .visible)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(uid, forKey: .uid)
        try container.encodeIfPresent(ids, forKey: .ids)
        try container.encodeIfPresent(customData, forKey: .customData)
        try container.encodeIfPresent(meta, forKey: .meta)
        try container.encodeIfPresent(selectedPoints, forKey: .selectedPoints)
        try container.encodeIfPresent(hoverLabel, forKey: .hoverLabel)
        try container.encodeIfPresent(stream, forKey: .stream)
        try container.encodeIfPresent(transforms, forKey: .transforms)
        try container.encodeIfPresent(uiRevision, forKey: .uiRevision)
        try container.encodeIfPresent(geoJson, forKey: .geoJson)
        try container.encodeIfPresent(below, forKey: .below)
        try container.encodeIfPresent(text, forKey: .text)
        try container.encodeIfPresent(hoverText, forKey: .hoverText)
        try container.encodeIfPresent(marker, forKey: .marker)
        try container.encodeIfPresent(selected, forKey: .selected)
        try container.encodeIfPresent(unselected, forKey: .unselected)
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
        try container.encodeIfPresent(colorAxis, forKey: .colorAxis)
        try container.encodeIfPresent(subPlot, forKey: .subPlot)
    
        if let locations = self.locations {
            let locationsEncoder = container.superEncoder(forKey: .locations)
            try locations.encode(toPlotly: locationsEncoder)
        }
    
        if let z = self.z {
            let zEncoder = container.superEncoder(forKey: .z)
            try z.encode(toPlotly: zEncoder)
        }
    }
    
}