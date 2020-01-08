/// The data visualized as scatter point or lines in 3D dimension is set in `x`, `y`, `z`. 
///
/// Text (appearing either on the chart or on hover only) is via `text`. Bubble charts are achieved
/// by setting `marker.size` and/or `marker.color` Projections are achieved via `projection`.
/// Surface fills are achieved via `surfaceaxis`.
public struct Scatter3D: Trace {
    public let type: String = "scatter3d"

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

    /// Sets the opacity of the trace.
    public var opacity: Double?

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

    /// Sets the y coordinates.
    public var y: [Double]?

    /// Sets the z coordinates.
    public var z: [Double]?

    /// Sets text elements associated with each (x,y,z) triplet. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to the this trace's (x,y,z) coordinates. If trace `hoverinfo` contains
    /// a *text* flag and *hovertext* is not set, these elements will be seen in the hover labels.
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
    public var textTemplate: String?

    /// Sets text elements associated with each (x,y,z) triplet. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to the this trace's (x,y,z) coordinates. To be seen, trace `hoverinfo`
    /// must contain a *text* flag.
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
    public var hoverTemplate: String?

    /// Determines the drawing mode for this scatter trace. 
    ///
    /// If the provided `mode` includes *text* then the `text` elements appear at the coordinates.
    /// Otherwise, the `text` elements appear on hover. If there are less than 20 points and the trace
    /// is not stacked then the default is *lines+markers*. Otherwise, *lines*.
    public var mode: Mode0?

    /// If *-1*, the scatter points are not fill with a surface If *0*, *1*, *2*, the scatter points are filled with a Delaunay surface about the x, y, z respectively.
    /// - traces/scatter3d/attributes/surfaceaxis
    public enum SurfaceAxis: Int, Encodable {
        case none = -1
        case x = 0
        case y = 1
        case z = 2
    }
    /// If *-1*, the scatter points are not fill with a surface If *0*, *1*, *2*, the scatter points are filled with a Delaunay surface about the x, y, z respectively.
    public var surfaceAxis: SurfaceAxis?

    /// Sets the surface fill color.
    public var surfaceColor: Color?

    public var projection: Up0?

    /// Determines whether or not gaps (i.e. 
    ///
    /// {nan} or missing values) in the provided data arrays are connected.
    public var connectGaps: Bool?

    /// - traces/scatter3d/attributes/line
    public struct Line: Encodable {
        /// Sets the line width (in px).
        public var width: Double?
    
        /// Sets the dash style of the lines.
        /// - traces/scatter3d/attributes/line/dash
        public enum Dash: String, Encodable {
            case solid
            case dot
            case dash
            case longDash = "longdash"
            case dashDot = "dashdot"
            case longDashDot = "longdashdot"
        }
        /// Sets the dash style of the lines.
        public var dash: Dash?
    
        /// Sets thelinecolor. 
        ///
        /// It accepts either a specific color or an array of numbers that are mapped to the colorscale
        /// relative to the max and min values of the array or relative to `line.cmin` and `line.cmax` if
        /// set.
        public var color: Color?
    
        /// Determines whether or not the color domain is computed with respect to the input data (here in `line.color`) or the bounds set in `line.cmin` and `line.cmax`  Has an effect only if in `line.color`is set to a numerical array. 
        ///
        /// Defaults to `false` when `line.cmin` and `line.cmax` are set by the user.
        public var cAuto: Bool?
    
        /// Sets the lower bound of the color domain. 
        ///
        /// Has an effect only if in `line.color`is set to a numerical array. Value should have the same
        /// units as in `line.color` and if set, `line.cmax` must be set as well.
        public var cMin: Double?
    
        /// Sets the upper bound of the color domain. 
        ///
        /// Has an effect only if in `line.color`is set to a numerical array. Value should have the same
        /// units as in `line.color` and if set, `line.cmin` must be set as well.
        public var cMax: Double?
    
        /// Sets the mid-point of the color domain by scaling `line.cmin` and/or `line.cmax` to be equidistant to this point. 
        ///
        /// Has an effect only if in `line.color`is set to a numerical array. Value should have the same
        /// units as in `line.color`. Has no effect when `line.cauto` is `false`.
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
        public var colorScale: ColorScale?
    
        /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `line.colorscale`. 
        ///
        /// Has an effect only if in `line.color`is set to a numerical array. In case `colorscale` is
        /// unspecified or `autocolorscale` is true, the default palette will be chosen according to whether
        /// numbers in the `color` array are all positive, all negative or mixed.
        public var autoColorScale: Bool?
    
        /// Reverses the color mapping if true. 
        ///
        /// Has an effect only if in `line.color`is set to a numerical array. If true, `line.cmin` will
        /// correspond to the last color in the array and `line.cmax` will correspond to the first color.
        public var reverseScale: Bool?
    
        /// Determines whether or not a colorbar is displayed for this trace. 
        ///
        /// Has an effect only if in `line.color`is set to a numerical array.
        public var showScale: Bool?
    
        public var colorBar: ColorBar0?
    
        /// Sets a reference to a shared color axis. 
        ///
        /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
        /// for these shared color axes are set in the layout, under `layout.coloraxis`,
        /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
        public var colorAxis: SubPlotID?
    
        /// Sets the source reference on plot.ly for  color .
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
    public var line: Line?

    /// - traces/scatter3d/attributes/marker
    public struct Marker: Encodable {
        /// Sets the marker symbol type.
        /// - traces/scatter3d/attributes/marker/symbol
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
        public var symbol: Symbol?
    
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
        ///
        /// Note that the marker opacity for scatter3d traces must be a scalar value for performance
        /// reasons. To set a blending opacity value (i.e. which is not transparent), set *marker.color* to
        /// an rgba color and use its alpha channel.
        public var opacity: Double?
    
