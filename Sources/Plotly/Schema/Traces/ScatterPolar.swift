/// The scatterpolar trace type encompasses line charts, scatter charts, text charts, and bubble charts in polar coordinates. 
///
/// The data visualized as scatter point or lines is set in `r` (radial) and `theta` (angular)
/// coordinates Text (appearing either on the chart or on hover only) is via `text`. Bubble charts
/// are achieved by setting `marker.size` and/or `marker.color` to numerical arrays.
public struct ScatterPolar: Trace {
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#type) |
    /// [Python](https://plot.ly/python/reference/#type) |
    /// [R](https://plot.ly/r/reference/#type)
    public let type: String = "scatterpolar"

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
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-visible) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-visible) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-visible)
    public var visible: Visible0?

    /// Determines whether or not an item corresponding to this trace is shown in the legend.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-showlegend) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-showlegend) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-showlegend)
    public var showLegend: Bool?

    /// Sets the legend group for this trace. 
    ///
    /// Traces part of the same legend group hide/show at the same time when toggling legend items.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-legendgroup) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-legendgroup) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-legendgroup)
    public var legendGroup: String?

    /// Sets the opacity of the trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-opacity) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-opacity) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-opacity)
    public var opacity: Double?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-name) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-name) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-name)
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-uid) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-uid) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-uid)
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-ids) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-ids) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-ids)
    public var ids: [Double]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-customdata) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-customdata) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-customdata)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-meta) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-meta) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-meta)
    public var meta: Anything?

    /// Array containing integer indices of selected points. 
    ///
    /// Has an effect only for traces that support selections. Note that an empty array means an empty
    /// selection where the `unselected` are turned on for all points, whereas, any other non-array
    /// values means no selection all where the `selected` and `unselected` styles have no effect.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-selectedpoints) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-selectedpoints) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-selectedpoints)
    public var selectedPoints: Anything?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-hoverlabel)
    public var hoverLabel: HoverLabel0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-stream) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-stream) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-stream)
    public var stream: Stream0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-transforms) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-transforms) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-transforms)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-uirevision) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-uirevision) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-uirevision)
    public var uiRevision: Anything?

    /// Determines the drawing mode for this scatter trace. 
    ///
    /// If the provided `mode` includes *text* then the `text` elements appear at the coordinates.
    /// Otherwise, the `text` elements appear on hover. If there are less than 20 points and the trace
    /// is not stacked then the default is *lines+markers*. Otherwise, *lines*.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-mode) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-mode) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-mode)
    public var mode: Mode0?

    /// Sets the radial coordinates
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-r) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-r) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-r)
    public var r: [Double]?

    /// Sets the angular coordinates
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-theta) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-theta) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-theta)
    public var theta: [Double]?

    /// Alternate to `r`. 
    ///
    /// Builds a linear space of r coordinates. Use with `dr` where `r0` is the starting coordinate and
    /// `dr` the step.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-r0) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-r0) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-r0)
    public var r0: Anything?

    /// Sets the r coordinate step.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-dr) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-dr) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-dr)
    public var dr: Double?

    /// Alternate to `theta`. 
    ///
    /// Builds a linear space of theta coordinates. Use with `dtheta` where `theta0` is the starting
    /// coordinate and `dtheta` the step.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-theta0) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-theta0) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-theta0)
    public var theta0: Anything?

    /// Sets the theta coordinate step. 
    ///
    /// By default, the `dtheta` step equals the subplot's period divided by the length of the `r`
    /// coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-dtheta) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-dtheta) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-dtheta)
    public var dTheta: Double?

    /// Sets the unit of input *theta* values. 
    ///
    /// Has an effect only when on *linear* angular axes.
    ///
    /// # Used By
    /// `ScatterPolar.thetaUnit` |
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-thetaunit) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-thetaunit) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-thetaunit)
    public var thetaUnit: ThetaUnit?

    /// Sets text elements associated with each (x,y) pair. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to the this trace's (x,y) coordinates. If trace `hoverinfo` contains a
    /// *text* flag and *hovertext* is not set, these elements will be seen in the hover labels.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-text) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-text) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-text)
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
    /// `arrayOk: true`) are available. variables `r`, `theta` and `text`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-texttemplate) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-texttemplate) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-texttemplate)
    public var textTemplate: String?

    /// Sets hover text elements associated with each (x,y) pair. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to the this trace's (x,y) coordinates. To be seen, trace `hoverinfo`
    /// must contain a *text* flag.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-hovertext) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-hovertext) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-hovertext)
    public var hoverText: String?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-line) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-line) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-line)
    public var line: Line0?

    /// Determines whether or not gaps (i.e. 
    ///
    /// {nan} or missing values) in the provided data arrays are connected.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-connectgaps) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-connectgaps) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-connectgaps)
    public var connectGaps: Bool?

    ///
    /// # Used By
    /// `ScatterPolar.marker` |
    public struct Marker: Encodable {
        /// Sets the marker symbol type. 
        ///
        /// Adding 100 is equivalent to appending *-open* to a symbol name. Adding 200 is equivalent to
        /// appending *-dot* to a symbol name. Adding 300 is equivalent to appending *-open-dot* or
        /// *dot-open* to a symbol name.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-marker-symbol) |
        /// [Python](https://plot.ly/python/reference/#scatterpolar-marker-symbol) |
        /// [R](https://plot.ly/r/reference/#scatterpolar-marker-symbol)
        public var symbol: Symbol0?
    
        /// Sets the marker opacity.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-marker-opacity) |
        /// [Python](https://plot.ly/python/reference/#scatterpolar-marker-opacity) |
        /// [R](https://plot.ly/r/reference/#scatterpolar-marker-opacity)
        public var opacity: Double?
    
        /// Sets the marker size (in px).
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-marker-size) |
        /// [Python](https://plot.ly/python/reference/#scatterpolar-marker-size) |
        /// [R](https://plot.ly/r/reference/#scatterpolar-marker-size)
        public var size: Double?
    
        /// Sets a maximum number of points to be drawn on the graph. 
        ///
        /// *0* corresponds to no limit.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-marker-maxdisplayed) |
        /// [Python](https://plot.ly/python/reference/#scatterpolar-marker-maxdisplayed) |
        /// [R](https://plot.ly/r/reference/#scatterpolar-marker-maxdisplayed)
        public var maxDisplayed: Double?
    
        /// Has an effect only if `marker.size` is set to a numerical array. 
        ///
        /// Sets the scale factor used to determine the rendered size of marker points. Use with `sizemin`
        /// and `sizemode`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-marker-sizeref) |
        /// [Python](https://plot.ly/python/reference/#scatterpolar-marker-sizeref) |
        /// [R](https://plot.ly/r/reference/#scatterpolar-marker-sizeref)
        public var sizeReference: Double?
    
        /// Has an effect only if `marker.size` is set to a numerical array. 
        ///
        /// Sets the minimum size (in px) of the rendered marker points.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-marker-sizemin) |
        /// [Python](https://plot.ly/python/reference/#scatterpolar-marker-sizemin) |
        /// [R](https://plot.ly/r/reference/#scatterpolar-marker-sizemin)
        public var sizeMin: Double?
    
        /// Has an effect only if `marker.size` is set to a numerical array. 
        ///
        /// Sets the rule for which the data in `size` is converted to pixels.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-marker-sizemode) |
        /// [Python](https://plot.ly/python/reference/#scatterpolar-marker-sizemode) |
        /// [R](https://plot.ly/r/reference/#scatterpolar-marker-sizemode)
        public var sizeMode: SizeMode0?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-marker-line) |
        /// [Python](https://plot.ly/python/reference/#scatterpolar-marker-line) |
        /// [R](https://plot.ly/r/reference/#scatterpolar-marker-line)
        public var line: Line1?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-marker-gradient) |
        /// [Python](https://plot.ly/python/reference/#scatterpolar-marker-gradient) |
        /// [R](https://plot.ly/r/reference/#scatterpolar-marker-gradient)
        public var gradient: Gradient0?
    
        /// Sets themarkercolor. 
        ///
        /// It accepts either a specific color or an array of numbers that are mapped to the colorscale
        /// relative to the max and min values of the array or relative to `marker.cmin` and `marker.cmax`
        /// if set.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-marker-color) |
        /// [Python](https://plot.ly/python/reference/#scatterpolar-marker-color) |
        /// [R](https://plot.ly/r/reference/#scatterpolar-marker-color)
        public var color: Color?
    
        /// Determines whether or not the color domain is computed with respect to the input data (here in `marker.color`) or the bounds set in `marker.cmin` and `marker.cmax`  Has an effect only if in `marker.color`is set to a numerical array. 
        ///
        /// Defaults to `false` when `marker.cmin` and `marker.cmax` are set by the user.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-marker-cauto) |
        /// [Python](https://plot.ly/python/reference/#scatterpolar-marker-cauto) |
        /// [R](https://plot.ly/r/reference/#scatterpolar-marker-cauto)
        public var cAuto: Bool?
    
        /// Sets the lower bound of the color domain. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
        /// units as in `marker.color` and if set, `marker.cmax` must be set as well.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-marker-cmin) |
        /// [Python](https://plot.ly/python/reference/#scatterpolar-marker-cmin) |
        /// [R](https://plot.ly/r/reference/#scatterpolar-marker-cmin)
        public var cMin: Double?
    
        /// Sets the upper bound of the color domain. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
        /// units as in `marker.color` and if set, `marker.cmin` must be set as well.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-marker-cmax) |
        /// [Python](https://plot.ly/python/reference/#scatterpolar-marker-cmax) |
        /// [R](https://plot.ly/r/reference/#scatterpolar-marker-cmax)
        public var cMax: Double?
    
        /// Sets the mid-point of the color domain by scaling `marker.cmin` and/or `marker.cmax` to be equidistant to this point. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
        /// units as in `marker.color`. Has no effect when `marker.cauto` is `false`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-marker-cmid) |
        /// [Python](https://plot.ly/python/reference/#scatterpolar-marker-cmid) |
        /// [R](https://plot.ly/r/reference/#scatterpolar-marker-cmid)
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
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-marker-colorscale) |
        /// [Python](https://plot.ly/python/reference/#scatterpolar-marker-colorscale) |
        /// [R](https://plot.ly/r/reference/#scatterpolar-marker-colorscale)
        public var colorScale: ColorScale?
    
        /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `marker.colorscale`. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. In case `colorscale` is
        /// unspecified or `autocolorscale` is true, the default palette will be chosen according to whether
        /// numbers in the `color` array are all positive, all negative or mixed.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-marker-autocolorscale) |
        /// [Python](https://plot.ly/python/reference/#scatterpolar-marker-autocolorscale) |
        /// [R](https://plot.ly/r/reference/#scatterpolar-marker-autocolorscale)
        public var autoColorScale: Bool?
    
        /// Reverses the color mapping if true. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. If true, `marker.cmin` will
        /// correspond to the last color in the array and `marker.cmax` will correspond to the first color.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-marker-reversescale) |
        /// [Python](https://plot.ly/python/reference/#scatterpolar-marker-reversescale) |
        /// [R](https://plot.ly/r/reference/#scatterpolar-marker-reversescale)
        public var reverseScale: Bool?
    
        /// Determines whether or not a colorbar is displayed for this trace. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-marker-showscale) |
        /// [Python](https://plot.ly/python/reference/#scatterpolar-marker-showscale) |
        /// [R](https://plot.ly/r/reference/#scatterpolar-marker-showscale)
        public var showScale: Bool?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-marker-colorbar) |
        /// [Python](https://plot.ly/python/reference/#scatterpolar-marker-colorbar) |
        /// [R](https://plot.ly/r/reference/#scatterpolar-marker-colorbar)
        public var colorBar: ColorBar0?
    
        /// Sets a reference to a shared color axis. 
        ///
        /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
        /// for these shared color axes are set in the layout, under `layout.coloraxis`,
        /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-marker-coloraxis) |
        /// [Python](https://plot.ly/python/reference/#scatterpolar-marker-coloraxis) |
        /// [R](https://plot.ly/r/reference/#scatterpolar-marker-coloraxis)
        public var colorAxis: SubPlotID?
    
        /// Sets the source reference on plot.ly for  symbol .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-marker-symbolsrc) |
        /// [Python](https://plot.ly/python/reference/#scatterpolar-marker-symbolsrc) |
        /// [R](https://plot.ly/r/reference/#scatterpolar-marker-symbolsrc)
        public var symbolSource: String?
    
        /// Sets the source reference on plot.ly for  opacity .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-marker-opacitysrc) |
        /// [Python](https://plot.ly/python/reference/#scatterpolar-marker-opacitysrc) |
        /// [R](https://plot.ly/r/reference/#scatterpolar-marker-opacitysrc)
        public var opacitySource: String?
    
        /// Sets the source reference on plot.ly for  size .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-marker-sizesrc) |
        /// [Python](https://plot.ly/python/reference/#scatterpolar-marker-sizesrc) |
        /// [R](https://plot.ly/r/reference/#scatterpolar-marker-sizesrc)
        public var sizeSource: String?
    
        /// Sets the source reference on plot.ly for  color .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-marker-colorsrc) |
        /// [Python](https://plot.ly/python/reference/#scatterpolar-marker-colorsrc) |
        /// [R](https://plot.ly/r/reference/#scatterpolar-marker-colorsrc)
        public var colorSource: String?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case symbol
            case opacity
            case size
            case maxDisplayed = "maxdisplayed"
            case sizeReference = "sizeref"
            case sizeMin = "sizemin"
            case sizeMode = "sizemode"
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
            case colorBar = "colorbar"
            case colorAxis = "coloraxis"
            case symbolSource = "symbolsrc"
            case opacitySource = "opacitysrc"
            case sizeSource = "sizesrc"
            case colorSource = "colorsrc"
        }
        
        public init(symbol: Symbol0? = nil, opacity: Double? = nil, size: Double? = nil, maxDisplayed: Double? = nil, sizeReference: Double? = nil, sizeMin: Double? = nil, sizeMode: SizeMode0? = nil, line: Line1? = nil, gradient: Gradient0? = nil, color: Color? = nil, cAuto: Bool? = nil, cMin: Double? = nil, cMax: Double? = nil, cMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: ColorBar0? = nil, colorAxis: SubPlotID? = nil, symbolSource: String? = nil, opacitySource: String? = nil, sizeSource: String? = nil, colorSource: String? = nil) {
            self.symbol = symbol
            self.opacity = opacity
            self.size = size
            self.maxDisplayed = maxDisplayed
            self.sizeReference = sizeReference
            self.sizeMin = sizeMin
            self.sizeMode = sizeMode
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
            self.colorBar = colorBar
            self.colorAxis = colorAxis
            self.symbolSource = symbolSource
            self.opacitySource = opacitySource
            self.sizeSource = sizeSource
            self.colorSource = colorSource
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-marker) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-marker) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-marker)
    public var marker: Marker?

    /// Determines whether or not markers and text nodes are clipped about the subplot axes. 
    ///
    /// To show markers and text nodes above axis lines and tick labels, make sure to set `xaxis.layer`
    /// and `yaxis.layer` to *below traces*.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-cliponaxis) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-cliponaxis) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-cliponaxis)
    public var clipOnAxis: Bool?

    /// Sets the positions of the `text` elements with respects to the (x,y) coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-textposition) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-textposition) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-textposition)
    public var textPosition: TextPosition0?

    /// Sets the text font.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-textfont) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-textfont) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-textfont)
    public var textFont: Font0?

    /// Sets the area to fill with a solid color. 
    ///
    /// Use with `fillcolor` if not *none*. scatterpolar has a subset of the options available to
    /// scatter. *toself* connects the endpoints of the trace (or each segment of the trace if it has
    /// gaps) into a closed shape. *tonext* fills the space between two traces if one completely
    /// encloses the other (eg consecutive contour lines), and behaves like *toself* if there is no
    /// trace before it. *tonext* should not be used if one trace does not enclose the other.
    ///
    /// # Used By
    /// `ScatterPolar.fill` |
    public enum Fill: String, Encodable {
        case none
        case toSelf = "toself"
        case toNext = "tonext"
    }
    /// Sets the area to fill with a solid color. 
    ///
    /// Use with `fillcolor` if not *none*. scatterpolar has a subset of the options available to
    /// scatter. *toself* connects the endpoints of the trace (or each segment of the trace if it has
    /// gaps) into a closed shape. *tonext* fills the space between two traces if one completely
    /// encloses the other (eg consecutive contour lines), and behaves like *toself* if there is no
    /// trace before it. *tonext* should not be used if one trace does not enclose the other.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-fill) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-fill) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-fill)
    public var fill: Fill?

    /// Sets the fill color. 
    ///
    /// Defaults to a half-transparent variant of the line color, marker color, or marker line color,
    /// whichever is available.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-fillcolor) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-fillcolor) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-fillcolor)
    public var fillColor: Color?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    ///
    /// # Used By
    /// `ScatterPolar.hoverInfo` |
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-hoverinfo) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-hoverinfo) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-hoverinfo)
    public var hoverInfo: HoverInfo?

    /// Do the hover effects highlight individual points (markers or line points) or do they highlight filled regions? If the fill is *toself* or *tonext* and there are no markers or text, then the default is *fills*, otherwise it is *points*.
    ///
    /// # Used By
    /// `ScatterPolar.hoverOn` |
    public struct HoverOn: OptionSet, Encodable {
        public let rawValue: Int
    
        public static let points = HoverOn(rawValue: 1 << 0)
        public static let fills = HoverOn(rawValue: 1 << 1)
    
        public init(rawValue: Int) { self.rawValue = rawValue }
    
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["points"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["fills"] }
            var container = encoder.singleValueContainer()
            try container.encode(options.joined(separator: "+"))
        }
    }
    /// Do the hover effects highlight individual points (markers or line points) or do they highlight filled regions? If the fill is *toself* or *tonext* and there are no markers or text, then the default is *fills*, otherwise it is *points*.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-hoveron) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-hoveron) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-hoveron)
    public var hoverOn: HoverOn?

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
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-hovertemplate) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-hovertemplate) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-hovertemplate)
    public var hoverTemplate: String?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-selected) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-selected) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-selected)
    public var selected: Selected0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-unselected) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-unselected) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-unselected)
    public var unselected: Selected0?

    /// Sets a reference between this trace's data coordinates and a polar subplot. 
    ///
    /// If *polar* (the default value), the data refer to `layout.polar`. If *polar2*, the data refer to
    /// `layout.polar2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-subplot) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-subplot) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-subplot)
    public var subPlot: SubPlotID?

    /// Sets the source reference on plot.ly for  ids .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-idssrc) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-idssrc) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-idssrc)
    public var idsSource: String?

    /// Sets the source reference on plot.ly for  customdata .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-customdatasrc) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-customdatasrc) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-customdatasrc)
    public var customDataSource: String?

    /// Sets the source reference on plot.ly for  meta .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-metasrc) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-metasrc) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-metasrc)
    public var metaSource: String?

    /// Sets the source reference on plot.ly for  r .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-rsrc) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-rsrc) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-rsrc)
    public var rSource: String?

    /// Sets the source reference on plot.ly for  theta .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-thetasrc) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-thetasrc) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-thetasrc)
    public var thetaSource: String?

    /// Sets the source reference on plot.ly for  text .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-textsrc) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-textsrc) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-textsrc)
    public var textSource: String?

    /// Sets the source reference on plot.ly for  texttemplate .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-texttemplatesrc) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-texttemplatesrc) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-texttemplatesrc)
    public var textTemplateSource: String?

    /// Sets the source reference on plot.ly for  hovertext .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-hovertextsrc) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-hovertextsrc) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-hovertextsrc)
    public var hoverTextSource: String?

    /// Sets the source reference on plot.ly for  textposition .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-textpositionsrc) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-textpositionsrc) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-textpositionsrc)
    public var textPositionSource: String?

    /// Sets the source reference on plot.ly for  hoverinfo .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-hoverinfosrc) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-hoverinfosrc) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-hoverinfosrc)
    public var hoverInfoSource: String?

    /// Sets the source reference on plot.ly for  hovertemplate .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterpolar-hovertemplatesrc) |
    /// [Python](https://plot.ly/python/reference/#scatterpolar-hovertemplatesrc) |
    /// [R](https://plot.ly/r/reference/#scatterpolar-hovertemplatesrc)
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
        case mode
        case r
        case theta
        case r0
        case dr
        case theta0
        case dTheta = "dtheta"
        case thetaUnit = "thetaunit"
        case text
        case textTemplate = "texttemplate"
        case hoverText = "hovertext"
        case line
        case connectGaps = "connectgaps"
        case marker
        case clipOnAxis = "cliponaxis"
        case textPosition = "textposition"
        case textFont = "textfont"
        case fill
        case fillColor = "fillcolor"
        case hoverInfo = "hoverinfo"
        case hoverOn = "hoveron"
        case hoverTemplate = "hovertemplate"
        case selected
        case unselected
        case subPlot = "subplot"
        case idsSource = "idssrc"
        case customDataSource = "customdatasrc"
        case metaSource = "metasrc"
        case rSource = "rsrc"
        case thetaSource = "thetasrc"
        case textSource = "textsrc"
        case textTemplateSource = "texttemplatesrc"
        case hoverTextSource = "hovertextsrc"
        case textPositionSource = "textpositionsrc"
        case hoverInfoSource = "hoverinfosrc"
        case hoverTemplateSource = "hovertemplatesrc"
    }
    
    public init(visible: Visible0? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, selectedPoints: Anything? = nil, hoverLabel: HoverLabel0? = nil, stream: Stream0? = nil, transforms: Transforms0? = nil, uiRevision: Anything? = nil, mode: Mode0? = nil, r: [Double]? = nil, theta: [Double]? = nil, r0: Anything? = nil, dr: Double? = nil, theta0: Anything? = nil, dTheta: Double? = nil, thetaUnit: ThetaUnit? = nil, text: String? = nil, textTemplate: String? = nil, hoverText: String? = nil, line: Line0? = nil, connectGaps: Bool? = nil, marker: Marker? = nil, clipOnAxis: Bool? = nil, textPosition: TextPosition0? = nil, textFont: Font0? = nil, fill: Fill? = nil, fillColor: Color? = nil, hoverInfo: HoverInfo? = nil, hoverOn: HoverOn? = nil, hoverTemplate: String? = nil, selected: Selected0? = nil, unselected: Selected0? = nil, subPlot: SubPlotID? = nil, idsSource: String? = nil, customDataSource: String? = nil, metaSource: String? = nil, rSource: String? = nil, thetaSource: String? = nil, textSource: String? = nil, textTemplateSource: String? = nil, hoverTextSource: String? = nil, textPositionSource: String? = nil, hoverInfoSource: String? = nil, hoverTemplateSource: String? = nil) {
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
        self.mode = mode
        self.r = r
        self.theta = theta
        self.r0 = r0
        self.dr = dr
        self.theta0 = theta0
        self.dTheta = dTheta
        self.thetaUnit = thetaUnit
        self.text = text
        self.textTemplate = textTemplate
        self.hoverText = hoverText
        self.line = line
        self.connectGaps = connectGaps
        self.marker = marker
        self.clipOnAxis = clipOnAxis
        self.textPosition = textPosition
        self.textFont = textFont
        self.fill = fill
        self.fillColor = fillColor
        self.hoverInfo = hoverInfo
        self.hoverOn = hoverOn
        self.hoverTemplate = hoverTemplate
        self.selected = selected
        self.unselected = unselected
        self.subPlot = subPlot
        self.idsSource = idsSource
        self.customDataSource = customDataSource
        self.metaSource = metaSource
        self.rSource = rSource
        self.thetaSource = thetaSource
        self.textSource = textSource
        self.textTemplateSource = textTemplateSource
        self.hoverTextSource = hoverTextSource
        self.textPositionSource = textPositionSource
        self.hoverInfoSource = hoverInfoSource
        self.hoverTemplateSource = hoverTemplateSource
    }
}