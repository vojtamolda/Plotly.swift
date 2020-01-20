/// The sample data from which statistics are computed is set in `x` for vertically spanning histograms and in `y` for horizontally spanning histograms. 
///
/// Binning options are set `xbins` and `ybins` respectively if no aggregation data is provided.
public struct Histogram: Trace {
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#type) |
    /// [Python](https://plot.ly/python/reference/#type) |
    /// [R](https://plot.ly/r/reference/#type)
    public let type: String = "histogram"

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
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-visible) |
    /// [Python](https://plot.ly/python/reference/#histogram-visible) |
    /// [R](https://plot.ly/r/reference/#histogram-visible)
    public var visible: Shared.Visible?

    /// Determines whether or not an item corresponding to this trace is shown in the legend.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-showlegend) |
    /// [Python](https://plot.ly/python/reference/#histogram-showlegend) |
    /// [R](https://plot.ly/r/reference/#histogram-showlegend)
    public var showLegend: Bool?

    /// Sets the legend group for this trace. 
    ///
    /// Traces part of the same legend group hide/show at the same time when toggling legend items.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-legendgroup) |
    /// [Python](https://plot.ly/python/reference/#histogram-legendgroup) |
    /// [R](https://plot.ly/r/reference/#histogram-legendgroup)
    public var legendGroup: String?

    /// Sets the opacity of the trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-opacity) |
    /// [Python](https://plot.ly/python/reference/#histogram-opacity) |
    /// [R](https://plot.ly/r/reference/#histogram-opacity)
    public var opacity: Double?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-name) |
    /// [Python](https://plot.ly/python/reference/#histogram-name) |
    /// [R](https://plot.ly/r/reference/#histogram-name)
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-uid) |
    /// [Python](https://plot.ly/python/reference/#histogram-uid) |
    /// [R](https://plot.ly/r/reference/#histogram-uid)
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-ids) |
    /// [Python](https://plot.ly/python/reference/#histogram-ids) |
    /// [R](https://plot.ly/r/reference/#histogram-ids)
    public var ids: [Double]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-customdata) |
    /// [Python](https://plot.ly/python/reference/#histogram-customdata) |
    /// [R](https://plot.ly/r/reference/#histogram-customdata)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-meta) |
    /// [Python](https://plot.ly/python/reference/#histogram-meta) |
    /// [R](https://plot.ly/r/reference/#histogram-meta)
    public var meta: Anything?

    /// Array containing integer indices of selected points. 
    ///
    /// Has an effect only for traces that support selections. Note that an empty array means an empty
    /// selection where the `unselected` are turned on for all points, whereas, any other non-array
    /// values means no selection all where the `selected` and `unselected` styles have no effect.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-selectedpoints) |
    /// [Python](https://plot.ly/python/reference/#histogram-selectedpoints) |
    /// [R](https://plot.ly/r/reference/#histogram-selectedpoints)
    public var selectedPoints: Anything?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-hoverinfo) |
    /// [Python](https://plot.ly/python/reference/#histogram-hoverinfo) |
    /// [R](https://plot.ly/r/reference/#histogram-hoverinfo)
    public var hoverInfo: Shared.HoverInfo?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#histogram-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#histogram-hoverlabel)
    public var hoverLabel: Shared.HoverLabel?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-stream) |
    /// [Python](https://plot.ly/python/reference/#histogram-stream) |
    /// [R](https://plot.ly/r/reference/#histogram-stream)
    public var stream: Shared.Stream?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-transforms) |
    /// [Python](https://plot.ly/python/reference/#histogram-transforms) |
    /// [R](https://plot.ly/r/reference/#histogram-transforms)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-uirevision) |
    /// [Python](https://plot.ly/python/reference/#histogram-uirevision) |
    /// [R](https://plot.ly/r/reference/#histogram-uirevision)
    public var uiRevision: Anything?

    /// Sets the sample data to be binned on the x axis.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-x) |
    /// [Python](https://plot.ly/python/reference/#histogram-x) |
    /// [R](https://plot.ly/r/reference/#histogram-x)
    public var x: [Double]?

    /// Sets the sample data to be binned on the y axis.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-y) |
    /// [Python](https://plot.ly/python/reference/#histogram-y) |
    /// [R](https://plot.ly/r/reference/#histogram-y)
    public var y: [Double]?

    /// Sets hover text elements associated with each bar. 
    ///
    /// If a single string, the same string appears over all bars. If an array of string, the items are
    /// mapped in order to the this trace's coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-text) |
    /// [Python](https://plot.ly/python/reference/#histogram-text) |
    /// [R](https://plot.ly/r/reference/#histogram-text)
    public var text: ArrayOrString?

    /// Same as `text`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-hovertext) |
    /// [Python](https://plot.ly/python/reference/#histogram-hovertext) |
    /// [R](https://plot.ly/r/reference/#histogram-hovertext)
    public var hoverText: ArrayOrString?

    /// Sets the orientation of the bars. 
    ///
    /// With *v* (*h*), the value of the each bar spans along the vertical (horizontal).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-orientation) |
    /// [Python](https://plot.ly/python/reference/#histogram-orientation) |
    /// [R](https://plot.ly/r/reference/#histogram-orientation)
    public var orientation: Shared.Orientation?

    /// Specifies the binning function used for this histogram trace. 
    ///
    /// If *count*, the histogram values are computed by counting the number of values lying inside each
    /// bin. If *sum*, *avg*, *min*, *max*, the histogram values are computed using the sum, the
    /// average, the minimum or the maximum of the values lying inside each bin respectively.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-histfunc) |
    /// [Python](https://plot.ly/python/reference/#histogram-histfunc) |
    /// [R](https://plot.ly/r/reference/#histogram-histfunc)
    public var binningFunction: Shared.BinningFunction?

    /// Specifies the type of normalization used for this histogram trace. 
    ///
    /// If **, the span of each bar corresponds to the number of occurrences (i.e. the number of data
    /// points lying inside the bins). If *percent* / *probability*, the span of each bar corresponds to
    /// the percentage / fraction of occurrences with respect to the total number of sample points
    /// (here, the sum of all bin HEIGHTS equals 100% / 1). If *density*, the span of each bar
    /// corresponds to the number of occurrences in a bin divided by the size of the bin interval (here,
    /// the sum of all bin AREAS equals the total number of sample points). If *probability density*,
    /// the area of each bar corresponds to the probability that an event will fall into the
    /// corresponding bin (here, the sum of all bin AREAS equals 1).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-histnorm) |
    /// [Python](https://plot.ly/python/reference/#histogram-histnorm) |
    /// [R](https://plot.ly/r/reference/#histogram-histnorm)
    public var normalization: Shared.Normalization?

    /// # Used By
    /// `Histogram.cumulative` |
    public struct Cumulative: Encodable {
        /// If true, display the cumulative distribution by summing the binned values. 
        ///
        /// Use the `direction` and `centralbin` attributes to tune the accumulation method. Note: in this
        /// mode, the *density* `histnorm` settings behave the same as their equivalents without *density*:
        /// ** and *density* both rise to the number of data points, and *probability* and *probability
        /// density* both rise to the number of sample points.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-cumulative-enabled) |
        /// [Python](https://plot.ly/python/reference/#histogram-cumulative-enabled) |
        /// [R](https://plot.ly/r/reference/#histogram-cumulative-enabled)
        public var enabled: Bool?
    
        /// Only applies if cumulative is enabled. 
        ///
        /// If *increasing* (default) we sum all prior bins, so the result increases from left to right. If
        /// *decreasing* we sum later bins so the result decreases from left to right.
        ///
        /// # Used By
        /// `Histogram.Cumulative.direction` |
        public enum Direction: String, Encodable {
            case increasing
            case decreasing
        }
        /// Only applies if cumulative is enabled. 
        ///
        /// If *increasing* (default) we sum all prior bins, so the result increases from left to right. If
        /// *decreasing* we sum later bins so the result decreases from left to right.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-cumulative-direction) |
        /// [Python](https://plot.ly/python/reference/#histogram-cumulative-direction) |
        /// [R](https://plot.ly/r/reference/#histogram-cumulative-direction)
        public var direction: Direction?
    
        /// Only applies if cumulative is enabled. 
        ///
        /// Sets whether the current bin is included, excluded, or has half of its value included in the
        /// current cumulative value. *include* is the default for compatibility with various other tools,
        /// however it introduces a half-bin bias to the results. *exclude* makes the opposite half-bin
        /// bias, and *half* removes it.
        ///
        /// # Used By
        /// `Histogram.Cumulative.currentbin` |
        public enum Currentbin: String, Encodable {
            case include
            case exclude
            case half
        }
        /// Only applies if cumulative is enabled. 
        ///
        /// Sets whether the current bin is included, excluded, or has half of its value included in the
        /// current cumulative value. *include* is the default for compatibility with various other tools,
        /// however it introduces a half-bin bias to the results. *exclude* makes the opposite half-bin
        /// bias, and *half* removes it.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-cumulative-currentbin) |
        /// [Python](https://plot.ly/python/reference/#histogram-cumulative-currentbin) |
        /// [R](https://plot.ly/r/reference/#histogram-cumulative-currentbin)
        public var currentbin: Currentbin?
    
        public init(enabled: Bool? = nil, direction: Direction? = nil, currentbin: Currentbin? = nil) {
            self.enabled = enabled
            self.direction = direction
            self.currentbin = currentbin
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-cumulative) |
    /// [Python](https://plot.ly/python/reference/#histogram-cumulative) |
    /// [R](https://plot.ly/r/reference/#histogram-cumulative)
    public var cumulative: Cumulative?

    /// Specifies the maximum number of desired bins. 
    ///
    /// This value will be used in an algorithm that will decide the optimal bin size such that the
    /// histogram best visualizes the distribution of the data. Ignored if `xbins.size` is provided.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-nbinsx) |
    /// [Python](https://plot.ly/python/reference/#histogram-nbinsx) |
    /// [R](https://plot.ly/r/reference/#histogram-nbinsx)
    public var xNumBins: Int?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-xbins) |
    /// [Python](https://plot.ly/python/reference/#histogram-xbins) |
    /// [R](https://plot.ly/r/reference/#histogram-xbins)
    public var xBins: Shared.Bins?

    /// Specifies the maximum number of desired bins. 
    ///
    /// This value will be used in an algorithm that will decide the optimal bin size such that the
    /// histogram best visualizes the distribution of the data. Ignored if `ybins.size` is provided.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-nbinsy) |
    /// [Python](https://plot.ly/python/reference/#histogram-nbinsy) |
    /// [R](https://plot.ly/r/reference/#histogram-nbinsy)
    public var yNumBins: Int?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-ybins) |
    /// [Python](https://plot.ly/python/reference/#histogram-ybins) |
    /// [R](https://plot.ly/r/reference/#histogram-ybins)
    public var yBins: Shared.Bins?

    /// Obsolete: since v1.42 each bin attribute is auto-determined separately and `autobinx` is not needed. 
    ///
    /// However, we accept `autobinx: true` or `false` and will update `xbins` accordingly before
    /// deleting `autobinx` from the trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-autobinx) |
    /// [Python](https://plot.ly/python/reference/#histogram-autobinx) |
    /// [R](https://plot.ly/r/reference/#histogram-autobinx)
    public var xAutoBin: Bool?

    /// Obsolete: since v1.42 each bin attribute is auto-determined separately and `autobiny` is not needed. 
    ///
    /// However, we accept `autobiny: true` or `false` and will update `ybins` accordingly before
    /// deleting `autobiny` from the trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-autobiny) |
    /// [Python](https://plot.ly/python/reference/#histogram-autobiny) |
    /// [R](https://plot.ly/r/reference/#histogram-autobiny)
    public var yAutoBin: Bool?

    /// Set a group of histogram traces which will have compatible bin settings. 
    ///
    /// Note that traces on the same subplot and with the same *orientation* under `barmode` *stack*,
    /// *relative* and *group* are forced into the same bingroup, Using `bingroup`, traces under
    /// `barmode` *overlay* and on different axes (of the same axis type) can have compatible bin
    /// settings. Note that histogram and histogram2d* trace can share the same `bingroup`
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-bingroup) |
    /// [Python](https://plot.ly/python/reference/#histogram-bingroup) |
    /// [R](https://plot.ly/r/reference/#histogram-bingroup)
    public var binGroup: String?

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
    /// true`) are available. variable `binNumber` Anything contained in tag `<extra>` is displayed in
    /// the secondary box, for example "<extra>{fullData.name}</extra>". To hide the secondary box
    /// completely, use an empty tag `<extra></extra>`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-hovertemplate) |
    /// [Python](https://plot.ly/python/reference/#histogram-hovertemplate) |
    /// [R](https://plot.ly/r/reference/#histogram-hovertemplate)
    public var hoverTemplate: ArrayOrString?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-marker) |
    /// [Python](https://plot.ly/python/reference/#histogram-marker) |
    /// [R](https://plot.ly/r/reference/#histogram-marker)
    public var marker: Shared.Marker?

    /// Set several traces linked to the same position axis or matching axes to the same offsetgroup where bars of the same position coordinate will line up.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-offsetgroup) |
    /// [Python](https://plot.ly/python/reference/#histogram-offsetgroup) |
    /// [R](https://plot.ly/r/reference/#histogram-offsetgroup)
    public var offsetGroup: String?

    /// Set several traces linked to the same position axis or matching axes to the same alignmentgroup. 
    ///
    /// This controls whether bars compute their positional range dependently or independently.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-alignmentgroup) |
    /// [Python](https://plot.ly/python/reference/#histogram-alignmentgroup) |
    /// [R](https://plot.ly/r/reference/#histogram-alignmentgroup)
    public var alignmentGroup: String?

    /// # Used By
    /// `Histogram.selected` |
    public struct Selected: Encodable {
        /// # Used By
        /// `Histogram.Selected.marker` |
        public struct Marker: Encodable {
            /// Sets the marker opacity of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#histogram-selected-marker-opacity) |
            /// [Python](https://plot.ly/python/reference/#histogram-selected-marker-opacity) |
            /// [R](https://plot.ly/r/reference/#histogram-selected-marker-opacity)
            public var opacity: Double?
        
            /// Sets the marker color of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#histogram-selected-marker-color) |
            /// [Python](https://plot.ly/python/reference/#histogram-selected-marker-color) |
            /// [R](https://plot.ly/r/reference/#histogram-selected-marker-color)
            public var color: Color?
        
            public init(opacity: Double? = nil, color: Color? = nil) {
                self.opacity = opacity
                self.color = color
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-selected-marker) |
        /// [Python](https://plot.ly/python/reference/#histogram-selected-marker) |
        /// [R](https://plot.ly/r/reference/#histogram-selected-marker)
        public var marker: Marker?
    
        /// # Used By
        /// `Histogram.Selected.textFont` |
        public struct TextFont: Encodable {
            /// Sets the text font color of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#histogram-selected-textfont-color) |
            /// [Python](https://plot.ly/python/reference/#histogram-selected-textfont-color) |
            /// [R](https://plot.ly/r/reference/#histogram-selected-textfont-color)
            public var color: Color?
        
            public init(color: Color? = nil) {
                self.color = color
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-selected-textfont) |
        /// [Python](https://plot.ly/python/reference/#histogram-selected-textfont) |
        /// [R](https://plot.ly/r/reference/#histogram-selected-textfont)
        public var textFont: TextFont?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case marker
            case textFont = "textfont"
        }
        
        public init(marker: Marker? = nil, textFont: TextFont? = nil) {
            self.marker = marker
            self.textFont = textFont
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-selected) |
    /// [Python](https://plot.ly/python/reference/#histogram-selected) |
    /// [R](https://plot.ly/r/reference/#histogram-selected)
    public var selected: Selected?

    /// # Used By
    /// `Histogram.unselected` |
    public struct Unselected: Encodable {
        /// # Used By
        /// `Histogram.Unselected.marker` |
        public struct Marker: Encodable {
            /// Sets the marker opacity of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#histogram-unselected-marker-opacity) |
            /// [Python](https://plot.ly/python/reference/#histogram-unselected-marker-opacity) |
            /// [R](https://plot.ly/r/reference/#histogram-unselected-marker-opacity)
            public var opacity: Double?
        
            /// Sets the marker color of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#histogram-unselected-marker-color) |
            /// [Python](https://plot.ly/python/reference/#histogram-unselected-marker-color) |
            /// [R](https://plot.ly/r/reference/#histogram-unselected-marker-color)
            public var color: Color?
        
            public init(opacity: Double? = nil, color: Color? = nil) {
                self.opacity = opacity
                self.color = color
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-unselected-marker) |
        /// [Python](https://plot.ly/python/reference/#histogram-unselected-marker) |
        /// [R](https://plot.ly/r/reference/#histogram-unselected-marker)
        public var marker: Marker?
    
        /// # Used By
        /// `Histogram.Unselected.textFont` |
        public struct TextFont: Encodable {
            /// Sets the text font color of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#histogram-unselected-textfont-color) |
            /// [Python](https://plot.ly/python/reference/#histogram-unselected-textfont-color) |
            /// [R](https://plot.ly/r/reference/#histogram-unselected-textfont-color)
            public var color: Color?
        
            public init(color: Color? = nil) {
                self.color = color
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-unselected-textfont) |
        /// [Python](https://plot.ly/python/reference/#histogram-unselected-textfont) |
        /// [R](https://plot.ly/r/reference/#histogram-unselected-textfont)
        public var textFont: TextFont?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case marker
            case textFont = "textfont"
        }
        
        public init(marker: Marker? = nil, textFont: TextFont? = nil) {
            self.marker = marker
            self.textFont = textFont
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-unselected) |
    /// [Python](https://plot.ly/python/reference/#histogram-unselected) |
    /// [R](https://plot.ly/r/reference/#histogram-unselected)
    public var unselected: Unselected?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-error_x) |
    /// [Python](https://plot.ly/python/reference/#histogram-error_x) |
    /// [R](https://plot.ly/r/reference/#histogram-error_x)
    public var xError: Shared.Error?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-error_y) |
    /// [Python](https://plot.ly/python/reference/#histogram-error_y) |
    /// [R](https://plot.ly/r/reference/#histogram-error_y)
    public var yError: Shared.Error?

    /// Sets the calendar system to use with `x` date data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-xcalendar) |
    /// [Python](https://plot.ly/python/reference/#histogram-xcalendar) |
    /// [R](https://plot.ly/r/reference/#histogram-xcalendar)
    public var xCalendar: Shared.Calendar?

    /// Sets the calendar system to use with `y` date data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-ycalendar) |
    /// [Python](https://plot.ly/python/reference/#histogram-ycalendar) |
    /// [R](https://plot.ly/r/reference/#histogram-ycalendar)
    public var yCalendar: Shared.Calendar?

    /// Sets a reference between this trace's x coordinates and a 2D cartesian x axis. 
    ///
    /// If *x* (the default value), the x coordinates refer to `layout.xaxis`. If *x2*, the x
    /// coordinates refer to `layout.xaxis2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-xaxis) |
    /// [Python](https://plot.ly/python/reference/#histogram-xaxis) |
    /// [R](https://plot.ly/r/reference/#histogram-xaxis)
    public var xAxis: SubPlotID?

    /// Sets a reference between this trace's y coordinates and a 2D cartesian y axis. 
    ///
    /// If *y* (the default value), the y coordinates refer to `layout.yaxis`. If *y2*, the y
    /// coordinates refer to `layout.yaxis2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-yaxis) |
    /// [Python](https://plot.ly/python/reference/#histogram-yaxis) |
    /// [R](https://plot.ly/r/reference/#histogram-yaxis)
    public var yAxis: SubPlotID?

    /// Plotly compatible property encoding
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
        case selectedPoints = "selectedpoints"
        case hoverInfo = "hoverinfo"
        case hoverLabel = "hoverlabel"
        case stream
        case transforms
        case uiRevision = "uirevision"
        case x
        case y
        case text
        case hoverText = "hovertext"
        case orientation
        case binningFunction = "histfunc"
        case normalization = "histnorm"
        case cumulative
        case xNumBins = "nbinsx"
        case xBins = "xbins"
        case yNumBins = "nbinsy"
        case yBins = "ybins"
        case xAutoBin = "autobinx"
        case yAutoBin = "autobiny"
        case binGroup = "bingroup"
        case hoverTemplate = "hovertemplate"
        case marker
        case offsetGroup = "offsetgroup"
        case alignmentGroup = "alignmentgroup"
        case selected
        case unselected
        case xError = "error_x"
        case yError = "error_y"
        case xCalendar = "xcalendar"
        case yCalendar = "ycalendar"
        case xAxis = "xaxis"
        case yAxis = "yaxis"
    }
    
    public init(visible: Shared.Visible? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, selectedPoints: Anything? = nil, hoverInfo: Shared.HoverInfo? = nil, hoverLabel: Shared.HoverLabel? = nil, stream: Shared.Stream? = nil, transforms: [Shared.Transform]? = nil, uiRevision: Anything? = nil, x: [Double]? = nil, y: [Double]? = nil, text: ArrayOrString? = nil, hoverText: ArrayOrString? = nil, orientation: Shared.Orientation? = nil, binningFunction: Shared.BinningFunction? = nil, normalization: Shared.Normalization? = nil, cumulative: Cumulative? = nil, xNumBins: Int? = nil, xBins: Shared.Bins? = nil, yNumBins: Int? = nil, yBins: Shared.Bins? = nil, xAutoBin: Bool? = nil, yAutoBin: Bool? = nil, binGroup: String? = nil, hoverTemplate: ArrayOrString? = nil, marker: Shared.Marker? = nil, offsetGroup: String? = nil, alignmentGroup: String? = nil, selected: Selected? = nil, unselected: Unselected? = nil, xError: Shared.Error? = nil, yError: Shared.Error? = nil, xCalendar: Shared.Calendar? = nil, yCalendar: Shared.Calendar? = nil, xAxis: SubPlotID? = nil, yAxis: SubPlotID? = nil) {
        self.visible = visible
        self.showLegend = showLegend
        self.legendGroup = legendGroup
        self.opacity = opacity
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
        self.x = x
        self.y = y
        self.text = text
        self.hoverText = hoverText
        self.orientation = orientation
        self.binningFunction = binningFunction
        self.normalization = normalization
        self.cumulative = cumulative
        self.xNumBins = xNumBins
        self.xBins = xBins
        self.yNumBins = yNumBins
        self.yBins = yBins
        self.xAutoBin = xAutoBin
        self.yAutoBin = yAutoBin
        self.binGroup = binGroup
        self.hoverTemplate = hoverTemplate
        self.marker = marker
        self.offsetGroup = offsetGroup
        self.alignmentGroup = alignmentGroup
        self.selected = selected
        self.unselected = unselected
        self.xError = xError
        self.yError = yError
        self.xCalendar = xCalendar
        self.yCalendar = yCalendar
        self.xAxis = xAxis
        self.yAxis = yAxis
    }
}