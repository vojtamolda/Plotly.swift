/// The data the describes the coordinates of the surface is set in `z`. 
///
/// Data in `z` should be a {2D array}. Coordinates in `x` and `y` can either be 1D {arrays} or {2D
/// arrays} (e.g. to graph parametric surfaces). If not provided in `x` and `y`, the x and y
/// coordinates are assumed to be linear starting at 0 with a unit step. The color scale corresponds
/// to the `z` values by default. For custom color scales, use `surfacecolor` which should be a {2D
/// array}, where its bounds can be controlled using `cmin` and `cmax`.
public struct Surface<ZData, XYData>: Trace where ZData: Plotable, XYData: Plotable {
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#type) |
    /// [Python](https://plot.ly/python/reference/#type) |
    /// [R](https://plot.ly/r/reference/#type)
    public let type: String = "surface"

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
    /// [JavaScript](https://plot.ly/javascript/reference/#surface-visible) |
    /// [Python](https://plot.ly/python/reference/#surface-visible) |
    /// [R](https://plot.ly/r/reference/#surface-visible)
    public var visible: Shared.Visible?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#surface-name) |
    /// [Python](https://plot.ly/python/reference/#surface-name) |
    /// [R](https://plot.ly/r/reference/#surface-name)
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#surface-uid) |
    /// [Python](https://plot.ly/python/reference/#surface-uid) |
    /// [R](https://plot.ly/r/reference/#surface-uid)
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#surface-ids) |
    /// [Python](https://plot.ly/python/reference/#surface-ids) |
    /// [R](https://plot.ly/r/reference/#surface-ids)
    public var ids: [String]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#surface-customdata) |
    /// [Python](https://plot.ly/python/reference/#surface-customdata) |
    /// [R](https://plot.ly/r/reference/#surface-customdata)
    public var customData: [String]?

    /// Assigns extra meta information associated with this trace that can be used in various text attributes. 
    ///
    /// Attributes such as trace `name`, graph, axis and colorbar `title.text`, annotation `text`
    /// `rangeselector`, `updatemenues` and `sliders` `label` text all support `meta`. To access the
    /// trace `meta` values in an attribute in the same trace, simply use `%{meta[i]}` where `i` is the
    /// index or key of the `meta` item in question. To access trace `meta` in layout attributes, use
    /// `%{data[n[.meta[i]}` where `i` is the index or key of the `meta` and `n` is the trace index.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#surface-meta) |
    /// [Python](https://plot.ly/python/reference/#surface-meta) |
    /// [R](https://plot.ly/r/reference/#surface-meta)
    public var meta: ArrayOrAnything?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#surface-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#surface-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#surface-hoverlabel)
    public var hoverLabel: Shared.HoverLabel?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#surface-stream) |
    /// [Python](https://plot.ly/python/reference/#surface-stream) |
    /// [R](https://plot.ly/r/reference/#surface-stream)
    public var stream: Shared.Stream?

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
    /// [JavaScript](https://plot.ly/javascript/reference/#surface-uirevision) |
    /// [Python](https://plot.ly/python/reference/#surface-uirevision) |
    /// [R](https://plot.ly/r/reference/#surface-uirevision)
    public var uiRevision: Anything?

    /// Sets the z coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#surface-z) |
    /// [Python](https://plot.ly/python/reference/#surface-z) |
    /// [R](https://plot.ly/r/reference/#surface-z)
    public var z: ZData?

    /// Sets the x coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#surface-x) |
    /// [Python](https://plot.ly/python/reference/#surface-x) |
    /// [R](https://plot.ly/r/reference/#surface-x)
    public var x: XYData?

    /// Sets the y coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#surface-y) |
    /// [Python](https://plot.ly/python/reference/#surface-y) |
    /// [R](https://plot.ly/r/reference/#surface-y)
    public var y: XYData?

    /// Sets the text elements associated with each z value. 
    ///
    /// If trace `hoverinfo` contains a *text* flag and *hovertext* is not set, these elements will be
    /// seen in the hover labels.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#surface-text) |
    /// [Python](https://plot.ly/python/reference/#surface-text) |
    /// [R](https://plot.ly/r/reference/#surface-text)
    public var text: ArrayOrString?

