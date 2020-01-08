/// The data visualized as scatter point or lines is set in `x` and `y` using the WebGL plotting engine. 
///
/// Bubble charts are achieved by setting `marker.size` and/or `marker.color` to a numerical arrays.
public struct ScatterGL: Trace {
    public let type: String = "scattergl"

    public let animatable: Bool = false

    /// Determines whether or not this trace is visible. 
    ///
    /// If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the
    /// legend itself is visible).
    public var visible: Visible0?

    /// Determines whether or not an item corresponding to this trace is shown in the legend.
    public var showLegend: Bool?

    /// Sets the legend group for this trace. 
    ///
    /// Traces part of the same legend group hide/show at the same time when toggling legend items.
    public var legendGroup: String?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    public var ids: [Double]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    public var customData: [Double]?

    /// Assigns extra meta information associated with this trace that can be used in various text attributes. 
    ///
    /// Attributes such as trace `name`, graph, axis and colorbar `title.text`, annotation `text`
    /// `rangeselector`, `updatemenues` and `sliders` `label` text all support `meta`. To access the
    /// trace `meta` values in an attribute in the same trace, simply use `%{meta[i]}` where `i` is the
    /// index or key of the `meta` item in question. To access trace `meta` in layout attributes, use
    /// `%{data[n[.meta[i]}` where `i` is the index or key of the `meta` and `n` is the trace index.
    public var meta: Anything?

    /// Array containing integer indices of selected points. 
    ///
    /// Has an effect only for traces that support selections. Note that an empty array means an empty
    /// selection where the `unselected` are turned on for all points, whereas, any other non-array
    /// values means no selection all where the `selected` and `unselected` styles have no effect.
    public var selectedPoints: Anything?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    public var hoverInfo: HoverInfo0?

    public var hoverLabel: HoverLabel0?

    public var stream: Stream0?

    public var transforms: TickFormatStops0?

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
    public var uiRevision: Anything?

    /// Sets the x coordinates.
    public var x: [Double]?

    /// Alternate to `x`. 
    ///
    /// Builds a linear space of x coordinates. Use with `dx` where `x0` is the starting coordinate and
    /// `dx` the step.
    public var x0: Anything?

    /// Sets the x coordinate step. 
    ///
    /// See `x0` for more info.
    public var dx: Double?

    /// Sets the y coordinates.
    public var y: [Double]?

    /// Alternate to `y`. 
    ///
    /// Builds a linear space of y coordinates. Use with `dy` where `y0` is the starting coordinate and
    /// `dy` the step.
    public var y0: Anything?

    /// Sets the y coordinate step. 
    ///
    /// See `y0` for more info.
    public var dy: Double?

    /// Sets text elements associated with each (x,y) pair. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to the this trace's (x,y) coordinates. If trace `hoverinfo` contains a
    /// *text* flag and *hovertext* is not set, these elements will be seen in the hover labels.
    public var text: String?

    /// Sets hover text elements associated with each (x,y) pair. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to the this trace's (x,y) coordinates. To be seen, trace `hoverinfo`
    /// must contain a *text* flag.
    public var hoverText: String?

    /// Sets the positions of the `text` elements with respects to the (x,y) coordinates.
    public var textPosition: TextPosition0?

    /// Sets the text font.
    public var textFont: Font1?

    /// Determines the drawing mode for this scatter trace.
    public var mode: Mode0?

    /// - traces/scattergl/attributes/line
    public struct Line: Encodable {
        /// Sets the line color.
        public var color: Color?
    
        /// Sets the line width (in px).
        public var width: Double?
    
        /// Determines the line shape. 
        ///
        /// The values correspond to step-wise line shapes.
        /// - traces/scattergl/attributes/line/shape
        public enum Shape: String, Encodable {
            case linear
            case hv
            case vh
            case hvh
            case vhv
        }
        /// Determines the line shape. 
        ///
        /// The values correspond to step-wise line shapes.
        public var shape: Shape?
    
        /// Sets the style of the lines.
        /// - traces/scattergl/attributes/line/dash
        public enum Dash: String, Encodable {
            case solid
            case dot
            case dash
            case longDash = "longdash"
            case dashDot = "dashdot"
            case longDashDot = "longdashdot"
        }
        /// Sets the style of the lines.
        public var dash: Dash?
    
