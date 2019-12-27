/// In vertical (horizontal) violin plots, statistics are computed using `y` (`x`) values. 
///
/// By supplying an `x` (`y`) array, one violin per distinct x (y) value is drawn If no `x` (`y`)
/// {array} is provided, a single violin is drawn. That violin position is then positioned with with
/// `name` or with `x0` (`y0`) if provided.
public struct Violin: Trace {
    public let type: String = "violin"

    public let animatable: Bool = false

    public var visible: Visible0?

    /// Determines whether or not an item corresponding to this trace is shown in the legend.
    public var showLegend: Bool?

    /// Sets the legend group for this trace. 
    ///
    /// Traces part of the same legend group hide/show at the same time when toggling legend items.
    public var legendGroup: String?

    /// Sets the opacity of the trace.
    public var opacity: Double?

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

    /// Array containing integer indices of selected points. 
    ///
    /// Has an effect only for traces that support selections. Note that an empty array means an empty
    /// selection where the `unselected` are turned on for all points, whereas, any other non-array
    /// values means no selection all where the `selected` and `unselected` styles have no effect.
    public var selectedPoints: Anything?

    public var hoverInfo: HoverInfo1?

    public var hoverLabel: HoverLabel1?

    public var stream: Stream0?

    public var transforms: TickFormatStops0?

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

    /// Sets the y sample data or coordinates. 
    ///
    /// See overview for more info.
    public var y: [Double]?

    /// Sets the x sample data or coordinates. 
    ///
    /// See overview for more info.
    public var x: [Double]?

    /// Sets the x coordinate of the box. 
    ///
    /// See overview for more info.
    public var x0: Anything?

    /// Sets the y coordinate of the box. 
    ///
    /// See overview for more info.
    public var y0: Anything?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover. For violin traces, the name will also be
    /// used for the position coordinate, if `x` and `x0` (`y` and `y0` if horizontal) are missing and
    /// the position axis is categorical. Note that the trace name is also used as a default value for
    /// attribute `scalegroup` (please see its description for details).
    public var name: String?

    public var orientation: Orientation0?

    /// Sets the bandwidth used to compute the kernel density estimate. 
    ///
    /// By default, the bandwidth is determined by Silverman's rule of thumb.
    public var bandwidth: Double?

    /// If there are multiple violins that should be sized according to to some metric (see `scalemode`), link them by providing a non-empty group id here shared by every trace in the same group. 
    ///
    /// If a violin's `width` is undefined, `scalegroup` will default to the trace's name. In this case,
    /// violins with the same names will be linked together
    public var scaleGroup: String?

    /// Sets the metric by which the width of each violin is determined.*width* means each violin has the same (max) width*count* means the violins are scaled by the number of sample points makingup each violin.
    /// - traces/violin/attributes/scalemode
    public enum ScaleMode: String, Encodable {
        case width
        case count
    }
    public var scaleMode: ScaleMode?

    /// Sets the method by which the span in data space where the density function will be computed. 
    ///
    /// *soft* means the span goes from the sample's minimum value minus two bandwidths to the sample's
    /// maximum value plus two bandwidths. *hard* means the span goes from the sample's minimum to its
    /// maximum value. For custom span settings, use mode *manual* and fill in the `span` attribute.
    /// - traces/violin/attributes/spanmode
    public enum SpanMode: String, Encodable {
        case soft
        case hard
        case manual
    }
    public var spanMode: SpanMode?

    /// Sets the span in data space for which the density function will be computed. 
    ///
    /// Has an effect only when `spanmode` is set to *manual*.
    public var span: InfoArray?

    public var line: Line3?

    /// Sets the fill color. 
    ///
    /// Defaults to a half-transparent variant of the line color, marker color, or marker line color,
    /// whichever is available.
    public var fillColor: Color?

    public var points: BoxPoints0?

    /// Sets the amount of jitter in the sample points drawn. 
    ///
    /// If *0*, the sample points align along the distribution axis. If *1*, the sample points are drawn
    /// in a random jitter of width equal to the width of the violins.
    public var jitter: Double?

