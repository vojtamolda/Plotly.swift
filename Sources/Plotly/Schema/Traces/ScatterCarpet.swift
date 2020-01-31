/// Plots a scatter trace on either the first carpet axis or the carpet axis with a matching `carpet` attribute.
public struct ScatterCarpet<AData, BData>: Trace where AData: Plotable, BData: Plotable {
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#type) |
    /// [Python](https://plot.ly/python/reference/#type) |
    /// [R](https://plot.ly/r/reference/#type)
    public let type: String = "scattercarpet"

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
    /// [JavaScript](https://plot.ly/javascript/reference/#scattercarpet-visible) |
    /// [Python](https://plot.ly/python/reference/#scattercarpet-visible) |
    /// [R](https://plot.ly/r/reference/#scattercarpet-visible)
    public var visible: Shared.Visible?

    /// Determines whether or not an item corresponding to this trace is shown in the legend.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattercarpet-showlegend) |
    /// [Python](https://plot.ly/python/reference/#scattercarpet-showlegend) |
    /// [R](https://plot.ly/r/reference/#scattercarpet-showlegend)
    public var showLegend: Bool?

    /// Sets the legend group for this trace. 
    ///
    /// Traces part of the same legend group hide/show at the same time when toggling legend items.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattercarpet-legendgroup) |
    /// [Python](https://plot.ly/python/reference/#scattercarpet-legendgroup) |
    /// [R](https://plot.ly/r/reference/#scattercarpet-legendgroup)
    public var legendGroup: String?

