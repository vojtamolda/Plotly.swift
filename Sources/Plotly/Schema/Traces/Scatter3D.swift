/// The data visualized as scatter point or lines in 3D dimension is set in `x`, `y`, `z`.
/// 
/// Text (appearing either on the chart or on hover only) is via `text`. Bubble charts are achieved
/// by setting `marker.size` and/or `marker.color` Projections are achieved via `projection`.
/// Surface fills are achieved via `surfaceaxis`.
/// 
/// - SeeAlso:
///   Documentation for 
///   [Python](https://plot.ly/python/reference/#scatter3d), 
///   [JavaScript](https://plot.ly/javascript/reference/#scatter3d) or 
///   [R](https://plot.ly/r/reference/#scatter3d)
public struct Scatter3D<XData, YData, ZData>: Trace where XData: Plotable, YData: Plotable, ZData: Plotable {
    public let type: String = "scatter3d"

    public let animatable: Bool = false

    /// Determines whether or not this trace is visible.
    /// 
    /// If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the
    /// legend itself is visible).
    public var visible: Shared.Visible?

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

    /// Assign an id to this trace, Use this to provide object constancy between traces during
    /// animations and transitions.
    public var uid: String?

    /// Assigns id labels to each datum.
    /// 
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    public var ids: [String]?

    /// Assigns extra data each datum.
    /// 
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    public var customData: [String]?

    /// Assigns extra meta information associated with this trace that can be used in various text
    /// attributes.
    /// 
    /// Attributes such as trace `name`, graph, axis and colorbar `title.text`, annotation `text`
    /// `rangeselector`, `updatemenues` and `sliders` `label` text all support `meta`. To access the
    /// trace `meta` values in an attribute in the same trace, simply use `%{meta[i]}` where `i` is the
    /// index or key of the `meta` item in question. To access trace `meta` in layout attributes, use
    /// `%{data[n[.meta[i]}` where `i` is the index or key of the `meta` and `n` is the trace index.
    public var meta: ArrayOrAnything?

    public var hoverLabel: Shared.HoverLabel?

    public var stream: Shared.Stream?

    public var transforms: [Shared.Transform]?

    /// Controls persistence of some user-driven changes to the trace: `constraintrange` in `parcoords`
    /// traces, as well as some `editable: true` modifications such as `name` and `colorbar.title`.
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
    public var x: XData?

    /// Sets the y coordinates.
    public var y: YData?

    /// Sets the z coordinates.
    public var z: ZData?

    /// Sets text elements associated with each (x,y,z) triplet.
    /// 
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to the this trace's (x,y,z) coordinates. If trace `hoverinfo` contains
    /// a *text* flag and *hovertext* is not set, these elements will be seen in the hover labels.
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
    public var textTemplate: ArrayOrString?

    /// Sets text elements associated with each (x,y,z) triplet.
    /// 
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to the this trace's (x,y,z) coordinates. To be seen, trace `hoverinfo`
    /// must contain a *text* flag.
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
    public var hoverTemplate: ArrayOrString?

    /// Determines the drawing mode for this scatter trace.
    /// 
    /// If the provided `mode` includes *text* then the `text` elements appear at the coordinates.
    /// Otherwise, the `text` elements appear on hover. If there are less than 20 points and the trace
    /// is not stacked then the default is *lines+markers*. Otherwise, *lines*.
    public var mode: Shared.Mode?

    /// If *-1*, the scatter points are not fill with a surface If *0*, *1*, *2*, the scatter points are
    /// filled with a Delaunay surface about the x, y, z respectively.
    public enum SurfaceAxis: Int, Encodable {
        case none = -1
        case x = 0
        case y = 1
        case z = 2
    }
    /// If *-1*, the scatter points are not fill with a surface If *0*, *1*, *2*, the scatter points are
    /// filled with a Delaunay surface about the x, y, z respectively.
    public var surfaceAxis: SurfaceAxis?

    /// Sets the surface fill color.
    public var surfaceColor: Color?