    /// Same as `text`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#surface-hovertext) |
    /// [Python](https://plot.ly/python/reference/#surface-hovertext) |
    /// [R](https://plot.ly/r/reference/#surface-hovertext)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#surface-hovertemplate) |
    /// [Python](https://plot.ly/python/reference/#surface-hovertemplate) |
    /// [R](https://plot.ly/r/reference/#surface-hovertemplate)
    public var hoverTemplate: ArrayOrString?

    /// Determines whether or not gaps (i.e. 
    ///
    /// {nan} or missing values) in the `z` data are filled in.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#surface-connectgaps) |
    /// [Python](https://plot.ly/python/reference/#surface-connectgaps) |
    /// [R](https://plot.ly/r/reference/#surface-connectgaps)
    public var connectGaps: Bool?

    /// Sets the surface color values, used for setting a color scale independent of `z`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#surface-surfacecolor) |
    /// [Python](https://plot.ly/python/reference/#surface-surfacecolor) |
    /// [R](https://plot.ly/r/reference/#surface-surfacecolor)
    public var surfaceColor: [Double]?

    /// Determines whether or not the color domain is computed with respect to the input data (here z or surfacecolor) or the bounds set in `cmin` and `cmax`  Defaults to `false` when `cmin` and `cmax` are set by the user.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#surface-cauto) |
    /// [Python](https://plot.ly/python/reference/#surface-cauto) |
    /// [R](https://plot.ly/r/reference/#surface-cauto)
    public var cAuto: Bool?

    /// Sets the lower bound of the color domain. 
    ///
    /// Value should have the same units as z or surfacecolor and if set, `cmax` must be set as well.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#surface-cmin) |
    /// [Python](https://plot.ly/python/reference/#surface-cmin) |
    /// [R](https://plot.ly/r/reference/#surface-cmin)
    public var cMin: Double?

    /// Sets the upper bound of the color domain. 
    ///
    /// Value should have the same units as z or surfacecolor and if set, `cmin` must be set as well.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#surface-cmax) |
    /// [Python](https://plot.ly/python/reference/#surface-cmax) |
    /// [R](https://plot.ly/r/reference/#surface-cmax)
    public var cMax: Double?

    /// Sets the mid-point of the color domain by scaling `cmin` and/or `cmax` to be equidistant to this point. 
    ///
    /// Value should have the same units as z or surfacecolor. Has no effect when `cauto` is `false`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#surface-cmid) |
    /// [Python](https://plot.ly/python/reference/#surface-cmid) |
    /// [R](https://plot.ly/r/reference/#surface-cmid)
    public var cMiddle: Double?

    /// Sets the colorscale. 
    ///
    /// The colorscale must be an array containing arrays mapping a normalized value to an rgb, rgba,
    /// hex, hsl, hsv, or named color string. At minimum, a mapping for the lowest (0) and highest (1)
    /// values are required. For example, `[[0, 'rgb(0,0,255)'], [1, 'rgb(255,0,0)']]`. To control the
    /// bounds of the colorscale in color space, use`cmin` and `cmax`. Alternatively, `colorscale` may
    /// be a palette name string of the following list:
    /// Greys,YlGnBu,Greens,YlOrRd,Bluered,RdBu,Reds,Blues,Picnic,Rainbow,Portland,Jet,Hot,Blackbody,Earth,Electric,Viridis,Cividis.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#surface-colorscale) |
    /// [Python](https://plot.ly/python/reference/#surface-colorscale) |
    /// [R](https://plot.ly/r/reference/#surface-colorscale)
    public var colorScale: ColorScale?

    /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `colorscale`. 
    ///
    /// In case `colorscale` is unspecified or `autocolorscale` is true, the default palette will be
    /// chosen according to whether numbers in the `color` array are all positive, all negative or
    /// mixed.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#surface-autocolorscale) |
    /// [Python](https://plot.ly/python/reference/#surface-autocolorscale) |
    /// [R](https://plot.ly/r/reference/#surface-autocolorscale)
    public var autoColorScale: Bool?

    /// Reverses the color mapping if true. 
    ///
    /// If true, `cmin` will correspond to the last color in the array and `cmax` will correspond to the
    /// first color.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#surface-reversescale) |
    /// [Python](https://plot.ly/python/reference/#surface-reversescale) |
    /// [R](https://plot.ly/r/reference/#surface-reversescale)
    public var reverseScale: Bool?

