/// The data visualized as scatter point or lines is set in `x` and `y` using the WebGL plotting engine. 
///
/// Bubble charts are achieved by setting `marker.size` and/or `marker.color` to a numerical arrays.
public struct ScatterGL: Trace {
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#type) |
    /// [Python](https://plot.ly/python/reference/#type) |
    /// [R](https://plot.ly/r/reference/#type)
    public let type: String = "scattergl"

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
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-visible) |
    /// [Python](https://plot.ly/python/reference/#scattergl-visible) |
    /// [R](https://plot.ly/r/reference/#scattergl-visible)
    public var visible: Visible0?

    /// Determines whether or not an item corresponding to this trace is shown in the legend.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-showlegend) |
    /// [Python](https://plot.ly/python/reference/#scattergl-showlegend) |
    /// [R](https://plot.ly/r/reference/#scattergl-showlegend)
    public var showLegend: Bool?

    /// Sets the legend group for this trace. 
    ///
    /// Traces part of the same legend group hide/show at the same time when toggling legend items.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-legendgroup) |
    /// [Python](https://plot.ly/python/reference/#scattergl-legendgroup) |
    /// [R](https://plot.ly/r/reference/#scattergl-legendgroup)
    public var legendGroup: String?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-name) |
    /// [Python](https://plot.ly/python/reference/#scattergl-name) |
    /// [R](https://plot.ly/r/reference/#scattergl-name)
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-uid) |
    /// [Python](https://plot.ly/python/reference/#scattergl-uid) |
    /// [R](https://plot.ly/r/reference/#scattergl-uid)
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-ids) |
    /// [Python](https://plot.ly/python/reference/#scattergl-ids) |
    /// [R](https://plot.ly/r/reference/#scattergl-ids)
    public var ids: [Double]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-customdata) |
    /// [Python](https://plot.ly/python/reference/#scattergl-customdata) |
    /// [R](https://plot.ly/r/reference/#scattergl-customdata)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-meta) |
    /// [Python](https://plot.ly/python/reference/#scattergl-meta) |
    /// [R](https://plot.ly/r/reference/#scattergl-meta)
    public var meta: Anything?

    /// Array containing integer indices of selected points. 
    ///
    /// Has an effect only for traces that support selections. Note that an empty array means an empty
    /// selection where the `unselected` are turned on for all points, whereas, any other non-array
    /// values means no selection all where the `selected` and `unselected` styles have no effect.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-selectedpoints) |
    /// [Python](https://plot.ly/python/reference/#scattergl-selectedpoints) |
    /// [R](https://plot.ly/r/reference/#scattergl-selectedpoints)
    public var selectedPoints: Anything?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-hoverinfo) |
    /// [Python](https://plot.ly/python/reference/#scattergl-hoverinfo) |
    /// [R](https://plot.ly/r/reference/#scattergl-hoverinfo)
    public var hoverInfo: HoverInfo0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#scattergl-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#scattergl-hoverlabel)
    public var hoverLabel: HoverLabel0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-stream) |
    /// [Python](https://plot.ly/python/reference/#scattergl-stream) |
    /// [R](https://plot.ly/r/reference/#scattergl-stream)
    public var stream: Stream0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-transforms) |
    /// [Python](https://plot.ly/python/reference/#scattergl-transforms) |
    /// [R](https://plot.ly/r/reference/#scattergl-transforms)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-uirevision) |
    /// [Python](https://plot.ly/python/reference/#scattergl-uirevision) |
    /// [R](https://plot.ly/r/reference/#scattergl-uirevision)
    public var uiRevision: Anything?

    /// Sets the x coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-x) |
    /// [Python](https://plot.ly/python/reference/#scattergl-x) |
    /// [R](https://plot.ly/r/reference/#scattergl-x)
    public var x: [Double]?

    /// Alternate to `x`. 
    ///
    /// Builds a linear space of x coordinates. Use with `dx` where `x0` is the starting coordinate and
    /// `dx` the step.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-x0) |
    /// [Python](https://plot.ly/python/reference/#scattergl-x0) |
    /// [R](https://plot.ly/r/reference/#scattergl-x0)
    public var x0: Anything?

    /// Sets the x coordinate step. 
    ///
    /// See `x0` for more info.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-dx) |
    /// [Python](https://plot.ly/python/reference/#scattergl-dx) |
    /// [R](https://plot.ly/r/reference/#scattergl-dx)
    public var dx: Double?

    /// Sets the y coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-y) |
    /// [Python](https://plot.ly/python/reference/#scattergl-y) |
    /// [R](https://plot.ly/r/reference/#scattergl-y)
    public var y: [Double]?

    /// Alternate to `y`. 
    ///
    /// Builds a linear space of y coordinates. Use with `dy` where `y0` is the starting coordinate and
    /// `dy` the step.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-y0) |
    /// [Python](https://plot.ly/python/reference/#scattergl-y0) |
    /// [R](https://plot.ly/r/reference/#scattergl-y0)
    public var y0: Anything?

    /// Sets the y coordinate step. 
    ///
    /// See `y0` for more info.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-dy) |
    /// [Python](https://plot.ly/python/reference/#scattergl-dy) |
    /// [R](https://plot.ly/r/reference/#scattergl-dy)
    public var dy: Double?

    /// Sets text elements associated with each (x,y) pair. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to the this trace's (x,y) coordinates. If trace `hoverinfo` contains a
    /// *text* flag and *hovertext* is not set, these elements will be seen in the hover labels.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-text) |
    /// [Python](https://plot.ly/python/reference/#scattergl-text) |
    /// [R](https://plot.ly/r/reference/#scattergl-text)
    public var text: String?

    /// Sets hover text elements associated with each (x,y) pair. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to the this trace's (x,y) coordinates. To be seen, trace `hoverinfo`
    /// must contain a *text* flag.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-hovertext) |
    /// [Python](https://plot.ly/python/reference/#scattergl-hovertext) |
    /// [R](https://plot.ly/r/reference/#scattergl-hovertext)
    public var hoverText: String?

    /// Sets the positions of the `text` elements with respects to the (x,y) coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-textposition) |
    /// [Python](https://plot.ly/python/reference/#scattergl-textposition) |
    /// [R](https://plot.ly/r/reference/#scattergl-textposition)
    public var textPosition: TextPosition0?

    /// Sets the text font.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-textfont) |
    /// [Python](https://plot.ly/python/reference/#scattergl-textfont) |
    /// [R](https://plot.ly/r/reference/#scattergl-textfont)
    public var textFont: Font0?

    /// Determines the drawing mode for this scatter trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-mode) |
    /// [Python](https://plot.ly/python/reference/#scattergl-mode) |
    /// [R](https://plot.ly/r/reference/#scattergl-mode)
    public var mode: Mode0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-line) |
    /// [Python](https://plot.ly/python/reference/#scattergl-line) |
    /// [R](https://plot.ly/r/reference/#scattergl-line)
    public var line: Line2?

    ///
    /// # Used By
    /// `ScatterGL.marker` |
    public struct Marker: Encodable {
        /// Sets themarkercolor. 
        ///
        /// It accepts either a specific color or an array of numbers that are mapped to the colorscale
        /// relative to the max and min values of the array or relative to `marker.cmin` and `marker.cmax`
        /// if set.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-marker-color) |
        /// [Python](https://plot.ly/python/reference/#scattergl-marker-color) |
        /// [R](https://plot.ly/r/reference/#scattergl-marker-color)
        public var color: Color?
    
        /// Determines whether or not the color domain is computed with respect to the input data (here in `marker.color`) or the bounds set in `marker.cmin` and `marker.cmax`  Has an effect only if in `marker.color`is set to a numerical array. 
        ///
        /// Defaults to `false` when `marker.cmin` and `marker.cmax` are set by the user.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-marker-cauto) |
        /// [Python](https://plot.ly/python/reference/#scattergl-marker-cauto) |
        /// [R](https://plot.ly/r/reference/#scattergl-marker-cauto)
        public var cAuto: Bool?
    
        /// Sets the lower bound of the color domain. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
        /// units as in `marker.color` and if set, `marker.cmax` must be set as well.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-marker-cmin) |
        /// [Python](https://plot.ly/python/reference/#scattergl-marker-cmin) |
        /// [R](https://plot.ly/r/reference/#scattergl-marker-cmin)
        public var cMin: Double?
    
        /// Sets the upper bound of the color domain. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
        /// units as in `marker.color` and if set, `marker.cmin` must be set as well.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-marker-cmax) |
        /// [Python](https://plot.ly/python/reference/#scattergl-marker-cmax) |
        /// [R](https://plot.ly/r/reference/#scattergl-marker-cmax)
        public var cMax: Double?
    
        /// Sets the mid-point of the color domain by scaling `marker.cmin` and/or `marker.cmax` to be equidistant to this point. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
        /// units as in `marker.color`. Has no effect when `marker.cauto` is `false`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-marker-cmid) |
        /// [Python](https://plot.ly/python/reference/#scattergl-marker-cmid) |
        /// [R](https://plot.ly/r/reference/#scattergl-marker-cmid)
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
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-marker-colorscale) |
        /// [Python](https://plot.ly/python/reference/#scattergl-marker-colorscale) |
        /// [R](https://plot.ly/r/reference/#scattergl-marker-colorscale)
        public var colorScale: ColorScale?
    
        /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `marker.colorscale`. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. In case `colorscale` is
        /// unspecified or `autocolorscale` is true, the default palette will be chosen according to whether
        /// numbers in the `color` array are all positive, all negative or mixed.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-marker-autocolorscale) |
        /// [Python](https://plot.ly/python/reference/#scattergl-marker-autocolorscale) |
        /// [R](https://plot.ly/r/reference/#scattergl-marker-autocolorscale)
        public var autoColorScale: Bool?
    
        /// Reverses the color mapping if true. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. If true, `marker.cmin` will
        /// correspond to the last color in the array and `marker.cmax` will correspond to the first color.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-marker-reversescale) |
        /// [Python](https://plot.ly/python/reference/#scattergl-marker-reversescale) |
        /// [R](https://plot.ly/r/reference/#scattergl-marker-reversescale)
        public var reverseScale: Bool?
    
        /// Determines whether or not a colorbar is displayed for this trace. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-marker-showscale) |
        /// [Python](https://plot.ly/python/reference/#scattergl-marker-showscale) |
        /// [R](https://plot.ly/r/reference/#scattergl-marker-showscale)
        public var showScale: Bool?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-marker-colorbar) |
        /// [Python](https://plot.ly/python/reference/#scattergl-marker-colorbar) |
        /// [R](https://plot.ly/r/reference/#scattergl-marker-colorbar)
        public var colorBar: ColorBar0?
    
        /// Sets a reference to a shared color axis. 
        ///
        /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
        /// for these shared color axes are set in the layout, under `layout.coloraxis`,
        /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-marker-coloraxis) |
        /// [Python](https://plot.ly/python/reference/#scattergl-marker-coloraxis) |
        /// [R](https://plot.ly/r/reference/#scattergl-marker-coloraxis)
        public var colorAxis: SubPlotID?
    
        /// Sets the marker symbol type. 
        ///
        /// Adding 100 is equivalent to appending *-open* to a symbol name. Adding 200 is equivalent to
        /// appending *-dot* to a symbol name. Adding 300 is equivalent to appending *-open-dot* or
        /// *dot-open* to a symbol name.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-marker-symbol) |
        /// [Python](https://plot.ly/python/reference/#scattergl-marker-symbol) |
        /// [R](https://plot.ly/r/reference/#scattergl-marker-symbol)
        public var symbol: Symbol0?
    
        /// Sets the marker size (in px).
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-marker-size) |
        /// [Python](https://plot.ly/python/reference/#scattergl-marker-size) |
        /// [R](https://plot.ly/r/reference/#scattergl-marker-size)
        public var size: Double?
    
        /// Has an effect only if `marker.size` is set to a numerical array. 
        ///
        /// Sets the scale factor used to determine the rendered size of marker points. Use with `sizemin`
        /// and `sizemode`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-marker-sizeref) |
        /// [Python](https://plot.ly/python/reference/#scattergl-marker-sizeref) |
        /// [R](https://plot.ly/r/reference/#scattergl-marker-sizeref)
        public var sizeReference: Double?
    
        /// Has an effect only if `marker.size` is set to a numerical array. 
        ///
        /// Sets the minimum size (in px) of the rendered marker points.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-marker-sizemin) |
        /// [Python](https://plot.ly/python/reference/#scattergl-marker-sizemin) |
        /// [R](https://plot.ly/r/reference/#scattergl-marker-sizemin)
        public var sizeMin: Double?
    
        /// Has an effect only if `marker.size` is set to a numerical array. 
        ///
        /// Sets the rule for which the data in `size` is converted to pixels.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-marker-sizemode) |
        /// [Python](https://plot.ly/python/reference/#scattergl-marker-sizemode) |
        /// [R](https://plot.ly/r/reference/#scattergl-marker-sizemode)
        public var sizeMode: SizeMode0?
    
        /// Sets the marker opacity.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-marker-opacity) |
        /// [Python](https://plot.ly/python/reference/#scattergl-marker-opacity) |
        /// [R](https://plot.ly/r/reference/#scattergl-marker-opacity)
        public var opacity: Double?
    
        ///
        /// # Used By
        /// `ScatterGL.Marker.line` |
        public struct Line: Encodable {
            /// Sets themarker.linecolor. 
            ///
            /// It accepts either a specific color or an array of numbers that are mapped to the colorscale
            /// relative to the max and min values of the array or relative to `marker.line.cmin` and
            /// `marker.line.cmax` if set.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-marker-line-color) |
            /// [Python](https://plot.ly/python/reference/#scattergl-marker-line-color) |
            /// [R](https://plot.ly/r/reference/#scattergl-marker-line-color)
            public var color: Color?
        
            /// Determines whether or not the color domain is computed with respect to the input data (here in `marker.line.color`) or the bounds set in `marker.line.cmin` and `marker.line.cmax`  Has an effect only if in `marker.line.color`is set to a numerical array. 
            ///
            /// Defaults to `false` when `marker.line.cmin` and `marker.line.cmax` are set by the user.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-marker-line-cauto) |
            /// [Python](https://plot.ly/python/reference/#scattergl-marker-line-cauto) |
            /// [R](https://plot.ly/r/reference/#scattergl-marker-line-cauto)
            public var cAuto: Bool?
        
            /// Sets the lower bound of the color domain. 
            ///
            /// Has an effect only if in `marker.line.color`is set to a numerical array. Value should have the
            /// same units as in `marker.line.color` and if set, `marker.line.cmax` must be set as well.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-marker-line-cmin) |
            /// [Python](https://plot.ly/python/reference/#scattergl-marker-line-cmin) |
            /// [R](https://plot.ly/r/reference/#scattergl-marker-line-cmin)
            public var cMin: Double?
        
            /// Sets the upper bound of the color domain. 
            ///
            /// Has an effect only if in `marker.line.color`is set to a numerical array. Value should have the
            /// same units as in `marker.line.color` and if set, `marker.line.cmin` must be set as well.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-marker-line-cmax) |
            /// [Python](https://plot.ly/python/reference/#scattergl-marker-line-cmax) |
            /// [R](https://plot.ly/r/reference/#scattergl-marker-line-cmax)
            public var cMax: Double?
        
            /// Sets the mid-point of the color domain by scaling `marker.line.cmin` and/or `marker.line.cmax` to be equidistant to this point. 
            ///
            /// Has an effect only if in `marker.line.color`is set to a numerical array. Value should have the
            /// same units as in `marker.line.color`. Has no effect when `marker.line.cauto` is `false`.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-marker-line-cmid) |
            /// [Python](https://plot.ly/python/reference/#scattergl-marker-line-cmid) |
            /// [R](https://plot.ly/r/reference/#scattergl-marker-line-cmid)
            public var cMiddle: Double?
        
            /// Sets the colorscale. 
            ///
            /// Has an effect only if in `marker.line.color`is set to a numerical array. The colorscale must be
            /// an array containing arrays mapping a normalized value to an rgb, rgba, hex, hsl, hsv, or named
            /// color string. At minimum, a mapping for the lowest (0) and highest (1) values are required. For
            /// example, `[[0, 'rgb(0,0,255)'], [1, 'rgb(255,0,0)']]`. To control the bounds of the colorscale
            /// in color space, use`marker.line.cmin` and `marker.line.cmax`. Alternatively, `colorscale` may be
            /// a palette name string of the following list:
            /// Greys,YlGnBu,Greens,YlOrRd,Bluered,RdBu,Reds,Blues,Picnic,Rainbow,Portland,Jet,Hot,Blackbody,Earth,Electric,Viridis,Cividis.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-marker-line-colorscale) |
            /// [Python](https://plot.ly/python/reference/#scattergl-marker-line-colorscale) |
            /// [R](https://plot.ly/r/reference/#scattergl-marker-line-colorscale)
            public var colorScale: ColorScale?
        
            /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `marker.line.colorscale`. 
            ///
            /// Has an effect only if in `marker.line.color`is set to a numerical array. In case `colorscale` is
            /// unspecified or `autocolorscale` is true, the default palette will be chosen according to whether
            /// numbers in the `color` array are all positive, all negative or mixed.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-marker-line-autocolorscale) |
            /// [Python](https://plot.ly/python/reference/#scattergl-marker-line-autocolorscale) |
            /// [R](https://plot.ly/r/reference/#scattergl-marker-line-autocolorscale)
            public var autoColorScale: Bool?
        
            /// Reverses the color mapping if true. 
            ///
            /// Has an effect only if in `marker.line.color`is set to a numerical array. If true,
            /// `marker.line.cmin` will correspond to the last color in the array and `marker.line.cmax` will
            /// correspond to the first color.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-marker-line-reversescale) |
            /// [Python](https://plot.ly/python/reference/#scattergl-marker-line-reversescale) |
            /// [R](https://plot.ly/r/reference/#scattergl-marker-line-reversescale)
            public var reverseScale: Bool?
        
            /// Sets a reference to a shared color axis. 
            ///
            /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
            /// for these shared color axes are set in the layout, under `layout.coloraxis`,
            /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-marker-line-coloraxis) |
            /// [Python](https://plot.ly/python/reference/#scattergl-marker-line-coloraxis) |
            /// [R](https://plot.ly/r/reference/#scattergl-marker-line-coloraxis)
            public var colorAxis: SubPlotID?
        
            /// Sets the width (in px) of the lines bounding the marker points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-marker-line-width) |
            /// [Python](https://plot.ly/python/reference/#scattergl-marker-line-width) |
            /// [R](https://plot.ly/r/reference/#scattergl-marker-line-width)
            public var width: Double?
        
            /// Sets the source reference on plot.ly for  color .
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-marker-line-colorsrc) |
            /// [Python](https://plot.ly/python/reference/#scattergl-marker-line-colorsrc) |
            /// [R](https://plot.ly/r/reference/#scattergl-marker-line-colorsrc)
            public var colorSource: String?
        
            /// Sets the source reference on plot.ly for  width .
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-marker-line-widthsrc) |
            /// [Python](https://plot.ly/python/reference/#scattergl-marker-line-widthsrc) |
            /// [R](https://plot.ly/r/reference/#scattergl-marker-line-widthsrc)
            public var widthSource: String?
        
            /// Plotly compatible property encoding
            enum CodingKeys: String, CodingKey {
                case color
                case cAuto = "cauto"
                case cMin = "cmin"
                case cMax = "cmax"
                case cMiddle = "cmid"
                case colorScale = "colorscale"
                case autoColorScale = "autocolorscale"
                case reverseScale = "reversescale"
                case colorAxis = "coloraxis"
                case width
                case colorSource = "colorsrc"
                case widthSource = "widthsrc"
            }
            
            public init(color: Color? = nil, cAuto: Bool? = nil, cMin: Double? = nil, cMax: Double? = nil, cMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, colorAxis: SubPlotID? = nil, width: Double? = nil, colorSource: String? = nil, widthSource: String? = nil) {
                self.color = color
                self.cAuto = cAuto
                self.cMin = cMin
                self.cMax = cMax
                self.cMiddle = cMiddle
                self.colorScale = colorScale
                self.autoColorScale = autoColorScale
                self.reverseScale = reverseScale
                self.colorAxis = colorAxis
                self.width = width
                self.colorSource = colorSource
                self.widthSource = widthSource
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-marker-line) |
        /// [Python](https://plot.ly/python/reference/#scattergl-marker-line) |
        /// [R](https://plot.ly/r/reference/#scattergl-marker-line)
        public var line: Line?
    
        /// Sets the source reference on plot.ly for  color .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-marker-colorsrc) |
        /// [Python](https://plot.ly/python/reference/#scattergl-marker-colorsrc) |
        /// [R](https://plot.ly/r/reference/#scattergl-marker-colorsrc)
        public var colorSource: String?
    
        /// Sets the source reference on plot.ly for  symbol .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-marker-symbolsrc) |
        /// [Python](https://plot.ly/python/reference/#scattergl-marker-symbolsrc) |
        /// [R](https://plot.ly/r/reference/#scattergl-marker-symbolsrc)
        public var symbolSource: String?
    
        /// Sets the source reference on plot.ly for  size .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-marker-sizesrc) |
        /// [Python](https://plot.ly/python/reference/#scattergl-marker-sizesrc) |
        /// [R](https://plot.ly/r/reference/#scattergl-marker-sizesrc)
        public var sizeSource: String?
    
        /// Sets the source reference on plot.ly for  opacity .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-marker-opacitysrc) |
        /// [Python](https://plot.ly/python/reference/#scattergl-marker-opacitysrc) |
        /// [R](https://plot.ly/r/reference/#scattergl-marker-opacitysrc)
        public var opacitySource: String?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
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
            case symbol
            case size
            case sizeReference = "sizeref"
            case sizeMin = "sizemin"
            case sizeMode = "sizemode"
            case opacity
            case line
            case colorSource = "colorsrc"
            case symbolSource = "symbolsrc"
            case sizeSource = "sizesrc"
            case opacitySource = "opacitysrc"
        }
        
        public init(color: Color? = nil, cAuto: Bool? = nil, cMin: Double? = nil, cMax: Double? = nil, cMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: ColorBar0? = nil, colorAxis: SubPlotID? = nil, symbol: Symbol0? = nil, size: Double? = nil, sizeReference: Double? = nil, sizeMin: Double? = nil, sizeMode: SizeMode0? = nil, opacity: Double? = nil, line: Line? = nil, colorSource: String? = nil, symbolSource: String? = nil, sizeSource: String? = nil, opacitySource: String? = nil) {
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
            self.symbol = symbol
            self.size = size
            self.sizeReference = sizeReference
            self.sizeMin = sizeMin
            self.sizeMode = sizeMode
            self.opacity = opacity
            self.line = line
            self.colorSource = colorSource
            self.symbolSource = symbolSource
            self.sizeSource = sizeSource
            self.opacitySource = opacitySource
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-marker) |
    /// [Python](https://plot.ly/python/reference/#scattergl-marker) |
    /// [R](https://plot.ly/r/reference/#scattergl-marker)
    public var marker: Marker?

    /// Determines whether or not gaps (i.e. 
    ///
    /// {nan} or missing values) in the provided data arrays are connected.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-connectgaps) |
    /// [Python](https://plot.ly/python/reference/#scattergl-connectgaps) |
    /// [R](https://plot.ly/r/reference/#scattergl-connectgaps)
    public var connectGaps: Bool?

    /// Sets the area to fill with a solid color. 
    ///
    /// Defaults to *none* unless this trace is stacked, then it gets *tonexty* (*tonextx*) if
    /// `orientation` is *v* (*h*) Use with `fillcolor` if not *none*. *tozerox* and *tozeroy* fill to
    /// x=0 and y=0 respectively. *tonextx* and *tonexty* fill between the endpoints of this trace and
    /// the endpoints of the trace before it, connecting those endpoints with straight lines (to make a
    /// stacked area graph); if there is no trace before it, they behave like *tozerox* and *tozeroy*.
    /// *toself* connects the endpoints of the trace (or each segment of the trace if it has gaps) into
    /// a closed shape. *tonext* fills the space between two traces if one completely encloses the other
    /// (eg consecutive contour lines), and behaves like *toself* if there is no trace before it.
    /// *tonext* should not be used if one trace does not enclose the other. Traces in a `stackgroup`
    /// will only fill to (or be filled to) other traces in the same group. With multiple `stackgroup`s
    /// or some traces stacked and some not, if fill-linked traces are not already consecutive, the
    /// later ones will be pushed down in the drawing order.
    ///
    /// # Used By
    /// `ScatterGL.fill` |
    public enum Fill: String, Encodable {
        case none
        case toZeroY = "tozeroy"
        case toZeroX = "tozerox"
        case toNextY = "tonexty"
        case toNextX = "tonextx"
        case toSelf = "toself"
        case toNext = "tonext"
    }
    /// Sets the area to fill with a solid color. 
    ///
    /// Defaults to *none* unless this trace is stacked, then it gets *tonexty* (*tonextx*) if
    /// `orientation` is *v* (*h*) Use with `fillcolor` if not *none*. *tozerox* and *tozeroy* fill to
    /// x=0 and y=0 respectively. *tonextx* and *tonexty* fill between the endpoints of this trace and
    /// the endpoints of the trace before it, connecting those endpoints with straight lines (to make a
    /// stacked area graph); if there is no trace before it, they behave like *tozerox* and *tozeroy*.
    /// *toself* connects the endpoints of the trace (or each segment of the trace if it has gaps) into
    /// a closed shape. *tonext* fills the space between two traces if one completely encloses the other
    /// (eg consecutive contour lines), and behaves like *toself* if there is no trace before it.
    /// *tonext* should not be used if one trace does not enclose the other. Traces in a `stackgroup`
    /// will only fill to (or be filled to) other traces in the same group. With multiple `stackgroup`s
    /// or some traces stacked and some not, if fill-linked traces are not already consecutive, the
    /// later ones will be pushed down in the drawing order.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-fill) |
    /// [Python](https://plot.ly/python/reference/#scattergl-fill) |
    /// [R](https://plot.ly/r/reference/#scattergl-fill)
    public var fill: Fill?

    /// Sets the fill color. 
    ///
    /// Defaults to a half-transparent variant of the line color, marker color, or marker line color,
    /// whichever is available.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-fillcolor) |
    /// [Python](https://plot.ly/python/reference/#scattergl-fillcolor) |
    /// [R](https://plot.ly/r/reference/#scattergl-fillcolor)
    public var fillColor: Color?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-selected) |
    /// [Python](https://plot.ly/python/reference/#scattergl-selected) |
    /// [R](https://plot.ly/r/reference/#scattergl-selected)
    public var selected: Selected0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-unselected) |
    /// [Python](https://plot.ly/python/reference/#scattergl-unselected) |
    /// [R](https://plot.ly/r/reference/#scattergl-unselected)
    public var unselected: Selected0?

    /// Sets the opacity of the trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-opacity) |
    /// [Python](https://plot.ly/python/reference/#scattergl-opacity) |
    /// [R](https://plot.ly/r/reference/#scattergl-opacity)
    public var opacity: Double?

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
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-hovertemplate) |
    /// [Python](https://plot.ly/python/reference/#scattergl-hovertemplate) |
    /// [R](https://plot.ly/r/reference/#scattergl-hovertemplate)
    public var hoverTemplate: String?

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
    /// `arrayOk: true`) are available. 
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-texttemplate) |
    /// [Python](https://plot.ly/python/reference/#scattergl-texttemplate) |
    /// [R](https://plot.ly/r/reference/#scattergl-texttemplate)
    public var textTemplate: String?

    ///
    /// # Used By
    /// `ScatterGL.xError` |
    public struct XError: Encodable {
        /// Determines whether or not this set of error bars is visible.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-error_x-visible) |
        /// [Python](https://plot.ly/python/reference/#scattergl-error_x-visible) |
        /// [R](https://plot.ly/r/reference/#scattergl-error_x-visible)
        public var visible: Bool?
    
        /// Determines the rule used to generate the error bars. 
        ///
        /// If *constant`, the bar lengths are of a constant value. Set this constant in `value`. If
        /// *percent*, the bar lengths correspond to a percentage of underlying data. Set this percentage in
        /// `value`. If *sqrt*, the bar lengths correspond to the sqaure of the underlying data. If *data*,
        /// the bar lengths are set with data set `array`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-error_x-type) |
        /// [Python](https://plot.ly/python/reference/#scattergl-error_x-type) |
        /// [R](https://plot.ly/r/reference/#scattergl-error_x-type)
        public var type: Rule1?
    
        /// Determines whether or not the error bars have the same length in both direction (top/bottom for vertical bars, left/right for horizontal bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-error_x-symmetric) |
        /// [Python](https://plot.ly/python/reference/#scattergl-error_x-symmetric) |
        /// [R](https://plot.ly/r/reference/#scattergl-error_x-symmetric)
        public var symmetric: Bool?
    
        /// Sets the data corresponding the length of each error bar. 
        ///
        /// Values are plotted relative to the underlying data.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-error_x-array) |
        /// [Python](https://plot.ly/python/reference/#scattergl-error_x-array) |
        /// [R](https://plot.ly/r/reference/#scattergl-error_x-array)
        public var array: [Double]?
    
        /// Sets the data corresponding the length of each error bar in the bottom (left) direction for vertical (horizontal) bars Values are plotted relative to the underlying data.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-error_x-arrayminus) |
        /// [Python](https://plot.ly/python/reference/#scattergl-error_x-arrayminus) |
        /// [R](https://plot.ly/r/reference/#scattergl-error_x-arrayminus)
        public var arrayMinus: [Double]?
    
        /// Sets the value of either the percentage (if `type` is set to *percent*) or the constant (if `type` is set to *constant*) corresponding to the lengths of the error bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-error_x-value) |
        /// [Python](https://plot.ly/python/reference/#scattergl-error_x-value) |
        /// [R](https://plot.ly/r/reference/#scattergl-error_x-value)
        public var value: Double?
    
        /// Sets the value of either the percentage (if `type` is set to *percent*) or the constant (if `type` is set to *constant*) corresponding to the lengths of the error bars in the bottom (left) direction for vertical (horizontal) bars
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-error_x-valueminus) |
        /// [Python](https://plot.ly/python/reference/#scattergl-error_x-valueminus) |
        /// [R](https://plot.ly/r/reference/#scattergl-error_x-valueminus)
        public var valueMinus: Double?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-error_x-traceref) |
        /// [Python](https://plot.ly/python/reference/#scattergl-error_x-traceref) |
        /// [R](https://plot.ly/r/reference/#scattergl-error_x-traceref)
        public var traceReference: Int?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-error_x-tracerefminus) |
        /// [Python](https://plot.ly/python/reference/#scattergl-error_x-tracerefminus) |
        /// [R](https://plot.ly/r/reference/#scattergl-error_x-tracerefminus)
        public var traceReferenceMinus: Int?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-error_x-copy_ystyle) |
        /// [Python](https://plot.ly/python/reference/#scattergl-error_x-copy_ystyle) |
        /// [R](https://plot.ly/r/reference/#scattergl-error_x-copy_ystyle)
        public var yCopyStyle: Bool?
    
        /// Sets the stoke color of the error bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-error_x-color) |
        /// [Python](https://plot.ly/python/reference/#scattergl-error_x-color) |
        /// [R](https://plot.ly/r/reference/#scattergl-error_x-color)
        public var color: Color?
    
        /// Sets the thickness (in px) of the error bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-error_x-thickness) |
        /// [Python](https://plot.ly/python/reference/#scattergl-error_x-thickness) |
        /// [R](https://plot.ly/r/reference/#scattergl-error_x-thickness)
        public var thickness: Double?
    
        /// Sets the width (in px) of the cross-bar at both ends of the error bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-error_x-width) |
        /// [Python](https://plot.ly/python/reference/#scattergl-error_x-width) |
        /// [R](https://plot.ly/r/reference/#scattergl-error_x-width)
        public var width: Double?
    
        /// Sets the source reference on plot.ly for  array .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-error_x-arraysrc) |
        /// [Python](https://plot.ly/python/reference/#scattergl-error_x-arraysrc) |
        /// [R](https://plot.ly/r/reference/#scattergl-error_x-arraysrc)
        public var arraySource: String?
    
        /// Sets the source reference on plot.ly for  arrayminus .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-error_x-arrayminussrc) |
        /// [Python](https://plot.ly/python/reference/#scattergl-error_x-arrayminussrc) |
        /// [R](https://plot.ly/r/reference/#scattergl-error_x-arrayminussrc)
        public var arrayMinusSource: String?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case visible
            case type
            case symmetric
            case array
            case arrayMinus = "arrayminus"
            case value
            case valueMinus = "valueminus"
            case traceReference = "traceref"
            case traceReferenceMinus = "tracerefminus"
            case yCopyStyle = "copy_ystyle"
            case color
            case thickness
            case width
            case arraySource = "arraysrc"
            case arrayMinusSource = "arrayminussrc"
        }
        
        public init(visible: Bool? = nil, type: Rule1? = nil, symmetric: Bool? = nil, array: [Double]? = nil, arrayMinus: [Double]? = nil, value: Double? = nil, valueMinus: Double? = nil, traceReference: Int? = nil, traceReferenceMinus: Int? = nil, yCopyStyle: Bool? = nil, color: Color? = nil, thickness: Double? = nil, width: Double? = nil, arraySource: String? = nil, arrayMinusSource: String? = nil) {
            self.visible = visible
            self.type = type
            self.symmetric = symmetric
            self.array = array
            self.arrayMinus = arrayMinus
            self.value = value
            self.valueMinus = valueMinus
            self.traceReference = traceReference
            self.traceReferenceMinus = traceReferenceMinus
            self.yCopyStyle = yCopyStyle
            self.color = color
            self.thickness = thickness
            self.width = width
            self.arraySource = arraySource
            self.arrayMinusSource = arrayMinusSource
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-error_x) |
    /// [Python](https://plot.ly/python/reference/#scattergl-error_x) |
    /// [R](https://plot.ly/r/reference/#scattergl-error_x)
    public var xError: XError?

    ///
    /// # Used By
    /// `ScatterGL.yError` |
    public struct YError: Encodable {
        /// Determines whether or not this set of error bars is visible.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-error_y-visible) |
        /// [Python](https://plot.ly/python/reference/#scattergl-error_y-visible) |
        /// [R](https://plot.ly/r/reference/#scattergl-error_y-visible)
        public var visible: Bool?
    
        /// Determines the rule used to generate the error bars. 
        ///
        /// If *constant`, the bar lengths are of a constant value. Set this constant in `value`. If
        /// *percent*, the bar lengths correspond to a percentage of underlying data. Set this percentage in
        /// `value`. If *sqrt*, the bar lengths correspond to the sqaure of the underlying data. If *data*,
        /// the bar lengths are set with data set `array`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-error_y-type) |
        /// [Python](https://plot.ly/python/reference/#scattergl-error_y-type) |
        /// [R](https://plot.ly/r/reference/#scattergl-error_y-type)
        public var type: Rule1?
    
        /// Determines whether or not the error bars have the same length in both direction (top/bottom for vertical bars, left/right for horizontal bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-error_y-symmetric) |
        /// [Python](https://plot.ly/python/reference/#scattergl-error_y-symmetric) |
        /// [R](https://plot.ly/r/reference/#scattergl-error_y-symmetric)
        public var symmetric: Bool?
    
        /// Sets the data corresponding the length of each error bar. 
        ///
        /// Values are plotted relative to the underlying data.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-error_y-array) |
        /// [Python](https://plot.ly/python/reference/#scattergl-error_y-array) |
        /// [R](https://plot.ly/r/reference/#scattergl-error_y-array)
        public var array: [Double]?
    
        /// Sets the data corresponding the length of each error bar in the bottom (left) direction for vertical (horizontal) bars Values are plotted relative to the underlying data.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-error_y-arrayminus) |
        /// [Python](https://plot.ly/python/reference/#scattergl-error_y-arrayminus) |
        /// [R](https://plot.ly/r/reference/#scattergl-error_y-arrayminus)
        public var arrayMinus: [Double]?
    
        /// Sets the value of either the percentage (if `type` is set to *percent*) or the constant (if `type` is set to *constant*) corresponding to the lengths of the error bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-error_y-value) |
        /// [Python](https://plot.ly/python/reference/#scattergl-error_y-value) |
        /// [R](https://plot.ly/r/reference/#scattergl-error_y-value)
        public var value: Double?
    
        /// Sets the value of either the percentage (if `type` is set to *percent*) or the constant (if `type` is set to *constant*) corresponding to the lengths of the error bars in the bottom (left) direction for vertical (horizontal) bars
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-error_y-valueminus) |
        /// [Python](https://plot.ly/python/reference/#scattergl-error_y-valueminus) |
        /// [R](https://plot.ly/r/reference/#scattergl-error_y-valueminus)
        public var valueMinus: Double?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-error_y-traceref) |
        /// [Python](https://plot.ly/python/reference/#scattergl-error_y-traceref) |
        /// [R](https://plot.ly/r/reference/#scattergl-error_y-traceref)
        public var traceReference: Int?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-error_y-tracerefminus) |
        /// [Python](https://plot.ly/python/reference/#scattergl-error_y-tracerefminus) |
        /// [R](https://plot.ly/r/reference/#scattergl-error_y-tracerefminus)
        public var traceReferenceMinus: Int?
    
        /// Sets the stoke color of the error bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-error_y-color) |
        /// [Python](https://plot.ly/python/reference/#scattergl-error_y-color) |
        /// [R](https://plot.ly/r/reference/#scattergl-error_y-color)
        public var color: Color?
    
        /// Sets the thickness (in px) of the error bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-error_y-thickness) |
        /// [Python](https://plot.ly/python/reference/#scattergl-error_y-thickness) |
        /// [R](https://plot.ly/r/reference/#scattergl-error_y-thickness)
        public var thickness: Double?
    
        /// Sets the width (in px) of the cross-bar at both ends of the error bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-error_y-width) |
        /// [Python](https://plot.ly/python/reference/#scattergl-error_y-width) |
        /// [R](https://plot.ly/r/reference/#scattergl-error_y-width)
        public var width: Double?
    
        /// Sets the source reference on plot.ly for  array .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-error_y-arraysrc) |
        /// [Python](https://plot.ly/python/reference/#scattergl-error_y-arraysrc) |
        /// [R](https://plot.ly/r/reference/#scattergl-error_y-arraysrc)
        public var arraySource: String?
    
        /// Sets the source reference on plot.ly for  arrayminus .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-error_y-arrayminussrc) |
        /// [Python](https://plot.ly/python/reference/#scattergl-error_y-arrayminussrc) |
        /// [R](https://plot.ly/r/reference/#scattergl-error_y-arrayminussrc)
        public var arrayMinusSource: String?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case visible
            case type
            case symmetric
            case array
            case arrayMinus = "arrayminus"
            case value
            case valueMinus = "valueminus"
            case traceReference = "traceref"
            case traceReferenceMinus = "tracerefminus"
            case color
            case thickness
            case width
            case arraySource = "arraysrc"
            case arrayMinusSource = "arrayminussrc"
        }
        
        public init(visible: Bool? = nil, type: Rule1? = nil, symmetric: Bool? = nil, array: [Double]? = nil, arrayMinus: [Double]? = nil, value: Double? = nil, valueMinus: Double? = nil, traceReference: Int? = nil, traceReferenceMinus: Int? = nil, color: Color? = nil, thickness: Double? = nil, width: Double? = nil, arraySource: String? = nil, arrayMinusSource: String? = nil) {
            self.visible = visible
            self.type = type
            self.symmetric = symmetric
            self.array = array
            self.arrayMinus = arrayMinus
            self.value = value
            self.valueMinus = valueMinus
            self.traceReference = traceReference
            self.traceReferenceMinus = traceReferenceMinus
            self.color = color
            self.thickness = thickness
            self.width = width
            self.arraySource = arraySource
            self.arrayMinusSource = arrayMinusSource
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-error_y) |
    /// [Python](https://plot.ly/python/reference/#scattergl-error_y) |
    /// [R](https://plot.ly/r/reference/#scattergl-error_y)
    public var yError: YError?

    /// Sets the calendar system to use with `x` date data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-xcalendar) |
    /// [Python](https://plot.ly/python/reference/#scattergl-xcalendar) |
    /// [R](https://plot.ly/r/reference/#scattergl-xcalendar)
    public var xCalendar: Calendar0?

    /// Sets the calendar system to use with `y` date data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-ycalendar) |
    /// [Python](https://plot.ly/python/reference/#scattergl-ycalendar) |
    /// [R](https://plot.ly/r/reference/#scattergl-ycalendar)
    public var yCalendar: Calendar0?

    /// Sets a reference between this trace's x coordinates and a 2D cartesian x axis. 
    ///
    /// If *x* (the default value), the x coordinates refer to `layout.xaxis`. If *x2*, the x
    /// coordinates refer to `layout.xaxis2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-xaxis) |
    /// [Python](https://plot.ly/python/reference/#scattergl-xaxis) |
    /// [R](https://plot.ly/r/reference/#scattergl-xaxis)
    public var xAxis: SubPlotID?

    /// Sets a reference between this trace's y coordinates and a 2D cartesian y axis. 
    ///
    /// If *y* (the default value), the y coordinates refer to `layout.yaxis`. If *y2*, the y
    /// coordinates refer to `layout.yaxis2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-yaxis) |
    /// [Python](https://plot.ly/python/reference/#scattergl-yaxis) |
    /// [R](https://plot.ly/r/reference/#scattergl-yaxis)
    public var yAxis: SubPlotID?

    /// Sets the source reference on plot.ly for  ids .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-idssrc) |
    /// [Python](https://plot.ly/python/reference/#scattergl-idssrc) |
    /// [R](https://plot.ly/r/reference/#scattergl-idssrc)
    public var idsSource: String?

    /// Sets the source reference on plot.ly for  customdata .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-customdatasrc) |
    /// [Python](https://plot.ly/python/reference/#scattergl-customdatasrc) |
    /// [R](https://plot.ly/r/reference/#scattergl-customdatasrc)
    public var customDataSource: String?

    /// Sets the source reference on plot.ly for  meta .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-metasrc) |
    /// [Python](https://plot.ly/python/reference/#scattergl-metasrc) |
    /// [R](https://plot.ly/r/reference/#scattergl-metasrc)
    public var metaSource: String?

    /// Sets the source reference on plot.ly for  hoverinfo .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-hoverinfosrc) |
    /// [Python](https://plot.ly/python/reference/#scattergl-hoverinfosrc) |
    /// [R](https://plot.ly/r/reference/#scattergl-hoverinfosrc)
    public var hoverInfoSource: String?

    /// Sets the source reference on plot.ly for  x .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-xsrc) |
    /// [Python](https://plot.ly/python/reference/#scattergl-xsrc) |
    /// [R](https://plot.ly/r/reference/#scattergl-xsrc)
    public var xSource: String?

    /// Sets the source reference on plot.ly for  y .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-ysrc) |
    /// [Python](https://plot.ly/python/reference/#scattergl-ysrc) |
    /// [R](https://plot.ly/r/reference/#scattergl-ysrc)
    public var ySource: String?

    /// Sets the source reference on plot.ly for  text .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-textsrc) |
    /// [Python](https://plot.ly/python/reference/#scattergl-textsrc) |
    /// [R](https://plot.ly/r/reference/#scattergl-textsrc)
    public var textSource: String?

    /// Sets the source reference on plot.ly for  hovertext .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-hovertextsrc) |
    /// [Python](https://plot.ly/python/reference/#scattergl-hovertextsrc) |
    /// [R](https://plot.ly/r/reference/#scattergl-hovertextsrc)
    public var hoverTextSource: String?

    /// Sets the source reference on plot.ly for  textposition .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-textpositionsrc) |
    /// [Python](https://plot.ly/python/reference/#scattergl-textpositionsrc) |
    /// [R](https://plot.ly/r/reference/#scattergl-textpositionsrc)
    public var textPositionSource: String?

    /// Sets the source reference on plot.ly for  hovertemplate .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-hovertemplatesrc) |
    /// [Python](https://plot.ly/python/reference/#scattergl-hovertemplatesrc) |
    /// [R](https://plot.ly/r/reference/#scattergl-hovertemplatesrc)
    public var hoverTemplateSource: String?

    /// Sets the source reference on plot.ly for  texttemplate .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattergl-texttemplatesrc) |
    /// [Python](https://plot.ly/python/reference/#scattergl-texttemplatesrc) |
    /// [R](https://plot.ly/r/reference/#scattergl-texttemplatesrc)
    public var textTemplateSource: String?

    /// Plotly compatible property encoding
    enum CodingKeys: String, CodingKey {
        case type
        case animatable
        case visible
        case showLegend = "showlegend"
        case legendGroup = "legendgroup"
        case name
        case uid
        case ids
        case customData = "customdata"
        case meta
        case selectedPoints = "selectedpoints"
        case hoverInfo = "hoverinfo"
        case hoverLabel = "hoverlabel"
        case stream
        case transforms
        case uiRevision = "uirevision"
        case x
        case x0
        case dx
        case y
        case y0
        case dy
        case text
        case hoverText = "hovertext"
        case textPosition = "textposition"
        case textFont = "textfont"
        case mode
        case line
        case marker
        case connectGaps = "connectgaps"
        case fill
        case fillColor = "fillcolor"
        case selected
        case unselected
        case opacity
        case hoverTemplate = "hovertemplate"
        case textTemplate = "texttemplate"
        case xError = "error_x"
        case yError = "error_y"
        case xCalendar = "xcalendar"
        case yCalendar = "ycalendar"
        case xAxis = "xaxis"
        case yAxis = "yaxis"
        case idsSource = "idssrc"
        case customDataSource = "customdatasrc"
        case metaSource = "metasrc"
        case hoverInfoSource = "hoverinfosrc"
        case xSource = "xsrc"
        case ySource = "ysrc"
        case textSource = "textsrc"
        case hoverTextSource = "hovertextsrc"
        case textPositionSource = "textpositionsrc"
        case hoverTemplateSource = "hovertemplatesrc"
        case textTemplateSource = "texttemplatesrc"
    }
    
    public init(visible: Visible0? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, selectedPoints: Anything? = nil, hoverInfo: HoverInfo0? = nil, hoverLabel: HoverLabel0? = nil, stream: Stream0? = nil, transforms: Transforms0? = nil, uiRevision: Anything? = nil, x: [Double]? = nil, x0: Anything? = nil, dx: Double? = nil, y: [Double]? = nil, y0: Anything? = nil, dy: Double? = nil, text: String? = nil, hoverText: String? = nil, textPosition: TextPosition0? = nil, textFont: Font0? = nil, mode: Mode0? = nil, line: Line2? = nil, marker: Marker? = nil, connectGaps: Bool? = nil, fill: Fill? = nil, fillColor: Color? = nil, selected: Selected0? = nil, unselected: Selected0? = nil, opacity: Double? = nil, hoverTemplate: String? = nil, textTemplate: String? = nil, xError: XError? = nil, yError: YError? = nil, xCalendar: Calendar0? = nil, yCalendar: Calendar0? = nil, xAxis: SubPlotID? = nil, yAxis: SubPlotID? = nil, idsSource: String? = nil, customDataSource: String? = nil, metaSource: String? = nil, hoverInfoSource: String? = nil, xSource: String? = nil, ySource: String? = nil, textSource: String? = nil, hoverTextSource: String? = nil, textPositionSource: String? = nil, hoverTemplateSource: String? = nil, textTemplateSource: String? = nil) {
        self.visible = visible
        self.showLegend = showLegend
        self.legendGroup = legendGroup
        self.name = name
        self.uid = uid
        self.ids = ids
        self.customData = customData
        self.meta = meta
        self.selectedPoints = selectedPoints
        self.hoverInfo = hoverInfo
        self.hoverLabel = hoverLabel
        self.stream = stream
        self.transforms = transforms
        self.uiRevision = uiRevision
        self.x = x
        self.x0 = x0
        self.dx = dx
        self.y = y
        self.y0 = y0
        self.dy = dy
        self.text = text
        self.hoverText = hoverText
        self.textPosition = textPosition
        self.textFont = textFont
        self.mode = mode
        self.line = line
        self.marker = marker
        self.connectGaps = connectGaps
        self.fill = fill
        self.fillColor = fillColor
        self.selected = selected
        self.unselected = unselected
        self.opacity = opacity
        self.hoverTemplate = hoverTemplate
        self.textTemplate = textTemplate
        self.xError = xError
        self.yError = yError
        self.xCalendar = xCalendar
        self.yCalendar = yCalendar
        self.xAxis = xAxis
        self.yAxis = yAxis
        self.idsSource = idsSource
        self.customDataSource = customDataSource
        self.metaSource = metaSource
        self.hoverInfoSource = hoverInfoSource
        self.xSource = xSource
        self.ySource = ySource
        self.textSource = textSource
        self.hoverTextSource = hoverTextSource
        self.textPositionSource = textPositionSource
        self.hoverTemplateSource = hoverTemplateSource
        self.textTemplateSource = textTemplateSource
    }
}