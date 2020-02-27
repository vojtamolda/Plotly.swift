/// Display an image, i.e.
/// 
/// data on a 2D regular raster. By default, when an image is displayed in a subplot, its y axis
/// will be reversed (ie. `autorange: 'reversed'`), constrained to the domain (ie. `constrain:
/// 'domain'`) and it will have the same scale as its x axis (ie. `scaleanchor: 'x,`) in order for
/// pixels to be rendered as squares.
/// 
/// - SeeAlso:
///   Documentation for 
///   [Python](https://plot.ly/python/reference/#image), 
///   [JavaScript](https://plot.ly/javascript/reference/#image) or 
///   [R](https://plot.ly/r/reference/#image)
public struct Image<ZData>: Trace where ZData: Plotable {
    public let type: String = "image"

    public let animatable: Bool = false

    /// Determines whether or not this trace is visible.
    /// 
    /// If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the
    /// legend itself is visible).
    public var visible: Shared.Visible?

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
    public var meta: Data<Anything>?

    public var hoverLabel: Shared.HoverLabel?

    public var stream: Shared.Stream?

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

    /// A 2-dimensional array in which each element is an array of 3 or 4 numbers representing a color.
    public var z: ZData?

    /// Color model used to map the numerical color components described in `z` into colors.
    public enum ColorModel: String, Encodable {
        case RGB = "rgb"
        case RGBA = "rgba"
        case HSL = "hsl"
        case HSLA = "hsla"
    }
    /// Color model used to map the numerical color components described in `z` into colors.
    public var colorModel: ColorModel?

    /// Array defining the lower bound for each color component.
    /// 
    /// Note that the default value will depend on the colormodel. For the `rgb` colormodel, it is [0,
    /// 0, 0]. For the `rgba` colormodel, it is [0, 0, 0, 0]. For the `hsl` colormodel, it is [0, 0, 0].
    /// For the `hsla` colormodel, it is [0, 0, 0, 0].
    public var zMin: InfoArray?

    /// Array defining the higher bound for each color component.
    /// 
    /// Note that the default value will depend on the colormodel. For the `rgb` colormodel, it is [255,
    /// 255, 255]. For the `rgba` colormodel, it is [255, 255, 255, 1]. For the `hsl` colormodel, it is
    /// [360, 100, 100]. For the `hsla` colormodel, it is [360, 100, 100, 1].
    public var zMax: InfoArray?

    /// Set the image's x position.
    public var x0: Anything?

    /// Set the image's y position.
    public var y0: Anything?

    /// Set the pixel's horizontal size.
    public var dx: Double?

    /// Set the pixel's vertical size
    public var dy: Double?

    /// Sets the text elements associated with each z value.
    public var text: Data<String>?

    /// Same as `text`.
    public var hoverText: Data<String>?

