/// The data visualized as scatter point or lines on a geographic map is provided either by longitude/latitude pairs in `lon` and `lat` respectively or by geographic location IDs or names in `locations`.
public struct ScatterGeo: Trace {
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#type) |
    /// [Python](https://plot.ly/python/reference/#type) |
    /// [R](https://plot.ly/r/reference/#type)
    public let type: String = "scattergeo"

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
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-visible) |
    /// [Python](https://plot.ly/python/reference/#scattergeo-visible) |
    /// [R](https://plot.ly/r/reference/#scattergeo-visible)
    public var visible: Shared.Visible?

    /// Determines whether or not an item corresponding to this trace is shown in the legend.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-showlegend) |
    /// [Python](https://plot.ly/python/reference/#scattergeo-showlegend) |
    /// [R](https://plot.ly/r/reference/#scattergeo-showlegend)
    public var showLegend: Bool?

    /// Sets the legend group for this trace. 
    ///
    /// Traces part of the same legend group hide/show at the same time when toggling legend items.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-legendgroup) |
    /// [Python](https://plot.ly/python/reference/#scattergeo-legendgroup) |
    /// [R](https://plot.ly/r/reference/#scattergeo-legendgroup)
    public var legendGroup: String?

    /// Sets the opacity of the trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-opacity) |
    /// [Python](https://plot.ly/python/reference/#scattergeo-opacity) |
    /// [R](https://plot.ly/r/reference/#scattergeo-opacity)
    public var opacity: Double?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-name) |
    /// [Python](https://plot.ly/python/reference/#scattergeo-name) |
    /// [R](https://plot.ly/r/reference/#scattergeo-name)
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-uid) |
    /// [Python](https://plot.ly/python/reference/#scattergeo-uid) |
    /// [R](https://plot.ly/r/reference/#scattergeo-uid)
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-ids) |
    /// [Python](https://plot.ly/python/reference/#scattergeo-ids) |
    /// [R](https://plot.ly/r/reference/#scattergeo-ids)
    public var ids: [Double]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-customdata) |
    /// [Python](https://plot.ly/python/reference/#scattergeo-customdata) |
    /// [R](https://plot.ly/r/reference/#scattergeo-customdata)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-meta) |
    /// [Python](https://plot.ly/python/reference/#scattergeo-meta) |
    /// [R](https://plot.ly/r/reference/#scattergeo-meta)
    public var meta: Anything?

    /// Array containing integer indices of selected points. 
    ///
    /// Has an effect only for traces that support selections. Note that an empty array means an empty
    /// selection where the `unselected` are turned on for all points, whereas, any other non-array
    /// values means no selection all where the `selected` and `unselected` styles have no effect.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-selectedpoints) |
    /// [Python](https://plot.ly/python/reference/#scattergeo-selectedpoints) |
    /// [R](https://plot.ly/r/reference/#scattergeo-selectedpoints)
    public var selectedPoints: Anything?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#scattergeo-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#scattergeo-hoverlabel)
    public var hoverLabel: Shared.HoverLabel?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-stream) |
    /// [Python](https://plot.ly/python/reference/#scattergeo-stream) |
    /// [R](https://plot.ly/r/reference/#scattergeo-stream)
    public var stream: Shared.Stream?

    /// An array of operations that manipulate the trace data, for example filtering or sorting the data arrays.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-transforms-items-transform) |
    /// [Python](https://plot.ly/python/reference/#scattergeo-transforms-items-transform) |
    /// [R](https://plot.ly/r/reference/#scattergeo-transforms-items-transform)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-uirevision) |
    /// [Python](https://plot.ly/python/reference/#scattergeo-uirevision) |
    /// [R](https://plot.ly/r/reference/#scattergeo-uirevision)
    public var uiRevision: Anything?

    /// Sets the longitude coordinates (in degrees East).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-lon) |
    /// [Python](https://plot.ly/python/reference/#scattergeo-lon) |
    /// [R](https://plot.ly/r/reference/#scattergeo-lon)
    public var longitude: [Double]?

    /// Sets the latitude coordinates (in degrees North).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-lat) |
    /// [Python](https://plot.ly/python/reference/#scattergeo-lat) |
    /// [R](https://plot.ly/r/reference/#scattergeo-lat)
    public var latitude: [Double]?

    /// Sets the coordinates via location IDs or names. 
    ///
    /// Coordinates correspond to the centroid of each location given. See `locationmode` for more info.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-locations) |
    /// [Python](https://plot.ly/python/reference/#scattergeo-locations) |
    /// [R](https://plot.ly/r/reference/#scattergeo-locations)
    public var locations: [Double]?

    /// Determines the set of locations used to match entries in `locations` to regions on the map.
    ///
    /// # Used By
    /// `ScatterGeo.locationMode` |
    public enum LocationMode: String, Encodable {
        case ISO3 = "ISO-3"
        case statesOfUSA = "USA-states"
        case countryNames = "country names"
    }
    /// Determines the set of locations used to match entries in `locations` to regions on the map.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-locationmode) |
    /// [Python](https://plot.ly/python/reference/#scattergeo-locationmode) |
    /// [R](https://plot.ly/r/reference/#scattergeo-locationmode)
    public var locationMode: LocationMode?

    /// Determines the drawing mode for this scatter trace. 
    ///
    /// If the provided `mode` includes *text* then the `text` elements appear at the coordinates.
    /// Otherwise, the `text` elements appear on hover. If there are less than 20 points and the trace
    /// is not stacked then the default is *lines+markers*. Otherwise, *lines*.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-mode) |
    /// [Python](https://plot.ly/python/reference/#scattergeo-mode) |
    /// [R](https://plot.ly/r/reference/#scattergeo-mode)
    public var mode: Shared.Mode?

    /// Sets text elements associated with each (lon,lat) pair or item in `locations`. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to the this trace's (lon,lat) or `locations` coordinates. If trace
    /// `hoverinfo` contains a *text* flag and *hovertext* is not set, these elements will be seen in
    /// the hover labels.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-text) |
    /// [Python](https://plot.ly/python/reference/#scattergeo-text) |
    /// [R](https://plot.ly/r/reference/#scattergeo-text)
    public var text: String?

    /// Template string used for rendering the information text that appear on points. 
    ///
    /// Note that this will override `textinfo`. Variables are inserted using %{variable}, for example
    /// "y: %{y}". Numbers are formatted using d3-format's syntax %{variable:d3-format}, for example
    /// "Price: %{y:$.2f}".
    /// https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format for details on
    /// the formatting syntax. Dates are formatted using d3-time-format's syntax
    /// %{variable|d3-time-format}, for example "Day: %{2019-01-01|%A}".
    /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format for details on
    /// the date formatting syntax. Every attributes that can be specified per-point (the ones that are
    /// `arrayOk: true`) are available. variables `lat`, `lon`, `location` and `text`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-texttemplate) |
    /// [Python](https://plot.ly/python/reference/#scattergeo-texttemplate) |
    /// [R](https://plot.ly/r/reference/#scattergeo-texttemplate)
    public var textTemplate: String?

    /// Sets hover text elements associated with each (lon,lat) pair or item in `locations`. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to the this trace's (lon,lat) or `locations` coordinates. To be seen,
    /// trace `hoverinfo` must contain a *text* flag.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-hovertext) |
    /// [Python](https://plot.ly/python/reference/#scattergeo-hovertext) |
    /// [R](https://plot.ly/r/reference/#scattergeo-hovertext)
    public var hoverText: String?

    /// Sets the text font.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-textfont) |
    /// [Python](https://plot.ly/python/reference/#scattergeo-textfont) |
    /// [R](https://plot.ly/r/reference/#scattergeo-textfont)
    public var textFont: Shared.Font?

    /// Sets the positions of the `text` elements with respects to the (x,y) coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-textposition) |
    /// [Python](https://plot.ly/python/reference/#scattergeo-textposition) |
    /// [R](https://plot.ly/r/reference/#scattergeo-textposition)
    public var textPosition: Shared.TextPosition?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-line) |
    /// [Python](https://plot.ly/python/reference/#scattergeo-line) |
    /// [R](https://plot.ly/r/reference/#scattergeo-line)
    public var line: Shared.DashedLine?

    /// Determines whether or not gaps (i.e. 
    ///
    /// {nan} or missing values) in the provided data arrays are connected.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-connectgaps) |
    /// [Python](https://plot.ly/python/reference/#scattergeo-connectgaps) |
    /// [R](https://plot.ly/r/reference/#scattergeo-connectgaps)
    public var connectGaps: Bool?

    /// # Used By
    /// `ScatterGeo.marker` |
    public struct GradientMarker: Encodable {
        /// Sets the marker symbol type. 
        ///
        /// Adding 100 is equivalent to appending *-open* to a symbol name. Adding 200 is equivalent to
        /// appending *-dot* to a symbol name. Adding 300 is equivalent to appending *-open-dot* or
        /// *dot-open* to a symbol name.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-marker-symbol) |
        /// [Python](https://plot.ly/python/reference/#scattergeo-marker-symbol) |
        /// [R](https://plot.ly/r/reference/#scattergeo-marker-symbol)
        public var symbol: Shared.Symbol?
    
        /// Sets the marker opacity.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-marker-opacity) |
        /// [Python](https://plot.ly/python/reference/#scattergeo-marker-opacity) |
        /// [R](https://plot.ly/r/reference/#scattergeo-marker-opacity)
        public var opacity: Double?
    
        /// Sets the marker size (in px).
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-marker-size) |
        /// [Python](https://plot.ly/python/reference/#scattergeo-marker-size) |
        /// [R](https://plot.ly/r/reference/#scattergeo-marker-size)
        public var size: Double?
    
        /// Has an effect only if `marker.size` is set to a numerical array. 
        ///
        /// Sets the scale factor used to determine the rendered size of marker points. Use with `sizemin`
        /// and `sizemode`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-marker-sizeref) |
        /// [Python](https://plot.ly/python/reference/#scattergeo-marker-sizeref) |
        /// [R](https://plot.ly/r/reference/#scattergeo-marker-sizeref)
        public var sizeReference: Double?
    
        /// Has an effect only if `marker.size` is set to a numerical array. 
        ///
        /// Sets the minimum size (in px) of the rendered marker points.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-marker-sizemin) |
        /// [Python](https://plot.ly/python/reference/#scattergeo-marker-sizemin) |
        /// [R](https://plot.ly/r/reference/#scattergeo-marker-sizemin)
        public var sizeMin: Double?
    
        /// Has an effect only if `marker.size` is set to a numerical array. 
        ///
        /// Sets the rule for which the data in `size` is converted to pixels.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-marker-sizemode) |
        /// [Python](https://plot.ly/python/reference/#scattergeo-marker-sizemode) |
        /// [R](https://plot.ly/r/reference/#scattergeo-marker-sizemode)
        public var sizeMode: Shared.SizeMode?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-marker-colorbar) |
        /// [Python](https://plot.ly/python/reference/#scattergeo-marker-colorbar) |
        /// [R](https://plot.ly/r/reference/#scattergeo-marker-colorbar)
        public var colorBar: Shared.ColorBar?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-marker-line) |
        /// [Python](https://plot.ly/python/reference/#scattergeo-marker-line) |
        /// [R](https://plot.ly/r/reference/#scattergeo-marker-line)
        public var line: Shared.ColoredLine?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-marker-gradient) |
        /// [Python](https://plot.ly/python/reference/#scattergeo-marker-gradient) |
        /// [R](https://plot.ly/r/reference/#scattergeo-marker-gradient)
        public var gradient: Shared.Gradient?
    
        /// Sets themarkercolor. 
        ///
        /// It accepts either a specific color or an array of numbers that are mapped to the colorscale
        /// relative to the max and min values of the array or relative to `marker.cmin` and `marker.cmax`
        /// if set.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-marker-color) |
        /// [Python](https://plot.ly/python/reference/#scattergeo-marker-color) |
        /// [R](https://plot.ly/r/reference/#scattergeo-marker-color)
        public var color: Color?
    
        /// Determines whether or not the color domain is computed with respect to the input data (here in `marker.color`) or the bounds set in `marker.cmin` and `marker.cmax`  Has an effect only if in `marker.color`is set to a numerical array. 
        ///
        /// Defaults to `false` when `marker.cmin` and `marker.cmax` are set by the user.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-marker-cauto) |
        /// [Python](https://plot.ly/python/reference/#scattergeo-marker-cauto) |
        /// [R](https://plot.ly/r/reference/#scattergeo-marker-cauto)
        public var cAuto: Bool?
    
        /// Sets the lower bound of the color domain. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
        /// units as in `marker.color` and if set, `marker.cmax` must be set as well.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-marker-cmin) |
        /// [Python](https://plot.ly/python/reference/#scattergeo-marker-cmin) |
        /// [R](https://plot.ly/r/reference/#scattergeo-marker-cmin)
        public var cMin: Double?
    
        /// Sets the upper bound of the color domain. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
        /// units as in `marker.color` and if set, `marker.cmin` must be set as well.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-marker-cmax) |
        /// [Python](https://plot.ly/python/reference/#scattergeo-marker-cmax) |
        /// [R](https://plot.ly/r/reference/#scattergeo-marker-cmax)
        public var cMax: Double?
    
        /// Sets the mid-point of the color domain by scaling `marker.cmin` and/or `marker.cmax` to be equidistant to this point. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
        /// units as in `marker.color`. Has no effect when `marker.cauto` is `false`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-marker-cmid) |
        /// [Python](https://plot.ly/python/reference/#scattergeo-marker-cmid) |
        /// [R](https://plot.ly/r/reference/#scattergeo-marker-cmid)
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
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-marker-colorscale) |
        /// [Python](https://plot.ly/python/reference/#scattergeo-marker-colorscale) |
        /// [R](https://plot.ly/r/reference/#scattergeo-marker-colorscale)
        public var colorScale: ColorScale?
    
        /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `marker.colorscale`. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. In case `colorscale` is
        /// unspecified or `autocolorscale` is true, the default palette will be chosen according to whether
        /// numbers in the `color` array are all positive, all negative or mixed.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-marker-autocolorscale) |
        /// [Python](https://plot.ly/python/reference/#scattergeo-marker-autocolorscale) |
        /// [R](https://plot.ly/r/reference/#scattergeo-marker-autocolorscale)
        public var autoColorScale: Bool?
    
        /// Reverses the color mapping if true. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. If true, `marker.cmin` will
        /// correspond to the last color in the array and `marker.cmax` will correspond to the first color.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-marker-reversescale) |
        /// [Python](https://plot.ly/python/reference/#scattergeo-marker-reversescale) |
        /// [R](https://plot.ly/r/reference/#scattergeo-marker-reversescale)
        public var reverseScale: Bool?
    
        /// Determines whether or not a colorbar is displayed for this trace. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-marker-showscale) |
        /// [Python](https://plot.ly/python/reference/#scattergeo-marker-showscale) |
        /// [R](https://plot.ly/r/reference/#scattergeo-marker-showscale)
        public var showScale: Bool?
    
        /// Sets a reference to a shared color axis. 
        ///
        /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
        /// for these shared color axes are set in the layout, under `layout.coloraxis`,
        /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-marker-coloraxis) |
        /// [Python](https://plot.ly/python/reference/#scattergeo-marker-coloraxis) |
        /// [R](https://plot.ly/r/reference/#scattergeo-marker-coloraxis)
        public var colorAxis: SubPlotID?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case symbol
            case opacity
            case size
            case sizeReference = "sizeref"
            case sizeMin = "sizemin"
            case sizeMode = "sizemode"
            case colorBar = "colorbar"
            case line
            case gradient
            case color
            case cAuto = "cauto"
            case cMin = "cmin"
            case cMax = "cmax"
            case cMiddle = "cmid"
            case colorScale = "colorscale"
            case autoColorScale = "autocolorscale"
            case reverseScale = "reversescale"
            case showScale = "showscale"
            case colorAxis = "coloraxis"
        }
        
        public init(symbol: Shared.Symbol? = nil, opacity: Double? = nil, size: Double? = nil, sizeReference: Double? = nil, sizeMin: Double? = nil, sizeMode: Shared.SizeMode? = nil, colorBar: Shared.ColorBar? = nil, line: Shared.ColoredLine? = nil, gradient: Shared.Gradient? = nil, color: Color? = nil, cAuto: Bool? = nil, cMin: Double? = nil, cMax: Double? = nil, cMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorAxis: SubPlotID? = nil) {
            self.symbol = symbol
            self.opacity = opacity
            self.size = size
            self.sizeReference = sizeReference
            self.sizeMin = sizeMin
            self.sizeMode = sizeMode
            self.colorBar = colorBar
            self.line = line
            self.gradient = gradient
            self.color = color
            self.cAuto = cAuto
            self.cMin = cMin
            self.cMax = cMax
            self.cMiddle = cMiddle
            self.colorScale = colorScale
            self.autoColorScale = autoColorScale
            self.reverseScale = reverseScale
            self.showScale = showScale
            self.colorAxis = colorAxis
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-marker) |
    /// [Python](https://plot.ly/python/reference/#scattergeo-marker) |
    /// [R](https://plot.ly/r/reference/#scattergeo-marker)
    public var marker: GradientMarker?

    /// Sets the area to fill with a solid color. 
    ///
    /// Use with `fillcolor` if not *none*. *toself* connects the endpoints of the trace (or each
    /// segment of the trace if it has gaps) into a closed shape.
    ///
    /// # Used By
    /// `ScatterGeo.fill` |
    public enum Fill: String, Encodable {
        case none
        case toSelf = "toself"
    }
    /// Sets the area to fill with a solid color. 
    ///
    /// Use with `fillcolor` if not *none*. *toself* connects the endpoints of the trace (or each
    /// segment of the trace if it has gaps) into a closed shape.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-fill) |
    /// [Python](https://plot.ly/python/reference/#scattergeo-fill) |
    /// [R](https://plot.ly/r/reference/#scattergeo-fill)
    public var fill: Fill?

    /// Sets the fill color. 
    ///
    /// Defaults to a half-transparent variant of the line color, marker color, or marker line color,
    /// whichever is available.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-fillcolor) |
    /// [Python](https://plot.ly/python/reference/#scattergeo-fillcolor) |
    /// [R](https://plot.ly/r/reference/#scattergeo-fillcolor)
    public var fillColor: Color?

    /// # Used By
    /// `ScatterGeo.selected` |
    public struct Selected: Encodable {
        /// # Used By
        /// `ScatterGeo.Selected.marker` |
        public struct Marker: Encodable {
            /// Sets the marker opacity of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-selected-marker-opacity) |
            /// [Python](https://plot.ly/python/reference/#scattergeo-selected-marker-opacity) |
            /// [R](https://plot.ly/r/reference/#scattergeo-selected-marker-opacity)
            public var opacity: Double?
        
            /// Sets the marker color of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-selected-marker-color) |
            /// [Python](https://plot.ly/python/reference/#scattergeo-selected-marker-color) |
            /// [R](https://plot.ly/r/reference/#scattergeo-selected-marker-color)
            public var color: Color?
        
            /// Sets the marker size of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-selected-marker-size) |
            /// [Python](https://plot.ly/python/reference/#scattergeo-selected-marker-size) |
            /// [R](https://plot.ly/r/reference/#scattergeo-selected-marker-size)
            public var size: Double?
        
            public init(opacity: Double? = nil, color: Color? = nil, size: Double? = nil) {
                self.opacity = opacity
                self.color = color
                self.size = size
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-selected-marker) |
        /// [Python](https://plot.ly/python/reference/#scattergeo-selected-marker) |
        /// [R](https://plot.ly/r/reference/#scattergeo-selected-marker)
        public var marker: Marker?
    
        /// # Used By
        /// `ScatterGeo.Selected.textFont` |
        public struct TextFont: Encodable {
            /// Sets the text font color of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-selected-textfont-color) |
            /// [Python](https://plot.ly/python/reference/#scattergeo-selected-textfont-color) |
            /// [R](https://plot.ly/r/reference/#scattergeo-selected-textfont-color)
            public var color: Color?
        
            public init(color: Color? = nil) {
                self.color = color
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-selected-textfont) |
        /// [Python](https://plot.ly/python/reference/#scattergeo-selected-textfont) |
        /// [R](https://plot.ly/r/reference/#scattergeo-selected-textfont)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-selected) |
    /// [Python](https://plot.ly/python/reference/#scattergeo-selected) |
    /// [R](https://plot.ly/r/reference/#scattergeo-selected)
    public var selected: Selected?

    /// # Used By
    /// `ScatterGeo.unselected` |
    public struct Unselected: Encodable {
        /// # Used By
        /// `ScatterGeo.Unselected.marker` |
        public struct Marker: Encodable {
            /// Sets the marker opacity of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-unselected-marker-opacity) |
            /// [Python](https://plot.ly/python/reference/#scattergeo-unselected-marker-opacity) |
            /// [R](https://plot.ly/r/reference/#scattergeo-unselected-marker-opacity)
            public var opacity: Double?
        
            /// Sets the marker color of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-unselected-marker-color) |
            /// [Python](https://plot.ly/python/reference/#scattergeo-unselected-marker-color) |
            /// [R](https://plot.ly/r/reference/#scattergeo-unselected-marker-color)
            public var color: Color?
        
            /// Sets the marker size of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-unselected-marker-size) |
            /// [Python](https://plot.ly/python/reference/#scattergeo-unselected-marker-size) |
            /// [R](https://plot.ly/r/reference/#scattergeo-unselected-marker-size)
            public var size: Double?
        
            public init(opacity: Double? = nil, color: Color? = nil, size: Double? = nil) {
                self.opacity = opacity
                self.color = color
                self.size = size
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-unselected-marker) |
        /// [Python](https://plot.ly/python/reference/#scattergeo-unselected-marker) |
        /// [R](https://plot.ly/r/reference/#scattergeo-unselected-marker)
        public var marker: Marker?
    
        /// # Used By
        /// `ScatterGeo.Unselected.textFont` |
        public struct TextFont: Encodable {
            /// Sets the text font color of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-unselected-textfont-color) |
            /// [Python](https://plot.ly/python/reference/#scattergeo-unselected-textfont-color) |
            /// [R](https://plot.ly/r/reference/#scattergeo-unselected-textfont-color)
            public var color: Color?
        
            public init(color: Color? = nil) {
                self.color = color
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-unselected-textfont) |
        /// [Python](https://plot.ly/python/reference/#scattergeo-unselected-textfont) |
        /// [R](https://plot.ly/r/reference/#scattergeo-unselected-textfont)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-unselected) |
    /// [Python](https://plot.ly/python/reference/#scattergeo-unselected) |
    /// [R](https://plot.ly/r/reference/#scattergeo-unselected)
    public var unselected: Unselected?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    ///
    /// # Used By
    /// `ScatterGeo.hoverInfo` |
    public struct HoverInfo: OptionSet, Encodable {
        public let rawValue: Int
    
        public static let longitude = HoverInfo(rawValue: 1 << 0)
        public static let latitude = HoverInfo(rawValue: 1 << 1)
        public static let location = HoverInfo(rawValue: 1 << 2)
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
            if (self.rawValue & 1 << 2) != 0 { options += ["location"] }
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-hoverinfo) |
    /// [Python](https://plot.ly/python/reference/#scattergeo-hoverinfo) |
    /// [R](https://plot.ly/r/reference/#scattergeo-hoverinfo)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-hovertemplate) |
    /// [Python](https://plot.ly/python/reference/#scattergeo-hovertemplate) |
    /// [R](https://plot.ly/r/reference/#scattergeo-hovertemplate)
    public var hoverTemplate: String?

    /// Sets a reference between this trace's geospatial coordinates and a geographic map. 
    ///
    /// If *geo* (the default value), the geospatial coordinates refer to `layout.geo`. If *geo2*, the
    /// geospatial coordinates refer to `layout.geo2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergeo-geo) |
    /// [Python](https://plot.ly/python/reference/#scattergeo-geo) |
    /// [R](https://plot.ly/r/reference/#scattergeo-geo)
    public var geo: SubPlotID?

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
        case longitude = "lon"
        case latitude = "lat"
        case locations
        case locationMode = "locationmode"
        case mode
        case text
        case textTemplate = "texttemplate"
        case hoverText = "hovertext"
        case textFont = "textfont"
        case textPosition = "textposition"
        case line
        case connectGaps = "connectgaps"
        case marker
        case fill
        case fillColor = "fillcolor"
        case selected
        case unselected
        case hoverInfo = "hoverinfo"
        case hoverTemplate = "hovertemplate"
        case geo
    }
    
    public init(visible: Shared.Visible? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, selectedPoints: Anything? = nil, hoverLabel: Shared.HoverLabel? = nil, stream: Shared.Stream? = nil, transforms: [Shared.Transform]? = nil, uiRevision: Anything? = nil, longitude: [Double]? = nil, latitude: [Double]? = nil, locations: [Double]? = nil, locationMode: LocationMode? = nil, mode: Shared.Mode? = nil, text: String? = nil, textTemplate: String? = nil, hoverText: String? = nil, textFont: Shared.Font? = nil, textPosition: Shared.TextPosition? = nil, line: Shared.DashedLine? = nil, connectGaps: Bool? = nil, marker: GradientMarker? = nil, fill: Fill? = nil, fillColor: Color? = nil, selected: Selected? = nil, unselected: Unselected? = nil, hoverInfo: HoverInfo? = nil, hoverTemplate: String? = nil, geo: SubPlotID? = nil) {
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
        self.longitude = longitude
        self.latitude = latitude
        self.locations = locations
        self.locationMode = locationMode
        self.mode = mode
        self.text = text
        self.textTemplate = textTemplate
        self.hoverText = hoverText
        self.textFont = textFont
        self.textPosition = textPosition
        self.line = line
        self.connectGaps = connectGaps
        self.marker = marker
        self.fill = fill
        self.fillColor = fillColor
        self.selected = selected
        self.unselected = unselected
        self.hoverInfo = hoverInfo
        self.hoverTemplate = hoverTemplate
        self.geo = geo
    }
}