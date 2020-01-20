/// The data that describes the choropleth value-to-color mapping is set in `z`. 
///
/// The geographic locations corresponding to each value in `z` are set in `locations`.
public struct Choropleth: Trace {
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#type) |
    /// [Python](https://plot.ly/python/reference/#type) |
    /// [R](https://plot.ly/r/reference/#type)
    public let type: String = "choropleth"

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
    /// [JavaScript](https://plot.ly/javascript/reference/#choropleth-visible) |
    /// [Python](https://plot.ly/python/reference/#choropleth-visible) |
    /// [R](https://plot.ly/r/reference/#choropleth-visible)
    public var visible: Shared.Visible?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choropleth-name) |
    /// [Python](https://plot.ly/python/reference/#choropleth-name) |
    /// [R](https://plot.ly/r/reference/#choropleth-name)
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choropleth-uid) |
    /// [Python](https://plot.ly/python/reference/#choropleth-uid) |
    /// [R](https://plot.ly/r/reference/#choropleth-uid)
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choropleth-ids) |
    /// [Python](https://plot.ly/python/reference/#choropleth-ids) |
    /// [R](https://plot.ly/r/reference/#choropleth-ids)
    public var ids: [Double]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choropleth-customdata) |
    /// [Python](https://plot.ly/python/reference/#choropleth-customdata) |
    /// [R](https://plot.ly/r/reference/#choropleth-customdata)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#choropleth-meta) |
    /// [Python](https://plot.ly/python/reference/#choropleth-meta) |
    /// [R](https://plot.ly/r/reference/#choropleth-meta)
    public var meta: Anything?

    /// Array containing integer indices of selected points. 
    ///
    /// Has an effect only for traces that support selections. Note that an empty array means an empty
    /// selection where the `unselected` are turned on for all points, whereas, any other non-array
    /// values means no selection all where the `selected` and `unselected` styles have no effect.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choropleth-selectedpoints) |
    /// [Python](https://plot.ly/python/reference/#choropleth-selectedpoints) |
    /// [R](https://plot.ly/r/reference/#choropleth-selectedpoints)
    public var selectedPoints: Anything?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choropleth-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#choropleth-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#choropleth-hoverlabel)
    public var hoverLabel: Shared.HoverLabel?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choropleth-stream) |
    /// [Python](https://plot.ly/python/reference/#choropleth-stream) |
    /// [R](https://plot.ly/r/reference/#choropleth-stream)
    public var stream: Shared.Stream?

    /// An array of operations that manipulate the trace data, for example filtering or sorting the data arrays.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choropleth-transforms-items-transform) |
    /// [Python](https://plot.ly/python/reference/#choropleth-transforms-items-transform) |
    /// [R](https://plot.ly/r/reference/#choropleth-transforms-items-transform)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#choropleth-uirevision) |
    /// [Python](https://plot.ly/python/reference/#choropleth-uirevision) |
    /// [R](https://plot.ly/r/reference/#choropleth-uirevision)
    public var uiRevision: Anything?

    /// Sets the coordinates via location IDs or names. 
    ///
    /// See `locationmode` for more info.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choropleth-locations) |
    /// [Python](https://plot.ly/python/reference/#choropleth-locations) |
    /// [R](https://plot.ly/r/reference/#choropleth-locations)
    public var locations: [Double]?

    /// Determines the set of locations used to match entries in `locations` to regions on the map.
    ///
    /// # Used By
    /// `Choropleth.locationMode` |
    public enum LocationMode: String, Encodable {
        case ISO3 = "ISO-3"
        case statesOfUSA = "USA-states"
        case countryNames = "country names"
    }
    /// Determines the set of locations used to match entries in `locations` to regions on the map.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choropleth-locationmode) |
    /// [Python](https://plot.ly/python/reference/#choropleth-locationmode) |
    /// [R](https://plot.ly/r/reference/#choropleth-locationmode)
    public var locationMode: LocationMode?

    /// Sets the color values.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choropleth-z) |
    /// [Python](https://plot.ly/python/reference/#choropleth-z) |
    /// [R](https://plot.ly/r/reference/#choropleth-z)
    public var z: [Double]?

    /// Sets the text elements associated with each location.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choropleth-text) |
    /// [Python](https://plot.ly/python/reference/#choropleth-text) |
    /// [R](https://plot.ly/r/reference/#choropleth-text)
    public var text: String?

    /// Same as `text`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choropleth-hovertext) |
    /// [Python](https://plot.ly/python/reference/#choropleth-hovertext) |
    /// [R](https://plot.ly/r/reference/#choropleth-hovertext)
    public var hoverText: String?

    /// # Used By
    /// `Choropleth.marker` |
    public struct Marker: Encodable {
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#choropleth-marker-line) |
        /// [Python](https://plot.ly/python/reference/#choropleth-marker-line) |
        /// [R](https://plot.ly/r/reference/#choropleth-marker-line)
        public var line: Shared.Line?
    
        /// Sets the opacity of the locations.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#choropleth-marker-opacity) |
        /// [Python](https://plot.ly/python/reference/#choropleth-marker-opacity) |
        /// [R](https://plot.ly/r/reference/#choropleth-marker-opacity)
        public var opacity: Double?
    
        public init(line: Shared.Line? = nil, opacity: Double? = nil) {
            self.line = line
            self.opacity = opacity
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choropleth-marker) |
    /// [Python](https://plot.ly/python/reference/#choropleth-marker) |
    /// [R](https://plot.ly/r/reference/#choropleth-marker)
    public var marker: Marker?

    /// # Used By
    /// `Choropleth.selected` |
    public struct Selected: Encodable {
        /// # Used By
        /// `Choropleth.Selected.marker` |
        public struct Marker: Encodable {
            /// Sets the marker opacity of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#choropleth-selected-marker-opacity) |
            /// [Python](https://plot.ly/python/reference/#choropleth-selected-marker-opacity) |
            /// [R](https://plot.ly/r/reference/#choropleth-selected-marker-opacity)
            public var opacity: Double?
        
            public init(opacity: Double? = nil) {
                self.opacity = opacity
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#choropleth-selected-marker) |
        /// [Python](https://plot.ly/python/reference/#choropleth-selected-marker) |
        /// [R](https://plot.ly/r/reference/#choropleth-selected-marker)
        public var marker: Marker?
    
        public init(marker: Marker? = nil) {
            self.marker = marker
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choropleth-selected) |
    /// [Python](https://plot.ly/python/reference/#choropleth-selected) |
    /// [R](https://plot.ly/r/reference/#choropleth-selected)
    public var selected: Selected?

    /// # Used By
    /// `Choropleth.unselected` |
    public struct Unselected: Encodable {
        /// # Used By
        /// `Choropleth.Unselected.marker` |
        public struct Marker: Encodable {
            /// Sets the marker opacity of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#choropleth-unselected-marker-opacity) |
            /// [Python](https://plot.ly/python/reference/#choropleth-unselected-marker-opacity) |
            /// [R](https://plot.ly/r/reference/#choropleth-unselected-marker-opacity)
            public var opacity: Double?
        
            public init(opacity: Double? = nil) {
                self.opacity = opacity
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#choropleth-unselected-marker) |
        /// [Python](https://plot.ly/python/reference/#choropleth-unselected-marker) |
        /// [R](https://plot.ly/r/reference/#choropleth-unselected-marker)
        public var marker: Marker?
    
        public init(marker: Marker? = nil) {
            self.marker = marker
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choropleth-unselected) |
    /// [Python](https://plot.ly/python/reference/#choropleth-unselected) |
    /// [R](https://plot.ly/r/reference/#choropleth-unselected)
    public var unselected: Unselected?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    ///
    /// # Used By
    /// `Choropleth.hoverInfo` |
    public struct HoverInfo: OptionSet, Encodable {
        public let rawValue: Int
    
        public static let location = HoverInfo(rawValue: 1 << 0)
        public static let z = HoverInfo(rawValue: 1 << 1)
        public static let text = HoverInfo(rawValue: 1 << 2)
        public static let name = HoverInfo(rawValue: 1 << 3)
        public static let all = HoverInfo(rawValue: 1 << 4)
        public static let none = HoverInfo(rawValue: 1 << 5)
        public static let skip = HoverInfo(rawValue: 1 << 6)
    
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
    /// [JavaScript](https://plot.ly/javascript/reference/#choropleth-hoverinfo) |
    /// [Python](https://plot.ly/python/reference/#choropleth-hoverinfo) |
    /// [R](https://plot.ly/r/reference/#choropleth-hoverinfo)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#choropleth-hovertemplate) |
    /// [Python](https://plot.ly/python/reference/#choropleth-hovertemplate) |
    /// [R](https://plot.ly/r/reference/#choropleth-hovertemplate)
    public var hoverTemplate: String?

    /// Determines whether or not the color domain is computed with respect to the input data (here in `z`) or the bounds set in `zmin` and `zmax`  Defaults to `false` when `zmin` and `zmax` are set by the user.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choropleth-zauto) |
    /// [Python](https://plot.ly/python/reference/#choropleth-zauto) |
    /// [R](https://plot.ly/r/reference/#choropleth-zauto)
    public var zAuto: Bool?

    /// Sets the lower bound of the color domain. 
    ///
    /// Value should have the same units as in `z` and if set, `zmax` must be set as well.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choropleth-zmin) |
    /// [Python](https://plot.ly/python/reference/#choropleth-zmin) |
    /// [R](https://plot.ly/r/reference/#choropleth-zmin)
    public var zMin: Double?

    /// Sets the upper bound of the color domain. 
    ///
    /// Value should have the same units as in `z` and if set, `zmin` must be set as well.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choropleth-zmax) |
    /// [Python](https://plot.ly/python/reference/#choropleth-zmax) |
    /// [R](https://plot.ly/r/reference/#choropleth-zmax)
    public var zMax: Double?

    /// Sets the mid-point of the color domain by scaling `zmin` and/or `zmax` to be equidistant to this point. 
    ///
    /// Value should have the same units as in `z`. Has no effect when `zauto` is `false`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choropleth-zmid) |
    /// [Python](https://plot.ly/python/reference/#choropleth-zmid) |
    /// [R](https://plot.ly/r/reference/#choropleth-zmid)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#choropleth-colorscale) |
    /// [Python](https://plot.ly/python/reference/#choropleth-colorscale) |
    /// [R](https://plot.ly/r/reference/#choropleth-colorscale)
    public var colorScale: ColorScale?

    /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `colorscale`. 
    ///
    /// In case `colorscale` is unspecified or `autocolorscale` is true, the default palette will be
    /// chosen according to whether numbers in the `color` array are all positive, all negative or
    /// mixed.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choropleth-autocolorscale) |
    /// [Python](https://plot.ly/python/reference/#choropleth-autocolorscale) |
    /// [R](https://plot.ly/r/reference/#choropleth-autocolorscale)
    public var autoColorScale: Bool?

    /// Reverses the color mapping if true. 
    ///
    /// If true, `zmin` will correspond to the last color in the array and `zmax` will correspond to the
    /// first color.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choropleth-reversescale) |
    /// [Python](https://plot.ly/python/reference/#choropleth-reversescale) |
    /// [R](https://plot.ly/r/reference/#choropleth-reversescale)
    public var reverseScale: Bool?

    /// Determines whether or not a colorbar is displayed for this trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choropleth-showscale) |
    /// [Python](https://plot.ly/python/reference/#choropleth-showscale) |
    /// [R](https://plot.ly/r/reference/#choropleth-showscale)
    public var showScale: Bool?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choropleth-colorbar) |
    /// [Python](https://plot.ly/python/reference/#choropleth-colorbar) |
    /// [R](https://plot.ly/r/reference/#choropleth-colorbar)
    public var colorBar: Shared.ColorBar?

    /// Sets a reference to a shared color axis. 
    ///
    /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
    /// for these shared color axes are set in the layout, under `layout.coloraxis`,
    /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choropleth-coloraxis) |
    /// [Python](https://plot.ly/python/reference/#choropleth-coloraxis) |
    /// [R](https://plot.ly/r/reference/#choropleth-coloraxis)
    public var colorAxis: SubPlotID?

    /// Sets a reference between this trace's geospatial coordinates and a geographic map. 
    ///
    /// If *geo* (the default value), the geospatial coordinates refer to `layout.geo`. If *geo2*, the
    /// geospatial coordinates refer to `layout.geo2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#choropleth-geo) |
    /// [Python](https://plot.ly/python/reference/#choropleth-geo) |
    /// [R](https://plot.ly/r/reference/#choropleth-geo)
    public var geo: SubPlotID?

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
        case transforms = "transform"
        case uiRevision = "uirevision"
        case locations
        case locationMode = "locationmode"
        case z
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
        case geo
    }
    
    public init(visible: Shared.Visible? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, selectedPoints: Anything? = nil, hoverLabel: Shared.HoverLabel? = nil, stream: Shared.Stream? = nil, transforms: [Shared.Transform]? = nil, uiRevision: Anything? = nil, locations: [Double]? = nil, locationMode: LocationMode? = nil, z: [Double]? = nil, text: String? = nil, hoverText: String? = nil, marker: Marker? = nil, selected: Selected? = nil, unselected: Unselected? = nil, hoverInfo: HoverInfo? = nil, hoverTemplate: String? = nil, zAuto: Bool? = nil, zMin: Double? = nil, zMax: Double? = nil, zMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: Shared.ColorBar? = nil, colorAxis: SubPlotID? = nil, geo: SubPlotID? = nil) {
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
        self.locationMode = locationMode
        self.z = z
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
        self.geo = geo
    }
}