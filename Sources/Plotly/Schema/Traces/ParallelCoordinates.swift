/// Parallel coordinates for multidimensional exploratory data analysis. 
///
/// The samples are specified in `dimensions`. The colors are set in `line.color`.
public struct ParallelCoordinates: Trace {
    public let type: String = "parcoords"

    public let animatable: Bool = false

    /// Determines whether or not this trace is visible. 
    ///
    /// If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the
    /// legend itself is visible).
    /// - traces/scatter/attributes/visible
    /// - traces/bar/attributes/visible
    /// - traces/box/attributes/visible
    /// - traces/heatmap/attributes/visible
    /// - traces/histogram/attributes/visible
    /// - traces/histogram2d/attributes/visible
    /// - traces/histogram2dcontour/attributes/visible
    /// - traces/contour/attributes/visible
    /// - traces/scatterternary/attributes/visible
    /// - traces/violin/attributes/visible
    /// - traces/funnel/attributes/visible
    /// - traces/waterfall/attributes/visible
    /// - traces/image/attributes/visible
    /// - traces/pie/attributes/visible
    /// - traces/sunburst/attributes/visible
    /// - traces/treemap/attributes/visible
    /// - traces/funnelarea/attributes/visible
    /// - traces/scatter3d/attributes/visible
    /// - traces/surface/attributes/visible
    /// - traces/isosurface/attributes/visible
    /// - traces/volume/attributes/visible
    /// - traces/mesh3d/attributes/visible
    /// - traces/cone/attributes/visible
    /// - traces/streamtube/attributes/visible
    /// - traces/scattergeo/attributes/visible
    /// - traces/choropleth/attributes/visible
    /// - traces/scattergl/attributes/visible
    /// - traces/splom/attributes/visible
    /// - traces/pointcloud/attributes/visible
    /// - traces/heatmapgl/attributes/visible
    /// - traces/parcoords/attributes/visible
    public enum Visible: String, Encodable {
        case `true` = "true"
        case `false` = "false"
        case legendOnly = "legendonly"
    }
    /// Determines whether or not this trace is visible. 
    ///
    /// If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the
    /// legend itself is visible).
    public var visible: Visible?

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

    /// - traces/parcoords/attributes/stream
    public struct Stream: Encodable {
        /// The stream id number links a data trace on a plot with a stream. 
        ///
        /// See https://plot.ly/settings for more details.
        public var token: String?
    
        /// Sets the maximum number of points to keep on the plots from an incoming stream. 
        ///
        /// If `maxpoints` is set to *50*, only the newest 50 points will be displayed on the plot.
        public var maxPoints: Double?
    
        public init(token: String? = nil, maxPoints: Double? = nil) {
            self.token = token
            self.maxPoints = maxPoints
        }
    }
    public var stream: Stream?

    /// - traces/parcoords/attributes/transforms
    public struct Transforms: Encodable {
        /// - traces/parcoords/attributes/transforms/items
        public struct Items: Encodable {
            /// An array of operations that manipulate the trace data, for example filtering or sorting the data arrays.
            /// - traces/parcoords/attributes/transforms/items/transform
            public struct Transform: Encodable {
                public init() {
                }
            }
            /// An array of operations that manipulate the trace data, for example filtering or sorting the data arrays.
            public var transform: Transform?
        
            public init(transform: Transform? = nil) {
                self.transform = transform
            }
        }
        public var items: Items?
    
        public init(items: Items? = nil) {
            self.items = items
        }
    }
    public var transforms: Transforms?

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

    /// - traces/parcoords/attributes/domain
    public struct Domain: Encodable {
        /// Sets the horizontal domain of this parcoords trace (in plot fraction).
        public var x: InfoArray?
    
        /// Sets the vertical domain of this parcoords trace (in plot fraction).
        public var y: InfoArray?
    
        /// If there is a layout grid, use the domain for this row in the grid for this parcoords trace .
        public var row: Int?
    
        /// If there is a layout grid, use the domain for this column in the grid for this parcoords trace .
        public var column: Int?
    
        public init(x: InfoArray? = nil, y: InfoArray? = nil, row: Int? = nil, column: Int? = nil) {
            self.x = x
            self.y = y
            self.row = row
            self.column = column
        }
    }
    public var domain: Domain?

    /// Sets the angle of the labels with respect to the horizontal. 
    ///
    /// For example, a `tickangle` of -90 draws the labels vertically. Tilted labels with *labelangle*
    /// may be positioned better inside margins when `labelposition` is set to *bottom*.
    public var labelAngle: Angle?

    /// Specifies the location of the `label`. 
    ///
    /// *top* positions labels above, next to the title *bottom* positions labels below the graph Tilted
    /// labels with *labelangle* may be positioned better inside margins when `labelposition` is set to
    /// *bottom*.
    /// - traces/parcoords/attributes/labelside
    public enum LabelSide: String, Encodable {
        case top
        case bottom
    }
    /// Specifies the location of the `label`. 
    ///
    /// *top* positions labels above, next to the title *bottom* positions labels below the graph Tilted
    /// labels with *labelangle* may be positioned better inside margins when `labelposition` is set to
    /// *bottom*.
    public var labelSide: LabelSide?

    /// Sets the font for the `dimension` labels.
    /// - traces/parcoords/attributes/labelfont
    public struct LabelFont: Encodable {
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
    
        public var size: Double?
    
        public var color: Color?
    
        public init(family: String? = nil, size: Double? = nil, color: Color? = nil) {
            self.family = family
            self.size = size
            self.color = color
        }
    }
    /// Sets the font for the `dimension` labels.
    public var labelFont: LabelFont?

    /// Sets the font for the `dimension` tick values.
    /// - traces/parcoords/attributes/tickfont
    public struct TickFont: Encodable {
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
    
        public var size: Double?
    
        public var color: Color?
    
        public init(family: String? = nil, size: Double? = nil, color: Color? = nil) {
            self.family = family
            self.size = size
            self.color = color
        }
    }
    /// Sets the font for the `dimension` tick values.
    public var tickFont: TickFont?

    /// Sets the font for the `dimension` range values.
    /// - traces/parcoords/attributes/rangefont
    public struct RangeFont: Encodable {
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
    
        public var size: Double?
    
        public var color: Color?
    
        public init(family: String? = nil, size: Double? = nil, color: Color? = nil) {
            self.family = family
            self.size = size
            self.color = color
        }
    }
    /// Sets the font for the `dimension` range values.
    public var rangeFont: RangeFont?

    /// - traces/parcoords/attributes/dimensions
    public struct Dimensions: Encodable {
        /// - traces/parcoords/attributes/dimensions/items
        public struct Items: Encodable {
            /// The dimensions (variables) of the parallel coordinates chart. 
            ///
            /// 2..60 dimensions are supported.
            /// - traces/parcoords/attributes/dimensions/items/dimension
            public struct Dimension: Encodable {
                /// The shown name of the dimension.
                public var label: String?
            
