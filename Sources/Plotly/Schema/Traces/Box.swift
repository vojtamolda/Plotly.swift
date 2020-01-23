/// In vertical (horizontal) box plots, statistics are computed using `y` (`x`) values. 
///
/// By supplying an `x` (`y`) array, one box per distinct x (y) value is drawn If no `x` (`y`)
/// {array} is provided, a single box is drawn. That box position is then positioned with with
/// `name` or with `x0` (`y0`) if provided. Each box spans from quartile 1 (Q1) to quartile 3 (Q3).
/// The second quartile (Q2) is marked by a line inside the box. By default, the whiskers correspond
/// to the box' edges +/- 1.5 times the interquartile range (IQR: Q3-Q1), see *boxpoints* for other
/// options.
public struct Box<XData, YData>: Trace where XData: Encodable, YData: Encodable {
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#type) |
    /// [Python](https://plot.ly/python/reference/#type) |
    /// [R](https://plot.ly/r/reference/#type)
    public let type: String = "box"

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
    /// [JavaScript](https://plot.ly/javascript/reference/#box-visible) |
    /// [Python](https://plot.ly/python/reference/#box-visible) |
    /// [R](https://plot.ly/r/reference/#box-visible)
    public var visible: Shared.Visible?

    /// Determines whether or not an item corresponding to this trace is shown in the legend.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#box-showlegend) |
    /// [Python](https://plot.ly/python/reference/#box-showlegend) |
    /// [R](https://plot.ly/r/reference/#box-showlegend)
    public var showLegend: Bool?

    /// Sets the legend group for this trace. 
    ///
    /// Traces part of the same legend group hide/show at the same time when toggling legend items.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#box-legendgroup) |
    /// [Python](https://plot.ly/python/reference/#box-legendgroup) |
    /// [R](https://plot.ly/r/reference/#box-legendgroup)
    public var legendGroup: String?

    /// Sets the opacity of the trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#box-opacity) |
    /// [Python](https://plot.ly/python/reference/#box-opacity) |
    /// [R](https://plot.ly/r/reference/#box-opacity)
    public var opacity: Double?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#box-uid) |
    /// [Python](https://plot.ly/python/reference/#box-uid) |
    /// [R](https://plot.ly/r/reference/#box-uid)
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#box-ids) |
    /// [Python](https://plot.ly/python/reference/#box-ids) |
    /// [R](https://plot.ly/r/reference/#box-ids)
    public var ids: [Double]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#box-customdata) |
    /// [Python](https://plot.ly/python/reference/#box-customdata) |
    /// [R](https://plot.ly/r/reference/#box-customdata)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#box-meta) |
    /// [Python](https://plot.ly/python/reference/#box-meta) |
    /// [R](https://plot.ly/r/reference/#box-meta)
    public var meta: ArrayOrAnything?

    /// Array containing integer indices of selected points. 
    ///
    /// Has an effect only for traces that support selections. Note that an empty array means an empty
    /// selection where the `unselected` are turned on for all points, whereas, any other non-array
    /// values means no selection all where the `selected` and `unselected` styles have no effect.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#box-selectedpoints) |
    /// [Python](https://plot.ly/python/reference/#box-selectedpoints) |
    /// [R](https://plot.ly/r/reference/#box-selectedpoints)
    public var selectedPoints: Anything?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#box-hoverinfo) |
    /// [Python](https://plot.ly/python/reference/#box-hoverinfo) |
    /// [R](https://plot.ly/r/reference/#box-hoverinfo)
    public var hoverInfo: Shared.HoverInfo?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#box-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#box-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#box-hoverlabel)
    public var hoverLabel: Shared.HoverLabel?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#box-stream) |
    /// [Python](https://plot.ly/python/reference/#box-stream) |
    /// [R](https://plot.ly/r/reference/#box-stream)
    public var stream: Shared.Stream?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#box-transforms) |
    /// [Python](https://plot.ly/python/reference/#box-transforms) |
    /// [R](https://plot.ly/r/reference/#box-transforms)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#box-uirevision) |
    /// [Python](https://plot.ly/python/reference/#box-uirevision) |
    /// [R](https://plot.ly/r/reference/#box-uirevision)
    public var uiRevision: Anything?

    /// Sets the y sample data or coordinates. 
    ///
    /// See overview for more info.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#box-y) |
    /// [Python](https://plot.ly/python/reference/#box-y) |
    /// [R](https://plot.ly/r/reference/#box-y)
    public var y: YData?

