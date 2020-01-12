/// In vertical (horizontal) box plots, statistics are computed using `y` (`x`) values. 
///
/// By supplying an `x` (`y`) array, one box per distinct x (y) value is drawn If no `x` (`y`)
/// {array} is provided, a single box is drawn. That box position is then positioned with with
/// `name` or with `x0` (`y0`) if provided. Each box spans from quartile 1 (Q1) to quartile 3 (Q3).
/// The second quartile (Q2) is marked by a line inside the box. By default, the whiskers correspond
/// to the box' edges +/- 1.5 times the interquartile range (IQR: Q3-Q1), see *boxpoints* for other
/// options.
public struct Box: Trace {
    public let type: String = "box"

    public let animatable: Bool = false

    /// Determines whether or not this trace is visible. 
    ///
    /// If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the
    /// legend itself is visible).
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

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    public var hoverInfo: HoverInfo0?

    public var hoverLabel: HoverLabel0?

    public var stream: Stream0?

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
    /// The trace name appear as the legend item and on hover. For box traces, the name will also be
    /// used for the position coordinate, if `x` and `x0` (`y` and `y0` if horizontal) are missing and
    /// the position axis is categorical
    public var name: String?

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

    /// Sets the width of the whiskers relative to the box' width. 
    ///
    /// For example, with 1, the whiskers are as wide as the box(es).
    public var whiskerWidth: Double?

    /// Determines whether or not notches should be drawn.
    public var notched: Bool?

    /// Sets the width of the notches relative to the box' width. 
    ///
    /// For example, with 0, the notches are as wide as the box(es).
    public var notchWidth: Double?

    /// If *outliers*, only the sample points lying outside the whiskers are shown If *suspectedoutliers*, the outlier points are shown and points either less than 4*Q1-3*Q3 or greater than 4*Q3-3*Q1 are highlighted (see `outliercolor`) If *all*, all sample points are shown If *false*, only the box(es) are shown with no sample points
    /// - [Box.BoxPoints](traces/box/attributes/boxpoints)
    public enum BoxPoints: String, Encodable {
        case all
        case outliers
        case suspectedOutliers = "suspectedoutliers"
        case `false` = "false"
    }
    /// If *outliers*, only the sample points lying outside the whiskers are shown If *suspectedoutliers*, the outlier points are shown and points either less than 4*Q1-3*Q3 or greater than 4*Q3-3*Q1 are highlighted (see `outliercolor`) If *all*, all sample points are shown If *false*, only the box(es) are shown with no sample points
    public var boxPoints: BoxPoints?

    /// If *true*, the mean of the box(es)' underlying distribution is drawn as a dashed line inside the box(es). 
    ///
    /// If *sd* the standard deviation is also drawn.
    /// - [Box.BoxMean](traces/box/attributes/boxmean)
    public enum BoxMean: String, Encodable {
        case `true` = "true"
        case sd
        case `false` = "false"
    }
    /// If *true*, the mean of the box(es)' underlying distribution is drawn as a dashed line inside the box(es). 
    ///
    /// If *sd* the standard deviation is also drawn.
    public var boxMean: BoxMean?

    /// Sets the amount of jitter in the sample points drawn. 
    ///
    /// If *0*, the sample points align along the distribution axis. If *1*, the sample points are drawn
    /// in a random jitter of width equal to the width of the box(es).
    public var jitter: Double?

    /// Sets the position of the sample points in relation to the box(es). 
    ///
    /// If *0*, the sample points are places over the center of the box(es). Positive (negative) values
    /// correspond to positions to the right (left) for vertical boxes and above (below) for horizontal
    /// boxes
    public var pointPosition: Double?

    /// Sets the orientation of the box(es). 
    ///
    /// If *v* (*h*), the distribution is visualized along the vertical (horizontal).
    public var orientation: Orientation0?