                /// Sets the values at which ticks on this axis appear.
                public var tickValues: [Double]?
            
                /// Sets the text displayed at the ticks position via `tickvals`.
                public var tickText: [Double]?
            
                /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to those in Python. 
                ///
                /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
                /// And for dates see:
                /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
                /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
                /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
                public var tickFormat: String?
            
                /// Shows the dimension when set to `true` (the default). 
                ///
                /// Hides the dimension for `false`.
                public var visible: Bool?
            
                /// The domain range that represents the full, shown axis extent. 
                ///
                /// Defaults to the `values` extent. Must be an array of `[fromValue, toValue]` with finite numbers
                /// as elements.
                public var range: InfoArray?
            
                /// The domain range to which the filter on the dimension is constrained. 
                ///
                /// Must be an array of `[fromValue, toValue]` with `fromValue <= toValue`, or if `multiselect` is
                /// not disabled, you may give an array of arrays, where each inner array is `[fromValue, toValue]`.
                public var constraintRange: InfoArray?
            
                /// Do we allow multiple selection ranges or just a single range?
                public var multiSelect: Bool?
            
                /// Dimension values. 
                ///
                /// `values[n]` represents the value of the `n`th point in the dataset, therefore the `values`
                /// vector for all dimensions must be the same (longer vectors will be truncated). Each value must
                /// be a finite number.
                public var values: [Double]?
            
                /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. 
                ///
                /// You can modify these items in the output figure by making your own item with `templateitemname`
                /// matching this `name` alongside your modifications (including `visible: false` or `enabled:
                /// false` to hide it). Has no effect outside of a template.
                public var name: String?
            
                /// Used to refer to a named item in this array in the template. 
                ///
                /// Named items from the template will be created even without a matching item in the input figure,
                /// but you can modify one by making an item with `templateitemname` matching its `name`, alongside
                /// your modifications (including `visible: false` or `enabled: false` to hide it). If there is no
                /// template or no matching item, this item will be hidden unless you explicitly show it with
                /// `visible: true`.
                public var templateItemName: String?
            
                /// Sets the source reference on plot.ly for  tickvals .
                public var tickValuesSource: String?
            
                /// Sets the source reference on plot.ly for  ticktext .
                public var tickTextSource: String?
            
                /// Sets the source reference on plot.ly for  values .
                public var valuesSource: String?
            
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
            public var dimension: Dimension?
        
            public init(dimension: Dimension? = nil) {
                self.dimension = dimension
            }
        }
        public var items: Items?
    
        public init(items: Items? = nil) {
            self.items = items
        }
    }
    public var dimensions: Dimensions?

    /// - traces/parcoords/attributes/line
    public struct Line: Encodable {
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
    
        /// - traces/parcoords/attributes/line/colorbar
        public struct ColorBar: Encodable {
            /// Determines whether this color bar's thickness (i.e. 
            ///
            /// the measure in the constant color direction) is set in units of plot *fraction* or in *pixels*.
            /// Use `thickness` to set the value.
            /// - layout/layoutAttributes/coloraxis/colorbar/thicknessmode
            /// - traces/scatter/attributes/marker/colorbar/thicknessmode
            /// - traces/bar/attributes/marker/colorbar/thicknessmode
            /// - traces/heatmap/attributes/colorbar/thicknessmode
            /// - traces/histogram/attributes/marker/colorbar/thicknessmode
            /// - traces/histogram2d/attributes/colorbar/thicknessmode
            /// - traces/histogram2dcontour/attributes/colorbar/thicknessmode
            /// - traces/contour/attributes/colorbar/thicknessmode
            /// - traces/scatterternary/attributes/marker/colorbar/thicknessmode
            /// - traces/funnel/attributes/marker/colorbar/thicknessmode
            /// - traces/sunburst/attributes/marker/colorbar/thicknessmode
            /// - traces/treemap/attributes/marker/colorbar/thicknessmode
            /// - traces/scatter3d/attributes/line/colorbar/thicknessmode
            /// - traces/scatter3d/attributes/marker/colorbar/thicknessmode
            /// - traces/surface/attributes/colorbar/thicknessmode
            /// - traces/isosurface/attributes/colorbar/thicknessmode
            /// - traces/volume/attributes/colorbar/thicknessmode
            /// - traces/mesh3d/attributes/colorbar/thicknessmode
            /// - traces/cone/attributes/colorbar/thicknessmode
            /// - traces/streamtube/attributes/colorbar/thicknessmode
            /// - traces/scattergeo/attributes/marker/colorbar/thicknessmode
            /// - traces/choropleth/attributes/colorbar/thicknessmode
            /// - traces/scattergl/attributes/marker/colorbar/thicknessmode
            /// - traces/splom/attributes/marker/colorbar/thicknessmode
            /// - traces/heatmapgl/attributes/colorbar/thicknessmode
            /// - traces/parcoords/attributes/line/colorbar/thicknessmode
            public enum ThicknessMode: String, Encodable {
                case fraction
                case pixels
            }
            /// Determines whether this color bar's thickness (i.e. 
            ///
            /// the measure in the constant color direction) is set in units of plot *fraction* or in *pixels*.
            /// Use `thickness` to set the value.
            public var thicknessMode: ThicknessMode?
        
            /// Sets the thickness of the color bar This measure excludes the size of the padding, ticks and labels.
            public var thickness: Double?
        
            /// Determines whether this slider length is set in units of plot *fraction* or in *pixels. 
            ///
            /// Use `len` to set the value.
            /// - layout/layoutAttributes/sliders/items/slider/lenmode
            /// - layout/layoutAttributes/coloraxis/colorbar/lenmode
            /// - traces/scatter/attributes/marker/colorbar/lenmode
            /// - traces/bar/attributes/marker/colorbar/lenmode
            /// - traces/heatmap/attributes/colorbar/lenmode
            /// - traces/histogram/attributes/marker/colorbar/lenmode
            /// - traces/histogram2d/attributes/colorbar/lenmode
            /// - traces/histogram2dcontour/attributes/colorbar/lenmode
            /// - traces/contour/attributes/colorbar/lenmode
            /// - traces/scatterternary/attributes/marker/colorbar/lenmode
            /// - traces/funnel/attributes/marker/colorbar/lenmode
            /// - traces/sunburst/attributes/marker/colorbar/lenmode
            /// - traces/treemap/attributes/marker/colorbar/lenmode
            /// - traces/scatter3d/attributes/line/colorbar/lenmode
            /// - traces/scatter3d/attributes/marker/colorbar/lenmode
            /// - traces/surface/attributes/colorbar/lenmode
            /// - traces/isosurface/attributes/colorbar/lenmode
            /// - traces/volume/attributes/colorbar/lenmode
            /// - traces/mesh3d/attributes/colorbar/lenmode
            /// - traces/cone/attributes/colorbar/lenmode
            /// - traces/streamtube/attributes/colorbar/lenmode
            /// - traces/scattergeo/attributes/marker/colorbar/lenmode
            /// - traces/choropleth/attributes/colorbar/lenmode
            /// - traces/scattergl/attributes/marker/colorbar/lenmode
            /// - traces/splom/attributes/marker/colorbar/lenmode
            /// - traces/heatmapgl/attributes/colorbar/lenmode
            /// - traces/parcoords/attributes/line/colorbar/lenmode
            public enum LengthMode: String, Encodable {
                case fraction
                case pixels
            }
            /// Determines whether this slider length is set in units of plot *fraction* or in *pixels. 
            ///
            /// Use `len` to set the value.
            public var lengthMode: LengthMode?
        