    /// Determines whether or not a colorbar is displayed for this trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#surface-showscale) |
    /// [Python](https://plot.ly/python/reference/#surface-showscale) |
    /// [R](https://plot.ly/r/reference/#surface-showscale)
    public var showScale: Bool?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#surface-colorbar) |
    /// [Python](https://plot.ly/python/reference/#surface-colorbar) |
    /// [R](https://plot.ly/r/reference/#surface-colorbar)
    public var colorBar: Shared.ColorBar?

    /// Sets a reference to a shared color axis. 
    ///
    /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
    /// for these shared color axes are set in the layout, under `layout.coloraxis`,
    /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#surface-coloraxis) |
    /// [Python](https://plot.ly/python/reference/#surface-coloraxis) |
    /// [R](https://plot.ly/r/reference/#surface-coloraxis)
    public var colorAxis: SubPlotID?

    /// # Used By
    /// `Surface.contours` |
    public struct Contours: Encodable {
        /// # Used By
        /// `Surface.Contours.x` |
        public struct X: Encodable {
            /// Determines whether or not contour lines about the x dimension are drawn.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#surface-contours-x-show) |
            /// [Python](https://plot.ly/python/reference/#surface-contours-x-show) |
            /// [R](https://plot.ly/r/reference/#surface-contours-x-show)
            public var show: Bool?
        
            /// Sets the starting contour level value. 
            ///
            /// Must be less than `contours.end`
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#surface-contours-x-start) |
            /// [Python](https://plot.ly/python/reference/#surface-contours-x-start) |
            /// [R](https://plot.ly/r/reference/#surface-contours-x-start)
            public var start: Double?
        
            /// Sets the end contour level value. 
            ///
            /// Must be more than `contours.start`
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#surface-contours-x-end) |
            /// [Python](https://plot.ly/python/reference/#surface-contours-x-end) |
            /// [R](https://plot.ly/r/reference/#surface-contours-x-end)
            public var end: Double?
        
            /// Sets the step between each contour level. 
            ///
            /// Must be positive.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#surface-contours-x-size) |
            /// [Python](https://plot.ly/python/reference/#surface-contours-x-size) |
            /// [R](https://plot.ly/r/reference/#surface-contours-x-size)
            public var size: Double?
        
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#surface-contours-x-project) |
            /// [Python](https://plot.ly/python/reference/#surface-contours-x-project) |
            /// [R](https://plot.ly/r/reference/#surface-contours-x-project)
            public var project: Shared.Projection?
        
            /// Sets the color of the contour lines.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#surface-contours-x-color) |
            /// [Python](https://plot.ly/python/reference/#surface-contours-x-color) |
            /// [R](https://plot.ly/r/reference/#surface-contours-x-color)
            public var color: Color?
        
            /// An alternate to *color*. 
            ///
            /// Determines whether or not the contour lines are colored using the trace *colorscale*.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#surface-contours-x-usecolormap) |
            /// [Python](https://plot.ly/python/reference/#surface-contours-x-usecolormap) |
            /// [R](https://plot.ly/r/reference/#surface-contours-x-usecolormap)
            public var useColormap: Bool?
        
            /// Sets the width of the contour lines.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#surface-contours-x-width) |
            /// [Python](https://plot.ly/python/reference/#surface-contours-x-width) |
            /// [R](https://plot.ly/r/reference/#surface-contours-x-width)
            public var width: Double?
        
            /// Determines whether or not contour lines about the x dimension are highlighted on hover.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#surface-contours-x-highlight) |
            /// [Python](https://plot.ly/python/reference/#surface-contours-x-highlight) |
            /// [R](https://plot.ly/r/reference/#surface-contours-x-highlight)
            public var highlight: Bool?
        
            /// Sets the color of the highlighted contour lines.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#surface-contours-x-highlightcolor) |
            /// [Python](https://plot.ly/python/reference/#surface-contours-x-highlightcolor) |
            /// [R](https://plot.ly/r/reference/#surface-contours-x-highlightcolor)
            public var highlightColor: Color?
        