    public var projection: Shared.Projection?

    /// Determines whether or not gaps (i.e.
    /// 
    /// {nan} or missing values) in the provided data arrays are connected.
    public var connectGaps: Bool?

    public struct DashedColoredLine: Encodable {
        /// Sets the line width (in px).
        public var width: Double?
    
        /// Sets the dash style of the lines.
        public var dash: Shared.Dash?
    
        /// Sets thelinecolor.
        /// 
        /// It accepts either a specific color or an array of numbers that are mapped to the colorscale
        /// relative to the max and min values of the array or relative to `line.cmin` and `line.cmax` if
        /// set.
        public var color: ArrayOrColor?
    
        /// Determines whether or not the color domain is computed with respect to the input data (here in
        /// `line.color`) or the bounds set in `line.cmin` and `line.cmax` Has an effect only if in
        /// `line.color`is set to a numerical array.
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
    
        /// Sets the mid-point of the color domain by scaling `line.cmin` and/or `line.cmax` to be
        /// equidistant to this point.
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
    
        /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette
        /// determined by `line.colorscale`.
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
    
        public var colorBar: Shared.ColorBar?
    
        /// Sets a reference to a shared color axis.
        /// 
        /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
        /// for these shared color axes are set in the layout, under `layout.coloraxis`,
        /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
        public var colorAxis: SubPlotID?
    
        /// Decoding and encoding keys compatible with Plotly schema.
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
        