            /// Sets the length of the color bar This measure excludes the padding of both ends. 
            ///
            /// That is, the color bar length is this length minus the padding on both ends.
            public var length: Double?
        
            /// Sets the x position of the color bar (in plot fraction).
            public var x: Double?
        
            /// Sets the anchor for the x position
            /// - layout/layoutAttributes/images/items/image/xanchor
            /// - layout/layoutAttributes/sliders/items/slider/currentvalue/xanchor
            /// - layout/layoutAttributes/coloraxis/colorbar/xanchor
            /// - traces/scatter/attributes/marker/colorbar/xanchor
            /// - traces/bar/attributes/marker/colorbar/xanchor
            /// - traces/heatmap/attributes/colorbar/xanchor
            /// - traces/histogram/attributes/marker/colorbar/xanchor
            /// - traces/histogram2d/attributes/colorbar/xanchor
            /// - traces/histogram2dcontour/attributes/colorbar/xanchor
            /// - traces/contour/attributes/colorbar/xanchor
            /// - traces/scatterternary/attributes/marker/colorbar/xanchor
            /// - traces/funnel/attributes/marker/colorbar/xanchor
            /// - traces/sunburst/attributes/marker/colorbar/xanchor
            /// - traces/treemap/attributes/marker/colorbar/xanchor
            /// - traces/scatter3d/attributes/line/colorbar/xanchor
            /// - traces/scatter3d/attributes/marker/colorbar/xanchor
            /// - traces/surface/attributes/colorbar/xanchor
            /// - traces/isosurface/attributes/colorbar/xanchor
            /// - traces/volume/attributes/colorbar/xanchor
            /// - traces/mesh3d/attributes/colorbar/xanchor
            /// - traces/cone/attributes/colorbar/xanchor
            /// - traces/streamtube/attributes/colorbar/xanchor
            /// - traces/scattergeo/attributes/marker/colorbar/xanchor
            /// - traces/choropleth/attributes/colorbar/xanchor
            /// - traces/scattergl/attributes/marker/colorbar/xanchor
            /// - traces/splom/attributes/marker/colorbar/xanchor
            /// - traces/heatmapgl/attributes/colorbar/xanchor
            /// - traces/parcoords/attributes/line/colorbar/xanchor
            public enum XAnchor: String, Encodable {
                case left
                case center
                case right
            }
            /// Sets the anchor for the x position
            public var xAnchor: XAnchor?
        
            /// Sets the amount of padding (in px) along the x direction.
            public var xPadding: Double?
        
            /// Sets the y position of the color bar (in plot fraction).
            public var y: Double?
        
            /// Sets the anchor for the y position.
            /// - layout/layoutAttributes/images/items/image/yanchor
            /// - layout/layoutAttributes/coloraxis/colorbar/yanchor
            /// - traces/scatter/attributes/marker/colorbar/yanchor
            /// - traces/bar/attributes/marker/colorbar/yanchor
            /// - traces/heatmap/attributes/colorbar/yanchor
            /// - traces/histogram/attributes/marker/colorbar/yanchor
            /// - traces/histogram2d/attributes/colorbar/yanchor
            /// - traces/histogram2dcontour/attributes/colorbar/yanchor
            /// - traces/contour/attributes/colorbar/yanchor
            /// - traces/scatterternary/attributes/marker/colorbar/yanchor
            /// - traces/funnel/attributes/marker/colorbar/yanchor
            /// - traces/sunburst/attributes/marker/colorbar/yanchor
            /// - traces/treemap/attributes/marker/colorbar/yanchor
            /// - traces/scatter3d/attributes/line/colorbar/yanchor
            /// - traces/scatter3d/attributes/marker/colorbar/yanchor
            /// - traces/surface/attributes/colorbar/yanchor
            /// - traces/isosurface/attributes/colorbar/yanchor
            /// - traces/volume/attributes/colorbar/yanchor
            /// - traces/mesh3d/attributes/colorbar/yanchor
            /// - traces/cone/attributes/colorbar/yanchor
            /// - traces/streamtube/attributes/colorbar/yanchor
            /// - traces/scattergeo/attributes/marker/colorbar/yanchor
            /// - traces/choropleth/attributes/colorbar/yanchor
            /// - traces/scattergl/attributes/marker/colorbar/yanchor
            /// - traces/splom/attributes/marker/colorbar/yanchor
            /// - traces/heatmapgl/attributes/colorbar/yanchor
            /// - traces/parcoords/attributes/line/colorbar/yanchor
            public enum YAnchor: String, Encodable {
                case top
                case middle
                case bottom
            }
            /// Sets the anchor for the y position.
            public var yAnchor: YAnchor?
        
            /// Sets the amount of padding (in px) along the y direction.
            public var yPading: Double?
        
            /// Sets the axis line color.
            public var outLineColor: Color?
        
            /// Sets the width (in px) of the axis line.
            public var outLineWidth: Double?
        
            /// Sets the axis line color.
            public var borderColor: Color?
        
            /// Sets the width (in px) or the border enclosing this color bar.
            public var borderWidth: Double?
        
            /// Sets the color of padded area.
            public var backgroundColor: Color?
        