            /// Sets the width of the highlighted contour lines.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#surface-contours-x-highlightwidth) |
            /// [Python](https://plot.ly/python/reference/#surface-contours-x-highlightwidth) |
            /// [R](https://plot.ly/r/reference/#surface-contours-x-highlightwidth)
            public var highlightWidth: Double?
        
            /// Plotly compatible property encoding
            enum CodingKeys: String, CodingKey {
                case show
                case start
                case end
                case size
                case project
                case color
                case useColormap = "usecolormap"
                case width
                case highlight
                case highlightColor = "highlightcolor"
                case highlightWidth = "highlightwidth"
            }
            
            public init(show: Bool? = nil, start: Double? = nil, end: Double? = nil, size: Double? = nil, project: Shared.Projection? = nil, color: Color? = nil, useColormap: Bool? = nil, width: Double? = nil, highlight: Bool? = nil, highlightColor: Color? = nil, highlightWidth: Double? = nil) {
                self.show = show
                self.start = start
                self.end = end
                self.size = size
                self.project = project
                self.color = color
                self.useColormap = useColormap
                self.width = width
                self.highlight = highlight
                self.highlightColor = highlightColor
                self.highlightWidth = highlightWidth
            }
            
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#surface-contours-x) |
        /// [Python](https://plot.ly/python/reference/#surface-contours-x) |
        /// [R](https://plot.ly/r/reference/#surface-contours-x)
        public var x: X?
    
        /// # Used By
        /// `Surface.Contours.y` |
        public struct Y: Encodable {
            /// Determines whether or not contour lines about the y dimension are drawn.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#surface-contours-y-show) |
            /// [Python](https://plot.ly/python/reference/#surface-contours-y-show) |
            /// [R](https://plot.ly/r/reference/#surface-contours-y-show)
            public var show: Bool?
        
            /// Sets the starting contour level value. 
            ///
            /// Must be less than `contours.end`
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#surface-contours-y-start) |
            /// [Python](https://plot.ly/python/reference/#surface-contours-y-start) |
            /// [R](https://plot.ly/r/reference/#surface-contours-y-start)
            public var start: Double?
        
            /// Sets the end contour level value. 
            ///
            /// Must be more than `contours.start`
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#surface-contours-y-end) |
            /// [Python](https://plot.ly/python/reference/#surface-contours-y-end) |
            /// [R](https://plot.ly/r/reference/#surface-contours-y-end)
            public var end: Double?
        
            /// Sets the step between each contour level. 
            ///
            /// Must be positive.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#surface-contours-y-size) |
            /// [Python](https://plot.ly/python/reference/#surface-contours-y-size) |
            /// [R](https://plot.ly/r/reference/#surface-contours-y-size)
            public var size: Double?
        
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#surface-contours-y-project) |
            /// [Python](https://plot.ly/python/reference/#surface-contours-y-project) |
            /// [R](https://plot.ly/r/reference/#surface-contours-y-project)
            public var project: Shared.Projection?
        
            /// Sets the color of the contour lines.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#surface-contours-y-color) |
            /// [Python](https://plot.ly/python/reference/#surface-contours-y-color) |
            /// [R](https://plot.ly/r/reference/#surface-contours-y-color)
            public var color: Color?
        
            /// An alternate to *color*. 
            ///
            /// Determines whether or not the contour lines are colored using the trace *colorscale*.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#surface-contours-y-usecolormap) |
            /// [Python](https://plot.ly/python/reference/#surface-contours-y-usecolormap) |
            /// [R](https://plot.ly/r/reference/#surface-contours-y-usecolormap)
            public var useColormap: Bool?
        
            /// Sets the width of the contour lines.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#surface-contours-y-width) |
            /// [Python](https://plot.ly/python/reference/#surface-contours-y-width) |
            /// [R](https://plot.ly/r/reference/#surface-contours-y-width)
            public var width: Double?
        
            /// Determines whether or not contour lines about the y dimension are highlighted on hover.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#surface-contours-y-highlight) |
            /// [Python](https://plot.ly/python/reference/#surface-contours-y-highlight) |
            /// [R](https://plot.ly/r/reference/#surface-contours-y-highlight)
            public var highlight: Bool?
        