        public var colorBar: ColorBar0?
    
        /// - traces/scatter3d/attributes/marker/line
        public struct Line: Encodable {
            /// Sets the width (in px) of the lines bounding the marker points.
            public var width: Double?
        
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
        
            /// Sets the source reference on plot.ly for  color .
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
        public var line: Line?
    
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
    
        /// Sets a reference to a shared color axis. 
        ///
        /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
        /// for these shared color axes are set in the layout, under `layout.coloraxis`,
        /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
        public var colorAxis: SubPlotID?
    
        /// Sets the source reference on plot.ly for  symbol .
        public var symbolSource: String?
    
        /// Sets the source reference on plot.ly for  size .
        public var sizeSource: String?
    
        /// Sets the source reference on plot.ly for  color .
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
    public var marker: Marker?

    /// Sets the positions of the `text` elements with respects to the (x,y) coordinates.
    public var textPosition: TextPosition0?

    /// - traces/scatter3d/attributes/textfont
    public struct TextFont: Encodable {
        public var color: Color?
    
        public var size: Double?
    
        /// HTML font family - the typeface that will be applied by the web browser. 
        ///
        /// The web browser will only be able to apply a font if it is available on the system which it
        /// operates. Provide multiple font families, separated by commas, to indicate the preference in
        /// which to apply fonts if they aren't available on the system. The plotly service (at
        /// https://plot.ly or on-premise) generates images on a server, where only a select number of fonts
        /// are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,,
        /// *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*,
        /// *PT Sans Narrow*, *Raleway*, *Times New Roman*.
        public var family: String?
    
        /// Sets the source reference on plot.ly for  color .
        public var colorSource: String?
    
        /// Sets the source reference on plot.ly for  size .
        public var sizeSource: String?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case color
            case size
            case family
            case colorSource = "colorsrc"
            case sizeSource = "sizesrc"
        }
        
        public init(color: Color? = nil, size: Double? = nil, family: String? = nil, colorSource: String? = nil, sizeSource: String? = nil) {
            self.color = color
            self.size = size
            self.family = family
            self.colorSource = colorSource
            self.sizeSource = sizeSource
        }
    }
    public var textFont: TextFont?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    public var hoverInfo: HoverInfo0?

    /// - traces/scatter3d/attributes/error_x
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
    
        public var zCopyStyle: Bool?
    
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
    public var xError: XError?

    /// - traces/scatter3d/attributes/error_y
    public struct YError: Encodable {
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
    
        public var zCopyStyle: Bool?
    
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
    public var yError: YError?

    public var zError: YError0?

    /// Sets the calendar system to use with `x` date data.
    public var xCalendar: Calendar0?

    /// Sets the calendar system to use with `y` date data.
    public var yCalendar: Calendar0?

    /// Sets the calendar system to use with `z` date data.
    public var zCalendar: Calendar0?

    /// Sets a reference between this trace's 3D coordinate system and a 3D scene. 
    ///
    /// If *scene* (the default value), the (x,y,z) coordinates refer to `layout.scene`. If *scene2*,
    /// the (x,y,z) coordinates refer to `layout.scene2`, and so on.
    public var scene: SubPlotID?

    /// Sets the source reference on plot.ly for  ids .
    public var idsSource: String?

    /// Sets the source reference on plot.ly for  customdata .
    public var customDataSource: String?

    /// Sets the source reference on plot.ly for  meta .
    public var metaSource: String?

    /// Sets the source reference on plot.ly for  x .
    public var xSource: String?

    /// Sets the source reference on plot.ly for  y .
    public var ySource: String?

    /// Sets the source reference on plot.ly for  z .
    public var zSource: String?

    /// Sets the source reference on plot.ly for  text .
    public var textSource: String?

    /// Sets the source reference on plot.ly for  texttemplate .
    public var textTemplateSource: String?

    /// Sets the source reference on plot.ly for  hovertext .
    public var hoverTextSource: String?

    /// Sets the source reference on plot.ly for  hovertemplate .
    public var hoverTemplateSource: String?

    /// Sets the source reference on plot.ly for  textposition .
    public var textPositionSource: String?

    /// Sets the source reference on plot.ly for  hoverinfo .
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
    
    public init(visible: Visible0? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, hoverLabel: HoverLabel0? = nil, stream: Stream0? = nil, transforms: TickFormatStops0? = nil, uiRevision: Anything? = nil, x: [Double]? = nil, y: [Double]? = nil, z: [Double]? = nil, text: String? = nil, textTemplate: String? = nil, hoverText: String? = nil, hoverTemplate: String? = nil, mode: Mode0? = nil, surfaceAxis: SurfaceAxis? = nil, surfaceColor: Color? = nil, projection: Up0? = nil, connectGaps: Bool? = nil, line: Line? = nil, marker: Marker? = nil, textPosition: TextPosition0? = nil, textFont: TextFont? = nil, hoverInfo: HoverInfo0? = nil, xError: XError? = nil, yError: YError? = nil, zError: YError0? = nil, xCalendar: Calendar0? = nil, yCalendar: Calendar0? = nil, zCalendar: Calendar0? = nil, scene: SubPlotID? = nil, idsSource: String? = nil, customDataSource: String? = nil, metaSource: String? = nil, xSource: String? = nil, ySource: String? = nil, zSource: String? = nil, textSource: String? = nil, textTemplateSource: String? = nil, hoverTextSource: String? = nil, hoverTemplateSource: String? = nil, textPositionSource: String? = nil, hoverInfoSource: String? = nil) {
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