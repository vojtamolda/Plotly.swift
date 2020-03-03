/// Visualize hierarchal data from leaves (and/or outer branches) towards root with rectangles.
/// 
/// The treemap sectors are determined by the entries in *labels* or *ids* and in *parents*.
/// 
/// - SeeAlso:
///   Documentation for 
///   [Python](https://plot.ly/python/reference/#treemap), 
///   [JavaScript](https://plot.ly/javascript/reference/#treemap) or 
///   [R](https://plot.ly/r/reference/#treemap)
public struct Treemap<ValuesData>: Trace where ValuesData: Plotable {
    public let type: String = "treemap"

    public let animatable: Bool = true

    /// Determines whether or not this trace is visible.
    /// 
    /// If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the
    /// legend itself is visible).
    public var visible: Shared.Visible? = nil

    /// Sets the opacity of the trace.
    public var opacity: Double? = nil

    /// Sets the trace name.
    /// 
    /// The trace name appear as the legend item and on hover.
    public var name: String? = nil

    /// Assign an id to this trace, Use this to provide object constancy between traces during
    /// animations and transitions.
    public var uid: String? = nil

    /// Assigns id labels to each datum.
    /// 
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    public var ids: [String]? = nil

    /// Assigns extra data each datum.
    /// 
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    public var customData: [String]? = nil

    /// Assigns extra meta information associated with this trace that can be used in various text
    /// attributes.
    /// 
    /// Attributes such as trace `name`, graph, axis and colorbar `title.text`, annotation `text`
    /// `rangeselector`, `updatemenues` and `sliders` `label` text all support `meta`. To access the
    /// trace `meta` values in an attribute in the same trace, simply use `%{meta[i]}` where `i` is the
    /// index or key of the `meta` item in question. To access trace `meta` in layout attributes, use
    /// `%{data[n[.meta[i]}` where `i` is the index or key of the `meta` and `n` is the trace index.
    public var meta: Data<Anything>? = nil

    public var hoverLabel: Shared.HoverLabel? = nil

    public var stream: Shared.Stream? = nil

    public var transforms: [Shared.Transform]? = nil

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
    public var uiRevision: Anything? = nil

    /// Sets the labels of each of the sectors.
    public var labels: [String]? = nil

    /// Sets the parent sectors for each of the sectors.
    /// 
    /// Empty string items '' are understood to reference the root node in the hierarchy. If `ids` is
    /// filled, `parents` items are understood to be "ids" themselves. When `ids` is not set, plotly
    /// attempts to find matching items in `labels`, but beware they must be unique.
    public var parents: [String]? = nil

    /// Sets the values associated with each of the sectors.
    /// 
    /// Use with `branchvalues` to determine how the values are summed.
    public var values: ValuesData? = nil

    /// Determines how the items in `values` are summed.
    /// 
    /// When set to *total*, items in `values` are taken to be value of all its descendants. When set to
    /// *remainder*, items in `values` corresponding to the root and the branches sectors are taken to
    /// be the extra part not part of the sum of the values at their leaves.
    public enum BranchValues: String, Encodable {
        case remainder
        case total
    }
    /// Determines how the items in `values` are summed.
    /// 
    /// When set to *total*, items in `values` are taken to be value of all its descendants. When set to
    /// *remainder*, items in `values` corresponding to the root and the branches sectors are taken to
    /// be the extra part not part of the sum of the values at their leaves.
    public var branchValues: BranchValues? = nil

    /// Determines default for `values` when it is not provided, by inferring a 1 for each of the
    /// *leaves* and/or *branches*, otherwise 0.
    public struct Count: OptionSet, Encodable {
        public let rawValue: Int
        public static var branches: Count { Count(rawValue: 1 << 0) }
        public static var leaves: Count { Count(rawValue: 1 << 1) }
        