    /// Determines which trace information appear on hover.
    /// 
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    public struct HoverInfo: OptionSet, Encodable {
        public let rawValue: Int
    
        public static var x: HoverInfo { HoverInfo(rawValue: 1 << 0) }
        public static var y: HoverInfo { HoverInfo(rawValue: 1 << 1) }
        public static var z: HoverInfo { HoverInfo(rawValue: 1 << 2) }
        public static var color: HoverInfo { HoverInfo(rawValue: 1 << 3) }
        public static var name: HoverInfo { HoverInfo(rawValue: 1 << 4) }
        public static var text: HoverInfo { HoverInfo(rawValue: 1 << 5) }
        public static var all: HoverInfo { HoverInfo(rawValue: 1 << 6) }
        public static var none: HoverInfo { HoverInfo(rawValue: 1 << 7) }
        public static var skip: HoverInfo { HoverInfo(rawValue: 1 << 8) }
    
        public init(rawValue: Int) { self.rawValue = rawValue }
    
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["x"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["y"] }
            if (self.rawValue & 1 << 2) != 0 { options += ["z"] }
            if (self.rawValue & 1 << 3) != 0 { options += ["color"] }
            if (self.rawValue & 1 << 4) != 0 { options += ["name"] }
            if (self.rawValue & 1 << 5) != 0 { options += ["text"] }
            if (self.rawValue & 1 << 6) != 0 { options += ["all"] }
            if (self.rawValue & 1 << 7) != 0 { options += ["none"] }
            if (self.rawValue & 1 << 8) != 0 { options += ["skip"] }
            var container = encoder.singleValueContainer()
            try container.encode(options.joined(separator: "+"))
        }
    }
    /// Determines which trace information appear on hover.
    /// 
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    public var hoverInfo: HoverInfo?

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
    /// true`) are available. variables `z`, `color` and `colormodel`. Anything contained in tag
    /// `<extra>` is displayed in the secondary box, for example "<extra>{fullData.name}</extra>". To
    /// hide the secondary box completely, use an empty tag `<extra></extra>`.
    public var hoverTemplate: Data<String>?

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

    /// Decoding and encoding keys compatible with Plotly schema.
    enum CodingKeys: String, CodingKey {
        case type
        case animatable
        case visible
        case opacity
        case name
        case uid
        case ids
        case customData = "customdata"
        case meta
        case hoverLabel = "hoverlabel"
        case stream
        case uiRevision = "uirevision"
        case z
        case colorModel = "colormodel"
        case zMin = "zmin"
        case zMax = "zmax"
        case x0
        case y0
        case dx
        case dy
        case text
        case hoverText = "hovertext"
        case hoverInfo = "hoverinfo"
        case hoverTemplate = "hovertemplate"
        case xAxis = "xaxis"
        case yAxis = "yaxis"
    }
    
    /// Creates `Image` object from the most frequently used properties.
    /// 
    /// - Parameters:
    ///   - name: Sets the trace name.
    ///   - z: A 2-dimensional array in which each element is an array of 3 or 4 numbers representing a
    ///   color.
    ///   - text: Sets the text elements associated with each z value.
    ///   - hoverText: Same as `text`.
    public init(name: String? = nil, z: ZData? = nil, text: Data<String>? = nil, hoverText:
            Data<String>? = nil) {
        self.name = name
        self.z = z
        self.text = text
        self.hoverText = hoverText
    }
    
    /// Creates `Image` object with specified properties.
    /// 
    /// - Parameters:
    ///   - visible: Determines whether or not this trace is visible.
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
    ///   - uiRevision: Controls persistence of some user-driven changes to the trace: `constraintrange`
    ///   in `parcoords` traces, as well as some `editable: true` modifications such as `name` and
    ///   `colorbar.title`.
    ///   - z: A 2-dimensional array in which each element is an array of 3 or 4 numbers representing a
    ///   color.
    ///   - colorModel: Color model used to map the numerical color components described in `z` into
    ///   colors.
    ///   - zMin: Array defining the lower bound for each color component.
    ///   - zMax: Array defining the higher bound for each color component.
    ///   - x0: Set the image's x position.
    ///   - y0: Set the image's y position.
    ///   - dx: Set the pixel's horizontal size.
    ///   - dy: Set the pixel's vertical size
    ///   - text: Sets the text elements associated with each z value.
    ///   - hoverText: Same as `text`.
    ///   - hoverInfo: Determines which trace information appear on hover.
    ///   - hoverTemplate: Template string used for rendering the information that appear on hover box.
    ///   - xAxis: Sets a reference between this trace's x coordinates and a 2D cartesian x axis.
    ///   - yAxis: Sets a reference between this trace's y coordinates and a 2D cartesian y axis.
    public init(visible: Shared.Visible? = nil, opacity: Double? = nil, name: String? = nil, uid:
            String? = nil, ids: [String]? = nil, customData: [String]? = nil, meta: Data<Anything>? = nil,
            hoverLabel: Shared.HoverLabel? = nil, stream: Shared.Stream? = nil, uiRevision: Anything? = nil,
            z: ZData? = nil, colorModel: ColorModel? = nil, zMin: InfoArray? = nil, zMax: InfoArray? = nil,
            x0: Anything? = nil, y0: Anything? = nil, dx: Double? = nil, dy: Double? = nil, text:
            Data<String>? = nil, hoverText: Data<String>? = nil, hoverInfo: HoverInfo? = nil, hoverTemplate:
            Data<String>? = nil, xAxis: SubPlotID? = nil, yAxis: SubPlotID? = nil) {
        self.visible = visible
        self.opacity = opacity
        self.name = name
        self.uid = uid
        self.ids = ids
        self.customData = customData
        self.meta = meta
        self.hoverLabel = hoverLabel
        self.stream = stream
        self.uiRevision = uiRevision
        self.z = z
        self.colorModel = colorModel
        self.zMin = zMin
        self.zMax = zMax
        self.x0 = x0
        self.y0 = y0
        self.dx = dx
        self.dy = dy
        self.text = text
        self.hoverText = hoverText
        self.hoverInfo = hoverInfo
        self.hoverTemplate = hoverTemplate
        self.xAxis = xAxis
        self.yAxis = yAxis
    }
    
    /// Encodes the object in a format compatible with Plotly.
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(animatable, forKey: .animatable)
        try container.encodeIfPresent(visible, forKey: .visible)
        try container.encodeIfPresent(opacity, forKey: .opacity)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(uid, forKey: .uid)
        try container.encodeIfPresent(ids, forKey: .ids)
        try container.encodeIfPresent(customData, forKey: .customData)
        try container.encodeIfPresent(meta, forKey: .meta)
        try container.encodeIfPresent(hoverLabel, forKey: .hoverLabel)
        try container.encodeIfPresent(stream, forKey: .stream)
        try container.encodeIfPresent(uiRevision, forKey: .uiRevision)
        try container.encodeIfPresent(colorModel, forKey: .colorModel)
        try container.encodeIfPresent(zMin, forKey: .zMin)
        try container.encodeIfPresent(zMax, forKey: .zMax)
        try container.encodeIfPresent(x0, forKey: .x0)
        try container.encodeIfPresent(y0, forKey: .y0)
        try container.encodeIfPresent(dx, forKey: .dx)
        try container.encodeIfPresent(dy, forKey: .dy)
        try container.encodeIfPresent(text, forKey: .text)
        try container.encodeIfPresent(hoverText, forKey: .hoverText)
        try container.encodeIfPresent(hoverInfo, forKey: .hoverInfo)
        try container.encodeIfPresent(hoverTemplate, forKey: .hoverTemplate)
        try container.encodeIfPresent(xAxis, forKey: .xAxis)
        try container.encodeIfPresent(yAxis, forKey: .yAxis)
    
        if let z = self.z {
            let zEncoder = container.superEncoder(forKey: .z)
            try z.encode(toPlotly: zEncoder)
        }
    }
    
}