            /// Sets the color of the highlighted contour lines.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#surface-contours-y-highlightcolor) |
            /// [Python](https://plot.ly/python/reference/#surface-contours-y-highlightcolor) |
            /// [R](https://plot.ly/r/reference/#surface-contours-y-highlightcolor)
            public var highlightColor: Color?
        
            /// Sets the width of the highlighted contour lines.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#surface-contours-y-highlightwidth) |
            /// [Python](https://plot.ly/python/reference/#surface-contours-y-highlightwidth) |
            /// [R](https://plot.ly/r/reference/#surface-contours-y-highlightwidth)
            public var highlightWidth: Double?
        
            /// Plotly compatible property encoding
            enum CodingKeys: String, CodingKey {
                case show
                case start
                case end
                case size
                case project
                case color
                case useColormap = "usecolormap"
                case width
                case highlight
                case highlightColor = "highlightcolor"
                case highlightWidth = "highlightwidth"
            }
            
            public init(show: Bool? = nil, start: Double? = nil, end: Double? = nil, size: Double? = nil, project: Shared.Projection? = nil, color: Color? = nil, useColormap: Bool? = nil, width: Double? = nil, highlight: Bool? = nil, highlightColor: Color? = nil, highlightWidth: Double? = nil) {
                self.show = show
                self.start = start
                self.end = end
                self.size = size
                self.project = project
                self.color = color
                self.useColormap = useColormap
                self.width = width
                self.highlight = highlight
                self.highlightColor = highlightColor
                self.highlightWidth = highlightWidth
            }
            
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#surface-contours-y) |
        /// [Python](https://plot.ly/python/reference/#surface-contours-y) |
        /// [R](https://plot.ly/r/reference/#surface-contours-y)
        public var y: Y?
    
        /// # Used By
        /// `Surface.Contours.z` |
        public struct Z: Encodable {
            /// Determines whether or not contour lines about the z dimension are drawn.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#surface-contours-z-show) |
            /// [Python](https://plot.ly/python/reference/#surface-contours-z-show) |
            /// [R](https://plot.ly/r/reference/#surface-contours-z-show)
            public var show: Bool?
        
            /// Sets the starting contour level value. 
            ///
            /// Must be less than `contours.end`
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#surface-contours-z-start) |
            /// [Python](https://plot.ly/python/reference/#surface-contours-z-start) |
            /// [R](https://plot.ly/r/reference/#surface-contours-z-start)
            public var start: Double?
        
            /// Sets the end contour level value. 
            ///
            /// Must be more than `contours.start`
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#surface-contours-z-end) |
            /// [Python](https://plot.ly/python/reference/#surface-contours-z-end) |
            /// [R](https://plot.ly/r/reference/#surface-contours-z-end)
            public var end: Double?
        
            /// Sets the step between each contour level. 
            ///
            /// Must be positive.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#surface-contours-z-size) |
            /// [Python](https://plot.ly/python/reference/#surface-contours-z-size) |
            /// [R](https://plot.ly/r/reference/#surface-contours-z-size)
            public var size: Double?
        
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#surface-contours-z-project) |
            /// [Python](https://plot.ly/python/reference/#surface-contours-z-project) |
            /// [R](https://plot.ly/r/reference/#surface-contours-z-project)
            public var project: Shared.Projection?
        
            /// Sets the color of the contour lines.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#surface-contours-z-color) |
            /// [Python](https://plot.ly/python/reference/#surface-contours-z-color) |
            /// [R](https://plot.ly/r/reference/#surface-contours-z-color)
            public var color: Color?
        
            /// An alternate to *color*. 
            ///
            /// Determines whether or not the contour lines are colored using the trace *colorscale*.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#surface-contours-z-usecolormap) |
            /// [Python](https://plot.ly/python/reference/#surface-contours-z-usecolormap) |
            /// [R](https://plot.ly/r/reference/#surface-contours-z-usecolormap)
            public var useColormap: Bool?
        
            /// Sets the width of the contour lines.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#surface-contours-z-width) |
            /// [Python](https://plot.ly/python/reference/#surface-contours-z-width) |
            /// [R](https://plot.ly/r/reference/#surface-contours-z-width)
            public var width: Double?
        