            /// Sets the tick mode for this axis. 
            ///
            /// If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is
            /// determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value
            /// if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via
            /// `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is
            /// provided).
            /// - layout/layoutAttributes/xaxis/tickmode
            /// - layout/layoutAttributes/yaxis/tickmode
            /// - layout/layoutAttributes/ternary/aaxis/tickmode
            /// - layout/layoutAttributes/ternary/baxis/tickmode
            /// - layout/layoutAttributes/ternary/caxis/tickmode
            /// - layout/layoutAttributes/scene/xaxis/tickmode
            /// - layout/layoutAttributes/scene/yaxis/tickmode
            /// - layout/layoutAttributes/scene/zaxis/tickmode
            /// - layout/layoutAttributes/polar/radialaxis/tickmode
            /// - layout/layoutAttributes/polar/angularaxis/tickmode
            /// - layout/layoutAttributes/coloraxis/colorbar/tickmode
            /// - traces/scatter/attributes/marker/colorbar/tickmode
            /// - traces/bar/attributes/marker/colorbar/tickmode
            /// - traces/heatmap/attributes/colorbar/tickmode
            /// - traces/histogram/attributes/marker/colorbar/tickmode
            /// - traces/histogram2d/attributes/colorbar/tickmode
            /// - traces/histogram2dcontour/attributes/colorbar/tickmode
            /// - traces/contour/attributes/colorbar/tickmode
            /// - traces/scatterternary/attributes/marker/colorbar/tickmode
            /// - traces/funnel/attributes/marker/colorbar/tickmode
            /// - traces/sunburst/attributes/marker/colorbar/tickmode
            /// - traces/treemap/attributes/marker/colorbar/tickmode
            /// - traces/scatter3d/attributes/line/colorbar/tickmode
            /// - traces/scatter3d/attributes/marker/colorbar/tickmode
            /// - traces/surface/attributes/colorbar/tickmode
            /// - traces/isosurface/attributes/colorbar/tickmode
            /// - traces/volume/attributes/colorbar/tickmode
            /// - traces/mesh3d/attributes/colorbar/tickmode
            /// - traces/cone/attributes/colorbar/tickmode
            /// - traces/streamtube/attributes/colorbar/tickmode
            /// - traces/scattergeo/attributes/marker/colorbar/tickmode
            /// - traces/choropleth/attributes/colorbar/tickmode
            /// - traces/scattergl/attributes/marker/colorbar/tickmode
            /// - traces/splom/attributes/marker/colorbar/tickmode
            /// - traces/heatmapgl/attributes/colorbar/tickmode
            /// - traces/parcoords/attributes/line/colorbar/tickmode
            public enum TickMode: String, Encodable {
                case auto
                case linear
                case array
            }
            /// Sets the tick mode for this axis. 
            ///
            /// If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is
            /// determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value
            /// if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via
            /// `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is
            /// provided).
            public var tickMode: TickMode?
        
            /// Specifies the maximum number of ticks for the particular axis. 
            ///
            /// The actual number of ticks will be chosen automatically to be less than or equal to `nticks`.
            /// Has an effect only if `tickmode` is set to *auto*.
            public var numTicks: Int?
        
            /// Sets the placement of the first tick on this axis. 
            ///
            /// Use with `dtick`. If the axis `type` is *log*, then you must take the log of your starting tick
            /// (e.g. to set the starting tick to 100, set the `tick0` to 2) except when `dtick`=*L<f>* (see
            /// `dtick` for more info). If the axis `type` is *date*, it should be a date string, like date
            /// data. If the axis `type` is *category*, it should be a number, using the scale where each
            /// category is assigned a serial number from zero in the order it appears.
            public var tick0: Anything?
        
            /// Sets the step in-between ticks on this axis. 
            ///
            /// Use with `tick0`. Must be a positive number, or special strings available to *log* and *date*
            /// axes. If the axis `type` is *log*, then ticks are set every 10^(n*dtick) where n is the tick
            /// number. For example, to set a tick mark at 1, 10, 100, 1000, ... set dtick to 1. To set tick
            /// marks at 1, 100, 10000, ... set dtick to 2. To set tick marks at 1, 5, 25, 125, 625, 3125, ...
            /// set dtick to log_10(5), or 0.69897000433. *log* has several special values; *L<f>*, where `f` is
            /// a positive number, gives ticks linearly spaced in value (but not position). For example `tick0`
            /// = 0.1, `dtick` = *L0.5* will put ticks at 0.1, 0.6, 1.1, 1.6 etc. To show powers of 10 plus
            /// small digits between, use *D1* (all digits) or *D2* (only 2 and 5). `tick0` is ignored for *D1*
            /// and *D2*. If the axis `type` is *date*, then you must convert the time to milliseconds. For
            /// example, to set the interval between ticks to one day, set `dtick` to 86400000.0. *date* also
            /// has special values *M<n>* gives ticks spaced by a number of months. `n` must be a positive
            /// integer. To set ticks on the 15th of every third month, set `tick0` to *2000-01-15* and `dtick`
            /// to *M3*. To set ticks every 4 years, set `dtick` to *M48*
            public var dTick: Anything?
        
            /// Sets the values at which ticks on this axis appear. 
            ///
            /// Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
            public var tickValues: [Double]?
        
            /// Sets the text displayed at the ticks position via `tickvals`. 
            ///
            /// Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
            public var tickText: [Double]?
        
            /// Determines whether ticks are drawn or not. 
            ///
            /// If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside
            /// (inside) the axis lines.
            /// - layout/layoutAttributes/xaxis/ticks
            /// - layout/layoutAttributes/yaxis/ticks
            /// - layout/layoutAttributes/ternary/aaxis/ticks
            /// - layout/layoutAttributes/ternary/baxis/ticks
            /// - layout/layoutAttributes/ternary/caxis/ticks
            /// - layout/layoutAttributes/scene/xaxis/ticks
            /// - layout/layoutAttributes/scene/yaxis/ticks
            /// - layout/layoutAttributes/scene/zaxis/ticks
            /// - layout/layoutAttributes/polar/radialaxis/ticks
            /// - layout/layoutAttributes/polar/angularaxis/ticks
            /// - layout/layoutAttributes/coloraxis/colorbar/ticks
            /// - traces/scatter/attributes/marker/colorbar/ticks
            /// - traces/bar/attributes/marker/colorbar/ticks
            /// - traces/heatmap/attributes/colorbar/ticks
            /// - traces/histogram/attributes/marker/colorbar/ticks
            /// - traces/histogram2d/attributes/colorbar/ticks
            /// - traces/histogram2dcontour/attributes/colorbar/ticks
            /// - traces/contour/attributes/colorbar/ticks
            /// - traces/scatterternary/attributes/marker/colorbar/ticks
            /// - traces/funnel/attributes/marker/colorbar/ticks
            /// - traces/sunburst/attributes/marker/colorbar/ticks
            /// - traces/treemap/attributes/marker/colorbar/ticks
            /// - traces/scatter3d/attributes/line/colorbar/ticks
            /// - traces/scatter3d/attributes/marker/colorbar/ticks
            /// - traces/surface/attributes/colorbar/ticks
            /// - traces/isosurface/attributes/colorbar/ticks
            /// - traces/volume/attributes/colorbar/ticks
            /// - traces/mesh3d/attributes/colorbar/ticks
            /// - traces/cone/attributes/colorbar/ticks
            /// - traces/streamtube/attributes/colorbar/ticks
            /// - traces/scattergeo/attributes/marker/colorbar/ticks
            /// - traces/choropleth/attributes/colorbar/ticks
            /// - traces/scattergl/attributes/marker/colorbar/ticks
            /// - traces/splom/attributes/marker/colorbar/ticks
            /// - traces/heatmapgl/attributes/colorbar/ticks
            /// - traces/parcoords/attributes/line/colorbar/ticks
            public enum Ticks: String, Encodable {
                case outside
                case inside
                case none = ""
            }
            /// Determines whether ticks are drawn or not. 
            ///
            /// If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside
            /// (inside) the axis lines.
            public var ticks: Ticks?
        
