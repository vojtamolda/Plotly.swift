/// Plots a scatter trace on either the first carpet axis or the carpet axis with a matching `carpet` attribute.
public struct ScatterCarpet: Trace {
    public let type: String = "scattercarpet"

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

    /// Array containing integer indices of selected points. 
    ///
    /// Has an effect only for traces that support selections. Note that an empty array means an empty
    /// selection where the `unselected` are turned on for all points, whereas, any other non-array
    /// values means no selection all where the `selected` and `unselected` styles have no effect.
    public var selectedPoints: Anything?

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

    /// An identifier for this carpet, so that `scattercarpet` and `contourcarpet` traces can specify a carpet plot on which they lie
    public var carpet: String?

    /// Sets the a-axis coordinates.
    public var a: [Double]?

    /// Sets the b-axis coordinates.
    public var b: [Double]?

    /// Determines the drawing mode for this scatter trace. 
    ///
    /// If the provided `mode` includes *text* then the `text` elements appear at the coordinates.
    /// Otherwise, the `text` elements appear on hover. If there are less than 20 points and the trace
    /// is not stacked then the default is *lines+markers*. Otherwise, *lines*.
    public var mode: Mode0?

    /// Sets text elements associated with each (a,b) point. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of strings,
    /// the items are mapped in order to the the data points in (a,b). If trace `hoverinfo` contains a
    /// *text* flag and *hovertext* is not set, these elements will be seen in the hover labels.
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
    /// `arrayOk: true`) are available. variables `a`, `b` and `text`.
    public var textTemplate: String?

    /// Sets hover text elements associated with each (a,b) point. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of strings,
    /// the items are mapped in order to the the data points in (a,b). To be seen, trace `hoverinfo`
    /// must contain a *text* flag.
    public var hoverText: String?

    /// - traces/scattercarpet/attributes/line
    public struct Line: Encodable {
        /// Sets the line color.
        public var color: Color?
    
        /// Sets the line width (in px).
        public var width: Double?
    
        /// Sets the dash style of lines. 
        ///
        /// Set to a dash type string (*solid*, *dot*, *dash*, *longdash*, *dashdot*, or *longdashdot*) or a
        /// dash length list in px (eg *5px,10px,2px,2px*).
        public var dash: String?
    
        /// Determines the line shape. 
        ///
        /// With *spline* the lines are drawn using spline interpolation. The other available values
        /// correspond to step-wise line shapes.
        /// - traces/scattercarpet/attributes/line/shape
        public enum Shape: String, Encodable {
            case linear
            case spline
        }
        /// Determines the line shape. 
        ///
        /// With *spline* the lines are drawn using spline interpolation. The other available values
        /// correspond to step-wise line shapes.
        public var shape: Shape?
    
        /// Has an effect only if `shape` is set to *spline* Sets the amount of smoothing. 
        ///
        /// *0* corresponds to no smoothing (equivalent to a *linear* shape).
        public var smoothing: Double?
    
        public init(color: Color? = nil, width: Double? = nil, dash: String? = nil, shape: Shape? = nil, smoothing: Double? = nil) {
            self.color = color
            self.width = width
            self.dash = dash
            self.shape = shape
            self.smoothing = smoothing
        }
    }
    public var line: Line?

    /// Determines whether or not gaps (i.e. 
    ///
    /// {nan} or missing values) in the provided data arrays are connected.
    public var connectGaps: Bool?

    /// Sets the area to fill with a solid color. 
    ///
    /// Use with `fillcolor` if not *none*. scatterternary has a subset of the options available to
    /// scatter. *toself* connects the endpoints of the trace (or each segment of the trace if it has
    /// gaps) into a closed shape. *tonext* fills the space between two traces if one completely
    /// encloses the other (eg consecutive contour lines), and behaves like *toself* if there is no
    /// trace before it. *tonext* should not be used if one trace does not enclose the other.
    /// - traces/scattercarpet/attributes/fill
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
    public var fill: Fill?

    /// Sets the fill color. 
    ///
    /// Defaults to a half-transparent variant of the line color, marker color, or marker line color,
    /// whichever is available.
    public var fillColor: Color?

    /// - traces/scattercarpet/attributes/marker
    public struct Marker: Encodable {
        /// Sets the marker symbol type. 
        ///
        /// Adding 100 is equivalent to appending *-open* to a symbol name. Adding 200 is equivalent to
        /// appending *-dot* to a symbol name. Adding 300 is equivalent to appending *-open-dot* or
        /// *dot-open* to a symbol name.
        public var symbol: Symbol0?
    
        /// Sets the marker opacity.
        public var opacity: Double?
    
        /// Sets a maximum number of points to be drawn on the graph. 
        ///
        /// *0* corresponds to no limit.
        public var maxDisplayed: Double?
    
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
    
        public var line: Line1?
    
        public var gradient: Gradient0?
    
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
    
        /// Sets the source reference on plot.ly for  symbol .
        public var symbolSource: String?
    
