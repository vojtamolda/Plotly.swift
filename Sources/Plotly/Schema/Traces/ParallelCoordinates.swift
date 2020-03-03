/// Parallel coordinates for multidimensional exploratory data analysis.
/// 
/// The samples are specified in `dimensions`. The colors are set in `line.color`.
/// 
/// - SeeAlso:
///   Documentation for 
///   [Python](https://plot.ly/python/reference/#parcoords), 
///   [JavaScript](https://plot.ly/javascript/reference/#parcoords) or 
///   [R](https://plot.ly/r/reference/#parcoords)
public struct ParallelCoordinates: Trace {
    public let type: String = "parcoords"

    public let animatable: Bool = false

    /// Determines whether or not this trace is visible.
    /// 
    /// If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the
    /// legend itself is visible).
    public var visible: Shared.Visible? = nil

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

    public var domain: Shared.Domain? = nil

    /// Sets the angle of the labels with respect to the horizontal.
    /// 
    /// For example, a `tickangle` of -90 draws the labels vertically. Tilted labels with *labelangle*
    /// may be positioned better inside margins when `labelposition` is set to *bottom*.
    public var labelAngle: Angle? = nil

    /// Specifies the location of the `label`.
    /// 
    /// *top* positions labels above, next to the title *bottom* positions labels below the graph Tilted
    /// labels with *labelangle* may be positioned better inside margins when `labelposition` is set to
    /// *bottom*.
    public enum LabelSide: String, Encodable {
        case top
        case bottom
    }
    /// Specifies the location of the `label`.
    /// 
    /// *top* positions labels above, next to the title *bottom* positions labels below the graph Tilted
    /// labels with *labelangle* may be positioned better inside margins when `labelposition` is set to
    /// *bottom*.
    public var labelSide: LabelSide? = nil

    /// Sets the font for the `dimension` labels.
    public var labelFont: Shared.Font? = nil

    /// Sets the font for the `dimension` tick values.
    public var tickFont: Shared.Font? = nil

    /// Sets the font for the `dimension` range values.
    public var rangeFont: Shared.Font? = nil

    /// The dimensions (variables) of the parallel coordinates chart.
    /// 
    /// 2..60 dimensions are supported.
    public struct Dimension: Encodable {
        /// The shown name of the dimension.
        public var label: String? = nil
    
        /// Sets the values at which ticks on this axis appear.
        public var tickValues: [Double]? = nil
    
        /// Sets the text displayed at the ticks position via `tickvals`.
        public var tickText: [Double]? = nil
    
        /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to
        /// those in Python.
        /// 
        /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
        /// And for dates see:
        /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
        /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
        /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
        public var tickFormat: String? = nil
    
        /// Shows the dimension when set to `true` (the default).
        /// 
        /// Hides the dimension for `false`.
        public var visible: Bool? = nil
    
        /// The domain range that represents the full, shown axis extent.
        /// 
        /// Defaults to the `values` extent. Must be an array of `[fromValue, toValue]` with finite numbers
        /// as elements.
        public var range: InfoArray? = nil
    
        /// The domain range to which the filter on the dimension is constrained.
        /// 
        /// Must be an array of `[fromValue, toValue]` with `fromValue <= toValue`, or if `multiselect` is
        /// not disabled, you may give an array of arrays, where each inner array is `[fromValue, toValue]`.
        public var constraintRange: InfoArray? = nil
    
        /// Do we allow multiple selection ranges or just a single range?
        public var multiSelect: Bool? = nil
    
        /// Dimension values.
        /// 
        /// `values[n]` represents the value of the `n`th point in the dataset, therefore the `values`
        /// vector for all dimensions must be the same (longer vectors will be truncated). Each value must
        /// be a finite number.
        public var values: [Double]? = nil
    
        /// When used in a template, named items are created in the output figure in addition to any items
        /// the figure already has in this array.
        /// 
        /// You can modify these items in the output figure by making your own item with `templateitemname`
        /// matching this `name` alongside your modifications (including `visible: false` or `enabled:
        /// false` to hide it). Has no effect outside of a template.
        public var name: String? = nil
    
        /// Used to refer to a named item in this array in the template.
        /// 
        /// Named items from the template will be created even without a matching item in the input figure,
        /// but you can modify one by making an item with `templateitemname` matching its `name`, alongside
        /// your modifications (including `visible: false` or `enabled: false` to hide it). If there is no
        /// template or no matching item, this item will be hidden unless you explicitly show it with
        /// `visible: true`.
        public var templateItemName: String? = nil
    