        public init(color: Color? = nil, width: Double? = nil, shape: Shape? = nil, dash: Dash? = nil) {
            self.color = color
            self.width = width
            self.shape = shape
            self.dash = dash
        }
    }
    public var line: Line?

    /// - traces/scattergl/attributes/marker
    public struct Marker: Encodable {
        /// Sets themarkercolor. 
        ///
        /// It accepts either a specific color or an array of numbers that are mapped to the colorscale
        /// relative to the max and min values of the array or relative to `marker.cmin` and `marker.cmax`
        /// if set.
        public var color: Color?
    
        /// Determines whether or not the color domain is computed with respect to the input data (here in `marker.color`) or the bounds set in `marker.cmin` and `marker.cmax`  Has an effect only if in `marker.color`is set to a numerical array. 
        ///
        /// Defaults to `false` when `marker.cmin` and `marker.cmax` are set by the user.
        public var cAuto: Bool?
    
        /// Sets the lower bound of the color domain. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
        /// units as in `marker.color` and if set, `marker.cmax` must be set as well.
        public var cMin: Double?
    
        /// Sets the upper bound of the color domain. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
        /// units as in `marker.color` and if set, `marker.cmin` must be set as well.
        public var cMax: Double?
    
        /// Sets the mid-point of the color domain by scaling `marker.cmin` and/or `marker.cmax` to be equidistant to this point. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
        /// units as in `marker.color`. Has no effect when `marker.cauto` is `false`.
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
        public var colorScale: ColorScale?
    
        /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `marker.colorscale`. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. In case `colorscale` is
        /// unspecified or `autocolorscale` is true, the default palette will be chosen according to whether
        /// numbers in the `color` array are all positive, all negative or mixed.
        public var autoColorScale: Bool?
    
        /// Reverses the color mapping if true. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. If true, `marker.cmin` will
        /// correspond to the last color in the array and `marker.cmax` will correspond to the first color.
        public var reverseScale: Bool?
    
        /// Determines whether or not a colorbar is displayed for this trace. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array.
        public var showScale: Bool?
    
        public var colorBar: ColorBar0?
    
        /// Sets a reference to a shared color axis. 
        ///
        /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
        /// for these shared color axes are set in the layout, under `layout.coloraxis`,
        /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
        public var colorAxis: SubPlotID?
    
        /// Sets the marker symbol type. 
        ///
        /// Adding 100 is equivalent to appending *-open* to a symbol name. Adding 200 is equivalent to
        /// appending *-dot* to a symbol name. Adding 300 is equivalent to appending *-open-dot* or
        /// *dot-open* to a symbol name.
        public var symbol: Symbol0?
    
        /// Sets the marker size (in px).
        public var size: Double?
    
        /// Has an effect only if `marker.size` is set to a numerical array. 
        ///
        /// Sets the scale factor used to determine the rendered size of marker points. Use with `sizemin`
        /// and `sizemode`.
        public var sizeReference: Double?
    
        /// Has an effect only if `marker.size` is set to a numerical array. 
        ///
        /// Sets the minimum size (in px) of the rendered marker points.
        public var sizeMin: Double?
    
        /// Has an effect only if `marker.size` is set to a numerical array. 
        ///
        /// Sets the rule for which the data in `size` is converted to pixels.
        public var sizeMode: SizeMode0?
    
        /// Sets the marker opacity.
        public var opacity: Double?
    
        /// - traces/scattergl/attributes/marker/line
        public struct Line: Encodable {
            /// Sets themarker.linecolor. 
            ///
            /// It accepts either a specific color or an array of numbers that are mapped to the colorscale
            /// relative to the max and min values of the array or relative to `marker.line.cmin` and
            /// `marker.line.cmax` if set.
            public var color: Color?
        
            /// Determines whether or not the color domain is computed with respect to the input data (here in `marker.line.color`) or the bounds set in `marker.line.cmin` and `marker.line.cmax`  Has an effect only if in `marker.line.color`is set to a numerical array. 
            ///
            /// Defaults to `false` when `marker.line.cmin` and `marker.line.cmax` are set by the user.
            public var cAuto: Bool?
        