            /// Sets the tick length (in px).
            public var tickLength: Double?
        
            /// Sets the tick width (in px).
            public var tickWidth: Double?
        
            /// Sets the tick color.
            public var tickColor: Color?
        
            /// Determines whether or not the tick labels are drawn.
            public var showTickLabels: Bool?
        
            /// Sets the color bar's tick label font
            /// - traces/parcoords/attributes/line/colorbar/tickfont
            public struct TickFont: Encodable {
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
            
                public var size: Double?
            
                public var color: Color?
            
                public init(family: String? = nil, size: Double? = nil, color: Color? = nil) {
                    self.family = family
                    self.size = size
                    self.color = color
                }
            }
            /// Sets the color bar's tick label font
            public var tickFont: TickFont?
        
            /// Sets the angle of the tick labels with respect to the horizontal. 
            ///
            /// For example, a `tickangle` of -90 draws the tick labels vertically.
            public var tickAngle: Angle?
        
            /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to those in Python. 
            ///
            /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
            /// And for dates see:
            /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
            /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
            /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            public var tickFormat: String?
        
            /// - traces/parcoords/attributes/line/colorbar/tickformatstops
            public struct TickFormatStops: Encodable {
                /// - traces/parcoords/attributes/line/colorbar/tickformatstops/items
                public struct Items: Encodable {
                    /// - traces/parcoords/attributes/line/colorbar/tickformatstops/items/tickformatstop
                    public struct TickFormatStop: Encodable {
                        /// Determines whether or not this stop is used. 
                        ///
                        /// If `false`, this stop is ignored even within its `dtickrange`.
                        public var enabled: Bool?
                    
                        /// range [*min*, *max*], where *min*, *max* - dtick values which describe some zoom level, it is possible to omit *min* or *max* value by passing *null*
                        public var dTickRange: InfoArray?
                    
                        /// string - dtickformat for described zoom level, the same as *tickformat*
                        public var value: String?
                    
                        /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. 
                        ///
                        /// You can modify these items in the output figure by making your own item with `templateitemname`
                        /// matching this `name` alongside your modifications (including `visible: false` or `enabled:
                        /// false` to hide it). Has no effect outside of a template.
                        public var name: String?
                    
                        /// Used to refer to a named item in this array in the template. 
                        ///
                        /// Named items from the template will be created even without a matching item in the input figure,
                        /// but you can modify one by making an item with `templateitemname` matching its `name`, alongside
                        /// your modifications (including `visible: false` or `enabled: false` to hide it). If there is no
                        /// template or no matching item, this item will be hidden unless you explicitly show it with
                        /// `visible: true`.
                        public var templateItemName: String?
                    
                        public init(enabled: Bool? = nil, dTickRange: InfoArray? = nil, value: String? = nil, name: String? = nil, templateItemName: String? = nil) {
                            self.enabled = enabled
                            self.dTickRange = dTickRange
                            self.value = value
                            self.name = name
                            self.templateItemName = templateItemName
                        }
                    }
                    public var tickFormatStop: TickFormatStop?
                
                    public init(tickFormatStop: TickFormatStop? = nil) {
                        self.tickFormatStop = tickFormatStop
                    }
                }
                public var items: Items?
            
                public init(items: Items? = nil) {
                    self.items = items
                }
            }
            public var tickFormatStops: TickFormatStops?
        
            /// Sets a tick label prefix.
            public var tickPrefix: String?
        
            /// If *all*, all tick labels are displayed with a prefix. 
            ///
            /// If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is
            /// displayed with a suffix. If *none*, tick prefixes are hidden.
            /// - layout/layoutAttributes/xaxis/showtickprefix
            /// - layout/layoutAttributes/yaxis/showtickprefix
            /// - layout/layoutAttributes/ternary/aaxis/showtickprefix
            /// - layout/layoutAttributes/ternary/baxis/showtickprefix
            /// - layout/layoutAttributes/ternary/caxis/showtickprefix
            /// - layout/layoutAttributes/scene/xaxis/showtickprefix
            /// - layout/layoutAttributes/scene/yaxis/showtickprefix
            /// - layout/layoutAttributes/scene/zaxis/showtickprefix
            /// - layout/layoutAttributes/polar/radialaxis/showtickprefix
            /// - layout/layoutAttributes/polar/angularaxis/showtickprefix
            /// - layout/layoutAttributes/coloraxis/colorbar/showtickprefix
            /// - traces/scatter/attributes/marker/colorbar/showtickprefix
            /// - traces/bar/attributes/marker/colorbar/showtickprefix
            /// - traces/heatmap/attributes/colorbar/showtickprefix
            /// - traces/histogram/attributes/marker/colorbar/showtickprefix
            /// - traces/histogram2d/attributes/colorbar/showtickprefix
            /// - traces/histogram2dcontour/attributes/colorbar/showtickprefix
            /// - traces/contour/attributes/colorbar/showtickprefix
            /// - traces/scatterternary/attributes/marker/colorbar/showtickprefix
            /// - traces/funnel/attributes/marker/colorbar/showtickprefix
            /// - traces/sunburst/attributes/marker/colorbar/showtickprefix
            /// - traces/treemap/attributes/marker/colorbar/showtickprefix
            /// - traces/scatter3d/attributes/line/colorbar/showtickprefix
            /// - traces/scatter3d/attributes/marker/colorbar/showtickprefix
            /// - traces/surface/attributes/colorbar/showtickprefix
            /// - traces/isosurface/attributes/colorbar/showtickprefix
            /// - traces/volume/attributes/colorbar/showtickprefix
            /// - traces/mesh3d/attributes/colorbar/showtickprefix
            /// - traces/cone/attributes/colorbar/showtickprefix
            /// - traces/streamtube/attributes/colorbar/showtickprefix
            /// - traces/scattergeo/attributes/marker/colorbar/showtickprefix
            /// - traces/choropleth/attributes/colorbar/showtickprefix
            /// - traces/scattergl/attributes/marker/colorbar/showtickprefix
            /// - traces/splom/attributes/marker/colorbar/showtickprefix
            /// - traces/heatmapgl/attributes/colorbar/showtickprefix
            /// - traces/parcoords/attributes/line/colorbar/showtickprefix
            public enum ShowTickPrefix: String, Encodable {
                case all
                case first
                case last
                case none
            }
            /// If *all*, all tick labels are displayed with a prefix. 
            ///
            /// If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is
            /// displayed with a suffix. If *none*, tick prefixes are hidden.
            public var showTickPrefix: ShowTickPrefix?
        