        /// Creates `DashedColoredLine` object with specified properties.
        /// 
        /// - Parameters:
        ///   - width: Sets the line width (in px).
        ///   - dash: Sets the dash style of the lines.
        ///   - color: Sets thelinecolor.
        ///   - cAuto: Determines whether or not the color domain is computed with respect to the input data
        ///   (here in `line.color`) or the bounds set in `line.cmin` and `line.cmax` Has an effect only if in
        ///   `line.color`is set to a numerical array.
        ///   - cMin: Sets the lower bound of the color domain.
        ///   - cMax: Sets the upper bound of the color domain.
        ///   - cMiddle: Sets the mid-point of the color domain by scaling `line.cmin` and/or `line.cmax` to
        ///   be equidistant to this point.
        ///   - colorScale: Sets the colorscale.
        ///   - autoColorScale: Determines whether the colorscale is a default palette (`autocolorscale:
        ///   true`) or the palette determined by `line.colorscale`.
        ///   - reverseScale: Reverses the color mapping if true.
        ///   - showScale: Determines whether or not a colorbar is displayed for this trace.
        ///   - colorBar:
        ///   - colorAxis: Sets a reference to a shared color axis.
        public init(width: Double? = nil, dash: Shared.Dash? = nil, color: ArrayOrColor? = nil, cAuto:
                Bool? = nil, cMin: Double? = nil, cMax: Double? = nil, cMiddle: Double? = nil, colorScale:
                ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? =
                nil, colorBar: Shared.ColorBar? = nil, colorAxis: SubPlotID? = nil) {
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
    public var line: DashedColoredLine?

    public var marker: Shared.SymbolicMarker?

    /// Sets the positions of the `text` elements with respects to the (x,y) coordinates.
    public var textPosition: Shared.TextPosition?

    public var textFont: Shared.Font?

    /// Determines which trace information appear on hover.
    /// 
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    public var hoverInfo: Shared.HoverInfo?

    public var xError: Shared.Error?

    public var yError: Shared.Error?

    public var zError: Shared.Error?

    /// Sets the calendar system to use with `x` date data.
    public var xCalendar: Shared.Calendar?

    /// Sets the calendar system to use with `y` date data.
    public var yCalendar: Shared.Calendar?

    /// Sets the calendar system to use with `z` date data.
    public var zCalendar: Shared.Calendar?

    /// Sets a reference between this trace's 3D coordinate system and a 3D scene.
    /// 
    /// If *scene* (the default value), the (x,y,z) coordinates refer to `layout.scene`. If *scene2*,
    /// the (x,y,z) coordinates refer to `layout.scene2`, and so on.
    public var scene: SubPlotID?

    /// Decoding and encoding keys compatible with Plotly schema.
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
    
    /// Creates `Scatter3D` object from the most frequently used properties.
    /// 
    /// - Parameters:
    ///   - name: Sets the trace name.
    ///   - x: Sets the x coordinates.
    ///   - y: Sets the y coordinates.
    ///   - z: Sets the z coordinates.
    ///   - text: Sets text elements associated with each (x,y,z) triplet.
    ///   - hoverText: Sets text elements associated with each (x,y,z) triplet.
    ///   - mode: Determines the drawing mode for this scatter trace.
    ///   - line:
    ///   - marker:
    public init(name: String? = nil, x: XData? = nil, y: YData? = nil, z: ZData? = nil, text:
            ArrayOrString? = nil, hoverText: ArrayOrString? = nil, mode: Shared.Mode? = nil, line:
            DashedColoredLine? = nil, marker: Shared.SymbolicMarker? = nil) {
        self.name = name
        self.x = x
        self.y = y
        self.z = z
        self.text = text
        self.hoverText = hoverText
        self.mode = mode
        self.line = line
        self.marker = marker
    }
    
    /// Creates `Scatter3D` object with specified properties.
    /// 
    /// - Parameters:
    ///   - visible: Determines whether or not this trace is visible.
    ///   - showLegend: Determines whether or not an item corresponding to this trace is shown in the
    ///   legend.
    ///   - legendGroup: Sets the legend group for this trace.
    ///   - opacity: Sets the opacity of the trace.
    ///   - name: Sets the trace name.
    ///   - uid: Assign an id to this trace, Use this to provide object constancy between traces during
    ///   animations and transitions.
    ///   - ids: Assigns id labels to each datum.
    ///   - customData: Assigns extra data each datum.
    ///   - meta: Assigns extra meta information associated with this trace that can be used in various
    ///   text attributes.
    ///   - hoverLabel:
    ///   - stream:
    ///   - transforms:
    ///   - uiRevision: Controls persistence of some user-driven changes to the trace: `constraintrange`
    ///   in `parcoords` traces, as well as some `editable: true` modifications such as `name` and
    ///   `colorbar.title`.
    ///   - x: Sets the x coordinates.
    ///   - y: Sets the y coordinates.
    ///   - z: Sets the z coordinates.
    ///   - text: Sets text elements associated with each (x,y,z) triplet.
    ///   - textTemplate: Template string used for rendering the information text that appear on points.
    ///   - hoverText: Sets text elements associated with each (x,y,z) triplet.
    ///   - hoverTemplate: Template string used for rendering the information that appear on hover box.
    ///   - mode: Determines the drawing mode for this scatter trace.
    ///   - surfaceAxis: If *-1*, the scatter points are not fill with a surface If *0*, *1*, *2*, the
    ///   scatter points are filled with a Delaunay surface about the x, y, z respectively.
    ///   - surfaceColor: Sets the surface fill color.
    ///   - projection:
    ///   - connectGaps: Determines whether or not gaps (i.e.
    ///   - line:
    ///   - marker:
    ///   - textPosition: Sets the positions of the `text` elements with respects to the (x,y)
    ///   coordinates.
    ///   - textFont:
    ///   - hoverInfo: Determines which trace information appear on hover.
    ///   - xError:
    ///   - yError:
    ///   - zError:
    ///   - xCalendar: Sets the calendar system to use with `x` date data.
    ///   - yCalendar: Sets the calendar system to use with `y` date data.
    ///   - zCalendar: Sets the calendar system to use with `z` date data.
    ///   - scene: Sets a reference between this trace's 3D coordinate system and a 3D scene.
    public init(visible: Shared.Visible? = nil, showLegend: Bool? = nil, legendGroup: String? = nil,
            opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [String]? = nil,
            customData: [String]? = nil, meta: ArrayOrAnything? = nil, hoverLabel: Shared.HoverLabel? = nil,
            stream: Shared.Stream? = nil, transforms: [Shared.Transform]? = nil, uiRevision: Anything? =
            nil, x: XData? = nil, y: YData? = nil, z: ZData? = nil, text: ArrayOrString? = nil,
            textTemplate: ArrayOrString? = nil, hoverText: ArrayOrString? = nil, hoverTemplate:
            ArrayOrString? = nil, mode: Shared.Mode? = nil, surfaceAxis: SurfaceAxis? = nil, surfaceColor:
            Color? = nil, projection: Shared.Projection? = nil, connectGaps: Bool? = nil, line:
            DashedColoredLine? = nil, marker: Shared.SymbolicMarker? = nil, textPosition:
            Shared.TextPosition? = nil, textFont: Shared.Font? = nil, hoverInfo: Shared.HoverInfo? = nil,
            xError: Shared.Error? = nil, yError: Shared.Error? = nil, zError: Shared.Error? = nil,
            xCalendar: Shared.Calendar? = nil, yCalendar: Shared.Calendar? = nil, zCalendar:
            Shared.Calendar? = nil, scene: SubPlotID? = nil) {
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
    
    /// Encodes the object in a format compatible with Plotly.
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(animatable, forKey: .animatable)
        try container.encodeIfPresent(visible, forKey: .visible)
        try container.encodeIfPresent(showLegend, forKey: .showLegend)
        try container.encodeIfPresent(legendGroup, forKey: .legendGroup)
        try container.encodeIfPresent(opacity, forKey: .opacity)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(uid, forKey: .uid)
        try container.encodeIfPresent(ids, forKey: .ids)
        try container.encodeIfPresent(customData, forKey: .customData)
        try container.encodeIfPresent(meta, forKey: .meta)
        try container.encodeIfPresent(hoverLabel, forKey: .hoverLabel)
        try container.encodeIfPresent(stream, forKey: .stream)
        try container.encodeIfPresent(transforms, forKey: .transforms)
        try container.encodeIfPresent(uiRevision, forKey: .uiRevision)
        try container.encodeIfPresent(text, forKey: .text)
        try container.encodeIfPresent(textTemplate, forKey: .textTemplate)
        try container.encodeIfPresent(hoverText, forKey: .hoverText)
        try container.encodeIfPresent(hoverTemplate, forKey: .hoverTemplate)
        try container.encodeIfPresent(mode, forKey: .mode)
        try container.encodeIfPresent(surfaceAxis, forKey: .surfaceAxis)
        try container.encodeIfPresent(surfaceColor, forKey: .surfaceColor)
        try container.encodeIfPresent(projection, forKey: .projection)
        try container.encodeIfPresent(connectGaps, forKey: .connectGaps)
        try container.encodeIfPresent(line, forKey: .line)
        try container.encodeIfPresent(marker, forKey: .marker)
        try container.encodeIfPresent(textPosition, forKey: .textPosition)
        try container.encodeIfPresent(textFont, forKey: .textFont)
        try container.encodeIfPresent(hoverInfo, forKey: .hoverInfo)
        try container.encodeIfPresent(xError, forKey: .xError)
        try container.encodeIfPresent(yError, forKey: .yError)
        try container.encodeIfPresent(zError, forKey: .zError)
        try container.encodeIfPresent(xCalendar, forKey: .xCalendar)
        try container.encodeIfPresent(yCalendar, forKey: .yCalendar)
        try container.encodeIfPresent(zCalendar, forKey: .zCalendar)
        try container.encodeIfPresent(scene, forKey: .scene)
    
        if let x = self.x {
            let xEncoder = container.superEncoder(forKey: .x)
            try x.encode(toPlotly: xEncoder)
        }
    
        if let y = self.y {
            let yEncoder = container.superEncoder(forKey: .y)
            try y.encode(toPlotly: yEncoder)
        }
    
        if let z = self.z {
            let zEncoder = container.superEncoder(forKey: .z)
            try z.encode(toPlotly: zEncoder)
        }
    }
    
}