    /// Sets the width of the box in data coordinate If *0* (default value) the width is automatically selected based on the positions of other box traces in the same subplot.
    public var width: Double?

    /// - [Box.Marker](traces/box/attributes/marker)
    public struct Marker: Encodable {
        /// Sets the color of the outlier sample points.
        public var outlierColor: Color?
    
        /// Sets the marker symbol type. 
        ///
        /// Adding 100 is equivalent to appending *-open* to a symbol name. Adding 200 is equivalent to
        /// appending *-dot* to a symbol name. Adding 300 is equivalent to appending *-open-dot* or
        /// *dot-open* to a symbol name.
        public var symbol: Symbol0?
    
        /// Sets the marker opacity.
        public var opacity: Double?
    
        /// Sets the marker size (in px).
        public var size: Double?
    
        /// Sets themarkercolor. 
        ///
        /// It accepts either a specific color or an array of numbers that are mapped to the colorscale
        /// relative to the max and min values of the array or relative to `marker.cmin` and `marker.cmax`
        /// if set.
        public var color: Color?
    
        /// - [Box.Marker.Line](traces/box/attributes/marker/line)
        public struct Line: Encodable {
            /// Sets themarker.linecolor. 
            ///
            /// It accepts either a specific color or an array of numbers that are mapped to the colorscale
            /// relative to the max and min values of the array or relative to `marker.line.cmin` and
            /// `marker.line.cmax` if set.
            public var color: Color?
        
            /// Sets the width (in px) of the lines bounding the marker points.
            public var width: Double?
        
            /// Sets the border line color of the outlier sample points. 
            ///
            /// Defaults to marker.color
            public var outlierColor: Color?
        
            /// Sets the border line width (in px) of the outlier sample points.
            public var outlierWidth: Double?
        
            /// Plotly compatible property encoding
            enum CodingKeys: String, CodingKey {
                case color
                case width
                case outlierColor = "outliercolor"
                case outlierWidth = "outlierwidth"
            }
            
            public init(color: Color? = nil, width: Double? = nil, outlierColor: Color? = nil, outlierWidth: Double? = nil) {
                self.color = color
                self.width = width
                self.outlierColor = outlierColor
                self.outlierWidth = outlierWidth
            }
        }
        public var line: Line?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case outlierColor = "outliercolor"
            case symbol
            case opacity
            case size
            case color
            case line
        }
        
