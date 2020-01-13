/// The data from which contour lines are computed is set in `z`. 
///
/// Data in `z` must be a {2D array} of numbers. Say that `z` has N rows and M columns, then by
/// default, these N rows correspond to N y coordinates (set in `y` or auto-generated) and the M
/// columns correspond to M x coordinates (set in `x` or auto-generated). By setting `transpose` to
/// *true*, the above behavior is flipped.
public struct Contour: Trace {
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#type) |
    /// [Python](https://plot.ly/python/reference/#type) |
    /// [R](https://plot.ly/r/reference/#type)
    public let type: String = "contour"

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
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-visible) |
    /// [Python](https://plot.ly/python/reference/#contour-visible) |
    /// [R](https://plot.ly/r/reference/#contour-visible)
    public var visible: Visible0?

    /// Determines whether or not an item corresponding to this trace is shown in the legend.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-showlegend) |
    /// [Python](https://plot.ly/python/reference/#contour-showlegend) |
    /// [R](https://plot.ly/r/reference/#contour-showlegend)
    public var showLegend: Bool?

    /// Sets the legend group for this trace. 
    ///
    /// Traces part of the same legend group hide/show at the same time when toggling legend items.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-legendgroup) |
    /// [Python](https://plot.ly/python/reference/#contour-legendgroup) |
    /// [R](https://plot.ly/r/reference/#contour-legendgroup)
    public var legendGroup: String?

    /// Sets the opacity of the trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-opacity) |
    /// [Python](https://plot.ly/python/reference/#contour-opacity) |
    /// [R](https://plot.ly/r/reference/#contour-opacity)
    public var opacity: Double?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-name) |
    /// [Python](https://plot.ly/python/reference/#contour-name) |
    /// [R](https://plot.ly/r/reference/#contour-name)
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-uid) |
    /// [Python](https://plot.ly/python/reference/#contour-uid) |
    /// [R](https://plot.ly/r/reference/#contour-uid)
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-ids) |
    /// [Python](https://plot.ly/python/reference/#contour-ids) |
    /// [R](https://plot.ly/r/reference/#contour-ids)
    public var ids: [Double]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-customdata) |
    /// [Python](https://plot.ly/python/reference/#contour-customdata) |
    /// [R](https://plot.ly/r/reference/#contour-customdata)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-meta) |
    /// [Python](https://plot.ly/python/reference/#contour-meta) |
    /// [R](https://plot.ly/r/reference/#contour-meta)
    public var meta: Anything?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-hoverinfo) |
    /// [Python](https://plot.ly/python/reference/#contour-hoverinfo) |
    /// [R](https://plot.ly/r/reference/#contour-hoverinfo)
    public var hoverInfo: HoverInfo0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#contour-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#contour-hoverlabel)
    public var hoverLabel: HoverLabel0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-stream) |
    /// [Python](https://plot.ly/python/reference/#contour-stream) |
    /// [R](https://plot.ly/r/reference/#contour-stream)
    public var stream: Stream0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-transforms) |
    /// [Python](https://plot.ly/python/reference/#contour-transforms) |
    /// [R](https://plot.ly/r/reference/#contour-transforms)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-uirevision) |
    /// [Python](https://plot.ly/python/reference/#contour-uirevision) |
    /// [R](https://plot.ly/r/reference/#contour-uirevision)
    public var uiRevision: Anything?

    /// Sets the z data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-z) |
    /// [Python](https://plot.ly/python/reference/#contour-z) |
    /// [R](https://plot.ly/r/reference/#contour-z)
    public var z: [Double]?

    /// Sets the x coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-x) |
    /// [Python](https://plot.ly/python/reference/#contour-x) |
    /// [R](https://plot.ly/r/reference/#contour-x)
    public var x: [Double]?

    /// Alternate to `x`. 
    ///
    /// Builds a linear space of x coordinates. Use with `dx` where `x0` is the starting coordinate and
    /// `dx` the step.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-x0) |
    /// [Python](https://plot.ly/python/reference/#contour-x0) |
    /// [R](https://plot.ly/r/reference/#contour-x0)
    public var x0: Anything?

    /// Sets the x coordinate step. 
    ///
    /// See `x0` for more info.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-dx) |
    /// [Python](https://plot.ly/python/reference/#contour-dx) |
    /// [R](https://plot.ly/r/reference/#contour-dx)
    public var dx: Double?

    /// Sets the y coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-y) |
    /// [Python](https://plot.ly/python/reference/#contour-y) |
    /// [R](https://plot.ly/r/reference/#contour-y)
    public var y: [Double]?

    /// Alternate to `y`. 
    ///
    /// Builds a linear space of y coordinates. Use with `dy` where `y0` is the starting coordinate and
    /// `dy` the step.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-y0) |
    /// [Python](https://plot.ly/python/reference/#contour-y0) |
    /// [R](https://plot.ly/r/reference/#contour-y0)
    public var y0: Anything?

    /// Sets the y coordinate step. 
    ///
    /// See `y0` for more info.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-dy) |
    /// [Python](https://plot.ly/python/reference/#contour-dy) |
    /// [R](https://plot.ly/r/reference/#contour-dy)
    public var dy: Double?

    /// Sets the text elements associated with each z value.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-text) |
    /// [Python](https://plot.ly/python/reference/#contour-text) |
    /// [R](https://plot.ly/r/reference/#contour-text)
    public var text: [Double]?

    /// Same as `text`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-hovertext) |
    /// [Python](https://plot.ly/python/reference/#contour-hovertext) |
    /// [R](https://plot.ly/r/reference/#contour-hovertext)
    public var hoverText: [Double]?

    /// Transposes the z data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-transpose) |
    /// [Python](https://plot.ly/python/reference/#contour-transpose) |
    /// [R](https://plot.ly/r/reference/#contour-transpose)
    public var transpose: Bool?

    /// If *array*, the heatmap's x coordinates are given by *x* (the default behavior when `x` is provided). 
    ///
    /// If *scaled*, the heatmap's x coordinates are given by *x0* and *dx* (the default behavior when
    /// `x` is not provided).
    ///
    /// # Used By
    /// `Contour.xType` |
    public enum XType: String, Encodable {
        case array
        case scaled
    }
    /// If *array*, the heatmap's x coordinates are given by *x* (the default behavior when `x` is provided). 
    ///
    /// If *scaled*, the heatmap's x coordinates are given by *x0* and *dx* (the default behavior when
    /// `x` is not provided).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-xtype) |
    /// [Python](https://plot.ly/python/reference/#contour-xtype) |
    /// [R](https://plot.ly/r/reference/#contour-xtype)
    public var xType: XType?

    /// If *array*, the heatmap's y coordinates are given by *y* (the default behavior when `y` is provided) If *scaled*, the heatmap's y coordinates are given by *y0* and *dy* (the default behavior when `y` is not provided)
    ///
    /// # Used By
    /// `Contour.yType` |
    public enum YType: String, Encodable {
        case array
        case scaled
    }
    /// If *array*, the heatmap's y coordinates are given by *y* (the default behavior when `y` is provided) If *scaled*, the heatmap's y coordinates are given by *y0* and *dy* (the default behavior when `y` is not provided)
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-ytype) |
    /// [Python](https://plot.ly/python/reference/#contour-ytype) |
    /// [R](https://plot.ly/r/reference/#contour-ytype)
    public var yType: YType?

    /// Sets the hover text formatting rule using d3 formatting mini-languages which are very similar to those in Python. 
    ///
    /// See: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-zhoverformat) |
    /// [Python](https://plot.ly/python/reference/#contour-zhoverformat) |
    /// [R](https://plot.ly/r/reference/#contour-zhoverformat)
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
    /// true`) are available. Anything contained in tag `<extra>` is displayed in the secondary box, for
    /// example "<extra>{fullData.name}</extra>". To hide the secondary box completely, use an empty tag
    /// `<extra></extra>`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-hovertemplate) |
    /// [Python](https://plot.ly/python/reference/#contour-hovertemplate) |
    /// [R](https://plot.ly/r/reference/#contour-hovertemplate)
    public var hoverTemplate: String?

    /// Determines whether or not gaps (i.e. 
    ///
    /// {nan} or missing values) in the `z` data have hover labels associated with them.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-hoverongaps) |
    /// [Python](https://plot.ly/python/reference/#contour-hoverongaps) |
    /// [R](https://plot.ly/r/reference/#contour-hoverongaps)
    public var hoverOnGaps: Bool?

    /// Determines whether or not gaps (i.e. 
    ///
    /// {nan} or missing values) in the `z` data are filled in. It is defaulted to true if `z` is a one
    /// dimensional array otherwise it is defaulted to false.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-connectgaps) |
    /// [Python](https://plot.ly/python/reference/#contour-connectgaps) |
    /// [R](https://plot.ly/r/reference/#contour-connectgaps)
    public var connectGaps: Bool?

    /// Sets the fill color if `contours.type` is *constraint*. 
    ///
    /// Defaults to a half-transparent variant of the line color, marker color, or marker line color,
    /// whichever is available.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-fillcolor) |
    /// [Python](https://plot.ly/python/reference/#contour-fillcolor) |
    /// [R](https://plot.ly/r/reference/#contour-fillcolor)
    public var fillColor: Color?

    /// Determines whether or not the contour level attributes are picked by an algorithm. 
    ///
    /// If *true*, the number of contour levels can be set in `ncontours`. If *false*, set the contour
    /// level attributes in `contours`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-autocontour) |
    /// [Python](https://plot.ly/python/reference/#contour-autocontour) |
    /// [R](https://plot.ly/r/reference/#contour-autocontour)
    public var autoContour: Bool?

    /// Sets the maximum number of contour levels. 
    ///
    /// The actual number of contours will be chosen automatically to be less than or equal to the value
    /// of `ncontours`. Has an effect only if `autocontour` is *true* or if `contours.size` is missing.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-ncontours) |
    /// [Python](https://plot.ly/python/reference/#contour-ncontours) |
    /// [R](https://plot.ly/r/reference/#contour-ncontours)
    public var nContours: Int?

    ///
    /// # Used By
    /// `Contour.contours` |
    public struct Contours: Encodable {
        /// If `levels`, the data is represented as a contour plot with multiple levels displayed. 
        ///
        /// If `constraint`, the data is represented as constraints with the invalid region shaded as
        /// specified by the `operation` and `value` parameters.
        ///
        /// # Used By
        /// `Contour.Contours.type` |
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
        /// [JavaScript](https://plot.ly/javascript/reference/#contour-contours-type) |
        /// [Python](https://plot.ly/python/reference/#contour-contours-type) |
        /// [R](https://plot.ly/r/reference/#contour-contours-type)
        public var type: Rule?
    
        /// Sets the starting contour level value. 
        ///
        /// Must be less than `contours.end`
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#contour-contours-start) |
        /// [Python](https://plot.ly/python/reference/#contour-contours-start) |
        /// [R](https://plot.ly/r/reference/#contour-contours-start)
        public var start: Double?
    
        /// Sets the end contour level value. 
        ///
        /// Must be more than `contours.start`
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#contour-contours-end) |
        /// [Python](https://plot.ly/python/reference/#contour-contours-end) |
        /// [R](https://plot.ly/r/reference/#contour-contours-end)
        public var end: Double?
    
        /// Sets the step between each contour level. 
        ///
        /// Must be positive.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#contour-contours-size) |
        /// [Python](https://plot.ly/python/reference/#contour-contours-size) |
        /// [R](https://plot.ly/r/reference/#contour-contours-size)
        public var size: Double?
    
        /// Determines the coloring method showing the contour values. 
        ///
        /// If *fill*, coloring is done evenly between each contour level If *heatmap*, a heatmap gradient
        /// coloring is applied between each contour level. If *lines*, coloring is done on the contour
        /// lines. If *none*, no coloring is applied on this trace.
        ///
        /// # Used By
        /// `Contour.Contours.coloring` |
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
        /// [JavaScript](https://plot.ly/javascript/reference/#contour-contours-coloring) |
        /// [Python](https://plot.ly/python/reference/#contour-contours-coloring) |
        /// [R](https://plot.ly/r/reference/#contour-contours-coloring)
        public var coloring: Coloring?
    
        /// Determines whether or not the contour lines are drawn. 
        ///
        /// Has an effect only if `contours.coloring` is set to *fill*.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#contour-contours-showlines) |
        /// [Python](https://plot.ly/python/reference/#contour-contours-showlines) |
        /// [R](https://plot.ly/r/reference/#contour-contours-showlines)
        public var showLines: Bool?
    
        /// Determines whether to label the contour lines with their values.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#contour-contours-showlabels) |
        /// [Python](https://plot.ly/python/reference/#contour-contours-showlabels) |
        /// [R](https://plot.ly/r/reference/#contour-contours-showlabels)
        public var showLabels: Bool?
    
        /// Sets the font used for labeling the contour levels. 
        ///
        /// The default color comes from the lines, if shown. The default family and size come from
        /// `layout.font`.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#contour-contours-labelfont) |
        /// [Python](https://plot.ly/python/reference/#contour-contours-labelfont) |
        /// [R](https://plot.ly/r/reference/#contour-contours-labelfont)
        public var labelFont: Font0?
    
        /// Sets the contour label formatting rule using d3 formatting mini-language which is very similar to Python, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#contour-contours-labelformat) |
        /// [Python](https://plot.ly/python/reference/#contour-contours-labelformat) |
        /// [R](https://plot.ly/r/reference/#contour-contours-labelformat)
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
        /// `Contour.Contours.operation` |
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
        /// [JavaScript](https://plot.ly/javascript/reference/#contour-contours-operation) |
        /// [Python](https://plot.ly/python/reference/#contour-contours-operation) |
        /// [R](https://plot.ly/r/reference/#contour-contours-operation)
        public var operation: Operation?
    
        /// Sets the value or values of the constraint boundary. 
        ///
        /// When `operation` is set to one of the comparison values (=,<,>=,>,<=) *value* is expected to be
        /// a number. When `operation` is set to one of the interval values ([],(),[),(],][,)(,](,)[)
        /// *value* is expected to be an array of two numbers where the first is the lower bound and the
        /// second is the upper bound.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#contour-contours-value) |
        /// [Python](https://plot.ly/python/reference/#contour-contours-value) |
        /// [R](https://plot.ly/r/reference/#contour-contours-value)
        public var value: Anything?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#contour-contours-impliedEdits) |
        /// [Python](https://plot.ly/python/reference/#contour-contours-impliedEdits) |
        /// [R](https://plot.ly/r/reference/#contour-contours-impliedEdits)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-contours) |
    /// [Python](https://plot.ly/python/reference/#contour-contours) |
    /// [R](https://plot.ly/r/reference/#contour-contours)
    public var contours: Contours?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-line) |
    /// [Python](https://plot.ly/python/reference/#contour-line) |
    /// [R](https://plot.ly/r/reference/#contour-line)
    public var line: Line0?

    /// Determines whether or not the color domain is computed with respect to the input data (here in `z`) or the bounds set in `zmin` and `zmax`  Defaults to `false` when `zmin` and `zmax` are set by the user.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-zauto) |
    /// [Python](https://plot.ly/python/reference/#contour-zauto) |
    /// [R](https://plot.ly/r/reference/#contour-zauto)
    public var zAuto: Bool?

    /// Sets the lower bound of the color domain. 
    ///
    /// Value should have the same units as in `z` and if set, `zmax` must be set as well.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-zmin) |
    /// [Python](https://plot.ly/python/reference/#contour-zmin) |
    /// [R](https://plot.ly/r/reference/#contour-zmin)
    public var zMin: Double?

    /// Sets the upper bound of the color domain. 
    ///
    /// Value should have the same units as in `z` and if set, `zmin` must be set as well.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-zmax) |
    /// [Python](https://plot.ly/python/reference/#contour-zmax) |
    /// [R](https://plot.ly/r/reference/#contour-zmax)
    public var zMax: Double?

    /// Sets the mid-point of the color domain by scaling `zmin` and/or `zmax` to be equidistant to this point. 
    ///
    /// Value should have the same units as in `z`. Has no effect when `zauto` is `false`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-zmid) |
    /// [Python](https://plot.ly/python/reference/#contour-zmid) |
    /// [R](https://plot.ly/r/reference/#contour-zmid)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-colorscale) |
    /// [Python](https://plot.ly/python/reference/#contour-colorscale) |
    /// [R](https://plot.ly/r/reference/#contour-colorscale)
    public var colorScale: ColorScale?

    /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `colorscale`. 
    ///
    /// In case `colorscale` is unspecified or `autocolorscale` is true, the default palette will be
    /// chosen according to whether numbers in the `color` array are all positive, all negative or
    /// mixed.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-autocolorscale) |
    /// [Python](https://plot.ly/python/reference/#contour-autocolorscale) |
    /// [R](https://plot.ly/r/reference/#contour-autocolorscale)
    public var autoColorScale: Bool?

    /// Reverses the color mapping if true. 
    ///
    /// If true, `zmin` will correspond to the last color in the array and `zmax` will correspond to the
    /// first color.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-reversescale) |
    /// [Python](https://plot.ly/python/reference/#contour-reversescale) |
    /// [R](https://plot.ly/r/reference/#contour-reversescale)
    public var reverseScale: Bool?

    /// Determines whether or not a colorbar is displayed for this trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-showscale) |
    /// [Python](https://plot.ly/python/reference/#contour-showscale) |
    /// [R](https://plot.ly/r/reference/#contour-showscale)
    public var showScale: Bool?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-colorbar) |
    /// [Python](https://plot.ly/python/reference/#contour-colorbar) |
    /// [R](https://plot.ly/r/reference/#contour-colorbar)
    public var colorBar: ColorBar0?

    /// Sets a reference to a shared color axis. 
    ///
    /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
    /// for these shared color axes are set in the layout, under `layout.coloraxis`,
    /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-coloraxis) |
    /// [Python](https://plot.ly/python/reference/#contour-coloraxis) |
    /// [R](https://plot.ly/r/reference/#contour-coloraxis)
    public var colorAxis: SubPlotID?

    /// Sets the calendar system to use with `x` date data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-xcalendar) |
    /// [Python](https://plot.ly/python/reference/#contour-xcalendar) |
    /// [R](https://plot.ly/r/reference/#contour-xcalendar)
    public var xCalendar: Calendar0?

    /// Sets the calendar system to use with `y` date data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-ycalendar) |
    /// [Python](https://plot.ly/python/reference/#contour-ycalendar) |
    /// [R](https://plot.ly/r/reference/#contour-ycalendar)
    public var yCalendar: Calendar0?

    /// Sets a reference between this trace's x coordinates and a 2D cartesian x axis. 
    ///
    /// If *x* (the default value), the x coordinates refer to `layout.xaxis`. If *x2*, the x
    /// coordinates refer to `layout.xaxis2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-xaxis) |
    /// [Python](https://plot.ly/python/reference/#contour-xaxis) |
    /// [R](https://plot.ly/r/reference/#contour-xaxis)
    public var xAxis: SubPlotID?

    /// Sets a reference between this trace's y coordinates and a 2D cartesian y axis. 
    ///
    /// If *y* (the default value), the y coordinates refer to `layout.yaxis`. If *y2*, the y
    /// coordinates refer to `layout.yaxis2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-yaxis) |
    /// [Python](https://plot.ly/python/reference/#contour-yaxis) |
    /// [R](https://plot.ly/r/reference/#contour-yaxis)
    public var yAxis: SubPlotID?

    /// Sets the source reference on plot.ly for  ids .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-idssrc) |
    /// [Python](https://plot.ly/python/reference/#contour-idssrc) |
    /// [R](https://plot.ly/r/reference/#contour-idssrc)
    public var idsSource: String?

    /// Sets the source reference on plot.ly for  customdata .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-customdatasrc) |
    /// [Python](https://plot.ly/python/reference/#contour-customdatasrc) |
    /// [R](https://plot.ly/r/reference/#contour-customdatasrc)
    public var customDataSource: String?

    /// Sets the source reference on plot.ly for  meta .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-metasrc) |
    /// [Python](https://plot.ly/python/reference/#contour-metasrc) |
    /// [R](https://plot.ly/r/reference/#contour-metasrc)
    public var metaSource: String?

    /// Sets the source reference on plot.ly for  hoverinfo .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-hoverinfosrc) |
    /// [Python](https://plot.ly/python/reference/#contour-hoverinfosrc) |
    /// [R](https://plot.ly/r/reference/#contour-hoverinfosrc)
    public var hoverInfoSource: String?

    /// Sets the source reference on plot.ly for  z .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-zsrc) |
    /// [Python](https://plot.ly/python/reference/#contour-zsrc) |
    /// [R](https://plot.ly/r/reference/#contour-zsrc)
    public var zSource: String?

    /// Sets the source reference on plot.ly for  x .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-xsrc) |
    /// [Python](https://plot.ly/python/reference/#contour-xsrc) |
    /// [R](https://plot.ly/r/reference/#contour-xsrc)
    public var xSource: String?

    /// Sets the source reference on plot.ly for  y .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-ysrc) |
    /// [Python](https://plot.ly/python/reference/#contour-ysrc) |
    /// [R](https://plot.ly/r/reference/#contour-ysrc)
    public var ySource: String?

    /// Sets the source reference on plot.ly for  text .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-textsrc) |
    /// [Python](https://plot.ly/python/reference/#contour-textsrc) |
    /// [R](https://plot.ly/r/reference/#contour-textsrc)
    public var textSource: String?

    /// Sets the source reference on plot.ly for  hovertext .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-hovertextsrc) |
    /// [Python](https://plot.ly/python/reference/#contour-hovertextsrc) |
    /// [R](https://plot.ly/r/reference/#contour-hovertextsrc)
    public var hoverTextSource: String?

    /// Sets the source reference on plot.ly for  hovertemplate .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#contour-hovertemplatesrc) |
    /// [Python](https://plot.ly/python/reference/#contour-hovertemplatesrc) |
    /// [R](https://plot.ly/r/reference/#contour-hovertemplatesrc)
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
        case z
        case x
        case x0
        case dx
        case y
        case y0
        case dy
        case text
        case hoverText = "hovertext"
        case transpose
        case xType = "xtype"
        case yType = "ytype"
        case zHoverFormat = "zhoverformat"
        case hoverTemplate = "hovertemplate"
        case hoverOnGaps = "hoverongaps"
        case connectGaps = "connectgaps"
        case fillColor = "fillcolor"
        case autoContour = "autocontour"
        case nContours = "ncontours"
        case contours
        case line
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
        case zSource = "zsrc"
        case xSource = "xsrc"
        case ySource = "ysrc"
        case textSource = "textsrc"
        case hoverTextSource = "hovertextsrc"
        case hoverTemplateSource = "hovertemplatesrc"
    }
    
    public init(visible: Visible0? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, hoverInfo: HoverInfo0? = nil, hoverLabel: HoverLabel0? = nil, stream: Stream0? = nil, transforms: Transforms0? = nil, uiRevision: Anything? = nil, z: [Double]? = nil, x: [Double]? = nil, x0: Anything? = nil, dx: Double? = nil, y: [Double]? = nil, y0: Anything? = nil, dy: Double? = nil, text: [Double]? = nil, hoverText: [Double]? = nil, transpose: Bool? = nil, xType: XType? = nil, yType: YType? = nil, zHoverFormat: String? = nil, hoverTemplate: String? = nil, hoverOnGaps: Bool? = nil, connectGaps: Bool? = nil, fillColor: Color? = nil, autoContour: Bool? = nil, nContours: Int? = nil, contours: Contours? = nil, line: Line0? = nil, zAuto: Bool? = nil, zMin: Double? = nil, zMax: Double? = nil, zMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: ColorBar0? = nil, colorAxis: SubPlotID? = nil, xCalendar: Calendar0? = nil, yCalendar: Calendar0? = nil, xAxis: SubPlotID? = nil, yAxis: SubPlotID? = nil, idsSource: String? = nil, customDataSource: String? = nil, metaSource: String? = nil, hoverInfoSource: String? = nil, zSource: String? = nil, xSource: String? = nil, ySource: String? = nil, textSource: String? = nil, hoverTextSource: String? = nil, hoverTemplateSource: String? = nil) {
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
        self.z = z
        self.x = x
        self.x0 = x0
        self.dx = dx
        self.y = y
        self.y0 = y0
        self.dy = dy
        self.text = text
        self.hoverText = hoverText
        self.transpose = transpose
        self.xType = xType
        self.yType = yType
        self.zHoverFormat = zHoverFormat
        self.hoverTemplate = hoverTemplate
        self.hoverOnGaps = hoverOnGaps
        self.connectGaps = connectGaps
        self.fillColor = fillColor
        self.autoContour = autoContour
        self.nContours = nContours
        self.contours = contours
        self.line = line
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
        self.zSource = zSource
        self.xSource = xSource
        self.ySource = ySource
        self.textSource = textSource
        self.hoverTextSource = hoverTextSource
        self.hoverTemplateSource = hoverTemplateSource
    }
}