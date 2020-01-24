/// Provides similar functionality to the *scatter* type but on a ternary phase diagram. 
///
/// The data is provided by at least two arrays out of `a`, `b`, `c` triplets.
public struct ScatterTernary<AData, BData, CData>: Trace where AData: Encodable, BData: Encodable, CData: Encodable {
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#type) |
    /// [Python](https://plot.ly/python/reference/#type) |
    /// [R](https://plot.ly/r/reference/#type)
    public let type: String = "scatterternary"

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
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-visible) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-visible) |
    /// [R](https://plot.ly/r/reference/#scatterternary-visible)
    public var visible: Shared.Visible?

    /// Determines whether or not an item corresponding to this trace is shown in the legend.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-showlegend) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-showlegend) |
    /// [R](https://plot.ly/r/reference/#scatterternary-showlegend)
    public var showLegend: Bool?

    /// Sets the legend group for this trace. 
    ///
    /// Traces part of the same legend group hide/show at the same time when toggling legend items.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-legendgroup) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-legendgroup) |
    /// [R](https://plot.ly/r/reference/#scatterternary-legendgroup)
    public var legendGroup: String?

    /// Sets the opacity of the trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-opacity) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-opacity) |
    /// [R](https://plot.ly/r/reference/#scatterternary-opacity)
    public var opacity: Double?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-name) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-name) |
    /// [R](https://plot.ly/r/reference/#scatterternary-name)
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-uid) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-uid) |
    /// [R](https://plot.ly/r/reference/#scatterternary-uid)
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-ids) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-ids) |
    /// [R](https://plot.ly/r/reference/#scatterternary-ids)
    public var ids: [String]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-customdata) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-customdata) |
    /// [R](https://plot.ly/r/reference/#scatterternary-customdata)
    public var customData: [String]?

    /// Assigns extra meta information associated with this trace that can be used in various text attributes. 
    ///
    /// Attributes such as trace `name`, graph, axis and colorbar `title.text`, annotation `text`
    /// `rangeselector`, `updatemenues` and `sliders` `label` text all support `meta`. To access the
    /// trace `meta` values in an attribute in the same trace, simply use `%{meta[i]}` where `i` is the
    /// index or key of the `meta` item in question. To access trace `meta` in layout attributes, use
    /// `%{data[n[.meta[i]}` where `i` is the index or key of the `meta` and `n` is the trace index.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-meta) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-meta) |
    /// [R](https://plot.ly/r/reference/#scatterternary-meta)
    public var meta: ArrayOrAnything?

    /// Array containing integer indices of selected points. 
    ///
    /// Has an effect only for traces that support selections. Note that an empty array means an empty
    /// selection where the `unselected` are turned on for all points, whereas, any other non-array
    /// values means no selection all where the `selected` and `unselected` styles have no effect.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-selectedpoints) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-selectedpoints) |
    /// [R](https://plot.ly/r/reference/#scatterternary-selectedpoints)
    public var selectedPoints: Anything?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#scatterternary-hoverlabel)
    public var hoverLabel: Shared.HoverLabel?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-stream) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-stream) |
    /// [R](https://plot.ly/r/reference/#scatterternary-stream)
    public var stream: Shared.Stream?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-transforms) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-transforms) |
    /// [R](https://plot.ly/r/reference/#scatterternary-transforms)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-uirevision) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-uirevision) |
    /// [R](https://plot.ly/r/reference/#scatterternary-uirevision)
    public var uiRevision: Anything?

    /// Sets the quantity of component `a` in each data point. 
    ///
    /// If `a`, `b`, and `c` are all provided, they need not be normalized, only the relative values
    /// matter. If only two arrays are provided they must be normalized to match `ternary<i>.sum`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-a) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-a) |
    /// [R](https://plot.ly/r/reference/#scatterternary-a)
    public var a: AData?

    /// Sets the quantity of component `a` in each data point. 
    ///
    /// If `a`, `b`, and `c` are all provided, they need not be normalized, only the relative values
    /// matter. If only two arrays are provided they must be normalized to match `ternary<i>.sum`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-b) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-b) |
    /// [R](https://plot.ly/r/reference/#scatterternary-b)
    public var b: BData?

    /// Sets the quantity of component `a` in each data point. 
    ///
    /// If `a`, `b`, and `c` are all provided, they need not be normalized, only the relative values
    /// matter. If only two arrays are provided they must be normalized to match `ternary<i>.sum`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-c) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-c) |
    /// [R](https://plot.ly/r/reference/#scatterternary-c)
    public var c: CData?

    /// The number each triplet should sum to, if only two of `a`, `b`, and `c` are provided. 
    ///
    /// This overrides `ternary<i>.sum` to normalize this specific trace, but does not affect the values
    /// displayed on the axes. 0 (or missing) means to use ternary<i>.sum
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-sum) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-sum) |
    /// [R](https://plot.ly/r/reference/#scatterternary-sum)
    public var sum: Double?

    /// Determines the drawing mode for this scatter trace. 
    ///
    /// If the provided `mode` includes *text* then the `text` elements appear at the coordinates.
    /// Otherwise, the `text` elements appear on hover. If there are less than 20 points and the trace
    /// is not stacked then the default is *lines+markers*. Otherwise, *lines*.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-mode) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-mode) |
    /// [R](https://plot.ly/r/reference/#scatterternary-mode)
    public var mode: Shared.Mode?

    /// Sets text elements associated with each (a,b,c) point. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of strings,
    /// the items are mapped in order to the the data points in (a,b,c). If trace `hoverinfo` contains a
    /// *text* flag and *hovertext* is not set, these elements will be seen in the hover labels.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-text) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-text) |
    /// [R](https://plot.ly/r/reference/#scatterternary-text)
    public var text: ArrayOrString?

    /// Template string used for rendering the information text that appear on points. 
    ///
    /// Note that this will override `textinfo`. Variables are inserted using %{variable}, for example
    /// "y: %{y}". Numbers are formatted using d3-format's syntax %{variable:d3-format}, for example
    /// "Price: %{y:$.2f}".
    /// https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format for details on
    /// the formatting syntax. Dates are formatted using d3-time-format's syntax
    /// %{variable|d3-time-format}, for example "Day: %{2019-01-01|%A}".
    /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format for details on
    /// the date formatting syntax. Every attributes that can be specified per-point (the ones that are
    /// `arrayOk: true`) are available. variables `a`, `b`, `c` and `text`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-texttemplate) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-texttemplate) |
    /// [R](https://plot.ly/r/reference/#scatterternary-texttemplate)
    public var textTemplate: ArrayOrString?

    /// Sets hover text elements associated with each (a,b,c) point. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of strings,
    /// the items are mapped in order to the the data points in (a,b,c). To be seen, trace `hoverinfo`
    /// must contain a *text* flag.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-hovertext) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-hovertext) |
    /// [R](https://plot.ly/r/reference/#scatterternary-hovertext)
    public var hoverText: ArrayOrString?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-line) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-line) |
    /// [R](https://plot.ly/r/reference/#scatterternary-line)
    public var line: Shared.SplineSmoothedDashedLine?

    /// Determines whether or not gaps (i.e. 
    ///
    /// {nan} or missing values) in the provided data arrays are connected.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-connectgaps) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-connectgaps) |
    /// [R](https://plot.ly/r/reference/#scatterternary-connectgaps)
    public var connectGaps: Bool?

    /// Determines whether or not markers and text nodes are clipped about the subplot axes. 
    ///
    /// To show markers and text nodes above axis lines and tick labels, make sure to set `xaxis.layer`
    /// and `yaxis.layer` to *below traces*.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-cliponaxis) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-cliponaxis) |
    /// [R](https://plot.ly/r/reference/#scatterternary-cliponaxis)
    public var clipOnAxis: Bool?

    /// Sets the area to fill with a solid color. 
    ///
    /// Use with `fillcolor` if not *none*. scatterternary has a subset of the options available to
    /// scatter. *toself* connects the endpoints of the trace (or each segment of the trace if it has
    /// gaps) into a closed shape. *tonext* fills the space between two traces if one completely
    /// encloses the other (eg consecutive contour lines), and behaves like *toself* if there is no
    /// trace before it. *tonext* should not be used if one trace does not enclose the other.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-fill) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-fill) |
    /// [R](https://plot.ly/r/reference/#scatterternary-fill)
    public var fill: Shared.AreaFill?

    /// Sets the fill color. 
    ///
    /// Defaults to a half-transparent variant of the line color, marker color, or marker line color,
    /// whichever is available.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-fillcolor) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-fillcolor) |
    /// [R](https://plot.ly/r/reference/#scatterternary-fillcolor)
    public var fillColor: Color?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-marker) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-marker) |
    /// [R](https://plot.ly/r/reference/#scatterternary-marker)
    public var marker: Shared.GradientMarker?

    /// Sets the text font.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-textfont) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-textfont) |
    /// [R](https://plot.ly/r/reference/#scatterternary-textfont)
    public var textFont: Shared.Font?

    /// Sets the positions of the `text` elements with respects to the (x,y) coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-textposition) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-textposition) |
    /// [R](https://plot.ly/r/reference/#scatterternary-textposition)
    public var textPosition: Shared.TextPosition?

    /// # Used By
    /// `ScatterTernary.selected` |
    public struct Selected: Encodable {
        /// # Used By
        /// `ScatterTernary.Selected.marker` |
        public struct Marker: Encodable {
            /// Sets the marker opacity of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-selected-marker-opacity) |
            /// [Python](https://plot.ly/python/reference/#scatterternary-selected-marker-opacity) |
            /// [R](https://plot.ly/r/reference/#scatterternary-selected-marker-opacity)
            public var opacity: Double?
        
            /// Sets the marker color of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-selected-marker-color) |
            /// [Python](https://plot.ly/python/reference/#scatterternary-selected-marker-color) |
            /// [R](https://plot.ly/r/reference/#scatterternary-selected-marker-color)
            public var color: Color?
        
            /// Sets the marker size of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-selected-marker-size) |
            /// [Python](https://plot.ly/python/reference/#scatterternary-selected-marker-size) |
            /// [R](https://plot.ly/r/reference/#scatterternary-selected-marker-size)
            public var size: Double?
        
            public init(opacity: Double? = nil, color: Color? = nil, size: Double? = nil) {
                self.opacity = opacity
                self.color = color
                self.size = size
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-selected-marker) |
        /// [Python](https://plot.ly/python/reference/#scatterternary-selected-marker) |
        /// [R](https://plot.ly/r/reference/#scatterternary-selected-marker)
        public var marker: Marker?
    
        /// # Used By
        /// `ScatterTernary.Selected.textFont` |
        public struct TextFont: Encodable {
            /// Sets the text font color of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-selected-textfont-color) |
            /// [Python](https://plot.ly/python/reference/#scatterternary-selected-textfont-color) |
            /// [R](https://plot.ly/r/reference/#scatterternary-selected-textfont-color)
            public var color: Color?
        
            public init(color: Color? = nil) {
                self.color = color
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-selected-textfont) |
        /// [Python](https://plot.ly/python/reference/#scatterternary-selected-textfont) |
        /// [R](https://plot.ly/r/reference/#scatterternary-selected-textfont)
        public var textFont: TextFont?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case marker
            case textFont = "textfont"
        }
        
        public init(marker: Marker? = nil, textFont: TextFont? = nil) {
            self.marker = marker
            self.textFont = textFont
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-selected) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-selected) |
    /// [R](https://plot.ly/r/reference/#scatterternary-selected)
    public var selected: Selected?

    /// # Used By
    /// `ScatterTernary.unselected` |
    public struct Unselected: Encodable {
        /// # Used By
        /// `ScatterTernary.Unselected.marker` |
        public struct Marker: Encodable {
            /// Sets the marker opacity of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-unselected-marker-opacity) |
            /// [Python](https://plot.ly/python/reference/#scatterternary-unselected-marker-opacity) |
            /// [R](https://plot.ly/r/reference/#scatterternary-unselected-marker-opacity)
            public var opacity: Double?
        
            /// Sets the marker color of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-unselected-marker-color) |
            /// [Python](https://plot.ly/python/reference/#scatterternary-unselected-marker-color) |
            /// [R](https://plot.ly/r/reference/#scatterternary-unselected-marker-color)
            public var color: Color?
        
            /// Sets the marker size of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-unselected-marker-size) |
            /// [Python](https://plot.ly/python/reference/#scatterternary-unselected-marker-size) |
            /// [R](https://plot.ly/r/reference/#scatterternary-unselected-marker-size)
            public var size: Double?
        
            public init(opacity: Double? = nil, color: Color? = nil, size: Double? = nil) {
                self.opacity = opacity
                self.color = color
                self.size = size
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-unselected-marker) |
        /// [Python](https://plot.ly/python/reference/#scatterternary-unselected-marker) |
        /// [R](https://plot.ly/r/reference/#scatterternary-unselected-marker)
        public var marker: Marker?
    
        /// # Used By
        /// `ScatterTernary.Unselected.textFont` |
        public struct TextFont: Encodable {
            /// Sets the text font color of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-unselected-textfont-color) |
            /// [Python](https://plot.ly/python/reference/#scatterternary-unselected-textfont-color) |
            /// [R](https://plot.ly/r/reference/#scatterternary-unselected-textfont-color)
            public var color: Color?
        
            public init(color: Color? = nil) {
                self.color = color
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-unselected-textfont) |
        /// [Python](https://plot.ly/python/reference/#scatterternary-unselected-textfont) |
        /// [R](https://plot.ly/r/reference/#scatterternary-unselected-textfont)
        public var textFont: TextFont?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case marker
            case textFont = "textfont"
        }
        
        public init(marker: Marker? = nil, textFont: TextFont? = nil) {
            self.marker = marker
            self.textFont = textFont
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-unselected) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-unselected) |
    /// [R](https://plot.ly/r/reference/#scatterternary-unselected)
    public var unselected: Unselected?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    ///
    /// # Used By
    /// `ScatterTernary.hoverInfo` |
    public struct HoverInfo: OptionSet, Encodable {
        public let rawValue: Int
    
        public static var a: HoverInfo { HoverInfo(rawValue: 1 << 0) }
        public static var b: HoverInfo { HoverInfo(rawValue: 1 << 1) }
        public static var c: HoverInfo { HoverInfo(rawValue: 1 << 2) }
        public static var text: HoverInfo { HoverInfo(rawValue: 1 << 3) }
        public static var name: HoverInfo { HoverInfo(rawValue: 1 << 4) }
        public static var all: HoverInfo { HoverInfo(rawValue: 1 << 5) }
        public static var none: HoverInfo { HoverInfo(rawValue: 1 << 6) }
        public static var skip: HoverInfo { HoverInfo(rawValue: 1 << 7) }
    
        public init(rawValue: Int) { self.rawValue = rawValue }
    
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["a"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["b"] }
            if (self.rawValue & 1 << 2) != 0 { options += ["c"] }
            if (self.rawValue & 1 << 3) != 0 { options += ["text"] }
            if (self.rawValue & 1 << 4) != 0 { options += ["name"] }
            if (self.rawValue & 1 << 5) != 0 { options += ["all"] }
            if (self.rawValue & 1 << 6) != 0 { options += ["none"] }
            if (self.rawValue & 1 << 7) != 0 { options += ["skip"] }
            var container = encoder.singleValueContainer()
            try container.encode(options.joined(separator: "+"))
        }
    }
    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-hoverinfo) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-hoverinfo) |
    /// [R](https://plot.ly/r/reference/#scatterternary-hoverinfo)
    public var hoverInfo: HoverInfo?

    /// Do the hover effects highlight individual points (markers or line points) or do they highlight filled regions? If the fill is *toself* or *tonext* and there are no markers or text, then the default is *fills*, otherwise it is *points*.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-hoveron) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-hoveron) |
    /// [R](https://plot.ly/r/reference/#scatterternary-hoveron)
    public var hoverOn: Shared.HoverOn?

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
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-hovertemplate) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-hovertemplate) |
    /// [R](https://plot.ly/r/reference/#scatterternary-hovertemplate)
    public var hoverTemplate: ArrayOrString?

    /// Sets a reference between this trace's data coordinates and a ternary subplot. 
    ///
    /// If *ternary* (the default value), the data refer to `layout.ternary`. If *ternary2*, the data
    /// refer to `layout.ternary2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scatterternary-subplot) |
    /// [Python](https://plot.ly/python/reference/#scatterternary-subplot) |
    /// [R](https://plot.ly/r/reference/#scatterternary-subplot)
    public var subPlot: SubPlotID?

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
        case hoverLabel = "hoverlabel"
        case stream
        case transforms
        case uiRevision = "uirevision"
        case a
        case b
        case c
        case sum
        case mode
        case text
        case textTemplate = "texttemplate"
        case hoverText = "hovertext"
        case line
        case connectGaps = "connectgaps"
        case clipOnAxis = "cliponaxis"
        case fill
        case fillColor = "fillcolor"
        case marker
        case textFont = "textfont"
        case textPosition = "textposition"
        case selected
        case unselected
        case hoverInfo = "hoverinfo"
        case hoverOn = "hoveron"
        case hoverTemplate = "hovertemplate"
        case subPlot = "subplot"
    }
    
    public init(visible: Shared.Visible? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [String]? = nil, customData: [String]? = nil, meta: ArrayOrAnything? = nil, selectedPoints: Anything? = nil, hoverLabel: Shared.HoverLabel? = nil, stream: Shared.Stream? = nil, transforms: [Shared.Transform]? = nil, uiRevision: Anything? = nil, a: AData? = nil, b: BData? = nil, c: CData? = nil, sum: Double? = nil, mode: Shared.Mode? = nil, text: ArrayOrString? = nil, textTemplate: ArrayOrString? = nil, hoverText: ArrayOrString? = nil, line: Shared.SplineSmoothedDashedLine? = nil, connectGaps: Bool? = nil, clipOnAxis: Bool? = nil, fill: Shared.AreaFill? = nil, fillColor: Color? = nil, marker: Shared.GradientMarker? = nil, textFont: Shared.Font? = nil, textPosition: Shared.TextPosition? = nil, selected: Selected? = nil, unselected: Unselected? = nil, hoverInfo: HoverInfo? = nil, hoverOn: Shared.HoverOn? = nil, hoverTemplate: ArrayOrString? = nil, subPlot: SubPlotID? = nil) {
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
        self.hoverLabel = hoverLabel
        self.stream = stream
        self.transforms = transforms
        self.uiRevision = uiRevision
        self.a = a
        self.b = b
        self.c = c
        self.sum = sum
        self.mode = mode
        self.text = text
        self.textTemplate = textTemplate
        self.hoverText = hoverText
        self.line = line
        self.connectGaps = connectGaps
        self.clipOnAxis = clipOnAxis
        self.fill = fill
        self.fillColor = fillColor
        self.marker = marker
        self.textFont = textFont
        self.textPosition = textPosition
        self.selected = selected
        self.unselected = unselected
        self.hoverInfo = hoverInfo
        self.hoverOn = hoverOn
        self.hoverTemplate = hoverTemplate
        self.subPlot = subPlot
    }
}