    /// Sets the opacity of the trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattercarpet-opacity) |
    /// [Python](https://plot.ly/python/reference/#scattercarpet-opacity) |
    /// [R](https://plot.ly/r/reference/#scattercarpet-opacity)
    public var opacity: Double?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattercarpet-name) |
    /// [Python](https://plot.ly/python/reference/#scattercarpet-name) |
    /// [R](https://plot.ly/r/reference/#scattercarpet-name)
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattercarpet-uid) |
    /// [Python](https://plot.ly/python/reference/#scattercarpet-uid) |
    /// [R](https://plot.ly/r/reference/#scattercarpet-uid)
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattercarpet-ids) |
    /// [Python](https://plot.ly/python/reference/#scattercarpet-ids) |
    /// [R](https://plot.ly/r/reference/#scattercarpet-ids)
    public var ids: [String]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattercarpet-customdata) |
    /// [Python](https://plot.ly/python/reference/#scattercarpet-customdata) |
    /// [R](https://plot.ly/r/reference/#scattercarpet-customdata)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scattercarpet-meta) |
    /// [Python](https://plot.ly/python/reference/#scattercarpet-meta) |
    /// [R](https://plot.ly/r/reference/#scattercarpet-meta)
    public var meta: ArrayOrAnything?

    /// Array containing integer indices of selected points. 
    ///
    /// Has an effect only for traces that support selections. Note that an empty array means an empty
    /// selection where the `unselected` are turned on for all points, whereas, any other non-array
    /// values means no selection all where the `selected` and `unselected` styles have no effect.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattercarpet-selectedpoints) |
    /// [Python](https://plot.ly/python/reference/#scattercarpet-selectedpoints) |
    /// [R](https://plot.ly/r/reference/#scattercarpet-selectedpoints)
    public var selectedPoints: Anything?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattercarpet-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#scattercarpet-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#scattercarpet-hoverlabel)
    public var hoverLabel: Shared.HoverLabel?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattercarpet-stream) |
    /// [Python](https://plot.ly/python/reference/#scattercarpet-stream) |
    /// [R](https://plot.ly/r/reference/#scattercarpet-stream)
    public var stream: Shared.Stream?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattercarpet-transforms) |
    /// [Python](https://plot.ly/python/reference/#scattercarpet-transforms) |
    /// [R](https://plot.ly/r/reference/#scattercarpet-transforms)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scattercarpet-uirevision) |
    /// [Python](https://plot.ly/python/reference/#scattercarpet-uirevision) |
    /// [R](https://plot.ly/r/reference/#scattercarpet-uirevision)
    public var uiRevision: Anything?

    /// An identifier for this carpet, so that `scattercarpet` and `contourcarpet` traces can specify a carpet plot on which they lie
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattercarpet-carpet) |
    /// [Python](https://plot.ly/python/reference/#scattercarpet-carpet) |
    /// [R](https://plot.ly/r/reference/#scattercarpet-carpet)
    public var carpet: String?

    /// Sets the a-axis coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattercarpet-a) |
    /// [Python](https://plot.ly/python/reference/#scattercarpet-a) |
    /// [R](https://plot.ly/r/reference/#scattercarpet-a)
    public var a: AData?

    /// Sets the b-axis coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattercarpet-b) |
    /// [Python](https://plot.ly/python/reference/#scattercarpet-b) |
    /// [R](https://plot.ly/r/reference/#scattercarpet-b)
    public var b: BData?

    /// Determines the drawing mode for this scatter trace. 
    ///
    /// If the provided `mode` includes *text* then the `text` elements appear at the coordinates.
    /// Otherwise, the `text` elements appear on hover. If there are less than 20 points and the trace
    /// is not stacked then the default is *lines+markers*. Otherwise, *lines*.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattercarpet-mode) |
    /// [Python](https://plot.ly/python/reference/#scattercarpet-mode) |
    /// [R](https://plot.ly/r/reference/#scattercarpet-mode)
    public var mode: Shared.Mode?

    /// Sets text elements associated with each (a,b) point. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of strings,
    /// the items are mapped in order to the the data points in (a,b). If trace `hoverinfo` contains a
    /// *text* flag and *hovertext* is not set, these elements will be seen in the hover labels.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattercarpet-text) |
    /// [Python](https://plot.ly/python/reference/#scattercarpet-text) |
    /// [R](https://plot.ly/r/reference/#scattercarpet-text)
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
    /// `arrayOk: true`) are available. variables `a`, `b` and `text`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattercarpet-texttemplate) |
    /// [Python](https://plot.ly/python/reference/#scattercarpet-texttemplate) |
    /// [R](https://plot.ly/r/reference/#scattercarpet-texttemplate)
    public var textTemplate: ArrayOrString?

    /// Sets hover text elements associated with each (a,b) point. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of strings,
    /// the items are mapped in order to the the data points in (a,b). To be seen, trace `hoverinfo`
    /// must contain a *text* flag.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattercarpet-hovertext) |
    /// [Python](https://plot.ly/python/reference/#scattercarpet-hovertext) |
    /// [R](https://plot.ly/r/reference/#scattercarpet-hovertext)
    public var hoverText: ArrayOrString?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattercarpet-line) |
    /// [Python](https://plot.ly/python/reference/#scattercarpet-line) |
    /// [R](https://plot.ly/r/reference/#scattercarpet-line)
    public var line: Shared.SplineSmoothedDashedLine?

    /// Determines whether or not gaps (i.e. 
    ///
    /// {nan} or missing values) in the provided data arrays are connected.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattercarpet-connectgaps) |
    /// [Python](https://plot.ly/python/reference/#scattercarpet-connectgaps) |
    /// [R](https://plot.ly/r/reference/#scattercarpet-connectgaps)
    public var connectGaps: Bool?

    /// Sets the area to fill with a solid color. 
    ///
    /// Use with `fillcolor` if not *none*. scatterternary has a subset of the options available to
    /// scatter. *toself* connects the endpoints of the trace (or each segment of the trace if it has
    /// gaps) into a closed shape. *tonext* fills the space between two traces if one completely
    /// encloses the other (eg consecutive contour lines), and behaves like *toself* if there is no
    /// trace before it. *tonext* should not be used if one trace does not enclose the other.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattercarpet-fill) |
    /// [Python](https://plot.ly/python/reference/#scattercarpet-fill) |
    /// [R](https://plot.ly/r/reference/#scattercarpet-fill)
    public var fill: Shared.AreaFill?

    /// Sets the fill color. 
    ///
    /// Defaults to a half-transparent variant of the line color, marker color, or marker line color,
    /// whichever is available.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattercarpet-fillcolor) |
    /// [Python](https://plot.ly/python/reference/#scattercarpet-fillcolor) |
    /// [R](https://plot.ly/r/reference/#scattercarpet-fillcolor)
    public var fillColor: Color?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattercarpet-marker) |
    /// [Python](https://plot.ly/python/reference/#scattercarpet-marker) |
    /// [R](https://plot.ly/r/reference/#scattercarpet-marker)
    public var marker: Shared.GradientMarker?

    /// Sets the text font.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattercarpet-textfont) |
    /// [Python](https://plot.ly/python/reference/#scattercarpet-textfont) |
    /// [R](https://plot.ly/r/reference/#scattercarpet-textfont)
    public var textFont: Shared.Font?

    /// Sets the positions of the `text` elements with respects to the (x,y) coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattercarpet-textposition) |
    /// [Python](https://plot.ly/python/reference/#scattercarpet-textposition) |
    /// [R](https://plot.ly/r/reference/#scattercarpet-textposition)
    public var textPosition: Shared.TextPosition?

    /// # Used By
    /// `ScatterCarpet.selected` |
    public struct Selected: Encodable {
        /// # Used By
        /// `ScatterCarpet.Selected.marker` |
        public struct Marker: Encodable {
            /// Sets the marker opacity of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scattercarpet-selected-marker-opacity) |
            /// [Python](https://plot.ly/python/reference/#scattercarpet-selected-marker-opacity) |
            /// [R](https://plot.ly/r/reference/#scattercarpet-selected-marker-opacity)
            public var opacity: Double?
        
            /// Sets the marker color of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scattercarpet-selected-marker-color) |
            /// [Python](https://plot.ly/python/reference/#scattercarpet-selected-marker-color) |
            /// [R](https://plot.ly/r/reference/#scattercarpet-selected-marker-color)
            public var color: Color?
        
            /// Sets the marker size of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scattercarpet-selected-marker-size) |
            /// [Python](https://plot.ly/python/reference/#scattercarpet-selected-marker-size) |
            /// [R](https://plot.ly/r/reference/#scattercarpet-selected-marker-size)
            public var size: Double?
        
            public init(opacity: Double? = nil, color: Color? = nil, size: Double? = nil) {
                self.opacity = opacity
                self.color = color
                self.size = size
            }
            
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattercarpet-selected-marker) |
        /// [Python](https://plot.ly/python/reference/#scattercarpet-selected-marker) |
        /// [R](https://plot.ly/r/reference/#scattercarpet-selected-marker)
        public var marker: Marker?
    
        /// # Used By
        /// `ScatterCarpet.Selected.textFont` |
        public struct TextFont: Encodable {
            /// Sets the text font color of selected points.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scattercarpet-selected-textfont-color) |
            /// [Python](https://plot.ly/python/reference/#scattercarpet-selected-textfont-color) |
            /// [R](https://plot.ly/r/reference/#scattercarpet-selected-textfont-color)
            public var color: Color?
        
            public init(color: Color? = nil) {
                self.color = color
            }
            
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattercarpet-selected-textfont) |
        /// [Python](https://plot.ly/python/reference/#scattercarpet-selected-textfont) |
        /// [R](https://plot.ly/r/reference/#scattercarpet-selected-textfont)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scattercarpet-selected) |
    /// [Python](https://plot.ly/python/reference/#scattercarpet-selected) |
    /// [R](https://plot.ly/r/reference/#scattercarpet-selected)
    public var selected: Selected?

    /// # Used By
    /// `ScatterCarpet.unselected` |
    public struct Unselected: Encodable {
        /// # Used By
        /// `ScatterCarpet.Unselected.marker` |
        public struct Marker: Encodable {
            /// Sets the marker opacity of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scattercarpet-unselected-marker-opacity) |
            /// [Python](https://plot.ly/python/reference/#scattercarpet-unselected-marker-opacity) |
            /// [R](https://plot.ly/r/reference/#scattercarpet-unselected-marker-opacity)
            public var opacity: Double?
        
            /// Sets the marker color of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scattercarpet-unselected-marker-color) |
            /// [Python](https://plot.ly/python/reference/#scattercarpet-unselected-marker-color) |
            /// [R](https://plot.ly/r/reference/#scattercarpet-unselected-marker-color)
            public var color: Color?
        
            /// Sets the marker size of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scattercarpet-unselected-marker-size) |
            /// [Python](https://plot.ly/python/reference/#scattercarpet-unselected-marker-size) |
            /// [R](https://plot.ly/r/reference/#scattercarpet-unselected-marker-size)
            public var size: Double?
        
            public init(opacity: Double? = nil, color: Color? = nil, size: Double? = nil) {
                self.opacity = opacity
                self.color = color
                self.size = size
            }
            
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattercarpet-unselected-marker) |
        /// [Python](https://plot.ly/python/reference/#scattercarpet-unselected-marker) |
        /// [R](https://plot.ly/r/reference/#scattercarpet-unselected-marker)
        public var marker: Marker?
    
        /// # Used By
        /// `ScatterCarpet.Unselected.textFont` |
        public struct TextFont: Encodable {
            /// Sets the text font color of unselected points, applied only when a selection exists.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#scattercarpet-unselected-textfont-color) |
            /// [Python](https://plot.ly/python/reference/#scattercarpet-unselected-textfont-color) |
            /// [R](https://plot.ly/r/reference/#scattercarpet-unselected-textfont-color)
            public var color: Color?
        
            public init(color: Color? = nil) {
                self.color = color
            }
            
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#scattercarpet-unselected-textfont) |
        /// [Python](https://plot.ly/python/reference/#scattercarpet-unselected-textfont) |
        /// [R](https://plot.ly/r/reference/#scattercarpet-unselected-textfont)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scattercarpet-unselected) |
    /// [Python](https://plot.ly/python/reference/#scattercarpet-unselected) |
    /// [R](https://plot.ly/r/reference/#scattercarpet-unselected)
    public var unselected: Unselected?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    ///
    /// # Used By
    /// `ScatterCarpet.hoverInfo` |
    public struct HoverInfo: OptionSet, Encodable {
        public let rawValue: Int
    
        public static var a: HoverInfo { HoverInfo(rawValue: 1 << 0) }
        public static var b: HoverInfo { HoverInfo(rawValue: 1 << 1) }
        public static var text: HoverInfo { HoverInfo(rawValue: 1 << 2) }
        public static var name: HoverInfo { HoverInfo(rawValue: 1 << 3) }
        public static var all: HoverInfo { HoverInfo(rawValue: 1 << 4) }
        public static var none: HoverInfo { HoverInfo(rawValue: 1 << 5) }
        public static var skip: HoverInfo { HoverInfo(rawValue: 1 << 6) }
    
        public init(rawValue: Int) { self.rawValue = rawValue }
    
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["a"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["b"] }
            if (self.rawValue & 1 << 2) != 0 { options += ["text"] }
            if (self.rawValue & 1 << 3) != 0 { options += ["name"] }
            if (self.rawValue & 1 << 4) != 0 { options += ["all"] }
            if (self.rawValue & 1 << 5) != 0 { options += ["none"] }
            if (self.rawValue & 1 << 6) != 0 { options += ["skip"] }
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scattercarpet-hoverinfo) |
    /// [Python](https://plot.ly/python/reference/#scattercarpet-hoverinfo) |
    /// [R](https://plot.ly/r/reference/#scattercarpet-hoverinfo)
    public var hoverInfo: HoverInfo?

    /// Do the hover effects highlight individual points (markers or line points) or do they highlight filled regions? If the fill is *toself* or *tonext* and there are no markers or text, then the default is *fills*, otherwise it is *points*.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattercarpet-hoveron) |
    /// [Python](https://plot.ly/python/reference/#scattercarpet-hoveron) |
    /// [R](https://plot.ly/r/reference/#scattercarpet-hoveron)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#scattercarpet-hovertemplate) |
    /// [Python](https://plot.ly/python/reference/#scattercarpet-hovertemplate) |
    /// [R](https://plot.ly/r/reference/#scattercarpet-hovertemplate)
    public var hoverTemplate: ArrayOrString?

    /// Sets a reference between this trace's x coordinates and a 2D cartesian x axis. 
    ///
    /// If *x* (the default value), the x coordinates refer to `layout.xaxis`. If *x2*, the x
    /// coordinates refer to `layout.xaxis2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattercarpet-xaxis) |
    /// [Python](https://plot.ly/python/reference/#scattercarpet-xaxis) |
    /// [R](https://plot.ly/r/reference/#scattercarpet-xaxis)
    public var xAxis: SubPlotID?

    /// Sets a reference between this trace's y coordinates and a 2D cartesian y axis. 
    ///
    /// If *y* (the default value), the y coordinates refer to `layout.yaxis`. If *y2*, the y
    /// coordinates refer to `layout.yaxis2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#scattercarpet-yaxis) |
    /// [Python](https://plot.ly/python/reference/#scattercarpet-yaxis) |
    /// [R](https://plot.ly/r/reference/#scattercarpet-yaxis)
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
        case selectedPoints = "selectedpoints"
        case hoverLabel = "hoverlabel"
        case stream
        case transforms
        case uiRevision = "uirevision"
        case carpet
        case a
        case b
        case mode
        case text
        case textTemplate = "texttemplate"
        case hoverText = "hovertext"
        case line
        case connectGaps = "connectgaps"
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
        case xAxis = "xaxis"
        case yAxis = "yaxis"
    }
    
    public init(visible: Shared.Visible? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [String]? = nil, customData: [String]? = nil, meta: ArrayOrAnything? = nil, selectedPoints: Anything? = nil, hoverLabel: Shared.HoverLabel? = nil, stream: Shared.Stream? = nil, transforms: [Shared.Transform]? = nil, uiRevision: Anything? = nil, carpet: String? = nil, a: AData? = nil, b: BData? = nil, mode: Shared.Mode? = nil, text: ArrayOrString? = nil, textTemplate: ArrayOrString? = nil, hoverText: ArrayOrString? = nil, line: Shared.SplineSmoothedDashedLine? = nil, connectGaps: Bool? = nil, fill: Shared.AreaFill? = nil, fillColor: Color? = nil, marker: Shared.GradientMarker? = nil, textFont: Shared.Font? = nil, textPosition: Shared.TextPosition? = nil, selected: Selected? = nil, unselected: Unselected? = nil, hoverInfo: HoverInfo? = nil, hoverOn: Shared.HoverOn? = nil, hoverTemplate: ArrayOrString? = nil, xAxis: SubPlotID? = nil, yAxis: SubPlotID? = nil) {
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
        self.carpet = carpet
        self.a = a
        self.b = b
        self.mode = mode
        self.text = text
        self.textTemplate = textTemplate
        self.hoverText = hoverText
        self.line = line
        self.connectGaps = connectGaps
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
        self.xAxis = xAxis
        self.yAxis = yAxis
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(animatable, forKey: .animatable)
        try container.encodeIfPresent(visible, forKey: .visible)
        try container.encodeIfPresent(showLegend, forKey: .showLegend)
        try container.encodeIfPresent(legendGroup, forKey: .legendGroup)
        try container.encodeIfPresent(opacity, forKey: .opacity)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(uid, forKey: .uid)
        try container.encodeIfPresent(ids, forKey: .ids)
        try container.encodeIfPresent(customData, forKey: .customData)
        try container.encodeIfPresent(meta, forKey: .meta)
        try container.encodeIfPresent(selectedPoints, forKey: .selectedPoints)
        try container.encodeIfPresent(hoverLabel, forKey: .hoverLabel)
        try container.encodeIfPresent(stream, forKey: .stream)
        try container.encodeIfPresent(transforms, forKey: .transforms)
        try container.encodeIfPresent(uiRevision, forKey: .uiRevision)
        try container.encodeIfPresent(carpet, forKey: .carpet)
        try container.encodeIfPresent(mode, forKey: .mode)
        try container.encodeIfPresent(text, forKey: .text)
        try container.encodeIfPresent(textTemplate, forKey: .textTemplate)
        try container.encodeIfPresent(hoverText, forKey: .hoverText)
        try container.encodeIfPresent(line, forKey: .line)
        try container.encodeIfPresent(connectGaps, forKey: .connectGaps)
        try container.encodeIfPresent(fill, forKey: .fill)
        try container.encodeIfPresent(fillColor, forKey: .fillColor)
        try container.encodeIfPresent(marker, forKey: .marker)
        try container.encodeIfPresent(textFont, forKey: .textFont)
        try container.encodeIfPresent(textPosition, forKey: .textPosition)
        try container.encodeIfPresent(selected, forKey: .selected)
        try container.encodeIfPresent(unselected, forKey: .unselected)
        try container.encodeIfPresent(hoverInfo, forKey: .hoverInfo)
        try container.encodeIfPresent(hoverOn, forKey: .hoverOn)
        try container.encodeIfPresent(hoverTemplate, forKey: .hoverTemplate)
        try container.encodeIfPresent(xAxis, forKey: .xAxis)
        try container.encodeIfPresent(yAxis, forKey: .yAxis)
    
        if let a = self.a {
            let aEncoder = container.superEncoder(forKey: .a)
            try a.encode(toPlotly: aEncoder)
        }
    
        if let b = self.b {
            let bEncoder = container.superEncoder(forKey: .b)
            try b.encode(toPlotly: bEncoder)
        }
    }
    
}