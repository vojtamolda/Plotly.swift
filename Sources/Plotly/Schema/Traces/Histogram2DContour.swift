/// The sample data from which statistics are computed is set in `x` and `y` (where `x` and `y` represent marginal distributions, binning is set in `xbins` and `ybins` in this case) or `z` (where `z` represent the 2D distribution and binning set, binning is set by `x` and `y` in this case). 
///
/// The resulting distribution is visualized as a contour plot.
public struct Histogram2DContour: Trace {
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#type) |
    /// [Python](https://plot.ly/python/reference/#type) |
    /// [R](https://plot.ly/r/reference/#type)
    public let type: String = "histogram2dcontour"

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
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-visible) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-visible) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-visible)
    public var visible: Visible0?

    /// Determines whether or not an item corresponding to this trace is shown in the legend.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-showlegend) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-showlegend) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-showlegend)
    public var showLegend: Bool?

    /// Sets the legend group for this trace. 
    ///
    /// Traces part of the same legend group hide/show at the same time when toggling legend items.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-legendgroup) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-legendgroup) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-legendgroup)
    public var legendGroup: String?

    /// Sets the opacity of the trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-opacity) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-opacity) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-opacity)
    public var opacity: Double?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-name) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-name) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-name)
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-uid) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-uid) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-uid)
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-ids) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-ids) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-ids)
    public var ids: [Double]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-customdata) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-customdata) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-customdata)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-meta) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-meta) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-meta)
    public var meta: Anything?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-hoverinfo) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-hoverinfo) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-hoverinfo)
    public var hoverInfo: HoverInfo0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-hoverlabel)
    public var hoverLabel: HoverLabel0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-stream) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-stream) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-stream)
    public var stream: Stream0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-transforms) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-transforms) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-transforms)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-uirevision) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-uirevision) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-uirevision)
    public var uiRevision: Anything?

    /// Sets the sample data to be binned on the x axis.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-x) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-x) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-x)
    public var x: [Double]?

    /// Sets the sample data to be binned on the y axis.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-y) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-y) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-y)
    public var y: [Double]?

    /// Sets the aggregation data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-z) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-z) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-z)
    public var z: [Double]?

    ///
    /// # Used By
    /// `Histogram2DContour.marker` |
    public struct Marker: Encodable {
        /// Sets the aggregation data.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-marker-color) |
        /// [Python](https://plot.ly/python/reference/#histogram2dcontour-marker-color) |
        /// [R](https://plot.ly/r/reference/#histogram2dcontour-marker-color)
        public var color: [Double]?
    
        /// Sets the source reference on plot.ly for  color .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-marker-colorsrc) |
        /// [Python](https://plot.ly/python/reference/#histogram2dcontour-marker-colorsrc) |
        /// [R](https://plot.ly/r/reference/#histogram2dcontour-marker-colorsrc)
        public var colorSource: String?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case color
            case colorSource = "colorsrc"
        }
        
        public init(color: [Double]? = nil, colorSource: String? = nil) {
            self.color = color
            self.colorSource = colorSource
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-marker) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-marker) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-marker)
    public var marker: Marker?

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
    /// `Histogram2DContour.normalization` |
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
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-histnorm) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-histnorm) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-histnorm)
    public var normalization: Normalization?

    /// Specifies the binning function used for this histogram trace. 
    ///
    /// If *count*, the histogram values are computed by counting the number of values lying inside each
    /// bin. If *sum*, *avg*, *min*, *max*, the histogram values are computed using the sum, the
    /// average, the minimum or the maximum of the values lying inside each bin respectively.
    ///
    /// # Used By
    /// `Histogram2DContour.binningFunction` |
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
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-histfunc) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-histfunc) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-histfunc)
    public var binningFunction: BinningFunction?

    /// Specifies the maximum number of desired bins. 
    ///
    /// This value will be used in an algorithm that will decide the optimal bin size such that the
    /// histogram best visualizes the distribution of the data. Ignored if `xbins.size` is provided.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-nbinsx) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-nbinsx) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-nbinsx)
    public var xNumBins: Int?

    ///
    /// # Used By
    /// `Histogram2DContour.xBins` |
    public struct XBins: Encodable {
        /// Sets the starting value for the x axis bins. 
        ///
        /// Defaults to the minimum data value, shifted down if necessary to make nice round values and to
        /// remove ambiguous bin edges. For example, if most of the data is integers we shift the bin edges
        /// 0.5 down, so a `size` of 5 would have a default `start` of -0.5, so it is clear that 0-4 are in
        /// the first bin, 5-9 in the second, but continuous data gets a start of 0 and bins [0,5), [5,10)
        /// etc. Dates behave similarly, and `start` should be a date string. For category data, `start` is
        /// based on the category serial numbers, and defaults to -0.5. 
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-xbins-start) |
        /// [Python](https://plot.ly/python/reference/#histogram2dcontour-xbins-start) |
        /// [R](https://plot.ly/r/reference/#histogram2dcontour-xbins-start)
        public var start: Anything?
    
        /// Sets the end value for the x axis bins. 
        ///
        /// The last bin may not end exactly at this value, we increment the bin edge by `size` from `start`
        /// until we reach or exceed `end`. Defaults to the maximum data value. Like `start`, for dates use
        /// a date string, and for category data `end` is based on the category serial numbers.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-xbins-end) |
        /// [Python](https://plot.ly/python/reference/#histogram2dcontour-xbins-end) |
        /// [R](https://plot.ly/r/reference/#histogram2dcontour-xbins-end)
        public var end: Anything?
    
        /// Sets the size of each x axis bin. 
        ///
        /// Default behavior: If `nbinsx` is 0 or omitted, we choose a nice round bin size such that the
        /// number of bins is about the same as the typical number of samples in each bin. If `nbinsx` is
        /// provided, we choose a nice round bin size giving no more than that many bins. For date data, use
        /// milliseconds or *M<n>* for months, as in `axis.dtick`. For category data, the number of
        /// categories to bin together (always defaults to 1). 
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-xbins-size) |
        /// [Python](https://plot.ly/python/reference/#histogram2dcontour-xbins-size) |
        /// [R](https://plot.ly/r/reference/#histogram2dcontour-xbins-size)
        public var size: Anything?
    
        public init(start: Anything? = nil, end: Anything? = nil, size: Anything? = nil) {
            self.start = start
            self.end = end
            self.size = size
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-xbins) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-xbins) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-xbins)
    public var xBins: XBins?

    /// Specifies the maximum number of desired bins. 
    ///
    /// This value will be used in an algorithm that will decide the optimal bin size such that the
    /// histogram best visualizes the distribution of the data. Ignored if `ybins.size` is provided.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-nbinsy) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-nbinsy) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-nbinsy)
    public var yNumBins: Int?

    ///
    /// # Used By
    /// `Histogram2DContour.yBins` |
    public struct YBins: Encodable {
        /// Sets the starting value for the y axis bins. 
        ///
        /// Defaults to the minimum data value, shifted down if necessary to make nice round values and to
        /// remove ambiguous bin edges. For example, if most of the data is integers we shift the bin edges
        /// 0.5 down, so a `size` of 5 would have a default `start` of -0.5, so it is clear that 0-4 are in
        /// the first bin, 5-9 in the second, but continuous data gets a start of 0 and bins [0,5), [5,10)
        /// etc. Dates behave similarly, and `start` should be a date string. For category data, `start` is
        /// based on the category serial numbers, and defaults to -0.5. 
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-ybins-start) |
        /// [Python](https://plot.ly/python/reference/#histogram2dcontour-ybins-start) |
        /// [R](https://plot.ly/r/reference/#histogram2dcontour-ybins-start)
        public var start: Anything?
    
        /// Sets the end value for the y axis bins. 
        ///
        /// The last bin may not end exactly at this value, we increment the bin edge by `size` from `start`
        /// until we reach or exceed `end`. Defaults to the maximum data value. Like `start`, for dates use
        /// a date string, and for category data `end` is based on the category serial numbers.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-ybins-end) |
        /// [Python](https://plot.ly/python/reference/#histogram2dcontour-ybins-end) |
        /// [R](https://plot.ly/r/reference/#histogram2dcontour-ybins-end)
        public var end: Anything?
    
        /// Sets the size of each y axis bin. 
        ///
        /// Default behavior: If `nbinsy` is 0 or omitted, we choose a nice round bin size such that the
        /// number of bins is about the same as the typical number of samples in each bin. If `nbinsy` is
        /// provided, we choose a nice round bin size giving no more than that many bins. For date data, use
        /// milliseconds or *M<n>* for months, as in `axis.dtick`. For category data, the number of
        /// categories to bin together (always defaults to 1). 
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-ybins-size) |
        /// [Python](https://plot.ly/python/reference/#histogram2dcontour-ybins-size) |
        /// [R](https://plot.ly/r/reference/#histogram2dcontour-ybins-size)
        public var size: Anything?
    
        public init(start: Anything? = nil, end: Anything? = nil, size: Anything? = nil) {
            self.start = start
            self.end = end
            self.size = size
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-ybins) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-ybins) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-ybins)
    public var yBins: YBins?

    /// Obsolete: since v1.42 each bin attribute is auto-determined separately and `autobinx` is not needed. 
    ///
    /// However, we accept `autobinx: true` or `false` and will update `xbins` accordingly before
    /// deleting `autobinx` from the trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-autobinx) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-autobinx) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-autobinx)
    public var xAutoBin: Bool?

    /// Obsolete: since v1.42 each bin attribute is auto-determined separately and `autobiny` is not needed. 
    ///
    /// However, we accept `autobiny: true` or `false` and will update `ybins` accordingly before
    /// deleting `autobiny` from the trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-autobiny) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-autobiny) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-autobiny)
    public var yAutoBin: Bool?

    /// Set the `xbingroup` and `ybingroup` default prefix For example, setting a `bingroup` of *1* on two histogram2d traces will make them their x-bins and y-bins match separately.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-bingroup) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-bingroup) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-bingroup)
    public var binGroup: String?

    /// Set a group of histogram traces which will have compatible x-bin settings. 
    ///
    /// Using `xbingroup`, histogram2d and histogram2dcontour traces (on axes of the same axis type) can
    /// have compatible x-bin settings. Note that the same `xbingroup` value can be used to set (1D)
    /// histogram `bingroup`
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-xbingroup) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-xbingroup) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-xbingroup)
    public var xBinGroup: String?

    /// Set a group of histogram traces which will have compatible y-bin settings. 
    ///
    /// Using `ybingroup`, histogram2d and histogram2dcontour traces (on axes of the same axis type) can
    /// have compatible y-bin settings. Note that the same `ybingroup` value can be used to set (1D)
    /// histogram `bingroup`
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-ybingroup) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-ybingroup) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-ybingroup)
    public var yBinGroup: String?

    /// Determines whether or not the contour level attributes are picked by an algorithm. 
    ///
    /// If *true*, the number of contour levels can be set in `ncontours`. If *false*, set the contour
    /// level attributes in `contours`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-autocontour) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-autocontour) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-autocontour)
    public var autoContour: Bool?

    /// Sets the maximum number of contour levels. 
    ///
    /// The actual number of contours will be chosen automatically to be less than or equal to the value
    /// of `ncontours`. Has an effect only if `autocontour` is *true* or if `contours.size` is missing.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-ncontours) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-ncontours) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-ncontours)
    public var nContours: Int?

    ///
    /// # Used By
    /// `Histogram2DContour.contours` |
    public struct Contours: Encodable {
        /// If `levels`, the data is represented as a contour plot with multiple levels displayed. 
        ///
        /// If `constraint`, the data is represented as constraints with the invalid region shaded as
        /// specified by the `operation` and `value` parameters.
        ///
        /// # Used By
        /// `Histogram2DContour.Contours.type` |
        public enum Rule: String, Encodable {
            case levels
            case constraint
        }
        /// If `levels`, the data is represented as a contour plot with multiple levels displayed. 
        ///
        /// If `constraint`, the data is represented as constraints with the invalid region shaded as
        /// specified by the `operation` and `value` parameters.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-contours-type) |
        /// [Python](https://plot.ly/python/reference/#histogram2dcontour-contours-type) |
        /// [R](https://plot.ly/r/reference/#histogram2dcontour-contours-type)
        public var type: Rule?
    
        /// Sets the starting contour level value. 
        ///
        /// Must be less than `contours.end`
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-contours-start) |
        /// [Python](https://plot.ly/python/reference/#histogram2dcontour-contours-start) |
        /// [R](https://plot.ly/r/reference/#histogram2dcontour-contours-start)
        public var start: Double?
    
        /// Sets the end contour level value. 
        ///
        /// Must be more than `contours.start`
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-contours-end) |
        /// [Python](https://plot.ly/python/reference/#histogram2dcontour-contours-end) |
        /// [R](https://plot.ly/r/reference/#histogram2dcontour-contours-end)
        public var end: Double?
    
        /// Sets the step between each contour level. 
        ///
        /// Must be positive.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-contours-size) |
        /// [Python](https://plot.ly/python/reference/#histogram2dcontour-contours-size) |
        /// [R](https://plot.ly/r/reference/#histogram2dcontour-contours-size)
        public var size: Double?
    
        /// Determines the coloring method showing the contour values. 
        ///
        /// If *fill*, coloring is done evenly between each contour level If *heatmap*, a heatmap gradient
        /// coloring is applied between each contour level. If *lines*, coloring is done on the contour
        /// lines. If *none*, no coloring is applied on this trace.
        ///
        /// # Used By
        /// `Histogram2DContour.Contours.coloring` |
        public enum Coloring: String, Encodable {
            case fill
            case heatmap
            case lines
            case none
        }
        /// Determines the coloring method showing the contour values. 
        ///
        /// If *fill*, coloring is done evenly between each contour level If *heatmap*, a heatmap gradient
        /// coloring is applied between each contour level. If *lines*, coloring is done on the contour
        /// lines. If *none*, no coloring is applied on this trace.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-contours-coloring) |
        /// [Python](https://plot.ly/python/reference/#histogram2dcontour-contours-coloring) |
        /// [R](https://plot.ly/r/reference/#histogram2dcontour-contours-coloring)
        public var coloring: Coloring?
    
        /// Determines whether or not the contour lines are drawn. 
        ///
        /// Has an effect only if `contours.coloring` is set to *fill*.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-contours-showlines) |
        /// [Python](https://plot.ly/python/reference/#histogram2dcontour-contours-showlines) |
        /// [R](https://plot.ly/r/reference/#histogram2dcontour-contours-showlines)
        public var showLines: Bool?
    
        /// Determines whether to label the contour lines with their values.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-contours-showlabels) |
        /// [Python](https://plot.ly/python/reference/#histogram2dcontour-contours-showlabels) |
        /// [R](https://plot.ly/r/reference/#histogram2dcontour-contours-showlabels)
        public var showLabels: Bool?
    
        /// Sets the font used for labeling the contour levels. 
        ///
        /// The default color comes from the lines, if shown. The default family and size come from
        /// `layout.font`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-contours-labelfont) |
        /// [Python](https://plot.ly/python/reference/#histogram2dcontour-contours-labelfont) |
        /// [R](https://plot.ly/r/reference/#histogram2dcontour-contours-labelfont)
        public var labelFont: Font0?
    
        /// Sets the contour label formatting rule using d3 formatting mini-language which is very similar to Python, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-contours-labelformat) |
        /// [Python](https://plot.ly/python/reference/#histogram2dcontour-contours-labelformat) |
        /// [R](https://plot.ly/r/reference/#histogram2dcontour-contours-labelformat)
        public var labelFormat: String?
    
        /// Sets the constraint operation. 
        ///
        /// *=* keeps regions equal to `value` *<* and *<=* keep regions less than `value` *>* and *>=* keep
        /// regions greater than `value` *[]*, *()*, *[)*, and *(]* keep regions inside `value[0]` to
        /// `value[1]` *][*, *)(*, *](*, *)[* keep regions outside `value[0]` to value[1]` Open vs. closed
        /// intervals make no difference to constraint display, but all versions are allowed for consistency
        /// with filter transforms.
        ///
        /// # Used By
        /// `Histogram2DContour.Contours.operation` |
        public enum Operation: String, Encodable {
            case equalTo = "="
            case lessThan = "<"
            case greaterEqualThan = ">="
            case greaterThan = ">"
            case lessEqualThan = "<="
            case insideInclusive = "[]"
            case insideExclusive = "()"
            case insideInclusiveExclusive = "[)"
            case insideExclusiveInclusive = "(]"
            case outsideInclusive = "]["
            case outsideExclusive = ")("
            case outsideInclusiveExclusive = "]("
            case outsideExclusiveInclusive = ")["
        }
        /// Sets the constraint operation. 
        ///
        /// *=* keeps regions equal to `value` *<* and *<=* keep regions less than `value` *>* and *>=* keep
        /// regions greater than `value` *[]*, *()*, *[)*, and *(]* keep regions inside `value[0]` to
        /// `value[1]` *][*, *)(*, *](*, *)[* keep regions outside `value[0]` to value[1]` Open vs. closed
        /// intervals make no difference to constraint display, but all versions are allowed for consistency
        /// with filter transforms.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-contours-operation) |
        /// [Python](https://plot.ly/python/reference/#histogram2dcontour-contours-operation) |
        /// [R](https://plot.ly/r/reference/#histogram2dcontour-contours-operation)
        public var operation: Operation?
    
        /// Sets the value or values of the constraint boundary. 
        ///
        /// When `operation` is set to one of the comparison values (=,<,>=,>,<=) *value* is expected to be
        /// a number. When `operation` is set to one of the interval values ([],(),[),(],][,)(,](,)[)
        /// *value* is expected to be an array of two numbers where the first is the lower bound and the
        /// second is the upper bound.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-contours-value) |
        /// [Python](https://plot.ly/python/reference/#histogram2dcontour-contours-value) |
        /// [R](https://plot.ly/r/reference/#histogram2dcontour-contours-value)
        public var value: Anything?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-contours-impliedEdits) |
        /// [Python](https://plot.ly/python/reference/#histogram2dcontour-contours-impliedEdits) |
        /// [R](https://plot.ly/r/reference/#histogram2dcontour-contours-impliedEdits)
        public var impliedEdits: Edits0?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case type
            case start
            case end
            case size
            case coloring
            case showLines = "showlines"
            case showLabels = "showlabels"
            case labelFont = "labelfont"
            case labelFormat = "labelformat"
            case operation
            case value
            case impliedEdits
        }
        
        public init(type: Rule? = nil, start: Double? = nil, end: Double? = nil, size: Double? = nil, coloring: Coloring? = nil, showLines: Bool? = nil, showLabels: Bool? = nil, labelFont: Font0? = nil, labelFormat: String? = nil, operation: Operation? = nil, value: Anything? = nil, impliedEdits: Edits0? = nil) {
            self.type = type
            self.start = start
            self.end = end
            self.size = size
            self.coloring = coloring
            self.showLines = showLines
            self.showLabels = showLabels
            self.labelFont = labelFont
            self.labelFormat = labelFormat
            self.operation = operation
            self.value = value
            self.impliedEdits = impliedEdits
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-contours) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-contours) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-contours)
    public var contours: Contours?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-line) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-line) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-line)
    public var line: Line0?

    /// Sets the hover text formatting rule using d3 formatting mini-languages which are very similar to those in Python. 
    ///
    /// See: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-zhoverformat) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-zhoverformat) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-zhoverformat)
    public var zHoverFormat: String?

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
    /// true`) are available. variable `z` Anything contained in tag `<extra>` is displayed in the
    /// secondary box, for example "<extra>{fullData.name}</extra>". To hide the secondary box
    /// completely, use an empty tag `<extra></extra>`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-hovertemplate) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-hovertemplate) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-hovertemplate)
    public var hoverTemplate: String?

    /// Determines whether or not the color domain is computed with respect to the input data (here in `z`) or the bounds set in `zmin` and `zmax`  Defaults to `false` when `zmin` and `zmax` are set by the user.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-zauto) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-zauto) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-zauto)
    public var zAuto: Bool?

    /// Sets the lower bound of the color domain. 
    ///
    /// Value should have the same units as in `z` and if set, `zmax` must be set as well.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-zmin) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-zmin) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-zmin)
    public var zMin: Double?

    /// Sets the upper bound of the color domain. 
    ///
    /// Value should have the same units as in `z` and if set, `zmin` must be set as well.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-zmax) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-zmax) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-zmax)
    public var zMax: Double?

    /// Sets the mid-point of the color domain by scaling `zmin` and/or `zmax` to be equidistant to this point. 
    ///
    /// Value should have the same units as in `z`. Has no effect when `zauto` is `false`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-zmid) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-zmid) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-zmid)
    public var zMiddle: Double?

    /// Sets the colorscale. 
    ///
    /// The colorscale must be an array containing arrays mapping a normalized value to an rgb, rgba,
    /// hex, hsl, hsv, or named color string. At minimum, a mapping for the lowest (0) and highest (1)
    /// values are required. For example, `[[0, 'rgb(0,0,255)'], [1, 'rgb(255,0,0)']]`. To control the
    /// bounds of the colorscale in color space, use`zmin` and `zmax`. Alternatively, `colorscale` may
    /// be a palette name string of the following list:
    /// Greys,YlGnBu,Greens,YlOrRd,Bluered,RdBu,Reds,Blues,Picnic,Rainbow,Portland,Jet,Hot,Blackbody,Earth,Electric,Viridis,Cividis.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-colorscale) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-colorscale) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-colorscale)
    public var colorScale: ColorScale?

    /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `colorscale`. 
    ///
    /// In case `colorscale` is unspecified or `autocolorscale` is true, the default palette will be
    /// chosen according to whether numbers in the `color` array are all positive, all negative or
    /// mixed.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-autocolorscale) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-autocolorscale) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-autocolorscale)
    public var autoColorScale: Bool?

    /// Reverses the color mapping if true. 
    ///
    /// If true, `zmin` will correspond to the last color in the array and `zmax` will correspond to the
    /// first color.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-reversescale) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-reversescale) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-reversescale)
    public var reverseScale: Bool?

    /// Determines whether or not a colorbar is displayed for this trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-showscale) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-showscale) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-showscale)
    public var showScale: Bool?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-colorbar) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-colorbar) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-colorbar)
    public var colorBar: ColorBar0?

    /// Sets a reference to a shared color axis. 
    ///
    /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
    /// for these shared color axes are set in the layout, under `layout.coloraxis`,
    /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-coloraxis) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-coloraxis) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-coloraxis)
    public var colorAxis: SubPlotID?

    /// Sets the calendar system to use with `x` date data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-xcalendar) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-xcalendar) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-xcalendar)
    public var xCalendar: Calendar0?

    /// Sets the calendar system to use with `y` date data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-ycalendar) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-ycalendar) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-ycalendar)
    public var yCalendar: Calendar0?

    /// Sets a reference between this trace's x coordinates and a 2D cartesian x axis. 
    ///
    /// If *x* (the default value), the x coordinates refer to `layout.xaxis`. If *x2*, the x
    /// coordinates refer to `layout.xaxis2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-xaxis) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-xaxis) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-xaxis)
    public var xAxis: SubPlotID?

    /// Sets a reference between this trace's y coordinates and a 2D cartesian y axis. 
    ///
    /// If *y* (the default value), the y coordinates refer to `layout.yaxis`. If *y2*, the y
    /// coordinates refer to `layout.yaxis2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-yaxis) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-yaxis) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-yaxis)
    public var yAxis: SubPlotID?

    /// Sets the source reference on plot.ly for  ids .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-idssrc) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-idssrc) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-idssrc)
    public var idsSource: String?

    /// Sets the source reference on plot.ly for  customdata .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-customdatasrc) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-customdatasrc) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-customdatasrc)
    public var customDataSource: String?

    /// Sets the source reference on plot.ly for  meta .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-metasrc) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-metasrc) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-metasrc)
    public var metaSource: String?

    /// Sets the source reference on plot.ly for  hoverinfo .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-hoverinfosrc) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-hoverinfosrc) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-hoverinfosrc)
    public var hoverInfoSource: String?

    /// Sets the source reference on plot.ly for  x .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-xsrc) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-xsrc) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-xsrc)
    public var xSource: String?

    /// Sets the source reference on plot.ly for  y .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-ysrc) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-ysrc) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-ysrc)
    public var ySource: String?

    /// Sets the source reference on plot.ly for  z .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-zsrc) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-zsrc) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-zsrc)
    public var zSource: String?

    /// Sets the source reference on plot.ly for  hovertemplate .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-hovertemplatesrc) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-hovertemplatesrc) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-hovertemplatesrc)
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
        case hoverInfo = "hoverinfo"
        case hoverLabel = "hoverlabel"
        case stream
        case transforms
        case uiRevision = "uirevision"
        case x
        case y
        case z
        case marker
        case normalization = "histnorm"
        case binningFunction = "histfunc"
        case xNumBins = "nbinsx"
        case xBins = "xbins"
        case yNumBins = "nbinsy"
        case yBins = "ybins"
        case xAutoBin = "autobinx"
        case yAutoBin = "autobiny"
        case binGroup = "bingroup"
        case xBinGroup = "xbingroup"
        case yBinGroup = "ybingroup"
        case autoContour = "autocontour"
        case nContours = "ncontours"
        case contours
        case line
        case zHoverFormat = "zhoverformat"
        case hoverTemplate = "hovertemplate"
        case zAuto = "zauto"
        case zMin = "zmin"
        case zMax = "zmax"
        case zMiddle = "zmid"
        case colorScale = "colorscale"
        case autoColorScale = "autocolorscale"
        case reverseScale = "reversescale"
        case showScale = "showscale"
        case colorBar = "colorbar"
        case colorAxis = "coloraxis"
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
        case zSource = "zsrc"
        case hoverTemplateSource = "hovertemplatesrc"
    }
    
    public init(visible: Visible0? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, hoverInfo: HoverInfo0? = nil, hoverLabel: HoverLabel0? = nil, stream: Stream0? = nil, transforms: Transforms0? = nil, uiRevision: Anything? = nil, x: [Double]? = nil, y: [Double]? = nil, z: [Double]? = nil, marker: Marker? = nil, normalization: Normalization? = nil, binningFunction: BinningFunction? = nil, xNumBins: Int? = nil, xBins: XBins? = nil, yNumBins: Int? = nil, yBins: YBins? = nil, xAutoBin: Bool? = nil, yAutoBin: Bool? = nil, binGroup: String? = nil, xBinGroup: String? = nil, yBinGroup: String? = nil, autoContour: Bool? = nil, nContours: Int? = nil, contours: Contours? = nil, line: Line0? = nil, zHoverFormat: String? = nil, hoverTemplate: String? = nil, zAuto: Bool? = nil, zMin: Double? = nil, zMax: Double? = nil, zMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: ColorBar0? = nil, colorAxis: SubPlotID? = nil, xCalendar: Calendar0? = nil, yCalendar: Calendar0? = nil, xAxis: SubPlotID? = nil, yAxis: SubPlotID? = nil, idsSource: String? = nil, customDataSource: String? = nil, metaSource: String? = nil, hoverInfoSource: String? = nil, xSource: String? = nil, ySource: String? = nil, zSource: String? = nil, hoverTemplateSource: String? = nil) {
        self.visible = visible
        self.showLegend = showLegend
        self.legendGroup = legendGroup
        self.opacity = opacity
        self.name = name
        self.uid = uid
        self.ids = ids
        self.customData = customData
        self.meta = meta
        self.hoverInfo = hoverInfo
        self.hoverLabel = hoverLabel
        self.stream = stream
        self.transforms = transforms
        self.uiRevision = uiRevision
        self.x = x
        self.y = y
        self.z = z
        self.marker = marker
        self.normalization = normalization
        self.binningFunction = binningFunction
        self.xNumBins = xNumBins
        self.xBins = xBins
        self.yNumBins = yNumBins
        self.yBins = yBins
        self.xAutoBin = xAutoBin
        self.yAutoBin = yAutoBin
        self.binGroup = binGroup
        self.xBinGroup = xBinGroup
        self.yBinGroup = yBinGroup
        self.autoContour = autoContour
        self.nContours = nContours
        self.contours = contours
        self.line = line
        self.zHoverFormat = zHoverFormat
        self.hoverTemplate = hoverTemplate
        self.zAuto = zAuto
        self.zMin = zMin
        self.zMax = zMax
        self.zMiddle = zMiddle
        self.colorScale = colorScale
        self.autoColorScale = autoColorScale
        self.reverseScale = reverseScale
        self.showScale = showScale
        self.colorBar = colorBar
        self.colorAxis = colorAxis
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
        self.zSource = zSource
        self.hoverTemplateSource = hoverTemplateSource
    }
}