            /// Determines whether or not contour lines about the z dimension are highlighted on hover.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#surface-contours-z-highlight) |
            /// [Python](https://plot.ly/python/reference/#surface-contours-z-highlight) |
            /// [R](https://plot.ly/r/reference/#surface-contours-z-highlight)
            public var highlight: Bool?
        
            /// Sets the color of the highlighted contour lines.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#surface-contours-z-highlightcolor) |
            /// [Python](https://plot.ly/python/reference/#surface-contours-z-highlightcolor) |
            /// [R](https://plot.ly/r/reference/#surface-contours-z-highlightcolor)
            public var highlightColor: Color?
        
            /// Sets the width of the highlighted contour lines.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#surface-contours-z-highlightwidth) |
            /// [Python](https://plot.ly/python/reference/#surface-contours-z-highlightwidth) |
            /// [R](https://plot.ly/r/reference/#surface-contours-z-highlightwidth)
            public var highlightWidth: Double?
        
            /// Plotly compatible property encoding
            enum CodingKeys: String, CodingKey {
                case show
                case start
                case end
                case size
                case project
                case color
                case useColormap = "usecolormap"
                case width
                case highlight
                case highlightColor = "highlightcolor"
                case highlightWidth = "highlightwidth"
            }
            
            public init(show: Bool? = nil, start: Double? = nil, end: Double? = nil, size: Double? = nil, project: Shared.Projection? = nil, color: Color? = nil, useColormap: Bool? = nil, width: Double? = nil, highlight: Bool? = nil, highlightColor: Color? = nil, highlightWidth: Double? = nil) {
                self.show = show
                self.start = start
                self.end = end
                self.size = size
                self.project = project
                self.color = color
                self.useColormap = useColormap
                self.width = width
                self.highlight = highlight
                self.highlightColor = highlightColor
                self.highlightWidth = highlightWidth
            }
            
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#surface-contours-z) |
        /// [Python](https://plot.ly/python/reference/#surface-contours-z) |
        /// [R](https://plot.ly/r/reference/#surface-contours-z)
        public var z: Z?
    
        public init(x: X? = nil, y: Y? = nil, z: Z? = nil) {
            self.x = x
            self.y = y
            self.z = z
        }
        
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#surface-contours) |
    /// [Python](https://plot.ly/python/reference/#surface-contours) |
    /// [R](https://plot.ly/r/reference/#surface-contours)
    public var contours: Contours?

    /// Determines whether or not a surface is drawn. 
    ///
    /// For example, set `hidesurface` to *false* `contours.x.show` to *true* and `contours.y.show` to
    /// *true* to draw a wire frame plot.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#surface-hidesurface) |
    /// [Python](https://plot.ly/python/reference/#surface-hidesurface) |
    /// [R](https://plot.ly/r/reference/#surface-hidesurface)
    public var hideSurface: Bool?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#surface-lightposition) |
    /// [Python](https://plot.ly/python/reference/#surface-lightposition) |
    /// [R](https://plot.ly/r/reference/#surface-lightposition)
    public var lightPosition: Shared.LightPosition?

    /// # Used By
    /// `Surface.lighting` |
    public struct Lighting: Encodable {
        /// Ambient light increases overall color visibility but can wash out the image.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#surface-lighting-ambient) |
        /// [Python](https://plot.ly/python/reference/#surface-lighting-ambient) |
        /// [R](https://plot.ly/r/reference/#surface-lighting-ambient)
        public var ambient: Double?
    
        /// Represents the extent that incident rays are reflected in a range of angles.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#surface-lighting-diffuse) |
        /// [Python](https://plot.ly/python/reference/#surface-lighting-diffuse) |
        /// [R](https://plot.ly/r/reference/#surface-lighting-diffuse)
        public var diffuse: Double?
    
        /// Represents the level that incident rays are reflected in a single direction, causing shine.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#surface-lighting-specular) |
        /// [Python](https://plot.ly/python/reference/#surface-lighting-specular) |
        /// [R](https://plot.ly/r/reference/#surface-lighting-specular)
        public var specular: Double?
    