        /// Decoding and encoding keys compatible with Plotly schema.
        enum CodingKeys: String, CodingKey {
            case label
            case tickValues = "tickvals"
            case tickText = "ticktext"
            case tickFormat = "tickformat"
            case visible
            case range
            case constraintRange = "constraintrange"
            case multiSelect = "multiselect"
            case values
            case name
            case templateItemName = "templateitemname"
        }
        
        /// Creates `Dimension` object with specified properties.
        /// 
        /// - Parameters:
        ///   - label: The shown name of the dimension.
        ///   - tickValues: Sets the values at which ticks on this axis appear.
        ///   - tickText: Sets the text displayed at the ticks position via `tickvals`.
        ///   - tickFormat: Sets the tick label formatting rule using d3 formatting mini-languages which are
        ///   very similar to those in Python.
        ///   - visible: Shows the dimension when set to `true` (the default).
        ///   - range: The domain range that represents the full, shown axis extent.
        ///   - constraintRange: The domain range to which the filter on the dimension is constrained.
        ///   - multiSelect: Do we allow multiple selection ranges or just a single range?
        ///   - values: Dimension values.
        ///   - name: When used in a template, named items are created in the output figure in addition to any
        ///   items the figure already has in this array.
        ///   - templateItemName: Used to refer to a named item in this array in the template.
        public init(label: String? = nil, tickValues: [Double]? = nil, tickText: [Double]? = nil,
                tickFormat: String? = nil, visible: Bool? = nil, range: InfoArray? = nil, constraintRange:
                InfoArray? = nil, multiSelect: Bool? = nil, values: [Double]? = nil, name: String? = nil,
                templateItemName: String? = nil) {
            self.label = label
            self.tickValues = tickValues
            self.tickText = tickText
            self.tickFormat = tickFormat
            self.visible = visible
            self.range = range
            self.constraintRange = constraintRange
            self.multiSelect = multiSelect
            self.values = values
            self.name = name
            self.templateItemName = templateItemName
        }
        
    }
    public var dimensions: [Dimension]? = nil

    public struct MarkerLine: Encodable {
        /// Sets thelinecolor.
        /// 
        /// It accepts either a specific color or an array of numbers that are mapped to the colorscale
        /// relative to the max and min values of the array or relative to `line.cmin` and `line.cmax` if
        /// set.
        public var coloring: Coloring? = nil
    
        /// Determines whether or not the color domain is computed with respect to the input data (here in
        /// `line.color`) or the bounds set in `line.cmin` and `line.cmax` Has an effect only if in
        /// `line.color`is set to a numerical array.
        /// 
        /// Defaults to `false` when `line.cmin` and `line.cmax` are set by the user.
        public var cAuto: Bool? = nil
    
        /// Sets the lower bound of the color domain.
        /// 
        /// Has an effect only if in `line.color`is set to a numerical array. Value should have the same
        /// units as in `line.color` and if set, `line.cmax` must be set as well.
        public var cMin: Double? = nil
    
        /// Sets the upper bound of the color domain.
        /// 
        /// Has an effect only if in `line.color`is set to a numerical array. Value should have the same
        /// units as in `line.color` and if set, `line.cmin` must be set as well.
        public var cMax: Double? = nil
    
        /// Sets the mid-point of the color domain by scaling `line.cmin` and/or `line.cmax` to be
        /// equidistant to this point.
        /// 
        /// Has an effect only if in `line.color`is set to a numerical array. Value should have the same
        /// units as in `line.color`. Has no effect when `line.cauto` is `false`.
        public var cMiddle: Double? = nil
    
        /// Sets the colorscale.
        /// 
        /// Has an effect only if in `line.color`is set to a numerical array. The colorscale must be an
        /// array containing arrays mapping a normalized value to an rgb, rgba, hex, hsl, hsv, or named
        /// color string. At minimum, a mapping for the lowest (0) and highest (1) values are required. For
        /// example, `[[0, 'rgb(0,0,255)'], [1, 'rgb(255,0,0)']]`. To control the bounds of the colorscale
        /// in color space, use`line.cmin` and `line.cmax`. Alternatively, `colorscale` may be a palette
        /// name string of the following list:
        /// Greys,YlGnBu,Greens,YlOrRd,Bluered,RdBu,Reds,Blues,Picnic,Rainbow,Portland,Jet,Hot,Blackbody,Earth,Electric,Viridis,Cividis.
        public var colorScale: ColorScale? = nil
    
