/// The data visualized as scatter point or lines in 3D dimension is set in `x`, `y`, `z`. 
///
/// Text (appearing either on the chart or on hover only) is via `text`. Bubble charts are achieved
/// by setting `marker.size` and/or `marker.color` Projections are achieved via `projection`.
/// Surface fills are achieved via `surfaceaxis`.
public struct Scatter3D<XData, YData, ZData>: Trace where XData: Encodable, YData: Encodable, ZData: Encodable {
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#type) |
    /// [Python](https://plot.ly/python/reference/#type) |
    /// [R](https://plot.ly/r/reference/#type)
    public let type: String = "scatter3d"

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
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-visible) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-visible) |
    /// [R](https://plot.ly/r/reference/#scatter3d-visible)
    public var visible: Shared.Visible?

    /// Determines whether or not an item corresponding to this trace is shown in the legend.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-showlegend) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-showlegend) |
    /// [R](https://plot.ly/r/reference/#scatter3d-showlegend)
    public var showLegend: Bool?

    /// Sets the legend group for this trace. 
    ///
    /// Traces part of the same legend group hide/show at the same time when toggling legend items.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-legendgroup) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-legendgroup) |
    /// [R](https://plot.ly/r/reference/#scatter3d-legendgroup)
    public var legendGroup: String?

    /// Sets the opacity of the trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-opacity) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-opacity) |
    /// [R](https://plot.ly/r/reference/#scatter3d-opacity)
    public var opacity: Double?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-name) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-name) |
    /// [R](https://plot.ly/r/reference/#scatter3d-name)
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-uid) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-uid) |
    /// [R](https://plot.ly/r/reference/#scatter3d-uid)
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-ids) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-ids) |
    /// [R](https://plot.ly/r/reference/#scatter3d-ids)
    public var ids: [Double]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-customdata) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-customdata) |
    /// [R](https://plot.ly/r/reference/#scatter3d-customdata)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-meta) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-meta) |
    /// [R](https://plot.ly/r/reference/#scatter3d-meta)
    public var meta: ArrayOrAnything?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#scatter3d-hoverlabel)
    public var hoverLabel: Shared.HoverLabel?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-stream) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-stream) |
    /// [R](https://plot.ly/r/reference/#scatter3d-stream)
    public var stream: Shared.Stream?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-transforms) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-transforms) |
    /// [R](https://plot.ly/r/reference/#scatter3d-transforms)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-uirevision) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-uirevision) |
    /// [R](https://plot.ly/r/reference/#scatter3d-uirevision)
    public var uiRevision: Anything?

    /// Sets the x coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-x) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-x) |
    /// [R](https://plot.ly/r/reference/#scatter3d-x)
    public var x: XData?

    /// Sets the y coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-y) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-y) |
    /// [R](https://plot.ly/r/reference/#scatter3d-y)
    public var y: YData?

    /// Sets the z coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-z) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-z) |
    /// [R](https://plot.ly/r/reference/#scatter3d-z)
    public var z: ZData?

    /// Sets text elements associated with each (x,y,z) triplet. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to the this trace's (x,y,z) coordinates. If trace `hoverinfo` contains
    /// a *text* flag and *hovertext* is not set, these elements will be seen in the hover labels.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-text) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-text) |
    /// [R](https://plot.ly/r/reference/#scatter3d-text)
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
    /// `arrayOk: true`) are available. 
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-texttemplate) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-texttemplate) |
    /// [R](https://plot.ly/r/reference/#scatter3d-texttemplate)
    public var textTemplate: ArrayOrString?

    /// Sets text elements associated with each (x,y,z) triplet. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to the this trace's (x,y,z) coordinates. To be seen, trace `hoverinfo`
    /// must contain a *text* flag.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-hovertext) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-hovertext) |
    /// [R](https://plot.ly/r/reference/#scatter3d-hovertext)
    public var hoverText: ArrayOrString?

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
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-hovertemplate) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-hovertemplate) |
    /// [R](https://plot.ly/r/reference/#scatter3d-hovertemplate)
    public var hoverTemplate: ArrayOrString?

    /// Determines the drawing mode for this scatter trace. 
    ///
    /// If the provided `mode` includes *text* then the `text` elements appear at the coordinates.
    /// Otherwise, the `text` elements appear on hover. If there are less than 20 points and the trace
    /// is not stacked then the default is *lines+markers*. Otherwise, *lines*.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-mode) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-mode) |
    /// [R](https://plot.ly/r/reference/#scatter3d-mode)
    public var mode: Shared.Mode?

    /// If *-1*, the scatter points are not fill with a surface If *0*, *1*, *2*, the scatter points are filled with a Delaunay surface about the x, y, z respectively.
    ///
    /// # Used By
    /// `Scatter3D.surfaceAxis` |
    public enum SurfaceAxis: Int, Encodable {
        case none = -1
        case x = 0
        case y = 1
        case z = 2
    }
    /// If *-1*, the scatter points are not fill with a surface If *0*, *1*, *2*, the scatter points are filled with a Delaunay surface about the x, y, z respectively.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-surfaceaxis) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-surfaceaxis) |
    /// [R](https://plot.ly/r/reference/#scatter3d-surfaceaxis)
    public var surfaceAxis: SurfaceAxis?

    /// Sets the surface fill color.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-surfacecolor) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-surfacecolor) |
    /// [R](https://plot.ly/r/reference/#scatter3d-surfacecolor)
    public var surfaceColor: Color?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-projection) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-projection) |
    /// [R](https://plot.ly/r/reference/#scatter3d-projection)
    public var projection: Shared.Projection?

    /// Determines whether or not gaps (i.e. 
    ///
    /// {nan} or missing values) in the provided data arrays are connected.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-connectgaps) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-connectgaps) |
    /// [R](https://plot.ly/r/reference/#scatter3d-connectgaps)
    public var connectGaps: Bool?

    /// # Used By
    /// `Scatter3D.line` |
    public struct DashedColoredLine: Encodable {
        /// Sets the line width (in px).
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-line-width) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-line-width) |
        /// [R](https://plot.ly/r/reference/#scatter3d-line-width)
        public var width: Double?
    
        /// Sets the dash style of the lines.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-line-dash) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-line-dash) |
        /// [R](https://plot.ly/r/reference/#scatter3d-line-dash)
        public var dash: Shared.Dash?
    
        /// Sets thelinecolor. 
        ///
        /// It accepts either a specific color or an array of numbers that are mapped to the colorscale
        /// relative to the max and min values of the array or relative to `line.cmin` and `line.cmax` if
        /// set.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-line-color) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-line-color) |
        /// [R](https://plot.ly/r/reference/#scatter3d-line-color)
        public var color: ArrayOrColor?
    
        /// Determines whether or not the color domain is computed with respect to the input data (here in `line.color`) or the bounds set in `line.cmin` and `line.cmax`  Has an effect only if in `line.color`is set to a numerical array. 
        ///
        /// Defaults to `false` when `line.cmin` and `line.cmax` are set by the user.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-line-cauto) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-line-cauto) |
        /// [R](https://plot.ly/r/reference/#scatter3d-line-cauto)
        public var cAuto: Bool?
    
        /// Sets the lower bound of the color domain. 
        ///
        /// Has an effect only if in `line.color`is set to a numerical array. Value should have the same
        /// units as in `line.color` and if set, `line.cmax` must be set as well.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-line-cmin) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-line-cmin) |
        /// [R](https://plot.ly/r/reference/#scatter3d-line-cmin)
        public var cMin: Double?
    
        /// Sets the upper bound of the color domain. 
        ///
        /// Has an effect only if in `line.color`is set to a numerical array. Value should have the same
        /// units as in `line.color` and if set, `line.cmin` must be set as well.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-line-cmax) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-line-cmax) |
        /// [R](https://plot.ly/r/reference/#scatter3d-line-cmax)
        public var cMax: Double?
    
        /// Sets the mid-point of the color domain by scaling `line.cmin` and/or `line.cmax` to be equidistant to this point. 
        ///
        /// Has an effect only if in `line.color`is set to a numerical array. Value should have the same
        /// units as in `line.color`. Has no effect when `line.cauto` is `false`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-line-cmid) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-line-cmid) |
        /// [R](https://plot.ly/r/reference/#scatter3d-line-cmid)
        public var cMiddle: Double?
    
        /// Sets the colorscale. 
        ///
        /// Has an effect only if in `line.color`is set to a numerical array. The colorscale must be an
        /// array containing arrays mapping a normalized value to an rgb, rgba, hex, hsl, hsv, or named
        /// color string. At minimum, a mapping for the lowest (0) and highest (1) values are required. For
        /// example, `[[0, 'rgb(0,0,255)'], [1, 'rgb(255,0,0)']]`. To control the bounds of the colorscale
        /// in color space, use`line.cmin` and `line.cmax`. Alternatively, `colorscale` may be a palette
        /// name string of the following list:
        /// Greys,YlGnBu,Greens,YlOrRd,Bluered,RdBu,Reds,Blues,Picnic,Rainbow,Portland,Jet,Hot,Blackbody,Earth,Electric,Viridis,Cividis.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-line-colorscale) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-line-colorscale) |
        /// [R](https://plot.ly/r/reference/#scatter3d-line-colorscale)
        public var colorScale: ColorScale?
    
        /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `line.colorscale`. 
        ///
        /// Has an effect only if in `line.color`is set to a numerical array. In case `colorscale` is
        /// unspecified or `autocolorscale` is true, the default palette will be chosen according to whether
        /// numbers in the `color` array are all positive, all negative or mixed.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-line-autocolorscale) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-line-autocolorscale) |
        /// [R](https://plot.ly/r/reference/#scatter3d-line-autocolorscale)
        public var autoColorScale: Bool?
    
        /// Reverses the color mapping if true. 
        ///
        /// Has an effect only if in `line.color`is set to a numerical array. If true, `line.cmin` will
        /// correspond to the last color in the array and `line.cmax` will correspond to the first color.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-line-reversescale) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-line-reversescale) |
        /// [R](https://plot.ly/r/reference/#scatter3d-line-reversescale)
        public var reverseScale: Bool?
    
        /// Determines whether or not a colorbar is displayed for this trace. 
        ///
        /// Has an effect only if in `line.color`is set to a numerical array.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-line-showscale) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-line-showscale) |
        /// [R](https://plot.ly/r/reference/#scatter3d-line-showscale)
        public var showScale: Bool?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-line-colorbar) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-line-colorbar) |
        /// [R](https://plot.ly/r/reference/#scatter3d-line-colorbar)
        public var colorBar: Shared.ColorBar?
    
        /// Sets a reference to a shared color axis. 
        ///
        /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
        /// for these shared color axes are set in the layout, under `layout.coloraxis`,
        /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-line-coloraxis) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-line-coloraxis) |
        /// [R](https://plot.ly/r/reference/#scatter3d-line-coloraxis)
        public var colorAxis: SubPlotID?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case width
            case dash
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
        
        public init(width: Double? = nil, dash: Shared.Dash? = nil, color: ArrayOrColor? = nil, cAuto: Bool? = nil, cMin: Double? = nil, cMax: Double? = nil, cMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: Shared.ColorBar? = nil, colorAxis: SubPlotID? = nil) {
            self.width = width
            self.dash = dash
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-line) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-line) |
    /// [R](https://plot.ly/r/reference/#scatter3d-line)
    public var line: DashedColoredLine?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-marker) |
    /// [R](https://plot.ly/r/reference/#scatter3d-marker)
    public var marker: Shared.SymbolicMarker?

    /// Sets the positions of the `text` elements with respects to the (x,y) coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-textposition) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-textposition) |
    /// [R](https://plot.ly/r/reference/#scatter3d-textposition)
    public var textPosition: Shared.TextPosition?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-textfont) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-textfont) |
    /// [R](https://plot.ly/r/reference/#scatter3d-textfont)
    public var textFont: Shared.Font?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-hoverinfo) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-hoverinfo) |
    /// [R](https://plot.ly/r/reference/#scatter3d-hoverinfo)
    public var hoverInfo: Shared.HoverInfo?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_x) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-error_x) |
    /// [R](https://plot.ly/r/reference/#scatter3d-error_x)
    public var xError: Shared.Error?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_y) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-error_y) |
    /// [R](https://plot.ly/r/reference/#scatter3d-error_y)
    public var yError: Shared.Error?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_z) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-error_z) |
    /// [R](https://plot.ly/r/reference/#scatter3d-error_z)
    public var zError: Shared.Error?

    /// Sets the calendar system to use with `x` date data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-xcalendar) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-xcalendar) |
    /// [R](https://plot.ly/r/reference/#scatter3d-xcalendar)
    public var xCalendar: Shared.Calendar?

    /// Sets the calendar system to use with `y` date data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-ycalendar) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-ycalendar) |
    /// [R](https://plot.ly/r/reference/#scatter3d-ycalendar)
    public var yCalendar: Shared.Calendar?

    /// Sets the calendar system to use with `z` date data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-zcalendar) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-zcalendar) |
    /// [R](https://plot.ly/r/reference/#scatter3d-zcalendar)
    public var zCalendar: Shared.Calendar?

    /// Sets a reference between this trace's 3D coordinate system and a 3D scene. 
    ///
    /// If *scene* (the default value), the (x,y,z) coordinates refer to `layout.scene`. If *scene2*,
    /// the (x,y,z) coordinates refer to `layout.scene2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-scene) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-scene) |
    /// [R](https://plot.ly/r/reference/#scatter3d-scene)
    public var scene: SubPlotID?

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
        case hoverLabel = "hoverlabel"
        case stream
        case transforms
        case uiRevision = "uirevision"
        case x
        case y
        case z
        case text
        case textTemplate = "texttemplate"
        case hoverText = "hovertext"
        case hoverTemplate = "hovertemplate"
        case mode
        case surfaceAxis = "surfaceaxis"
        case surfaceColor = "surfacecolor"
        case projection
        case connectGaps = "connectgaps"
        case line
        case marker
        case textPosition = "textposition"
        case textFont = "textfont"
        case hoverInfo = "hoverinfo"
        case xError = "error_x"
        case yError = "error_y"
        case zError = "error_z"
        case xCalendar = "xcalendar"
        case yCalendar = "ycalendar"
        case zCalendar = "zcalendar"
        case scene
    }
    
    public init(visible: Shared.Visible? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: ArrayOrAnything? = nil, hoverLabel: Shared.HoverLabel? = nil, stream: Shared.Stream? = nil, transforms: [Shared.Transform]? = nil, uiRevision: Anything? = nil, x: XData? = nil, y: YData? = nil, z: ZData? = nil, text: ArrayOrString? = nil, textTemplate: ArrayOrString? = nil, hoverText: ArrayOrString? = nil, hoverTemplate: ArrayOrString? = nil, mode: Shared.Mode? = nil, surfaceAxis: SurfaceAxis? = nil, surfaceColor: Color? = nil, projection: Shared.Projection? = nil, connectGaps: Bool? = nil, line: DashedColoredLine? = nil, marker: Shared.SymbolicMarker? = nil, textPosition: Shared.TextPosition? = nil, textFont: Shared.Font? = nil, hoverInfo: Shared.HoverInfo? = nil, xError: Shared.Error? = nil, yError: Shared.Error? = nil, zError: Shared.Error? = nil, xCalendar: Shared.Calendar? = nil, yCalendar: Shared.Calendar? = nil, zCalendar: Shared.Calendar? = nil, scene: SubPlotID? = nil) {
        self.visible = visible
        self.showLegend = showLegend
        self.legendGroup = legendGroup
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
        self.x = x
        self.y = y
        self.z = z
        self.text = text
        self.textTemplate = textTemplate
        self.hoverText = hoverText
        self.hoverTemplate = hoverTemplate
        self.mode = mode
        self.surfaceAxis = surfaceAxis
        self.surfaceColor = surfaceColor
        self.projection = projection
        self.connectGaps = connectGaps
        self.line = line
        self.marker = marker
        self.textPosition = textPosition
        self.textFont = textFont
        self.hoverInfo = hoverInfo
        self.xError = xError
        self.yError = yError
        self.zError = zError
        self.xCalendar = xCalendar
        self.yCalendar = yCalendar
        self.zCalendar = zCalendar
        self.scene = scene
    }
}