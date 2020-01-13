/// Parallel coordinates for multidimensional exploratory data analysis. 
///
/// The samples are specified in `dimensions`. The colors are set in `line.color`.
public struct ParallelCoordinates: Trace {
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#type) |
    /// [Python](https://plot.ly/python/reference/#type) |
    /// [R](https://plot.ly/r/reference/#type)
    public let type: String = "parcoords"

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#animatable) |
    /// [Python](https://plot.ly/python/reference/#animatable) |
    /// [R](https://plot.ly/r/reference/#animatable)
    public let animatable: Bool = false

    /// Determines whether or not this trace is visible. 
    ///
    /// If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the
    /// legend itself is visible).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-visible) |
    /// [Python](https://plot.ly/python/reference/#parcoords-visible) |
    /// [R](https://plot.ly/r/reference/#parcoords-visible)
    public var visible: Visible0?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-name) |
    /// [Python](https://plot.ly/python/reference/#parcoords-name) |
    /// [R](https://plot.ly/r/reference/#parcoords-name)
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-uid) |
    /// [Python](https://plot.ly/python/reference/#parcoords-uid) |
    /// [R](https://plot.ly/r/reference/#parcoords-uid)
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-ids) |
    /// [Python](https://plot.ly/python/reference/#parcoords-ids) |
    /// [R](https://plot.ly/r/reference/#parcoords-ids)
    public var ids: [Double]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-customdata) |
    /// [Python](https://plot.ly/python/reference/#parcoords-customdata) |
    /// [R](https://plot.ly/r/reference/#parcoords-customdata)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-meta) |
    /// [Python](https://plot.ly/python/reference/#parcoords-meta) |
    /// [R](https://plot.ly/r/reference/#parcoords-meta)
    public var meta: Anything?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-stream) |
    /// [Python](https://plot.ly/python/reference/#parcoords-stream) |
    /// [R](https://plot.ly/r/reference/#parcoords-stream)
    public var stream: Stream0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-transforms) |
    /// [Python](https://plot.ly/python/reference/#parcoords-transforms) |
    /// [R](https://plot.ly/r/reference/#parcoords-transforms)
    public var transforms: Transforms0?

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
    /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-uirevision) |
    /// [Python](https://plot.ly/python/reference/#parcoords-uirevision) |
    /// [R](https://plot.ly/r/reference/#parcoords-uirevision)
    public var uiRevision: Anything?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-domain) |
    /// [Python](https://plot.ly/python/reference/#parcoords-domain) |
    /// [R](https://plot.ly/r/reference/#parcoords-domain)
    public var domain: Domain0?

    /// Sets the angle of the labels with respect to the horizontal. 
    ///
    /// For example, a `tickangle` of -90 draws the labels vertically. Tilted labels with *labelangle*
    /// may be positioned better inside margins when `labelposition` is set to *bottom*.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-labelangle) |
    /// [Python](https://plot.ly/python/reference/#parcoords-labelangle) |
    /// [R](https://plot.ly/r/reference/#parcoords-labelangle)
    public var labelAngle: Angle?

    /// Specifies the location of the `label`. 
    ///
    /// *top* positions labels above, next to the title *bottom* positions labels below the graph Tilted
    /// labels with *labelangle* may be positioned better inside margins when `labelposition` is set to
    /// *bottom*.
    ///
    /// # Used By
    /// `ParallelCoordinates.labelSide` |
    public enum LabelSide: String, Encodable {
        case top
        case bottom
    }
    /// Specifies the location of the `label`. 
    ///
    /// *top* positions labels above, next to the title *bottom* positions labels below the graph Tilted
    /// labels with *labelangle* may be positioned better inside margins when `labelposition` is set to
    /// *bottom*.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-labelside) |
    /// [Python](https://plot.ly/python/reference/#parcoords-labelside) |
    /// [R](https://plot.ly/r/reference/#parcoords-labelside)
    public var labelSide: LabelSide?

    /// Sets the font for the `dimension` labels.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-labelfont) |
    /// [Python](https://plot.ly/python/reference/#parcoords-labelfont) |
    /// [R](https://plot.ly/r/reference/#parcoords-labelfont)
    public var labelFont: Font0?

    /// Sets the font for the `dimension` tick values.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-tickfont) |
    /// [Python](https://plot.ly/python/reference/#parcoords-tickfont) |
    /// [R](https://plot.ly/r/reference/#parcoords-tickfont)
    public var tickFont: Font0?

    /// Sets the font for the `dimension` range values.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-rangefont) |
    /// [Python](https://plot.ly/python/reference/#parcoords-rangefont) |
    /// [R](https://plot.ly/r/reference/#parcoords-rangefont)
    public var rangeFont: Font0?

    ///
    /// # Used By
    /// `ParallelCoordinates.dimensions` |
    public struct Dimensions: Encodable {
        ///
        /// # Used By
        /// `ParallelCoordinates.Dimensions.items` |
        public struct Items: Encodable {
            /// The dimensions (variables) of the parallel coordinates chart. 
            ///
            /// 2..60 dimensions are supported.
            ///
            /// # Used By
            /// `ParallelCoordinates.Dimensions.Items.dimension` |
            public struct Dimension: Encodable {
                /// The shown name of the dimension.
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-dimensions-items-dimension-label) |
                /// [Python](https://plot.ly/python/reference/#parcoords-dimensions-items-dimension-label) |
                /// [R](https://plot.ly/r/reference/#parcoords-dimensions-items-dimension-label)
                public var label: String?
            
                /// Sets the values at which ticks on this axis appear.
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-dimensions-items-dimension-tickvals) |
                /// [Python](https://plot.ly/python/reference/#parcoords-dimensions-items-dimension-tickvals) |
                /// [R](https://plot.ly/r/reference/#parcoords-dimensions-items-dimension-tickvals)
                public var tickValues: [Double]?
            
                /// Sets the text displayed at the ticks position via `tickvals`.
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-dimensions-items-dimension-ticktext) |
                /// [Python](https://plot.ly/python/reference/#parcoords-dimensions-items-dimension-ticktext) |
                /// [R](https://plot.ly/r/reference/#parcoords-dimensions-items-dimension-ticktext)
                public var tickText: [Double]?
            
                /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to those in Python. 
                ///
                /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
                /// And for dates see:
                /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
                /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
                /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-dimensions-items-dimension-tickformat) |
                /// [Python](https://plot.ly/python/reference/#parcoords-dimensions-items-dimension-tickformat) |
                /// [R](https://plot.ly/r/reference/#parcoords-dimensions-items-dimension-tickformat)
                public var tickFormat: String?
            
                /// Shows the dimension when set to `true` (the default). 
                ///
                /// Hides the dimension for `false`.
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-dimensions-items-dimension-visible) |
                /// [Python](https://plot.ly/python/reference/#parcoords-dimensions-items-dimension-visible) |
                /// [R](https://plot.ly/r/reference/#parcoords-dimensions-items-dimension-visible)
                public var visible: Bool?
            
                /// The domain range that represents the full, shown axis extent. 
                ///
                /// Defaults to the `values` extent. Must be an array of `[fromValue, toValue]` with finite numbers
                /// as elements.
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-dimensions-items-dimension-range) |
                /// [Python](https://plot.ly/python/reference/#parcoords-dimensions-items-dimension-range) |
                /// [R](https://plot.ly/r/reference/#parcoords-dimensions-items-dimension-range)
                public var range: InfoArray?
            
                /// The domain range to which the filter on the dimension is constrained. 
                ///
                /// Must be an array of `[fromValue, toValue]` with `fromValue <= toValue`, or if `multiselect` is
                /// not disabled, you may give an array of arrays, where each inner array is `[fromValue, toValue]`.
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-dimensions-items-dimension-constraintrange) |
                /// [Python](https://plot.ly/python/reference/#parcoords-dimensions-items-dimension-constraintrange) |
                /// [R](https://plot.ly/r/reference/#parcoords-dimensions-items-dimension-constraintrange)
                public var constraintRange: InfoArray?
            
                /// Do we allow multiple selection ranges or just a single range?
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-dimensions-items-dimension-multiselect) |
                /// [Python](https://plot.ly/python/reference/#parcoords-dimensions-items-dimension-multiselect) |
                /// [R](https://plot.ly/r/reference/#parcoords-dimensions-items-dimension-multiselect)
                public var multiSelect: Bool?
            
                /// Dimension values. 
                ///
                /// `values[n]` represents the value of the `n`th point in the dataset, therefore the `values`
                /// vector for all dimensions must be the same (longer vectors will be truncated). Each value must
                /// be a finite number.
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-dimensions-items-dimension-values) |
                /// [Python](https://plot.ly/python/reference/#parcoords-dimensions-items-dimension-values) |
                /// [R](https://plot.ly/r/reference/#parcoords-dimensions-items-dimension-values)
                public var values: [Double]?
            
                /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. 
                ///
                /// You can modify these items in the output figure by making your own item with `templateitemname`
                /// matching this `name` alongside your modifications (including `visible: false` or `enabled:
                /// false` to hide it). Has no effect outside of a template.
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-dimensions-items-dimension-name) |
                /// [Python](https://plot.ly/python/reference/#parcoords-dimensions-items-dimension-name) |
                /// [R](https://plot.ly/r/reference/#parcoords-dimensions-items-dimension-name)
                public var name: String?
            
                /// Used to refer to a named item in this array in the template. 
                ///
                /// Named items from the template will be created even without a matching item in the input figure,
                /// but you can modify one by making an item with `templateitemname` matching its `name`, alongside
                /// your modifications (including `visible: false` or `enabled: false` to hide it). If there is no
                /// template or no matching item, this item will be hidden unless you explicitly show it with
                /// `visible: true`.
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-dimensions-items-dimension-templateitemname) |
                /// [Python](https://plot.ly/python/reference/#parcoords-dimensions-items-dimension-templateitemname) |
                /// [R](https://plot.ly/r/reference/#parcoords-dimensions-items-dimension-templateitemname)
                public var templateItemName: String?
            
                /// Sets the source reference on plot.ly for  tickvals .
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-dimensions-items-dimension-tickvalssrc) |
                /// [Python](https://plot.ly/python/reference/#parcoords-dimensions-items-dimension-tickvalssrc) |
                /// [R](https://plot.ly/r/reference/#parcoords-dimensions-items-dimension-tickvalssrc)
                public var tickValuesSource: String?
            
                /// Sets the source reference on plot.ly for  ticktext .
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-dimensions-items-dimension-ticktextsrc) |
                /// [Python](https://plot.ly/python/reference/#parcoords-dimensions-items-dimension-ticktextsrc) |
                /// [R](https://plot.ly/r/reference/#parcoords-dimensions-items-dimension-ticktextsrc)
                public var tickTextSource: String?
            
                /// Sets the source reference on plot.ly for  values .
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-dimensions-items-dimension-valuessrc) |
                /// [Python](https://plot.ly/python/reference/#parcoords-dimensions-items-dimension-valuessrc) |
                /// [R](https://plot.ly/r/reference/#parcoords-dimensions-items-dimension-valuessrc)
                public var valuesSource: String?
            
                /// Plotly compatible property encoding
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
                    case tickValuesSource = "tickvalssrc"
                    case tickTextSource = "ticktextsrc"
                    case valuesSource = "valuessrc"
                }
                
                public init(label: String? = nil, tickValues: [Double]? = nil, tickText: [Double]? = nil, tickFormat: String? = nil, visible: Bool? = nil, range: InfoArray? = nil, constraintRange: InfoArray? = nil, multiSelect: Bool? = nil, values: [Double]? = nil, name: String? = nil, templateItemName: String? = nil, tickValuesSource: String? = nil, tickTextSource: String? = nil, valuesSource: String? = nil) {
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
                    self.tickValuesSource = tickValuesSource
                    self.tickTextSource = tickTextSource
                    self.valuesSource = valuesSource
                }
            }
            /// The dimensions (variables) of the parallel coordinates chart. 
            ///
            /// 2..60 dimensions are supported.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-dimensions-items-dimension) |
            /// [Python](https://plot.ly/python/reference/#parcoords-dimensions-items-dimension) |
            /// [R](https://plot.ly/r/reference/#parcoords-dimensions-items-dimension)
            public var dimension: Dimension?
        
            public init(dimension: Dimension? = nil) {
                self.dimension = dimension
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-dimensions-items) |
        /// [Python](https://plot.ly/python/reference/#parcoords-dimensions-items) |
        /// [R](https://plot.ly/r/reference/#parcoords-dimensions-items)
        public var items: Items?
    
        public init(items: Items? = nil) {
            self.items = items
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-dimensions) |
    /// [Python](https://plot.ly/python/reference/#parcoords-dimensions) |
    /// [R](https://plot.ly/r/reference/#parcoords-dimensions)
    public var dimensions: Dimensions?

    ///
    /// # Used By
    /// `ParallelCoordinates.line` |
    public struct Line: Encodable {
        /// Sets thelinecolor. 
        ///
        /// It accepts either a specific color or an array of numbers that are mapped to the colorscale
        /// relative to the max and min values of the array or relative to `line.cmin` and `line.cmax` if
        /// set.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-line-color) |
        /// [Python](https://plot.ly/python/reference/#parcoords-line-color) |
        /// [R](https://plot.ly/r/reference/#parcoords-line-color)
        public var color: Color?
    
        /// Determines whether or not the color domain is computed with respect to the input data (here in `line.color`) or the bounds set in `line.cmin` and `line.cmax`  Has an effect only if in `line.color`is set to a numerical array. 
        ///
        /// Defaults to `false` when `line.cmin` and `line.cmax` are set by the user.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-line-cauto) |
        /// [Python](https://plot.ly/python/reference/#parcoords-line-cauto) |
        /// [R](https://plot.ly/r/reference/#parcoords-line-cauto)
        public var cAuto: Bool?
    
        /// Sets the lower bound of the color domain. 
        ///
        /// Has an effect only if in `line.color`is set to a numerical array. Value should have the same
        /// units as in `line.color` and if set, `line.cmax` must be set as well.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-line-cmin) |
        /// [Python](https://plot.ly/python/reference/#parcoords-line-cmin) |
        /// [R](https://plot.ly/r/reference/#parcoords-line-cmin)
        public var cMin: Double?
    
        /// Sets the upper bound of the color domain. 
        ///
        /// Has an effect only if in `line.color`is set to a numerical array. Value should have the same
        /// units as in `line.color` and if set, `line.cmin` must be set as well.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-line-cmax) |
        /// [Python](https://plot.ly/python/reference/#parcoords-line-cmax) |
        /// [R](https://plot.ly/r/reference/#parcoords-line-cmax)
        public var cMax: Double?
    
        /// Sets the mid-point of the color domain by scaling `line.cmin` and/or `line.cmax` to be equidistant to this point. 
        ///
        /// Has an effect only if in `line.color`is set to a numerical array. Value should have the same
        /// units as in `line.color`. Has no effect when `line.cauto` is `false`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-line-cmid) |
        /// [Python](https://plot.ly/python/reference/#parcoords-line-cmid) |
        /// [R](https://plot.ly/r/reference/#parcoords-line-cmid)
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
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-line-colorscale) |
        /// [Python](https://plot.ly/python/reference/#parcoords-line-colorscale) |
        /// [R](https://plot.ly/r/reference/#parcoords-line-colorscale)
        public var colorScale: ColorScale?
    
        /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `line.colorscale`. 
        ///
        /// Has an effect only if in `line.color`is set to a numerical array. In case `colorscale` is
        /// unspecified or `autocolorscale` is true, the default palette will be chosen according to whether
        /// numbers in the `color` array are all positive, all negative or mixed.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-line-autocolorscale) |
        /// [Python](https://plot.ly/python/reference/#parcoords-line-autocolorscale) |
        /// [R](https://plot.ly/r/reference/#parcoords-line-autocolorscale)
        public var autoColorScale: Bool?
    
        /// Reverses the color mapping if true. 
        ///
        /// Has an effect only if in `line.color`is set to a numerical array. If true, `line.cmin` will
        /// correspond to the last color in the array and `line.cmax` will correspond to the first color.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-line-reversescale) |
        /// [Python](https://plot.ly/python/reference/#parcoords-line-reversescale) |
        /// [R](https://plot.ly/r/reference/#parcoords-line-reversescale)
        public var reverseScale: Bool?
    
        /// Determines whether or not a colorbar is displayed for this trace. 
        ///
        /// Has an effect only if in `line.color`is set to a numerical array.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-line-showscale) |
        /// [Python](https://plot.ly/python/reference/#parcoords-line-showscale) |
        /// [R](https://plot.ly/r/reference/#parcoords-line-showscale)
        public var showScale: Bool?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-line-colorbar) |
        /// [Python](https://plot.ly/python/reference/#parcoords-line-colorbar) |
        /// [R](https://plot.ly/r/reference/#parcoords-line-colorbar)
        public var colorBar: ColorBar0?
    
        /// Sets a reference to a shared color axis. 
        ///
        /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
        /// for these shared color axes are set in the layout, under `layout.coloraxis`,
        /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-line-coloraxis) |
        /// [Python](https://plot.ly/python/reference/#parcoords-line-coloraxis) |
        /// [R](https://plot.ly/r/reference/#parcoords-line-coloraxis)
        public var colorAxis: SubPlotID?
    
        /// Sets the source reference on plot.ly for  color .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-line-colorsrc) |
        /// [Python](https://plot.ly/python/reference/#parcoords-line-colorsrc) |
        /// [R](https://plot.ly/r/reference/#parcoords-line-colorsrc)
        public var colorSource: String?
    
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
            case colorSource = "colorsrc"
        }
        
        public init(color: Color? = nil, cAuto: Bool? = nil, cMin: Double? = nil, cMax: Double? = nil, cMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: ColorBar0? = nil, colorAxis: SubPlotID? = nil, colorSource: String? = nil) {
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-line) |
    /// [Python](https://plot.ly/python/reference/#parcoords-line) |
    /// [R](https://plot.ly/r/reference/#parcoords-line)
    public var line: Line?

    /// Sets the source reference on plot.ly for  ids .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-idssrc) |
    /// [Python](https://plot.ly/python/reference/#parcoords-idssrc) |
    /// [R](https://plot.ly/r/reference/#parcoords-idssrc)
    public var idsSource: String?

    /// Sets the source reference on plot.ly for  customdata .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-customdatasrc) |
    /// [Python](https://plot.ly/python/reference/#parcoords-customdatasrc) |
    /// [R](https://plot.ly/r/reference/#parcoords-customdatasrc)
    public var customDataSource: String?

    /// Sets the source reference on plot.ly for  meta .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#parcoords-metasrc) |
    /// [Python](https://plot.ly/python/reference/#parcoords-metasrc) |
    /// [R](https://plot.ly/r/reference/#parcoords-metasrc)
    public var metaSource: String?

    /// Plotly compatible property encoding
    enum CodingKeys: String, CodingKey {
        case type
        case animatable
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
        case idsSource = "idssrc"
        case customDataSource = "customdatasrc"
        case metaSource = "metasrc"
    }
    
    public init(visible: Visible0? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, stream: Stream0? = nil, transforms: Transforms0? = nil, uiRevision: Anything? = nil, domain: Domain0? = nil, labelAngle: Angle? = nil, labelSide: LabelSide? = nil, labelFont: Font0? = nil, tickFont: Font0? = nil, rangeFont: Font0? = nil, dimensions: Dimensions? = nil, line: Line? = nil, idsSource: String? = nil, customDataSource: String? = nil, metaSource: String? = nil) {
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
        self.idsSource = idsSource
        self.customDataSource = customDataSource
        self.metaSource = metaSource
    }
}