/// The sample data from which statistics are computed is set in `x` and `y` (where `x` and `y` represent marginal distributions, binning is set in `xbins` and `ybins` in this case) or `z` (where `z` represent the 2D distribution and binning set, binning is set by `x` and `y` in this case). 
///
/// The resulting distribution is visualized as a heatmap.
public struct Histogram2D<XData, YData, ZData>: Trace where XData: Encodable, YData: Encodable, ZData: Encodable {
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#type) |
    /// [Python](https://plot.ly/python/reference/#type) |
    /// [R](https://plot.ly/r/reference/#type)
    public let type: String = "histogram2d"

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
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2d-visible) |
    /// [Python](https://plot.ly/python/reference/#histogram2d-visible) |
    /// [R](https://plot.ly/r/reference/#histogram2d-visible)
    public var visible: Shared.Visible?

    /// Sets the opacity of the trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2d-opacity) |
    /// [Python](https://plot.ly/python/reference/#histogram2d-opacity) |
    /// [R](https://plot.ly/r/reference/#histogram2d-opacity)
    public var opacity: Double?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2d-name) |
    /// [Python](https://plot.ly/python/reference/#histogram2d-name) |
    /// [R](https://plot.ly/r/reference/#histogram2d-name)
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2d-uid) |
    /// [Python](https://plot.ly/python/reference/#histogram2d-uid) |
    /// [R](https://plot.ly/r/reference/#histogram2d-uid)
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2d-ids) |
    /// [Python](https://plot.ly/python/reference/#histogram2d-ids) |
    /// [R](https://plot.ly/r/reference/#histogram2d-ids)
    public var ids: [Double]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2d-customdata) |
    /// [Python](https://plot.ly/python/reference/#histogram2d-customdata) |
    /// [R](https://plot.ly/r/reference/#histogram2d-customdata)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2d-meta) |
    /// [Python](https://plot.ly/python/reference/#histogram2d-meta) |
    /// [R](https://plot.ly/r/reference/#histogram2d-meta)
    public var meta: Anything?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2d-hoverinfo) |
    /// [Python](https://plot.ly/python/reference/#histogram2d-hoverinfo) |
    /// [R](https://plot.ly/r/reference/#histogram2d-hoverinfo)
    public var hoverInfo: Shared.HoverInfo?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2d-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#histogram2d-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#histogram2d-hoverlabel)
    public var hoverLabel: Shared.HoverLabel?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2d-stream) |
    /// [Python](https://plot.ly/python/reference/#histogram2d-stream) |
    /// [R](https://plot.ly/r/reference/#histogram2d-stream)
    public var stream: Shared.Stream?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2d-transforms) |
    /// [Python](https://plot.ly/python/reference/#histogram2d-transforms) |
    /// [R](https://plot.ly/r/reference/#histogram2d-transforms)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2d-uirevision) |
    /// [Python](https://plot.ly/python/reference/#histogram2d-uirevision) |
    /// [R](https://plot.ly/r/reference/#histogram2d-uirevision)
    public var uiRevision: Anything?

    /// Sets the sample data to be binned on the x axis.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2d-x) |
    /// [Python](https://plot.ly/python/reference/#histogram2d-x) |
    /// [R](https://plot.ly/r/reference/#histogram2d-x)
    public var x: XData?

    /// Sets the sample data to be binned on the y axis.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2d-y) |
    /// [Python](https://plot.ly/python/reference/#histogram2d-y) |
    /// [R](https://plot.ly/r/reference/#histogram2d-y)
    public var y: YData?

    /// Sets the aggregation data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2d-z) |
    /// [Python](https://plot.ly/python/reference/#histogram2d-z) |
    /// [R](https://plot.ly/r/reference/#histogram2d-z)
    public var z: ZData?

    /// # Used By
    /// `Histogram2D.marker` |
    public struct Marker: Encodable {
        /// Sets the aggregation data.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#histogram2d-marker-color) |
        /// [Python](https://plot.ly/python/reference/#histogram2d-marker-color) |
        /// [R](https://plot.ly/r/reference/#histogram2d-marker-color)
        public var color: [Double]?
    
        public init(color: [Double]? = nil) {
            self.color = color
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2d-marker) |
    /// [Python](https://plot.ly/python/reference/#histogram2d-marker) |
    /// [R](https://plot.ly/r/reference/#histogram2d-marker)
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
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2d-histnorm) |
    /// [Python](https://plot.ly/python/reference/#histogram2d-histnorm) |
    /// [R](https://plot.ly/r/reference/#histogram2d-histnorm)
    public var normalization: Shared.Normalization?

    /// Specifies the binning function used for this histogram trace. 
    ///
    /// If *count*, the histogram values are computed by counting the number of values lying inside each
    /// bin. If *sum*, *avg*, *min*, *max*, the histogram values are computed using the sum, the
    /// average, the minimum or the maximum of the values lying inside each bin respectively.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2d-histfunc) |
    /// [Python](https://plot.ly/python/reference/#histogram2d-histfunc) |
    /// [R](https://plot.ly/r/reference/#histogram2d-histfunc)
    public var binningFunction: Shared.BinningFunction?

    /// Specifies the maximum number of desired bins. 
    ///
    /// This value will be used in an algorithm that will decide the optimal bin size such that the
    /// histogram best visualizes the distribution of the data. Ignored if `xbins.size` is provided.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2d-nbinsx) |
    /// [Python](https://plot.ly/python/reference/#histogram2d-nbinsx) |
    /// [R](https://plot.ly/r/reference/#histogram2d-nbinsx)
    public var xNumBins: Int?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2d-xbins) |
    /// [Python](https://plot.ly/python/reference/#histogram2d-xbins) |
    /// [R](https://plot.ly/r/reference/#histogram2d-xbins)
    public var xBins: Shared.Bins?

    /// Specifies the maximum number of desired bins. 
    ///
    /// This value will be used in an algorithm that will decide the optimal bin size such that the
    /// histogram best visualizes the distribution of the data. Ignored if `ybins.size` is provided.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2d-nbinsy) |
    /// [Python](https://plot.ly/python/reference/#histogram2d-nbinsy) |
    /// [R](https://plot.ly/r/reference/#histogram2d-nbinsy)
    public var yNumBins: Int?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2d-ybins) |
    /// [Python](https://plot.ly/python/reference/#histogram2d-ybins) |
    /// [R](https://plot.ly/r/reference/#histogram2d-ybins)
    public var yBins: Shared.Bins?

    /// Obsolete: since v1.42 each bin attribute is auto-determined separately and `autobinx` is not needed. 
    ///
    /// However, we accept `autobinx: true` or `false` and will update `xbins` accordingly before
    /// deleting `autobinx` from the trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2d-autobinx) |
    /// [Python](https://plot.ly/python/reference/#histogram2d-autobinx) |
    /// [R](https://plot.ly/r/reference/#histogram2d-autobinx)
    public var xAutoBin: Bool?

    /// Obsolete: since v1.42 each bin attribute is auto-determined separately and `autobiny` is not needed. 
    ///
    /// However, we accept `autobiny: true` or `false` and will update `ybins` accordingly before
    /// deleting `autobiny` from the trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2d-autobiny) |
    /// [Python](https://plot.ly/python/reference/#histogram2d-autobiny) |
    /// [R](https://plot.ly/r/reference/#histogram2d-autobiny)
    public var yAutoBin: Bool?

    /// Set the `xbingroup` and `ybingroup` default prefix For example, setting a `bingroup` of *1* on two histogram2d traces will make them their x-bins and y-bins match separately.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2d-bingroup) |
    /// [Python](https://plot.ly/python/reference/#histogram2d-bingroup) |
    /// [R](https://plot.ly/r/reference/#histogram2d-bingroup)
    public var binGroup: String?

    /// Set a group of histogram traces which will have compatible x-bin settings. 
    ///
    /// Using `xbingroup`, histogram2d and histogram2dcontour traces (on axes of the same axis type) can
    /// have compatible x-bin settings. Note that the same `xbingroup` value can be used to set (1D)
    /// histogram `bingroup`
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2d-xbingroup) |
    /// [Python](https://plot.ly/python/reference/#histogram2d-xbingroup) |
    /// [R](https://plot.ly/r/reference/#histogram2d-xbingroup)
    public var xBinGroup: String?

    /// Set a group of histogram traces which will have compatible y-bin settings. 
    ///
    /// Using `ybingroup`, histogram2d and histogram2dcontour traces (on axes of the same axis type) can
    /// have compatible y-bin settings. Note that the same `ybingroup` value can be used to set (1D)
    /// histogram `bingroup`
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2d-ybingroup) |
    /// [Python](https://plot.ly/python/reference/#histogram2d-ybingroup) |
    /// [R](https://plot.ly/r/reference/#histogram2d-ybingroup)
    public var yBinGroup: String?

    /// Sets the horizontal gap (in pixels) between bricks.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2d-xgap) |
    /// [Python](https://plot.ly/python/reference/#histogram2d-xgap) |
    /// [R](https://plot.ly/r/reference/#histogram2d-xgap)
    public var xGap: Double?

    /// Sets the vertical gap (in pixels) between bricks.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2d-ygap) |
    /// [Python](https://plot.ly/python/reference/#histogram2d-ygap) |
    /// [R](https://plot.ly/r/reference/#histogram2d-ygap)
    public var yGap: Double?

    /// Picks a smoothing algorithm use to smooth `z` data.
    ///
    /// # Used By
    /// `Histogram2D.zSmooth` |
    public enum ZSmooth: String, Encodable {
        case fast
        case best
        case `false` = "false"
    }
    /// Picks a smoothing algorithm use to smooth `z` data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2d-zsmooth) |
    /// [Python](https://plot.ly/python/reference/#histogram2d-zsmooth) |
    /// [R](https://plot.ly/r/reference/#histogram2d-zsmooth)
    public var zSmooth: ZSmooth?

    /// Sets the hover text formatting rule using d3 formatting mini-languages which are very similar to those in Python. 
    ///
    /// See: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2d-zhoverformat) |
    /// [Python](https://plot.ly/python/reference/#histogram2d-zhoverformat) |
    /// [R](https://plot.ly/r/reference/#histogram2d-zhoverformat)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2d-hovertemplate) |
    /// [Python](https://plot.ly/python/reference/#histogram2d-hovertemplate) |
    /// [R](https://plot.ly/r/reference/#histogram2d-hovertemplate)
    public var hoverTemplate: ArrayOrString?

    /// Determines whether or not the color domain is computed with respect to the input data (here in `z`) or the bounds set in `zmin` and `zmax`  Defaults to `false` when `zmin` and `zmax` are set by the user.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2d-zauto) |
    /// [Python](https://plot.ly/python/reference/#histogram2d-zauto) |
    /// [R](https://plot.ly/r/reference/#histogram2d-zauto)
    public var zAuto: Bool?

    /// Sets the lower bound of the color domain. 
    ///
    /// Value should have the same units as in `z` and if set, `zmax` must be set as well.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2d-zmin) |
    /// [Python](https://plot.ly/python/reference/#histogram2d-zmin) |
    /// [R](https://plot.ly/r/reference/#histogram2d-zmin)
    public var zMin: Double?

    /// Sets the upper bound of the color domain. 
    ///
    /// Value should have the same units as in `z` and if set, `zmin` must be set as well.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2d-zmax) |
    /// [Python](https://plot.ly/python/reference/#histogram2d-zmax) |
    /// [R](https://plot.ly/r/reference/#histogram2d-zmax)
    public var zMax: Double?

    /// Sets the mid-point of the color domain by scaling `zmin` and/or `zmax` to be equidistant to this point. 
    ///
    /// Value should have the same units as in `z`. Has no effect when `zauto` is `false`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2d-zmid) |
    /// [Python](https://plot.ly/python/reference/#histogram2d-zmid) |
    /// [R](https://plot.ly/r/reference/#histogram2d-zmid)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2d-colorscale) |
    /// [Python](https://plot.ly/python/reference/#histogram2d-colorscale) |
    /// [R](https://plot.ly/r/reference/#histogram2d-colorscale)
    public var colorScale: ColorScale?

    /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `colorscale`. 
    ///
    /// In case `colorscale` is unspecified or `autocolorscale` is true, the default palette will be
    /// chosen according to whether numbers in the `color` array are all positive, all negative or
    /// mixed.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2d-autocolorscale) |
    /// [Python](https://plot.ly/python/reference/#histogram2d-autocolorscale) |
    /// [R](https://plot.ly/r/reference/#histogram2d-autocolorscale)
    public var autoColorScale: Bool?

    /// Reverses the color mapping if true. 
    ///
    /// If true, `zmin` will correspond to the last color in the array and `zmax` will correspond to the
    /// first color.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2d-reversescale) |
    /// [Python](https://plot.ly/python/reference/#histogram2d-reversescale) |
    /// [R](https://plot.ly/r/reference/#histogram2d-reversescale)
    public var reverseScale: Bool?

    /// Determines whether or not a colorbar is displayed for this trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2d-showscale) |
    /// [Python](https://plot.ly/python/reference/#histogram2d-showscale) |
    /// [R](https://plot.ly/r/reference/#histogram2d-showscale)
    public var showScale: Bool?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2d-colorbar) |
    /// [Python](https://plot.ly/python/reference/#histogram2d-colorbar) |
    /// [R](https://plot.ly/r/reference/#histogram2d-colorbar)
    public var colorBar: Shared.ColorBar?

    /// Sets a reference to a shared color axis. 
    ///
    /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
    /// for these shared color axes are set in the layout, under `layout.coloraxis`,
    /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2d-coloraxis) |
    /// [Python](https://plot.ly/python/reference/#histogram2d-coloraxis) |
    /// [R](https://plot.ly/r/reference/#histogram2d-coloraxis)
    public var colorAxis: SubPlotID?

    /// Sets the calendar system to use with `x` date data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2d-xcalendar) |
    /// [Python](https://plot.ly/python/reference/#histogram2d-xcalendar) |
    /// [R](https://plot.ly/r/reference/#histogram2d-xcalendar)
    public var xCalendar: Shared.Calendar?

    /// Sets the calendar system to use with `y` date data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2d-ycalendar) |
    /// [Python](https://plot.ly/python/reference/#histogram2d-ycalendar) |
    /// [R](https://plot.ly/r/reference/#histogram2d-ycalendar)
    public var yCalendar: Shared.Calendar?

    /// Sets a reference between this trace's x coordinates and a 2D cartesian x axis. 
    ///
    /// If *x* (the default value), the x coordinates refer to `layout.xaxis`. If *x2*, the x
    /// coordinates refer to `layout.xaxis2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2d-xaxis) |
    /// [Python](https://plot.ly/python/reference/#histogram2d-xaxis) |
    /// [R](https://plot.ly/r/reference/#histogram2d-xaxis)
    public var xAxis: SubPlotID?

    /// Sets a reference between this trace's y coordinates and a 2D cartesian y axis. 
    ///
    /// If *y* (the default value), the y coordinates refer to `layout.yaxis`. If *y2*, the y
    /// coordinates refer to `layout.yaxis2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2d-yaxis) |
    /// [Python](https://plot.ly/python/reference/#histogram2d-yaxis) |
    /// [R](https://plot.ly/r/reference/#histogram2d-yaxis)
    public var yAxis: SubPlotID?

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
        case xGap = "xgap"
        case yGap = "ygap"
        case zSmooth = "zsmooth"
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
    }
    
    public init(visible: Shared.Visible? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, hoverInfo: Shared.HoverInfo? = nil, hoverLabel: Shared.HoverLabel? = nil, stream: Shared.Stream? = nil, transforms: [Shared.Transform]? = nil, uiRevision: Anything? = nil, x: XData? = nil, y: YData? = nil, z: ZData? = nil, marker: Marker? = nil, normalization: Shared.Normalization? = nil, binningFunction: Shared.BinningFunction? = nil, xNumBins: Int? = nil, xBins: Shared.Bins? = nil, yNumBins: Int? = nil, yBins: Shared.Bins? = nil, xAutoBin: Bool? = nil, yAutoBin: Bool? = nil, binGroup: String? = nil, xBinGroup: String? = nil, yBinGroup: String? = nil, xGap: Double? = nil, yGap: Double? = nil, zSmooth: ZSmooth? = nil, zHoverFormat: String? = nil, hoverTemplate: ArrayOrString? = nil, zAuto: Bool? = nil, zMin: Double? = nil, zMax: Double? = nil, zMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: Shared.ColorBar? = nil, colorAxis: SubPlotID? = nil, xCalendar: Shared.Calendar? = nil, yCalendar: Shared.Calendar? = nil, xAxis: SubPlotID? = nil, yAxis: SubPlotID? = nil) {
        self.visible = visible
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
        self.xGap = xGap
        self.yGap = yGap
        self.zSmooth = zSmooth
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
    }
}