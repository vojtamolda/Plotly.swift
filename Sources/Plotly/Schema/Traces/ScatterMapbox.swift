/// The data visualized as scatter point, lines or marker symbols on a Mapbox GL geographic map is provided by longitude/latitude pairs in `lon` and `lat`.
public struct ScatterMapbox: Trace {
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#type) |
    /// [Python](https://plot.ly/python/reference/#type) |
    /// [R](https://plot.ly/r/reference/#type)
    public let type: String = "scattermapbox"

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
    /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-visible) |
    /// [Python](https://plot.ly/python/reference/#scattermapbox-visible) |
    /// [R](https://plot.ly/r/reference/#scattermapbox-visible)
    public var visible: Shared.Visible?

    /// Determines whether or not an item corresponding to this trace is shown in the legend.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-showlegend) |
    /// [Python](https://plot.ly/python/reference/#scattermapbox-showlegend) |
    /// [R](https://plot.ly/r/reference/#scattermapbox-showlegend)
    public var showLegend: Bool?

    /// Sets the legend group for this trace. 
    ///
    /// Traces part of the same legend group hide/show at the same time when toggling legend items.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-legendgroup) |
    /// [Python](https://plot.ly/python/reference/#scattermapbox-legendgroup) |
    /// [R](https://plot.ly/r/reference/#scattermapbox-legendgroup)
    public var legendGroup: String?

    /// Sets the opacity of the trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-opacity) |
    /// [Python](https://plot.ly/python/reference/#scattermapbox-opacity) |
    /// [R](https://plot.ly/r/reference/#scattermapbox-opacity)
    public var opacity: Double?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-name) |
    /// [Python](https://plot.ly/python/reference/#scattermapbox-name) |
    /// [R](https://plot.ly/r/reference/#scattermapbox-name)
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-uid) |
    /// [Python](https://plot.ly/python/reference/#scattermapbox-uid) |
    /// [R](https://plot.ly/r/reference/#scattermapbox-uid)
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-ids) |
    /// [Python](https://plot.ly/python/reference/#scattermapbox-ids) |
    /// [R](https://plot.ly/r/reference/#scattermapbox-ids)
    public var ids: [Double]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-customdata) |
    /// [Python](https://plot.ly/python/reference/#scattermapbox-customdata) |
    /// [R](https://plot.ly/r/reference/#scattermapbox-customdata)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-meta) |
    /// [Python](https://plot.ly/python/reference/#scattermapbox-meta) |
    /// [R](https://plot.ly/r/reference/#scattermapbox-meta)
    public var meta: Anything?

    /// Array containing integer indices of selected points. 
    ///
    /// Has an effect only for traces that support selections. Note that an empty array means an empty
    /// selection where the `unselected` are turned on for all points, whereas, any other non-array
    /// values means no selection all where the `selected` and `unselected` styles have no effect.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-selectedpoints) |
    /// [Python](https://plot.ly/python/reference/#scattermapbox-selectedpoints) |
    /// [R](https://plot.ly/r/reference/#scattermapbox-selectedpoints)
    public var selectedPoints: Anything?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#scattermapbox-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#scattermapbox-hoverlabel)
    public var hoverLabel: Shared.HoverLabel?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-stream) |
    /// [Python](https://plot.ly/python/reference/#scattermapbox-stream) |
    /// [R](https://plot.ly/r/reference/#scattermapbox-stream)
    public var stream: Shared.Stream?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-transforms) |
    /// [Python](https://plot.ly/python/reference/#scattermapbox-transforms) |
    /// [R](https://plot.ly/r/reference/#scattermapbox-transforms)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-uirevision) |
    /// [Python](https://plot.ly/python/reference/#scattermapbox-uirevision) |
    /// [R](https://plot.ly/r/reference/#scattermapbox-uirevision)
    public var uiRevision: Anything?

    /// Sets the longitude coordinates (in degrees East).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-lon) |
    /// [Python](https://plot.ly/python/reference/#scattermapbox-lon) |
    /// [R](https://plot.ly/r/reference/#scattermapbox-lon)
    public var longitude: [Double]?

    /// Sets the latitude coordinates (in degrees North).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-lat) |
    /// [Python](https://plot.ly/python/reference/#scattermapbox-lat) |
    /// [R](https://plot.ly/r/reference/#scattermapbox-lat)
    public var latitude: [Double]?

    /// Determines the drawing mode for this scatter trace. 
    ///
    /// If the provided `mode` includes *text* then the `text` elements appear at the coordinates.
    /// Otherwise, the `text` elements appear on hover.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-mode) |
    /// [Python](https://plot.ly/python/reference/#scattermapbox-mode) |
    /// [R](https://plot.ly/r/reference/#scattermapbox-mode)
    public var mode: Shared.Mode?

    /// Sets text elements associated with each (lon,lat) pair If a single string, the same string appears over all the data points. 
    ///
    /// If an array of string, the items are mapped in order to the this trace's (lon,lat) coordinates.
    /// If trace `hoverinfo` contains a *text* flag and *hovertext* is not set, these elements will be
    /// seen in the hover labels.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-text) |
    /// [Python](https://plot.ly/python/reference/#scattermapbox-text) |
    /// [R](https://plot.ly/r/reference/#scattermapbox-text)
    public var text: ArrayOrString?

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
    /// `arrayOk: true`) are available. variables `lat`, `lon` and `text`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-texttemplate) |
    /// [Python](https://plot.ly/python/reference/#scattermapbox-texttemplate) |
    /// [R](https://plot.ly/r/reference/#scattermapbox-texttemplate)
    public var textTemplate: ArrayOrString?

    /// Sets hover text elements associated with each (lon,lat) pair If a single string, the same string appears over all the data points. 
    ///
    /// If an array of string, the items are mapped in order to the this trace's (lon,lat) coordinates.
    /// To be seen, trace `hoverinfo` must contain a *text* flag.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-hovertext) |
    /// [Python](https://plot.ly/python/reference/#scattermapbox-hovertext) |
    /// [R](https://plot.ly/r/reference/#scattermapbox-hovertext)
    public var hoverText: ArrayOrString?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-line) |
    /// [Python](https://plot.ly/python/reference/#scattermapbox-line) |
    /// [R](https://plot.ly/r/reference/#scattermapbox-line)
    public var line: Shared.Line?

    /// Determines whether or not gaps (i.e. 
    ///
    /// {nan} or missing values) in the provided data arrays are connected.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-connectgaps) |
    /// [Python](https://plot.ly/python/reference/#scattermapbox-connectgaps) |
    /// [R](https://plot.ly/r/reference/#scattermapbox-connectgaps)
    public var connectGaps: Bool?

    /// # Used By
    /// `ScatterMapbox.marker` |
    public struct SymbolicMarker: Encodable {
        /// Sets the marker symbol. 
        ///
        /// Full list: https://www.mapbox.com/maki-icons/ Note that the array `marker.color` and
        /// `marker.size` are only available for *circle* symbols.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-marker-symbol) |
        /// [Python](https://plot.ly/python/reference/#scattermapbox-marker-symbol) |
        /// [R](https://plot.ly/r/reference/#scattermapbox-marker-symbol)
        public var symbol: ArrayOrString?
    
        /// Sets the marker opacity.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-marker-opacity) |
        /// [Python](https://plot.ly/python/reference/#scattermapbox-marker-opacity) |
        /// [R](https://plot.ly/r/reference/#scattermapbox-marker-opacity)
        public var opacity: ArrayOrDouble?
    
        /// Sets the marker size (in px).
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-marker-size) |
        /// [Python](https://plot.ly/python/reference/#scattermapbox-marker-size) |
        /// [R](https://plot.ly/r/reference/#scattermapbox-marker-size)
        public var size: ArrayOrDouble?
    
        /// Has an effect only if `marker.size` is set to a numerical array. 
        ///
        /// Sets the scale factor used to determine the rendered size of marker points. Use with `sizemin`
        /// and `sizemode`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-marker-sizeref) |
        /// [Python](https://plot.ly/python/reference/#scattermapbox-marker-sizeref) |
        /// [R](https://plot.ly/r/reference/#scattermapbox-marker-sizeref)
        public var sizeReference: Double?
    
        /// Has an effect only if `marker.size` is set to a numerical array. 
        ///
        /// Sets the minimum size (in px) of the rendered marker points.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-marker-sizemin) |
        /// [Python](https://plot.ly/python/reference/#scattermapbox-marker-sizemin) |
        /// [R](https://plot.ly/r/reference/#scattermapbox-marker-sizemin)
        public var sizeMin: Double?
    
        /// Has an effect only if `marker.size` is set to a numerical array. 
        ///
        /// Sets the rule for which the data in `size` is converted to pixels.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-marker-sizemode) |
        /// [Python](https://plot.ly/python/reference/#scattermapbox-marker-sizemode) |
        /// [R](https://plot.ly/r/reference/#scattermapbox-marker-sizemode)
        public var sizeMode: Shared.SizeMode?
    
        /// Sets themarkercolor. 
        ///
        /// It accepts either a specific color or an array of numbers that are mapped to the colorscale
        /// relative to the max and min values of the array or relative to `marker.cmin` and `marker.cmax`
        /// if set.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-marker-color) |
        /// [Python](https://plot.ly/python/reference/#scattermapbox-marker-color) |
        /// [R](https://plot.ly/r/reference/#scattermapbox-marker-color)
        public var color: ArrayOrColor?
    
        /// Determines whether or not the color domain is computed with respect to the input data (here in `marker.color`) or the bounds set in `marker.cmin` and `marker.cmax`  Has an effect only if in `marker.color`is set to a numerical array. 
        ///
        /// Defaults to `false` when `marker.cmin` and `marker.cmax` are set by the user.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-marker-cauto) |
        /// [Python](https://plot.ly/python/reference/#scattermapbox-marker-cauto) |
        /// [R](https://plot.ly/r/reference/#scattermapbox-marker-cauto)
        public var cAuto: Bool?
    
        /// Sets the lower bound of the color domain. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
        /// units as in `marker.color` and if set, `marker.cmax` must be set as well.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-marker-cmin) |
        /// [Python](https://plot.ly/python/reference/#scattermapbox-marker-cmin) |
        /// [R](https://plot.ly/r/reference/#scattermapbox-marker-cmin)
        public var cMin: Double?
    
        /// Sets the upper bound of the color domain. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
        /// units as in `marker.color` and if set, `marker.cmin` must be set as well.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-marker-cmax) |
        /// [Python](https://plot.ly/python/reference/#scattermapbox-marker-cmax) |
        /// [R](https://plot.ly/r/reference/#scattermapbox-marker-cmax)
        public var cMax: Double?
    
        /// Sets the mid-point of the color domain by scaling `marker.cmin` and/or `marker.cmax` to be equidistant to this point. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
        /// units as in `marker.color`. Has no effect when `marker.cauto` is `false`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-marker-cmid) |
        /// [Python](https://plot.ly/python/reference/#scattermapbox-marker-cmid) |
        /// [R](https://plot.ly/r/reference/#scattermapbox-marker-cmid)
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
        /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-marker-colorscale) |
        /// [Python](https://plot.ly/python/reference/#scattermapbox-marker-colorscale) |
        /// [R](https://plot.ly/r/reference/#scattermapbox-marker-colorscale)
        public var colorScale: ColorScale?
    
        /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `marker.colorscale`. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. In case `colorscale` is
        /// unspecified or `autocolorscale` is true, the default palette will be chosen according to whether
        /// numbers in the `color` array are all positive, all negative or mixed.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-marker-autocolorscale) |
        /// [Python](https://plot.ly/python/reference/#scattermapbox-marker-autocolorscale) |
        /// [R](https://plot.ly/r/reference/#scattermapbox-marker-autocolorscale)
        public var autoColorScale: Bool?
    
        /// Reverses the color mapping if true. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. If true, `marker.cmin` will
        /// correspond to the last color in the array and `marker.cmax` will correspond to the first color.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-marker-reversescale) |
        /// [Python](https://plot.ly/python/reference/#scattermapbox-marker-reversescale) |
        /// [R](https://plot.ly/r/reference/#scattermapbox-marker-reversescale)
        public var reverseScale: Bool?
    
        /// Determines whether or not a colorbar is displayed for this trace. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-marker-showscale) |
        /// [Python](https://plot.ly/python/reference/#scattermapbox-marker-showscale) |
        /// [R](https://plot.ly/r/reference/#scattermapbox-marker-showscale)
        public var showScale: Bool?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-marker-colorbar) |
        /// [Python](https://plot.ly/python/reference/#scattermapbox-marker-colorbar) |
        /// [R](https://plot.ly/r/reference/#scattermapbox-marker-colorbar)
        public var colorBar: Shared.ColorBar?
    
        /// Sets a reference to a shared color axis. 
        ///
        /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
        /// for these shared color axes are set in the layout, under `layout.coloraxis`,
        /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-marker-coloraxis) |
        /// [Python](https://plot.ly/python/reference/#scattermapbox-marker-coloraxis) |
        /// [R](https://plot.ly/r/reference/#scattermapbox-marker-coloraxis)
        public var colorAxis: SubPlotID?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case symbol
            case opacity
            case size
            case sizeReference = "sizeref"
            case sizeMin = "sizemin"
            case sizeMode = "sizemode"
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
        }
        
        public init(symbol: ArrayOrString? = nil, opacity: ArrayOrDouble? = nil, size: ArrayOrDouble? = nil, sizeReference: Double? = nil, sizeMin: Double? = nil, sizeMode: Shared.SizeMode? = nil, color: ArrayOrColor? = nil, cAuto: Bool? = nil, cMin: Double? = nil, cMax: Double? = nil, cMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: Shared.ColorBar? = nil, colorAxis: SubPlotID? = nil) {
            self.symbol = symbol
            self.opacity = opacity
            self.size = size
            self.sizeReference = sizeReference
            self.sizeMin = sizeMin
            self.sizeMode = sizeMode
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
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-marker) |
    /// [Python](https://plot.ly/python/reference/#scattermapbox-marker) |
    /// [R](https://plot.ly/r/reference/#scattermapbox-marker)
    public var marker: SymbolicMarker?

    /// Sets the area to fill with a solid color. 
    ///
    /// Use with `fillcolor` if not *none*. *toself* connects the endpoints of the trace (or each
    /// segment of the trace if it has gaps) into a closed shape.
    ///
    /// # Used By
    /// `ScatterMapbox.fill` |
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-fill) |
    /// [Python](https://plot.ly/python/reference/#scattermapbox-fill) |
    /// [R](https://plot.ly/r/reference/#scattermapbox-fill)
    public var fill: Fill?

    /// Sets the fill color. 
    ///
    /// Defaults to a half-transparent variant of the line color, marker color, or marker line color,
    /// whichever is available.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-fillcolor) |
    /// [Python](https://plot.ly/python/reference/#scattermapbox-fillcolor) |
    /// [R](https://plot.ly/r/reference/#scattermapbox-fillcolor)
    public var fillColor: Color?

    /// Sets the icon text font (color=mapbox.layer.paint.text-color, size=mapbox.layer.layout.text-size). 
    ///
    /// Has an effect only when `type` is set to *symbol*.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-textfont) |
    /// [Python](https://plot.ly/python/reference/#scattermapbox-textfont) |
    /// [R](https://plot.ly/r/reference/#scattermapbox-textfont)
    public var textFont: Shared.Font?

    /// Sets the positions of the `text` elements with respects to the (x,y) coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-textposition) |
    /// [Python](https://plot.ly/python/reference/#scattermapbox-textposition) |
    /// [R](https://plot.ly/r/reference/#scattermapbox-textposition)
    public var textPosition: Shared.TextPosition?

    /// Determines if this scattermapbox trace's layers are to be inserted before the layer with the specified ID. 
    ///
    /// By default, scattermapbox layers are inserted above all the base layers. To place the
    /// scattermapbox layers above every other layer, set `below` to *''*.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-below) |
    /// [Python](https://plot.ly/python/reference/#scattermapbox-below) |
    /// [R](https://plot.ly/r/reference/#scattermapbox-below)
    public var below: String?

    /// # Used By
    /// `ScatterMapbox.selected` |
    public struct Selected: Encodable {
        /// # Used By
        /// `ScatterMapbox.Selected.marker` |
        public struct Marker: Encodable {
            /// Sets the marker opacity of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-selected-marker-opacity) |
            /// [Python](https://plot.ly/python/reference/#scattermapbox-selected-marker-opacity) |
            /// [R](https://plot.ly/r/reference/#scattermapbox-selected-marker-opacity)
            public var opacity: Double?
        
            /// Sets the marker color of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-selected-marker-color) |
            /// [Python](https://plot.ly/python/reference/#scattermapbox-selected-marker-color) |
            /// [R](https://plot.ly/r/reference/#scattermapbox-selected-marker-color)
            public var color: Color?
        
            /// Sets the marker size of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-selected-marker-size) |
            /// [Python](https://plot.ly/python/reference/#scattermapbox-selected-marker-size) |
            /// [R](https://plot.ly/r/reference/#scattermapbox-selected-marker-size)
            public var size: Double?
        
            public init(opacity: Double? = nil, color: Color? = nil, size: Double? = nil) {
                self.opacity = opacity
                self.color = color
                self.size = size
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-selected-marker) |
        /// [Python](https://plot.ly/python/reference/#scattermapbox-selected-marker) |
        /// [R](https://plot.ly/r/reference/#scattermapbox-selected-marker)
        public var marker: Marker?
    
        public init(marker: Marker? = nil) {
            self.marker = marker
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-selected) |
    /// [Python](https://plot.ly/python/reference/#scattermapbox-selected) |
    /// [R](https://plot.ly/r/reference/#scattermapbox-selected)
    public var selected: Selected?

    /// # Used By
    /// `ScatterMapbox.unselected` |
    public struct Unselected: Encodable {
        /// # Used By
        /// `ScatterMapbox.Unselected.marker` |
        public struct Marker: Encodable {
            /// Sets the marker opacity of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-unselected-marker-opacity) |
            /// [Python](https://plot.ly/python/reference/#scattermapbox-unselected-marker-opacity) |
            /// [R](https://plot.ly/r/reference/#scattermapbox-unselected-marker-opacity)
            public var opacity: Double?
        
            /// Sets the marker color of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-unselected-marker-color) |
            /// [Python](https://plot.ly/python/reference/#scattermapbox-unselected-marker-color) |
            /// [R](https://plot.ly/r/reference/#scattermapbox-unselected-marker-color)
            public var color: Color?
        
            /// Sets the marker size of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-unselected-marker-size) |
            /// [Python](https://plot.ly/python/reference/#scattermapbox-unselected-marker-size) |
            /// [R](https://plot.ly/r/reference/#scattermapbox-unselected-marker-size)
            public var size: Double?
        
            public init(opacity: Double? = nil, color: Color? = nil, size: Double? = nil) {
                self.opacity = opacity
                self.color = color
                self.size = size
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-unselected-marker) |
        /// [Python](https://plot.ly/python/reference/#scattermapbox-unselected-marker) |
        /// [R](https://plot.ly/r/reference/#scattermapbox-unselected-marker)
        public var marker: Marker?
    
        public init(marker: Marker? = nil) {
            self.marker = marker
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-unselected) |
    /// [Python](https://plot.ly/python/reference/#scattermapbox-unselected) |
    /// [R](https://plot.ly/r/reference/#scattermapbox-unselected)
    public var unselected: Unselected?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    ///
    /// # Used By
    /// `ScatterMapbox.hoverInfo` |
    public struct HoverInfo: OptionSet, Encodable {
        public let rawValue: Int
    
        public static let longitude = HoverInfo(rawValue: 1 << 0)
        public static let latitude = HoverInfo(rawValue: 1 << 1)
        public static let text = HoverInfo(rawValue: 1 << 2)
        public static let name = HoverInfo(rawValue: 1 << 3)
        public static let all = HoverInfo(rawValue: 1 << 4)
        public static let none = HoverInfo(rawValue: 1 << 5)
        public static let skip = HoverInfo(rawValue: 1 << 6)
    
        public init(rawValue: Int) { self.rawValue = rawValue }
    
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["lon"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["lat"] }
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-hoverinfo) |
    /// [Python](https://plot.ly/python/reference/#scattermapbox-hoverinfo) |
    /// [R](https://plot.ly/r/reference/#scattermapbox-hoverinfo)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-hovertemplate) |
    /// [Python](https://plot.ly/python/reference/#scattermapbox-hovertemplate) |
    /// [R](https://plot.ly/r/reference/#scattermapbox-hovertemplate)
    public var hoverTemplate: ArrayOrString?

    /// Sets a reference between this trace's data coordinates and a mapbox subplot. 
    ///
    /// If *mapbox* (the default value), the data refer to `layout.mapbox`. If *mapbox2*, the data refer
    /// to `layout.mapbox2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattermapbox-subplot) |
    /// [Python](https://plot.ly/python/reference/#scattermapbox-subplot) |
    /// [R](https://plot.ly/r/reference/#scattermapbox-subplot)
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
        case transforms
        case uiRevision = "uirevision"
        case longitude = "lon"
        case latitude = "lat"
        case mode
        case text
        case textTemplate = "texttemplate"
        case hoverText = "hovertext"
        case line
        case connectGaps = "connectgaps"
        case marker
        case fill
        case fillColor = "fillcolor"
        case textFont = "textfont"
        case textPosition = "textposition"
        case below
        case selected
        case unselected
        case hoverInfo = "hoverinfo"
        case hoverTemplate = "hovertemplate"
        case subPlot = "subplot"
    }
    
    public init(visible: Shared.Visible? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, selectedPoints: Anything? = nil, hoverLabel: Shared.HoverLabel? = nil, stream: Shared.Stream? = nil, transforms: [Shared.Transform]? = nil, uiRevision: Anything? = nil, longitude: [Double]? = nil, latitude: [Double]? = nil, mode: Shared.Mode? = nil, text: ArrayOrString? = nil, textTemplate: ArrayOrString? = nil, hoverText: ArrayOrString? = nil, line: Shared.Line? = nil, connectGaps: Bool? = nil, marker: SymbolicMarker? = nil, fill: Fill? = nil, fillColor: Color? = nil, textFont: Shared.Font? = nil, textPosition: Shared.TextPosition? = nil, below: String? = nil, selected: Selected? = nil, unselected: Unselected? = nil, hoverInfo: HoverInfo? = nil, hoverTemplate: ArrayOrString? = nil, subPlot: SubPlotID? = nil) {
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
        self.mode = mode
        self.text = text
        self.textTemplate = textTemplate
        self.hoverText = hoverText
        self.line = line
        self.connectGaps = connectGaps
        self.marker = marker
        self.fill = fill
        self.fillColor = fillColor
        self.textFont = textFont
        self.textPosition = textPosition
        self.below = below
        self.selected = selected
        self.unselected = unselected
        self.hoverInfo = hoverInfo
        self.hoverTemplate = hoverTemplate
        self.subPlot = subPlot
    }
}