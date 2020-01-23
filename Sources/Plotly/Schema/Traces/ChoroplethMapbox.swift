/// GeoJSON features to be filled are set in `geojson` The data that describes the choropleth value-to-color mapping is set in `locations` and `z`.
public struct ChoroplethMapbox<ZData>: Trace where ZData: Encodable {
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#type) |
    /// [Python](https://plot.ly/python/reference/#type) |
    /// [R](https://plot.ly/r/reference/#type)
    public let type: String = "choroplethmapbox"

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
    /// [JavaScript](https://plot.ly/javascript/reference/#choroplethmapbox-visible) |
    /// [Python](https://plot.ly/python/reference/#choroplethmapbox-visible) |
    /// [R](https://plot.ly/r/reference/#choroplethmapbox-visible)
    public var visible: Shared.Visible?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choroplethmapbox-name) |
    /// [Python](https://plot.ly/python/reference/#choroplethmapbox-name) |
    /// [R](https://plot.ly/r/reference/#choroplethmapbox-name)
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choroplethmapbox-uid) |
    /// [Python](https://plot.ly/python/reference/#choroplethmapbox-uid) |
    /// [R](https://plot.ly/r/reference/#choroplethmapbox-uid)
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choroplethmapbox-ids) |
    /// [Python](https://plot.ly/python/reference/#choroplethmapbox-ids) |
    /// [R](https://plot.ly/r/reference/#choroplethmapbox-ids)
    public var ids: [Double]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choroplethmapbox-customdata) |
    /// [Python](https://plot.ly/python/reference/#choroplethmapbox-customdata) |
    /// [R](https://plot.ly/r/reference/#choroplethmapbox-customdata)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#choroplethmapbox-meta) |
    /// [Python](https://plot.ly/python/reference/#choroplethmapbox-meta) |
    /// [R](https://plot.ly/r/reference/#choroplethmapbox-meta)
    public var meta: ArrayOrAnything?

    /// Array containing integer indices of selected points. 
    ///
    /// Has an effect only for traces that support selections. Note that an empty array means an empty
    /// selection where the `unselected` are turned on for all points, whereas, any other non-array
    /// values means no selection all where the `selected` and `unselected` styles have no effect.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choroplethmapbox-selectedpoints) |
    /// [Python](https://plot.ly/python/reference/#choroplethmapbox-selectedpoints) |
    /// [R](https://plot.ly/r/reference/#choroplethmapbox-selectedpoints)
    public var selectedPoints: Anything?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choroplethmapbox-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#choroplethmapbox-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#choroplethmapbox-hoverlabel)
    public var hoverLabel: Shared.HoverLabel?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choroplethmapbox-stream) |
    /// [Python](https://plot.ly/python/reference/#choroplethmapbox-stream) |
    /// [R](https://plot.ly/r/reference/#choroplethmapbox-stream)
    public var stream: Shared.Stream?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choroplethmapbox-transforms) |
    /// [Python](https://plot.ly/python/reference/#choroplethmapbox-transforms) |
    /// [R](https://plot.ly/r/reference/#choroplethmapbox-transforms)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#choroplethmapbox-uirevision) |
    /// [Python](https://plot.ly/python/reference/#choroplethmapbox-uirevision) |
    /// [R](https://plot.ly/r/reference/#choroplethmapbox-uirevision)
    public var uiRevision: Anything?

    /// Sets which features found in *geojson* to plot using their feature `id` field.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choroplethmapbox-locations) |
    /// [Python](https://plot.ly/python/reference/#choroplethmapbox-locations) |
    /// [R](https://plot.ly/r/reference/#choroplethmapbox-locations)
    public var locations: [Double]?

    /// Sets the color values.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choroplethmapbox-z) |
    /// [Python](https://plot.ly/python/reference/#choroplethmapbox-z) |
    /// [R](https://plot.ly/r/reference/#choroplethmapbox-z)
    public var z: ZData?

    /// Sets the GeoJSON data associated with this trace. 
    ///
    /// Can be set as a valid GeoJSON object or as URL string Note that we only accept GeoJSON of type
    /// *FeatureCollection* and *Feature* with geometries of type *Polygon* and *MultiPolygon*.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choroplethmapbox-geojson) |
    /// [Python](https://plot.ly/python/reference/#choroplethmapbox-geojson) |
    /// [R](https://plot.ly/r/reference/#choroplethmapbox-geojson)
    public var geoJson: Anything?

    /// Determines if the choropleth polygons will be inserted before the layer with the specified ID. 
    ///
    /// By default, choroplethmapbox traces are placed above the water layers. If set to '', the layer
    /// will be inserted above every existing layer.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choroplethmapbox-below) |
    /// [Python](https://plot.ly/python/reference/#choroplethmapbox-below) |
    /// [R](https://plot.ly/r/reference/#choroplethmapbox-below)
    public var below: String?

    /// Sets the text elements associated with each location.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choroplethmapbox-text) |
    /// [Python](https://plot.ly/python/reference/#choroplethmapbox-text) |
    /// [R](https://plot.ly/r/reference/#choroplethmapbox-text)
    public var text: ArrayOrString?

    /// Same as `text`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choroplethmapbox-hovertext) |
    /// [Python](https://plot.ly/python/reference/#choroplethmapbox-hovertext) |
    /// [R](https://plot.ly/r/reference/#choroplethmapbox-hovertext)
    public var hoverText: ArrayOrString?

    /// # Used By
    /// `ChoroplethMapbox.marker` |
    public struct Marker: Encodable {
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#choroplethmapbox-marker-line) |
        /// [Python](https://plot.ly/python/reference/#choroplethmapbox-marker-line) |
        /// [R](https://plot.ly/r/reference/#choroplethmapbox-marker-line)
        public var line: Shared.Line?
    
        /// Sets the opacity of the locations.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#choroplethmapbox-marker-opacity) |
        /// [Python](https://plot.ly/python/reference/#choroplethmapbox-marker-opacity) |
        /// [R](https://plot.ly/r/reference/#choroplethmapbox-marker-opacity)
        public var opacity: ArrayOrDouble?
    
        public init(line: Shared.Line? = nil, opacity: ArrayOrDouble? = nil) {
            self.line = line
            self.opacity = opacity
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choroplethmapbox-marker) |
    /// [Python](https://plot.ly/python/reference/#choroplethmapbox-marker) |
    /// [R](https://plot.ly/r/reference/#choroplethmapbox-marker)
    public var marker: Marker?

    /// # Used By
    /// `ChoroplethMapbox.selected` |
    public struct Selected: Encodable {
        /// # Used By
        /// `ChoroplethMapbox.Selected.marker` |
        public struct Marker: Encodable {
            /// Sets the marker opacity of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#choroplethmapbox-selected-marker-opacity) |
            /// [Python](https://plot.ly/python/reference/#choroplethmapbox-selected-marker-opacity) |
            /// [R](https://plot.ly/r/reference/#choroplethmapbox-selected-marker-opacity)
            public var opacity: Double?
        
            public init(opacity: Double? = nil) {
                self.opacity = opacity
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#choroplethmapbox-selected-marker) |
        /// [Python](https://plot.ly/python/reference/#choroplethmapbox-selected-marker) |
        /// [R](https://plot.ly/r/reference/#choroplethmapbox-selected-marker)
        public var marker: Marker?
    
        public init(marker: Marker? = nil) {
            self.marker = marker
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choroplethmapbox-selected) |
    /// [Python](https://plot.ly/python/reference/#choroplethmapbox-selected) |
    /// [R](https://plot.ly/r/reference/#choroplethmapbox-selected)
    public var selected: Selected?

    /// # Used By
    /// `ChoroplethMapbox.unselected` |
    public struct Unselected: Encodable {
        /// # Used By
        /// `ChoroplethMapbox.Unselected.marker` |
        public struct Marker: Encodable {
            /// Sets the marker opacity of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#choroplethmapbox-unselected-marker-opacity) |
            /// [Python](https://plot.ly/python/reference/#choroplethmapbox-unselected-marker-opacity) |
            /// [R](https://plot.ly/r/reference/#choroplethmapbox-unselected-marker-opacity)
            public var opacity: Double?
        
            public init(opacity: Double? = nil) {
                self.opacity = opacity
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#choroplethmapbox-unselected-marker) |
        /// [Python](https://plot.ly/python/reference/#choroplethmapbox-unselected-marker) |
        /// [R](https://plot.ly/r/reference/#choroplethmapbox-unselected-marker)
        public var marker: Marker?
    
        public init(marker: Marker? = nil) {
            self.marker = marker
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choroplethmapbox-unselected) |
    /// [Python](https://plot.ly/python/reference/#choroplethmapbox-unselected) |
    /// [R](https://plot.ly/r/reference/#choroplethmapbox-unselected)
    public var unselected: Unselected?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    ///
    /// # Used By
    /// `ChoroplethMapbox.hoverInfo` |
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choroplethmapbox-hoverinfo) |
    /// [Python](https://plot.ly/python/reference/#choroplethmapbox-hoverinfo) |
    /// [R](https://plot.ly/r/reference/#choroplethmapbox-hoverinfo)
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choroplethmapbox-hovertemplate) |
    /// [Python](https://plot.ly/python/reference/#choroplethmapbox-hovertemplate) |
    /// [R](https://plot.ly/r/reference/#choroplethmapbox-hovertemplate)
    public var hoverTemplate: ArrayOrString?

    /// Determines whether or not the color domain is computed with respect to the input data (here in `z`) or the bounds set in `zmin` and `zmax`  Defaults to `false` when `zmin` and `zmax` are set by the user.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choroplethmapbox-zauto) |
    /// [Python](https://plot.ly/python/reference/#choroplethmapbox-zauto) |
    /// [R](https://plot.ly/r/reference/#choroplethmapbox-zauto)
    public var zAuto: Bool?

    /// Sets the lower bound of the color domain. 
    ///
    /// Value should have the same units as in `z` and if set, `zmax` must be set as well.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choroplethmapbox-zmin) |
    /// [Python](https://plot.ly/python/reference/#choroplethmapbox-zmin) |
    /// [R](https://plot.ly/r/reference/#choroplethmapbox-zmin)
    public var zMin: Double?

    /// Sets the upper bound of the color domain. 
    ///
    /// Value should have the same units as in `z` and if set, `zmin` must be set as well.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choroplethmapbox-zmax) |
    /// [Python](https://plot.ly/python/reference/#choroplethmapbox-zmax) |
    /// [R](https://plot.ly/r/reference/#choroplethmapbox-zmax)
    public var zMax: Double?

    /// Sets the mid-point of the color domain by scaling `zmin` and/or `zmax` to be equidistant to this point. 
    ///
    /// Value should have the same units as in `z`. Has no effect when `zauto` is `false`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choroplethmapbox-zmid) |
    /// [Python](https://plot.ly/python/reference/#choroplethmapbox-zmid) |
    /// [R](https://plot.ly/r/reference/#choroplethmapbox-zmid)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#choroplethmapbox-colorscale) |
    /// [Python](https://plot.ly/python/reference/#choroplethmapbox-colorscale) |
    /// [R](https://plot.ly/r/reference/#choroplethmapbox-colorscale)
    public var colorScale: ColorScale?

    /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `colorscale`. 
    ///
    /// In case `colorscale` is unspecified or `autocolorscale` is true, the default palette will be
    /// chosen according to whether numbers in the `color` array are all positive, all negative or
    /// mixed.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choroplethmapbox-autocolorscale) |
    /// [Python](https://plot.ly/python/reference/#choroplethmapbox-autocolorscale) |
    /// [R](https://plot.ly/r/reference/#choroplethmapbox-autocolorscale)
    public var autoColorScale: Bool?

    /// Reverses the color mapping if true. 
    ///
    /// If true, `zmin` will correspond to the last color in the array and `zmax` will correspond to the
    /// first color.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choroplethmapbox-reversescale) |
    /// [Python](https://plot.ly/python/reference/#choroplethmapbox-reversescale) |
    /// [R](https://plot.ly/r/reference/#choroplethmapbox-reversescale)
    public var reverseScale: Bool?

    /// Determines whether or not a colorbar is displayed for this trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choroplethmapbox-showscale) |
    /// [Python](https://plot.ly/python/reference/#choroplethmapbox-showscale) |
    /// [R](https://plot.ly/r/reference/#choroplethmapbox-showscale)
    public var showScale: Bool?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choroplethmapbox-colorbar) |
    /// [Python](https://plot.ly/python/reference/#choroplethmapbox-colorbar) |
    /// [R](https://plot.ly/r/reference/#choroplethmapbox-colorbar)
    public var colorBar: Shared.ColorBar?

    /// Sets a reference to a shared color axis. 
    ///
    /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
    /// for these shared color axes are set in the layout, under `layout.coloraxis`,
    /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choroplethmapbox-coloraxis) |
    /// [Python](https://plot.ly/python/reference/#choroplethmapbox-coloraxis) |
    /// [R](https://plot.ly/r/reference/#choroplethmapbox-coloraxis)
    public var colorAxis: SubPlotID?

    /// Sets a reference between this trace's data coordinates and a mapbox subplot. 
    ///
    /// If *mapbox* (the default value), the data refer to `layout.mapbox`. If *mapbox2*, the data refer
    /// to `layout.mapbox2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choroplethmapbox-subplot) |
    /// [Python](https://plot.ly/python/reference/#choroplethmapbox-subplot) |
    /// [R](https://plot.ly/r/reference/#choroplethmapbox-subplot)
    public var subPlot: SubPlotID?

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
    
    public init(visible: Shared.Visible? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: ArrayOrAnything? = nil, selectedPoints: Anything? = nil, hoverLabel: Shared.HoverLabel? = nil, stream: Shared.Stream? = nil, transforms: [Shared.Transform]? = nil, uiRevision: Anything? = nil, locations: [Double]? = nil, z: ZData? = nil, geoJson: Anything? = nil, below: String? = nil, text: ArrayOrString? = nil, hoverText: ArrayOrString? = nil, marker: Marker? = nil, selected: Selected? = nil, unselected: Unselected? = nil, hoverInfo: HoverInfo? = nil, hoverTemplate: ArrayOrString? = nil, zAuto: Bool? = nil, zMin: Double? = nil, zMax: Double? = nil, zMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: Shared.ColorBar? = nil, colorAxis: SubPlotID? = nil, subPlot: SubPlotID? = nil) {
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
}