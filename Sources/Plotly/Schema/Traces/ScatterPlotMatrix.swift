/// Splom traces generate scatter plot matrix visualizations. 
///
/// Each splom `dimensions` items correspond to a generated axis. Values for each of those
/// dimensions are set in `dimensions[i].values`. Splom traces support all `scattergl` marker style
/// attributes. Specify `layout.grid` attributes and/or layout x-axis and y-axis attributes for more
/// control over the axis positioning and style. 
public struct ScatterPlotMatrix: Trace {
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#type) |
    /// [Python](https://plot.ly/python/reference/#type) |
    /// [R](https://plot.ly/r/reference/#type)
    public let type: String = "splom"

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
    /// [JavaScript](https://plot.ly/javascript/reference/#splom-visible) |
    /// [Python](https://plot.ly/python/reference/#splom-visible) |
    /// [R](https://plot.ly/r/reference/#splom-visible)
    public var visible: Visible0?

    /// Determines whether or not an item corresponding to this trace is shown in the legend.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#splom-showlegend) |
    /// [Python](https://plot.ly/python/reference/#splom-showlegend) |
    /// [R](https://plot.ly/r/reference/#splom-showlegend)
    public var showLegend: Bool?

    /// Sets the legend group for this trace. 
    ///
    /// Traces part of the same legend group hide/show at the same time when toggling legend items.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#splom-legendgroup) |
    /// [Python](https://plot.ly/python/reference/#splom-legendgroup) |
    /// [R](https://plot.ly/r/reference/#splom-legendgroup)
    public var legendGroup: String?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#splom-name) |
    /// [Python](https://plot.ly/python/reference/#splom-name) |
    /// [R](https://plot.ly/r/reference/#splom-name)
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#splom-uid) |
    /// [Python](https://plot.ly/python/reference/#splom-uid) |
    /// [R](https://plot.ly/r/reference/#splom-uid)
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#splom-ids) |
    /// [Python](https://plot.ly/python/reference/#splom-ids) |
    /// [R](https://plot.ly/r/reference/#splom-ids)
    public var ids: [Double]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#splom-customdata) |
    /// [Python](https://plot.ly/python/reference/#splom-customdata) |
    /// [R](https://plot.ly/r/reference/#splom-customdata)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#splom-meta) |
    /// [Python](https://plot.ly/python/reference/#splom-meta) |
    /// [R](https://plot.ly/r/reference/#splom-meta)
    public var meta: Anything?

    /// Array containing integer indices of selected points. 
    ///
    /// Has an effect only for traces that support selections. Note that an empty array means an empty
    /// selection where the `unselected` are turned on for all points, whereas, any other non-array
    /// values means no selection all where the `selected` and `unselected` styles have no effect.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#splom-selectedpoints) |
    /// [Python](https://plot.ly/python/reference/#splom-selectedpoints) |
    /// [R](https://plot.ly/r/reference/#splom-selectedpoints)
    public var selectedPoints: Anything?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#splom-hoverinfo) |
    /// [Python](https://plot.ly/python/reference/#splom-hoverinfo) |
    /// [R](https://plot.ly/r/reference/#splom-hoverinfo)
    public var hoverInfo: HoverInfo0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#splom-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#splom-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#splom-hoverlabel)
    public var hoverLabel: HoverLabel0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#splom-stream) |
    /// [Python](https://plot.ly/python/reference/#splom-stream) |
    /// [R](https://plot.ly/r/reference/#splom-stream)
    public var stream: Stream0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#splom-transforms) |
    /// [Python](https://plot.ly/python/reference/#splom-transforms) |
    /// [R](https://plot.ly/r/reference/#splom-transforms)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#splom-uirevision) |
    /// [Python](https://plot.ly/python/reference/#splom-uirevision) |
    /// [R](https://plot.ly/r/reference/#splom-uirevision)
    public var uiRevision: Anything?

    ///
    /// # Used By
    /// `ScatterPlotMatrix.dimensions` |
    public struct Dimensions: Encodable {
        ///
        /// # Used By
        /// `ScatterPlotMatrix.Dimensions.items` |
        public struct Items: Encodable {
            ///
            /// # Used By
            /// `ScatterPlotMatrix.Dimensions.Items.dimension` |
            public struct Dimension: Encodable {
                /// Determines whether or not this dimension is shown on the graph. 
                ///
                /// Note that even visible false dimension contribute to the default grid generate by this splom
                /// trace.
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#splom-dimensions-items-dimension-visible) |
                /// [Python](https://plot.ly/python/reference/#splom-dimensions-items-dimension-visible) |
                /// [R](https://plot.ly/r/reference/#splom-dimensions-items-dimension-visible)
                public var visible: Bool?
            