    /// Sets the x sample data or coordinates. 
    ///
    /// See overview for more info.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#box-x) |
    /// [Python](https://plot.ly/python/reference/#box-x) |
    /// [R](https://plot.ly/r/reference/#box-x)
    public var x: XData?

    /// Sets the x coordinate of the box. 
    ///
    /// See overview for more info.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#box-x0) |
    /// [Python](https://plot.ly/python/reference/#box-x0) |
    /// [R](https://plot.ly/r/reference/#box-x0)
    public var x0: Anything?

    /// Sets the y coordinate of the box. 
    ///
    /// See overview for more info.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#box-y0) |
    /// [Python](https://plot.ly/python/reference/#box-y0) |
    /// [R](https://plot.ly/r/reference/#box-y0)
    public var y0: Anything?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover. For box traces, the name will also be
    /// used for the position coordinate, if `x` and `x0` (`y` and `y0` if horizontal) are missing and
    /// the position axis is categorical
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#box-name) |
    /// [Python](https://plot.ly/python/reference/#box-name) |
    /// [R](https://plot.ly/r/reference/#box-name)
    public var name: String?

    /// Sets the text elements associated with each sample value. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to the this trace's (x,y) coordinates. To be seen, trace `hoverinfo`
    /// must contain a *text* flag.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#box-text) |
    /// [Python](https://plot.ly/python/reference/#box-text) |
    /// [R](https://plot.ly/r/reference/#box-text)
    public var text: ArrayOrString?

    /// Same as `text`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#box-hovertext) |
    /// [Python](https://plot.ly/python/reference/#box-hovertext) |
    /// [R](https://plot.ly/r/reference/#box-hovertext)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#box-hovertemplate) |
    /// [Python](https://plot.ly/python/reference/#box-hovertemplate) |
    /// [R](https://plot.ly/r/reference/#box-hovertemplate)
    public var hoverTemplate: ArrayOrString?

    /// Sets the width of the whiskers relative to the box' width. 
    ///
    /// For example, with 1, the whiskers are as wide as the box(es).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#box-whiskerwidth) |
    /// [Python](https://plot.ly/python/reference/#box-whiskerwidth) |
    /// [R](https://plot.ly/r/reference/#box-whiskerwidth)
    public var whiskerWidth: Double?

    /// Determines whether or not notches should be drawn.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#box-notched) |
    /// [Python](https://plot.ly/python/reference/#box-notched) |
    /// [R](https://plot.ly/r/reference/#box-notched)
    public var notched: Bool?

    /// Sets the width of the notches relative to the box' width. 
    ///
    /// For example, with 0, the notches are as wide as the box(es).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#box-notchwidth) |
    /// [Python](https://plot.ly/python/reference/#box-notchwidth) |
    /// [R](https://plot.ly/r/reference/#box-notchwidth)
    public var notchWidth: Double?

    /// If *outliers*, only the sample points lying outside the whiskers are shown If *suspectedoutliers*, the outlier points are shown and points either less than 4*Q1-3*Q3 or greater than 4*Q3-3*Q1 are highlighted (see `outliercolor`) If *all*, all sample points are shown If *false*, only the box(es) are shown with no sample points
    ///
    /// # Used By
    /// `Box.boxPoints` |
    public enum BoxPoints: String, Encodable {
        case all
        case outliers
        case suspectedOutliers = "suspectedoutliers"
        case `false` = "false"
    }
    /// If *outliers*, only the sample points lying outside the whiskers are shown If *suspectedoutliers*, the outlier points are shown and points either less than 4*Q1-3*Q3 or greater than 4*Q3-3*Q1 are highlighted (see `outliercolor`) If *all*, all sample points are shown If *false*, only the box(es) are shown with no sample points
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#box-boxpoints) |
    /// [Python](https://plot.ly/python/reference/#box-boxpoints) |
    /// [R](https://plot.ly/r/reference/#box-boxpoints)
    public var boxPoints: BoxPoints?

    /// If *true*, the mean of the box(es)' underlying distribution is drawn as a dashed line inside the box(es). 
    ///
    /// If *sd* the standard deviation is also drawn.
    ///
    /// # Used By
    /// `Box.boxMean` |
    public enum BoxMean: String, Encodable {
        case `true` = "true"
        case sd
        case `false` = "false"
    }
    /// If *true*, the mean of the box(es)' underlying distribution is drawn as a dashed line inside the box(es). 
    ///
    /// If *sd* the standard deviation is also drawn.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#box-boxmean) |
    /// [Python](https://plot.ly/python/reference/#box-boxmean) |
    /// [R](https://plot.ly/r/reference/#box-boxmean)
    public var boxMean: BoxMean?