            /// Sets the lower bound of the color domain. 
            ///
            /// Has an effect only if in `marker.line.color`is set to a numerical array. Value should have the
            /// same units as in `marker.line.color` and if set, `marker.line.cmax` must be set as well.
            public var cMin: Double?
        
            /// Sets the upper bound of the color domain. 
            ///
            /// Has an effect only if in `marker.line.color`is set to a numerical array. Value should have the
            /// same units as in `marker.line.color` and if set, `marker.line.cmin` must be set as well.
            public var cMax: Double?
        
            /// Sets the mid-point of the color domain by scaling `marker.line.cmin` and/or `marker.line.cmax` to be equidistant to this point. 
            ///
            /// Has an effect only if in `marker.line.color`is set to a numerical array. Value should have the
            /// same units as in `marker.line.color`. Has no effect when `marker.line.cauto` is `false`.
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
            public var colorScale: ColorScale?
        
            /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `marker.line.colorscale`. 
            ///
            /// Has an effect only if in `marker.line.color`is set to a numerical array. In case `colorscale` is
            /// unspecified or `autocolorscale` is true, the default palette will be chosen according to whether
            /// numbers in the `color` array are all positive, all negative or mixed.
            public var autoColorScale: Bool?
        
            /// Reverses the color mapping if true. 
            ///
            /// Has an effect only if in `marker.line.color`is set to a numerical array. If true,
            /// `marker.line.cmin` will correspond to the last color in the array and `marker.line.cmax` will
            /// correspond to the first color.
            public var reverseScale: Bool?
        
            /// Sets a reference to a shared color axis. 
            ///
            /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
            /// for these shared color axes are set in the layout, under `layout.coloraxis`,
            /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
            public var colorAxis: SubPlotID?
        
            /// Sets the width (in px) of the lines bounding the marker points.
            public var width: Double?
        
            /// Sets the source reference on plot.ly for  color .
            public var colorSource: String?
        
            /// Sets the source reference on plot.ly for  width .
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
        public var line: Line?
    
        /// Sets the source reference on plot.ly for  color .
        public var colorSource: String?
    
        /// Sets the source reference on plot.ly for  symbol .
        public var symbolSource: String?
    
        /// Sets the source reference on plot.ly for  size .
        public var sizeSource: String?
    
        /// Sets the source reference on plot.ly for  opacity .
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
    public var marker: Marker?

    /// Determines whether or not gaps (i.e. 
    ///
    /// {nan} or missing values) in the provided data arrays are connected.
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
    /// - traces/scattergl/attributes/fill
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
    public var fill: Fill?

    /// Sets the fill color. 
    ///
    /// Defaults to a half-transparent variant of the line color, marker color, or marker line color,
    /// whichever is available.
    public var fillColor: Color?

    public var selected: Selected0?

    public var unselected: Selected0?

    /// Sets the opacity of the trace.
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
    public var textTemplate: String?

    /// - traces/scattergl/attributes/error_x
    public struct XError: Encodable {
        /// Determines whether or not this set of error bars is visible.
        public var visible: Bool?
    
        /// Determines the rule used to generate the error bars. 
        ///
        /// If *constant`, the bar lengths are of a constant value. Set this constant in `value`. If
        /// *percent*, the bar lengths correspond to a percentage of underlying data. Set this percentage in
        /// `value`. If *sqrt*, the bar lengths correspond to the sqaure of the underlying data. If *data*,
        /// the bar lengths are set with data set `array`.
        public var type: Rule1?
    
        /// Determines whether or not the error bars have the same length in both direction (top/bottom for vertical bars, left/right for horizontal bars.
        public var symmetric: Bool?
    
        /// Sets the data corresponding the length of each error bar. 
        ///
        /// Values are plotted relative to the underlying data.
        public var array: [Double]?
    
        /// Sets the data corresponding the length of each error bar in the bottom (left) direction for vertical (horizontal) bars Values are plotted relative to the underlying data.
        public var arrayMinus: [Double]?
    