    /// Sets the position of the sample points in relation to the violins. 
    ///
    /// If *0*, the sample points are places over the center of the violins. Positive (negative) values
    /// correspond to positions to the right (left) for vertical violins and above (below) for
    /// horizontal violins.
    public var pointPosition: Double?

    /// Sets the width of the violin in data coordinates. 
    ///
    /// If *0* (default value) the width is automatically selected based on the positions of other
    /// violin traces in the same subplot.
    public var width: Double?

    public var marker: Marker4?

    /// Sets the text elements associated with each sample value. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to the this trace's (x,y) coordinates. To be seen, trace `hoverinfo`
    /// must contain a *text* flag.
    public var text: String?

    /// Same as `text`.
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
    public var hoverTemplate: String?

    /// - traces/violin/attributes/box
    public struct Box: Encodable {
        /// Determines if an miniature box plot is drawn inside the violins. 
        public var visible: Bool?
    
        /// Sets the width of the inner box plots relative to the violins' width. 
        ///
        /// For example, with 1, the inner box plots are as wide as the violins.
        public var width: Double?
    
        /// Sets the inner box plot fill color.
        public var fillColor: Color?
    
        public var line: Line3?
    
        public init(visible: Bool? = nil, width: Double? = nil, fillColor: Color? = nil, line: Line3? = nil) {
            self.visible = visible
            self.width = width
            self.fillColor = fillColor
            self.line = line
        }
    }
    public var box: Box?

    /// - traces/violin/attributes/meanline
    public struct MeanLine: Encodable {
        /// Determines if a line corresponding to the sample's mean is shown inside the violins. 
        ///
        /// If `box.visible` is turned on, the mean line is drawn inside the inner box. Otherwise, the mean
        /// line is drawn from one side of the violin to other.
        public var visible: Bool?
    
        /// Sets the mean line color.
        public var color: Color?
    
        /// Sets the mean line width.
        public var width: Double?
    
        public init(visible: Bool? = nil, color: Color? = nil, width: Double? = nil) {
            self.visible = visible
            self.color = color
            self.width = width
        }
    }
    public var meanLine: MeanLine?

    /// Determines on which side of the position value the density function making up one half of a violin is plotted. 
    ///
    /// Useful when comparing two violin traces under *overlay* mode, where one trace has `side` set to
    /// *positive* and the other to *negative*.
    /// - traces/violin/attributes/side
    public enum Side: String, Encodable {
        case both
        case positive
        case negative
    }
    public var side: Side?

    /// Set several traces linked to the same position axis or matching axes to the same offsetgroup where bars of the same position coordinate will line up.
    public var offsetGroup: String?

    /// Set several traces linked to the same position axis or matching axes to the same alignmentgroup. 
    ///
    /// This controls whether bars compute their positional range dependently or independently.
    public var alignmentGroup: String?

    public var selected: Selected1?

    public var unselected: Selected1?

    /// Do the hover effects highlight individual violins or sample points or the kernel density estimate or any combination of them?
    /// - traces/violin/attributes/hoveron
    public struct HoverOn: OptionSet, Encodable {
        public let rawValue: Int
    
        public static let violins = HoverOn(rawValue: 1 << 0)
        public static let points = HoverOn(rawValue: 1 << 1)
        public static let kde = HoverOn(rawValue: 1 << 2)
        public static let all = HoverOn(rawValue: 1 << 3)
    
