/// Splom traces generate scatter plot matrix visualizations. 
///
/// Each splom `dimensions` items correspond to a generated axis. Values for each of those
/// dimensions are set in `dimensions[i].values`. Splom traces support all `scattergl` marker style
/// attributes. Specify `layout.grid` attributes and/or layout x-axis and y-axis attributes for more
/// control over the axis positioning and style. 
public struct ScatterPlotMatrix: Trace {
    public let type: String = "splom"

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

    public var dimensions: TickFormatStops0?

    /// Sets text elements associated with each (x,y) pair to appear on hover. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to the this trace's (x,y) coordinates.
    public var text: String?

    /// Same as `text`.
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

    /// - traces/splom/attributes/marker
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
    
        /// - traces/splom/attributes/marker/line
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

    /// Sets the list of x axes corresponding to dimensions of this splom trace. 
    ///
    /// By default, a splom will match the first N xaxes where N is the number of input dimensions. Note
    /// that, in case where `diagonal.visible` is false and `showupperhalf` or `showlowerhalf` is false,
    /// this splom trace will generate one less x-axis and one less y-axis.
    public var xAxes: InfoArray?

    /// Sets the list of y axes corresponding to dimensions of this splom trace. 
    ///
    /// By default, a splom will match the first N yaxes where N is the number of input dimensions. Note
    /// that, in case where `diagonal.visible` is false and `showupperhalf` or `showlowerhalf` is false,
    /// this splom trace will generate one less x-axis and one less y-axis.
    public var yAxes: InfoArray?

    /// - traces/splom/attributes/diagonal
    public struct Diagonal: Encodable {
        /// Determines whether or not subplots on the diagonal are displayed.
        public var visible: Bool?
    
        public init(visible: Bool? = nil) {
            self.visible = visible
        }
    }
    public var diagonal: Diagonal?

    /// Determines whether or not subplots on the upper half from the diagonal are displayed.
    public var showUpperHalf: Bool?

    /// Determines whether or not subplots on the lower half from the diagonal are displayed.
    public var showLowerHalf: Bool?

    public var selected: Selected1?

    public var unselected: Selected1?

    /// Sets the opacity of the trace.
    public var opacity: Double?

    /// Sets the source reference on plot.ly for  ids .
    public var idsSource: String?

    /// Sets the source reference on plot.ly for  customdata .
    public var customDataSource: String?

    /// Sets the source reference on plot.ly for  meta .
    public var metaSource: String?

    /// Sets the source reference on plot.ly for  hoverinfo .
    public var hoverInfoSource: String?

    /// Sets the source reference on plot.ly for  text .
    public var textSource: String?

    /// Sets the source reference on plot.ly for  hovertext .
    public var hoverTextSource: String?

    /// Sets the source reference on plot.ly for  hovertemplate .
    public var hoverTemplateSource: String?

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
        case dimensions
        case text
        case hoverText = "hovertext"
        case hoverTemplate = "hovertemplate"
        case marker
        case xAxes = "xaxes"
        case yAxes = "yaxes"
        case diagonal
        case showUpperHalf = "showupperhalf"
        case showLowerHalf = "showlowerhalf"
        case selected
        case unselected
        case opacity
        case idsSource = "idssrc"
        case customDataSource = "customdatasrc"
        case metaSource = "metasrc"
        case hoverInfoSource = "hoverinfosrc"
        case textSource = "textsrc"
        case hoverTextSource = "hovertextsrc"
        case hoverTemplateSource = "hovertemplatesrc"
    }
    
    public init(visible: Visible0? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, selectedPoints: Anything? = nil, hoverInfo: HoverInfo0? = nil, hoverLabel: HoverLabel0? = nil, stream: Stream0? = nil, transforms: TickFormatStops0? = nil, uiRevision: Anything? = nil, dimensions: TickFormatStops0? = nil, text: String? = nil, hoverText: String? = nil, hoverTemplate: String? = nil, marker: Marker? = nil, xAxes: InfoArray? = nil, yAxes: InfoArray? = nil, diagonal: Diagonal? = nil, showUpperHalf: Bool? = nil, showLowerHalf: Bool? = nil, selected: Selected1? = nil, unselected: Selected1? = nil, opacity: Double? = nil, idsSource: String? = nil, customDataSource: String? = nil, metaSource: String? = nil, hoverInfoSource: String? = nil, textSource: String? = nil, hoverTextSource: String? = nil, hoverTemplateSource: String? = nil) {
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
        self.dimensions = dimensions
        self.text = text
        self.hoverText = hoverText
        self.hoverTemplate = hoverTemplate
        self.marker = marker
        self.xAxes = xAxes
        self.yAxes = yAxes
        self.diagonal = diagonal
        self.showUpperHalf = showUpperHalf
        self.showLowerHalf = showLowerHalf
        self.selected = selected
        self.unselected = unselected
        self.opacity = opacity
        self.idsSource = idsSource
        self.customDataSource = customDataSource
        self.metaSource = metaSource
        self.hoverInfoSource = hoverInfoSource
        self.textSource = textSource
        self.hoverTextSource = hoverTextSource
        self.hoverTemplateSource = hoverTemplateSource
    }
}