        /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette
        /// determined by `line.colorscale`.
        /// 
        /// Has an effect only if in `line.color`is set to a numerical array. In case `colorscale` is
        /// unspecified or `autocolorscale` is true, the default palette will be chosen according to whether
        /// numbers in the `color` array are all positive, all negative or mixed.
        public var autoColorScale: Bool? = nil
    
        /// Reverses the color mapping if true.
        /// 
        /// Has an effect only if in `line.color`is set to a numerical array. If true, `line.cmin` will
        /// correspond to the last color in the array and `line.cmax` will correspond to the first color.
        public var reverseScale: Bool? = nil
    
        /// Determines whether or not a colorbar is displayed for this trace.
        /// 
        /// Has an effect only if in `line.color`is set to a numerical array.
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
            case coloring = "color"
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
        
        /// Creates `MarkerLine` object with specified properties.
        /// 
        /// - Parameters:
        ///   - coloring: Sets thelinecolor.
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
        public init(coloring: Coloring? = nil, cAuto: Bool? = nil, cMin: Double? = nil, cMax: Double? =
                nil, cMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil,
                reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: Shared.ColorBar? = nil, colorAxis:
                Layout.ColorAxis = Layout.ColorAxis(uid: 1)) {
            self.coloring = coloring
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
    public var line: MarkerLine? = nil

    /// Decoding and encoding keys compatible with Plotly schema.
    enum CodingKeys: String, CodingKey {
        case type
        case visible
        case name
        case uid
        case ids
        case customData = "customdata"
        case meta
        case stream
        case transforms
        case uiRevision = "uirevision"
        case domain
        case labelAngle = "labelangle"
        case labelSide = "labelside"
        case labelFont = "labelfont"
        case tickFont = "tickfont"
        case rangeFont = "rangefont"
        case dimensions
        case line
    }
    
    /// Creates `ParallelCoordinates` object from the most frequently used properties.
    /// 
    /// - Parameters:
    ///   - name: Sets the trace name.
    ///   - line:
    public init(name: String? = nil, line: MarkerLine? = nil) {
        self.name = name
        self.line = line
    }
    
    /// Creates `ParallelCoordinates` object with specified properties.
    /// 
    /// - Parameters:
    ///   - visible: Determines whether or not this trace is visible.
    ///   - name: Sets the trace name.
    ///   - uid: Assign an id to this trace, Use this to provide object constancy between traces during
    ///   animations and transitions.
    ///   - ids: Assigns id labels to each datum.
    ///   - customData: Assigns extra data each datum.
    ///   - meta: Assigns extra meta information associated with this trace that can be used in various
    ///   text attributes.
    ///   - stream:
    ///   - transforms:
    ///   - uiRevision: Controls persistence of some user-driven changes to the trace: `constraintrange`
    ///   in `parcoords` traces, as well as some `editable: true` modifications such as `name` and
    ///   `colorbar.title`.
    ///   - domain:
    ///   - labelAngle: Sets the angle of the labels with respect to the horizontal.
    ///   - labelSide: Specifies the location of the `label`.
    ///   - labelFont: Sets the font for the `dimension` labels.
    ///   - tickFont: Sets the font for the `dimension` tick values.
    ///   - rangeFont: Sets the font for the `dimension` range values.
    ///   - dimensions:
    ///   - line:
    public init(visible: Shared.Visible? = nil, name: String? = nil, uid: String? = nil, ids:
            [String]? = nil, customData: [String]? = nil, meta: Data<Anything>? = nil, stream:
            Shared.Stream? = nil, transforms: [Shared.Transform]? = nil, uiRevision: Anything? = nil,
            domain: Shared.Domain? = nil, labelAngle: Angle? = nil, labelSide: LabelSide? = nil, labelFont:
            Shared.Font? = nil, tickFont: Shared.Font? = nil, rangeFont: Shared.Font? = nil, dimensions:
            [Dimension]? = nil, line: MarkerLine? = nil) {
        self.visible = visible
        self.name = name
        self.uid = uid
        self.ids = ids
        self.customData = customData
        self.meta = meta
        self.stream = stream
        self.transforms = transforms
        self.uiRevision = uiRevision
        self.domain = domain
        self.labelAngle = labelAngle
        self.labelSide = labelSide
        self.labelFont = labelFont
        self.tickFont = tickFont
        self.rangeFont = rangeFont
        self.dimensions = dimensions
        self.line = line
    }
    
}