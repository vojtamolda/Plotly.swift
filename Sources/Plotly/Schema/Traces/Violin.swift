/// In vertical (horizontal) violin plots, statistics are computed using `y` (`x`) values.
/// 
/// By supplying an `x` (`y`) array, one violin per distinct x (y) value is drawn If no `x` (`y`)
/// {array} is provided, a single violin is drawn. That violin position is then positioned with with
/// `name` or with `x0` (`y0`) if provided.
/// 
/// - SeeAlso:
///   Documentation for 
///   [Python](https://plot.ly/python/reference/#violin), 
///   [JavaScript](https://plot.ly/javascript/reference/#violin) or 
///   [R](https://plot.ly/r/reference/#violin)
public struct Violin<YData, XData>: Trace where YData: Plotable, XData: Plotable {
    public let type: String = "violin"

    public let animatable: Bool = false

    /// Determines whether or not this trace is visible.
    /// 
    /// If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the
    /// legend itself is visible).
    public var visible: Shared.Visible?

    /// Determines whether or not an item corresponding to this trace is shown in the legend.
    public var showLegend: Bool?

    /// Sets the legend group for this trace.
    /// 
    /// Traces part of the same legend group hide/show at the same time when toggling legend items.
    public var legendGroup: String?

    /// Sets the opacity of the trace.
    public var opacity: Double?

    /// Assign an id to this trace, Use this to provide object constancy between traces during
    /// animations and transitions.
    public var uid: String?

    /// Assigns id labels to each datum.
    /// 
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    public var ids: [String]?

    /// Assigns extra data each datum.
    /// 
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    public var customData: [String]?

    /// Assigns extra meta information associated with this trace that can be used in various text
    /// attributes.
    /// 
    /// Attributes such as trace `name`, graph, axis and colorbar `title.text`, annotation `text`
    /// `rangeselector`, `updatemenues` and `sliders` `label` text all support `meta`. To access the
    /// trace `meta` values in an attribute in the same trace, simply use `%{meta[i]}` where `i` is the
    /// index or key of the `meta` item in question. To access trace `meta` in layout attributes, use
    /// `%{data[n[.meta[i]}` where `i` is the index or key of the `meta` and `n` is the trace index.
    public var meta: ArrayOrAnything?

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
    public var hoverInfo: Shared.HoverInfo?

    public var hoverLabel: Shared.HoverLabel?

    public var stream: Shared.Stream?

    public var transforms: [Shared.Transform]?

    /// Controls persistence of some user-driven changes to the trace: `constraintrange` in `parcoords`
    /// traces, as well as some `editable: true` modifications such as `name` and `colorbar.title`.
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
    public var y: YData?

    /// Sets the x sample data or coordinates.
    /// 
    /// See overview for more info.
    public var x: XData?

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

    /// Sets the orientation of the violin(s).
    /// 
    /// If *v* (*h*), the distribution is visualized along the vertical (horizontal).
    public var orientation: Shared.Orientation?

    /// Sets the bandwidth used to compute the kernel density estimate.
    /// 
    /// By default, the bandwidth is determined by Silverman's rule of thumb.
    public var bandwidth: Double?

    /// If there are multiple violins that should be sized according to to some metric (see
    /// `scalemode`), link them by providing a non-empty group id here shared by every trace in the same
    /// group.
    /// 
    /// If a violin's `width` is undefined, `scalegroup` will default to the trace's name. In this case,
    /// violins with the same names will be linked together
    public var scaleGroup: String?

    /// Sets the metric by which the width of each violin is determined.*width* means each violin has
    /// the same (max) width*count* means the violins are scaled by the number of sample points makingup
    /// each violin.
    public enum ScaleMode: String, Encodable {
        case width
        case count
    }
    /// Sets the metric by which the width of each violin is determined.*width* means each violin has
    /// the same (max) width*count* means the violins are scaled by the number of sample points makingup
    /// each violin.
    public var scaleMode: ScaleMode?