        public init(rawValue: Int) {
            self.rawValue = rawValue
        }
        
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["branches"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["leaves"] }
            var container = encoder.singleValueContainer()
            try container.encode(options.joined(separator: "+"))
        }
    }
    /// Determines default for `values` when it is not provided, by inferring a 1 for each of the
    /// *leaves* and/or *branches*, otherwise 0.
    public var count: Count? = nil

    /// Sets the level from which this trace hierarchy is rendered.
    /// 
    /// Set `level` to `''` to start from the root node in the hierarchy. Must be an "id" if `ids` is
    /// filled in, otherwise plotly attempts to find a matching item in `labels`.
    public var level: Anything? = nil

    /// Sets the number of rendered sectors from any given `level`.
    /// 
    /// Set `maxdepth` to *-1* to render all the levels in the hierarchy.
    public var maxDepth: Int? = nil

    public struct Tiling: Encodable {
        /// Determines d3 treemap solver.
        /// 
        /// For more info please refer to https://github.com/d3/d3-hierarchy#treemap-tiling
        public enum Packing: String, Encodable {
            case squarify
            case binary
            case dice
            case slice
            case sliceDice = "slice-dice"
            case diceSlice = "dice-slice"
        }
        /// Determines d3 treemap solver.
        /// 
        /// For more info please refer to https://github.com/d3/d3-hierarchy#treemap-tiling
        public var packing: Packing? = nil
    
        /// When using *squarify* `packing` algorithm, according to
        /// https://github.com/d3/d3-hierarchy/blob/master/README.md#squarify_ratio this option specifies
        /// the desired aspect ratio of the generated rectangles.
        /// 
        /// The ratio must be specified as a number greater than or equal to one. Note that the orientation
        /// of the generated rectangles (tall or wide) is not implied by the ratio; for example, a ratio of
        /// two will attempt to produce a mixture of rectangles whose width:height ratio is either 2:1 or
        /// 1:2. When using *squarify*, unlike d3 which uses the Golden Ratio i.e. 1.618034, Plotly applies
        /// 1 to increase squares in treemap layouts.
        public var squarifyRatio: Double? = nil
    
        /// Determines if the positions obtained from solver are flipped on each axis.
        public struct Flip: OptionSet, Encodable {
            public let rawValue: Int
            public static var x: Flip { Flip(rawValue: 1 << 0) }
            public static var y: Flip { Flip(rawValue: 1 << 1) }
            
            public init(rawValue: Int) {
                self.rawValue = rawValue
            }
            
            public func encode(to encoder: Encoder) throws {
                var options = [String]()
                if (self.rawValue & 1 << 0) != 0 { options += ["x"] }
                if (self.rawValue & 1 << 1) != 0 { options += ["y"] }
                var container = encoder.singleValueContainer()
                try container.encode(options.joined(separator: "+"))
            }
        }
        /// Determines if the positions obtained from solver are flipped on each axis.
        public var flip: Flip? = nil
    
        /// Sets the inner padding (in px).
        public var padding: Double? = nil
    
        /// Decoding and encoding keys compatible with Plotly schema.
        enum CodingKeys: String, CodingKey {
            case packing
            case squarifyRatio = "squarifyratio"
            case flip
            case padding = "pad"
        }
        
        /// Creates `Tiling` object with specified properties.
        /// 
        /// - Parameters:
        ///   - packing: Determines d3 treemap solver.
        ///   - squarifyRatio: When using *squarify* `packing` algorithm, according to
        ///   https://github.com/d3/d3-hierarchy/blob/master/README.md#squarify_ratio this option specifies
        ///   the desired aspect ratio of the generated rectangles.
        ///   - flip: Determines if the positions obtained from solver are flipped on each axis.
        ///   - padding: Sets the inner padding (in px).
        public init(packing: Packing? = nil, squarifyRatio: Double? = nil, flip: Flip? = nil, padding:
                Double? = nil) {
            self.packing = packing
            self.squarifyRatio = squarifyRatio
            self.flip = flip
            self.padding = padding
        }
        
    }
    public var tiling: Tiling? = nil

    public struct Marker: Encodable {
        public var padding: Shared.Padding? = nil
    
        /// Sets the color of each sector of this trace.
        /// 
        /// If not specified, the default trace color set is used to pick the sector colors.
        public var colors: [Double]? = nil
    
        /// Determines if the sector colors are faded towards the background from the leaves up to the
        /// headers.
        /// 
        /// This option is unavailable when a `colorscale` is present, defaults to false when
        /// `marker.colors` is set, but otherwise defaults to true. When set to *reversed*, the fading
        /// direction is inverted, that is the top elements within hierarchy are drawn with fully saturated
        /// colors while the leaves are faded towards the background color.
        public enum DepthFade: Encodable {
            case on
            case off
            case reversed
            public func encode(to encoder: Encoder) throws {
                var container = encoder.singleValueContainer()
                switch self {
                case .on:
                    try container.encode(true)
                case .off:
                    try container.encode(false)
                case .reversed:
                    try container.encode("reversed")
                }
            }
        }
        /// Determines if the sector colors are faded towards the background from the leaves up to the
        /// headers.
        /// 
        /// This option is unavailable when a `colorscale` is present, defaults to false when
        /// `marker.colors` is set, but otherwise defaults to true. When set to *reversed*, the fading
        /// direction is inverted, that is the top elements within hierarchy are drawn with fully saturated
        /// colors while the leaves are faded towards the background color.
        public var depthFade: DepthFade? = nil
    
        public var line: Shared.VariableLine? = nil
    
        /// Determines whether or not the color domain is computed with respect to the input data (here
        /// colors) or the bounds set in `marker.cmin` and `marker.cmax` Has an effect only if colorsis set
        /// to a numerical array.
        /// 
        /// Defaults to `false` when `marker.cmin` and `marker.cmax` are set by the user.
        public var cAuto: Bool? = nil
    
        /// Sets the lower bound of the color domain.
        /// 
        /// Has an effect only if colorsis set to a numerical array. Value should have the same units as
        /// colors and if set, `marker.cmax` must be set as well.
        public var cMin: Double? = nil
    
        /// Sets the upper bound of the color domain.
        /// 
        /// Has an effect only if colorsis set to a numerical array. Value should have the same units as
        /// colors and if set, `marker.cmin` must be set as well.
        public var cMax: Double? = nil
    
        /// Sets the mid-point of the color domain by scaling `marker.cmin` and/or `marker.cmax` to be
        /// equidistant to this point.
        /// 
        /// Has an effect only if colorsis set to a numerical array. Value should have the same units as
        /// colors. Has no effect when `marker.cauto` is `false`.
        public var cMiddle: Double? = nil
    
        /// Sets the colorscale.
        /// 
        /// Has an effect only if colorsis set to a numerical array. The colorscale must be an array
        /// containing arrays mapping a normalized value to an rgb, rgba, hex, hsl, hsv, or named color
        /// string. At minimum, a mapping for the lowest (0) and highest (1) values are required. For
        /// example, `[[0, 'rgb(0,0,255)'], [1, 'rgb(255,0,0)']]`. To control the bounds of the colorscale
        /// in color space, use`marker.cmin` and `marker.cmax`. Alternatively, `colorscale` may be a palette
        /// name string of the following list:
        /// Greys,YlGnBu,Greens,YlOrRd,Bluered,RdBu,Reds,Blues,Picnic,Rainbow,Portland,Jet,Hot,Blackbody,Earth,Electric,Viridis,Cividis.
        public var colorScale: ColorScale? = nil
    
        /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette
        /// determined by `marker.colorscale`.
        /// 
        /// Has an effect only if colorsis set to a numerical array. In case `colorscale` is unspecified or
        /// `autocolorscale` is true, the default palette will be chosen according to whether numbers in the
        /// `color` array are all positive, all negative or mixed.
        public var autoColorScale: Bool? = nil
    
        /// Reverses the color mapping if true.
        /// 
        /// Has an effect only if colorsis set to a numerical array. If true, `marker.cmin` will correspond
        /// to the last color in the array and `marker.cmax` will correspond to the first color.
        public var reverseScale: Bool? = nil
    
        /// Determines whether or not a colorbar is displayed for this trace.
        /// 
        /// Has an effect only if colorsis set to a numerical array.
        public var showScale: Bool? = nil
    
        public var colorBar: Shared.ColorBar? = nil
    
        /// Sets a reference to a shared color axis.
        /// 
        /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
        /// for these shared color axes are set in the layout, under `layout.coloraxis`,
        /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
        public var colorAxis: Layout.ColorAxis = Layout.ColorAxis(uid: 1)
    
        /// Decoding and encoding keys compatible with Plotly schema.
        enum CodingKeys: String, CodingKey {
            case padding = "pad"
            case colors
            case depthFade = "depthfade"
            case line
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
        
        /// Creates `Marker` object with specified properties.
        /// 
        /// - Parameters:
        ///   - padding:
        ///   - colors: Sets the color of each sector of this trace.
        ///   - depthFade: Determines if the sector colors are faded towards the background from the leaves up
        ///   to the headers.
        ///   - line:
        ///   - cAuto: Determines whether or not the color domain is computed with respect to the input data
        ///   (here colors) or the bounds set in `marker.cmin` and `marker.cmax` Has an effect only if
        ///   colorsis set to a numerical array.
        ///   - cMin: Sets the lower bound of the color domain.
        ///   - cMax: Sets the upper bound of the color domain.
        ///   - cMiddle: Sets the mid-point of the color domain by scaling `marker.cmin` and/or `marker.cmax`
        ///   to be equidistant to this point.
        ///   - colorScale: Sets the colorscale.
        ///   - autoColorScale: Determines whether the colorscale is a default palette (`autocolorscale:
        ///   true`) or the palette determined by `marker.colorscale`.
        ///   - reverseScale: Reverses the color mapping if true.
        ///   - showScale: Determines whether or not a colorbar is displayed for this trace.
        ///   - colorBar:
        ///   - colorAxis: Sets a reference to a shared color axis.
        public init(padding: Shared.Padding? = nil, colors: [Double]? = nil, depthFade: DepthFade? =
                nil, line: Shared.VariableLine? = nil, cAuto: Bool? = nil, cMin: Double? = nil, cMax: Double? =
                nil, cMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil,
                reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: Shared.ColorBar? = nil, colorAxis:
                Layout.ColorAxis = Layout.ColorAxis(uid: 1)) {
            self.padding = padding
            self.colors = colors
            self.depthFade = depthFade
            self.line = line
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
    public var marker: Marker? = nil

    public struct PathBar: Encodable {
        /// Determines if the path bar is drawn i.e.
        /// 
        /// outside the trace `domain` and with one pixel gap.
        public var visible: Bool? = nil
    
        /// Determines on which side of the the treemap the `pathbar` should be presented.
        public enum Side: String, Encodable {
            case top
            case bottom
        }
        /// Determines on which side of the the treemap the `pathbar` should be presented.
        public var side: Side? = nil
    
        /// Determines which shape is used for edges between `barpath` labels.
        public enum EdgeShape: String, Encodable {
            case greaterThan = ">"
            case lessThan = "<"
            case bar = "|"
            case forwardSlash = "/"
            case backwardSlash = "\\"
        }
        /// Determines which shape is used for edges between `barpath` labels.
        public var edgeShape: EdgeShape? = nil
    
        /// Sets the thickness of `pathbar` (in px).
        /// 
        /// If not specified the `pathbar.textfont.size` is used with 3 pixles extra padding on each side.
        public var thickness: Double? = nil
    
        /// Sets the font used inside `pathbar`.
        public var textFont: Shared.VariableFont? = nil
    
        /// Decoding and encoding keys compatible with Plotly schema.
        enum CodingKeys: String, CodingKey {
            case visible
            case side
            case edgeShape = "edgeshape"
            case thickness
            case textFont = "textfont"
        }
        
        /// Creates `PathBar` object with specified properties.
        /// 
        /// - Parameters:
        ///   - visible: Determines if the path bar is drawn i.e.
        ///   - side: Determines on which side of the the treemap the `pathbar` should be presented.
        ///   - edgeShape: Determines which shape is used for edges between `barpath` labels.
        ///   - thickness: Sets the thickness of `pathbar` (in px).
        ///   - textFont: Sets the font used inside `pathbar`.
        public init(visible: Bool? = nil, side: Side? = nil, edgeShape: EdgeShape? = nil, thickness:
                Double? = nil, textFont: Shared.VariableFont? = nil) {
            self.visible = visible
            self.side = side
            self.edgeShape = edgeShape
            self.thickness = thickness
            self.textFont = textFont
        }
        
    }
    public var pathBar: PathBar? = nil

    /// Sets text elements associated with each sector.
    /// 
    /// If trace `textinfo` contains a *text* flag, these elements will be seen on the chart. If trace
    /// `hoverinfo` contains a *text* flag and *hovertext* is not set, these elements will be seen in
    /// the hover labels.
    public var text: Data<String>? = nil

    /// Determines which trace information appear on the graph.
    public struct TextInfo: OptionSet, Encodable {
        public let rawValue: Int
        public static var label: TextInfo { TextInfo(rawValue: 1 << 0) }
        public static var text: TextInfo { TextInfo(rawValue: 1 << 1) }
        public static var value: TextInfo { TextInfo(rawValue: 1 << 2) }
        public static var currentPath: TextInfo { TextInfo(rawValue: 1 << 3) }
        public static var percentRoot: TextInfo { TextInfo(rawValue: 1 << 4) }
        public static var percentEntry: TextInfo { TextInfo(rawValue: 1 << 5) }
        public static var percentParent: TextInfo { TextInfo(rawValue: 1 << 6) }
        public static var none: TextInfo { TextInfo(rawValue: 1 << 7) }
        
        public init(rawValue: Int) {
            self.rawValue = rawValue
        }
        
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["label"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["text"] }
            if (self.rawValue & 1 << 2) != 0 { options += ["value"] }
            if (self.rawValue & 1 << 3) != 0 { options += ["current path"] }
            if (self.rawValue & 1 << 4) != 0 { options += ["percent root"] }
            if (self.rawValue & 1 << 5) != 0 { options += ["percent entry"] }
            if (self.rawValue & 1 << 6) != 0 { options += ["percent parent"] }
            if (self.rawValue & 1 << 7) != 0 { options += ["none"] }
            var container = encoder.singleValueContainer()
            try container.encode(options.joined(separator: "+"))
        }
    }
    /// Determines which trace information appear on the graph.
    public var textInfo: TextInfo? = nil

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
    /// `arrayOk: true`) are available. variables `currentPath`, `root`, `entry`, `percentRoot`,
    /// `percentEntry`, `percentParent`, `label` and `value`.
    public var textTemplate: Data<String>? = nil

    /// Sets hover text elements associated with each sector.
    /// 
    /// If a single string, the same string appears for all data points. If an array of string, the
    /// items are mapped in order of this trace's sectors. To be seen, trace `hoverinfo` must contain a
    /// *text* flag.
    public var hoverText: Data<String>? = nil

    /// Determines which trace information appear on hover.
    /// 
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    public struct HoverInfo: OptionSet, Encodable {
        public let rawValue: Int
        public static var label: HoverInfo { HoverInfo(rawValue: 1 << 0) }
        public static var text: HoverInfo { HoverInfo(rawValue: 1 << 1) }
        public static var value: HoverInfo { HoverInfo(rawValue: 1 << 2) }
        public static var name: HoverInfo { HoverInfo(rawValue: 1 << 3) }
        public static var currentPath: HoverInfo { HoverInfo(rawValue: 1 << 4) }
        public static var percentRoot: HoverInfo { HoverInfo(rawValue: 1 << 5) }
        public static var percentEntry: HoverInfo { HoverInfo(rawValue: 1 << 6) }
        public static var percentParent: HoverInfo { HoverInfo(rawValue: 1 << 7) }
        public static var all: HoverInfo { HoverInfo(rawValue: 1 << 8) }
        public static var none: HoverInfo { HoverInfo(rawValue: 1 << 9) }
        public static var skip: HoverInfo { HoverInfo(rawValue: 1 << 10) }
        
        public init(rawValue: Int) {
            self.rawValue = rawValue
        }
        
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["label"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["text"] }
            if (self.rawValue & 1 << 2) != 0 { options += ["value"] }
            if (self.rawValue & 1 << 3) != 0 { options += ["name"] }
            if (self.rawValue & 1 << 4) != 0 { options += ["current path"] }
            if (self.rawValue & 1 << 5) != 0 { options += ["percent root"] }
            if (self.rawValue & 1 << 6) != 0 { options += ["percent entry"] }
            if (self.rawValue & 1 << 7) != 0 { options += ["percent parent"] }
            if (self.rawValue & 1 << 8) != 0 { options += ["all"] }
            if (self.rawValue & 1 << 9) != 0 { options += ["none"] }
            if (self.rawValue & 1 << 10) != 0 { options += ["skip"] }
            var container = encoder.singleValueContainer()
            try container.encode(options.joined(separator: "+"))
        }
    }
    /// Determines which trace information appear on hover.
    /// 
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    public var hoverInfo: HoverInfo? = nil

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
    /// true`) are available. variables `currentPath`, `root`, `entry`, `percentRoot`, `percentEntry`
    /// and `percentParent`. Anything contained in tag `<extra>` is displayed in the secondary box, for
    /// example "<extra>{fullData.name}</extra>". To hide the secondary box completely, use an empty tag
    /// `<extra></extra>`.
    public var hoverTemplate: Data<String>? = nil

    /// Sets the font used for `textinfo`.
    public var textFont: Shared.VariableFont? = nil

    /// Sets the font used for `textinfo` lying inside the sector.
    public var insideTextFont: Shared.VariableFont? = nil

    /// Sets the font used for `textinfo` lying outside the sector.
    public var outsideTextFont: Shared.OutsideTextFont? = nil

    /// Sets the positions of the `text` elements.
    public var textPosition: Shared.TextPosition? = nil

    public var domain: Shared.Domain? = nil

    /// Decoding and encoding keys compatible with Plotly schema.
    enum CodingKeys: String, CodingKey {
        case type
        case visible
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
        case labels
        case parents
        case values
        case branchValues = "branchvalues"
        case count
        case level
        case maxDepth = "maxdepth"
        case tiling
        case marker
        case pathBar = "pathbar"
        case text
        case textInfo = "textinfo"
        case textTemplate = "texttemplate"
        case hoverText = "hovertext"
        case hoverInfo = "hoverinfo"
        case hoverTemplate = "hovertemplate"
        case textFont = "textfont"
        case insideTextFont = "insidetextfont"
        case outsideTextFont = "outsidetextfont"
        case textPosition = "textposition"
        case domain
    }
    
    /// Creates `Treemap` object from the most frequently used properties.
    /// 
    /// - Parameters:
    ///   - name: Sets the trace name.
    ///   - values: Sets the values associated with each of the sectors.
    ///   - marker:
    ///   - text: Sets text elements associated with each sector.
    ///   - hoverText: Sets hover text elements associated with each sector.
    public init(name: String? = nil, values: ValuesData? = nil, marker: Marker? = nil, text:
            Data<String>? = nil, hoverText: Data<String>? = nil) {
        self.name = name
        self.values = values
        self.marker = marker
        self.text = text
        self.hoverText = hoverText
    }
    
    /// Creates `Treemap` object with specified properties.
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
    ///   - transforms:
    ///   - uiRevision: Controls persistence of some user-driven changes to the trace: `constraintrange`
    ///   in `parcoords` traces, as well as some `editable: true` modifications such as `name` and
    ///   `colorbar.title`.
    ///   - labels: Sets the labels of each of the sectors.
    ///   - parents: Sets the parent sectors for each of the sectors.
    ///   - values: Sets the values associated with each of the sectors.
    ///   - branchValues: Determines how the items in `values` are summed.
    ///   - count: Determines default for `values` when it is not provided, by inferring a 1 for each of
    ///   the *leaves* and/or *branches*, otherwise 0.
    ///   - level: Sets the level from which this trace hierarchy is rendered.
    ///   - maxDepth: Sets the number of rendered sectors from any given `level`.
    ///   - tiling:
    ///   - marker:
    ///   - pathBar:
    ///   - text: Sets text elements associated with each sector.
    ///   - textInfo: Determines which trace information appear on the graph.
    ///   - textTemplate: Template string used for rendering the information text that appear on points.
    ///   - hoverText: Sets hover text elements associated with each sector.
    ///   - hoverInfo: Determines which trace information appear on hover.
    ///   - hoverTemplate: Template string used for rendering the information that appear on hover box.
    ///   - textFont: Sets the font used for `textinfo`.
    ///   - insideTextFont: Sets the font used for `textinfo` lying inside the sector.
    ///   - outsideTextFont: Sets the font used for `textinfo` lying outside the sector.
    ///   - textPosition: Sets the positions of the `text` elements.
    ///   - domain:
    public init(visible: Shared.Visible? = nil, opacity: Double? = nil, name: String? = nil, uid:
            String? = nil, ids: [String]? = nil, customData: [String]? = nil, meta: Data<Anything>? = nil,
            hoverLabel: Shared.HoverLabel? = nil, stream: Shared.Stream? = nil, transforms:
            [Shared.Transform]? = nil, uiRevision: Anything? = nil, labels: [String]? = nil, parents:
            [String]? = nil, values: ValuesData? = nil, branchValues: BranchValues? = nil, count: Count? =
            nil, level: Anything? = nil, maxDepth: Int? = nil, tiling: Tiling? = nil, marker: Marker? = nil,
            pathBar: PathBar? = nil, text: Data<String>? = nil, textInfo: TextInfo? = nil, textTemplate:
            Data<String>? = nil, hoverText: Data<String>? = nil, hoverInfo: HoverInfo? = nil, hoverTemplate:
            Data<String>? = nil, textFont: Shared.VariableFont? = nil, insideTextFont: Shared.VariableFont?
            = nil, outsideTextFont: Shared.OutsideTextFont? = nil, textPosition: Shared.TextPosition? = nil,
            domain: Shared.Domain? = nil) {
        self.visible = visible
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
        self.labels = labels
        self.parents = parents
        self.values = values
        self.branchValues = branchValues
        self.count = count
        self.level = level
        self.maxDepth = maxDepth
        self.tiling = tiling
        self.marker = marker
        self.pathBar = pathBar
        self.text = text
        self.textInfo = textInfo
        self.textTemplate = textTemplate
        self.hoverText = hoverText
        self.hoverInfo = hoverInfo
        self.hoverTemplate = hoverTemplate
        self.textFont = textFont
        self.insideTextFont = insideTextFont
        self.outsideTextFont = outsideTextFont
        self.textPosition = textPosition
        self.domain = domain
    }
    
    /// Encodes the object in a format compatible with Plotly.
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encodeIfPresent(visible, forKey: .visible)
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
        try container.encodeIfPresent(labels, forKey: .labels)
        try container.encodeIfPresent(parents, forKey: .parents)
        if let values = self.values {
            try values.encode(toPlotly: container.superEncoder(forKey: .values))
        }
        try container.encodeIfPresent(branchValues, forKey: .branchValues)
        try container.encodeIfPresent(count, forKey: .count)
        try container.encodeIfPresent(level, forKey: .level)
        try container.encodeIfPresent(maxDepth, forKey: .maxDepth)
        try container.encodeIfPresent(tiling, forKey: .tiling)
        try container.encodeIfPresent(marker, forKey: .marker)
        try container.encodeIfPresent(pathBar, forKey: .pathBar)
        try container.encodeIfPresent(text, forKey: .text)
        try container.encodeIfPresent(textInfo, forKey: .textInfo)
        try container.encodeIfPresent(textTemplate, forKey: .textTemplate)
        try container.encodeIfPresent(hoverText, forKey: .hoverText)
        try container.encodeIfPresent(hoverInfo, forKey: .hoverInfo)
        try container.encodeIfPresent(hoverTemplate, forKey: .hoverTemplate)
        try container.encodeIfPresent(textFont, forKey: .textFont)
        try container.encodeIfPresent(insideTextFont, forKey: .insideTextFont)
        try container.encodeIfPresent(outsideTextFont, forKey: .outsideTextFont)
        try container.encodeIfPresent(textPosition, forKey: .textPosition)
        try container.encodeIfPresent(domain, forKey: .domain)
    }
}