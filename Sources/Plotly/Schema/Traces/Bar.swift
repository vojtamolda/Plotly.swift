/// The data visualized by the span of the bars is set in `y` if `orientation` is set th *v* (the default) and the labels are set in `x`. 
///
/// By setting `orientation` to *h*, the roles are interchanged.
public struct Bar: Trace {
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#type) |
    /// [Python](https://plot.ly/python/reference/#type) |
    /// [R](https://plot.ly/r/reference/#type)
    public let type: String = "bar"

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#animatable) |
    /// [Python](https://plot.ly/python/reference/#animatable) |
    /// [R](https://plot.ly/r/reference/#animatable)
    public let animatable: Bool = true

    /// Determines whether or not this trace is visible. 
    ///
    /// If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the
    /// legend itself is visible).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-visible) |
    /// [Python](https://plot.ly/python/reference/#bar-visible) |
    /// [R](https://plot.ly/r/reference/#bar-visible)
    public var visible: Visible0?

    /// Determines whether or not an item corresponding to this trace is shown in the legend.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-showlegend) |
    /// [Python](https://plot.ly/python/reference/#bar-showlegend) |
    /// [R](https://plot.ly/r/reference/#bar-showlegend)
    public var showLegend: Bool?

    /// Sets the legend group for this trace. 
    ///
    /// Traces part of the same legend group hide/show at the same time when toggling legend items.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-legendgroup) |
    /// [Python](https://plot.ly/python/reference/#bar-legendgroup) |
    /// [R](https://plot.ly/r/reference/#bar-legendgroup)
    public var legendGroup: String?