        public init(outlierColor: Color? = nil, symbol: Symbol0? = nil, opacity: Double? = nil, size: Double? = nil, color: Color? = nil, line: Line? = nil) {
            self.outlierColor = outlierColor
            self.symbol = symbol
            self.opacity = opacity
            self.size = size
            self.color = color
            self.line = line
        }
    }
    public var marker: Marker?

    public var line: Line0?

    /// Sets the fill color. 
    ///
    /// Defaults to a half-transparent variant of the line color, marker color, or marker line color,
    /// whichever is available.
    public var fillColor: Color?

    /// Set several traces linked to the same position axis or matching axes to the same offsetgroup where bars of the same position coordinate will line up.
    public var offsetGroup: String?

    /// Set several traces linked to the same position axis or matching axes to the same alignmentgroup. 
    ///
    /// This controls whether bars compute their positional range dependently or independently.
    public var alignmentGroup: String?

    public var selected: Selected0?

    public var unselected: Selected0?

    /// Do the hover effects highlight individual boxes  or sample points or both?
    /// - [Box.HoverOn](traces/box/attributes/hoveron)
    public struct HoverOn: OptionSet, Encodable {
        public let rawValue: Int
    
        public static let boxes = HoverOn(rawValue: 1 << 0)
        public static let points = HoverOn(rawValue: 1 << 1)
    
        public init(rawValue: Int) { self.rawValue = rawValue }
    
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["boxes"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["points"] }
            var container = encoder.singleValueContainer()
            try container.encode(options.joined(separator: "+"))
        }
    }
    /// Do the hover effects highlight individual boxes  or sample points or both?
    public var hoverOn: HoverOn?

    /// Sets the calendar system to use with `x` date data.
    public var xCalendar: Calendar0?

    /// Sets the calendar system to use with `y` date data.
    public var yCalendar: Calendar0?

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

    /// Plotly compatible property encoding
    enum CodingKeys: String, CodingKey {
        case type
        case animatable
        case visible
        case showLegend = "showlegend"
        case legendGroup = "legendgroup"
        case opacity
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
        case y
        case x
        case x0
        case y0
        case name
        case text
        case hoverText = "hovertext"
        case hoverTemplate = "hovertemplate"
        case whiskerWidth = "whiskerwidth"
        case notched
        case notchWidth = "notchwidth"
        case boxPoints = "boxpoints"
        case boxMean = "boxmean"
        case jitter
        case pointPosition = "pointpos"
        case orientation
        case width
        case marker
        case line
        case fillColor = "fillcolor"
        case offsetGroup = "offsetgroup"
        case alignmentGroup = "alignmentgroup"
        case selected
        case unselected
        case hoverOn = "hoveron"
        case xCalendar = "xcalendar"
        case yCalendar = "ycalendar"
        case xAxis = "xaxis"
        case yAxis = "yaxis"
        case idsSource = "idssrc"
        case customDataSource = "customdatasrc"
        case metaSource = "metasrc"
        case hoverInfoSource = "hoverinfosrc"
        case ySource = "ysrc"
        case xSource = "xsrc"
        case textSource = "textsrc"
        case hoverTextSource = "hovertextsrc"
        case hoverTemplateSource = "hovertemplatesrc"
    }
    
    public init(visible: Visible0? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, selectedPoints: Anything? = nil, hoverInfo: HoverInfo0? = nil, hoverLabel: HoverLabel0? = nil, stream: Stream0? = nil, transforms: Transforms0? = nil, uiRevision: Anything? = nil, y: [Double]? = nil, x: [Double]? = nil, x0: Anything? = nil, y0: Anything? = nil, name: String? = nil, text: String? = nil, hoverText: String? = nil, hoverTemplate: String? = nil, whiskerWidth: Double? = nil, notched: Bool? = nil, notchWidth: Double? = nil, boxPoints: BoxPoints? = nil, boxMean: BoxMean? = nil, jitter: Double? = nil, pointPosition: Double? = nil, orientation: Orientation0? = nil, width: Double? = nil, marker: Marker? = nil, line: Line0? = nil, fillColor: Color? = nil, offsetGroup: String? = nil, alignmentGroup: String? = nil, selected: Selected0? = nil, unselected: Selected0? = nil, hoverOn: HoverOn? = nil, xCalendar: Calendar0? = nil, yCalendar: Calendar0? = nil, xAxis: SubPlotID? = nil, yAxis: SubPlotID? = nil, idsSource: String? = nil, customDataSource: String? = nil, metaSource: String? = nil, hoverInfoSource: String? = nil, ySource: String? = nil, xSource: String? = nil, textSource: String? = nil, hoverTextSource: String? = nil, hoverTemplateSource: String? = nil) {
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
        self.text = text
        self.hoverText = hoverText
        self.hoverTemplate = hoverTemplate
        self.whiskerWidth = whiskerWidth
        self.notched = notched
        self.notchWidth = notchWidth
        self.boxPoints = boxPoints
        self.boxMean = boxMean
        self.jitter = jitter
        self.pointPosition = pointPosition
        self.orientation = orientation
        self.width = width
        self.marker = marker
        self.line = line
        self.fillColor = fillColor
        self.offsetGroup = offsetGroup
        self.alignmentGroup = alignmentGroup
        self.selected = selected
        self.unselected = unselected
        self.hoverOn = hoverOn
        self.xCalendar = xCalendar
        self.yCalendar = yCalendar
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