            /// Sets a tick label suffix.
            public var tickSuffix: String?
        
            /// Same as `showtickprefix` but for tick suffixes.
            /// - layout/layoutAttributes/xaxis/showticksuffix
            /// - layout/layoutAttributes/yaxis/showticksuffix
            /// - layout/layoutAttributes/ternary/aaxis/showticksuffix
            /// - layout/layoutAttributes/ternary/baxis/showticksuffix
            /// - layout/layoutAttributes/ternary/caxis/showticksuffix
            /// - layout/layoutAttributes/scene/xaxis/showticksuffix
            /// - layout/layoutAttributes/scene/yaxis/showticksuffix
            /// - layout/layoutAttributes/scene/zaxis/showticksuffix
            /// - layout/layoutAttributes/polar/radialaxis/showticksuffix
            /// - layout/layoutAttributes/polar/angularaxis/showticksuffix
            /// - layout/layoutAttributes/coloraxis/colorbar/showticksuffix
            /// - traces/scatter/attributes/marker/colorbar/showticksuffix
            /// - traces/bar/attributes/marker/colorbar/showticksuffix
            /// - traces/heatmap/attributes/colorbar/showticksuffix
            /// - traces/histogram/attributes/marker/colorbar/showticksuffix
            /// - traces/histogram2d/attributes/colorbar/showticksuffix
            /// - traces/histogram2dcontour/attributes/colorbar/showticksuffix
            /// - traces/contour/attributes/colorbar/showticksuffix
            /// - traces/scatterternary/attributes/marker/colorbar/showticksuffix
            /// - traces/funnel/attributes/marker/colorbar/showticksuffix
            /// - traces/sunburst/attributes/marker/colorbar/showticksuffix
            /// - traces/treemap/attributes/marker/colorbar/showticksuffix
            /// - traces/scatter3d/attributes/line/colorbar/showticksuffix
            /// - traces/scatter3d/attributes/marker/colorbar/showticksuffix
            /// - traces/surface/attributes/colorbar/showticksuffix
            /// - traces/isosurface/attributes/colorbar/showticksuffix
            /// - traces/volume/attributes/colorbar/showticksuffix
            /// - traces/mesh3d/attributes/colorbar/showticksuffix
            /// - traces/cone/attributes/colorbar/showticksuffix
            /// - traces/streamtube/attributes/colorbar/showticksuffix
            /// - traces/scattergeo/attributes/marker/colorbar/showticksuffix
            /// - traces/choropleth/attributes/colorbar/showticksuffix
            /// - traces/scattergl/attributes/marker/colorbar/showticksuffix
            /// - traces/splom/attributes/marker/colorbar/showticksuffix
            /// - traces/heatmapgl/attributes/colorbar/showticksuffix
            /// - traces/parcoords/attributes/line/colorbar/showticksuffix
            public enum ShowTickSuffix: String, Encodable {
                case all
                case first
                case last
                case none
            }
            /// Same as `showtickprefix` but for tick suffixes.
            public var showTickSuffix: ShowTickSuffix?
        
            /// If "true", even 4-digit integers are separated
            public var separatethousands: Bool?
        
            /// Determines a formatting rule for the tick exponents. 
            ///
            /// For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*,
            /// 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
            /// - layout/layoutAttributes/xaxis/exponentformat
            /// - layout/layoutAttributes/yaxis/exponentformat
            /// - layout/layoutAttributes/ternary/aaxis/exponentformat
            /// - layout/layoutAttributes/ternary/baxis/exponentformat
            /// - layout/layoutAttributes/ternary/caxis/exponentformat
            /// - layout/layoutAttributes/scene/xaxis/exponentformat
            /// - layout/layoutAttributes/scene/yaxis/exponentformat
            /// - layout/layoutAttributes/scene/zaxis/exponentformat
            /// - layout/layoutAttributes/polar/radialaxis/exponentformat
            /// - layout/layoutAttributes/polar/angularaxis/exponentformat
            /// - layout/layoutAttributes/coloraxis/colorbar/exponentformat
            /// - traces/scatter/attributes/marker/colorbar/exponentformat
            /// - traces/bar/attributes/marker/colorbar/exponentformat
            /// - traces/heatmap/attributes/colorbar/exponentformat
            /// - traces/histogram/attributes/marker/colorbar/exponentformat
            /// - traces/histogram2d/attributes/colorbar/exponentformat
            /// - traces/histogram2dcontour/attributes/colorbar/exponentformat
            /// - traces/contour/attributes/colorbar/exponentformat
            /// - traces/scatterternary/attributes/marker/colorbar/exponentformat
            /// - traces/funnel/attributes/marker/colorbar/exponentformat
            /// - traces/sunburst/attributes/marker/colorbar/exponentformat
            /// - traces/treemap/attributes/marker/colorbar/exponentformat
            /// - traces/scatter3d/attributes/line/colorbar/exponentformat
            /// - traces/scatter3d/attributes/marker/colorbar/exponentformat
            /// - traces/surface/attributes/colorbar/exponentformat
            /// - traces/isosurface/attributes/colorbar/exponentformat
            /// - traces/volume/attributes/colorbar/exponentformat
            /// - traces/mesh3d/attributes/colorbar/exponentformat
            /// - traces/cone/attributes/colorbar/exponentformat
            /// - traces/streamtube/attributes/colorbar/exponentformat
            /// - traces/scattergeo/attributes/marker/colorbar/exponentformat
            /// - traces/choropleth/attributes/colorbar/exponentformat
            /// - traces/scattergl/attributes/marker/colorbar/exponentformat
            /// - traces/splom/attributes/marker/colorbar/exponentformat
            /// - traces/heatmapgl/attributes/colorbar/exponentformat
            /// - traces/parcoords/attributes/line/colorbar/exponentformat
            public enum ExponentFormat: String, Encodable {
                case none
                case e
                case E
                case power
                case SI
                case B
            }
            /// Determines a formatting rule for the tick exponents. 
            ///
            /// For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*,
            /// 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
            public var exponentFormat: ExponentFormat?
        