        public init(rawValue: Int) { self.rawValue = rawValue }
    
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["violins"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["points"] }
            if (self.rawValue & 1 << 2) != 0 { options += ["kde"] }
            if (self.rawValue & 1 << 3) != 0 { options += ["all"] }
            var container = encoder.singleValueContainer()
            try container.encode(options.joined(separator: "+"))
        }
    }
    public var hoverOn: HoverOn?

    /// Sets a reference between this trace's x coordinates and a 2D cartesian x axis. 
    ///
    /// If *x* (the default value), the x coordinates refer to `layout.xaxis`. If *x2*, the x
    /// coordinates refer to `layout.xaxis2`, and so on.
    public var xAxis: SubPlotID?

    /// Sets a reference between this trace's y coordinates and a 2D cartesian y axis. 
    ///
    /// If *y* (the default value), the y coordinates refer to `layout.yaxis`. If *y2*, the y
    /// coordinates refer to `layout.yaxis2`, and so on.
    public var yAxis: SubPlotID?

    /// Sets the source reference on plot.ly for  ids .
    public var idsSource: String?

    /// Sets the source reference on plot.ly for  customdata .
    public var customDataSource: String?

    /// Sets the source reference on plot.ly for  meta .
    public var metaSource: String?

    /// Sets the source reference on plot.ly for  hoverinfo .
    public var hoverInfoSource: String?

    /// Sets the source reference on plot.ly for  y .
    public var ySource: String?

    /// Sets the source reference on plot.ly for  x .
    public var xSource: String?

    /// Sets the source reference on plot.ly for  text .
    public var textSource: String?

    /// Sets the source reference on plot.ly for  hovertext .
    public var hoverTextSource: String?

    /// Sets the source reference on plot.ly for  hovertemplate .
    public var hoverTemplateSource: String?

    public init(visible: Visible0? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, selectedPoints: Anything? = nil, hoverInfo: HoverInfo1? = nil, hoverLabel: HoverLabel1? = nil, stream: Stream0? = nil, transforms: TickFormatStops0? = nil, uiRevision: Anything? = nil, y: [Double]? = nil, x: [Double]? = nil, x0: Anything? = nil, y0: Anything? = nil, name: String? = nil, orientation: Orientation0? = nil, bandwidth: Double? = nil, scaleGroup: String? = nil, scaleMode: ScaleMode? = nil, spanMode: SpanMode? = nil, span: InfoArray? = nil, line: Line3? = nil, fillColor: Color? = nil, points: BoxPoints0? = nil, jitter: Double? = nil, pointPosition: Double? = nil, width: Double? = nil, marker: Marker4? = nil, text: String? = nil, hoverText: String? = nil, hoverTemplate: String? = nil, box: Box? = nil, meanLine: MeanLine? = nil, side: Side? = nil, offsetGroup: String? = nil, alignmentGroup: String? = nil, selected: Selected1? = nil, unselected: Selected1? = nil, hoverOn: HoverOn? = nil, xAxis: SubPlotID? = nil, yAxis: SubPlotID? = nil, idsSource: String? = nil, customDataSource: String? = nil, metaSource: String? = nil, hoverInfoSource: String? = nil, ySource: String? = nil, xSource: String? = nil, textSource: String? = nil, hoverTextSource: String? = nil, hoverTemplateSource: String? = nil) {
        self.visible = visible
        self.showLegend = showLegend
        self.legendGroup = legendGroup
        self.opacity = opacity
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
        self.y = y
        self.x = x
        self.x0 = x0
        self.y0 = y0
        self.name = name
        self.orientation = orientation
        self.bandwidth = bandwidth
        self.scaleGroup = scaleGroup
        self.scaleMode = scaleMode
        self.spanMode = spanMode
        self.span = span
        self.line = line
        self.fillColor = fillColor
        self.points = points
        self.jitter = jitter
        self.pointPosition = pointPosition
        self.width = width
        self.marker = marker
        self.text = text
        self.hoverText = hoverText
        self.hoverTemplate = hoverTemplate
        self.box = box
        self.meanLine = meanLine
        self.side = side
        self.offsetGroup = offsetGroup
        self.alignmentGroup = alignmentGroup
        self.selected = selected
        self.unselected = unselected
        self.hoverOn = hoverOn
        self.xAxis = xAxis
        self.yAxis = yAxis
        self.idsSource = idsSource
        self.customDataSource = customDataSource
        self.metaSource = metaSource
        self.hoverInfoSource = hoverInfoSource
        self.ySource = ySource
        self.xSource = xSource
        self.textSource = textSource
        self.hoverTextSource = hoverTextSource
        self.hoverTemplateSource = hoverTemplateSource
    }
}