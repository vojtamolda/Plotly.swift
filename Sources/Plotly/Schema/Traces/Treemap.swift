/// Visualize hierarchal data from leaves (and/or outer branches) towards root with rectangles. 
///
/// The treemap sectors are determined by the entries in *labels* or *ids* and in *parents*.
public struct Treemap: Trace {
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#type) |
    /// [Python](https://plot.ly/python/reference/#type) |
    /// [R](https://plot.ly/r/reference/#type)
    public let type: String = "treemap"

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#animatable) |
    /// [Python](https://plot.ly/python/reference/#animatable) |
    /// [R](https://plot.ly/r/reference/#animatable)
    public let animatable: Bool = true

    /// Determines whether or not this trace is visible. 
    ///
    /// If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the
    /// legend itself is visible).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#treemap-visible) |
    /// [Python](https://plot.ly/python/reference/#treemap-visible) |
    /// [R](https://plot.ly/r/reference/#treemap-visible)
    public var visible: Shared.Visible?

    /// Sets the opacity of the trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#treemap-opacity) |
    /// [Python](https://plot.ly/python/reference/#treemap-opacity) |
    /// [R](https://plot.ly/r/reference/#treemap-opacity)
    public var opacity: Double?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#treemap-name) |
    /// [Python](https://plot.ly/python/reference/#treemap-name) |
    /// [R](https://plot.ly/r/reference/#treemap-name)
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#treemap-uid) |
    /// [Python](https://plot.ly/python/reference/#treemap-uid) |
    /// [R](https://plot.ly/r/reference/#treemap-uid)
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#treemap-ids) |
    /// [Python](https://plot.ly/python/reference/#treemap-ids) |
    /// [R](https://plot.ly/r/reference/#treemap-ids)
    public var ids: [Double]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#treemap-customdata) |
    /// [Python](https://plot.ly/python/reference/#treemap-customdata) |
    /// [R](https://plot.ly/r/reference/#treemap-customdata)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#treemap-meta) |
    /// [Python](https://plot.ly/python/reference/#treemap-meta) |
    /// [R](https://plot.ly/r/reference/#treemap-meta)
    public var meta: ArrayOrAnything?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#treemap-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#treemap-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#treemap-hoverlabel)
    public var hoverLabel: Shared.HoverLabel?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#treemap-stream) |
    /// [Python](https://plot.ly/python/reference/#treemap-stream) |
    /// [R](https://plot.ly/r/reference/#treemap-stream)
    public var stream: Shared.Stream?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#treemap-transforms) |
    /// [Python](https://plot.ly/python/reference/#treemap-transforms) |
    /// [R](https://plot.ly/r/reference/#treemap-transforms)
    public var transforms: [Shared.Transform]?

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
    /// [JavaScript](https://plot.ly/javascript/reference/#treemap-uirevision) |
    /// [Python](https://plot.ly/python/reference/#treemap-uirevision) |
    /// [R](https://plot.ly/r/reference/#treemap-uirevision)
    public var uiRevision: Anything?

    /// Sets the labels of each of the sectors.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#treemap-labels) |
    /// [Python](https://plot.ly/python/reference/#treemap-labels) |
    /// [R](https://plot.ly/r/reference/#treemap-labels)
    public var labels: [Double]?

    /// Sets the parent sectors for each of the sectors. 
    ///
    /// Empty string items '' are understood to reference the root node in the hierarchy. If `ids` is
    /// filled, `parents` items are understood to be "ids" themselves. When `ids` is not set, plotly
    /// attempts to find matching items in `labels`, but beware they must be unique.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#treemap-parents) |
    /// [Python](https://plot.ly/python/reference/#treemap-parents) |
    /// [R](https://plot.ly/r/reference/#treemap-parents)
    public var parents: [Double]?

    /// Sets the values associated with each of the sectors. 
    ///
    /// Use with `branchvalues` to determine how the values are summed.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#treemap-values) |
    /// [Python](https://plot.ly/python/reference/#treemap-values) |
    /// [R](https://plot.ly/r/reference/#treemap-values)
    public var values: [Double]?

