/// The data visualized as scatter point or lines in 3D dimension is set in `x`, `y`, `z`. 
///
/// Text (appearing either on the chart or on hover only) is via `text`. Bubble charts are achieved
/// by setting `marker.size` and/or `marker.color` Projections are achieved via `projection`.
/// Surface fills are achieved via `surfaceaxis`.
public struct Scatter3D: Trace {
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
    public var visible: Visible0?

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
    public var meta: Anything?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#scatter3d-hoverlabel)
    public var hoverLabel: HoverLabel0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-stream) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-stream) |
    /// [R](https://plot.ly/r/reference/#scatter3d-stream)
    public var stream: Stream0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-transforms) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-transforms) |
    /// [R](https://plot.ly/r/reference/#scatter3d-transforms)
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
    public var x: [Double]?

    /// Sets the y coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-y) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-y) |
    /// [R](https://plot.ly/r/reference/#scatter3d-y)
    public var y: [Double]?

    /// Sets the z coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-z) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-z) |
    /// [R](https://plot.ly/r/reference/#scatter3d-z)
    public var z: [Double]?

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
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-texttemplate) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-texttemplate) |
    /// [R](https://plot.ly/r/reference/#scatter3d-texttemplate)
    public var textTemplate: String?

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
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-hovertemplate) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-hovertemplate) |
    /// [R](https://plot.ly/r/reference/#scatter3d-hovertemplate)
    public var hoverTemplate: String?

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
    public var mode: Mode0?

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
    /// # Used By
    /// `Scatter3D.projection` |
    public struct Projection: Encodable {
        ///
        /// # Used By
        /// `Scatter3D.Projection.x` |
        public struct X: Encodable {
            /// Sets whether or not projections are shown along the x axis.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-projection-x-show) |
            /// [Python](https://plot.ly/python/reference/#scatter3d-projection-x-show) |
            /// [R](https://plot.ly/r/reference/#scatter3d-projection-x-show)
            public var show: Bool?
        
            /// Sets the projection color.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-projection-x-opacity) |
            /// [Python](https://plot.ly/python/reference/#scatter3d-projection-x-opacity) |
            /// [R](https://plot.ly/r/reference/#scatter3d-projection-x-opacity)
            public var opacity: Double?
        
            /// Sets the scale factor determining the size of the projection marker points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-projection-x-scale) |
            /// [Python](https://plot.ly/python/reference/#scatter3d-projection-x-scale) |
            /// [R](https://plot.ly/r/reference/#scatter3d-projection-x-scale)
            public var scale: Double?
        
            public init(show: Bool? = nil, opacity: Double? = nil, scale: Double? = nil) {
                self.show = show
                self.opacity = opacity
                self.scale = scale
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-projection-x) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-projection-x) |
        /// [R](https://plot.ly/r/reference/#scatter3d-projection-x)
        public var x: X?
    
        ///
        /// # Used By
        /// `Scatter3D.Projection.y` |
        public struct Y: Encodable {
            /// Sets whether or not projections are shown along the y axis.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-projection-y-show) |
            /// [Python](https://plot.ly/python/reference/#scatter3d-projection-y-show) |
            /// [R](https://plot.ly/r/reference/#scatter3d-projection-y-show)
            public var show: Bool?
        
            /// Sets the projection color.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-projection-y-opacity) |
            /// [Python](https://plot.ly/python/reference/#scatter3d-projection-y-opacity) |
            /// [R](https://plot.ly/r/reference/#scatter3d-projection-y-opacity)
            public var opacity: Double?
        
            /// Sets the scale factor determining the size of the projection marker points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-projection-y-scale) |
            /// [Python](https://plot.ly/python/reference/#scatter3d-projection-y-scale) |
            /// [R](https://plot.ly/r/reference/#scatter3d-projection-y-scale)
            public var scale: Double?
        
            public init(show: Bool? = nil, opacity: Double? = nil, scale: Double? = nil) {
                self.show = show
                self.opacity = opacity
                self.scale = scale
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-projection-y) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-projection-y) |
        /// [R](https://plot.ly/r/reference/#scatter3d-projection-y)
        public var y: Y?
    
        ///
        /// # Used By
        /// `Scatter3D.Projection.z` |
        public struct Z: Encodable {
            /// Sets whether or not projections are shown along the z axis.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-projection-z-show) |
            /// [Python](https://plot.ly/python/reference/#scatter3d-projection-z-show) |
            /// [R](https://plot.ly/r/reference/#scatter3d-projection-z-show)
            public var show: Bool?
        
            /// Sets the projection color.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-projection-z-opacity) |
            /// [Python](https://plot.ly/python/reference/#scatter3d-projection-z-opacity) |
            /// [R](https://plot.ly/r/reference/#scatter3d-projection-z-opacity)
            public var opacity: Double?
        
            /// Sets the scale factor determining the size of the projection marker points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-projection-z-scale) |
            /// [Python](https://plot.ly/python/reference/#scatter3d-projection-z-scale) |
            /// [R](https://plot.ly/r/reference/#scatter3d-projection-z-scale)
            public var scale: Double?
        
            public init(show: Bool? = nil, opacity: Double? = nil, scale: Double? = nil) {
                self.show = show
                self.opacity = opacity
                self.scale = scale
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-projection-z) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-projection-z) |
        /// [R](https://plot.ly/r/reference/#scatter3d-projection-z)
        public var z: Z?
    
        public init(x: X? = nil, y: Y? = nil, z: Z? = nil) {
            self.x = x
            self.y = y
            self.z = z
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-projection) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-projection) |
    /// [R](https://plot.ly/r/reference/#scatter3d-projection)
    public var projection: Projection?

    /// Determines whether or not gaps (i.e. 
    ///
    /// {nan} or missing values) in the provided data arrays are connected.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-connectgaps) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-connectgaps) |
    /// [R](https://plot.ly/r/reference/#scatter3d-connectgaps)
    public var connectGaps: Bool?

    ///
    /// # Used By
    /// `Scatter3D.line` |
    public struct Line: Encodable {
        /// Sets the line width (in px).
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-line-width) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-line-width) |
        /// [R](https://plot.ly/r/reference/#scatter3d-line-width)
        public var width: Double?
    
        /// Sets the dash style of the lines.
        ///
        /// # Used By
        /// `Scatter3D.Line.dash` |
        public enum Dash: String, Encodable {
            case solid
            case dot
            case dash
            case longDash = "longdash"
            case dashDot = "dashdot"
            case longDashDot = "longdashdot"
        }
        /// Sets the dash style of the lines.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-line-dash) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-line-dash) |
        /// [R](https://plot.ly/r/reference/#scatter3d-line-dash)
        public var dash: Dash?
    
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
        public var color: Color?
    
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
        public var colorBar: ColorBar0?
    
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
    
        /// Sets the source reference on plot.ly for  color .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-line-colorsrc) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-line-colorsrc) |
        /// [R](https://plot.ly/r/reference/#scatter3d-line-colorsrc)
        public var colorSource: String?
    
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
            case colorSource = "colorsrc"
        }
        
        public init(width: Double? = nil, dash: Dash? = nil, color: Color? = nil, cAuto: Bool? = nil, cMin: Double? = nil, cMax: Double? = nil, cMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: ColorBar0? = nil, colorAxis: SubPlotID? = nil, colorSource: String? = nil) {
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
            self.colorSource = colorSource
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-line) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-line) |
    /// [R](https://plot.ly/r/reference/#scatter3d-line)
    public var line: Line?

    ///
    /// # Used By
    /// `Scatter3D.marker` |
    public struct Marker: Encodable {
        /// Sets the marker symbol type.
        ///
        /// # Used By
        /// `Scatter3D.Marker.symbol` |
        public enum Symbol: String, Encodable {
            case circle
            case circleOpen = "circle-open"
            case square
            case squareOpen = "square-open"
            case diamond
            case diamondOpen = "diamond-open"
            case cross
            case x
        }
        /// Sets the marker symbol type.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-symbol) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-marker-symbol) |
        /// [R](https://plot.ly/r/reference/#scatter3d-marker-symbol)
        public var symbol: Symbol?
    
        /// Sets the marker size (in px).
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-size) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-marker-size) |
        /// [R](https://plot.ly/r/reference/#scatter3d-marker-size)
        public var size: Double?
    
        /// Has an effect only if `marker.size` is set to a numerical array. 
        ///
        /// Sets the scale factor used to determine the rendered size of marker points. Use with `sizemin`
        /// and `sizemode`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-sizeref) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-marker-sizeref) |
        /// [R](https://plot.ly/r/reference/#scatter3d-marker-sizeref)
        public var sizeReference: Double?
    
        /// Has an effect only if `marker.size` is set to a numerical array. 
        ///
        /// Sets the minimum size (in px) of the rendered marker points.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-sizemin) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-marker-sizemin) |
        /// [R](https://plot.ly/r/reference/#scatter3d-marker-sizemin)
        public var sizeMin: Double?
    
        /// Has an effect only if `marker.size` is set to a numerical array. 
        ///
        /// Sets the rule for which the data in `size` is converted to pixels.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-sizemode) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-marker-sizemode) |
        /// [R](https://plot.ly/r/reference/#scatter3d-marker-sizemode)
        public var sizeMode: SizeMode0?
    
        /// Sets the marker opacity. 
        ///
        /// Note that the marker opacity for scatter3d traces must be a scalar value for performance
        /// reasons. To set a blending opacity value (i.e. which is not transparent), set *marker.color* to
        /// an rgba color and use its alpha channel.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-opacity) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-marker-opacity) |
        /// [R](https://plot.ly/r/reference/#scatter3d-marker-opacity)
        public var opacity: Double?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-colorbar) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-marker-colorbar) |
        /// [R](https://plot.ly/r/reference/#scatter3d-marker-colorbar)
        public var colorBar: ColorBar0?
    
        ///
        /// # Used By
        /// `Scatter3D.Marker.line` |
        public struct Line: Encodable {
            /// Sets the width (in px) of the lines bounding the marker points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-line-width) |
            /// [Python](https://plot.ly/python/reference/#scatter3d-marker-line-width) |
            /// [R](https://plot.ly/r/reference/#scatter3d-marker-line-width)
            public var width: Double?
        
            /// Sets themarker.linecolor. 
            ///
            /// It accepts either a specific color or an array of numbers that are mapped to the colorscale
            /// relative to the max and min values of the array or relative to `marker.line.cmin` and
            /// `marker.line.cmax` if set.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-line-color) |
            /// [Python](https://plot.ly/python/reference/#scatter3d-marker-line-color) |
            /// [R](https://plot.ly/r/reference/#scatter3d-marker-line-color)
            public var color: Color?
        
            /// Determines whether or not the color domain is computed with respect to the input data (here in `marker.line.color`) or the bounds set in `marker.line.cmin` and `marker.line.cmax`  Has an effect only if in `marker.line.color`is set to a numerical array. 
            ///
            /// Defaults to `false` when `marker.line.cmin` and `marker.line.cmax` are set by the user.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-line-cauto) |
            /// [Python](https://plot.ly/python/reference/#scatter3d-marker-line-cauto) |
            /// [R](https://plot.ly/r/reference/#scatter3d-marker-line-cauto)
            public var cAuto: Bool?
        
            /// Sets the lower bound of the color domain. 
            ///
            /// Has an effect only if in `marker.line.color`is set to a numerical array. Value should have the
            /// same units as in `marker.line.color` and if set, `marker.line.cmax` must be set as well.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-line-cmin) |
            /// [Python](https://plot.ly/python/reference/#scatter3d-marker-line-cmin) |
            /// [R](https://plot.ly/r/reference/#scatter3d-marker-line-cmin)
            public var cMin: Double?
        
            /// Sets the upper bound of the color domain. 
            ///
            /// Has an effect only if in `marker.line.color`is set to a numerical array. Value should have the
            /// same units as in `marker.line.color` and if set, `marker.line.cmin` must be set as well.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-line-cmax) |
            /// [Python](https://plot.ly/python/reference/#scatter3d-marker-line-cmax) |
            /// [R](https://plot.ly/r/reference/#scatter3d-marker-line-cmax)
            public var cMax: Double?
        
            /// Sets the mid-point of the color domain by scaling `marker.line.cmin` and/or `marker.line.cmax` to be equidistant to this point. 
            ///
            /// Has an effect only if in `marker.line.color`is set to a numerical array. Value should have the
            /// same units as in `marker.line.color`. Has no effect when `marker.line.cauto` is `false`.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-line-cmid) |
            /// [Python](https://plot.ly/python/reference/#scatter3d-marker-line-cmid) |
            /// [R](https://plot.ly/r/reference/#scatter3d-marker-line-cmid)
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
            /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-line-colorscale) |
            /// [Python](https://plot.ly/python/reference/#scatter3d-marker-line-colorscale) |
            /// [R](https://plot.ly/r/reference/#scatter3d-marker-line-colorscale)
            public var colorScale: ColorScale?
        
            /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `marker.line.colorscale`. 
            ///
            /// Has an effect only if in `marker.line.color`is set to a numerical array. In case `colorscale` is
            /// unspecified or `autocolorscale` is true, the default palette will be chosen according to whether
            /// numbers in the `color` array are all positive, all negative or mixed.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-line-autocolorscale) |
            /// [Python](https://plot.ly/python/reference/#scatter3d-marker-line-autocolorscale) |
            /// [R](https://plot.ly/r/reference/#scatter3d-marker-line-autocolorscale)
            public var autoColorScale: Bool?
        
            /// Reverses the color mapping if true. 
            ///
            /// Has an effect only if in `marker.line.color`is set to a numerical array. If true,
            /// `marker.line.cmin` will correspond to the last color in the array and `marker.line.cmax` will
            /// correspond to the first color.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-line-reversescale) |
            /// [Python](https://plot.ly/python/reference/#scatter3d-marker-line-reversescale) |
            /// [R](https://plot.ly/r/reference/#scatter3d-marker-line-reversescale)
            public var reverseScale: Bool?
        
            /// Sets a reference to a shared color axis. 
            ///
            /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
            /// for these shared color axes are set in the layout, under `layout.coloraxis`,
            /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-line-coloraxis) |
            /// [Python](https://plot.ly/python/reference/#scatter3d-marker-line-coloraxis) |
            /// [R](https://plot.ly/r/reference/#scatter3d-marker-line-coloraxis)
            public var colorAxis: SubPlotID?
        
            /// Sets the source reference on plot.ly for  color .
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-line-colorsrc) |
            /// [Python](https://plot.ly/python/reference/#scatter3d-marker-line-colorsrc) |
            /// [R](https://plot.ly/r/reference/#scatter3d-marker-line-colorsrc)
            public var colorSource: String?
        
            /// Plotly compatible property encoding
            enum CodingKeys: String, CodingKey {
                case width
                case color
                case cAuto = "cauto"
                case cMin = "cmin"
                case cMax = "cmax"
                case cMiddle = "cmid"
                case colorScale = "colorscale"
                case autoColorScale = "autocolorscale"
                case reverseScale = "reversescale"
                case colorAxis = "coloraxis"
                case colorSource = "colorsrc"
            }
            
            public init(width: Double? = nil, color: Color? = nil, cAuto: Bool? = nil, cMin: Double? = nil, cMax: Double? = nil, cMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, colorAxis: SubPlotID? = nil, colorSource: String? = nil) {
                self.width = width
                self.color = color
                self.cAuto = cAuto
                self.cMin = cMin
                self.cMax = cMax
                self.cMiddle = cMiddle
                self.colorScale = colorScale
                self.autoColorScale = autoColorScale
                self.reverseScale = reverseScale
                self.colorAxis = colorAxis
                self.colorSource = colorSource
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-line) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-marker-line) |
        /// [R](https://plot.ly/r/reference/#scatter3d-marker-line)
        public var line: Line?
    
        /// Sets themarkercolor. 
        ///
        /// It accepts either a specific color or an array of numbers that are mapped to the colorscale
        /// relative to the max and min values of the array or relative to `marker.cmin` and `marker.cmax`
        /// if set.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-color) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-marker-color) |
        /// [R](https://plot.ly/r/reference/#scatter3d-marker-color)
        public var color: Color?
    
        /// Determines whether or not the color domain is computed with respect to the input data (here in `marker.color`) or the bounds set in `marker.cmin` and `marker.cmax`  Has an effect only if in `marker.color`is set to a numerical array. 
        ///
        /// Defaults to `false` when `marker.cmin` and `marker.cmax` are set by the user.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-cauto) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-marker-cauto) |
        /// [R](https://plot.ly/r/reference/#scatter3d-marker-cauto)
        public var cAuto: Bool?
    
        /// Sets the lower bound of the color domain. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
        /// units as in `marker.color` and if set, `marker.cmax` must be set as well.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-cmin) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-marker-cmin) |
        /// [R](https://plot.ly/r/reference/#scatter3d-marker-cmin)
        public var cMin: Double?
    
        /// Sets the upper bound of the color domain. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
        /// units as in `marker.color` and if set, `marker.cmin` must be set as well.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-cmax) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-marker-cmax) |
        /// [R](https://plot.ly/r/reference/#scatter3d-marker-cmax)
        public var cMax: Double?
    
        /// Sets the mid-point of the color domain by scaling `marker.cmin` and/or `marker.cmax` to be equidistant to this point. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
        /// units as in `marker.color`. Has no effect when `marker.cauto` is `false`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-cmid) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-marker-cmid) |
        /// [R](https://plot.ly/r/reference/#scatter3d-marker-cmid)
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
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-colorscale) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-marker-colorscale) |
        /// [R](https://plot.ly/r/reference/#scatter3d-marker-colorscale)
        public var colorScale: ColorScale?
    
        /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `marker.colorscale`. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. In case `colorscale` is
        /// unspecified or `autocolorscale` is true, the default palette will be chosen according to whether
        /// numbers in the `color` array are all positive, all negative or mixed.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-autocolorscale) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-marker-autocolorscale) |
        /// [R](https://plot.ly/r/reference/#scatter3d-marker-autocolorscale)
        public var autoColorScale: Bool?
    
        /// Reverses the color mapping if true. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. If true, `marker.cmin` will
        /// correspond to the last color in the array and `marker.cmax` will correspond to the first color.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-reversescale) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-marker-reversescale) |
        /// [R](https://plot.ly/r/reference/#scatter3d-marker-reversescale)
        public var reverseScale: Bool?
    
        /// Determines whether or not a colorbar is displayed for this trace. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-showscale) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-marker-showscale) |
        /// [R](https://plot.ly/r/reference/#scatter3d-marker-showscale)
        public var showScale: Bool?
    
        /// Sets a reference to a shared color axis. 
        ///
        /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
        /// for these shared color axes are set in the layout, under `layout.coloraxis`,
        /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-coloraxis) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-marker-coloraxis) |
        /// [R](https://plot.ly/r/reference/#scatter3d-marker-coloraxis)
        public var colorAxis: SubPlotID?
    
        /// Sets the source reference on plot.ly for  symbol .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-symbolsrc) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-marker-symbolsrc) |
        /// [R](https://plot.ly/r/reference/#scatter3d-marker-symbolsrc)
        public var symbolSource: String?
    
        /// Sets the source reference on plot.ly for  size .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-sizesrc) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-marker-sizesrc) |
        /// [R](https://plot.ly/r/reference/#scatter3d-marker-sizesrc)
        public var sizeSource: String?
    
        /// Sets the source reference on plot.ly for  color .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker-colorsrc) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-marker-colorsrc) |
        /// [R](https://plot.ly/r/reference/#scatter3d-marker-colorsrc)
        public var colorSource: String?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case symbol
            case size
            case sizeReference = "sizeref"
            case sizeMin = "sizemin"
            case sizeMode = "sizemode"
            case opacity
            case colorBar = "colorbar"
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
            case colorAxis = "coloraxis"
            case symbolSource = "symbolsrc"
            case sizeSource = "sizesrc"
            case colorSource = "colorsrc"
        }
        
        public init(symbol: Symbol? = nil, size: Double? = nil, sizeReference: Double? = nil, sizeMin: Double? = nil, sizeMode: SizeMode0? = nil, opacity: Double? = nil, colorBar: ColorBar0? = nil, line: Line? = nil, color: Color? = nil, cAuto: Bool? = nil, cMin: Double? = nil, cMax: Double? = nil, cMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorAxis: SubPlotID? = nil, symbolSource: String? = nil, sizeSource: String? = nil, colorSource: String? = nil) {
            self.symbol = symbol
            self.size = size
            self.sizeReference = sizeReference
            self.sizeMin = sizeMin
            self.sizeMode = sizeMode
            self.opacity = opacity
            self.colorBar = colorBar
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
            self.colorAxis = colorAxis
            self.symbolSource = symbolSource
            self.sizeSource = sizeSource
            self.colorSource = colorSource
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-marker) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-marker) |
    /// [R](https://plot.ly/r/reference/#scatter3d-marker)
    public var marker: Marker?

    /// Sets the positions of the `text` elements with respects to the (x,y) coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-textposition) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-textposition) |
    /// [R](https://plot.ly/r/reference/#scatter3d-textposition)
    public var textPosition: TextPosition0?

    ///
    /// # Used By
    /// `Scatter.Selected0.textFont` |
    /// `Scatter.Unselected.textFont` |
    /// `Bar.Selected.textFont` |
    /// `Bar.Unselected.textFont` |
    /// `Histogram.Selected.textFont` |
    /// `Histogram.Unselected.textFont` |
    /// `ScatterTernary.Selected.textFont` |
    /// `ScatterTernary.Unselected.textFont` |
    /// `Scatter3D.textFont` |
    /// `ScatterGeo.Selected.textFont` |
    /// `ScatterGeo.Unselected.textFont` |
    /// `ScatterGL.Selected.textFont` |
    /// `ScatterGL.Unselected.textFont` |
    /// `ScatterCarpet.Selected.textFont` |
    /// `ScatterCarpet.Unselected.textFont` |
    /// `ScatterPolar.Selected.textFont` |
    /// `ScatterPolar.Unselected.textFont` |
    /// `ScatterPolarGL.Selected.textFont` |
    /// `ScatterPolarGL.Unselected.textFont` |
    /// `BarPolar.Selected.textFont` |
    /// `BarPolar.Unselected.textFont` |
    public struct TextFont: Encodable {
        /// Sets the text font color of selected points.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter-selected-textfont-color) |
        /// [Python](https://plot.ly/python/reference/#scatter-selected-textfont-color) |
        /// [R](https://plot.ly/r/reference/#scatter-selected-textfont-color)
        public var color: Color?
    
        public init(color: Color? = nil) {
            self.color = color
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-textfont) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-textfont) |
    /// [R](https://plot.ly/r/reference/#scatter3d-textfont)
    public var textFont: TextFont?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-hoverinfo) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-hoverinfo) |
    /// [R](https://plot.ly/r/reference/#scatter3d-hoverinfo)
    public var hoverInfo: HoverInfo0?

    ///
    /// # Used By
    /// `Scatter3D.xError` |
    public struct XError: Encodable {
        /// Determines whether or not this set of error bars is visible.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_x-visible) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-error_x-visible) |
        /// [R](https://plot.ly/r/reference/#scatter3d-error_x-visible)
        public var visible: Bool?
    
        /// Determines the rule used to generate the error bars. 
        ///
        /// If *constant`, the bar lengths are of a constant value. Set this constant in `value`. If
        /// *percent*, the bar lengths correspond to a percentage of underlying data. Set this percentage in
        /// `value`. If *sqrt*, the bar lengths correspond to the sqaure of the underlying data. If *data*,
        /// the bar lengths are set with data set `array`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_x-type) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-error_x-type) |
        /// [R](https://plot.ly/r/reference/#scatter3d-error_x-type)
        public var type: Rule1?
    
        /// Determines whether or not the error bars have the same length in both direction (top/bottom for vertical bars, left/right for horizontal bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_x-symmetric) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-error_x-symmetric) |
        /// [R](https://plot.ly/r/reference/#scatter3d-error_x-symmetric)
        public var symmetric: Bool?
    
        /// Sets the data corresponding the length of each error bar. 
        ///
        /// Values are plotted relative to the underlying data.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_x-array) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-error_x-array) |
        /// [R](https://plot.ly/r/reference/#scatter3d-error_x-array)
        public var array: [Double]?
    
        /// Sets the data corresponding the length of each error bar in the bottom (left) direction for vertical (horizontal) bars Values are plotted relative to the underlying data.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_x-arrayminus) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-error_x-arrayminus) |
        /// [R](https://plot.ly/r/reference/#scatter3d-error_x-arrayminus)
        public var arrayMinus: [Double]?
    
        /// Sets the value of either the percentage (if `type` is set to *percent*) or the constant (if `type` is set to *constant*) corresponding to the lengths of the error bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_x-value) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-error_x-value) |
        /// [R](https://plot.ly/r/reference/#scatter3d-error_x-value)
        public var value: Double?
    
        /// Sets the value of either the percentage (if `type` is set to *percent*) or the constant (if `type` is set to *constant*) corresponding to the lengths of the error bars in the bottom (left) direction for vertical (horizontal) bars
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_x-valueminus) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-error_x-valueminus) |
        /// [R](https://plot.ly/r/reference/#scatter3d-error_x-valueminus)
        public var valueMinus: Double?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_x-traceref) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-error_x-traceref) |
        /// [R](https://plot.ly/r/reference/#scatter3d-error_x-traceref)
        public var traceReference: Int?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_x-tracerefminus) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-error_x-tracerefminus) |
        /// [R](https://plot.ly/r/reference/#scatter3d-error_x-tracerefminus)
        public var traceReferenceMinus: Int?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_x-copy_zstyle) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-error_x-copy_zstyle) |
        /// [R](https://plot.ly/r/reference/#scatter3d-error_x-copy_zstyle)
        public var zCopyStyle: Bool?
    
        /// Sets the stoke color of the error bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_x-color) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-error_x-color) |
        /// [R](https://plot.ly/r/reference/#scatter3d-error_x-color)
        public var color: Color?
    
        /// Sets the thickness (in px) of the error bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_x-thickness) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-error_x-thickness) |
        /// [R](https://plot.ly/r/reference/#scatter3d-error_x-thickness)
        public var thickness: Double?
    
        /// Sets the width (in px) of the cross-bar at both ends of the error bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_x-width) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-error_x-width) |
        /// [R](https://plot.ly/r/reference/#scatter3d-error_x-width)
        public var width: Double?
    
        /// Sets the source reference on plot.ly for  array .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_x-arraysrc) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-error_x-arraysrc) |
        /// [R](https://plot.ly/r/reference/#scatter3d-error_x-arraysrc)
        public var arraySource: String?
    
        /// Sets the source reference on plot.ly for  arrayminus .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_x-arrayminussrc) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-error_x-arrayminussrc) |
        /// [R](https://plot.ly/r/reference/#scatter3d-error_x-arrayminussrc)
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
            case zCopyStyle = "copy_zstyle"
            case color
            case thickness
            case width
            case arraySource = "arraysrc"
            case arrayMinusSource = "arrayminussrc"
        }
        
        public init(visible: Bool? = nil, type: Rule1? = nil, symmetric: Bool? = nil, array: [Double]? = nil, arrayMinus: [Double]? = nil, value: Double? = nil, valueMinus: Double? = nil, traceReference: Int? = nil, traceReferenceMinus: Int? = nil, zCopyStyle: Bool? = nil, color: Color? = nil, thickness: Double? = nil, width: Double? = nil, arraySource: String? = nil, arrayMinusSource: String? = nil) {
            self.visible = visible
            self.type = type
            self.symmetric = symmetric
            self.array = array
            self.arrayMinus = arrayMinus
            self.value = value
            self.valueMinus = valueMinus
            self.traceReference = traceReference
            self.traceReferenceMinus = traceReferenceMinus
            self.zCopyStyle = zCopyStyle
            self.color = color
            self.thickness = thickness
            self.width = width
            self.arraySource = arraySource
            self.arrayMinusSource = arrayMinusSource
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_x) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-error_x) |
    /// [R](https://plot.ly/r/reference/#scatter3d-error_x)
    public var xError: XError?

    ///
    /// # Used By
    /// `Scatter3D.yError` |
    public struct YError: Encodable {
        /// Determines whether or not this set of error bars is visible.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_y-visible) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-error_y-visible) |
        /// [R](https://plot.ly/r/reference/#scatter3d-error_y-visible)
        public var visible: Bool?
    
        /// Determines the rule used to generate the error bars. 
        ///
        /// If *constant`, the bar lengths are of a constant value. Set this constant in `value`. If
        /// *percent*, the bar lengths correspond to a percentage of underlying data. Set this percentage in
        /// `value`. If *sqrt*, the bar lengths correspond to the sqaure of the underlying data. If *data*,
        /// the bar lengths are set with data set `array`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_y-type) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-error_y-type) |
        /// [R](https://plot.ly/r/reference/#scatter3d-error_y-type)
        public var type: Rule1?
    
        /// Determines whether or not the error bars have the same length in both direction (top/bottom for vertical bars, left/right for horizontal bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_y-symmetric) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-error_y-symmetric) |
        /// [R](https://plot.ly/r/reference/#scatter3d-error_y-symmetric)
        public var symmetric: Bool?
    
        /// Sets the data corresponding the length of each error bar. 
        ///
        /// Values are plotted relative to the underlying data.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_y-array) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-error_y-array) |
        /// [R](https://plot.ly/r/reference/#scatter3d-error_y-array)
        public var array: [Double]?
    
        /// Sets the data corresponding the length of each error bar in the bottom (left) direction for vertical (horizontal) bars Values are plotted relative to the underlying data.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_y-arrayminus) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-error_y-arrayminus) |
        /// [R](https://plot.ly/r/reference/#scatter3d-error_y-arrayminus)
        public var arrayMinus: [Double]?
    
        /// Sets the value of either the percentage (if `type` is set to *percent*) or the constant (if `type` is set to *constant*) corresponding to the lengths of the error bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_y-value) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-error_y-value) |
        /// [R](https://plot.ly/r/reference/#scatter3d-error_y-value)
        public var value: Double?
    
        /// Sets the value of either the percentage (if `type` is set to *percent*) or the constant (if `type` is set to *constant*) corresponding to the lengths of the error bars in the bottom (left) direction for vertical (horizontal) bars
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_y-valueminus) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-error_y-valueminus) |
        /// [R](https://plot.ly/r/reference/#scatter3d-error_y-valueminus)
        public var valueMinus: Double?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_y-traceref) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-error_y-traceref) |
        /// [R](https://plot.ly/r/reference/#scatter3d-error_y-traceref)
        public var traceReference: Int?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_y-tracerefminus) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-error_y-tracerefminus) |
        /// [R](https://plot.ly/r/reference/#scatter3d-error_y-tracerefminus)
        public var traceReferenceMinus: Int?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_y-copy_zstyle) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-error_y-copy_zstyle) |
        /// [R](https://plot.ly/r/reference/#scatter3d-error_y-copy_zstyle)
        public var zCopyStyle: Bool?
    
        /// Sets the stoke color of the error bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_y-color) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-error_y-color) |
        /// [R](https://plot.ly/r/reference/#scatter3d-error_y-color)
        public var color: Color?
    
        /// Sets the thickness (in px) of the error bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_y-thickness) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-error_y-thickness) |
        /// [R](https://plot.ly/r/reference/#scatter3d-error_y-thickness)
        public var thickness: Double?
    
        /// Sets the width (in px) of the cross-bar at both ends of the error bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_y-width) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-error_y-width) |
        /// [R](https://plot.ly/r/reference/#scatter3d-error_y-width)
        public var width: Double?
    
        /// Sets the source reference on plot.ly for  array .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_y-arraysrc) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-error_y-arraysrc) |
        /// [R](https://plot.ly/r/reference/#scatter3d-error_y-arraysrc)
        public var arraySource: String?
    
        /// Sets the source reference on plot.ly for  arrayminus .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_y-arrayminussrc) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-error_y-arrayminussrc) |
        /// [R](https://plot.ly/r/reference/#scatter3d-error_y-arrayminussrc)
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
            case zCopyStyle = "copy_zstyle"
            case color
            case thickness
            case width
            case arraySource = "arraysrc"
            case arrayMinusSource = "arrayminussrc"
        }
        
        public init(visible: Bool? = nil, type: Rule1? = nil, symmetric: Bool? = nil, array: [Double]? = nil, arrayMinus: [Double]? = nil, value: Double? = nil, valueMinus: Double? = nil, traceReference: Int? = nil, traceReferenceMinus: Int? = nil, zCopyStyle: Bool? = nil, color: Color? = nil, thickness: Double? = nil, width: Double? = nil, arraySource: String? = nil, arrayMinusSource: String? = nil) {
            self.visible = visible
            self.type = type
            self.symmetric = symmetric
            self.array = array
            self.arrayMinus = arrayMinus
            self.value = value
            self.valueMinus = valueMinus
            self.traceReference = traceReference
            self.traceReferenceMinus = traceReferenceMinus
            self.zCopyStyle = zCopyStyle
            self.color = color
            self.thickness = thickness
            self.width = width
            self.arraySource = arraySource
            self.arrayMinusSource = arrayMinusSource
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_y) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-error_y) |
    /// [R](https://plot.ly/r/reference/#scatter3d-error_y)
    public var yError: YError?

    ///
    /// # Used By
    /// `Scatter3D.zError` |
    public struct ZError: Encodable {
        /// Determines whether or not this set of error bars is visible.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_z-visible) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-error_z-visible) |
        /// [R](https://plot.ly/r/reference/#scatter3d-error_z-visible)
        public var visible: Bool?
    
        /// Determines the rule used to generate the error bars. 
        ///
        /// If *constant`, the bar lengths are of a constant value. Set this constant in `value`. If
        /// *percent*, the bar lengths correspond to a percentage of underlying data. Set this percentage in
        /// `value`. If *sqrt*, the bar lengths correspond to the sqaure of the underlying data. If *data*,
        /// the bar lengths are set with data set `array`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_z-type) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-error_z-type) |
        /// [R](https://plot.ly/r/reference/#scatter3d-error_z-type)
        public var type: Rule1?
    
        /// Determines whether or not the error bars have the same length in both direction (top/bottom for vertical bars, left/right for horizontal bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_z-symmetric) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-error_z-symmetric) |
        /// [R](https://plot.ly/r/reference/#scatter3d-error_z-symmetric)
        public var symmetric: Bool?
    
        /// Sets the data corresponding the length of each error bar. 
        ///
        /// Values are plotted relative to the underlying data.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_z-array) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-error_z-array) |
        /// [R](https://plot.ly/r/reference/#scatter3d-error_z-array)
        public var array: [Double]?
    
        /// Sets the data corresponding the length of each error bar in the bottom (left) direction for vertical (horizontal) bars Values are plotted relative to the underlying data.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_z-arrayminus) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-error_z-arrayminus) |
        /// [R](https://plot.ly/r/reference/#scatter3d-error_z-arrayminus)
        public var arrayMinus: [Double]?
    
        /// Sets the value of either the percentage (if `type` is set to *percent*) or the constant (if `type` is set to *constant*) corresponding to the lengths of the error bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_z-value) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-error_z-value) |
        /// [R](https://plot.ly/r/reference/#scatter3d-error_z-value)
        public var value: Double?
    
        /// Sets the value of either the percentage (if `type` is set to *percent*) or the constant (if `type` is set to *constant*) corresponding to the lengths of the error bars in the bottom (left) direction for vertical (horizontal) bars
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_z-valueminus) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-error_z-valueminus) |
        /// [R](https://plot.ly/r/reference/#scatter3d-error_z-valueminus)
        public var valueMinus: Double?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_z-traceref) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-error_z-traceref) |
        /// [R](https://plot.ly/r/reference/#scatter3d-error_z-traceref)
        public var traceReference: Int?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_z-tracerefminus) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-error_z-tracerefminus) |
        /// [R](https://plot.ly/r/reference/#scatter3d-error_z-tracerefminus)
        public var traceReferenceMinus: Int?
    
        /// Sets the stoke color of the error bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_z-color) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-error_z-color) |
        /// [R](https://plot.ly/r/reference/#scatter3d-error_z-color)
        public var color: Color?
    
        /// Sets the thickness (in px) of the error bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_z-thickness) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-error_z-thickness) |
        /// [R](https://plot.ly/r/reference/#scatter3d-error_z-thickness)
        public var thickness: Double?
    
        /// Sets the width (in px) of the cross-bar at both ends of the error bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_z-width) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-error_z-width) |
        /// [R](https://plot.ly/r/reference/#scatter3d-error_z-width)
        public var width: Double?
    
        /// Sets the source reference on plot.ly for  array .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_z-arraysrc) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-error_z-arraysrc) |
        /// [R](https://plot.ly/r/reference/#scatter3d-error_z-arraysrc)
        public var arraySource: String?
    
        /// Sets the source reference on plot.ly for  arrayminus .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_z-arrayminussrc) |
        /// [Python](https://plot.ly/python/reference/#scatter3d-error_z-arrayminussrc) |
        /// [R](https://plot.ly/r/reference/#scatter3d-error_z-arrayminussrc)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-error_z) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-error_z) |
    /// [R](https://plot.ly/r/reference/#scatter3d-error_z)
    public var zError: ZError?

    /// Sets the calendar system to use with `x` date data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-xcalendar) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-xcalendar) |
    /// [R](https://plot.ly/r/reference/#scatter3d-xcalendar)
    public var xCalendar: Calendar0?

    /// Sets the calendar system to use with `y` date data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-ycalendar) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-ycalendar) |
    /// [R](https://plot.ly/r/reference/#scatter3d-ycalendar)
    public var yCalendar: Calendar0?

    /// Sets the calendar system to use with `z` date data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-zcalendar) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-zcalendar) |
    /// [R](https://plot.ly/r/reference/#scatter3d-zcalendar)
    public var zCalendar: Calendar0?

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

    /// Sets the source reference on plot.ly for  ids .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-idssrc) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-idssrc) |
    /// [R](https://plot.ly/r/reference/#scatter3d-idssrc)
    public var idsSource: String?

    /// Sets the source reference on plot.ly for  customdata .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-customdatasrc) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-customdatasrc) |
    /// [R](https://plot.ly/r/reference/#scatter3d-customdatasrc)
    public var customDataSource: String?

    /// Sets the source reference on plot.ly for  meta .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-metasrc) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-metasrc) |
    /// [R](https://plot.ly/r/reference/#scatter3d-metasrc)
    public var metaSource: String?

    /// Sets the source reference on plot.ly for  x .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-xsrc) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-xsrc) |
    /// [R](https://plot.ly/r/reference/#scatter3d-xsrc)
    public var xSource: String?

    /// Sets the source reference on plot.ly for  y .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-ysrc) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-ysrc) |
    /// [R](https://plot.ly/r/reference/#scatter3d-ysrc)
    public var ySource: String?

    /// Sets the source reference on plot.ly for  z .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-zsrc) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-zsrc) |
    /// [R](https://plot.ly/r/reference/#scatter3d-zsrc)
    public var zSource: String?

    /// Sets the source reference on plot.ly for  text .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-textsrc) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-textsrc) |
    /// [R](https://plot.ly/r/reference/#scatter3d-textsrc)
    public var textSource: String?

    /// Sets the source reference on plot.ly for  texttemplate .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-texttemplatesrc) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-texttemplatesrc) |
    /// [R](https://plot.ly/r/reference/#scatter3d-texttemplatesrc)
    public var textTemplateSource: String?

    /// Sets the source reference on plot.ly for  hovertext .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-hovertextsrc) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-hovertextsrc) |
    /// [R](https://plot.ly/r/reference/#scatter3d-hovertextsrc)
    public var hoverTextSource: String?

    /// Sets the source reference on plot.ly for  hovertemplate .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-hovertemplatesrc) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-hovertemplatesrc) |
    /// [R](https://plot.ly/r/reference/#scatter3d-hovertemplatesrc)
    public var hoverTemplateSource: String?

    /// Sets the source reference on plot.ly for  textposition .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-textpositionsrc) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-textpositionsrc) |
    /// [R](https://plot.ly/r/reference/#scatter3d-textpositionsrc)
    public var textPositionSource: String?

    /// Sets the source reference on plot.ly for  hoverinfo .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatter3d-hoverinfosrc) |
    /// [Python](https://plot.ly/python/reference/#scatter3d-hoverinfosrc) |
    /// [R](https://plot.ly/r/reference/#scatter3d-hoverinfosrc)
    public var hoverInfoSource: String?

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
        case idsSource = "idssrc"
        case customDataSource = "customdatasrc"
        case metaSource = "metasrc"
        case xSource = "xsrc"
        case ySource = "ysrc"
        case zSource = "zsrc"
        case textSource = "textsrc"
        case textTemplateSource = "texttemplatesrc"
        case hoverTextSource = "hovertextsrc"
        case hoverTemplateSource = "hovertemplatesrc"
        case textPositionSource = "textpositionsrc"
        case hoverInfoSource = "hoverinfosrc"
    }
    
    public init(visible: Visible0? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, hoverLabel: HoverLabel0? = nil, stream: Stream0? = nil, transforms: Transforms0? = nil, uiRevision: Anything? = nil, x: [Double]? = nil, y: [Double]? = nil, z: [Double]? = nil, text: String? = nil, textTemplate: String? = nil, hoverText: String? = nil, hoverTemplate: String? = nil, mode: Mode0? = nil, surfaceAxis: SurfaceAxis? = nil, surfaceColor: Color? = nil, projection: Projection? = nil, connectGaps: Bool? = nil, line: Line? = nil, marker: Marker? = nil, textPosition: TextPosition0? = nil, textFont: TextFont? = nil, hoverInfo: HoverInfo0? = nil, xError: XError? = nil, yError: YError? = nil, zError: ZError? = nil, xCalendar: Calendar0? = nil, yCalendar: Calendar0? = nil, zCalendar: Calendar0? = nil, scene: SubPlotID? = nil, idsSource: String? = nil, customDataSource: String? = nil, metaSource: String? = nil, xSource: String? = nil, ySource: String? = nil, zSource: String? = nil, textSource: String? = nil, textTemplateSource: String? = nil, hoverTextSource: String? = nil, hoverTemplateSource: String? = nil, textPositionSource: String? = nil, hoverInfoSource: String? = nil) {
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
        self.idsSource = idsSource
        self.customDataSource = customDataSource
        self.metaSource = metaSource
        self.xSource = xSource
        self.ySource = ySource
        self.zSource = zSource
        self.textSource = textSource
        self.textTemplateSource = textTemplateSource
        self.hoverTextSource = hoverTextSource
        self.hoverTemplateSource = hoverTemplateSource
        self.textPositionSource = textPositionSource
        self.hoverInfoSource = hoverInfoSource
    }
}