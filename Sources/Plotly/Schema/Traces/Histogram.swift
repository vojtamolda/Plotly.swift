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
    public var visible: Visible0?

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
    public var hoverInfo: HoverInfo0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#histogram-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#histogram-hoverlabel)
    public var hoverLabel: HoverLabel0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-stream) |
    /// [Python](https://plot.ly/python/reference/#histogram-stream) |
    /// [R](https://plot.ly/r/reference/#histogram-stream)
    public var stream: Stream0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-transforms) |
    /// [Python](https://plot.ly/python/reference/#histogram-transforms) |
    /// [R](https://plot.ly/r/reference/#histogram-transforms)
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
    public var text: String?

    /// Same as `text`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-hovertext) |
    /// [Python](https://plot.ly/python/reference/#histogram-hovertext) |
    /// [R](https://plot.ly/r/reference/#histogram-hovertext)
    public var hoverText: String?

    /// Sets the orientation of the bars. 
    ///
    /// With *v* (*h*), the value of the each bar spans along the vertical (horizontal).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-orientation) |
    /// [Python](https://plot.ly/python/reference/#histogram-orientation) |
    /// [R](https://plot.ly/r/reference/#histogram-orientation)
    public var orientation: Orientation0?

    /// Specifies the binning function used for this histogram trace. 
    ///
    /// If *count*, the histogram values are computed by counting the number of values lying inside each
    /// bin. If *sum*, *avg*, *min*, *max*, the histogram values are computed using the sum, the
    /// average, the minimum or the maximum of the values lying inside each bin respectively.
    ///
    /// # Used By
    /// `Histogram.binningFunction` |
    public enum BinningFunction: String, Encodable {
        case count
        case sum
        case avg
        case min
        case max
    }
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
    public var binningFunction: BinningFunction?

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
    /// # Used By
    /// `Histogram.normalization` |
    public enum Normalization: String, Encodable {
        case none = ""
        case percent
        case probability
        case density
        case probabilityDensity = "probability density"
    }
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
    public var normalization: Normalization?

    ///
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
    /// # Used By
    /// `Histogram.xBins` |
    public struct XBins: Encodable {
        /// Sets the starting value for the x axis bins. 
        ///
        /// Defaults to the minimum data value, shifted down if necessary to make nice round values and to
        /// remove ambiguous bin edges. For example, if most of the data is integers we shift the bin edges
        /// 0.5 down, so a `size` of 5 would have a default `start` of -0.5, so it is clear that 0-4 are in
        /// the first bin, 5-9 in the second, but continuous data gets a start of 0 and bins [0,5), [5,10)
        /// etc. Dates behave similarly, and `start` should be a date string. For category data, `start` is
        /// based on the category serial numbers, and defaults to -0.5. If multiple non-overlaying
        /// histograms share a subplot, the first explicit `start` is used exactly and all others are
        /// shifted down (if necessary) to differ from that one by an integer number of bins.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-xbins-start) |
        /// [Python](https://plot.ly/python/reference/#histogram-xbins-start) |
        /// [R](https://plot.ly/r/reference/#histogram-xbins-start)
        public var start: Anything?
    
        /// Sets the end value for the x axis bins. 
        ///
        /// The last bin may not end exactly at this value, we increment the bin edge by `size` from `start`
        /// until we reach or exceed `end`. Defaults to the maximum data value. Like `start`, for dates use
        /// a date string, and for category data `end` is based on the category serial numbers.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-xbins-end) |
        /// [Python](https://plot.ly/python/reference/#histogram-xbins-end) |
        /// [R](https://plot.ly/r/reference/#histogram-xbins-end)
        public var end: Anything?
    
        /// Sets the size of each x axis bin. 
        ///
        /// Default behavior: If `nbinsx` is 0 or omitted, we choose a nice round bin size such that the
        /// number of bins is about the same as the typical number of samples in each bin. If `nbinsx` is
        /// provided, we choose a nice round bin size giving no more than that many bins. For date data, use
        /// milliseconds or *M<n>* for months, as in `axis.dtick`. For category data, the number of
        /// categories to bin together (always defaults to 1). If multiple non-overlaying histograms share a
        /// subplot, the first explicit `size` is used and all others discarded. If no `size` is
        /// provided,the sample data from all traces is combined to determine `size` as described above.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-xbins-size) |
        /// [Python](https://plot.ly/python/reference/#histogram-xbins-size) |
        /// [R](https://plot.ly/r/reference/#histogram-xbins-size)
        public var size: Anything?
    
        public init(start: Anything? = nil, end: Anything? = nil, size: Anything? = nil) {
            self.start = start
            self.end = end
            self.size = size
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-xbins) |
    /// [Python](https://plot.ly/python/reference/#histogram-xbins) |
    /// [R](https://plot.ly/r/reference/#histogram-xbins)
    public var xBins: XBins?

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
    /// # Used By
    /// `Histogram.yBins` |
    public struct YBins: Encodable {
        /// Sets the starting value for the y axis bins. 
        ///
        /// Defaults to the minimum data value, shifted down if necessary to make nice round values and to
        /// remove ambiguous bin edges. For example, if most of the data is integers we shift the bin edges
        /// 0.5 down, so a `size` of 5 would have a default `start` of -0.5, so it is clear that 0-4 are in
        /// the first bin, 5-9 in the second, but continuous data gets a start of 0 and bins [0,5), [5,10)
        /// etc. Dates behave similarly, and `start` should be a date string. For category data, `start` is
        /// based on the category serial numbers, and defaults to -0.5. If multiple non-overlaying
        /// histograms share a subplot, the first explicit `start` is used exactly and all others are
        /// shifted down (if necessary) to differ from that one by an integer number of bins.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-ybins-start) |
        /// [Python](https://plot.ly/python/reference/#histogram-ybins-start) |
        /// [R](https://plot.ly/r/reference/#histogram-ybins-start)
        public var start: Anything?
    
        /// Sets the end value for the y axis bins. 
        ///
        /// The last bin may not end exactly at this value, we increment the bin edge by `size` from `start`
        /// until we reach or exceed `end`. Defaults to the maximum data value. Like `start`, for dates use
        /// a date string, and for category data `end` is based on the category serial numbers.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-ybins-end) |
        /// [Python](https://plot.ly/python/reference/#histogram-ybins-end) |
        /// [R](https://plot.ly/r/reference/#histogram-ybins-end)
        public var end: Anything?
    
        /// Sets the size of each y axis bin. 
        ///
        /// Default behavior: If `nbinsy` is 0 or omitted, we choose a nice round bin size such that the
        /// number of bins is about the same as the typical number of samples in each bin. If `nbinsy` is
        /// provided, we choose a nice round bin size giving no more than that many bins. For date data, use
        /// milliseconds or *M<n>* for months, as in `axis.dtick`. For category data, the number of
        /// categories to bin together (always defaults to 1). If multiple non-overlaying histograms share a
        /// subplot, the first explicit `size` is used and all others discarded. If no `size` is
        /// provided,the sample data from all traces is combined to determine `size` as described above.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-ybins-size) |
        /// [Python](https://plot.ly/python/reference/#histogram-ybins-size) |
        /// [R](https://plot.ly/r/reference/#histogram-ybins-size)
        public var size: Anything?
    
        public init(start: Anything? = nil, end: Anything? = nil, size: Anything? = nil) {
            self.start = start
            self.end = end
            self.size = size
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-ybins) |
    /// [Python](https://plot.ly/python/reference/#histogram-ybins) |
    /// [R](https://plot.ly/r/reference/#histogram-ybins)
    public var yBins: YBins?

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
    public var hoverTemplate: String?

    ///
    /// # Used By
    /// `Histogram.marker` |
    public struct Marker: Encodable {
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-marker-line) |
        /// [Python](https://plot.ly/python/reference/#histogram-marker-line) |
        /// [R](https://plot.ly/r/reference/#histogram-marker-line)
        public var line: Line1?
    
        /// Sets themarkercolor. 
        ///
        /// It accepts either a specific color or an array of numbers that are mapped to the colorscale
        /// relative to the max and min values of the array or relative to `marker.cmin` and `marker.cmax`
        /// if set.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-marker-color) |
        /// [Python](https://plot.ly/python/reference/#histogram-marker-color) |
        /// [R](https://plot.ly/r/reference/#histogram-marker-color)
        public var color: Color?
    
        /// Determines whether or not the color domain is computed with respect to the input data (here in `marker.color`) or the bounds set in `marker.cmin` and `marker.cmax`  Has an effect only if in `marker.color`is set to a numerical array. 
        ///
        /// Defaults to `false` when `marker.cmin` and `marker.cmax` are set by the user.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-marker-cauto) |
        /// [Python](https://plot.ly/python/reference/#histogram-marker-cauto) |
        /// [R](https://plot.ly/r/reference/#histogram-marker-cauto)
        public var cAuto: Bool?
    
        /// Sets the lower bound of the color domain. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
        /// units as in `marker.color` and if set, `marker.cmax` must be set as well.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-marker-cmin) |
        /// [Python](https://plot.ly/python/reference/#histogram-marker-cmin) |
        /// [R](https://plot.ly/r/reference/#histogram-marker-cmin)
        public var cMin: Double?
    
        /// Sets the upper bound of the color domain. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
        /// units as in `marker.color` and if set, `marker.cmin` must be set as well.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-marker-cmax) |
        /// [Python](https://plot.ly/python/reference/#histogram-marker-cmax) |
        /// [R](https://plot.ly/r/reference/#histogram-marker-cmax)
        public var cMax: Double?
    
        /// Sets the mid-point of the color domain by scaling `marker.cmin` and/or `marker.cmax` to be equidistant to this point. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
        /// units as in `marker.color`. Has no effect when `marker.cauto` is `false`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-marker-cmid) |
        /// [Python](https://plot.ly/python/reference/#histogram-marker-cmid) |
        /// [R](https://plot.ly/r/reference/#histogram-marker-cmid)
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
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-marker-colorscale) |
        /// [Python](https://plot.ly/python/reference/#histogram-marker-colorscale) |
        /// [R](https://plot.ly/r/reference/#histogram-marker-colorscale)
        public var colorScale: ColorScale?
    
        /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `marker.colorscale`. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. In case `colorscale` is
        /// unspecified or `autocolorscale` is true, the default palette will be chosen according to whether
        /// numbers in the `color` array are all positive, all negative or mixed.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-marker-autocolorscale) |
        /// [Python](https://plot.ly/python/reference/#histogram-marker-autocolorscale) |
        /// [R](https://plot.ly/r/reference/#histogram-marker-autocolorscale)
        public var autoColorScale: Bool?
    
        /// Reverses the color mapping if true. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array. If true, `marker.cmin` will
        /// correspond to the last color in the array and `marker.cmax` will correspond to the first color.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-marker-reversescale) |
        /// [Python](https://plot.ly/python/reference/#histogram-marker-reversescale) |
        /// [R](https://plot.ly/r/reference/#histogram-marker-reversescale)
        public var reverseScale: Bool?
    
        /// Determines whether or not a colorbar is displayed for this trace. 
        ///
        /// Has an effect only if in `marker.color`is set to a numerical array.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-marker-showscale) |
        /// [Python](https://plot.ly/python/reference/#histogram-marker-showscale) |
        /// [R](https://plot.ly/r/reference/#histogram-marker-showscale)
        public var showScale: Bool?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-marker-colorbar) |
        /// [Python](https://plot.ly/python/reference/#histogram-marker-colorbar) |
        /// [R](https://plot.ly/r/reference/#histogram-marker-colorbar)
        public var colorBar: ColorBar0?
    
        /// Sets a reference to a shared color axis. 
        ///
        /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
        /// for these shared color axes are set in the layout, under `layout.coloraxis`,
        /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-marker-coloraxis) |
        /// [Python](https://plot.ly/python/reference/#histogram-marker-coloraxis) |
        /// [R](https://plot.ly/r/reference/#histogram-marker-coloraxis)
        public var colorAxis: SubPlotID?
    
        /// Sets the opacity of the bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-marker-opacity) |
        /// [Python](https://plot.ly/python/reference/#histogram-marker-opacity) |
        /// [R](https://plot.ly/r/reference/#histogram-marker-opacity)
        public var opacity: Double?
    
        /// Sets the source reference on plot.ly for  color .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-marker-colorsrc) |
        /// [Python](https://plot.ly/python/reference/#histogram-marker-colorsrc) |
        /// [R](https://plot.ly/r/reference/#histogram-marker-colorsrc)
        public var colorSource: String?
    
        /// Sets the source reference on plot.ly for  opacity .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-marker-opacitysrc) |
        /// [Python](https://plot.ly/python/reference/#histogram-marker-opacitysrc) |
        /// [R](https://plot.ly/r/reference/#histogram-marker-opacitysrc)
        public var opacitySource: String?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case line
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
            case opacity
            case colorSource = "colorsrc"
            case opacitySource = "opacitysrc"
        }
        
        public init(line: Line1? = nil, color: Color? = nil, cAuto: Bool? = nil, cMin: Double? = nil, cMax: Double? = nil, cMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: ColorBar0? = nil, colorAxis: SubPlotID? = nil, opacity: Double? = nil, colorSource: String? = nil, opacitySource: String? = nil) {
            self.line = line
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
            self.opacity = opacity
            self.colorSource = colorSource
            self.opacitySource = opacitySource
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-marker) |
    /// [Python](https://plot.ly/python/reference/#histogram-marker) |
    /// [R](https://plot.ly/r/reference/#histogram-marker)
    public var marker: Marker?

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

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-selected) |
    /// [Python](https://plot.ly/python/reference/#histogram-selected) |
    /// [R](https://plot.ly/r/reference/#histogram-selected)
    public var selected: Selected0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-unselected) |
    /// [Python](https://plot.ly/python/reference/#histogram-unselected) |
    /// [R](https://plot.ly/r/reference/#histogram-unselected)
    public var unselected: Selected0?

    ///
    /// # Used By
    /// `Histogram.xError` |
    public struct XError: Encodable {
        /// Determines whether or not this set of error bars is visible.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-error_x-visible) |
        /// [Python](https://plot.ly/python/reference/#histogram-error_x-visible) |
        /// [R](https://plot.ly/r/reference/#histogram-error_x-visible)
        public var visible: Bool?
    
        /// Determines the rule used to generate the error bars. 
        ///
        /// If *constant`, the bar lengths are of a constant value. Set this constant in `value`. If
        /// *percent*, the bar lengths correspond to a percentage of underlying data. Set this percentage in
        /// `value`. If *sqrt*, the bar lengths correspond to the sqaure of the underlying data. If *data*,
        /// the bar lengths are set with data set `array`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-error_x-type) |
        /// [Python](https://plot.ly/python/reference/#histogram-error_x-type) |
        /// [R](https://plot.ly/r/reference/#histogram-error_x-type)
        public var type: Rule1?
    
        /// Determines whether or not the error bars have the same length in both direction (top/bottom for vertical bars, left/right for horizontal bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-error_x-symmetric) |
        /// [Python](https://plot.ly/python/reference/#histogram-error_x-symmetric) |
        /// [R](https://plot.ly/r/reference/#histogram-error_x-symmetric)
        public var symmetric: Bool?
    
        /// Sets the data corresponding the length of each error bar. 
        ///
        /// Values are plotted relative to the underlying data.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-error_x-array) |
        /// [Python](https://plot.ly/python/reference/#histogram-error_x-array) |
        /// [R](https://plot.ly/r/reference/#histogram-error_x-array)
        public var array: [Double]?
    
        /// Sets the data corresponding the length of each error bar in the bottom (left) direction for vertical (horizontal) bars Values are plotted relative to the underlying data.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-error_x-arrayminus) |
        /// [Python](https://plot.ly/python/reference/#histogram-error_x-arrayminus) |
        /// [R](https://plot.ly/r/reference/#histogram-error_x-arrayminus)
        public var arrayMinus: [Double]?
    
        /// Sets the value of either the percentage (if `type` is set to *percent*) or the constant (if `type` is set to *constant*) corresponding to the lengths of the error bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-error_x-value) |
        /// [Python](https://plot.ly/python/reference/#histogram-error_x-value) |
        /// [R](https://plot.ly/r/reference/#histogram-error_x-value)
        public var value: Double?
    
        /// Sets the value of either the percentage (if `type` is set to *percent*) or the constant (if `type` is set to *constant*) corresponding to the lengths of the error bars in the bottom (left) direction for vertical (horizontal) bars
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-error_x-valueminus) |
        /// [Python](https://plot.ly/python/reference/#histogram-error_x-valueminus) |
        /// [R](https://plot.ly/r/reference/#histogram-error_x-valueminus)
        public var valueMinus: Double?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-error_x-traceref) |
        /// [Python](https://plot.ly/python/reference/#histogram-error_x-traceref) |
        /// [R](https://plot.ly/r/reference/#histogram-error_x-traceref)
        public var traceReference: Int?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-error_x-tracerefminus) |
        /// [Python](https://plot.ly/python/reference/#histogram-error_x-tracerefminus) |
        /// [R](https://plot.ly/r/reference/#histogram-error_x-tracerefminus)
        public var traceReferenceMinus: Int?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-error_x-copy_ystyle) |
        /// [Python](https://plot.ly/python/reference/#histogram-error_x-copy_ystyle) |
        /// [R](https://plot.ly/r/reference/#histogram-error_x-copy_ystyle)
        public var yCopyStyle: Bool?
    
        /// Sets the stoke color of the error bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-error_x-color) |
        /// [Python](https://plot.ly/python/reference/#histogram-error_x-color) |
        /// [R](https://plot.ly/r/reference/#histogram-error_x-color)
        public var color: Color?
    
        /// Sets the thickness (in px) of the error bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-error_x-thickness) |
        /// [Python](https://plot.ly/python/reference/#histogram-error_x-thickness) |
        /// [R](https://plot.ly/r/reference/#histogram-error_x-thickness)
        public var thickness: Double?
    
        /// Sets the width (in px) of the cross-bar at both ends of the error bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-error_x-width) |
        /// [Python](https://plot.ly/python/reference/#histogram-error_x-width) |
        /// [R](https://plot.ly/r/reference/#histogram-error_x-width)
        public var width: Double?
    
        /// Sets the source reference on plot.ly for  array .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-error_x-arraysrc) |
        /// [Python](https://plot.ly/python/reference/#histogram-error_x-arraysrc) |
        /// [R](https://plot.ly/r/reference/#histogram-error_x-arraysrc)
        public var arraySource: String?
    
        /// Sets the source reference on plot.ly for  arrayminus .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-error_x-arrayminussrc) |
        /// [Python](https://plot.ly/python/reference/#histogram-error_x-arrayminussrc) |
        /// [R](https://plot.ly/r/reference/#histogram-error_x-arrayminussrc)
        public var arrayMinusSource: String?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case visible
            case type
            case symmetric
            case array
            case arrayMinus = "arrayminus"
            case value
            case valueMinus = "valueminus"
            case traceReference = "traceref"
            case traceReferenceMinus = "tracerefminus"
            case yCopyStyle = "copy_ystyle"
            case color
            case thickness
            case width
            case arraySource = "arraysrc"
            case arrayMinusSource = "arrayminussrc"
        }
        
        public init(visible: Bool? = nil, type: Rule1? = nil, symmetric: Bool? = nil, array: [Double]? = nil, arrayMinus: [Double]? = nil, value: Double? = nil, valueMinus: Double? = nil, traceReference: Int? = nil, traceReferenceMinus: Int? = nil, yCopyStyle: Bool? = nil, color: Color? = nil, thickness: Double? = nil, width: Double? = nil, arraySource: String? = nil, arrayMinusSource: String? = nil) {
            self.visible = visible
            self.type = type
            self.symmetric = symmetric
            self.array = array
            self.arrayMinus = arrayMinus
            self.value = value
            self.valueMinus = valueMinus
            self.traceReference = traceReference
            self.traceReferenceMinus = traceReferenceMinus
            self.yCopyStyle = yCopyStyle
            self.color = color
            self.thickness = thickness
            self.width = width
            self.arraySource = arraySource
            self.arrayMinusSource = arrayMinusSource
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-error_x) |
    /// [Python](https://plot.ly/python/reference/#histogram-error_x) |
    /// [R](https://plot.ly/r/reference/#histogram-error_x)
    public var xError: XError?

    ///
    /// # Used By
    /// `Histogram.yError` |
    public struct YError: Encodable {
        /// Determines whether or not this set of error bars is visible.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-error_y-visible) |
        /// [Python](https://plot.ly/python/reference/#histogram-error_y-visible) |
        /// [R](https://plot.ly/r/reference/#histogram-error_y-visible)
        public var visible: Bool?
    
        /// Determines the rule used to generate the error bars. 
        ///
        /// If *constant`, the bar lengths are of a constant value. Set this constant in `value`. If
        /// *percent*, the bar lengths correspond to a percentage of underlying data. Set this percentage in
        /// `value`. If *sqrt*, the bar lengths correspond to the sqaure of the underlying data. If *data*,
        /// the bar lengths are set with data set `array`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-error_y-type) |
        /// [Python](https://plot.ly/python/reference/#histogram-error_y-type) |
        /// [R](https://plot.ly/r/reference/#histogram-error_y-type)
        public var type: Rule1?
    
        /// Determines whether or not the error bars have the same length in both direction (top/bottom for vertical bars, left/right for horizontal bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-error_y-symmetric) |
        /// [Python](https://plot.ly/python/reference/#histogram-error_y-symmetric) |
        /// [R](https://plot.ly/r/reference/#histogram-error_y-symmetric)
        public var symmetric: Bool?
    
        /// Sets the data corresponding the length of each error bar. 
        ///
        /// Values are plotted relative to the underlying data.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-error_y-array) |
        /// [Python](https://plot.ly/python/reference/#histogram-error_y-array) |
        /// [R](https://plot.ly/r/reference/#histogram-error_y-array)
        public var array: [Double]?
    
        /// Sets the data corresponding the length of each error bar in the bottom (left) direction for vertical (horizontal) bars Values are plotted relative to the underlying data.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-error_y-arrayminus) |
        /// [Python](https://plot.ly/python/reference/#histogram-error_y-arrayminus) |
        /// [R](https://plot.ly/r/reference/#histogram-error_y-arrayminus)
        public var arrayMinus: [Double]?
    
        /// Sets the value of either the percentage (if `type` is set to *percent*) or the constant (if `type` is set to *constant*) corresponding to the lengths of the error bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-error_y-value) |
        /// [Python](https://plot.ly/python/reference/#histogram-error_y-value) |
        /// [R](https://plot.ly/r/reference/#histogram-error_y-value)
        public var value: Double?
    
        /// Sets the value of either the percentage (if `type` is set to *percent*) or the constant (if `type` is set to *constant*) corresponding to the lengths of the error bars in the bottom (left) direction for vertical (horizontal) bars
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-error_y-valueminus) |
        /// [Python](https://plot.ly/python/reference/#histogram-error_y-valueminus) |
        /// [R](https://plot.ly/r/reference/#histogram-error_y-valueminus)
        public var valueMinus: Double?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-error_y-traceref) |
        /// [Python](https://plot.ly/python/reference/#histogram-error_y-traceref) |
        /// [R](https://plot.ly/r/reference/#histogram-error_y-traceref)
        public var traceReference: Int?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-error_y-tracerefminus) |
        /// [Python](https://plot.ly/python/reference/#histogram-error_y-tracerefminus) |
        /// [R](https://plot.ly/r/reference/#histogram-error_y-tracerefminus)
        public var traceReferenceMinus: Int?
    
        /// Sets the stoke color of the error bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-error_y-color) |
        /// [Python](https://plot.ly/python/reference/#histogram-error_y-color) |
        /// [R](https://plot.ly/r/reference/#histogram-error_y-color)
        public var color: Color?
    
        /// Sets the thickness (in px) of the error bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-error_y-thickness) |
        /// [Python](https://plot.ly/python/reference/#histogram-error_y-thickness) |
        /// [R](https://plot.ly/r/reference/#histogram-error_y-thickness)
        public var thickness: Double?
    
        /// Sets the width (in px) of the cross-bar at both ends of the error bars.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-error_y-width) |
        /// [Python](https://plot.ly/python/reference/#histogram-error_y-width) |
        /// [R](https://plot.ly/r/reference/#histogram-error_y-width)
        public var width: Double?
    
        /// Sets the source reference on plot.ly for  array .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-error_y-arraysrc) |
        /// [Python](https://plot.ly/python/reference/#histogram-error_y-arraysrc) |
        /// [R](https://plot.ly/r/reference/#histogram-error_y-arraysrc)
        public var arraySource: String?
    
        /// Sets the source reference on plot.ly for  arrayminus .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram-error_y-arrayminussrc) |
        /// [Python](https://plot.ly/python/reference/#histogram-error_y-arrayminussrc) |
        /// [R](https://plot.ly/r/reference/#histogram-error_y-arrayminussrc)
        public var arrayMinusSource: String?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case visible
            case type
            case symmetric
            case array
            case arrayMinus = "arrayminus"
            case value
            case valueMinus = "valueminus"
            case traceReference = "traceref"
            case traceReferenceMinus = "tracerefminus"
            case color
            case thickness
            case width
            case arraySource = "arraysrc"
            case arrayMinusSource = "arrayminussrc"
        }
        
        public init(visible: Bool? = nil, type: Rule1? = nil, symmetric: Bool? = nil, array: [Double]? = nil, arrayMinus: [Double]? = nil, value: Double? = nil, valueMinus: Double? = nil, traceReference: Int? = nil, traceReferenceMinus: Int? = nil, color: Color? = nil, thickness: Double? = nil, width: Double? = nil, arraySource: String? = nil, arrayMinusSource: String? = nil) {
            self.visible = visible
            self.type = type
            self.symmetric = symmetric
            self.array = array
            self.arrayMinus = arrayMinus
            self.value = value
            self.valueMinus = valueMinus
            self.traceReference = traceReference
            self.traceReferenceMinus = traceReferenceMinus
            self.color = color
            self.thickness = thickness
            self.width = width
            self.arraySource = arraySource
            self.arrayMinusSource = arrayMinusSource
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-error_y) |
    /// [Python](https://plot.ly/python/reference/#histogram-error_y) |
    /// [R](https://plot.ly/r/reference/#histogram-error_y)
    public var yError: YError?

    /// Sets the calendar system to use with `x` date data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-xcalendar) |
    /// [Python](https://plot.ly/python/reference/#histogram-xcalendar) |
    /// [R](https://plot.ly/r/reference/#histogram-xcalendar)
    public var xCalendar: Calendar0?

    /// Sets the calendar system to use with `y` date data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-ycalendar) |
    /// [Python](https://plot.ly/python/reference/#histogram-ycalendar) |
    /// [R](https://plot.ly/r/reference/#histogram-ycalendar)
    public var yCalendar: Calendar0?

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

    /// Sets the source reference on plot.ly for  ids .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-idssrc) |
    /// [Python](https://plot.ly/python/reference/#histogram-idssrc) |
    /// [R](https://plot.ly/r/reference/#histogram-idssrc)
    public var idsSource: String?

    /// Sets the source reference on plot.ly for  customdata .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-customdatasrc) |
    /// [Python](https://plot.ly/python/reference/#histogram-customdatasrc) |
    /// [R](https://plot.ly/r/reference/#histogram-customdatasrc)
    public var customDataSource: String?

    /// Sets the source reference on plot.ly for  meta .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-metasrc) |
    /// [Python](https://plot.ly/python/reference/#histogram-metasrc) |
    /// [R](https://plot.ly/r/reference/#histogram-metasrc)
    public var metaSource: String?

    /// Sets the source reference on plot.ly for  hoverinfo .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-hoverinfosrc) |
    /// [Python](https://plot.ly/python/reference/#histogram-hoverinfosrc) |
    /// [R](https://plot.ly/r/reference/#histogram-hoverinfosrc)
    public var hoverInfoSource: String?

    /// Sets the source reference on plot.ly for  x .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-xsrc) |
    /// [Python](https://plot.ly/python/reference/#histogram-xsrc) |
    /// [R](https://plot.ly/r/reference/#histogram-xsrc)
    public var xSource: String?

    /// Sets the source reference on plot.ly for  y .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-ysrc) |
    /// [Python](https://plot.ly/python/reference/#histogram-ysrc) |
    /// [R](https://plot.ly/r/reference/#histogram-ysrc)
    public var ySource: String?

    /// Sets the source reference on plot.ly for  text .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-textsrc) |
    /// [Python](https://plot.ly/python/reference/#histogram-textsrc) |
    /// [R](https://plot.ly/r/reference/#histogram-textsrc)
    public var textSource: String?

    /// Sets the source reference on plot.ly for  hovertext .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-hovertextsrc) |
    /// [Python](https://plot.ly/python/reference/#histogram-hovertextsrc) |
    /// [R](https://plot.ly/r/reference/#histogram-hovertextsrc)
    public var hoverTextSource: String?

    /// Sets the source reference on plot.ly for  hovertemplate .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram-hovertemplatesrc) |
    /// [Python](https://plot.ly/python/reference/#histogram-hovertemplatesrc) |
    /// [R](https://plot.ly/r/reference/#histogram-hovertemplatesrc)
    public var hoverTemplateSource: String?

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
        case idsSource = "idssrc"
        case customDataSource = "customdatasrc"
        case metaSource = "metasrc"
        case hoverInfoSource = "hoverinfosrc"
        case xSource = "xsrc"
        case ySource = "ysrc"
        case textSource = "textsrc"
        case hoverTextSource = "hovertextsrc"
        case hoverTemplateSource = "hovertemplatesrc"
    }
    
    public init(visible: Visible0? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, selectedPoints: Anything? = nil, hoverInfo: HoverInfo0? = nil, hoverLabel: HoverLabel0? = nil, stream: Stream0? = nil, transforms: Transforms0? = nil, uiRevision: Anything? = nil, x: [Double]? = nil, y: [Double]? = nil, text: String? = nil, hoverText: String? = nil, orientation: Orientation0? = nil, binningFunction: BinningFunction? = nil, normalization: Normalization? = nil, cumulative: Cumulative? = nil, xNumBins: Int? = nil, xBins: XBins? = nil, yNumBins: Int? = nil, yBins: YBins? = nil, xAutoBin: Bool? = nil, yAutoBin: Bool? = nil, binGroup: String? = nil, hoverTemplate: String? = nil, marker: Marker? = nil, offsetGroup: String? = nil, alignmentGroup: String? = nil, selected: Selected0? = nil, unselected: Selected0? = nil, xError: XError? = nil, yError: YError? = nil, xCalendar: Calendar0? = nil, yCalendar: Calendar0? = nil, xAxis: SubPlotID? = nil, yAxis: SubPlotID? = nil, idsSource: String? = nil, customDataSource: String? = nil, metaSource: String? = nil, hoverInfoSource: String? = nil, xSource: String? = nil, ySource: String? = nil, textSource: String? = nil, hoverTextSource: String? = nil, hoverTemplateSource: String? = nil) {
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
        self.idsSource = idsSource
        self.customDataSource = customDataSource
        self.metaSource = metaSource
        self.hoverInfoSource = hoverInfoSource
        self.xSource = xSource
        self.ySource = ySource
        self.textSource = textSource
        self.hoverTextSource = hoverTextSource
        self.hoverTemplateSource = hoverTemplateSource
    }
}