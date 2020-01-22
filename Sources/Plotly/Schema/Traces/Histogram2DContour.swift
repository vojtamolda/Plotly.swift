/// The sample data from which statistics are computed is set in `x` and `y` (where `x` and `y` represent marginal distributions, binning is set in `xbins` and `ybins` in this case) or `z` (where `z` represent the 2D distribution and binning set, binning is set by `x` and `y` in this case). 
///
/// The resulting distribution is visualized as a contour plot.
public struct Histogram2DContour<XData, YData, ZData>: Trace where XData: Encodable, YData: Encodable, ZData: Encodable {
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
    public var visible: Shared.Visible?

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
    public var hoverInfo: Shared.HoverInfo?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-hoverlabel)
    public var hoverLabel: Shared.HoverLabel?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-stream) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-stream) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-stream)
    public var stream: Shared.Stream?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-transforms) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-transforms) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-transforms)
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
    public var x: XData?

    /// Sets the sample data to be binned on the y axis.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-y) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-y) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-y)
    public var y: YData?

    /// Sets the aggregation data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-z) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-z) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-z)
    public var z: ZData?

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
    
        public init(color: [Double]? = nil) {
            self.color = color
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
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-histnorm) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-histnorm) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-histnorm)
    public var normalization: Shared.Normalization?

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
    public var binningFunction: Shared.BinningFunction?

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
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-xbins) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-xbins) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-xbins)
    public var xBins: Shared.Bins?

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
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-ybins) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-ybins) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-ybins)
    public var yBins: Shared.Bins?

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
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-contours) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-contours) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-contours)
    public var contours: Shared.Contours?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-line) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-line) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-line)
    public var line: Shared.SmoothedDashedLine?

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
    public var hoverTemplate: ArrayOrString?

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
    public var colorBar: Shared.ColorBar?

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
    public var xCalendar: Shared.Calendar?

    /// Sets the calendar system to use with `y` date data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#histogram2dcontour-ycalendar) |
    /// [Python](https://plot.ly/python/reference/#histogram2dcontour-ycalendar) |
    /// [R](https://plot.ly/r/reference/#histogram2dcontour-ycalendar)
    public var yCalendar: Shared.Calendar?

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
    }
    
    public init(visible: Shared.Visible? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, hoverInfo: Shared.HoverInfo? = nil, hoverLabel: Shared.HoverLabel? = nil, stream: Shared.Stream? = nil, transforms: [Shared.Transform]? = nil, uiRevision: Anything? = nil, x: XData? = nil, y: YData? = nil, z: ZData? = nil, marker: Marker? = nil, normalization: Shared.Normalization? = nil, binningFunction: Shared.BinningFunction? = nil, xNumBins: Int? = nil, xBins: Shared.Bins? = nil, yNumBins: Int? = nil, yBins: Shared.Bins? = nil, xAutoBin: Bool? = nil, yAutoBin: Bool? = nil, binGroup: String? = nil, xBinGroup: String? = nil, yBinGroup: String? = nil, autoContour: Bool? = nil, nContours: Int? = nil, contours: Shared.Contours? = nil, line: Shared.SmoothedDashedLine? = nil, zHoverFormat: String? = nil, hoverTemplate: ArrayOrString? = nil, zAuto: Bool? = nil, zMin: Double? = nil, zMax: Double? = nil, zMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: Shared.ColorBar? = nil, colorAxis: SubPlotID? = nil, xCalendar: Shared.Calendar? = nil, yCalendar: Shared.Calendar? = nil, xAxis: SubPlotID? = nil, yAxis: SubPlotID? = nil) {
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
    }
}