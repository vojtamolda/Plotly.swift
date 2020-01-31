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
    public var visible: Shared.Visible?

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
    public var ids: [String]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#splom-customdata) |
    /// [Python](https://plot.ly/python/reference/#splom-customdata) |
    /// [R](https://plot.ly/r/reference/#splom-customdata)
    public var customData: [String]?

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
    public var meta: ArrayOrAnything?

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
    public var hoverInfo: Shared.HoverInfo?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#splom-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#splom-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#splom-hoverlabel)
    public var hoverLabel: Shared.HoverLabel?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#splom-stream) |
    /// [Python](https://plot.ly/python/reference/#splom-stream) |
    /// [R](https://plot.ly/r/reference/#splom-stream)
    public var stream: Shared.Stream?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#splom-transforms) |
    /// [Python](https://plot.ly/python/reference/#splom-transforms) |
    /// [R](https://plot.ly/r/reference/#splom-transforms)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#splom-uirevision) |
    /// [Python](https://plot.ly/python/reference/#splom-uirevision) |
    /// [R](https://plot.ly/r/reference/#splom-uirevision)
    public var uiRevision: Anything?

    /// # Used By
    /// `ScatterPlotMatrix.dimensions` |
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
    
        /// # Used By
        /// `ScatterPlotMatrix.Dimension.axis` |
        public struct Axis: Encodable {
            /// Sets the axis type for this dimension's generated x and y axes. 
            ///
            /// Note that the axis `type` values set in layout take precedence over this attribute.
            ///
            /// # Used By
            /// `ScatterPlotMatrix.Dimension.Axis.type` |
            public enum `Type`: String, Encodable {
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
            public var type: `Type`?
        
            /// Determines whether or not the x & y axes generated by this dimension match. 
            ///
            /// Equivalent to setting the `matches` axis attribute in the layout with the correct axis id.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#splom-dimensions-items-dimension-axis-matches) |
            /// [Python](https://plot.ly/python/reference/#splom-dimensions-items-dimension-axis-matches) |
            /// [R](https://plot.ly/r/reference/#splom-dimensions-items-dimension-axis-matches)
            public var matches: Bool?
        
            public init(type: `Type`? = nil, matches: Bool? = nil) {
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
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case visible
            case label
            case values
            case axis
            case name
            case templateItemName = "templateitemname"
        }
        
        public init(visible: Bool? = nil, label: String? = nil, values: [Double]? = nil, axis: Axis? = nil, name: String? = nil, templateItemName: String? = nil) {
            self.visible = visible
            self.label = label
            self.values = values
            self.axis = axis
            self.name = name
            self.templateItemName = templateItemName
        }
        
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#splom-dimensions) |
    /// [Python](https://plot.ly/python/reference/#splom-dimensions) |
    /// [R](https://plot.ly/r/reference/#splom-dimensions)
    public var dimensions: [Dimension]?

    /// Sets text elements associated with each (x,y) pair to appear on hover. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to the this trace's (x,y) coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#splom-text) |
    /// [Python](https://plot.ly/python/reference/#splom-text) |
    /// [R](https://plot.ly/r/reference/#splom-text)
    public var text: ArrayOrString?

    /// Same as `text`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#splom-hovertext) |
    /// [Python](https://plot.ly/python/reference/#splom-hovertext) |
    /// [R](https://plot.ly/r/reference/#splom-hovertext)
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#splom-hovertemplate) |
    /// [Python](https://plot.ly/python/reference/#splom-hovertemplate) |
    /// [R](https://plot.ly/r/reference/#splom-hovertemplate)
    public var hoverTemplate: ArrayOrString?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#splom-marker) |
    /// [Python](https://plot.ly/python/reference/#splom-marker) |
    /// [R](https://plot.ly/r/reference/#splom-marker)
    public var marker: Shared.SymbolicMarker?

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

    /// # Used By
    /// `ScatterPlotMatrix.selected` |
    public struct Selected: Encodable {
        /// # Used By
        /// `ScatterPlotMatrix.Selected.marker` |
        public struct Marker: Encodable {
            /// Sets the marker opacity of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#splom-selected-marker-opacity) |
            /// [Python](https://plot.ly/python/reference/#splom-selected-marker-opacity) |
            /// [R](https://plot.ly/r/reference/#splom-selected-marker-opacity)
            public var opacity: Double?
        
            /// Sets the marker color of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#splom-selected-marker-color) |
            /// [Python](https://plot.ly/python/reference/#splom-selected-marker-color) |
            /// [R](https://plot.ly/r/reference/#splom-selected-marker-color)
            public var color: Color?
        
            /// Sets the marker size of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#splom-selected-marker-size) |
            /// [Python](https://plot.ly/python/reference/#splom-selected-marker-size) |
            /// [R](https://plot.ly/r/reference/#splom-selected-marker-size)
            public var size: Double?
        
            public init(opacity: Double? = nil, color: Color? = nil, size: Double? = nil) {
                self.opacity = opacity
                self.color = color
                self.size = size
            }
            
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#splom-selected-marker) |
        /// [Python](https://plot.ly/python/reference/#splom-selected-marker) |
        /// [R](https://plot.ly/r/reference/#splom-selected-marker)
        public var marker: Marker?
    
        public init(marker: Marker? = nil) {
            self.marker = marker
        }
        
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#splom-selected) |
    /// [Python](https://plot.ly/python/reference/#splom-selected) |
    /// [R](https://plot.ly/r/reference/#splom-selected)
    public var selected: Selected?

    /// # Used By
    /// `ScatterPlotMatrix.unselected` |
    public struct Unselected: Encodable {
        /// # Used By
        /// `ScatterPlotMatrix.Unselected.marker` |
        public struct Marker: Encodable {
            /// Sets the marker opacity of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#splom-unselected-marker-opacity) |
            /// [Python](https://plot.ly/python/reference/#splom-unselected-marker-opacity) |
            /// [R](https://plot.ly/r/reference/#splom-unselected-marker-opacity)
            public var opacity: Double?
        
            /// Sets the marker color of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#splom-unselected-marker-color) |
            /// [Python](https://plot.ly/python/reference/#splom-unselected-marker-color) |
            /// [R](https://plot.ly/r/reference/#splom-unselected-marker-color)
            public var color: Color?
        
            /// Sets the marker size of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#splom-unselected-marker-size) |
            /// [Python](https://plot.ly/python/reference/#splom-unselected-marker-size) |
            /// [R](https://plot.ly/r/reference/#splom-unselected-marker-size)
            public var size: Double?
        
            public init(opacity: Double? = nil, color: Color? = nil, size: Double? = nil) {
                self.opacity = opacity
                self.color = color
                self.size = size
            }
            
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#splom-unselected-marker) |
        /// [Python](https://plot.ly/python/reference/#splom-unselected-marker) |
        /// [R](https://plot.ly/r/reference/#splom-unselected-marker)
        public var marker: Marker?
    
        public init(marker: Marker? = nil) {
            self.marker = marker
        }
        
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#splom-unselected) |
    /// [Python](https://plot.ly/python/reference/#splom-unselected) |
    /// [R](https://plot.ly/r/reference/#splom-unselected)
    public var unselected: Unselected?

    /// Sets the opacity of the trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#splom-opacity) |
    /// [Python](https://plot.ly/python/reference/#splom-opacity) |
    /// [R](https://plot.ly/r/reference/#splom-opacity)
    public var opacity: Double?

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
    }
    
    public init(visible: Shared.Visible? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, name: String? = nil, uid: String? = nil, ids: [String]? = nil, customData: [String]? = nil, meta: ArrayOrAnything? = nil, selectedPoints: Anything? = nil, hoverInfo: Shared.HoverInfo? = nil, hoverLabel: Shared.HoverLabel? = nil, stream: Shared.Stream? = nil, transforms: [Shared.Transform]? = nil, uiRevision: Anything? = nil, dimensions: [Dimension]? = nil, text: ArrayOrString? = nil, hoverText: ArrayOrString? = nil, hoverTemplate: ArrayOrString? = nil, marker: Shared.SymbolicMarker? = nil, xAxes: InfoArray? = nil, yAxes: InfoArray? = nil, diagonal: Diagonal? = nil, showUpperHalf: Bool? = nil, showLowerHalf: Bool? = nil, selected: Selected? = nil, unselected: Unselected? = nil, opacity: Double? = nil) {
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
    }
    
}