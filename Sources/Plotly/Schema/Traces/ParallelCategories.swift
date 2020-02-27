/// Parallel categories diagram for multidimensional categorical data.
/// 
/// - SeeAlso:
///   Documentation for 
///   [Python](https://plot.ly/python/reference/#parcats), 
///   [JavaScript](https://plot.ly/javascript/reference/#parcats) or 
///   [R](https://plot.ly/r/reference/#parcats)
public struct ParallelCategories: Trace {
    public let type: String = "parcats"

    public let animatable: Bool = false

    /// Determines whether or not this trace is visible.
    /// 
    /// If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the
    /// legend itself is visible).
    public var visible: Shared.Visible?

    /// Sets the trace name.
    /// 
    /// The trace name appear as the legend item and on hover.
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during
    /// animations and transitions.
    public var uid: String?

    /// Assigns extra meta information associated with this trace that can be used in various text
    /// attributes.
    /// 
    /// Attributes such as trace `name`, graph, axis and colorbar `title.text`, annotation `text`
    /// `rangeselector`, `updatemenues` and `sliders` `label` text all support `meta`. To access the
    /// trace `meta` values in an attribute in the same trace, simply use `%{meta[i]}` where `i` is the
    /// index or key of the `meta` item in question. To access trace `meta` in layout attributes, use
    /// `%{data[n[.meta[i]}` where `i` is the index or key of the `meta` and `n` is the trace index.
    public var meta: Data<Anything>?

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

    public var domain: Shared.Domain?