    /// Determines how the items in `values` are summed. 
    ///
    /// When set to *total*, items in `values` are taken to be value of all its descendants. When set to
    /// *remainder*, items in `values` corresponding to the root and the branches sectors are taken to
    /// be the extra part not part of the sum of the values at their leaves.
    ///
    /// # Used By
    /// `Treemap.branchValues` |
    public enum BranchValues: String, Encodable {
        case remainder
        case total
    }
    /// Determines how the items in `values` are summed. 
    ///
    /// When set to *total*, items in `values` are taken to be value of all its descendants. When set to
    /// *remainder*, items in `values` corresponding to the root and the branches sectors are taken to
    /// be the extra part not part of the sum of the values at their leaves.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#treemap-branchvalues) |
    /// [Python](https://plot.ly/python/reference/#treemap-branchvalues) |
    /// [R](https://plot.ly/r/reference/#treemap-branchvalues)
    public var branchValues: BranchValues?

    /// Determines default for `values` when it is not provided, by inferring a 1 for each of the *leaves* and/or *branches*, otherwise 0.
    ///
    /// # Used By
    /// `Treemap.count` |
    public struct Count: OptionSet, Encodable {
        public let rawValue: Int
    
        public static var branches: Count { Count(rawValue: 1 << 0) }
        public static var leaves: Count { Count(rawValue: 1 << 1) }
    