    /// Sets the opacity of the trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-opacity) |
    /// [Python](https://plot.ly/python/reference/#bar-opacity) |
    /// [R](https://plot.ly/r/reference/#bar-opacity)
    public var opacity: Double?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-name) |
    /// [Python](https://plot.ly/python/reference/#bar-name) |
    /// [R](https://plot.ly/r/reference/#bar-name)
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-uid) |
    /// [Python](https://plot.ly/python/reference/#bar-uid) |
    /// [R](https://plot.ly/r/reference/#bar-uid)
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-ids) |
    /// [Python](https://plot.ly/python/reference/#bar-ids) |
    /// [R](https://plot.ly/r/reference/#bar-ids)
    public var ids: [Double]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-customdata) |
    /// [Python](https://plot.ly/python/reference/#bar-customdata) |
    /// [R](https://plot.ly/r/reference/#bar-customdata)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-meta) |
    /// [Python](https://plot.ly/python/reference/#bar-meta) |
    /// [R](https://plot.ly/r/reference/#bar-meta)
    public var meta: Anything?

    /// Array containing integer indices of selected points. 
    ///
    /// Has an effect only for traces that support selections. Note that an empty array means an empty
    /// selection where the `unselected` are turned on for all points, whereas, any other non-array
    /// values means no selection all where the `selected` and `unselected` styles have no effect.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-selectedpoints) |
    /// [Python](https://plot.ly/python/reference/#bar-selectedpoints) |
    /// [R](https://plot.ly/r/reference/#bar-selectedpoints)
    public var selectedPoints: Anything?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-hoverinfo) |
    /// [Python](https://plot.ly/python/reference/#bar-hoverinfo) |
    /// [R](https://plot.ly/r/reference/#bar-hoverinfo)
    public var hoverInfo: HoverInfo0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#bar-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#bar-hoverlabel)
    public var hoverLabel: HoverLabel0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-stream) |
    /// [Python](https://plot.ly/python/reference/#bar-stream) |
    /// [R](https://plot.ly/r/reference/#bar-stream)
    public var stream: Stream0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-transforms) |
    /// [Python](https://plot.ly/python/reference/#bar-transforms) |
    /// [R](https://plot.ly/r/reference/#bar-transforms)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-uirevision) |
    /// [Python](https://plot.ly/python/reference/#bar-uirevision) |
    /// [R](https://plot.ly/r/reference/#bar-uirevision)
    public var uiRevision: Anything?

    /// Sets the x coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-x) |
    /// [Python](https://plot.ly/python/reference/#bar-x) |
    /// [R](https://plot.ly/r/reference/#bar-x)
    public var x: [Double]?

    /// Alternate to `x`. 
    ///
    /// Builds a linear space of x coordinates. Use with `dx` where `x0` is the starting coordinate and
    /// `dx` the step.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-x0) |
    /// [Python](https://plot.ly/python/reference/#bar-x0) |
    /// [R](https://plot.ly/r/reference/#bar-x0)
    public var x0: Anything?

    /// Sets the x coordinate step. 
    ///
    /// See `x0` for more info.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-dx) |
    /// [Python](https://plot.ly/python/reference/#bar-dx) |
    /// [R](https://plot.ly/r/reference/#bar-dx)
    public var dx: Double?

    /// Sets the y coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-y) |
    /// [Python](https://plot.ly/python/reference/#bar-y) |
    /// [R](https://plot.ly/r/reference/#bar-y)
    public var y: [Double]?

    /// Alternate to `y`. 
    ///
    /// Builds a linear space of y coordinates. Use with `dy` where `y0` is the starting coordinate and
    /// `dy` the step.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-y0) |
    /// [Python](https://plot.ly/python/reference/#bar-y0) |
    /// [R](https://plot.ly/r/reference/#bar-y0)
    public var y0: Anything?

    /// Sets the y coordinate step. 
    ///
    /// See `y0` for more info.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-dy) |
    /// [Python](https://plot.ly/python/reference/#bar-dy) |
    /// [R](https://plot.ly/r/reference/#bar-dy)
    public var dy: Double?

    /// Sets text elements associated with each (x,y) pair. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to the this trace's (x,y) coordinates. If trace `hoverinfo` contains a
    /// *text* flag and *hovertext* is not set, these elements will be seen in the hover labels.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-text) |
    /// [Python](https://plot.ly/python/reference/#bar-text) |
    /// [R](https://plot.ly/r/reference/#bar-text)
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
    /// `arrayOk: true`) are available. 
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-texttemplate) |
    /// [Python](https://plot.ly/python/reference/#bar-texttemplate) |
    /// [R](https://plot.ly/r/reference/#bar-texttemplate)
    public var textTemplate: String?

    /// Sets hover text elements associated with each (x,y) pair. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to the this trace's (x,y) coordinates. To be seen, trace `hoverinfo`
    /// must contain a *text* flag.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-hovertext) |
    /// [Python](https://plot.ly/python/reference/#bar-hovertext) |
    /// [R](https://plot.ly/r/reference/#bar-hovertext)
    public var hoverText: String?

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
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-hovertemplate) |
    /// [Python](https://plot.ly/python/reference/#bar-hovertemplate) |
    /// [R](https://plot.ly/r/reference/#bar-hovertemplate)
    public var hoverTemplate: String?

    /// Specifies the location of the `text`. 
    ///
    /// *inside* positions `text` inside, next to the bar end (rotated and scaled if needed). *outside*
    /// positions `text` outside, next to the bar end (scaled if needed), unless there is another bar
    /// stacked on this one, then the text gets pushed inside. *auto* tries to position `text` inside
    /// the bar, but if the bar is too small and no bar is stacked on this one the text is moved
    /// outside.
    ///
    /// # Used By
    /// `Bar.textPosition` |
    public enum TextPosition: String, Encodable {
        case inside
        case outside
        case auto
        case none
    }
    /// Specifies the location of the `text`. 
    ///
    /// *inside* positions `text` inside, next to the bar end (rotated and scaled if needed). *outside*
    /// positions `text` outside, next to the bar end (scaled if needed), unless there is another bar
    /// stacked on this one, then the text gets pushed inside. *auto* tries to position `text` inside
    /// the bar, but if the bar is too small and no bar is stacked on this one the text is moved
    /// outside.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-textposition) |
    /// [Python](https://plot.ly/python/reference/#bar-textposition) |
    /// [R](https://plot.ly/r/reference/#bar-textposition)
    public var textPosition: TextPosition?

    /// Determines if texts are kept at center or start/end points in `textposition` *inside* mode.
    ///
    /// # Used By
    /// `Bar.insideTextAnchor` |
    public enum InsideTextAnchor: String, Encodable {
        case end
        case middle
        case start
    }
    /// Determines if texts are kept at center or start/end points in `textposition` *inside* mode.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-insidetextanchor) |
    /// [Python](https://plot.ly/python/reference/#bar-insidetextanchor) |
    /// [R](https://plot.ly/r/reference/#bar-insidetextanchor)
    public var insideTextAnchor: InsideTextAnchor?

    /// Sets the angle of the tick labels with respect to the bar. 
    ///
    /// For example, a `tickangle` of -90 draws the tick labels vertically. With *auto* the texts may
    /// automatically be rotated to fit with the maximum size in bars.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-textangle) |
    /// [Python](https://plot.ly/python/reference/#bar-textangle) |
    /// [R](https://plot.ly/r/reference/#bar-textangle)
    public var textAngle: Angle?

    /// Sets the font used for `text`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-textfont) |
    /// [Python](https://plot.ly/python/reference/#bar-textfont) |
    /// [R](https://plot.ly/r/reference/#bar-textfont)
    public var textFont: Font0?

    /// Sets the font used for `text` lying inside the bar.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-insidetextfont) |
    /// [Python](https://plot.ly/python/reference/#bar-insidetextfont) |
    /// [R](https://plot.ly/r/reference/#bar-insidetextfont)
    public var insideTextFont: Font0?

    /// Sets the font used for `text` lying outside the bar.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-outsidetextfont) |
    /// [Python](https://plot.ly/python/reference/#bar-outsidetextfont) |
    /// [R](https://plot.ly/r/reference/#bar-outsidetextfont)
    public var outSideTextFont: Font0?

    /// Constrain the size of text inside or outside a bar to be no larger than the bar itself.
    ///
    /// # Used By
    /// `Bar.constrainText` |
    public enum ConstrainText: String, Encodable {
        case inside
        case outside
        case both
        case none
    }
    /// Constrain the size of text inside or outside a bar to be no larger than the bar itself.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-constraintext) |
    /// [Python](https://plot.ly/python/reference/#bar-constraintext) |
    /// [R](https://plot.ly/r/reference/#bar-constraintext)
    public var constrainText: ConstrainText?

    /// Determines whether the text nodes are clipped about the subplot axes. 
    ///
    /// To show the text nodes above axis lines and tick labels, make sure to set `xaxis.layer` and
    /// `yaxis.layer` to *below traces*.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-cliponaxis) |
    /// [Python](https://plot.ly/python/reference/#bar-cliponaxis) |
    /// [R](https://plot.ly/r/reference/#bar-cliponaxis)
    public var clipOnAxis: Bool?

    /// Sets the orientation of the bars. 
    ///
    /// With *v* (*h*), the value of the each bar spans along the vertical (horizontal).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-orientation) |
    /// [Python](https://plot.ly/python/reference/#bar-orientation) |
    /// [R](https://plot.ly/r/reference/#bar-orientation)
    public var orientation: Orientation0?

    /// Sets where the bar base is drawn (in position axis units). 
    ///
    /// In *stack* or *relative* barmode, traces that set *base* will be excluded and drawn in *overlay*
    /// mode instead.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-base) |
    /// [Python](https://plot.ly/python/reference/#bar-base) |
    /// [R](https://plot.ly/r/reference/#bar-base)
    public var base: Anything?

    /// Shifts the position where the bar is drawn (in position axis units). 
    ///
    /// In *group* barmode, traces that set *offset* will be excluded and drawn in *overlay* mode
    /// instead.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-offset) |
    /// [Python](https://plot.ly/python/reference/#bar-offset) |
    /// [R](https://plot.ly/r/reference/#bar-offset)
    public var offset: Double?

    /// Sets the bar width (in position axis units).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-width) |
    /// [Python](https://plot.ly/python/reference/#bar-width) |
    /// [R](https://plot.ly/r/reference/#bar-width)
    public var width: Double?

    ///
    /// # Used By
    /// `Bar.marker` |
    public struct Marker: Encodable {
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-marker-line) |
        /// [Python](https://plot.ly/python/reference/#bar-marker-line) |
        /// [R](https://plot.ly/r/reference/#bar-marker-line)
        public var line: Line1?
    
        /// Sets themarkercolor. 
        ///
        /// It accepts either a specific color or an array of numbers that are mapped to the colorscale
        /// relative to the max and min values of the array or relative to `marker.cmin` and `marker.cmax`
        /// if set.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-marker-color) |
        /// [Python](https://plot.ly/python/reference/#bar-marker-color) |
        /// [R](https://plot.ly/r/reference/#bar-marker-color)
        public var color: Color?
    
        /// Determines whether or not the color domain is computed with respect to the input data (here in `marker.color`) or the bounds set in `marker.cmin` and `marker.cmax`  Has an effect only if in `marker.color`is set to a numerical array. 
        ///
        /// Defaults to `false` when `marker.cmin` and `marker.cmax` are set by the user.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-marker-cauto) |
        /// [Python](https://plot.ly/python/reference/#bar-marker-cauto) |
        /// [R](https://plot.ly/r/reference/#bar-marker-cauto)
        public var cAuto: Bool?
    
        /// Sets the lower bound of the color domain. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
        /// units as in `marker.color` and if set, `marker.cmax` must be set as well.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-marker-cmin) |
        /// [Python](https://plot.ly/python/reference/#bar-marker-cmin) |
        /// [R](https://plot.ly/r/reference/#bar-marker-cmin)
        public var cMin: Double?
    
        /// Sets the upper bound of the color domain. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
        /// units as in `marker.color` and if set, `marker.cmin` must be set as well.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-marker-cmax) |
        /// [Python](https://plot.ly/python/reference/#bar-marker-cmax) |
        /// [R](https://plot.ly/r/reference/#bar-marker-cmax)
        public var cMax: Double?
    
        /// Sets the mid-point of the color domain by scaling `marker.cmin` and/or `marker.cmax` to be equidistant to this point. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
        /// units as in `marker.color`. Has no effect when `marker.cauto` is `false`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-marker-cmid) |
        /// [Python](https://plot.ly/python/reference/#bar-marker-cmid) |
        /// [R](https://plot.ly/r/reference/#bar-marker-cmid)
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
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-marker-colorscale) |
        /// [Python](https://plot.ly/python/reference/#bar-marker-colorscale) |
        /// [R](https://plot.ly/r/reference/#bar-marker-colorscale)
        public var colorScale: ColorScale?
    
        /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `marker.colorscale`. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. In case `colorscale` is
        /// unspecified or `autocolorscale` is true, the default palette will be chosen according to whether
        /// numbers in the `color` array are all positive, all negative or mixed.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-marker-autocolorscale) |
        /// [Python](https://plot.ly/python/reference/#bar-marker-autocolorscale) |
        /// [R](https://plot.ly/r/reference/#bar-marker-autocolorscale)
        public var autoColorScale: Bool?
    
        /// Reverses the color mapping if true. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. If true, `marker.cmin` will
        /// correspond to the last color in the array and `marker.cmax` will correspond to the first color.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-marker-reversescale) |
        /// [Python](https://plot.ly/python/reference/#bar-marker-reversescale) |
        /// [R](https://plot.ly/r/reference/#bar-marker-reversescale)
        public var reverseScale: Bool?
    
        /// Determines whether or not a colorbar is displayed for this trace. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-marker-showscale) |
        /// [Python](https://plot.ly/python/reference/#bar-marker-showscale) |
        /// [R](https://plot.ly/r/reference/#bar-marker-showscale)
        public var showScale: Bool?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-marker-colorbar) |
        /// [Python](https://plot.ly/python/reference/#bar-marker-colorbar) |
        /// [R](https://plot.ly/r/reference/#bar-marker-colorbar)
        public var colorBar: ColorBar0?
    
        /// Sets a reference to a shared color axis. 
        ///
        /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
        /// for these shared color axes are set in the layout, under `layout.coloraxis`,
        /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-marker-coloraxis) |
        /// [Python](https://plot.ly/python/reference/#bar-marker-coloraxis) |
        /// [R](https://plot.ly/r/reference/#bar-marker-coloraxis)
        public var colorAxis: SubPlotID?
    
        /// Sets the opacity of the bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-marker-opacity) |
        /// [Python](https://plot.ly/python/reference/#bar-marker-opacity) |
        /// [R](https://plot.ly/r/reference/#bar-marker-opacity)
        public var opacity: Double?
    
        /// Sets the source reference on plot.ly for  color .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-marker-colorsrc) |
        /// [Python](https://plot.ly/python/reference/#bar-marker-colorsrc) |
        /// [R](https://plot.ly/r/reference/#bar-marker-colorsrc)
        public var colorSource: String?
    
        /// Sets the source reference on plot.ly for  opacity .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-marker-opacitysrc) |
        /// [Python](https://plot.ly/python/reference/#bar-marker-opacitysrc) |
        /// [R](https://plot.ly/r/reference/#bar-marker-opacitysrc)
        public var opacitySource: String?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case line
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
            case opacity
            case colorSource = "colorsrc"
            case opacitySource = "opacitysrc"
        }
        
        public init(line: Line1? = nil, color: Color? = nil, cAuto: Bool? = nil, cMin: Double? = nil, cMax: Double? = nil, cMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: ColorBar0? = nil, colorAxis: SubPlotID? = nil, opacity: Double? = nil, colorSource: String? = nil, opacitySource: String? = nil) {
            self.line = line
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
            self.opacity = opacity
            self.colorSource = colorSource
            self.opacitySource = opacitySource
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-marker) |
    /// [Python](https://plot.ly/python/reference/#bar-marker) |
    /// [R](https://plot.ly/r/reference/#bar-marker)
    public var marker: Marker?

    /// Set several traces linked to the same position axis or matching axes to the same offsetgroup where bars of the same position coordinate will line up.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-offsetgroup) |
    /// [Python](https://plot.ly/python/reference/#bar-offsetgroup) |
    /// [R](https://plot.ly/r/reference/#bar-offsetgroup)
    public var offsetGroup: String?

    /// Set several traces linked to the same position axis or matching axes to the same alignmentgroup. 
    ///
    /// This controls whether bars compute their positional range dependently or independently.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-alignmentgroup) |
    /// [Python](https://plot.ly/python/reference/#bar-alignmentgroup) |
    /// [R](https://plot.ly/r/reference/#bar-alignmentgroup)
    public var alignmentGroup: String?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-selected) |
    /// [Python](https://plot.ly/python/reference/#bar-selected) |
    /// [R](https://plot.ly/r/reference/#bar-selected)
    public var selected: Selected0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-unselected) |
    /// [Python](https://plot.ly/python/reference/#bar-unselected) |
    /// [R](https://plot.ly/r/reference/#bar-unselected)
    public var unselected: Selected0?

    /// r coordinates in scatter traces are deprecated!Please switch to the *scatterpolar* trace type.Sets the radial coordinatesfor legacy polar chart only.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-r) |
    /// [Python](https://plot.ly/python/reference/#bar-r) |
    /// [R](https://plot.ly/r/reference/#bar-r)
    public var r: [Double]?

    /// t coordinates in scatter traces are deprecated!Please switch to the *scatterpolar* trace type.Sets the angular coordinatesfor legacy polar chart only.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-t) |
    /// [Python](https://plot.ly/python/reference/#bar-t) |
    /// [R](https://plot.ly/r/reference/#bar-t)
    public var t: [Double]?

    ///
    /// # Used By
    /// `Bar.xError` |
    public struct XError: Encodable {
        /// Determines whether or not this set of error bars is visible.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-error_x-visible) |
        /// [Python](https://plot.ly/python/reference/#bar-error_x-visible) |
        /// [R](https://plot.ly/r/reference/#bar-error_x-visible)
        public var visible: Bool?
    
        /// Determines the rule used to generate the error bars. 
        ///
        /// If *constant`, the bar lengths are of a constant value. Set this constant in `value`. If
        /// *percent*, the bar lengths correspond to a percentage of underlying data. Set this percentage in
        /// `value`. If *sqrt*, the bar lengths correspond to the sqaure of the underlying data. If *data*,
        /// the bar lengths are set with data set `array`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-error_x-type) |
        /// [Python](https://plot.ly/python/reference/#bar-error_x-type) |
        /// [R](https://plot.ly/r/reference/#bar-error_x-type)
        public var type: Rule1?
    
        /// Determines whether or not the error bars have the same length in both direction (top/bottom for vertical bars, left/right for horizontal bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-error_x-symmetric) |
        /// [Python](https://plot.ly/python/reference/#bar-error_x-symmetric) |
        /// [R](https://plot.ly/r/reference/#bar-error_x-symmetric)
        public var symmetric: Bool?
    
        /// Sets the data corresponding the length of each error bar. 
        ///
        /// Values are plotted relative to the underlying data.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-error_x-array) |
        /// [Python](https://plot.ly/python/reference/#bar-error_x-array) |
        /// [R](https://plot.ly/r/reference/#bar-error_x-array)
        public var array: [Double]?
    
        /// Sets the data corresponding the length of each error bar in the bottom (left) direction for vertical (horizontal) bars Values are plotted relative to the underlying data.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-error_x-arrayminus) |
        /// [Python](https://plot.ly/python/reference/#bar-error_x-arrayminus) |
        /// [R](https://plot.ly/r/reference/#bar-error_x-arrayminus)
        public var arrayMinus: [Double]?
    
        /// Sets the value of either the percentage (if `type` is set to *percent*) or the constant (if `type` is set to *constant*) corresponding to the lengths of the error bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-error_x-value) |
        /// [Python](https://plot.ly/python/reference/#bar-error_x-value) |
        /// [R](https://plot.ly/r/reference/#bar-error_x-value)
        public var value: Double?
    
        /// Sets the value of either the percentage (if `type` is set to *percent*) or the constant (if `type` is set to *constant*) corresponding to the lengths of the error bars in the bottom (left) direction for vertical (horizontal) bars
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-error_x-valueminus) |
        /// [Python](https://plot.ly/python/reference/#bar-error_x-valueminus) |
        /// [R](https://plot.ly/r/reference/#bar-error_x-valueminus)
        public var valueMinus: Double?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-error_x-traceref) |
        /// [Python](https://plot.ly/python/reference/#bar-error_x-traceref) |
        /// [R](https://plot.ly/r/reference/#bar-error_x-traceref)
        public var traceReference: Int?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-error_x-tracerefminus) |
        /// [Python](https://plot.ly/python/reference/#bar-error_x-tracerefminus) |
        /// [R](https://plot.ly/r/reference/#bar-error_x-tracerefminus)
        public var traceReferenceMinus: Int?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-error_x-copy_ystyle) |
        /// [Python](https://plot.ly/python/reference/#bar-error_x-copy_ystyle) |
        /// [R](https://plot.ly/r/reference/#bar-error_x-copy_ystyle)
        public var yCopyStyle: Bool?
    
        /// Sets the stoke color of the error bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-error_x-color) |
        /// [Python](https://plot.ly/python/reference/#bar-error_x-color) |
        /// [R](https://plot.ly/r/reference/#bar-error_x-color)
        public var color: Color?
    
        /// Sets the thickness (in px) of the error bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-error_x-thickness) |
        /// [Python](https://plot.ly/python/reference/#bar-error_x-thickness) |
        /// [R](https://plot.ly/r/reference/#bar-error_x-thickness)
        public var thickness: Double?
    
        /// Sets the width (in px) of the cross-bar at both ends of the error bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-error_x-width) |
        /// [Python](https://plot.ly/python/reference/#bar-error_x-width) |
        /// [R](https://plot.ly/r/reference/#bar-error_x-width)
        public var width: Double?
    
        /// Sets the source reference on plot.ly for  array .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-error_x-arraysrc) |
        /// [Python](https://plot.ly/python/reference/#bar-error_x-arraysrc) |
        /// [R](https://plot.ly/r/reference/#bar-error_x-arraysrc)
        public var arraySource: String?
    
        /// Sets the source reference on plot.ly for  arrayminus .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-error_x-arrayminussrc) |
        /// [Python](https://plot.ly/python/reference/#bar-error_x-arrayminussrc) |
        /// [R](https://plot.ly/r/reference/#bar-error_x-arrayminussrc)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-error_x) |
    /// [Python](https://plot.ly/python/reference/#bar-error_x) |
    /// [R](https://plot.ly/r/reference/#bar-error_x)
    public var xError: XError?

    ///
    /// # Used By
    /// `Bar.yError` |
    public struct YError: Encodable {
        /// Determines whether or not this set of error bars is visible.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-error_y-visible) |
        /// [Python](https://plot.ly/python/reference/#bar-error_y-visible) |
        /// [R](https://plot.ly/r/reference/#bar-error_y-visible)
        public var visible: Bool?
    
        /// Determines the rule used to generate the error bars. 
        ///
        /// If *constant`, the bar lengths are of a constant value. Set this constant in `value`. If
        /// *percent*, the bar lengths correspond to a percentage of underlying data. Set this percentage in
        /// `value`. If *sqrt*, the bar lengths correspond to the sqaure of the underlying data. If *data*,
        /// the bar lengths are set with data set `array`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-error_y-type) |
        /// [Python](https://plot.ly/python/reference/#bar-error_y-type) |
        /// [R](https://plot.ly/r/reference/#bar-error_y-type)
        public var type: Rule1?
    
        /// Determines whether or not the error bars have the same length in both direction (top/bottom for vertical bars, left/right for horizontal bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-error_y-symmetric) |
        /// [Python](https://plot.ly/python/reference/#bar-error_y-symmetric) |
        /// [R](https://plot.ly/r/reference/#bar-error_y-symmetric)
        public var symmetric: Bool?
    
        /// Sets the data corresponding the length of each error bar. 
        ///
        /// Values are plotted relative to the underlying data.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-error_y-array) |
        /// [Python](https://plot.ly/python/reference/#bar-error_y-array) |
        /// [R](https://plot.ly/r/reference/#bar-error_y-array)
        public var array: [Double]?
    
        /// Sets the data corresponding the length of each error bar in the bottom (left) direction for vertical (horizontal) bars Values are plotted relative to the underlying data.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-error_y-arrayminus) |
        /// [Python](https://plot.ly/python/reference/#bar-error_y-arrayminus) |
        /// [R](https://plot.ly/r/reference/#bar-error_y-arrayminus)
        public var arrayMinus: [Double]?
    
        /// Sets the value of either the percentage (if `type` is set to *percent*) or the constant (if `type` is set to *constant*) corresponding to the lengths of the error bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-error_y-value) |
        /// [Python](https://plot.ly/python/reference/#bar-error_y-value) |
        /// [R](https://plot.ly/r/reference/#bar-error_y-value)
        public var value: Double?
    
        /// Sets the value of either the percentage (if `type` is set to *percent*) or the constant (if `type` is set to *constant*) corresponding to the lengths of the error bars in the bottom (left) direction for vertical (horizontal) bars
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-error_y-valueminus) |
        /// [Python](https://plot.ly/python/reference/#bar-error_y-valueminus) |
        /// [R](https://plot.ly/r/reference/#bar-error_y-valueminus)
        public var valueMinus: Double?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-error_y-traceref) |
        /// [Python](https://plot.ly/python/reference/#bar-error_y-traceref) |
        /// [R](https://plot.ly/r/reference/#bar-error_y-traceref)
        public var traceReference: Int?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-error_y-tracerefminus) |
        /// [Python](https://plot.ly/python/reference/#bar-error_y-tracerefminus) |
        /// [R](https://plot.ly/r/reference/#bar-error_y-tracerefminus)
        public var traceReferenceMinus: Int?
    
        /// Sets the stoke color of the error bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-error_y-color) |
        /// [Python](https://plot.ly/python/reference/#bar-error_y-color) |
        /// [R](https://plot.ly/r/reference/#bar-error_y-color)
        public var color: Color?
    
        /// Sets the thickness (in px) of the error bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-error_y-thickness) |
        /// [Python](https://plot.ly/python/reference/#bar-error_y-thickness) |
        /// [R](https://plot.ly/r/reference/#bar-error_y-thickness)
        public var thickness: Double?
    
        /// Sets the width (in px) of the cross-bar at both ends of the error bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-error_y-width) |
        /// [Python](https://plot.ly/python/reference/#bar-error_y-width) |
        /// [R](https://plot.ly/r/reference/#bar-error_y-width)
        public var width: Double?
    
        /// Sets the source reference on plot.ly for  array .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-error_y-arraysrc) |
        /// [Python](https://plot.ly/python/reference/#bar-error_y-arraysrc) |
        /// [R](https://plot.ly/r/reference/#bar-error_y-arraysrc)
        public var arraySource: String?
    
        /// Sets the source reference on plot.ly for  arrayminus .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#bar-error_y-arrayminussrc) |
        /// [Python](https://plot.ly/python/reference/#bar-error_y-arrayminussrc) |
        /// [R](https://plot.ly/r/reference/#bar-error_y-arrayminussrc)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-error_y) |
    /// [Python](https://plot.ly/python/reference/#bar-error_y) |
    /// [R](https://plot.ly/r/reference/#bar-error_y)
    public var yError: YError?

    /// Sets the calendar system to use with `x` date data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-xcalendar) |
    /// [Python](https://plot.ly/python/reference/#bar-xcalendar) |
    /// [R](https://plot.ly/r/reference/#bar-xcalendar)
    public var xCalendar: Calendar0?

    /// Sets the calendar system to use with `y` date data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-ycalendar) |
    /// [Python](https://plot.ly/python/reference/#bar-ycalendar) |
    /// [R](https://plot.ly/r/reference/#bar-ycalendar)
    public var yCalendar: Calendar0?

    /// Sets a reference between this trace's x coordinates and a 2D cartesian x axis. 
    ///
    /// If *x* (the default value), the x coordinates refer to `layout.xaxis`. If *x2*, the x
    /// coordinates refer to `layout.xaxis2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-xaxis) |
    /// [Python](https://plot.ly/python/reference/#bar-xaxis) |
    /// [R](https://plot.ly/r/reference/#bar-xaxis)
    public var xAxis: SubPlotID?

    /// Sets a reference between this trace's y coordinates and a 2D cartesian y axis. 
    ///
    /// If *y* (the default value), the y coordinates refer to `layout.yaxis`. If *y2*, the y
    /// coordinates refer to `layout.yaxis2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-yaxis) |
    /// [Python](https://plot.ly/python/reference/#bar-yaxis) |
    /// [R](https://plot.ly/r/reference/#bar-yaxis)
    public var yAxis: SubPlotID?

    /// Sets the source reference on plot.ly for  ids .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-idssrc) |
    /// [Python](https://plot.ly/python/reference/#bar-idssrc) |
    /// [R](https://plot.ly/r/reference/#bar-idssrc)
    public var idsSource: String?

    /// Sets the source reference on plot.ly for  customdata .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-customdatasrc) |
    /// [Python](https://plot.ly/python/reference/#bar-customdatasrc) |
    /// [R](https://plot.ly/r/reference/#bar-customdatasrc)
    public var customDataSource: String?

    /// Sets the source reference on plot.ly for  meta .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-metasrc) |
    /// [Python](https://plot.ly/python/reference/#bar-metasrc) |
    /// [R](https://plot.ly/r/reference/#bar-metasrc)
    public var metaSource: String?

    /// Sets the source reference on plot.ly for  hoverinfo .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-hoverinfosrc) |
    /// [Python](https://plot.ly/python/reference/#bar-hoverinfosrc) |
    /// [R](https://plot.ly/r/reference/#bar-hoverinfosrc)
    public var hoverInfoSource: String?

    /// Sets the source reference on plot.ly for  x .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-xsrc) |
    /// [Python](https://plot.ly/python/reference/#bar-xsrc) |
    /// [R](https://plot.ly/r/reference/#bar-xsrc)
    public var xSource: String?

    /// Sets the source reference on plot.ly for  y .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-ysrc) |
    /// [Python](https://plot.ly/python/reference/#bar-ysrc) |
    /// [R](https://plot.ly/r/reference/#bar-ysrc)
    public var ySource: String?

    /// Sets the source reference on plot.ly for  text .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-textsrc) |
    /// [Python](https://plot.ly/python/reference/#bar-textsrc) |
    /// [R](https://plot.ly/r/reference/#bar-textsrc)
    public var textSource: String?

    /// Sets the source reference on plot.ly for  texttemplate .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-texttemplatesrc) |
    /// [Python](https://plot.ly/python/reference/#bar-texttemplatesrc) |
    /// [R](https://plot.ly/r/reference/#bar-texttemplatesrc)
    public var textTemplateSource: String?

    /// Sets the source reference on plot.ly for  hovertext .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-hovertextsrc) |
    /// [Python](https://plot.ly/python/reference/#bar-hovertextsrc) |
    /// [R](https://plot.ly/r/reference/#bar-hovertextsrc)
    public var hoverTextSource: String?

    /// Sets the source reference on plot.ly for  hovertemplate .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-hovertemplatesrc) |
    /// [Python](https://plot.ly/python/reference/#bar-hovertemplatesrc) |
    /// [R](https://plot.ly/r/reference/#bar-hovertemplatesrc)
    public var hoverTemplateSource: String?

    /// Sets the source reference on plot.ly for  textposition .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-textpositionsrc) |
    /// [Python](https://plot.ly/python/reference/#bar-textpositionsrc) |
    /// [R](https://plot.ly/r/reference/#bar-textpositionsrc)
    public var textPositionSource: String?

    /// Sets the source reference on plot.ly for  base .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-basesrc) |
    /// [Python](https://plot.ly/python/reference/#bar-basesrc) |
    /// [R](https://plot.ly/r/reference/#bar-basesrc)
    public var baseSource: String?

    /// Sets the source reference on plot.ly for  offset .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-offsetsrc) |
    /// [Python](https://plot.ly/python/reference/#bar-offsetsrc) |
    /// [R](https://plot.ly/r/reference/#bar-offsetsrc)
    public var offsetSource: String?

    /// Sets the source reference on plot.ly for  width .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-widthsrc) |
    /// [Python](https://plot.ly/python/reference/#bar-widthsrc) |
    /// [R](https://plot.ly/r/reference/#bar-widthsrc)
    public var widthSource: String?

    /// Sets the source reference on plot.ly for  r .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-rsrc) |
    /// [Python](https://plot.ly/python/reference/#bar-rsrc) |
    /// [R](https://plot.ly/r/reference/#bar-rsrc)
    public var rSource: String?

    /// Sets the source reference on plot.ly for  t .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#bar-tsrc) |
    /// [Python](https://plot.ly/python/reference/#bar-tsrc) |
    /// [R](https://plot.ly/r/reference/#bar-tsrc)
    public var tSource: String?

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
        case textTemplate = "texttemplate"
        case hoverText = "hovertext"
        case hoverTemplate = "hovertemplate"
        case textPosition = "textposition"
        case insideTextAnchor = "insidetextanchor"
        case textAngle = "textangle"
        case textFont = "textfont"
        case insideTextFont = "insidetextfont"
        case outSideTextFont = "outsidetextfont"
        case constrainText = "constraintext"
        case clipOnAxis = "cliponaxis"
        case orientation
        case base
        case offset
        case width
        case marker
        case offsetGroup = "offsetgroup"
        case alignmentGroup = "alignmentgroup"
        case selected
        case unselected
        case r
        case t
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
        case textTemplateSource = "texttemplatesrc"
        case hoverTextSource = "hovertextsrc"
        case hoverTemplateSource = "hovertemplatesrc"
        case textPositionSource = "textpositionsrc"
        case baseSource = "basesrc"
        case offsetSource = "offsetsrc"
        case widthSource = "widthsrc"
        case rSource = "rsrc"
        case tSource = "tsrc"
    }
    
    public init(visible: Visible0? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, selectedPoints: Anything? = nil, hoverInfo: HoverInfo0? = nil, hoverLabel: HoverLabel0? = nil, stream: Stream0? = nil, transforms: Transforms0? = nil, uiRevision: Anything? = nil, x: [Double]? = nil, x0: Anything? = nil, dx: Double? = nil, y: [Double]? = nil, y0: Anything? = nil, dy: Double? = nil, text: String? = nil, textTemplate: String? = nil, hoverText: String? = nil, hoverTemplate: String? = nil, textPosition: TextPosition? = nil, insideTextAnchor: InsideTextAnchor? = nil, textAngle: Angle? = nil, textFont: Font0? = nil, insideTextFont: Font0? = nil, outSideTextFont: Font0? = nil, constrainText: ConstrainText? = nil, clipOnAxis: Bool? = nil, orientation: Orientation0? = nil, base: Anything? = nil, offset: Double? = nil, width: Double? = nil, marker: Marker? = nil, offsetGroup: String? = nil, alignmentGroup: String? = nil, selected: Selected0? = nil, unselected: Selected0? = nil, r: [Double]? = nil, t: [Double]? = nil, xError: XError? = nil, yError: YError? = nil, xCalendar: Calendar0? = nil, yCalendar: Calendar0? = nil, xAxis: SubPlotID? = nil, yAxis: SubPlotID? = nil, idsSource: String? = nil, customDataSource: String? = nil, metaSource: String? = nil, hoverInfoSource: String? = nil, xSource: String? = nil, ySource: String? = nil, textSource: String? = nil, textTemplateSource: String? = nil, hoverTextSource: String? = nil, hoverTemplateSource: String? = nil, textPositionSource: String? = nil, baseSource: String? = nil, offsetSource: String? = nil, widthSource: String? = nil, rSource: String? = nil, tSource: String? = nil) {
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
        self.textTemplate = textTemplate
        self.hoverText = hoverText
        self.hoverTemplate = hoverTemplate
        self.textPosition = textPosition
        self.insideTextAnchor = insideTextAnchor
        self.textAngle = textAngle
        self.textFont = textFont
        self.insideTextFont = insideTextFont
        self.outSideTextFont = outSideTextFont
        self.constrainText = constrainText
        self.clipOnAxis = clipOnAxis
        self.orientation = orientation
        self.base = base
        self.offset = offset
        self.width = width
        self.marker = marker
        self.offsetGroup = offsetGroup
        self.alignmentGroup = alignmentGroup
        self.selected = selected
        self.unselected = unselected
        self.r = r
        self.t = t
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
        self.textTemplateSource = textTemplateSource
        self.hoverTextSource = hoverTextSource
        self.hoverTemplateSource = hoverTemplateSource
        self.textPositionSource = textPositionSource
        self.baseSource = baseSource
        self.offsetSource = offsetSource
        self.widthSource = widthSource
        self.rSource = rSource
        self.tSource = tSource
    }
}