                /// Sets the label corresponding to this splom dimension.
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#splom-dimensions-items-dimension-label) |
                /// [Python](https://plot.ly/python/reference/#splom-dimensions-items-dimension-label) |
                /// [R](https://plot.ly/r/reference/#splom-dimensions-items-dimension-label)
                public var label: String?
            
                /// Sets the dimension values to be plotted.
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#splom-dimensions-items-dimension-values) |
                /// [Python](https://plot.ly/python/reference/#splom-dimensions-items-dimension-values) |
                /// [R](https://plot.ly/r/reference/#splom-dimensions-items-dimension-values)
                public var values: [Double]?
            
                ///
                /// # Used By
                /// `ScatterPlotMatrix.Dimensions.Items.Dimension.axis` |
                public struct Axis: Encodable {
                    /// Sets the axis type for this dimension's generated x and y axes. 
                    ///
                    /// Note that the axis `type` values set in layout take precedence over this attribute.
                    ///
                    /// # Used By
                    /// `ScatterPlotMatrix.Dimensions.Items.Dimension.Axis.type` |
                    public enum Rule: String, Encodable {
                        case linear
                        case log
                        case date
                        case category
                    }
                    /// Sets the axis type for this dimension's generated x and y axes. 
                    ///
                    /// Note that the axis `type` values set in layout take precedence over this attribute.
                    ///
                    /// # Plotly Reference
                    /// [JavaScript](https://plot.ly/javascript/reference/#splom-dimensions-items-dimension-axis-type) |
                    /// [Python](https://plot.ly/python/reference/#splom-dimensions-items-dimension-axis-type) |
                    /// [R](https://plot.ly/r/reference/#splom-dimensions-items-dimension-axis-type)
                    public var type: Rule?
                
                    /// Determines whether or not the x & y axes generated by this dimension match. 
                    ///
                    /// Equivalent to setting the `matches` axis attribute in the layout with the correct axis id.
                    ///
                    /// # Plotly Reference
                    /// [JavaScript](https://plot.ly/javascript/reference/#splom-dimensions-items-dimension-axis-matches) |
                    /// [Python](https://plot.ly/python/reference/#splom-dimensions-items-dimension-axis-matches) |
                    /// [R](https://plot.ly/r/reference/#splom-dimensions-items-dimension-axis-matches)
                    public var matches: Bool?
                
                    public init(type: Rule? = nil, matches: Bool? = nil) {
                        self.type = type
                        self.matches = matches
                    }
                }
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#splom-dimensions-items-dimension-axis) |
                /// [Python](https://plot.ly/python/reference/#splom-dimensions-items-dimension-axis) |
                /// [R](https://plot.ly/r/reference/#splom-dimensions-items-dimension-axis)
                public var axis: Axis?
            
                /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. 
                ///
                /// You can modify these items in the output figure by making your own item with `templateitemname`
                /// matching this `name` alongside your modifications (including `visible: false` or `enabled:
                /// false` to hide it). Has no effect outside of a template.
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#splom-dimensions-items-dimension-name) |
                /// [Python](https://plot.ly/python/reference/#splom-dimensions-items-dimension-name) |
                /// [R](https://plot.ly/r/reference/#splom-dimensions-items-dimension-name)
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
                /// [JavaScript](https://plot.ly/javascript/reference/#splom-dimensions-items-dimension-templateitemname) |
                /// [Python](https://plot.ly/python/reference/#splom-dimensions-items-dimension-templateitemname) |
                /// [R](https://plot.ly/r/reference/#splom-dimensions-items-dimension-templateitemname)
                public var templateItemName: String?
            
                /// Sets the source reference on plot.ly for  values .
                ///
                /// # Plotly Reference
                /// [JavaScript](https://plot.ly/javascript/reference/#splom-dimensions-items-dimension-valuessrc) |
                /// [Python](https://plot.ly/python/reference/#splom-dimensions-items-dimension-valuessrc) |
                /// [R](https://plot.ly/r/reference/#splom-dimensions-items-dimension-valuessrc)
                public var valuesSource: String?
            