        /// Alters specular reflection; the rougher the surface, the wider and less contrasty the shine.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#surface-lighting-roughness) |
        /// [Python](https://plot.ly/python/reference/#surface-lighting-roughness) |
        /// [R](https://plot.ly/r/reference/#surface-lighting-roughness)
        public var roughness: Double?
    
        /// Represents the reflectance as a dependency of the viewing angle; e.g. 
        ///
        /// paper is reflective when viewing it from the edge of the paper (almost 90 degrees), causing
        /// shine.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#surface-lighting-fresnel) |
        /// [Python](https://plot.ly/python/reference/#surface-lighting-fresnel) |
        /// [R](https://plot.ly/r/reference/#surface-lighting-fresnel)
        public var fresnel: Double?
    
        public init(ambient: Double? = nil, diffuse: Double? = nil, specular: Double? = nil, roughness: Double? = nil, fresnel: Double? = nil) {
            self.ambient = ambient
            self.diffuse = diffuse
            self.specular = specular
            self.roughness = roughness
            self.fresnel = fresnel
        }
        
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#surface-lighting) |
    /// [Python](https://plot.ly/python/reference/#surface-lighting) |
    /// [R](https://plot.ly/r/reference/#surface-lighting)
    public var lighting: Lighting?

    /// Sets the opacity of the surface. 
    ///
    /// Please note that in the case of using high `opacity` values for example a value greater than or
    /// equal to 0.5 on two surfaces (and 0.25 with four surfaces), an overlay of multiple transparent
    /// surfaces may not perfectly be sorted in depth by the webgl API. This behavior may be improved in
    /// the near future and is subject to change.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#surface-opacity) |
    /// [Python](https://plot.ly/python/reference/#surface-opacity) |
    /// [R](https://plot.ly/r/reference/#surface-opacity)
    public var opacity: Double?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#surface-hoverinfo) |
    /// [Python](https://plot.ly/python/reference/#surface-hoverinfo) |
    /// [R](https://plot.ly/r/reference/#surface-hoverinfo)
    public var hoverInfo: Shared.HoverInfo?

    /// Sets the calendar system to use with `x` date data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#surface-xcalendar) |
    /// [Python](https://plot.ly/python/reference/#surface-xcalendar) |
    /// [R](https://plot.ly/r/reference/#surface-xcalendar)
    public var xCalendar: Shared.Calendar?

    /// Sets the calendar system to use with `y` date data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#surface-ycalendar) |
    /// [Python](https://plot.ly/python/reference/#surface-ycalendar) |
    /// [R](https://plot.ly/r/reference/#surface-ycalendar)
    public var yCalendar: Shared.Calendar?

    /// Sets the calendar system to use with `z` date data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#surface-zcalendar) |
    /// [Python](https://plot.ly/python/reference/#surface-zcalendar) |
    /// [R](https://plot.ly/r/reference/#surface-zcalendar)
    public var zCalendar: Shared.Calendar?

    /// Sets a reference between this trace's 3D coordinate system and a 3D scene. 
    ///
    /// If *scene* (the default value), the (x,y,z) coordinates refer to `layout.scene`. If *scene2*,
    /// the (x,y,z) coordinates refer to `layout.scene2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#surface-scene) |
    /// [Python](https://plot.ly/python/reference/#surface-scene) |
    /// [R](https://plot.ly/r/reference/#surface-scene)
    public var scene: SubPlotID?

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
        case hoverLabel = "hoverlabel"
        case stream
        case uiRevision = "uirevision"
        case z
        case x
        case y
        case text
        case hoverText = "hovertext"
        case hoverTemplate = "hovertemplate"
        case connectGaps = "connectgaps"
        case surfaceColor = "surfacecolor"
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
        case contours
        case hideSurface = "hidesurface"
        case lightPosition = "lightposition"
        case lighting
        case opacity
        case hoverInfo = "hoverinfo"
        case xCalendar = "xcalendar"
        case yCalendar = "ycalendar"
        case zCalendar = "zcalendar"
        case scene
    }
    