    /// Sets the amount of jitter in the sample points drawn. 
    ///
    /// If *0*, the sample points align along the distribution axis. If *1*, the sample points are drawn
    /// in a random jitter of width equal to the width of the box(es).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#box-jitter) |
    /// [Python](https://plot.ly/python/reference/#box-jitter) |
    /// [R](https://plot.ly/r/reference/#box-jitter)
    public var jitter: Double?

    /// Sets the position of the sample points in relation to the box(es). 
    ///
    /// If *0*, the sample points are places over the center of the box(es). Positive (negative) values
    /// correspond to positions to the right (left) for vertical boxes and above (below) for horizontal
    /// boxes
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#box-pointpos) |
    /// [Python](https://plot.ly/python/reference/#box-pointpos) |
    /// [R](https://plot.ly/r/reference/#box-pointpos)
    public var pointPosition: Double?

    /// Sets the orientation of the box(es). 
    ///
    /// If *v* (*h*), the distribution is visualized along the vertical (horizontal).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#box-orientation) |
    /// [Python](https://plot.ly/python/reference/#box-orientation) |
    /// [R](https://plot.ly/r/reference/#box-orientation)
    public var orientation: Shared.Orientation?

    /// Sets the width of the box in data coordinate If *0* (default value) the width is automatically selected based on the positions of other box traces in the same subplot.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#box-width) |
    /// [Python](https://plot.ly/python/reference/#box-width) |
    /// [R](https://plot.ly/r/reference/#box-width)
    public var width: Double?

    /// # Used By
    /// `Box.marker` |
    public struct SymbolicMarker: Encodable {
        /// Sets the color of the outlier sample points.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#box-marker-outliercolor) |
        /// [Python](https://plot.ly/python/reference/#box-marker-outliercolor) |
        /// [R](https://plot.ly/r/reference/#box-marker-outliercolor)
        public var outlierColor: Color?
    
        /// Sets the marker symbol type. 
        ///
        /// Adding 100 is equivalent to appending *-open* to a symbol name. Adding 200 is equivalent to
        /// appending *-dot* to a symbol name. Adding 300 is equivalent to appending *-open-dot* or
        /// *dot-open* to a symbol name.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#box-marker-symbol) |
        /// [Python](https://plot.ly/python/reference/#box-marker-symbol) |
        /// [R](https://plot.ly/r/reference/#box-marker-symbol)
        public var symbol: Shared.Symbol?
    
        /// Sets the marker opacity.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#box-marker-opacity) |
        /// [Python](https://plot.ly/python/reference/#box-marker-opacity) |
        /// [R](https://plot.ly/r/reference/#box-marker-opacity)
        public var opacity: Double?
    
        /// Sets the marker size (in px).
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#box-marker-size) |
        /// [Python](https://plot.ly/python/reference/#box-marker-size) |
        /// [R](https://plot.ly/r/reference/#box-marker-size)
        public var size: Double?
    
        /// Sets themarkercolor. 
        ///
        /// It accepts either a specific color or an array of numbers that are mapped to the colorscale
        /// relative to the max and min values of the array or relative to `marker.cmin` and `marker.cmax`
        /// if set.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#box-marker-color) |
        /// [Python](https://plot.ly/python/reference/#box-marker-color) |
        /// [R](https://plot.ly/r/reference/#box-marker-color)
        public var color: Color?
    
        /// # Used By
        /// `Box.SymbolicMarker.line` |
        public struct Line: Encodable {
            /// Sets themarker.linecolor. 
            ///
            /// It accepts either a specific color or an array of numbers that are mapped to the colorscale
            /// relative to the max and min values of the array or relative to `marker.line.cmin` and
            /// `marker.line.cmax` if set.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#box-marker-line-color) |
            /// [Python](https://plot.ly/python/reference/#box-marker-line-color) |
            /// [R](https://plot.ly/r/reference/#box-marker-line-color)
            public var color: Color?
        
            /// Sets the width (in px) of the lines bounding the marker points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#box-marker-line-width) |
            /// [Python](https://plot.ly/python/reference/#box-marker-line-width) |
            /// [R](https://plot.ly/r/reference/#box-marker-line-width)
            public var width: Double?
        
            /// Sets the border line color of the outlier sample points. 
            ///
            /// Defaults to marker.color
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#box-marker-line-outliercolor) |
            /// [Python](https://plot.ly/python/reference/#box-marker-line-outliercolor) |
            /// [R](https://plot.ly/r/reference/#box-marker-line-outliercolor)
            public var outlierColor: Color?
        