            /// If *all*, all exponents are shown besides their significands. 
            ///
            /// If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the
            /// last tick is shown. If *none*, no exponents appear.
            /// - layout/layoutAttributes/xaxis/showexponent
            /// - layout/layoutAttributes/yaxis/showexponent
            /// - layout/layoutAttributes/ternary/aaxis/showexponent
            /// - layout/layoutAttributes/ternary/baxis/showexponent
            /// - layout/layoutAttributes/ternary/caxis/showexponent
            /// - layout/layoutAttributes/scene/xaxis/showexponent
            /// - layout/layoutAttributes/scene/yaxis/showexponent
            /// - layout/layoutAttributes/scene/zaxis/showexponent
            /// - layout/layoutAttributes/polar/radialaxis/showexponent
            /// - layout/layoutAttributes/polar/angularaxis/showexponent
            /// - layout/layoutAttributes/coloraxis/colorbar/showexponent
            /// - traces/scatter/attributes/marker/colorbar/showexponent
            /// - traces/bar/attributes/marker/colorbar/showexponent
            /// - traces/heatmap/attributes/colorbar/showexponent
            /// - traces/histogram/attributes/marker/colorbar/showexponent
            /// - traces/histogram2d/attributes/colorbar/showexponent
            /// - traces/histogram2dcontour/attributes/colorbar/showexponent
            /// - traces/contour/attributes/colorbar/showexponent
            /// - traces/scatterternary/attributes/marker/colorbar/showexponent
            /// - traces/funnel/attributes/marker/colorbar/showexponent
            /// - traces/sunburst/attributes/marker/colorbar/showexponent
            /// - traces/treemap/attributes/marker/colorbar/showexponent
            /// - traces/scatter3d/attributes/line/colorbar/showexponent
            /// - traces/scatter3d/attributes/marker/colorbar/showexponent
            /// - traces/surface/attributes/colorbar/showexponent
            /// - traces/isosurface/attributes/colorbar/showexponent
            /// - traces/volume/attributes/colorbar/showexponent
            /// - traces/mesh3d/attributes/colorbar/showexponent
            /// - traces/cone/attributes/colorbar/showexponent
            /// - traces/streamtube/attributes/colorbar/showexponent
            /// - traces/scattergeo/attributes/marker/colorbar/showexponent
            /// - traces/choropleth/attributes/colorbar/showexponent
            /// - traces/scattergl/attributes/marker/colorbar/showexponent
            /// - traces/splom/attributes/marker/colorbar/showexponent
            /// - traces/heatmapgl/attributes/colorbar/showexponent
            /// - traces/parcoords/attributes/line/colorbar/showexponent
            public enum ShowExponent: String, Encodable {
                case all
                case first
                case last
                case none
            }
            /// If *all*, all exponents are shown besides their significands. 
            ///
            /// If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the
            /// last tick is shown. If *none*, no exponents appear.
            public var showExponent: ShowExponent?
        
            /// - traces/parcoords/attributes/line/colorbar/title
            public struct Title: Encodable {
                /// Sets the title of the color bar. 
                ///
                /// Note that before the existence of `title.text`, the title's contents used to be defined as the
                /// `title` attribute itself. This behavior has been deprecated.
                public var text: String?
            
                /// Sets this color bar's title font. 
                ///
                /// Note that the title's font used to be set by the now deprecated `titlefont` attribute.
                /// - traces/parcoords/attributes/line/colorbar/title/font
                public struct Font: Encodable {
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
                
                    public var size: Double?
                
                    public var color: Color?
                
                    public init(family: String? = nil, size: Double? = nil, color: Color? = nil) {
                        self.family = family
                        self.size = size
                        self.color = color
                    }
                }
                /// Sets this color bar's title font. 
                ///
                /// Note that the title's font used to be set by the now deprecated `titlefont` attribute.
                public var font: Font?
            
                /// Determines the location of color bar's title with respect to the color bar. 
                ///
                /// Note that the title's location used to be set by the now deprecated `titleside` attribute.
                /// - layout/layoutAttributes/coloraxis/colorbar/title/side
                /// - traces/scatter/attributes/marker/colorbar/title/side
                /// - traces/bar/attributes/marker/colorbar/title/side
                /// - traces/heatmap/attributes/colorbar/title/side
                /// - traces/histogram/attributes/marker/colorbar/title/side
                /// - traces/histogram2d/attributes/colorbar/title/side
                /// - traces/histogram2dcontour/attributes/colorbar/title/side
                /// - traces/contour/attributes/colorbar/title/side
                /// - traces/scatterternary/attributes/marker/colorbar/title/side
                /// - traces/funnel/attributes/marker/colorbar/title/side
                /// - traces/sunburst/attributes/marker/colorbar/title/side
                /// - traces/treemap/attributes/marker/colorbar/title/side
                /// - traces/scatter3d/attributes/line/colorbar/title/side
                /// - traces/scatter3d/attributes/marker/colorbar/title/side
                /// - traces/surface/attributes/colorbar/title/side
                /// - traces/isosurface/attributes/colorbar/title/side
                /// - traces/volume/attributes/colorbar/title/side
                /// - traces/mesh3d/attributes/colorbar/title/side
                /// - traces/cone/attributes/colorbar/title/side
                /// - traces/streamtube/attributes/colorbar/title/side
                /// - traces/scattergeo/attributes/marker/colorbar/title/side
                /// - traces/choropleth/attributes/colorbar/title/side
                /// - traces/scattergl/attributes/marker/colorbar/title/side
                /// - traces/splom/attributes/marker/colorbar/title/side
                /// - traces/heatmapgl/attributes/colorbar/title/side
                /// - traces/parcoords/attributes/line/colorbar/title/side
                public enum Side: String, Encodable {
                    case right
                    case top
                    case bottom
                }
                /// Determines the location of color bar's title with respect to the color bar. 
                ///
                /// Note that the title's location used to be set by the now deprecated `titleside` attribute.
                public var side: Side?
            
                public init(text: String? = nil, font: Font? = nil, side: Side? = nil) {
                    self.text = text
                    self.font = font
                    self.side = side
                }
            }
            public var title: Title?
        
            /// - traces/parcoords/attributes/line/colorbar/_deprecated
            public struct Deprecated: Encodable {
                /// Deprecated in favor of color bar's `title.text`. 
                ///
                /// Note that value of color bar's `title` is no longer a simple *string* but a set of
                /// sub-attributes.
                public var title: String?
            
                /// Deprecated in favor of color bar's `title.font`.
                /// - traces/parcoords/attributes/line/colorbar/_deprecated/titlefont
                public struct TitleFont: Encodable {
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
                
                    public var size: Double?
                
                    public var color: Color?
                
                    public init(family: String? = nil, size: Double? = nil, color: Color? = nil) {
                        self.family = family
                        self.size = size
                        self.color = color
                    }
                }
                /// Deprecated in favor of color bar's `title.font`.
                public var titleFont: TitleFont?
            