    public init(visible: Shared.Visible? = nil, name: String? = nil, uid: String? = nil, ids: [String]? = nil, customData: [String]? = nil, meta: ArrayOrAnything? = nil, hoverLabel: Shared.HoverLabel? = nil, stream: Shared.Stream? = nil, uiRevision: Anything? = nil, z: ZData? = nil, x: XYData? = nil, y: XYData? = nil, text: ArrayOrString? = nil, hoverText: ArrayOrString? = nil, hoverTemplate: ArrayOrString? = nil, connectGaps: Bool? = nil, surfaceColor: [Double]? = nil, cAuto: Bool? = nil, cMin: Double? = nil, cMax: Double? = nil, cMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: Shared.ColorBar? = nil, colorAxis: SubPlotID? = nil, contours: Contours? = nil, hideSurface: Bool? = nil, lightPosition: Shared.LightPosition? = nil, lighting: Lighting? = nil, opacity: Double? = nil, hoverInfo: Shared.HoverInfo? = nil, xCalendar: Shared.Calendar? = nil, yCalendar: Shared.Calendar? = nil, zCalendar: Shared.Calendar? = nil, scene: SubPlotID? = nil) {
        self.visible = visible
        self.name = name
        self.uid = uid
        self.ids = ids
        self.customData = customData
        self.meta = meta
        self.hoverLabel = hoverLabel
        self.stream = stream
        self.uiRevision = uiRevision
        self.z = z
        self.x = x
        self.y = y
        self.text = text
        self.hoverText = hoverText
        self.hoverTemplate = hoverTemplate
        self.connectGaps = connectGaps
        self.surfaceColor = surfaceColor
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
        self.contours = contours
        self.hideSurface = hideSurface
        self.lightPosition = lightPosition
        self.lighting = lighting
        self.opacity = opacity
        self.hoverInfo = hoverInfo
        self.xCalendar = xCalendar
        self.yCalendar = yCalendar
        self.zCalendar = zCalendar
        self.scene = scene
    }
    
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
        try container.encodeIfPresent(hoverLabel, forKey: .hoverLabel)
        try container.encodeIfPresent(stream, forKey: .stream)
        try container.encodeIfPresent(uiRevision, forKey: .uiRevision)
        try container.encodeIfPresent(text, forKey: .text)
        try container.encodeIfPresent(hoverText, forKey: .hoverText)
        try container.encodeIfPresent(hoverTemplate, forKey: .hoverTemplate)
        try container.encodeIfPresent(connectGaps, forKey: .connectGaps)
        try container.encodeIfPresent(surfaceColor, forKey: .surfaceColor)
        try container.encodeIfPresent(cAuto, forKey: .cAuto)
        try container.encodeIfPresent(cMin, forKey: .cMin)
        try container.encodeIfPresent(cMax, forKey: .cMax)
        try container.encodeIfPresent(cMiddle, forKey: .cMiddle)
        try container.encodeIfPresent(colorScale, forKey: .colorScale)
        try container.encodeIfPresent(autoColorScale, forKey: .autoColorScale)
        try container.encodeIfPresent(reverseScale, forKey: .reverseScale)
        try container.encodeIfPresent(showScale, forKey: .showScale)
        try container.encodeIfPresent(colorBar, forKey: .colorBar)
        try container.encodeIfPresent(colorAxis, forKey: .colorAxis)
        try container.encodeIfPresent(contours, forKey: .contours)
        try container.encodeIfPresent(hideSurface, forKey: .hideSurface)
        try container.encodeIfPresent(lightPosition, forKey: .lightPosition)
        try container.encodeIfPresent(lighting, forKey: .lighting)
        try container.encodeIfPresent(opacity, forKey: .opacity)
        try container.encodeIfPresent(hoverInfo, forKey: .hoverInfo)
        try container.encodeIfPresent(xCalendar, forKey: .xCalendar)
        try container.encodeIfPresent(yCalendar, forKey: .yCalendar)
        try container.encodeIfPresent(zCalendar, forKey: .zCalendar)
        try container.encodeIfPresent(scene, forKey: .scene)
    
        if let z = self.z {
            let zEncoder = container.superEncoder(forKey: .z)
            try z.encode(toPlotly: zEncoder)
        }
    
        if let x = self.x {
            let xEncoder = container.superEncoder(forKey: .x)
            try x.encode(toPlotly: xEncoder)
        }
    
        if let y = self.y {
            let yEncoder = container.superEncoder(forKey: .y)
            try y.encode(toPlotly: yEncoder)
        }
    }
    
}