            /// Sets the border line width (in px) of the outlier sample points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#box-marker-line-outlierwidth) |
            /// [Python](https://plot.ly/python/reference/#box-marker-line-outlierwidth) |
            /// [R](https://plot.ly/r/reference/#box-marker-line-outlierwidth)
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
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#box-marker-line) |
        /// [Python](https://plot.ly/python/reference/#box-marker-line) |
        /// [R](https://plot.ly/r/reference/#box-marker-line)
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
        
        public init(outlierColor: Color? = nil, symbol: Shared.Symbol? = nil, opacity: Double? = nil, size: Double? = nil, color: Color? = nil, line: Line? = nil) {
            self.outlierColor = outlierColor
            self.symbol = symbol
            self.opacity = opacity
            self.size = size
            self.color = color
            self.line = line
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#box-marker) |
    /// [Python](https://plot.ly/python/reference/#box-marker) |
    /// [R](https://plot.ly/r/reference/#box-marker)
    public var marker: SymbolicMarker?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#box-line) |
    /// [Python](https://plot.ly/python/reference/#box-line) |
    /// [R](https://plot.ly/r/reference/#box-line)
    public var line: Shared.Line?

    /// Sets the fill color. 
    ///
    /// Defaults to a half-transparent variant of the line color, marker color, or marker line color,
    /// whichever is available.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#box-fillcolor) |
    /// [Python](https://plot.ly/python/reference/#box-fillcolor) |
    /// [R](https://plot.ly/r/reference/#box-fillcolor)
    public var fillColor: Color?

    /// Set several traces linked to the same position axis or matching axes to the same offsetgroup where bars of the same position coordinate will line up.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#box-offsetgroup) |
    /// [Python](https://plot.ly/python/reference/#box-offsetgroup) |
    /// [R](https://plot.ly/r/reference/#box-offsetgroup)
    public var offsetGroup: String?

    /// Set several traces linked to the same position axis or matching axes to the same alignmentgroup. 
    ///
    /// This controls whether bars compute their positional range dependently or independently.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#box-alignmentgroup) |
    /// [Python](https://plot.ly/python/reference/#box-alignmentgroup) |
    /// [R](https://plot.ly/r/reference/#box-alignmentgroup)
    public var alignmentGroup: String?

    /// # Used By
    /// `Box.selected` |
    public struct Selected: Encodable {
        /// # Used By
        /// `Box.Selected.marker` |
        public struct Marker: Encodable {
            /// Sets the marker opacity of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#box-selected-marker-opacity) |
            /// [Python](https://plot.ly/python/reference/#box-selected-marker-opacity) |
            /// [R](https://plot.ly/r/reference/#box-selected-marker-opacity)
            public var opacity: Double?
        
            /// Sets the marker color of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#box-selected-marker-color) |
            /// [Python](https://plot.ly/python/reference/#box-selected-marker-color) |
            /// [R](https://plot.ly/r/reference/#box-selected-marker-color)
            public var color: Color?
        
            /// Sets the marker size of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#box-selected-marker-size) |
            /// [Python](https://plot.ly/python/reference/#box-selected-marker-size) |
            /// [R](https://plot.ly/r/reference/#box-selected-marker-size)
            public var size: Double?
        
            public init(opacity: Double? = nil, color: Color? = nil, size: Double? = nil) {
                self.opacity = opacity
                self.color = color
                self.size = size
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#box-selected-marker) |
        /// [Python](https://plot.ly/python/reference/#box-selected-marker) |
        /// [R](https://plot.ly/r/reference/#box-selected-marker)
        public var marker: Marker?
    
        public init(marker: Marker? = nil) {
            self.marker = marker
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#box-selected) |
    /// [Python](https://plot.ly/python/reference/#box-selected) |
    /// [R](https://plot.ly/r/reference/#box-selected)
    public var selected: Selected?

    /// # Used By
    /// `Box.unselected` |
    public struct Unselected: Encodable {
        /// # Used By
        /// `Box.Unselected.marker` |
        public struct Marker: Encodable {
            /// Sets the marker opacity of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#box-unselected-marker-opacity) |
            /// [Python](https://plot.ly/python/reference/#box-unselected-marker-opacity) |
            /// [R](https://plot.ly/r/reference/#box-unselected-marker-opacity)
            public var opacity: Double?
        
            /// Sets the marker color of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#box-unselected-marker-color) |
            /// [Python](https://plot.ly/python/reference/#box-unselected-marker-color) |
            /// [R](https://plot.ly/r/reference/#box-unselected-marker-color)
            public var color: Color?
        
            /// Sets the marker size of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#box-unselected-marker-size) |
            /// [Python](https://plot.ly/python/reference/#box-unselected-marker-size) |
            /// [R](https://plot.ly/r/reference/#box-unselected-marker-size)
            public var size: Double?
        
            public init(opacity: Double? = nil, color: Color? = nil, size: Double? = nil) {
                self.opacity = opacity
                self.color = color
                self.size = size
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#box-unselected-marker) |
        /// [Python](https://plot.ly/python/reference/#box-unselected-marker) |
        /// [R](https://plot.ly/r/reference/#box-unselected-marker)
        public var marker: Marker?
    
        public init(marker: Marker? = nil) {
            self.marker = marker
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#box-unselected) |
    /// [Python](https://plot.ly/python/reference/#box-unselected) |
    /// [R](https://plot.ly/r/reference/#box-unselected)
    public var unselected: Unselected?

    /// Do the hover effects highlight individual boxes  or sample points or both?
    ///
    /// # Used By
    /// `Box.hoverOn` |
    public struct HoverOn: OptionSet, Encodable {
        public let rawValue: Int
    
        public static var boxes: HoverOn { HoverOn(rawValue: 1 << 0) }
        public static var points: HoverOn { HoverOn(rawValue: 1 << 1) }
    
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#box-hoveron) |
    /// [Python](https://plot.ly/python/reference/#box-hoveron) |
    /// [R](https://plot.ly/r/reference/#box-hoveron)
    public var hoverOn: HoverOn?

    /// Sets the calendar system to use with `x` date data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#box-xcalendar) |
    /// [Python](https://plot.ly/python/reference/#box-xcalendar) |
    /// [R](https://plot.ly/r/reference/#box-xcalendar)
    public var xCalendar: Shared.Calendar?

    /// Sets the calendar system to use with `y` date data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#box-ycalendar) |
    /// [Python](https://plot.ly/python/reference/#box-ycalendar) |
    /// [R](https://plot.ly/r/reference/#box-ycalendar)
    public var yCalendar: Shared.Calendar?

    /// Sets a reference between this trace's x coordinates and a 2D cartesian x axis. 
    ///
    /// If *x* (the default value), the x coordinates refer to `layout.xaxis`. If *x2*, the x
    /// coordinates refer to `layout.xaxis2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#box-xaxis) |
    /// [Python](https://plot.ly/python/reference/#box-xaxis) |
    /// [R](https://plot.ly/r/reference/#box-xaxis)
    public var xAxis: SubPlotID?

    /// Sets a reference between this trace's y coordinates and a 2D cartesian y axis. 
    ///
    /// If *y* (the default value), the y coordinates refer to `layout.yaxis`. If *y2*, the y
    /// coordinates refer to `layout.yaxis2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#box-yaxis) |
    /// [Python](https://plot.ly/python/reference/#box-yaxis) |
    /// [R](https://plot.ly/r/reference/#box-yaxis)
    public var yAxis: SubPlotID?

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
    }
    
    public init(visible: Shared.Visible? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: ArrayOrAnything? = nil, selectedPoints: Anything? = nil, hoverInfo: Shared.HoverInfo? = nil, hoverLabel: Shared.HoverLabel? = nil, stream: Shared.Stream? = nil, transforms: [Shared.Transform]? = nil, uiRevision: Anything? = nil, y: YData? = nil, x: XData? = nil, x0: Anything? = nil, y0: Anything? = nil, name: String? = nil, text: ArrayOrString? = nil, hoverText: ArrayOrString? = nil, hoverTemplate: ArrayOrString? = nil, whiskerWidth: Double? = nil, notched: Bool? = nil, notchWidth: Double? = nil, boxPoints: BoxPoints? = nil, boxMean: BoxMean? = nil, jitter: Double? = nil, pointPosition: Double? = nil, orientation: Shared.Orientation? = nil, width: Double? = nil, marker: SymbolicMarker? = nil, line: Shared.Line? = nil, fillColor: Color? = nil, offsetGroup: String? = nil, alignmentGroup: String? = nil, selected: Selected? = nil, unselected: Unselected? = nil, hoverOn: HoverOn? = nil, xCalendar: Shared.Calendar? = nil, yCalendar: Shared.Calendar? = nil, xAxis: SubPlotID? = nil, yAxis: SubPlotID? = nil) {
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
    }
}