    /// Sets the method by which the span in data space where the density function will be computed.
    /// 
    /// *soft* means the span goes from the sample's minimum value minus two bandwidths to the sample's
    /// maximum value plus two bandwidths. *hard* means the span goes from the sample's minimum to its
    /// maximum value. For custom span settings, use mode *manual* and fill in the `span` attribute.
    public enum SpanMode: String, Encodable {
        case soft
        case hard
        case manual
    }
    /// Sets the method by which the span in data space where the density function will be computed.
    /// 
    /// *soft* means the span goes from the sample's minimum value minus two bandwidths to the sample's
    /// maximum value plus two bandwidths. *hard* means the span goes from the sample's minimum to its
    /// maximum value. For custom span settings, use mode *manual* and fill in the `span` attribute.
    public var spanMode: SpanMode?

    /// Sets the span in data space for which the density function will be computed.
    /// 
    /// Has an effect only when `spanmode` is set to *manual*.
    public var span: InfoArray?

    public var line: Shared.Line?

    /// Sets the fill color.
    /// 
    /// Defaults to a half-transparent variant of the line color, marker color, or marker line color,
    /// whichever is available.
    public var fillColor: Color?

    /// If *outliers*, only the sample points lying outside the whiskers are shown If
    /// *suspectedoutliers*, the outlier points are shown and points either less than 4*Q1-3*Q3 or
    /// greater than 4*Q3-3*Q1 are highlighted (see `outliercolor`) If *all*, all sample points are
    /// shown If *false*, only the violins are shown with no sample points
    public enum Points: Encodable {
        case all
        case outliers
        case suspectedOutliers
        case `false`
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .all:
                try container.encode("all")
            case .outliers:
                try container.encode("outliers")
            case .suspectedOutliers:
                try container.encode("suspectedoutliers")
            case .`false`:
                try container.encode(false)
            }
        }
    }
    /// If *outliers*, only the sample points lying outside the whiskers are shown If
    /// *suspectedoutliers*, the outlier points are shown and points either less than 4*Q1-3*Q3 or
    /// greater than 4*Q3-3*Q1 are highlighted (see `outliercolor`) If *all*, all sample points are
    /// shown If *false*, only the violins are shown with no sample points
    public var points: Points?

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

    public struct SymbolicMarker: Encodable {
        /// Sets the color of the outlier sample points.
        public var outlierColor: Color?
    
        /// Sets the marker symbol type.
        /// 
        /// Adding 100 is equivalent to appending *-open* to a symbol name. Adding 200 is equivalent to
        /// appending *-dot* to a symbol name. Adding 300 is equivalent to appending *-open-dot* or
        /// *dot-open* to a symbol name.
        public var symbol: Shared.Symbol?
    
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
        
            /// Decoding and encoding keys compatible with Plotly schema.
            enum CodingKeys: String, CodingKey {
                case color
                case width
                case outlierColor = "outliercolor"
                case outlierWidth = "outlierwidth"
            }
            
            /// Creates `Line` object with specified properties.
            /// 
            /// - Parameters:
            ///   - color: Sets themarker.linecolor.
            ///   - width: Sets the width (in px) of the lines bounding the marker points.
            ///   - outlierColor: Sets the border line color of the outlier sample points.
            ///   - outlierWidth: Sets the border line width (in px) of the outlier sample points.
            public init(color: Color? = nil, width: Double? = nil, outlierColor: Color? = nil, outlierWidth:
                    Double? = nil) {
                self.color = color
                self.width = width
                self.outlierColor = outlierColor
                self.outlierWidth = outlierWidth
            }
            
        }
        public var line: Line?
    
        /// Decoding and encoding keys compatible with Plotly schema.
        enum CodingKeys: String, CodingKey {
            case outlierColor = "outliercolor"
            case symbol
            case opacity
            case size
            case color
            case line
        }
        
        /// Creates `SymbolicMarker` object with specified properties.
        /// 
        /// - Parameters:
        ///   - outlierColor: Sets the color of the outlier sample points.
        ///   - symbol: Sets the marker symbol type.
        ///   - opacity: Sets the marker opacity.
        ///   - size: Sets the marker size (in px).
        ///   - color: Sets themarkercolor.
        ///   - line:
        public init(outlierColor: Color? = nil, symbol: Shared.Symbol? = nil, opacity: Double? = nil,
                size: Double? = nil, color: Color? = nil, line: Line? = nil) {
            self.outlierColor = outlierColor
            self.symbol = symbol
            self.opacity = opacity
            self.size = size
            self.color = color
            self.line = line
        }
        
    }
    public var marker: SymbolicMarker?

    /// Sets the text elements associated with each sample value.
    /// 
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to the this trace's (x,y) coordinates. To be seen, trace `hoverinfo`
    /// must contain a *text* flag.
    public var text: ArrayOrString?

    /// Same as `text`.
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
    public var hoverTemplate: ArrayOrString?

    public struct Box: Encodable {
        /// Determines if an miniature box plot is drawn inside the violins.
        public var visible: Bool?
    
        /// Sets the width of the inner box plots relative to the violins' width.
        /// 
        /// For example, with 1, the inner box plots are as wide as the violins.
        public var width: Double?
    
        /// Sets the inner box plot fill color.
        public var fillColor: Color?
    
        public var line: Shared.Line?
    
        /// Decoding and encoding keys compatible with Plotly schema.
        enum CodingKeys: String, CodingKey {
            case visible
            case width
            case fillColor = "fillcolor"
            case line
        }
        
        /// Creates `Box` object with specified properties.
        /// 
        /// - Parameters:
        ///   - visible: Determines if an miniature box plot is drawn inside the violins.
        ///   - width: Sets the width of the inner box plots relative to the violins' width.
        ///   - fillColor: Sets the inner box plot fill color.
        ///   - line:
        public init(visible: Bool? = nil, width: Double? = nil, fillColor: Color? = nil, line:
                Shared.Line? = nil) {
            self.visible = visible
            self.width = width
            self.fillColor = fillColor
            self.line = line
        }
        
    }
    public var box: Box?

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
    
        /// Creates `MeanLine` object with specified properties.
        /// 
        /// - Parameters:
        ///   - visible: Determines if a line corresponding to the sample's mean is shown inside the violins.
        ///   - color: Sets the mean line color.
        ///   - width: Sets the mean line width.
        public init(visible: Bool? = nil, color: Color? = nil, width: Double? = nil) {
            self.visible = visible
            self.color = color
            self.width = width
        }
        
    }
    public var meanLine: MeanLine?

    /// Determines on which side of the position value the density function making up one half of a
    /// violin is plotted.
    /// 
    /// Useful when comparing two violin traces under *overlay* mode, where one trace has `side` set to
    /// *positive* and the other to *negative*.
    public enum Side: String, Encodable {
        case both
        case positive
        case negative
    }
    /// Determines on which side of the position value the density function making up one half of a
    /// violin is plotted.
    /// 
    /// Useful when comparing two violin traces under *overlay* mode, where one trace has `side` set to
    /// *positive* and the other to *negative*.
    public var side: Side?

    /// Set several traces linked to the same position axis or matching axes to the same offsetgroup
    /// where bars of the same position coordinate will line up.
    public var offsetGroup: String?

    /// Set several traces linked to the same position axis or matching axes to the same alignmentgroup.
    /// 
    /// This controls whether bars compute their positional range dependently or independently.
    public var alignmentGroup: String?

    public struct Selected: Encodable {
        public struct Marker: Encodable {
            /// Sets the marker opacity of selected points.
            public var opacity: Double?
        
            /// Sets the marker color of selected points.
            public var color: Color?
        
            /// Sets the marker size of selected points.
            public var size: Double?
        
            /// Creates `Marker` object with specified properties.
            /// 
            /// - Parameters:
            ///   - opacity: Sets the marker opacity of selected points.
            ///   - color: Sets the marker color of selected points.
            ///   - size: Sets the marker size of selected points.
            public init(opacity: Double? = nil, color: Color? = nil, size: Double? = nil) {
                self.opacity = opacity
                self.color = color
                self.size = size
            }
            
        }
        public var marker: Marker?
    
        /// Creates `Selected` object with specified properties.
        public init(marker: Marker? = nil) {
            self.marker = marker
        }
        
    }
    public var selected: Selected?

    public struct Unselected: Encodable {
        public struct Marker: Encodable {
            /// Sets the marker opacity of unselected points, applied only when a selection exists.
            public var opacity: Double?
        
            /// Sets the marker color of unselected points, applied only when a selection exists.
            public var color: Color?
        
            /// Sets the marker size of unselected points, applied only when a selection exists.
            public var size: Double?
        
            /// Creates `Marker` object with specified properties.
            /// 
            /// - Parameters:
            ///   - opacity: Sets the marker opacity of unselected points, applied only when a selection exists.
            ///   - color: Sets the marker color of unselected points, applied only when a selection exists.
            ///   - size: Sets the marker size of unselected points, applied only when a selection exists.
            public init(opacity: Double? = nil, color: Color? = nil, size: Double? = nil) {
                self.opacity = opacity
                self.color = color
                self.size = size
            }
            
        }
        public var marker: Marker?
    
        /// Creates `Unselected` object with specified properties.
        public init(marker: Marker? = nil) {
            self.marker = marker
        }
        
    }
    public var unselected: Unselected?

    /// Do the hover effects highlight individual violins or sample points or the kernel density
    /// estimate or any combination of them?
    public struct HoverOn: OptionSet, Encodable {
        public let rawValue: Int
    
        public static var violins: HoverOn { HoverOn(rawValue: 1 << 0) }
        public static var points: HoverOn { HoverOn(rawValue: 1 << 1) }
        public static var kde: HoverOn { HoverOn(rawValue: 1 << 2) }
        public static var all: HoverOn { HoverOn(rawValue: 1 << 3) }
    
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
    /// Do the hover effects highlight individual violins or sample points or the kernel density
    /// estimate or any combination of them?
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

    /// Decoding and encoding keys compatible with Plotly schema.
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
        case orientation
        case bandwidth
        case scaleGroup = "scalegroup"
        case scaleMode = "scalemode"
        case spanMode = "spanmode"
        case span
        case line
        case fillColor = "fillcolor"
        case points
        case jitter
        case pointPosition = "pointpos"
        case width
        case marker
        case text
        case hoverText = "hovertext"
        case hoverTemplate = "hovertemplate"
        case box
        case meanLine = "meanline"
        case side
        case offsetGroup = "offsetgroup"
        case alignmentGroup = "alignmentgroup"
        case selected
        case unselected
        case hoverOn = "hoveron"
        case xAxis = "xaxis"
        case yAxis = "yaxis"
    }
    
    /// Creates `Violin` object from the most frequently used properties.
    /// 
    /// - Parameters:
    ///   - y: Sets the y sample data or coordinates.
    ///   - x: Sets the x sample data or coordinates.
    ///   - name: Sets the trace name.
    ///   - line:
    ///   - marker:
    ///   - text: Sets the text elements associated with each sample value.
    ///   - hoverText: Same as `text`.
    public init(y: YData? = nil, x: XData? = nil, name: String? = nil, line: Shared.Line? = nil,
            marker: SymbolicMarker? = nil, text: ArrayOrString? = nil, hoverText: ArrayOrString? = nil) {
        self.y = y
        self.x = x
        self.name = name
        self.line = line
        self.marker = marker
        self.text = text
        self.hoverText = hoverText
    }
    
    /// Creates `Violin` object with specified properties.
    /// 
    /// - Parameters:
    ///   - visible: Determines whether or not this trace is visible.
    ///   - showLegend: Determines whether or not an item corresponding to this trace is shown in the
    ///   legend.
    ///   - legendGroup: Sets the legend group for this trace.
    ///   - opacity: Sets the opacity of the trace.
    ///   - uid: Assign an id to this trace, Use this to provide object constancy between traces during
    ///   animations and transitions.
    ///   - ids: Assigns id labels to each datum.
    ///   - customData: Assigns extra data each datum.
    ///   - meta: Assigns extra meta information associated with this trace that can be used in various
    ///   text attributes.
    ///   - selectedPoints: Array containing integer indices of selected points.
    ///   - hoverInfo: Determines which trace information appear on hover.
    ///   - hoverLabel:
    ///   - stream:
    ///   - transforms:
    ///   - uiRevision: Controls persistence of some user-driven changes to the trace: `constraintrange`
    ///   in `parcoords` traces, as well as some `editable: true` modifications such as `name` and
    ///   `colorbar.title`.
    ///   - y: Sets the y sample data or coordinates.
    ///   - x: Sets the x sample data or coordinates.
    ///   - x0: Sets the x coordinate of the box.
    ///   - y0: Sets the y coordinate of the box.
    ///   - name: Sets the trace name.
    ///   - orientation: Sets the orientation of the violin(s).
    ///   - bandwidth: Sets the bandwidth used to compute the kernel density estimate.
    ///   - scaleGroup: If there are multiple violins that should be sized according to to some metric
    ///   (see `scalemode`), link them by providing a non-empty group id here shared by every trace in the
    ///   same group.
    ///   - scaleMode: Sets the metric by which the width of each violin is determined.*width* means each
    ///   violin has the same (max) width*count* means the violins are scaled by the number of sample
    ///   points makingup each violin.
    ///   - spanMode: Sets the method by which the span in data space where the density function will be
    ///   computed.
    ///   - span: Sets the span in data space for which the density function will be computed.
    ///   - line:
    ///   - fillColor: Sets the fill color.
    ///   - points: If *outliers*, only the sample points lying outside the whiskers are shown If
    ///   *suspectedoutliers*, the outlier points are shown and points either less than 4*Q1-3*Q3 or
    ///   greater than 4*Q3-3*Q1 are highlighted (see `outliercolor`) If *all*, all sample points are
    ///   shown If *false*, only the violins are shown with no sample points
    ///   - jitter: Sets the amount of jitter in the sample points drawn.
    ///   - pointPosition: Sets the position of the sample points in relation to the violins.
    ///   - width: Sets the width of the violin in data coordinates.
    ///   - marker:
    ///   - text: Sets the text elements associated with each sample value.
    ///   - hoverText: Same as `text`.
    ///   - hoverTemplate: Template string used for rendering the information that appear on hover box.
    ///   - box:
    ///   - meanLine:
    ///   - side: Determines on which side of the position value the density function making up one half
    ///   of a violin is plotted.
    ///   - offsetGroup: Set several traces linked to the same position axis or matching axes to the same
    ///   offsetgroup where bars of the same position coordinate will line up.
    ///   - alignmentGroup: Set several traces linked to the same position axis or matching axes to the
    ///   same alignmentgroup.
    ///   - selected:
    ///   - unselected:
    ///   - hoverOn: Do the hover effects highlight individual violins or sample points or the kernel
    ///   density estimate or any combination of them?
    ///   - xAxis: Sets a reference between this trace's x coordinates and a 2D cartesian x axis.
    ///   - yAxis: Sets a reference between this trace's y coordinates and a 2D cartesian y axis.
    public init(visible: Shared.Visible? = nil, showLegend: Bool? = nil, legendGroup: String? = nil,
            opacity: Double? = nil, uid: String? = nil, ids: [String]? = nil, customData: [String]? = nil,
            meta: ArrayOrAnything? = nil, selectedPoints: Anything? = nil, hoverInfo: Shared.HoverInfo? =
            nil, hoverLabel: Shared.HoverLabel? = nil, stream: Shared.Stream? = nil, transforms:
            [Shared.Transform]? = nil, uiRevision: Anything? = nil, y: YData? = nil, x: XData? = nil, x0:
            Anything? = nil, y0: Anything? = nil, name: String? = nil, orientation: Shared.Orientation? =
            nil, bandwidth: Double? = nil, scaleGroup: String? = nil, scaleMode: ScaleMode? = nil, spanMode:
            SpanMode? = nil, span: InfoArray? = nil, line: Shared.Line? = nil, fillColor: Color? = nil,
            points: Points? = nil, jitter: Double? = nil, pointPosition: Double? = nil, width: Double? =
            nil, marker: SymbolicMarker? = nil, text: ArrayOrString? = nil, hoverText: ArrayOrString? = nil,
            hoverTemplate: ArrayOrString? = nil, box: Box? = nil, meanLine: MeanLine? = nil, side: Side? =
            nil, offsetGroup: String? = nil, alignmentGroup: String? = nil, selected: Selected? = nil,
            unselected: Unselected? = nil, hoverOn: HoverOn? = nil, xAxis: SubPlotID? = nil, yAxis:
            SubPlotID? = nil) {
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
    }
    
    /// Encodes the object in a format compatible with Plotly.
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(animatable, forKey: .animatable)
        try container.encodeIfPresent(visible, forKey: .visible)
        try container.encodeIfPresent(showLegend, forKey: .showLegend)
        try container.encodeIfPresent(legendGroup, forKey: .legendGroup)
        try container.encodeIfPresent(opacity, forKey: .opacity)
        try container.encodeIfPresent(uid, forKey: .uid)
        try container.encodeIfPresent(ids, forKey: .ids)
        try container.encodeIfPresent(customData, forKey: .customData)
        try container.encodeIfPresent(meta, forKey: .meta)
        try container.encodeIfPresent(selectedPoints, forKey: .selectedPoints)
        try container.encodeIfPresent(hoverInfo, forKey: .hoverInfo)
        try container.encodeIfPresent(hoverLabel, forKey: .hoverLabel)
        try container.encodeIfPresent(stream, forKey: .stream)
        try container.encodeIfPresent(transforms, forKey: .transforms)
        try container.encodeIfPresent(uiRevision, forKey: .uiRevision)
        try container.encodeIfPresent(x0, forKey: .x0)
        try container.encodeIfPresent(y0, forKey: .y0)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(orientation, forKey: .orientation)
        try container.encodeIfPresent(bandwidth, forKey: .bandwidth)
        try container.encodeIfPresent(scaleGroup, forKey: .scaleGroup)
        try container.encodeIfPresent(scaleMode, forKey: .scaleMode)
        try container.encodeIfPresent(spanMode, forKey: .spanMode)
        try container.encodeIfPresent(span, forKey: .span)
        try container.encodeIfPresent(line, forKey: .line)
        try container.encodeIfPresent(fillColor, forKey: .fillColor)
        try container.encodeIfPresent(points, forKey: .points)
        try container.encodeIfPresent(jitter, forKey: .jitter)
        try container.encodeIfPresent(pointPosition, forKey: .pointPosition)
        try container.encodeIfPresent(width, forKey: .width)
        try container.encodeIfPresent(marker, forKey: .marker)
        try container.encodeIfPresent(text, forKey: .text)
        try container.encodeIfPresent(hoverText, forKey: .hoverText)
        try container.encodeIfPresent(hoverTemplate, forKey: .hoverTemplate)
        try container.encodeIfPresent(box, forKey: .box)
        try container.encodeIfPresent(meanLine, forKey: .meanLine)
        try container.encodeIfPresent(side, forKey: .side)
        try container.encodeIfPresent(offsetGroup, forKey: .offsetGroup)
        try container.encodeIfPresent(alignmentGroup, forKey: .alignmentGroup)
        try container.encodeIfPresent(selected, forKey: .selected)
        try container.encodeIfPresent(unselected, forKey: .unselected)
        try container.encodeIfPresent(hoverOn, forKey: .hoverOn)
        try container.encodeIfPresent(xAxis, forKey: .xAxis)
        try container.encodeIfPresent(yAxis, forKey: .yAxis)
    
        if let y = self.y {
            let yEncoder = container.superEncoder(forKey: .y)
            try y.encode(toPlotly: yEncoder)
        }
    
        if let x = self.x {
            let xEncoder = container.superEncoder(forKey: .x)
            try x.encode(toPlotly: xEncoder)
        }
    }
    
}