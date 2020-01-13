/// Provides similar functionality to the *scatter* type but on a ternary phase diagram. 
///
/// The data is provided by at least two arrays out of `a`, `b`, `c` triplets.
public struct ScatterTernary: Trace {
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#type) |
    /// [Python](https://plot.ly/python/reference/#type) |
    /// [R](https://plot.ly/r/reference/#type)
    public let type: String = "scatterternary"

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
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-visible) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-visible) |
    /// [R](https://plot.ly/r/reference/#scatterternary-visible)
    public var visible: Visible0?

    /// Determines whether or not an item corresponding to this trace is shown in the legend.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-showlegend) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-showlegend) |
    /// [R](https://plot.ly/r/reference/#scatterternary-showlegend)
    public var showLegend: Bool?

    /// Sets the legend group for this trace. 
    ///
    /// Traces part of the same legend group hide/show at the same time when toggling legend items.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-legendgroup) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-legendgroup) |
    /// [R](https://plot.ly/r/reference/#scatterternary-legendgroup)
    public var legendGroup: String?

    /// Sets the opacity of the trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-opacity) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-opacity) |
    /// [R](https://plot.ly/r/reference/#scatterternary-opacity)
    public var opacity: Double?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-name) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-name) |
    /// [R](https://plot.ly/r/reference/#scatterternary-name)
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-uid) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-uid) |
    /// [R](https://plot.ly/r/reference/#scatterternary-uid)
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-ids) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-ids) |
    /// [R](https://plot.ly/r/reference/#scatterternary-ids)
    public var ids: [Double]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-customdata) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-customdata) |
    /// [R](https://plot.ly/r/reference/#scatterternary-customdata)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-meta) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-meta) |
    /// [R](https://plot.ly/r/reference/#scatterternary-meta)
    public var meta: Anything?

    /// Array containing integer indices of selected points. 
    ///
    /// Has an effect only for traces that support selections. Note that an empty array means an empty
    /// selection where the `unselected` are turned on for all points, whereas, any other non-array
    /// values means no selection all where the `selected` and `unselected` styles have no effect.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-selectedpoints) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-selectedpoints) |
    /// [R](https://plot.ly/r/reference/#scatterternary-selectedpoints)
    public var selectedPoints: Anything?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#scatterternary-hoverlabel)
    public var hoverLabel: HoverLabel0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-stream) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-stream) |
    /// [R](https://plot.ly/r/reference/#scatterternary-stream)
    public var stream: Stream0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-transforms) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-transforms) |
    /// [R](https://plot.ly/r/reference/#scatterternary-transforms)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-uirevision) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-uirevision) |
    /// [R](https://plot.ly/r/reference/#scatterternary-uirevision)
    public var uiRevision: Anything?

    /// Sets the quantity of component `a` in each data point. 
    ///
    /// If `a`, `b`, and `c` are all provided, they need not be normalized, only the relative values
    /// matter. If only two arrays are provided they must be normalized to match `ternary<i>.sum`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-a) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-a) |
    /// [R](https://plot.ly/r/reference/#scatterternary-a)
    public var a: [Double]?

    /// Sets the quantity of component `a` in each data point. 
    ///
    /// If `a`, `b`, and `c` are all provided, they need not be normalized, only the relative values
    /// matter. If only two arrays are provided they must be normalized to match `ternary<i>.sum`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-b) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-b) |
    /// [R](https://plot.ly/r/reference/#scatterternary-b)
    public var b: [Double]?

    /// Sets the quantity of component `a` in each data point. 
    ///
    /// If `a`, `b`, and `c` are all provided, they need not be normalized, only the relative values
    /// matter. If only two arrays are provided they must be normalized to match `ternary<i>.sum`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-c) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-c) |
    /// [R](https://plot.ly/r/reference/#scatterternary-c)
    public var c: [Double]?

    /// The number each triplet should sum to, if only two of `a`, `b`, and `c` are provided. 
    ///
    /// This overrides `ternary<i>.sum` to normalize this specific trace, but does not affect the values
    /// displayed on the axes. 0 (or missing) means to use ternary<i>.sum
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-sum) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-sum) |
    /// [R](https://plot.ly/r/reference/#scatterternary-sum)
    public var sum: Double?

    /// Determines the drawing mode for this scatter trace. 
    ///
    /// If the provided `mode` includes *text* then the `text` elements appear at the coordinates.
    /// Otherwise, the `text` elements appear on hover. If there are less than 20 points and the trace
    /// is not stacked then the default is *lines+markers*. Otherwise, *lines*.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-mode) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-mode) |
    /// [R](https://plot.ly/r/reference/#scatterternary-mode)
    public var mode: Mode0?

    /// Sets text elements associated with each (a,b,c) point. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of strings,
    /// the items are mapped in order to the the data points in (a,b,c). If trace `hoverinfo` contains a
    /// *text* flag and *hovertext* is not set, these elements will be seen in the hover labels.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-text) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-text) |
    /// [R](https://plot.ly/r/reference/#scatterternary-text)
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
    /// `arrayOk: true`) are available. variables `a`, `b`, `c` and `text`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-texttemplate) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-texttemplate) |
    /// [R](https://plot.ly/r/reference/#scatterternary-texttemplate)
    public var textTemplate: String?

    /// Sets hover text elements associated with each (a,b,c) point. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of strings,
    /// the items are mapped in order to the the data points in (a,b,c). To be seen, trace `hoverinfo`
    /// must contain a *text* flag.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-hovertext) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-hovertext) |
    /// [R](https://plot.ly/r/reference/#scatterternary-hovertext)
    public var hoverText: String?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-line) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-line) |
    /// [R](https://plot.ly/r/reference/#scatterternary-line)
    public var line: Line0?

    /// Determines whether or not gaps (i.e. 
    ///
    /// {nan} or missing values) in the provided data arrays are connected.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-connectgaps) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-connectgaps) |
    /// [R](https://plot.ly/r/reference/#scatterternary-connectgaps)
    public var connectGaps: Bool?

    /// Determines whether or not markers and text nodes are clipped about the subplot axes. 
    ///
    /// To show markers and text nodes above axis lines and tick labels, make sure to set `xaxis.layer`
    /// and `yaxis.layer` to *below traces*.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-cliponaxis) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-cliponaxis) |
    /// [R](https://plot.ly/r/reference/#scatterternary-cliponaxis)
    public var clipOnAxis: Bool?

    /// Sets the area to fill with a solid color. 
    ///
    /// Use with `fillcolor` if not *none*. scatterternary has a subset of the options available to
    /// scatter. *toself* connects the endpoints of the trace (or each segment of the trace if it has
    /// gaps) into a closed shape. *tonext* fills the space between two traces if one completely
    /// encloses the other (eg consecutive contour lines), and behaves like *toself* if there is no
    /// trace before it. *tonext* should not be used if one trace does not enclose the other.
    ///
    /// # Used By
    /// `ScatterTernary.fill` |
    public enum Fill: String, Encodable {
        case none
        case toSelf = "toself"
        case toNext = "tonext"
    }
    /// Sets the area to fill with a solid color. 
    ///
    /// Use with `fillcolor` if not *none*. scatterternary has a subset of the options available to
    /// scatter. *toself* connects the endpoints of the trace (or each segment of the trace if it has
    /// gaps) into a closed shape. *tonext* fills the space between two traces if one completely
    /// encloses the other (eg consecutive contour lines), and behaves like *toself* if there is no
    /// trace before it. *tonext* should not be used if one trace does not enclose the other.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-fill) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-fill) |
    /// [R](https://plot.ly/r/reference/#scatterternary-fill)
    public var fill: Fill?

    /// Sets the fill color. 
    ///
    /// Defaults to a half-transparent variant of the line color, marker color, or marker line color,
    /// whichever is available.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-fillcolor) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-fillcolor) |
    /// [R](https://plot.ly/r/reference/#scatterternary-fillcolor)
    public var fillColor: Color?

    ///
    /// # Used By
    /// `ScatterTernary.marker` |
    public struct Marker: Encodable {
        /// Sets the marker symbol type. 
        ///
        /// Adding 100 is equivalent to appending *-open* to a symbol name. Adding 200 is equivalent to
        /// appending *-dot* to a symbol name. Adding 300 is equivalent to appending *-open-dot* or
        /// *dot-open* to a symbol name.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-marker-symbol) |
        /// [Python](https://plot.ly/python/reference/#scatterternary-marker-symbol) |
        /// [R](https://plot.ly/r/reference/#scatterternary-marker-symbol)
        public var symbol: Symbol0?
    
        /// Sets the marker opacity.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-marker-opacity) |
        /// [Python](https://plot.ly/python/reference/#scatterternary-marker-opacity) |
        /// [R](https://plot.ly/r/reference/#scatterternary-marker-opacity)
        public var opacity: Double?
    
        /// Sets a maximum number of points to be drawn on the graph. 
        ///
        /// *0* corresponds to no limit.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-marker-maxdisplayed) |
        /// [Python](https://plot.ly/python/reference/#scatterternary-marker-maxdisplayed) |
        /// [R](https://plot.ly/r/reference/#scatterternary-marker-maxdisplayed)
        public var maxDisplayed: Double?
    
        /// Sets the marker size (in px).
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-marker-size) |
        /// [Python](https://plot.ly/python/reference/#scatterternary-marker-size) |
        /// [R](https://plot.ly/r/reference/#scatterternary-marker-size)
        public var size: Double?
    
        /// Has an effect only if `marker.size` is set to a numerical array. 
        ///
        /// Sets the scale factor used to determine the rendered size of marker points. Use with `sizemin`
        /// and `sizemode`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-marker-sizeref) |
        /// [Python](https://plot.ly/python/reference/#scatterternary-marker-sizeref) |
        /// [R](https://plot.ly/r/reference/#scatterternary-marker-sizeref)
        public var sizeReference: Double?
    
        /// Has an effect only if `marker.size` is set to a numerical array. 
        ///
        /// Sets the minimum size (in px) of the rendered marker points.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-marker-sizemin) |
        /// [Python](https://plot.ly/python/reference/#scatterternary-marker-sizemin) |
        /// [R](https://plot.ly/r/reference/#scatterternary-marker-sizemin)
        public var sizeMin: Double?
    
        /// Has an effect only if `marker.size` is set to a numerical array. 
        ///
        /// Sets the rule for which the data in `size` is converted to pixels.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-marker-sizemode) |
        /// [Python](https://plot.ly/python/reference/#scatterternary-marker-sizemode) |
        /// [R](https://plot.ly/r/reference/#scatterternary-marker-sizemode)
        public var sizeMode: SizeMode0?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-marker-line) |
        /// [Python](https://plot.ly/python/reference/#scatterternary-marker-line) |
        /// [R](https://plot.ly/r/reference/#scatterternary-marker-line)
        public var line: Line1?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-marker-gradient) |
        /// [Python](https://plot.ly/python/reference/#scatterternary-marker-gradient) |
        /// [R](https://plot.ly/r/reference/#scatterternary-marker-gradient)
        public var gradient: Gradient0?
    
        /// Sets themarkercolor. 
        ///
        /// It accepts either a specific color or an array of numbers that are mapped to the colorscale
        /// relative to the max and min values of the array or relative to `marker.cmin` and `marker.cmax`
        /// if set.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-marker-color) |
        /// [Python](https://plot.ly/python/reference/#scatterternary-marker-color) |
        /// [R](https://plot.ly/r/reference/#scatterternary-marker-color)
        public var color: Color?
    
        /// Determines whether or not the color domain is computed with respect to the input data (here in `marker.color`) or the bounds set in `marker.cmin` and `marker.cmax`  Has an effect only if in `marker.color`is set to a numerical array. 
        ///
        /// Defaults to `false` when `marker.cmin` and `marker.cmax` are set by the user.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-marker-cauto) |
        /// [Python](https://plot.ly/python/reference/#scatterternary-marker-cauto) |
        /// [R](https://plot.ly/r/reference/#scatterternary-marker-cauto)
        public var cAuto: Bool?
    
        /// Sets the lower bound of the color domain. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
        /// units as in `marker.color` and if set, `marker.cmax` must be set as well.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-marker-cmin) |
        /// [Python](https://plot.ly/python/reference/#scatterternary-marker-cmin) |
        /// [R](https://plot.ly/r/reference/#scatterternary-marker-cmin)
        public var cMin: Double?
    
        /// Sets the upper bound of the color domain. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
        /// units as in `marker.color` and if set, `marker.cmin` must be set as well.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-marker-cmax) |
        /// [Python](https://plot.ly/python/reference/#scatterternary-marker-cmax) |
        /// [R](https://plot.ly/r/reference/#scatterternary-marker-cmax)
        public var cMax: Double?
    
        /// Sets the mid-point of the color domain by scaling `marker.cmin` and/or `marker.cmax` to be equidistant to this point. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
        /// units as in `marker.color`. Has no effect when `marker.cauto` is `false`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-marker-cmid) |
        /// [Python](https://plot.ly/python/reference/#scatterternary-marker-cmid) |
        /// [R](https://plot.ly/r/reference/#scatterternary-marker-cmid)
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
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-marker-colorscale) |
        /// [Python](https://plot.ly/python/reference/#scatterternary-marker-colorscale) |
        /// [R](https://plot.ly/r/reference/#scatterternary-marker-colorscale)
        public var colorScale: ColorScale?
    
        /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `marker.colorscale`. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. In case `colorscale` is
        /// unspecified or `autocolorscale` is true, the default palette will be chosen according to whether
        /// numbers in the `color` array are all positive, all negative or mixed.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-marker-autocolorscale) |
        /// [Python](https://plot.ly/python/reference/#scatterternary-marker-autocolorscale) |
        /// [R](https://plot.ly/r/reference/#scatterternary-marker-autocolorscale)
        public var autoColorScale: Bool?
    
        /// Reverses the color mapping if true. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. If true, `marker.cmin` will
        /// correspond to the last color in the array and `marker.cmax` will correspond to the first color.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-marker-reversescale) |
        /// [Python](https://plot.ly/python/reference/#scatterternary-marker-reversescale) |
        /// [R](https://plot.ly/r/reference/#scatterternary-marker-reversescale)
        public var reverseScale: Bool?
    
        /// Determines whether or not a colorbar is displayed for this trace. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-marker-showscale) |
        /// [Python](https://plot.ly/python/reference/#scatterternary-marker-showscale) |
        /// [R](https://plot.ly/r/reference/#scatterternary-marker-showscale)
        public var showScale: Bool?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-marker-colorbar) |
        /// [Python](https://plot.ly/python/reference/#scatterternary-marker-colorbar) |
        /// [R](https://plot.ly/r/reference/#scatterternary-marker-colorbar)
        public var colorBar: ColorBar0?
    
        /// Sets a reference to a shared color axis. 
        ///
        /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
        /// for these shared color axes are set in the layout, under `layout.coloraxis`,
        /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-marker-coloraxis) |
        /// [Python](https://plot.ly/python/reference/#scatterternary-marker-coloraxis) |
        /// [R](https://plot.ly/r/reference/#scatterternary-marker-coloraxis)
        public var colorAxis: SubPlotID?
    
        /// Sets the source reference on plot.ly for  symbol .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-marker-symbolsrc) |
        /// [Python](https://plot.ly/python/reference/#scatterternary-marker-symbolsrc) |
        /// [R](https://plot.ly/r/reference/#scatterternary-marker-symbolsrc)
        public var symbolSource: String?
    
        /// Sets the source reference on plot.ly for  opacity .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-marker-opacitysrc) |
        /// [Python](https://plot.ly/python/reference/#scatterternary-marker-opacitysrc) |
        /// [R](https://plot.ly/r/reference/#scatterternary-marker-opacitysrc)
        public var opacitySource: String?
    
        /// Sets the source reference on plot.ly for  size .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-marker-sizesrc) |
        /// [Python](https://plot.ly/python/reference/#scatterternary-marker-sizesrc) |
        /// [R](https://plot.ly/r/reference/#scatterternary-marker-sizesrc)
        public var sizeSource: String?
    
        /// Sets the source reference on plot.ly for  color .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-marker-colorsrc) |
        /// [Python](https://plot.ly/python/reference/#scatterternary-marker-colorsrc) |
        /// [R](https://plot.ly/r/reference/#scatterternary-marker-colorsrc)
        public var colorSource: String?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case symbol
            case opacity
            case maxDisplayed = "maxdisplayed"
            case size
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
        
        public init(symbol: Symbol0? = nil, opacity: Double? = nil, maxDisplayed: Double? = nil, size: Double? = nil, sizeReference: Double? = nil, sizeMin: Double? = nil, sizeMode: SizeMode0? = nil, line: Line1? = nil, gradient: Gradient0? = nil, color: Color? = nil, cAuto: Bool? = nil, cMin: Double? = nil, cMax: Double? = nil, cMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: ColorBar0? = nil, colorAxis: SubPlotID? = nil, symbolSource: String? = nil, opacitySource: String? = nil, sizeSource: String? = nil, colorSource: String? = nil) {
            self.symbol = symbol
            self.opacity = opacity
            self.maxDisplayed = maxDisplayed
            self.size = size
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-marker) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-marker) |
    /// [R](https://plot.ly/r/reference/#scatterternary-marker)
    public var marker: Marker?

    /// Sets the text font.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-textfont) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-textfont) |
    /// [R](https://plot.ly/r/reference/#scatterternary-textfont)
    public var textFont: Font0?

    /// Sets the positions of the `text` elements with respects to the (x,y) coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-textposition) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-textposition) |
    /// [R](https://plot.ly/r/reference/#scatterternary-textposition)
    public var textPosition: TextPosition0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-selected) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-selected) |
    /// [R](https://plot.ly/r/reference/#scatterternary-selected)
    public var selected: Selected0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-unselected) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-unselected) |
    /// [R](https://plot.ly/r/reference/#scatterternary-unselected)
    public var unselected: Selected0?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    ///
    /// # Used By
    /// `ScatterTernary.hoverInfo` |
    public struct HoverInfo: OptionSet, Encodable {
        public let rawValue: Int
    
        public static let a = HoverInfo(rawValue: 1 << 0)
        public static let b = HoverInfo(rawValue: 1 << 1)
        public static let c = HoverInfo(rawValue: 1 << 2)
        public static let text = HoverInfo(rawValue: 1 << 3)
        public static let name = HoverInfo(rawValue: 1 << 4)
        public static let all = HoverInfo(rawValue: 1 << 5)
        public static let none = HoverInfo(rawValue: 1 << 6)
        public static let skip = HoverInfo(rawValue: 1 << 7)
    
        public init(rawValue: Int) { self.rawValue = rawValue }
    
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["a"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["b"] }
            if (self.rawValue & 1 << 2) != 0 { options += ["c"] }
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-hoverinfo) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-hoverinfo) |
    /// [R](https://plot.ly/r/reference/#scatterternary-hoverinfo)
    public var hoverInfo: HoverInfo?

    /// Do the hover effects highlight individual points (markers or line points) or do they highlight filled regions? If the fill is *toself* or *tonext* and there are no markers or text, then the default is *fills*, otherwise it is *points*.
    ///
    /// # Used By
    /// `ScatterTernary.hoverOn` |
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-hoveron) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-hoveron) |
    /// [R](https://plot.ly/r/reference/#scatterternary-hoveron)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-hovertemplate) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-hovertemplate) |
    /// [R](https://plot.ly/r/reference/#scatterternary-hovertemplate)
    public var hoverTemplate: String?

    /// Sets a reference between this trace's data coordinates and a ternary subplot. 
    ///
    /// If *ternary* (the default value), the data refer to `layout.ternary`. If *ternary2*, the data
    /// refer to `layout.ternary2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-subplot) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-subplot) |
    /// [R](https://plot.ly/r/reference/#scatterternary-subplot)
    public var subPlot: SubPlotID?

    /// Sets the source reference on plot.ly for  ids .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-idssrc) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-idssrc) |
    /// [R](https://plot.ly/r/reference/#scatterternary-idssrc)
    public var idsSource: String?

    /// Sets the source reference on plot.ly for  customdata .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-customdatasrc) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-customdatasrc) |
    /// [R](https://plot.ly/r/reference/#scatterternary-customdatasrc)
    public var customDataSource: String?

    /// Sets the source reference on plot.ly for  meta .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-metasrc) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-metasrc) |
    /// [R](https://plot.ly/r/reference/#scatterternary-metasrc)
    public var metaSource: String?

    /// Sets the source reference on plot.ly for  a .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-asrc) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-asrc) |
    /// [R](https://plot.ly/r/reference/#scatterternary-asrc)
    public var aSource: String?

    /// Sets the source reference on plot.ly for  b .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-bsrc) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-bsrc) |
    /// [R](https://plot.ly/r/reference/#scatterternary-bsrc)
    public var bSource: String?

    /// Sets the source reference on plot.ly for  c .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-csrc) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-csrc) |
    /// [R](https://plot.ly/r/reference/#scatterternary-csrc)
    public var cSource: String?

    /// Sets the source reference on plot.ly for  text .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-textsrc) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-textsrc) |
    /// [R](https://plot.ly/r/reference/#scatterternary-textsrc)
    public var textSource: String?

    /// Sets the source reference on plot.ly for  texttemplate .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-texttemplatesrc) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-texttemplatesrc) |
    /// [R](https://plot.ly/r/reference/#scatterternary-texttemplatesrc)
    public var textTemplateSource: String?

    /// Sets the source reference on plot.ly for  hovertext .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-hovertextsrc) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-hovertextsrc) |
    /// [R](https://plot.ly/r/reference/#scatterternary-hovertextsrc)
    public var hoverTextSource: String?

    /// Sets the source reference on plot.ly for  textposition .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-textpositionsrc) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-textpositionsrc) |
    /// [R](https://plot.ly/r/reference/#scatterternary-textpositionsrc)
    public var textPositionSource: String?

    /// Sets the source reference on plot.ly for  hoverinfo .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-hoverinfosrc) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-hoverinfosrc) |
    /// [R](https://plot.ly/r/reference/#scatterternary-hoverinfosrc)
    public var hoverInfoSource: String?

    /// Sets the source reference on plot.ly for  hovertemplate .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-hovertemplatesrc) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-hovertemplatesrc) |
    /// [R](https://plot.ly/r/reference/#scatterternary-hovertemplatesrc)
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
        case a
        case b
        case c
        case sum
        case mode
        case text
        case textTemplate = "texttemplate"
        case hoverText = "hovertext"
        case line
        case connectGaps = "connectgaps"
        case clipOnAxis = "cliponaxis"
        case fill
        case fillColor = "fillcolor"
        case marker
        case textFont = "textfont"
        case textPosition = "textposition"
        case selected
        case unselected
        case hoverInfo = "hoverinfo"
        case hoverOn = "hoveron"
        case hoverTemplate = "hovertemplate"
        case subPlot = "subplot"
        case idsSource = "idssrc"
        case customDataSource = "customdatasrc"
        case metaSource = "metasrc"
        case aSource = "asrc"
        case bSource = "bsrc"
        case cSource = "csrc"
        case textSource = "textsrc"
        case textTemplateSource = "texttemplatesrc"
        case hoverTextSource = "hovertextsrc"
        case textPositionSource = "textpositionsrc"
        case hoverInfoSource = "hoverinfosrc"
        case hoverTemplateSource = "hovertemplatesrc"
    }
    
    public init(visible: Visible0? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, selectedPoints: Anything? = nil, hoverLabel: HoverLabel0? = nil, stream: Stream0? = nil, transforms: Transforms0? = nil, uiRevision: Anything? = nil, a: [Double]? = nil, b: [Double]? = nil, c: [Double]? = nil, sum: Double? = nil, mode: Mode0? = nil, text: String? = nil, textTemplate: String? = nil, hoverText: String? = nil, line: Line0? = nil, connectGaps: Bool? = nil, clipOnAxis: Bool? = nil, fill: Fill? = nil, fillColor: Color? = nil, marker: Marker? = nil, textFont: Font0? = nil, textPosition: TextPosition0? = nil, selected: Selected0? = nil, unselected: Selected0? = nil, hoverInfo: HoverInfo? = nil, hoverOn: HoverOn? = nil, hoverTemplate: String? = nil, subPlot: SubPlotID? = nil, idsSource: String? = nil, customDataSource: String? = nil, metaSource: String? = nil, aSource: String? = nil, bSource: String? = nil, cSource: String? = nil, textSource: String? = nil, textTemplateSource: String? = nil, hoverTextSource: String? = nil, textPositionSource: String? = nil, hoverInfoSource: String? = nil, hoverTemplateSource: String? = nil) {
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
        self.a = a
        self.b = b
        self.c = c
        self.sum = sum
        self.mode = mode
        self.text = text
        self.textTemplate = textTemplate
        self.hoverText = hoverText
        self.line = line
        self.connectGaps = connectGaps
        self.clipOnAxis = clipOnAxis
        self.fill = fill
        self.fillColor = fillColor
        self.marker = marker
        self.textFont = textFont
        self.textPosition = textPosition
        self.selected = selected
        self.unselected = unselected
        self.hoverInfo = hoverInfo
        self.hoverOn = hoverOn
        self.hoverTemplate = hoverTemplate
        self.subPlot = subPlot
        self.idsSource = idsSource
        self.customDataSource = customDataSource
        self.metaSource = metaSource
        self.aSource = aSource
        self.bSource = bSource
        self.cSource = cSource
        self.textSource = textSource
        self.textTemplateSource = textTemplateSource
        self.hoverTextSource = hoverTextSource
        self.textPositionSource = textPositionSource
        self.hoverInfoSource = hoverInfoSource
        self.hoverTemplateSource = hoverTemplateSource
    }
}