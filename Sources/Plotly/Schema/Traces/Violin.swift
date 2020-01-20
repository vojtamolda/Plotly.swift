/// In vertical (horizontal) violin plots, statistics are computed using `y` (`x`) values. 
///
/// By supplying an `x` (`y`) array, one violin per distinct x (y) value is drawn If no `x` (`y`)
/// {array} is provided, a single violin is drawn. That violin position is then positioned with with
/// `name` or with `x0` (`y0`) if provided.
public struct Violin: Trace {
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#type) |
    /// [Python](https://plot.ly/python/reference/#type) |
    /// [R](https://plot.ly/r/reference/#type)
    public let type: String = "violin"

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
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-visible) |
    /// [Python](https://plot.ly/python/reference/#violin-visible) |
    /// [R](https://plot.ly/r/reference/#violin-visible)
    public var visible: Shared.Visible?

    /// Determines whether or not an item corresponding to this trace is shown in the legend.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-showlegend) |
    /// [Python](https://plot.ly/python/reference/#violin-showlegend) |
    /// [R](https://plot.ly/r/reference/#violin-showlegend)
    public var showLegend: Bool?

    /// Sets the legend group for this trace. 
    ///
    /// Traces part of the same legend group hide/show at the same time when toggling legend items.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-legendgroup) |
    /// [Python](https://plot.ly/python/reference/#violin-legendgroup) |
    /// [R](https://plot.ly/r/reference/#violin-legendgroup)
    public var legendGroup: String?

    /// Sets the opacity of the trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-opacity) |
    /// [Python](https://plot.ly/python/reference/#violin-opacity) |
    /// [R](https://plot.ly/r/reference/#violin-opacity)
    public var opacity: Double?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-uid) |
    /// [Python](https://plot.ly/python/reference/#violin-uid) |
    /// [R](https://plot.ly/r/reference/#violin-uid)
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-ids) |
    /// [Python](https://plot.ly/python/reference/#violin-ids) |
    /// [R](https://plot.ly/r/reference/#violin-ids)
    public var ids: [Double]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-customdata) |
    /// [Python](https://plot.ly/python/reference/#violin-customdata) |
    /// [R](https://plot.ly/r/reference/#violin-customdata)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-meta) |
    /// [Python](https://plot.ly/python/reference/#violin-meta) |
    /// [R](https://plot.ly/r/reference/#violin-meta)
    public var meta: Anything?

    /// Array containing integer indices of selected points. 
    ///
    /// Has an effect only for traces that support selections. Note that an empty array means an empty
    /// selection where the `unselected` are turned on for all points, whereas, any other non-array
    /// values means no selection all where the `selected` and `unselected` styles have no effect.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-selectedpoints) |
    /// [Python](https://plot.ly/python/reference/#violin-selectedpoints) |
    /// [R](https://plot.ly/r/reference/#violin-selectedpoints)
    public var selectedPoints: Anything?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-hoverinfo) |
    /// [Python](https://plot.ly/python/reference/#violin-hoverinfo) |
    /// [R](https://plot.ly/r/reference/#violin-hoverinfo)
    public var hoverInfo: Shared.HoverInfo?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#violin-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#violin-hoverlabel)
    public var hoverLabel: Shared.HoverLabel?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-stream) |
    /// [Python](https://plot.ly/python/reference/#violin-stream) |
    /// [R](https://plot.ly/r/reference/#violin-stream)
    public var stream: Shared.Stream?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-transforms) |
    /// [Python](https://plot.ly/python/reference/#violin-transforms) |
    /// [R](https://plot.ly/r/reference/#violin-transforms)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-uirevision) |
    /// [Python](https://plot.ly/python/reference/#violin-uirevision) |
    /// [R](https://plot.ly/r/reference/#violin-uirevision)
    public var uiRevision: Anything?

    /// Sets the y sample data or coordinates. 
    ///
    /// See overview for more info.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-y) |
    /// [Python](https://plot.ly/python/reference/#violin-y) |
    /// [R](https://plot.ly/r/reference/#violin-y)
    public var y: [Double]?

    /// Sets the x sample data or coordinates. 
    ///
    /// See overview for more info.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-x) |
    /// [Python](https://plot.ly/python/reference/#violin-x) |
    /// [R](https://plot.ly/r/reference/#violin-x)
    public var x: [Double]?

    /// Sets the x coordinate of the box. 
    ///
    /// See overview for more info.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-x0) |
    /// [Python](https://plot.ly/python/reference/#violin-x0) |
    /// [R](https://plot.ly/r/reference/#violin-x0)
    public var x0: Anything?

    /// Sets the y coordinate of the box. 
    ///
    /// See overview for more info.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-y0) |
    /// [Python](https://plot.ly/python/reference/#violin-y0) |
    /// [R](https://plot.ly/r/reference/#violin-y0)
    public var y0: Anything?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover. For violin traces, the name will also be
    /// used for the position coordinate, if `x` and `x0` (`y` and `y0` if horizontal) are missing and
    /// the position axis is categorical. Note that the trace name is also used as a default value for
    /// attribute `scalegroup` (please see its description for details).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-name) |
    /// [Python](https://plot.ly/python/reference/#violin-name) |
    /// [R](https://plot.ly/r/reference/#violin-name)
    public var name: String?

    /// Sets the orientation of the violin(s). 
    ///
    /// If *v* (*h*), the distribution is visualized along the vertical (horizontal).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-orientation) |
    /// [Python](https://plot.ly/python/reference/#violin-orientation) |
    /// [R](https://plot.ly/r/reference/#violin-orientation)
    public var orientation: Shared.Orientation?

    /// Sets the bandwidth used to compute the kernel density estimate. 
    ///
    /// By default, the bandwidth is determined by Silverman's rule of thumb.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-bandwidth) |
    /// [Python](https://plot.ly/python/reference/#violin-bandwidth) |
    /// [R](https://plot.ly/r/reference/#violin-bandwidth)
    public var bandwidth: Double?

    /// If there are multiple violins that should be sized according to to some metric (see `scalemode`), link them by providing a non-empty group id here shared by every trace in the same group. 
    ///
    /// If a violin's `width` is undefined, `scalegroup` will default to the trace's name. In this case,
    /// violins with the same names will be linked together
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-scalegroup) |
    /// [Python](https://plot.ly/python/reference/#violin-scalegroup) |
    /// [R](https://plot.ly/r/reference/#violin-scalegroup)
    public var scaleGroup: String?

    /// Sets the metric by which the width of each violin is determined.*width* means each violin has the same (max) width*count* means the violins are scaled by the number of sample points makingup each violin.
    ///
    /// # Used By
    /// `Violin.scaleMode` |
    public enum ScaleMode: String, Encodable {
        case width
        case count
    }
    /// Sets the metric by which the width of each violin is determined.*width* means each violin has the same (max) width*count* means the violins are scaled by the number of sample points makingup each violin.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-scalemode) |
    /// [Python](https://plot.ly/python/reference/#violin-scalemode) |
    /// [R](https://plot.ly/r/reference/#violin-scalemode)
    public var scaleMode: ScaleMode?

    /// Sets the method by which the span in data space where the density function will be computed. 
    ///
    /// *soft* means the span goes from the sample's minimum value minus two bandwidths to the sample's
    /// maximum value plus two bandwidths. *hard* means the span goes from the sample's minimum to its
    /// maximum value. For custom span settings, use mode *manual* and fill in the `span` attribute.
    ///
    /// # Used By
    /// `Violin.spanMode` |
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-spanmode) |
    /// [Python](https://plot.ly/python/reference/#violin-spanmode) |
    /// [R](https://plot.ly/r/reference/#violin-spanmode)
    public var spanMode: SpanMode?

    /// Sets the span in data space for which the density function will be computed. 
    ///
    /// Has an effect only when `spanmode` is set to *manual*.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-span) |
    /// [Python](https://plot.ly/python/reference/#violin-span) |
    /// [R](https://plot.ly/r/reference/#violin-span)
    public var span: InfoArray?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-line) |
    /// [Python](https://plot.ly/python/reference/#violin-line) |
    /// [R](https://plot.ly/r/reference/#violin-line)
    public var line: Shared.Line?

    /// Sets the fill color. 
    ///
    /// Defaults to a half-transparent variant of the line color, marker color, or marker line color,
    /// whichever is available.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-fillcolor) |
    /// [Python](https://plot.ly/python/reference/#violin-fillcolor) |
    /// [R](https://plot.ly/r/reference/#violin-fillcolor)
    public var fillColor: Color?

    /// If *outliers*, only the sample points lying outside the whiskers are shown If *suspectedoutliers*, the outlier points are shown and points either less than 4*Q1-3*Q3 or greater than 4*Q3-3*Q1 are highlighted (see `outliercolor`) If *all*, all sample points are shown If *false*, only the violins are shown with no sample points
    ///
    /// # Used By
    /// `Violin.points` |
    public enum Points: String, Encodable {
        case all
        case outliers
        case suspectedOutliers = "suspectedoutliers"
        case `false` = "false"
    }
    /// If *outliers*, only the sample points lying outside the whiskers are shown If *suspectedoutliers*, the outlier points are shown and points either less than 4*Q1-3*Q3 or greater than 4*Q3-3*Q1 are highlighted (see `outliercolor`) If *all*, all sample points are shown If *false*, only the violins are shown with no sample points
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-points) |
    /// [Python](https://plot.ly/python/reference/#violin-points) |
    /// [R](https://plot.ly/r/reference/#violin-points)
    public var points: Points?

    /// Sets the amount of jitter in the sample points drawn. 
    ///
    /// If *0*, the sample points align along the distribution axis. If *1*, the sample points are drawn
    /// in a random jitter of width equal to the width of the violins.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-jitter) |
    /// [Python](https://plot.ly/python/reference/#violin-jitter) |
    /// [R](https://plot.ly/r/reference/#violin-jitter)
    public var jitter: Double?

    /// Sets the position of the sample points in relation to the violins. 
    ///
    /// If *0*, the sample points are places over the center of the violins. Positive (negative) values
    /// correspond to positions to the right (left) for vertical violins and above (below) for
    /// horizontal violins.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-pointpos) |
    /// [Python](https://plot.ly/python/reference/#violin-pointpos) |
    /// [R](https://plot.ly/r/reference/#violin-pointpos)
    public var pointPosition: Double?

    /// Sets the width of the violin in data coordinates. 
    ///
    /// If *0* (default value) the width is automatically selected based on the positions of other
    /// violin traces in the same subplot.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-width) |
    /// [Python](https://plot.ly/python/reference/#violin-width) |
    /// [R](https://plot.ly/r/reference/#violin-width)
    public var width: Double?

    /// # Used By
    /// `Violin.marker` |
    public struct SymbolicMarker: Encodable {
        /// Sets the color of the outlier sample points.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#violin-marker-outliercolor) |
        /// [Python](https://plot.ly/python/reference/#violin-marker-outliercolor) |
        /// [R](https://plot.ly/r/reference/#violin-marker-outliercolor)
        public var outlierColor: Color?
    
        /// Sets the marker symbol type. 
        ///
        /// Adding 100 is equivalent to appending *-open* to a symbol name. Adding 200 is equivalent to
        /// appending *-dot* to a symbol name. Adding 300 is equivalent to appending *-open-dot* or
        /// *dot-open* to a symbol name.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#violin-marker-symbol) |
        /// [Python](https://plot.ly/python/reference/#violin-marker-symbol) |
        /// [R](https://plot.ly/r/reference/#violin-marker-symbol)
        public var symbol: Shared.Symbol?
    
        /// Sets the marker opacity.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#violin-marker-opacity) |
        /// [Python](https://plot.ly/python/reference/#violin-marker-opacity) |
        /// [R](https://plot.ly/r/reference/#violin-marker-opacity)
        public var opacity: Double?
    
        /// Sets the marker size (in px).
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#violin-marker-size) |
        /// [Python](https://plot.ly/python/reference/#violin-marker-size) |
        /// [R](https://plot.ly/r/reference/#violin-marker-size)
        public var size: Double?
    
        /// Sets themarkercolor. 
        ///
        /// It accepts either a specific color or an array of numbers that are mapped to the colorscale
        /// relative to the max and min values of the array or relative to `marker.cmin` and `marker.cmax`
        /// if set.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#violin-marker-color) |
        /// [Python](https://plot.ly/python/reference/#violin-marker-color) |
        /// [R](https://plot.ly/r/reference/#violin-marker-color)
        public var color: Color?
    
        /// # Used By
        /// `Violin.SymbolicMarker.line` |
        public struct Line: Encodable {
            /// Sets themarker.linecolor. 
            ///
            /// It accepts either a specific color or an array of numbers that are mapped to the colorscale
            /// relative to the max and min values of the array or relative to `marker.line.cmin` and
            /// `marker.line.cmax` if set.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#violin-marker-line-color) |
            /// [Python](https://plot.ly/python/reference/#violin-marker-line-color) |
            /// [R](https://plot.ly/r/reference/#violin-marker-line-color)
            public var color: Color?
        
            /// Sets the width (in px) of the lines bounding the marker points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#violin-marker-line-width) |
            /// [Python](https://plot.ly/python/reference/#violin-marker-line-width) |
            /// [R](https://plot.ly/r/reference/#violin-marker-line-width)
            public var width: Double?
        
            /// Sets the border line color of the outlier sample points. 
            ///
            /// Defaults to marker.color
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#violin-marker-line-outliercolor) |
            /// [Python](https://plot.ly/python/reference/#violin-marker-line-outliercolor) |
            /// [R](https://plot.ly/r/reference/#violin-marker-line-outliercolor)
            public var outlierColor: Color?
        
            /// Sets the border line width (in px) of the outlier sample points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#violin-marker-line-outlierwidth) |
            /// [Python](https://plot.ly/python/reference/#violin-marker-line-outlierwidth) |
            /// [R](https://plot.ly/r/reference/#violin-marker-line-outlierwidth)
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
        /// [JavaScript](https://plot.ly/javascript/reference/#violin-marker-line) |
        /// [Python](https://plot.ly/python/reference/#violin-marker-line) |
        /// [R](https://plot.ly/r/reference/#violin-marker-line)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-marker) |
    /// [Python](https://plot.ly/python/reference/#violin-marker) |
    /// [R](https://plot.ly/r/reference/#violin-marker)
    public var marker: SymbolicMarker?

    /// Sets the text elements associated with each sample value. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to the this trace's (x,y) coordinates. To be seen, trace `hoverinfo`
    /// must contain a *text* flag.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-text) |
    /// [Python](https://plot.ly/python/reference/#violin-text) |
    /// [R](https://plot.ly/r/reference/#violin-text)
    public var text: ArrayOrString?

    /// Same as `text`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-hovertext) |
    /// [Python](https://plot.ly/python/reference/#violin-hovertext) |
    /// [R](https://plot.ly/r/reference/#violin-hovertext)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-hovertemplate) |
    /// [Python](https://plot.ly/python/reference/#violin-hovertemplate) |
    /// [R](https://plot.ly/r/reference/#violin-hovertemplate)
    public var hoverTemplate: ArrayOrString?

    /// # Used By
    /// `Violin.box` |
    public struct Box: Encodable {
        /// Determines if an miniature box plot is drawn inside the violins. 
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#violin-box-visible) |
        /// [Python](https://plot.ly/python/reference/#violin-box-visible) |
        /// [R](https://plot.ly/r/reference/#violin-box-visible)
        public var visible: Bool?
    
        /// Sets the width of the inner box plots relative to the violins' width. 
        ///
        /// For example, with 1, the inner box plots are as wide as the violins.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#violin-box-width) |
        /// [Python](https://plot.ly/python/reference/#violin-box-width) |
        /// [R](https://plot.ly/r/reference/#violin-box-width)
        public var width: Double?
    
        /// Sets the inner box plot fill color.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#violin-box-fillcolor) |
        /// [Python](https://plot.ly/python/reference/#violin-box-fillcolor) |
        /// [R](https://plot.ly/r/reference/#violin-box-fillcolor)
        public var fillColor: Color?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#violin-box-line) |
        /// [Python](https://plot.ly/python/reference/#violin-box-line) |
        /// [R](https://plot.ly/r/reference/#violin-box-line)
        public var line: Shared.Line?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case visible
            case width
            case fillColor = "fillcolor"
            case line
        }
        
        public init(visible: Bool? = nil, width: Double? = nil, fillColor: Color? = nil, line: Shared.Line? = nil) {
            self.visible = visible
            self.width = width
            self.fillColor = fillColor
            self.line = line
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-box) |
    /// [Python](https://plot.ly/python/reference/#violin-box) |
    /// [R](https://plot.ly/r/reference/#violin-box)
    public var box: Box?

    /// # Used By
    /// `Violin.meanLine` |
    public struct MeanLine: Encodable {
        /// Determines if a line corresponding to the sample's mean is shown inside the violins. 
        ///
        /// If `box.visible` is turned on, the mean line is drawn inside the inner box. Otherwise, the mean
        /// line is drawn from one side of the violin to other.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#violin-meanline-visible) |
        /// [Python](https://plot.ly/python/reference/#violin-meanline-visible) |
        /// [R](https://plot.ly/r/reference/#violin-meanline-visible)
        public var visible: Bool?
    
        /// Sets the mean line color.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#violin-meanline-color) |
        /// [Python](https://plot.ly/python/reference/#violin-meanline-color) |
        /// [R](https://plot.ly/r/reference/#violin-meanline-color)
        public var color: Color?
    
        /// Sets the mean line width.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#violin-meanline-width) |
        /// [Python](https://plot.ly/python/reference/#violin-meanline-width) |
        /// [R](https://plot.ly/r/reference/#violin-meanline-width)
        public var width: Double?
    
        public init(visible: Bool? = nil, color: Color? = nil, width: Double? = nil) {
            self.visible = visible
            self.color = color
            self.width = width
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-meanline) |
    /// [Python](https://plot.ly/python/reference/#violin-meanline) |
    /// [R](https://plot.ly/r/reference/#violin-meanline)
    public var meanLine: MeanLine?

    /// Determines on which side of the position value the density function making up one half of a violin is plotted. 
    ///
    /// Useful when comparing two violin traces under *overlay* mode, where one trace has `side` set to
    /// *positive* and the other to *negative*.
    ///
    /// # Used By
    /// `Violin.side` |
    public enum Side: String, Encodable {
        case both
        case positive
        case negative
    }
    /// Determines on which side of the position value the density function making up one half of a violin is plotted. 
    ///
    /// Useful when comparing two violin traces under *overlay* mode, where one trace has `side` set to
    /// *positive* and the other to *negative*.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-side) |
    /// [Python](https://plot.ly/python/reference/#violin-side) |
    /// [R](https://plot.ly/r/reference/#violin-side)
    public var side: Side?

    /// Set several traces linked to the same position axis or matching axes to the same offsetgroup where bars of the same position coordinate will line up.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-offsetgroup) |
    /// [Python](https://plot.ly/python/reference/#violin-offsetgroup) |
    /// [R](https://plot.ly/r/reference/#violin-offsetgroup)
    public var offsetGroup: String?

    /// Set several traces linked to the same position axis or matching axes to the same alignmentgroup. 
    ///
    /// This controls whether bars compute their positional range dependently or independently.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-alignmentgroup) |
    /// [Python](https://plot.ly/python/reference/#violin-alignmentgroup) |
    /// [R](https://plot.ly/r/reference/#violin-alignmentgroup)
    public var alignmentGroup: String?

    /// # Used By
    /// `Violin.selected` |
    public struct Selected: Encodable {
        /// # Used By
        /// `Violin.Selected.marker` |
        public struct Marker: Encodable {
            /// Sets the marker opacity of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#violin-selected-marker-opacity) |
            /// [Python](https://plot.ly/python/reference/#violin-selected-marker-opacity) |
            /// [R](https://plot.ly/r/reference/#violin-selected-marker-opacity)
            public var opacity: Double?
        
            /// Sets the marker color of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#violin-selected-marker-color) |
            /// [Python](https://plot.ly/python/reference/#violin-selected-marker-color) |
            /// [R](https://plot.ly/r/reference/#violin-selected-marker-color)
            public var color: Color?
        
            /// Sets the marker size of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#violin-selected-marker-size) |
            /// [Python](https://plot.ly/python/reference/#violin-selected-marker-size) |
            /// [R](https://plot.ly/r/reference/#violin-selected-marker-size)
            public var size: Double?
        
            public init(opacity: Double? = nil, color: Color? = nil, size: Double? = nil) {
                self.opacity = opacity
                self.color = color
                self.size = size
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#violin-selected-marker) |
        /// [Python](https://plot.ly/python/reference/#violin-selected-marker) |
        /// [R](https://plot.ly/r/reference/#violin-selected-marker)
        public var marker: Marker?
    
        public init(marker: Marker? = nil) {
            self.marker = marker
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-selected) |
    /// [Python](https://plot.ly/python/reference/#violin-selected) |
    /// [R](https://plot.ly/r/reference/#violin-selected)
    public var selected: Selected?

    /// # Used By
    /// `Violin.unselected` |
    public struct Unselected: Encodable {
        /// # Used By
        /// `Violin.Unselected.marker` |
        public struct Marker: Encodable {
            /// Sets the marker opacity of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#violin-unselected-marker-opacity) |
            /// [Python](https://plot.ly/python/reference/#violin-unselected-marker-opacity) |
            /// [R](https://plot.ly/r/reference/#violin-unselected-marker-opacity)
            public var opacity: Double?
        
            /// Sets the marker color of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#violin-unselected-marker-color) |
            /// [Python](https://plot.ly/python/reference/#violin-unselected-marker-color) |
            /// [R](https://plot.ly/r/reference/#violin-unselected-marker-color)
            public var color: Color?
        
            /// Sets the marker size of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#violin-unselected-marker-size) |
            /// [Python](https://plot.ly/python/reference/#violin-unselected-marker-size) |
            /// [R](https://plot.ly/r/reference/#violin-unselected-marker-size)
            public var size: Double?
        
            public init(opacity: Double? = nil, color: Color? = nil, size: Double? = nil) {
                self.opacity = opacity
                self.color = color
                self.size = size
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#violin-unselected-marker) |
        /// [Python](https://plot.ly/python/reference/#violin-unselected-marker) |
        /// [R](https://plot.ly/r/reference/#violin-unselected-marker)
        public var marker: Marker?
    
        public init(marker: Marker? = nil) {
            self.marker = marker
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-unselected) |
    /// [Python](https://plot.ly/python/reference/#violin-unselected) |
    /// [R](https://plot.ly/r/reference/#violin-unselected)
    public var unselected: Unselected?

    /// Do the hover effects highlight individual violins or sample points or the kernel density estimate or any combination of them?
    ///
    /// # Used By
    /// `Violin.hoverOn` |
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
    /// Do the hover effects highlight individual violins or sample points or the kernel density estimate or any combination of them?
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-hoveron) |
    /// [Python](https://plot.ly/python/reference/#violin-hoveron) |
    /// [R](https://plot.ly/r/reference/#violin-hoveron)
    public var hoverOn: HoverOn?

    /// Sets a reference between this trace's x coordinates and a 2D cartesian x axis. 
    ///
    /// If *x* (the default value), the x coordinates refer to `layout.xaxis`. If *x2*, the x
    /// coordinates refer to `layout.xaxis2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-xaxis) |
    /// [Python](https://plot.ly/python/reference/#violin-xaxis) |
    /// [R](https://plot.ly/r/reference/#violin-xaxis)
    public var xAxis: SubPlotID?

    /// Sets a reference between this trace's y coordinates and a 2D cartesian y axis. 
    ///
    /// If *y* (the default value), the y coordinates refer to `layout.yaxis`. If *y2*, the y
    /// coordinates refer to `layout.yaxis2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#violin-yaxis) |
    /// [Python](https://plot.ly/python/reference/#violin-yaxis) |
    /// [R](https://plot.ly/r/reference/#violin-yaxis)
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
    
    public init(visible: Shared.Visible? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, selectedPoints: Anything? = nil, hoverInfo: Shared.HoverInfo? = nil, hoverLabel: Shared.HoverLabel? = nil, stream: Shared.Stream? = nil, transforms: [Shared.Transform]? = nil, uiRevision: Anything? = nil, y: [Double]? = nil, x: [Double]? = nil, x0: Anything? = nil, y0: Anything? = nil, name: String? = nil, orientation: Shared.Orientation? = nil, bandwidth: Double? = nil, scaleGroup: String? = nil, scaleMode: ScaleMode? = nil, spanMode: SpanMode? = nil, span: InfoArray? = nil, line: Shared.Line? = nil, fillColor: Color? = nil, points: Points? = nil, jitter: Double? = nil, pointPosition: Double? = nil, width: Double? = nil, marker: SymbolicMarker? = nil, text: ArrayOrString? = nil, hoverText: ArrayOrString? = nil, hoverTemplate: ArrayOrString? = nil, box: Box? = nil, meanLine: MeanLine? = nil, side: Side? = nil, offsetGroup: String? = nil, alignmentGroup: String? = nil, selected: Selected? = nil, unselected: Unselected? = nil, hoverOn: HoverOn? = nil, xAxis: SubPlotID? = nil, yAxis: SubPlotID? = nil) {
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
}