        /// Sets the value of either the percentage (if `type` is set to *percent*) or the constant (if `type` is set to *constant*) corresponding to the lengths of the error bars.
        public var value: Double?
    
        /// Sets the value of either the percentage (if `type` is set to *percent*) or the constant (if `type` is set to *constant*) corresponding to the lengths of the error bars in the bottom (left) direction for vertical (horizontal) bars
        public var valueMinus: Double?
    
        public var traceReference: Int?
    
        public var traceReferenceMinus: Int?
    
        public var yCopyStyle: Bool?
    
        /// Sets the stoke color of the error bars.
        public var color: Color?
    
        /// Sets the thickness (in px) of the error bars.
        public var thickness: Double?
    
        /// Sets the width (in px) of the cross-bar at both ends of the error bars.
        public var width: Double?
    
        /// Sets the source reference on plot.ly for  array .
        public var arraySource: String?
    
        /// Sets the source reference on plot.ly for  arrayminus .
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
    public var xError: XError?

    public var yError: YError0?

    /// Sets the calendar system to use with `x` date data.
    public var xCalendar: Calendar0?

    /// Sets the calendar system to use with `y` date data.
    public var yCalendar: Calendar0?

    /// Sets a reference between this trace's x coordinates and a 2D cartesian x axis. 
    ///
    /// If *x* (the default value), the x coordinates refer to `layout.xaxis`. If *x2*, the x
    /// coordinates refer to `layout.xaxis2`, and so on.
    public var xAxis: SubPlotID?

    /// Sets a reference between this trace's y coordinates and a 2D cartesian y axis. 
    ///
    /// If *y* (the default value), the y coordinates refer to `layout.yaxis`. If *y2*, the y
    /// coordinates refer to `layout.yaxis2`, and so on.
    public var yAxis: SubPlotID?

    /// Sets the source reference on plot.ly for  ids .
    public var idsSource: String?

    /// Sets the source reference on plot.ly for  customdata .
    public var customDataSource: String?

    /// Sets the source reference on plot.ly for  meta .
    public var metaSource: String?

    /// Sets the source reference on plot.ly for  hoverinfo .
    public var hoverInfoSource: String?

    /// Sets the source reference on plot.ly for  x .
    public var xSource: String?

    /// Sets the source reference on plot.ly for  y .
    public var ySource: String?

    /// Sets the source reference on plot.ly for  text .
    public var textSource: String?

    /// Sets the source reference on plot.ly for  hovertext .
    public var hoverTextSource: String?

    /// Sets the source reference on plot.ly for  textposition .
    public var textPositionSource: String?

    /// Sets the source reference on plot.ly for  hovertemplate .
    public var hoverTemplateSource: String?

    /// Sets the source reference on plot.ly for  texttemplate .
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
    
    public init(visible: Visible0? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, selectedPoints: Anything? = nil, hoverInfo: HoverInfo0? = nil, hoverLabel: HoverLabel0? = nil, stream: Stream0? = nil, transforms: TickFormatStops0? = nil, uiRevision: Anything? = nil, x: [Double]? = nil, x0: Anything? = nil, dx: Double? = nil, y: [Double]? = nil, y0: Anything? = nil, dy: Double? = nil, text: String? = nil, hoverText: String? = nil, textPosition: TextPosition0? = nil, textFont: Font1? = nil, mode: Mode0? = nil, line: Line? = nil, marker: Marker? = nil, connectGaps: Bool? = nil, fill: Fill? = nil, fillColor: Color? = nil, selected: Selected0? = nil, unselected: Selected0? = nil, opacity: Double? = nil, hoverTemplate: String? = nil, textTemplate: String? = nil, xError: XError? = nil, yError: YError0? = nil, xCalendar: Calendar0? = nil, yCalendar: Calendar0? = nil, xAxis: SubPlotID? = nil, yAxis: SubPlotID? = nil, idsSource: String? = nil, customDataSource: String? = nil, metaSource: String? = nil, hoverInfoSource: String? = nil, xSource: String? = nil, ySource: String? = nil, textSource: String? = nil, hoverTextSource: String? = nil, textPositionSource: String? = nil, hoverTemplateSource: String? = nil, textTemplateSource: String? = nil) {
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