                /// Deprecated in favor of color bar's `title.side`.
                /// - layout/layoutAttributes/coloraxis/colorbar/_deprecated/titleside
                /// - traces/scatter/attributes/marker/colorbar/_deprecated/titleside
                /// - traces/bar/attributes/marker/colorbar/_deprecated/titleside
                /// - traces/heatmap/attributes/colorbar/_deprecated/titleside
                /// - traces/histogram/attributes/marker/colorbar/_deprecated/titleside
                /// - traces/histogram2d/attributes/colorbar/_deprecated/titleside
                /// - traces/histogram2dcontour/attributes/colorbar/_deprecated/titleside
                /// - traces/contour/attributes/colorbar/_deprecated/titleside
                /// - traces/scatterternary/attributes/marker/colorbar/_deprecated/titleside
                /// - traces/funnel/attributes/marker/colorbar/_deprecated/titleside
                /// - traces/sunburst/attributes/marker/colorbar/_deprecated/titleside
                /// - traces/treemap/attributes/marker/colorbar/_deprecated/titleside
                /// - traces/scatter3d/attributes/line/colorbar/_deprecated/titleside
                /// - traces/scatter3d/attributes/marker/colorbar/_deprecated/titleside
                /// - traces/surface/attributes/colorbar/_deprecated/titleside
                /// - traces/isosurface/attributes/colorbar/_deprecated/titleside
                /// - traces/volume/attributes/colorbar/_deprecated/titleside
                /// - traces/mesh3d/attributes/colorbar/_deprecated/titleside
                /// - traces/cone/attributes/colorbar/_deprecated/titleside
                /// - traces/streamtube/attributes/colorbar/_deprecated/titleside
                /// - traces/scattergeo/attributes/marker/colorbar/_deprecated/titleside
                /// - traces/choropleth/attributes/colorbar/_deprecated/titleside
                /// - traces/scattergl/attributes/marker/colorbar/_deprecated/titleside
                /// - traces/splom/attributes/marker/colorbar/_deprecated/titleside
                /// - traces/heatmapgl/attributes/colorbar/_deprecated/titleside
                /// - traces/parcoords/attributes/line/colorbar/_deprecated/titleside
                public enum TitleSide: String, Encodable {
                    case right
                    case top
                    case bottom
                }
                /// Deprecated in favor of color bar's `title.side`.
                public var titleSide: TitleSide?
            
                public init(title: String? = nil, titleFont: TitleFont? = nil, titleSide: TitleSide? = nil) {
                    self.title = title
                    self.titleFont = titleFont
                    self.titleSide = titleSide
                }
            }
            public var deprecated: Deprecated?
        
            /// Sets the source reference on plot.ly for  tickvals .
            public var tickValuesSource: String?
        
            /// Sets the source reference on plot.ly for  ticktext .
            public var tickTextSource: String?
        
            public init(thicknessMode: ThicknessMode? = nil, thickness: Double? = nil, lengthMode: LengthMode? = nil, length: Double? = nil, x: Double? = nil, xAnchor: XAnchor? = nil, xPadding: Double? = nil, y: Double? = nil, yAnchor: YAnchor? = nil, yPading: Double? = nil, outLineColor: Color? = nil, outLineWidth: Double? = nil, borderColor: Color? = nil, borderWidth: Double? = nil, backgroundColor: Color? = nil, tickMode: TickMode? = nil, numTicks: Int? = nil, tick0: Anything? = nil, dTick: Anything? = nil, tickValues: [Double]? = nil, tickText: [Double]? = nil, ticks: Ticks? = nil, tickLength: Double? = nil, tickWidth: Double? = nil, tickColor: Color? = nil, showTickLabels: Bool? = nil, tickFont: TickFont? = nil, tickAngle: Angle? = nil, tickFormat: String? = nil, tickFormatStops: TickFormatStops? = nil, tickPrefix: String? = nil, showTickPrefix: ShowTickPrefix? = nil, tickSuffix: String? = nil, showTickSuffix: ShowTickSuffix? = nil, separatethousands: Bool? = nil, exponentFormat: ExponentFormat? = nil, showExponent: ShowExponent? = nil, title: Title? = nil, deprecated: Deprecated? = nil, tickValuesSource: String? = nil, tickTextSource: String? = nil) {
                self.thicknessMode = thicknessMode
                self.thickness = thickness
                self.lengthMode = lengthMode
                self.length = length
                self.x = x
                self.xAnchor = xAnchor
                self.xPadding = xPadding
                self.y = y
                self.yAnchor = yAnchor
                self.yPading = yPading
                self.outLineColor = outLineColor
                self.outLineWidth = outLineWidth
                self.borderColor = borderColor
                self.borderWidth = borderWidth
                self.backgroundColor = backgroundColor
                self.tickMode = tickMode
                self.numTicks = numTicks
                self.tick0 = tick0
                self.dTick = dTick
                self.tickValues = tickValues
                self.tickText = tickText
                self.ticks = ticks
                self.tickLength = tickLength
                self.tickWidth = tickWidth
                self.tickColor = tickColor
                self.showTickLabels = showTickLabels
                self.tickFont = tickFont
                self.tickAngle = tickAngle
                self.tickFormat = tickFormat
                self.tickFormatStops = tickFormatStops
                self.tickPrefix = tickPrefix
                self.showTickPrefix = showTickPrefix
                self.tickSuffix = tickSuffix
                self.showTickSuffix = showTickSuffix
                self.separatethousands = separatethousands
                self.exponentFormat = exponentFormat
                self.showExponent = showExponent
                self.title = title
                self.deprecated = deprecated
                self.tickValuesSource = tickValuesSource
                self.tickTextSource = tickTextSource
            }
        }
        public var colorBar: ColorBar?
    
        /// Sets a reference to a shared color axis. 
        ///
        /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
        /// for these shared color axes are set in the layout, under `layout.coloraxis`,
        /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
        public var colorAxis: SubPlotID?
    
        /// Sets the source reference on plot.ly for  color .
        public var colorSource: String?
    
        public init(color: Color? = nil, cAuto: Bool? = nil, cMin: Double? = nil, cMax: Double? = nil, cMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: ColorBar? = nil, colorAxis: SubPlotID? = nil, colorSource: String? = nil) {
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

    /// Sets the source reference on plot.ly for  ids .
    public var idsSource: String?

    /// Sets the source reference on plot.ly for  customdata .
    public var customDataSource: String?

    /// Sets the source reference on plot.ly for  meta .
    public var metaSource: String?

    public init(visible: Visible? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, stream: Stream? = nil, transforms: Transforms? = nil, uiRevision: Anything? = nil, domain: Domain? = nil, labelAngle: Angle? = nil, labelSide: LabelSide? = nil, labelFont: LabelFont? = nil, tickFont: TickFont? = nil, rangeFont: RangeFont? = nil, dimensions: Dimensions? = nil, line: Line? = nil, idsSource: String? = nil, customDataSource: String? = nil, metaSource: String? = nil) {
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