                /// Plotly compatible property encoding
                enum CodingKeys: String, CodingKey {
                    case visible
                    case label
                    case values
                    case axis
                    case name
                    case templateItemName = "templateitemname"
                    case valuesSource = "valuessrc"
                }
                
                public init(visible: Bool? = nil, label: String? = nil, values: [Double]? = nil, axis: Axis? = nil, name: String? = nil, templateItemName: String? = nil, valuesSource: String? = nil) {
                    self.visible = visible
                    self.label = label
                    self.values = values
                    self.axis = axis
                    self.name = name
                    self.templateItemName = templateItemName
                    self.valuesSource = valuesSource
                }
            }
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#splom-dimensions-items-dimension) |
            /// [Python](https://plot.ly/python/reference/#splom-dimensions-items-dimension) |
            /// [R](https://plot.ly/r/reference/#splom-dimensions-items-dimension)
            public var dimension: Dimension?
        
            public init(dimension: Dimension? = nil) {
                self.dimension = dimension
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#splom-dimensions-items) |
        /// [Python](https://plot.ly/python/reference/#splom-dimensions-items) |
        /// [R](https://plot.ly/r/reference/#splom-dimensions-items)
        public var items: Items?
    
        public init(items: Items? = nil) {
            self.items = items
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#splom-dimensions) |
    /// [Python](https://plot.ly/python/reference/#splom-dimensions) |
    /// [R](https://plot.ly/r/reference/#splom-dimensions)
    public var dimensions: Dimensions?

    /// Sets text elements associated with each (x,y) pair to appear on hover. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to the this trace's (x,y) coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#splom-text) |
    /// [Python](https://plot.ly/python/reference/#splom-text) |
    /// [R](https://plot.ly/r/reference/#splom-text)
    public var text: String?

    /// Same as `text`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#splom-hovertext) |
    /// [Python](https://plot.ly/python/reference/#splom-hovertext) |
    /// [R](https://plot.ly/r/reference/#splom-hovertext)
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#splom-hovertemplate) |
    /// [Python](https://plot.ly/python/reference/#splom-hovertemplate) |
    /// [R](https://plot.ly/r/reference/#splom-hovertemplate)
    public var hoverTemplate: String?

    ///
    /// # Used By
    /// `ScatterPlotMatrix.marker` |
    public struct Marker: Encodable {
        /// Sets themarkercolor. 
        ///
        /// It accepts either a specific color or an array of numbers that are mapped to the colorscale
        /// relative to the max and min values of the array or relative to `marker.cmin` and `marker.cmax`
        /// if set.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#splom-marker-color) |
        /// [Python](https://plot.ly/python/reference/#splom-marker-color) |
        /// [R](https://plot.ly/r/reference/#splom-marker-color)
        public var color: Color?
    
        /// Determines whether or not the color domain is computed with respect to the input data (here in `marker.color`) or the bounds set in `marker.cmin` and `marker.cmax`  Has an effect only if in `marker.color`is set to a numerical array. 
        ///
        /// Defaults to `false` when `marker.cmin` and `marker.cmax` are set by the user.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#splom-marker-cauto) |
        /// [Python](https://plot.ly/python/reference/#splom-marker-cauto) |
        /// [R](https://plot.ly/r/reference/#splom-marker-cauto)
        public var cAuto: Bool?
    
        /// Sets the lower bound of the color domain. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
        /// units as in `marker.color` and if set, `marker.cmax` must be set as well.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#splom-marker-cmin) |
        /// [Python](https://plot.ly/python/reference/#splom-marker-cmin) |
        /// [R](https://plot.ly/r/reference/#splom-marker-cmin)
        public var cMin: Double?
    
        /// Sets the upper bound of the color domain. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
        /// units as in `marker.color` and if set, `marker.cmin` must be set as well.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#splom-marker-cmax) |
        /// [Python](https://plot.ly/python/reference/#splom-marker-cmax) |
        /// [R](https://plot.ly/r/reference/#splom-marker-cmax)
        public var cMax: Double?
    
        /// Sets the mid-point of the color domain by scaling `marker.cmin` and/or `marker.cmax` to be equidistant to this point. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
        /// units as in `marker.color`. Has no effect when `marker.cauto` is `false`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#splom-marker-cmid) |
        /// [Python](https://plot.ly/python/reference/#splom-marker-cmid) |
        /// [R](https://plot.ly/r/reference/#splom-marker-cmid)
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
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#splom-marker-colorscale) |
        /// [Python](https://plot.ly/python/reference/#splom-marker-colorscale) |
        /// [R](https://plot.ly/r/reference/#splom-marker-colorscale)
        public var colorScale: ColorScale?
    
        /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `marker.colorscale`. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. In case `colorscale` is
        /// unspecified or `autocolorscale` is true, the default palette will be chosen according to whether
        /// numbers in the `color` array are all positive, all negative or mixed.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#splom-marker-autocolorscale) |
        /// [Python](https://plot.ly/python/reference/#splom-marker-autocolorscale) |
        /// [R](https://plot.ly/r/reference/#splom-marker-autocolorscale)
        public var autoColorScale: Bool?
    
        /// Reverses the color mapping if true. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. If true, `marker.cmin` will
        /// correspond to the last color in the array and `marker.cmax` will correspond to the first color.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#splom-marker-reversescale) |
        /// [Python](https://plot.ly/python/reference/#splom-marker-reversescale) |
        /// [R](https://plot.ly/r/reference/#splom-marker-reversescale)
        public var reverseScale: Bool?
    
        /// Determines whether or not a colorbar is displayed for this trace. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#splom-marker-showscale) |
        /// [Python](https://plot.ly/python/reference/#splom-marker-showscale) |
        /// [R](https://plot.ly/r/reference/#splom-marker-showscale)
        public var showScale: Bool?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#splom-marker-colorbar) |
        /// [Python](https://plot.ly/python/reference/#splom-marker-colorbar) |
        /// [R](https://plot.ly/r/reference/#splom-marker-colorbar)
        public var colorBar: ColorBar0?
    
        /// Sets a reference to a shared color axis. 
        ///
        /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
        /// for these shared color axes are set in the layout, under `layout.coloraxis`,
        /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#splom-marker-coloraxis) |
        /// [Python](https://plot.ly/python/reference/#splom-marker-coloraxis) |
        /// [R](https://plot.ly/r/reference/#splom-marker-coloraxis)
        public var colorAxis: SubPlotID?
    
        /// Sets the marker symbol type. 
        ///
        /// Adding 100 is equivalent to appending *-open* to a symbol name. Adding 200 is equivalent to
        /// appending *-dot* to a symbol name. Adding 300 is equivalent to appending *-open-dot* or
        /// *dot-open* to a symbol name.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#splom-marker-symbol) |
        /// [Python](https://plot.ly/python/reference/#splom-marker-symbol) |
        /// [R](https://plot.ly/r/reference/#splom-marker-symbol)
        public var symbol: Symbol0?
    
        /// Sets the marker size (in px).
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#splom-marker-size) |
        /// [Python](https://plot.ly/python/reference/#splom-marker-size) |
        /// [R](https://plot.ly/r/reference/#splom-marker-size)
        public var size: Double?
    
        /// Has an effect only if `marker.size` is set to a numerical array. 
        ///
        /// Sets the scale factor used to determine the rendered size of marker points. Use with `sizemin`
        /// and `sizemode`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#splom-marker-sizeref) |
        /// [Python](https://plot.ly/python/reference/#splom-marker-sizeref) |
        /// [R](https://plot.ly/r/reference/#splom-marker-sizeref)
        public var sizeReference: Double?
    
        /// Has an effect only if `marker.size` is set to a numerical array. 
        ///
        /// Sets the minimum size (in px) of the rendered marker points.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#splom-marker-sizemin) |
        /// [Python](https://plot.ly/python/reference/#splom-marker-sizemin) |
        /// [R](https://plot.ly/r/reference/#splom-marker-sizemin)
        public var sizeMin: Double?
    
        /// Has an effect only if `marker.size` is set to a numerical array. 
        ///
        /// Sets the rule for which the data in `size` is converted to pixels.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#splom-marker-sizemode) |
        /// [Python](https://plot.ly/python/reference/#splom-marker-sizemode) |
        /// [R](https://plot.ly/r/reference/#splom-marker-sizemode)
        public var sizeMode: SizeMode0?
    
        /// Sets the marker opacity.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#splom-marker-opacity) |
        /// [Python](https://plot.ly/python/reference/#splom-marker-opacity) |
        /// [R](https://plot.ly/r/reference/#splom-marker-opacity)
        public var opacity: Double?
    
        ///
        /// # Used By
        /// `ScatterPlotMatrix.Marker.line` |
        public struct Line: Encodable {
            /// Sets themarker.linecolor. 
            ///
            /// It accepts either a specific color or an array of numbers that are mapped to the colorscale
            /// relative to the max and min values of the array or relative to `marker.line.cmin` and
            /// `marker.line.cmax` if set.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#splom-marker-line-color) |
            /// [Python](https://plot.ly/python/reference/#splom-marker-line-color) |
            /// [R](https://plot.ly/r/reference/#splom-marker-line-color)
            public var color: Color?
        
            /// Determines whether or not the color domain is computed with respect to the input data (here in `marker.line.color`) or the bounds set in `marker.line.cmin` and `marker.line.cmax`  Has an effect only if in `marker.line.color`is set to a numerical array. 
            ///
            /// Defaults to `false` when `marker.line.cmin` and `marker.line.cmax` are set by the user.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#splom-marker-line-cauto) |
            /// [Python](https://plot.ly/python/reference/#splom-marker-line-cauto) |
            /// [R](https://plot.ly/r/reference/#splom-marker-line-cauto)
            public var cAuto: Bool?
        
            /// Sets the lower bound of the color domain. 
            ///
            /// Has an effect only if in `marker.line.color`is set to a numerical array. Value should have the
            /// same units as in `marker.line.color` and if set, `marker.line.cmax` must be set as well.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#splom-marker-line-cmin) |
            /// [Python](https://plot.ly/python/reference/#splom-marker-line-cmin) |
            /// [R](https://plot.ly/r/reference/#splom-marker-line-cmin)
            public var cMin: Double?
        
            /// Sets the upper bound of the color domain. 
            ///
            /// Has an effect only if in `marker.line.color`is set to a numerical array. Value should have the
            /// same units as in `marker.line.color` and if set, `marker.line.cmin` must be set as well.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#splom-marker-line-cmax) |
            /// [Python](https://plot.ly/python/reference/#splom-marker-line-cmax) |
            /// [R](https://plot.ly/r/reference/#splom-marker-line-cmax)
            public var cMax: Double?
        
            /// Sets the mid-point of the color domain by scaling `marker.line.cmin` and/or `marker.line.cmax` to be equidistant to this point. 
            ///
            /// Has an effect only if in `marker.line.color`is set to a numerical array. Value should have the
            /// same units as in `marker.line.color`. Has no effect when `marker.line.cauto` is `false`.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#splom-marker-line-cmid) |
            /// [Python](https://plot.ly/python/reference/#splom-marker-line-cmid) |
            /// [R](https://plot.ly/r/reference/#splom-marker-line-cmid)
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
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#splom-marker-line-colorscale) |
            /// [Python](https://plot.ly/python/reference/#splom-marker-line-colorscale) |
            /// [R](https://plot.ly/r/reference/#splom-marker-line-colorscale)
            public var colorScale: ColorScale?
        
            /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `marker.line.colorscale`. 
            ///
            /// Has an effect only if in `marker.line.color`is set to a numerical array. In case `colorscale` is
            /// unspecified or `autocolorscale` is true, the default palette will be chosen according to whether
            /// numbers in the `color` array are all positive, all negative or mixed.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#splom-marker-line-autocolorscale) |
            /// [Python](https://plot.ly/python/reference/#splom-marker-line-autocolorscale) |
            /// [R](https://plot.ly/r/reference/#splom-marker-line-autocolorscale)
            public var autoColorScale: Bool?
        
            /// Reverses the color mapping if true. 
            ///
            /// Has an effect only if in `marker.line.color`is set to a numerical array. If true,
            /// `marker.line.cmin` will correspond to the last color in the array and `marker.line.cmax` will
            /// correspond to the first color.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#splom-marker-line-reversescale) |
            /// [Python](https://plot.ly/python/reference/#splom-marker-line-reversescale) |
            /// [R](https://plot.ly/r/reference/#splom-marker-line-reversescale)
            public var reverseScale: Bool?
        
            /// Sets a reference to a shared color axis. 
            ///
            /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
            /// for these shared color axes are set in the layout, under `layout.coloraxis`,
            /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#splom-marker-line-coloraxis) |
            /// [Python](https://plot.ly/python/reference/#splom-marker-line-coloraxis) |
            /// [R](https://plot.ly/r/reference/#splom-marker-line-coloraxis)
            public var colorAxis: SubPlotID?
        
            /// Sets the width (in px) of the lines bounding the marker points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#splom-marker-line-width) |
            /// [Python](https://plot.ly/python/reference/#splom-marker-line-width) |
            /// [R](https://plot.ly/r/reference/#splom-marker-line-width)
            public var width: Double?
        
            /// Sets the source reference on plot.ly for  color .
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#splom-marker-line-colorsrc) |
            /// [Python](https://plot.ly/python/reference/#splom-marker-line-colorsrc) |
            /// [R](https://plot.ly/r/reference/#splom-marker-line-colorsrc)
            public var colorSource: String?
        
            /// Sets the source reference on plot.ly for  width .
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#splom-marker-line-widthsrc) |
            /// [Python](https://plot.ly/python/reference/#splom-marker-line-widthsrc) |
            /// [R](https://plot.ly/r/reference/#splom-marker-line-widthsrc)
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
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#splom-marker-line) |
        /// [Python](https://plot.ly/python/reference/#splom-marker-line) |
        /// [R](https://plot.ly/r/reference/#splom-marker-line)
        public var line: Line?
    
        /// Sets the source reference on plot.ly for  color .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#splom-marker-colorsrc) |
        /// [Python](https://plot.ly/python/reference/#splom-marker-colorsrc) |
        /// [R](https://plot.ly/r/reference/#splom-marker-colorsrc)
        public var colorSource: String?
    
        /// Sets the source reference on plot.ly for  symbol .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#splom-marker-symbolsrc) |
        /// [Python](https://plot.ly/python/reference/#splom-marker-symbolsrc) |
        /// [R](https://plot.ly/r/reference/#splom-marker-symbolsrc)
        public var symbolSource: String?
    
        /// Sets the source reference on plot.ly for  size .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#splom-marker-sizesrc) |
        /// [Python](https://plot.ly/python/reference/#splom-marker-sizesrc) |
        /// [R](https://plot.ly/r/reference/#splom-marker-sizesrc)
        public var sizeSource: String?
    
        /// Sets the source reference on plot.ly for  opacity .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#splom-marker-opacitysrc) |
        /// [Python](https://plot.ly/python/reference/#splom-marker-opacitysrc) |
        /// [R](https://plot.ly/r/reference/#splom-marker-opacitysrc)
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#splom-marker) |
    /// [Python](https://plot.ly/python/reference/#splom-marker) |
    /// [R](https://plot.ly/r/reference/#splom-marker)
    public var marker: Marker?

    /// Sets the list of x axes corresponding to dimensions of this splom trace. 
    ///
    /// By default, a splom will match the first N xaxes where N is the number of input dimensions. Note
    /// that, in case where `diagonal.visible` is false and `showupperhalf` or `showlowerhalf` is false,
    /// this splom trace will generate one less x-axis and one less y-axis.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#splom-xaxes) |
    /// [Python](https://plot.ly/python/reference/#splom-xaxes) |
    /// [R](https://plot.ly/r/reference/#splom-xaxes)
    public var xAxes: InfoArray?

    /// Sets the list of y axes corresponding to dimensions of this splom trace. 
    ///
    /// By default, a splom will match the first N yaxes where N is the number of input dimensions. Note
    /// that, in case where `diagonal.visible` is false and `showupperhalf` or `showlowerhalf` is false,
    /// this splom trace will generate one less x-axis and one less y-axis.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#splom-yaxes) |
    /// [Python](https://plot.ly/python/reference/#splom-yaxes) |
    /// [R](https://plot.ly/r/reference/#splom-yaxes)
    public var yAxes: InfoArray?

    ///
    /// # Used By
    /// `ScatterPlotMatrix.diagonal` |
    public struct Diagonal: Encodable {
        /// Determines whether or not subplots on the diagonal are displayed.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#splom-diagonal-visible) |
        /// [Python](https://plot.ly/python/reference/#splom-diagonal-visible) |
        /// [R](https://plot.ly/r/reference/#splom-diagonal-visible)
        public var visible: Bool?
    
        public init(visible: Bool? = nil) {
            self.visible = visible
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#splom-diagonal) |
    /// [Python](https://plot.ly/python/reference/#splom-diagonal) |
    /// [R](https://plot.ly/r/reference/#splom-diagonal)
    public var diagonal: Diagonal?

    /// Determines whether or not subplots on the upper half from the diagonal are displayed.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#splom-showupperhalf) |
    /// [Python](https://plot.ly/python/reference/#splom-showupperhalf) |
    /// [R](https://plot.ly/r/reference/#splom-showupperhalf)
    public var showUpperHalf: Bool?

    /// Determines whether or not subplots on the lower half from the diagonal are displayed.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#splom-showlowerhalf) |
    /// [Python](https://plot.ly/python/reference/#splom-showlowerhalf) |
    /// [R](https://plot.ly/r/reference/#splom-showlowerhalf)
    public var showLowerHalf: Bool?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#splom-selected) |
    /// [Python](https://plot.ly/python/reference/#splom-selected) |
    /// [R](https://plot.ly/r/reference/#splom-selected)
    public var selected: Selected0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#splom-unselected) |
    /// [Python](https://plot.ly/python/reference/#splom-unselected) |
    /// [R](https://plot.ly/r/reference/#splom-unselected)
    public var unselected: Selected0?

    /// Sets the opacity of the trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#splom-opacity) |
    /// [Python](https://plot.ly/python/reference/#splom-opacity) |
    /// [R](https://plot.ly/r/reference/#splom-opacity)
    public var opacity: Double?

    /// Sets the source reference on plot.ly for  ids .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#splom-idssrc) |
    /// [Python](https://plot.ly/python/reference/#splom-idssrc) |
    /// [R](https://plot.ly/r/reference/#splom-idssrc)
    public var idsSource: String?

    /// Sets the source reference on plot.ly for  customdata .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#splom-customdatasrc) |
    /// [Python](https://plot.ly/python/reference/#splom-customdatasrc) |
    /// [R](https://plot.ly/r/reference/#splom-customdatasrc)
    public var customDataSource: String?

    /// Sets the source reference on plot.ly for  meta .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#splom-metasrc) |
    /// [Python](https://plot.ly/python/reference/#splom-metasrc) |
    /// [R](https://plot.ly/r/reference/#splom-metasrc)
    public var metaSource: String?

    /// Sets the source reference on plot.ly for  hoverinfo .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#splom-hoverinfosrc) |
    /// [Python](https://plot.ly/python/reference/#splom-hoverinfosrc) |
    /// [R](https://plot.ly/r/reference/#splom-hoverinfosrc)
    public var hoverInfoSource: String?

    /// Sets the source reference on plot.ly for  text .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#splom-textsrc) |
    /// [Python](https://plot.ly/python/reference/#splom-textsrc) |
    /// [R](https://plot.ly/r/reference/#splom-textsrc)
    public var textSource: String?

    /// Sets the source reference on plot.ly for  hovertext .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#splom-hovertextsrc) |
    /// [Python](https://plot.ly/python/reference/#splom-hovertextsrc) |
    /// [R](https://plot.ly/r/reference/#splom-hovertextsrc)
    public var hoverTextSource: String?

    /// Sets the source reference on plot.ly for  hovertemplate .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#splom-hovertemplatesrc) |
    /// [Python](https://plot.ly/python/reference/#splom-hovertemplatesrc) |
    /// [R](https://plot.ly/r/reference/#splom-hovertemplatesrc)
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
    
    public init(visible: Visible0? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, selectedPoints: Anything? = nil, hoverInfo: HoverInfo0? = nil, hoverLabel: HoverLabel0? = nil, stream: Stream0? = nil, transforms: Transforms0? = nil, uiRevision: Anything? = nil, dimensions: Dimensions? = nil, text: String? = nil, hoverText: String? = nil, hoverTemplate: String? = nil, marker: Marker? = nil, xAxes: InfoArray? = nil, yAxes: InfoArray? = nil, diagonal: Diagonal? = nil, showUpperHalf: Bool? = nil, showLowerHalf: Bool? = nil, selected: Selected0? = nil, unselected: Selected0? = nil, opacity: Double? = nil, idsSource: String? = nil, customDataSource: String? = nil, metaSource: String? = nil, hoverInfoSource: String? = nil, textSource: String? = nil, hoverTextSource: String? = nil, hoverTemplateSource: String? = nil) {
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