        /// Sets the source reference on plot.ly for  opacity .
        public var opacitySource: String?
    
        /// Sets the source reference on plot.ly for  size .
        public var sizeSource: String?
    
        /// Sets the source reference on plot.ly for  color .
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
    public var marker: Marker?

    /// Sets the text font.
    public var textFont: Font1?

    /// Sets the positions of the `text` elements with respects to the (x,y) coordinates.
    public var textPosition: TextPosition0?

    public var selected: Selected0?

    public var unselected: Selected0?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    /// - traces/scattercarpet/attributes/hoverinfo
    public struct HoverInfo: OptionSet, Encodable {
        public let rawValue: Int
    
        public static let a = HoverInfo(rawValue: 1 << 0)
        public static let b = HoverInfo(rawValue: 1 << 1)
        public static let text = HoverInfo(rawValue: 1 << 2)
        public static let name = HoverInfo(rawValue: 1 << 3)
        public static let all = HoverInfo(rawValue: 1 << 4)
        public static let none = HoverInfo(rawValue: 1 << 5)
        public static let skip = HoverInfo(rawValue: 1 << 6)
    
        public init(rawValue: Int) { self.rawValue = rawValue }
    
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["a"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["b"] }
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
    public var hoverInfo: HoverInfo?

    /// Do the hover effects highlight individual points (markers or line points) or do they highlight filled regions? If the fill is *toself* or *tonext* and there are no markers or text, then the default is *fills*, otherwise it is *points*.
    /// - traces/scattercarpet/attributes/hoveron
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
    public var hoverTemplate: String?

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

    /// Sets the source reference on plot.ly for  a .
    public var aSource: String?

    /// Sets the source reference on plot.ly for  b .
    public var bSource: String?

    /// Sets the source reference on plot.ly for  text .
    public var textSource: String?

    /// Sets the source reference on plot.ly for  texttemplate .
    public var textTemplateSource: String?

    /// Sets the source reference on plot.ly for  hovertext .
    public var hoverTextSource: String?

    /// Sets the source reference on plot.ly for  textposition .
    public var textPositionSource: String?

    /// Sets the source reference on plot.ly for  hoverinfo .
    public var hoverInfoSource: String?

    /// Sets the source reference on plot.ly for  hovertemplate .
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
        case carpet
        case a
        case b
        case mode
        case text
        case textTemplate = "texttemplate"
        case hoverText = "hovertext"
        case line
        case connectGaps = "connectgaps"
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
        case xAxis = "xaxis"
        case yAxis = "yaxis"
        case idsSource = "idssrc"
        case customDataSource = "customdatasrc"
        case metaSource = "metasrc"
        case aSource = "asrc"
        case bSource = "bsrc"
        case textSource = "textsrc"
        case textTemplateSource = "texttemplatesrc"
        case hoverTextSource = "hovertextsrc"
        case textPositionSource = "textpositionsrc"
        case hoverInfoSource = "hoverinfosrc"
        case hoverTemplateSource = "hovertemplatesrc"
    }
    
    public init(visible: Visible0? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, selectedPoints: Anything? = nil, hoverLabel: HoverLabel0? = nil, stream: Stream0? = nil, transforms: TickFormatStops0? = nil, uiRevision: Anything? = nil, carpet: String? = nil, a: [Double]? = nil, b: [Double]? = nil, mode: Mode0? = nil, text: String? = nil, textTemplate: String? = nil, hoverText: String? = nil, line: Line? = nil, connectGaps: Bool? = nil, fill: Fill? = nil, fillColor: Color? = nil, marker: Marker? = nil, textFont: Font1? = nil, textPosition: TextPosition0? = nil, selected: Selected0? = nil, unselected: Selected0? = nil, hoverInfo: HoverInfo? = nil, hoverOn: HoverOn? = nil, hoverTemplate: String? = nil, xAxis: SubPlotID? = nil, yAxis: SubPlotID? = nil, idsSource: String? = nil, customDataSource: String? = nil, metaSource: String? = nil, aSource: String? = nil, bSource: String? = nil, textSource: String? = nil, textTemplateSource: String? = nil, hoverTextSource: String? = nil, textPositionSource: String? = nil, hoverInfoSource: String? = nil, hoverTemplateSource: String? = nil) {
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
        self.carpet = carpet
        self.a = a
        self.b = b
        self.mode = mode
        self.text = text
        self.textTemplate = textTemplate
        self.hoverText = hoverText
        self.line = line
        self.connectGaps = connectGaps
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
        self.xAxis = xAxis
        self.yAxis = yAxis
        self.idsSource = idsSource
        self.customDataSource = customDataSource
        self.metaSource = metaSource
        self.aSource = aSource
        self.bSource = bSource
        self.textSource = textSource
        self.textTemplateSource = textTemplateSource
        self.hoverTextSource = hoverTextSource
        self.textPositionSource = textPositionSource
        self.hoverInfoSource = hoverInfoSource
        self.hoverTemplateSource = hoverTemplateSource
    }
}