    /// Determines which trace information appear on hover.
    /// 
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    public struct HoverInfo: OptionSet, Encodable {
        public let rawValue: Int
    
        public static var count: HoverInfo { HoverInfo(rawValue: 1 << 0) }
        public static var probability: HoverInfo { HoverInfo(rawValue: 1 << 1) }
        public static var all: HoverInfo { HoverInfo(rawValue: 1 << 2) }
        public static var none: HoverInfo { HoverInfo(rawValue: 1 << 3) }
        public static var skip: HoverInfo { HoverInfo(rawValue: 1 << 4) }
    
        public init(rawValue: Int) { self.rawValue = rawValue }
    
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["count"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["probability"] }
            if (self.rawValue & 1 << 2) != 0 { options += ["all"] }
            if (self.rawValue & 1 << 3) != 0 { options += ["none"] }
            if (self.rawValue & 1 << 4) != 0 { options += ["skip"] }
            var container = encoder.singleValueContainer()
            try container.encode(options.joined(separator: "+"))
        }
    }
    /// Determines which trace information appear on hover.
    /// 
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    public var hoverInfo: HoverInfo?

    /// Sets the hover interaction mode for the parcats diagram.
    /// 
    /// If `category`, hover interaction take place per category. If `color`, hover interactions take
    /// place per color per category. If `dimension`, hover interactions take place across all
    /// categories per dimension.
    public enum HoverOn: String, Encodable {
        case category
        case color
        case dimension
    }
    /// Sets the hover interaction mode for the parcats diagram.
    /// 
    /// If `category`, hover interaction take place per category. If `color`, hover interactions take
    /// place per color per category. If `dimension`, hover interactions take place across all
    /// categories per dimension.
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
    /// true`) are available. variables `count`, `probability`, `category`, `categorycount`,
    /// `colorcount` and `bandcolorcount`. Anything contained in tag `<extra>` is displayed in the
    /// secondary box, for example "<extra>{fullData.name}</extra>". To hide the secondary box
    /// completely, use an empty tag `<extra></extra>`.
    public var hoverTemplate: String?

    /// Sets the drag interaction mode for categories and dimensions.
    /// 
    /// If `perpendicular`, the categories can only move along a line perpendicular to the paths. If
    /// `freeform`, the categories can freely move on the plane. If `fixed`, the categories and
    /// dimensions are stationary.
    public enum Arrangement: String, Encodable {
        case perpendicular
        case freeform
        case fixed
    }
    /// Sets the drag interaction mode for categories and dimensions.
    /// 
    /// If `perpendicular`, the categories can only move along a line perpendicular to the paths. If
    /// `freeform`, the categories can freely move on the plane. If `fixed`, the categories and
    /// dimensions are stationary.
    public var arrangement: Arrangement?

    /// Sort paths so that like colors are bundled together within each category.
    public var bundleColors: Bool?

    /// Sets the path sorting algorithm.
    /// 
    /// If `forward`, sort paths based on dimension categories from left to right. If `backward`, sort
    /// paths based on dimensions categories from right to left.
    public enum SortPaths: String, Encodable {
        case forward
        case backward
    }
    /// Sets the path sorting algorithm.
    /// 
    /// If `forward`, sort paths based on dimension categories from left to right. If `backward`, sort
    /// paths based on dimensions categories from right to left.
    public var sortPaths: SortPaths?

    /// Sets the font for the `dimension` labels.
    public var labelFont: Shared.Font?

    /// Sets the font for the `category` labels.
    public var tickFont: Shared.Font?

    /// The dimensions (variables) of the parallel categories diagram.
    public struct Dimension: Encodable {
        /// The shown name of the dimension.
        public var label: String?
    
        /// Specifies the ordering logic for the categories in the dimension.
        /// 
        /// By default, plotly uses *trace*, which specifies the order that is present in the data supplied.
        /// Set `categoryorder` to *category ascending* or *category descending* if order should be
        /// determined by the alphanumerical order of the category names. Set `categoryorder` to *array* to
        /// derive the ordering from the attribute `categoryarray`. If a category is not found in the
        /// `categoryarray` array, the sorting behavior for that attribute will be identical to the *trace*
        /// mode. The unspecified categories will follow the categories in `categoryarray`.
        public var categoryOrder: Shared.CarpetCategoryOrder?
    
        /// Sets the order in which categories in this dimension appear.
        /// 
        /// Only has an effect if `categoryorder` is set to *array*. Used with `categoryorder`.
        public var categoryArray: [Double]?
    
        /// Sets alternative tick labels for the categories in this dimension.
        /// 
        /// Only has an effect if `categoryorder` is set to *array*. Should be an array the same length as
        /// `categoryarray` Used with `categoryorder`.
        public var tickText: [Double]?
    
        /// Dimension values.
        /// 
        /// `values[n]` represents the category value of the `n`th point in the dataset, therefore the
        /// `values` vector for all dimensions must be the same (longer vectors will be truncated).
        public var values: [Double]?
    
        /// The display index of dimension, from left to right, zero indexed, defaults to dimension index.
        public var displayIndex: Int?
    
        /// Shows the dimension when set to `true` (the default).
        /// 
        /// Hides the dimension for `false`.
        public var visible: Bool?
    
        /// Decoding and encoding keys compatible with Plotly schema.
        enum CodingKeys: String, CodingKey {
            case label
            case categoryOrder = "categoryorder"
            case categoryArray = "categoryarray"
            case tickText = "ticktext"
            case values
            case displayIndex = "displayindex"
            case visible
        }
        
        /// Creates `Dimension` object with specified properties.
        /// 
        /// - Parameters:
        ///   - label: The shown name of the dimension.
        ///   - categoryOrder: Specifies the ordering logic for the categories in the dimension.
        ///   - categoryArray: Sets the order in which categories in this dimension appear.
        ///   - tickText: Sets alternative tick labels for the categories in this dimension.
        ///   - values: Dimension values.
        ///   - displayIndex: The display index of dimension, from left to right, zero indexed, defaults to
        ///   dimension index.
        ///   - visible: Shows the dimension when set to `true` (the default).
        public init(label: String? = nil, categoryOrder: Shared.CarpetCategoryOrder? = nil,
                categoryArray: [Double]? = nil, tickText: [Double]? = nil, values: [Double]? = nil,
                displayIndex: Int? = nil, visible: Bool? = nil) {
            self.label = label
            self.categoryOrder = categoryOrder
            self.categoryArray = categoryArray
            self.tickText = tickText
            self.values = values
            self.displayIndex = displayIndex
            self.visible = visible
        }
        
    }
    public var dimensions: [Dimension]?

    public struct SplineColoredLine: Encodable {
        /// Sets thelinecolor.
        /// 
        /// It accepts either a specific color or an array of numbers that are mapped to the colorscale
        /// relative to the max and min values of the array or relative to `line.cmin` and `line.cmax` if
        /// set.
        public var color: Coloring?
    
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
    
        /// Sets the shape of the paths.
        /// 
        /// If `linear`, paths are composed of straight lines. If `hspline`, paths are composed of
        /// horizontal curved splines
        public enum Shape: String, Encodable {
            case linear
            case hspline
        }
        /// Sets the shape of the paths.
        /// 
        /// If `linear`, paths are composed of straight lines. If `hspline`, paths are composed of
        /// horizontal curved splines
        public var shape: Shape?
    
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
        /// true`) are available. variables `count` and `probability`. Anything contained in tag `<extra>`
        /// is displayed in the secondary box, for example "<extra>{fullData.name}</extra>". To hide the
        /// secondary box completely, use an empty tag `<extra></extra>`.
        public var hoverTemplate: String?
    
        /// Decoding and encoding keys compatible with Plotly schema.
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
            case shape
            case hoverTemplate = "hovertemplate"
        }
        
        /// Creates `SplineColoredLine` object with specified properties.
        /// 
        /// - Parameters:
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
        ///   - shape: Sets the shape of the paths.
        ///   - hoverTemplate: Template string used for rendering the information that appear on hover box.
        public init(color: Coloring? = nil, cAuto: Bool? = nil, cMin: Double? = nil, cMax: Double? =
                nil, cMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil,
                reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: Shared.ColorBar? = nil, colorAxis:
                SubPlotID? = nil, shape: Shape? = nil, hoverTemplate: String? = nil) {
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
            self.shape = shape
            self.hoverTemplate = hoverTemplate
        }
        
    }
    public var line: SplineColoredLine?

    /// The number of observations represented by each state.
    /// 
    /// Defaults to 1 so that each state represents one observation
    public var counts: Data<Double>?

    /// Decoding and encoding keys compatible with Plotly schema.
    enum CodingKeys: String, CodingKey {
        case type
        case animatable
        case visible
        case name
        case uid
        case meta
        case stream
        case transforms
        case uiRevision = "uirevision"
        case domain
        case hoverInfo = "hoverinfo"
        case hoverOn = "hoveron"
        case hoverTemplate = "hovertemplate"
        case arrangement
        case bundleColors = "bundlecolors"
        case sortPaths = "sortpaths"
        case labelFont = "labelfont"
        case tickFont = "tickfont"
        case dimensions
        case line
        case counts
    }
    
    /// Creates `ParallelCategories` object from the most frequently used properties.
    /// 
    /// - Parameters:
    ///   - name: Sets the trace name.
    ///   - line:
    public init(name: String? = nil, line: SplineColoredLine? = nil) {
        self.name = name
        self.line = line
    }
    
    /// Creates `ParallelCategories` object with specified properties.
    /// 
    /// - Parameters:
    ///   - visible: Determines whether or not this trace is visible.
    ///   - name: Sets the trace name.
    ///   - uid: Assign an id to this trace, Use this to provide object constancy between traces during
    ///   animations and transitions.
    ///   - meta: Assigns extra meta information associated with this trace that can be used in various
    ///   text attributes.
    ///   - stream:
    ///   - transforms:
    ///   - uiRevision: Controls persistence of some user-driven changes to the trace: `constraintrange`
    ///   in `parcoords` traces, as well as some `editable: true` modifications such as `name` and
    ///   `colorbar.title`.
    ///   - domain:
    ///   - hoverInfo: Determines which trace information appear on hover.
    ///   - hoverOn: Sets the hover interaction mode for the parcats diagram.
    ///   - hoverTemplate: Template string used for rendering the information that appear on hover box.
    ///   - arrangement: Sets the drag interaction mode for categories and dimensions.
    ///   - bundleColors: Sort paths so that like colors are bundled together within each category.
    ///   - sortPaths: Sets the path sorting algorithm.
    ///   - labelFont: Sets the font for the `dimension` labels.
    ///   - tickFont: Sets the font for the `category` labels.
    ///   - dimensions:
    ///   - line:
    ///   - counts: The number of observations represented by each state.
    public init(visible: Shared.Visible? = nil, name: String? = nil, uid: String? = nil, meta:
            Data<Anything>? = nil, stream: Shared.Stream? = nil, transforms: [Shared.Transform]? = nil,
            uiRevision: Anything? = nil, domain: Shared.Domain? = nil, hoverInfo: HoverInfo? = nil, hoverOn:
            HoverOn? = nil, hoverTemplate: String? = nil, arrangement: Arrangement? = nil, bundleColors:
            Bool? = nil, sortPaths: SortPaths? = nil, labelFont: Shared.Font? = nil, tickFont: Shared.Font?
            = nil, dimensions: [Dimension]? = nil, line: SplineColoredLine? = nil, counts: Data<Double>? =
            nil) {
        self.visible = visible
        self.name = name
        self.uid = uid
        self.meta = meta
        self.stream = stream
        self.transforms = transforms
        self.uiRevision = uiRevision
        self.domain = domain
        self.hoverInfo = hoverInfo
        self.hoverOn = hoverOn
        self.hoverTemplate = hoverTemplate
        self.arrangement = arrangement
        self.bundleColors = bundleColors
        self.sortPaths = sortPaths
        self.labelFont = labelFont
        self.tickFont = tickFont
        self.dimensions = dimensions
        self.line = line
        self.counts = counts
    }
    
}