        public init(rawValue: Int) { self.rawValue = rawValue }
    
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["branches"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["leaves"] }
            var container = encoder.singleValueContainer()
            try container.encode(options.joined(separator: "+"))
        }
    }
    /// Determines default for `values` when it is not provided, by inferring a 1 for each of the *leaves* and/or *branches*, otherwise 0.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#treemap-count) |
    /// [Python](https://plot.ly/python/reference/#treemap-count) |
    /// [R](https://plot.ly/r/reference/#treemap-count)
    public var count: Count?

    /// Sets the level from which this trace hierarchy is rendered. 
    ///
    /// Set `level` to `''` to start from the root node in the hierarchy. Must be an "id" if `ids` is
    /// filled in, otherwise plotly attempts to find a matching item in `labels`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#treemap-level) |
    /// [Python](https://plot.ly/python/reference/#treemap-level) |
    /// [R](https://plot.ly/r/reference/#treemap-level)
    public var level: Anything?

    /// Sets the number of rendered sectors from any given `level`. 
    ///
    /// Set `maxdepth` to *-1* to render all the levels in the hierarchy.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#treemap-maxdepth) |
    /// [Python](https://plot.ly/python/reference/#treemap-maxdepth) |
    /// [R](https://plot.ly/r/reference/#treemap-maxdepth)
    public var maxDepth: Int?

    /// # Used By
    /// `Treemap.tiling` |
    public struct Tiling: Encodable {
        /// Determines d3 treemap solver. 
        ///
        /// For more info please refer to https://github.com/d3/d3-hierarchy#treemap-tiling
        ///
        /// # Used By
        /// `Treemap.Tiling.packing` |
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
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#treemap-tiling-packing) |
        /// [Python](https://plot.ly/python/reference/#treemap-tiling-packing) |
        /// [R](https://plot.ly/r/reference/#treemap-tiling-packing)
        public var packing: Packing?
    
        /// When using *squarify* `packing` algorithm, according to https://github.com/d3/d3-hierarchy/blob/master/README.md#squarify_ratio this option specifies the desired aspect ratio of the generated rectangles. 
        ///
        /// The ratio must be specified as a number greater than or equal to one. Note that the orientation
        /// of the generated rectangles (tall or wide) is not implied by the ratio; for example, a ratio of
        /// two will attempt to produce a mixture of rectangles whose width:height ratio is either 2:1 or
        /// 1:2. When using *squarify*, unlike d3 which uses the Golden Ratio i.e. 1.618034, Plotly applies
        /// 1 to increase squares in treemap layouts.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#treemap-tiling-squarifyratio) |
        /// [Python](https://plot.ly/python/reference/#treemap-tiling-squarifyratio) |
        /// [R](https://plot.ly/r/reference/#treemap-tiling-squarifyratio)
        public var squarifyRatio: Double?
    
        /// Determines if the positions obtained from solver are flipped on each axis.
        ///
        /// # Used By
        /// `Treemap.Tiling.flip` |
        public struct Flip: OptionSet, Encodable {
            public let rawValue: Int
        
            public static var x: Flip { Flip(rawValue: 1 << 0) }
            public static var y: Flip { Flip(rawValue: 1 << 1) }
        
            public init(rawValue: Int) { self.rawValue = rawValue }
        
            public func encode(to encoder: Encoder) throws {
                var options = [String]()
                if (self.rawValue & 1 << 0) != 0 { options += ["x"] }
                if (self.rawValue & 1 << 1) != 0 { options += ["y"] }
                var container = encoder.singleValueContainer()
                try container.encode(options.joined(separator: "+"))
            }
        }
        /// Determines if the positions obtained from solver are flipped on each axis.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#treemap-tiling-flip) |
        /// [Python](https://plot.ly/python/reference/#treemap-tiling-flip) |
        /// [R](https://plot.ly/r/reference/#treemap-tiling-flip)
        public var flip: Flip?
    
        /// Sets the inner padding (in px).
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#treemap-tiling-pad) |
        /// [Python](https://plot.ly/python/reference/#treemap-tiling-pad) |
        /// [R](https://plot.ly/r/reference/#treemap-tiling-pad)
        public var padding: Double?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case packing
            case squarifyRatio = "squarifyratio"
            case flip
            case padding = "pad"
        }
        
        public init(packing: Packing? = nil, squarifyRatio: Double? = nil, flip: Flip? = nil, padding: Double? = nil) {
            self.packing = packing
            self.squarifyRatio = squarifyRatio
            self.flip = flip
            self.padding = padding
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#treemap-tiling) |
    /// [Python](https://plot.ly/python/reference/#treemap-tiling) |
    /// [R](https://plot.ly/r/reference/#treemap-tiling)
    public var tiling: Tiling?

    /// # Used By
    /// `Treemap.marker` |
    public struct Marker: Encodable {
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#treemap-marker-pad) |
        /// [Python](https://plot.ly/python/reference/#treemap-marker-pad) |
        /// [R](https://plot.ly/r/reference/#treemap-marker-pad)
        public var padding: Shared.Padding?
    
        /// Sets the color of each sector of this trace. 
        ///
        /// If not specified, the default trace color set is used to pick the sector colors.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#treemap-marker-colors) |
        /// [Python](https://plot.ly/python/reference/#treemap-marker-colors) |
        /// [R](https://plot.ly/r/reference/#treemap-marker-colors)
        public var colors: [Double]?
    
        /// Determines if the sector colors are faded towards the background from the leaves up to the headers. 
        ///
        /// This option is unavailable when a `colorscale` is present, defaults to false when
        /// `marker.colors` is set, but otherwise defaults to true. When set to *reversed*, the fading
        /// direction is inverted, that is the top elements within hierarchy are drawn with fully saturated
        /// colors while the leaves are faded towards the background color.
        ///
        /// # Used By
        /// `Treemap.Marker.depthFade` |
        public enum DepthFade: String, Encodable {
            case `true` = "true"
            case `false` = "false"
            case reversed
        }
        /// Determines if the sector colors are faded towards the background from the leaves up to the headers. 
        ///
        /// This option is unavailable when a `colorscale` is present, defaults to false when
        /// `marker.colors` is set, but otherwise defaults to true. When set to *reversed*, the fading
        /// direction is inverted, that is the top elements within hierarchy are drawn with fully saturated
        /// colors while the leaves are faded towards the background color.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#treemap-marker-depthfade) |
        /// [Python](https://plot.ly/python/reference/#treemap-marker-depthfade) |
        /// [R](https://plot.ly/r/reference/#treemap-marker-depthfade)
        public var depthFade: DepthFade?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#treemap-marker-line) |
        /// [Python](https://plot.ly/python/reference/#treemap-marker-line) |
        /// [R](https://plot.ly/r/reference/#treemap-marker-line)
        public var line: Shared.Line?
    
        /// Determines whether or not the color domain is computed with respect to the input data (here colors) or the bounds set in `marker.cmin` and `marker.cmax`  Has an effect only if colorsis set to a numerical array. 
        ///
        /// Defaults to `false` when `marker.cmin` and `marker.cmax` are set by the user.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#treemap-marker-cauto) |
        /// [Python](https://plot.ly/python/reference/#treemap-marker-cauto) |
        /// [R](https://plot.ly/r/reference/#treemap-marker-cauto)
        public var cAuto: Bool?
    
        /// Sets the lower bound of the color domain. 
        ///
        /// Has an effect only if colorsis set to a numerical array. Value should have the same units as
        /// colors and if set, `marker.cmax` must be set as well.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#treemap-marker-cmin) |
        /// [Python](https://plot.ly/python/reference/#treemap-marker-cmin) |
        /// [R](https://plot.ly/r/reference/#treemap-marker-cmin)
        public var cMin: Double?
    
        /// Sets the upper bound of the color domain. 
        ///
        /// Has an effect only if colorsis set to a numerical array. Value should have the same units as
        /// colors and if set, `marker.cmin` must be set as well.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#treemap-marker-cmax) |
        /// [Python](https://plot.ly/python/reference/#treemap-marker-cmax) |
        /// [R](https://plot.ly/r/reference/#treemap-marker-cmax)
        public var cMax: Double?
    
        /// Sets the mid-point of the color domain by scaling `marker.cmin` and/or `marker.cmax` to be equidistant to this point. 
        ///
        /// Has an effect only if colorsis set to a numerical array. Value should have the same units as
        /// colors. Has no effect when `marker.cauto` is `false`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#treemap-marker-cmid) |
        /// [Python](https://plot.ly/python/reference/#treemap-marker-cmid) |
        /// [R](https://plot.ly/r/reference/#treemap-marker-cmid)
        public var cMiddle: Double?
    
        /// Sets the colorscale. 
        ///
        /// Has an effect only if colorsis set to a numerical array. The colorscale must be an array
        /// containing arrays mapping a normalized value to an rgb, rgba, hex, hsl, hsv, or named color
        /// string. At minimum, a mapping for the lowest (0) and highest (1) values are required. For
        /// example, `[[0, 'rgb(0,0,255)'], [1, 'rgb(255,0,0)']]`. To control the bounds of the colorscale
        /// in color space, use`marker.cmin` and `marker.cmax`. Alternatively, `colorscale` may be a palette
        /// name string of the following list:
        /// Greys,YlGnBu,Greens,YlOrRd,Bluered,RdBu,Reds,Blues,Picnic,Rainbow,Portland,Jet,Hot,Blackbody,Earth,Electric,Viridis,Cividis.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#treemap-marker-colorscale) |
        /// [Python](https://plot.ly/python/reference/#treemap-marker-colorscale) |
        /// [R](https://plot.ly/r/reference/#treemap-marker-colorscale)
        public var colorScale: ColorScale?
    
        /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `marker.colorscale`. 
        ///
        /// Has an effect only if colorsis set to a numerical array. In case `colorscale` is unspecified or
        /// `autocolorscale` is true, the default palette will be chosen according to whether numbers in the
        /// `color` array are all positive, all negative or mixed.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#treemap-marker-autocolorscale) |
        /// [Python](https://plot.ly/python/reference/#treemap-marker-autocolorscale) |
        /// [R](https://plot.ly/r/reference/#treemap-marker-autocolorscale)
        public var autoColorScale: Bool?
    
        /// Reverses the color mapping if true. 
        ///
        /// Has an effect only if colorsis set to a numerical array. If true, `marker.cmin` will correspond
        /// to the last color in the array and `marker.cmax` will correspond to the first color.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#treemap-marker-reversescale) |
        /// [Python](https://plot.ly/python/reference/#treemap-marker-reversescale) |
        /// [R](https://plot.ly/r/reference/#treemap-marker-reversescale)
        public var reverseScale: Bool?
    
        /// Determines whether or not a colorbar is displayed for this trace. 
        ///
        /// Has an effect only if colorsis set to a numerical array.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#treemap-marker-showscale) |
        /// [Python](https://plot.ly/python/reference/#treemap-marker-showscale) |
        /// [R](https://plot.ly/r/reference/#treemap-marker-showscale)
        public var showScale: Bool?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#treemap-marker-colorbar) |
        /// [Python](https://plot.ly/python/reference/#treemap-marker-colorbar) |
        /// [R](https://plot.ly/r/reference/#treemap-marker-colorbar)
        public var colorBar: Shared.ColorBar?
    
        /// Sets a reference to a shared color axis. 
        ///
        /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
        /// for these shared color axes are set in the layout, under `layout.coloraxis`,
        /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#treemap-marker-coloraxis) |
        /// [Python](https://plot.ly/python/reference/#treemap-marker-coloraxis) |
        /// [R](https://plot.ly/r/reference/#treemap-marker-coloraxis)
        public var colorAxis: SubPlotID?
    
        /// Plotly compatible property encoding
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
        
        public init(padding: Shared.Padding? = nil, colors: [Double]? = nil, depthFade: DepthFade? = nil, line: Shared.Line? = nil, cAuto: Bool? = nil, cMin: Double? = nil, cMax: Double? = nil, cMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: Shared.ColorBar? = nil, colorAxis: SubPlotID? = nil) {
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#treemap-marker) |
    /// [Python](https://plot.ly/python/reference/#treemap-marker) |
    /// [R](https://plot.ly/r/reference/#treemap-marker)
    public var marker: Marker?

    /// # Used By
    /// `Treemap.pathBar` |
    public struct PathBar: Encodable {
        /// Determines if the path bar is drawn i.e. 
        ///
        /// outside the trace `domain` and with one pixel gap.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#treemap-pathbar-visible) |
        /// [Python](https://plot.ly/python/reference/#treemap-pathbar-visible) |
        /// [R](https://plot.ly/r/reference/#treemap-pathbar-visible)
        public var visible: Bool?
    
        /// Determines on which side of the the treemap the `pathbar` should be presented.
        ///
        /// # Used By
        /// `Treemap.PathBar.side` |
        public enum Side: String, Encodable {
            case top
            case bottom
        }
        /// Determines on which side of the the treemap the `pathbar` should be presented.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#treemap-pathbar-side) |
        /// [Python](https://plot.ly/python/reference/#treemap-pathbar-side) |
        /// [R](https://plot.ly/r/reference/#treemap-pathbar-side)
        public var side: Side?
    
        /// Determines which shape is used for edges between `barpath` labels.
        ///
        /// # Used By
        /// `Treemap.PathBar.edgeShape` |
        public enum EdgeShape: String, Encodable {
            case greaterThan = ">"
            case lessThan = "<"
            case bar = "|"
            case forwardSlash = "/"
            case backwardSlash = "\\"
        }
        /// Determines which shape is used for edges between `barpath` labels.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#treemap-pathbar-edgeshape) |
        /// [Python](https://plot.ly/python/reference/#treemap-pathbar-edgeshape) |
        /// [R](https://plot.ly/r/reference/#treemap-pathbar-edgeshape)
        public var edgeShape: EdgeShape?
    
        /// Sets the thickness of `pathbar` (in px). 
        ///
        /// If not specified the `pathbar.textfont.size` is used with 3 pixles extra padding on each side.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#treemap-pathbar-thickness) |
        /// [Python](https://plot.ly/python/reference/#treemap-pathbar-thickness) |
        /// [R](https://plot.ly/r/reference/#treemap-pathbar-thickness)
        public var thickness: Double?
    
        /// Sets the font used inside `pathbar`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#treemap-pathbar-textfont) |
        /// [Python](https://plot.ly/python/reference/#treemap-pathbar-textfont) |
        /// [R](https://plot.ly/r/reference/#treemap-pathbar-textfont)
        public var textFont: Shared.Font?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case visible
            case side
            case edgeShape = "edgeshape"
            case thickness
            case textFont = "textfont"
        }
        
        public init(visible: Bool? = nil, side: Side? = nil, edgeShape: EdgeShape? = nil, thickness: Double? = nil, textFont: Shared.Font? = nil) {
            self.visible = visible
            self.side = side
            self.edgeShape = edgeShape
            self.thickness = thickness
            self.textFont = textFont
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#treemap-pathbar) |
    /// [Python](https://plot.ly/python/reference/#treemap-pathbar) |
    /// [R](https://plot.ly/r/reference/#treemap-pathbar)
    public var pathBar: PathBar?

    /// Sets text elements associated with each sector. 
    ///
    /// If trace `textinfo` contains a *text* flag, these elements will be seen on the chart. If trace
    /// `hoverinfo` contains a *text* flag and *hovertext* is not set, these elements will be seen in
    /// the hover labels.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#treemap-text) |
    /// [Python](https://plot.ly/python/reference/#treemap-text) |
    /// [R](https://plot.ly/r/reference/#treemap-text)
    public var text: [Double]?

    /// Determines which trace information appear on the graph.
    ///
    /// # Used By
    /// `Treemap.textInfo` |
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
    
        public init(rawValue: Int) { self.rawValue = rawValue }
    
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#treemap-textinfo) |
    /// [Python](https://plot.ly/python/reference/#treemap-textinfo) |
    /// [R](https://plot.ly/r/reference/#treemap-textinfo)
    public var textInfo: TextInfo?

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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#treemap-texttemplate) |
    /// [Python](https://plot.ly/python/reference/#treemap-texttemplate) |
    /// [R](https://plot.ly/r/reference/#treemap-texttemplate)
    public var textTemplate: ArrayOrString?

    /// Sets hover text elements associated with each sector. 
    ///
    /// If a single string, the same string appears for all data points. If an array of string, the
    /// items are mapped in order of this trace's sectors. To be seen, trace `hoverinfo` must contain a
    /// *text* flag.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#treemap-hovertext) |
    /// [Python](https://plot.ly/python/reference/#treemap-hovertext) |
    /// [R](https://plot.ly/r/reference/#treemap-hovertext)
    public var hoverText: ArrayOrString?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    ///
    /// # Used By
    /// `Treemap.hoverInfo` |
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
    
        public init(rawValue: Int) { self.rawValue = rawValue }
    
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#treemap-hoverinfo) |
    /// [Python](https://plot.ly/python/reference/#treemap-hoverinfo) |
    /// [R](https://plot.ly/r/reference/#treemap-hoverinfo)
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
    /// true`) are available. variables `currentPath`, `root`, `entry`, `percentRoot`, `percentEntry`
    /// and `percentParent`. Anything contained in tag `<extra>` is displayed in the secondary box, for
    /// example "<extra>{fullData.name}</extra>". To hide the secondary box completely, use an empty tag
    /// `<extra></extra>`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#treemap-hovertemplate) |
    /// [Python](https://plot.ly/python/reference/#treemap-hovertemplate) |
    /// [R](https://plot.ly/r/reference/#treemap-hovertemplate)
    public var hoverTemplate: ArrayOrString?

    /// Sets the font used for `textinfo`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#treemap-textfont) |
    /// [Python](https://plot.ly/python/reference/#treemap-textfont) |
    /// [R](https://plot.ly/r/reference/#treemap-textfont)
    public var textFont: Shared.Font?

    /// Sets the font used for `textinfo` lying inside the sector.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#treemap-insidetextfont) |
    /// [Python](https://plot.ly/python/reference/#treemap-insidetextfont) |
    /// [R](https://plot.ly/r/reference/#treemap-insidetextfont)
    public var insideTextFont: Shared.Font?

    /// Sets the font used for `textinfo` lying outside the sector.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#treemap-outsidetextfont) |
    /// [Python](https://plot.ly/python/reference/#treemap-outsidetextfont) |
    /// [R](https://plot.ly/r/reference/#treemap-outsidetextfont)
    public var outSideTextFont: Shared.Font?

    /// Sets the positions of the `text` elements.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#treemap-textposition) |
    /// [Python](https://plot.ly/python/reference/#treemap-textposition) |
    /// [R](https://plot.ly/r/reference/#treemap-textposition)
    public var textPosition: Shared.TextPosition?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#treemap-domain) |
    /// [Python](https://plot.ly/python/reference/#treemap-domain) |
    /// [R](https://plot.ly/r/reference/#treemap-domain)
    public var domain: Shared.Domain?

    /// Plotly compatible property encoding
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
        case outSideTextFont = "outsidetextfont"
        case textPosition = "textposition"
        case domain
    }
    
    public init(visible: Shared.Visible? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: ArrayOrAnything? = nil, hoverLabel: Shared.HoverLabel? = nil, stream: Shared.Stream? = nil, transforms: [Shared.Transform]? = nil, uiRevision: Anything? = nil, labels: [Double]? = nil, parents: [Double]? = nil, values: [Double]? = nil, branchValues: BranchValues? = nil, count: Count? = nil, level: Anything? = nil, maxDepth: Int? = nil, tiling: Tiling? = nil, marker: Marker? = nil, pathBar: PathBar? = nil, text: [Double]? = nil, textInfo: TextInfo? = nil, textTemplate: ArrayOrString? = nil, hoverText: ArrayOrString? = nil, hoverInfo: HoverInfo? = nil, hoverTemplate: ArrayOrString? = nil, textFont: Shared.Font? = nil, insideTextFont: Shared.Font? = nil, outSideTextFont: Shared.Font? = nil, textPosition: Shared.TextPosition? = nil, domain: Shared.Domain? = nil) {
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
        self.outSideTextFont = outSideTextFont
        self.textPosition = textPosition
        self.domain = domain
    }
}