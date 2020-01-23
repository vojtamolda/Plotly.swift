/// Visualize stages in a process using length-encoded bars. 
///
/// This trace can be used to show data in either a part-to-whole representation wherein each item
/// appears in a single stage, or in a "drop-off" representation wherein each item appears in each
/// stage it traversed. See also the "funnelarea" trace type for a different approach to visualizing
/// funnel data.
public struct Funnel<XData, YData>: Trace where XData: Encodable, YData: Encodable {
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#type) |
    /// [Python](https://plot.ly/python/reference/#type) |
    /// [R](https://plot.ly/r/reference/#type)
    public let type: String = "funnel"

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
    /// [JavaScript](https://plot.ly/javascript/reference/#funnel-visible) |
    /// [Python](https://plot.ly/python/reference/#funnel-visible) |
    /// [R](https://plot.ly/r/reference/#funnel-visible)
    public var visible: Shared.Visible?

    /// Determines whether or not an item corresponding to this trace is shown in the legend.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnel-showlegend) |
    /// [Python](https://plot.ly/python/reference/#funnel-showlegend) |
    /// [R](https://plot.ly/r/reference/#funnel-showlegend)
    public var showLegend: Bool?

    /// Sets the legend group for this trace. 
    ///
    /// Traces part of the same legend group hide/show at the same time when toggling legend items.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnel-legendgroup) |
    /// [Python](https://plot.ly/python/reference/#funnel-legendgroup) |
    /// [R](https://plot.ly/r/reference/#funnel-legendgroup)
    public var legendGroup: String?

    /// Sets the opacity of the trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnel-opacity) |
    /// [Python](https://plot.ly/python/reference/#funnel-opacity) |
    /// [R](https://plot.ly/r/reference/#funnel-opacity)
    public var opacity: Double?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnel-name) |
    /// [Python](https://plot.ly/python/reference/#funnel-name) |
    /// [R](https://plot.ly/r/reference/#funnel-name)
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnel-uid) |
    /// [Python](https://plot.ly/python/reference/#funnel-uid) |
    /// [R](https://plot.ly/r/reference/#funnel-uid)
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnel-ids) |
    /// [Python](https://plot.ly/python/reference/#funnel-ids) |
    /// [R](https://plot.ly/r/reference/#funnel-ids)
    public var ids: [Double]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnel-customdata) |
    /// [Python](https://plot.ly/python/reference/#funnel-customdata) |
    /// [R](https://plot.ly/r/reference/#funnel-customdata)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#funnel-meta) |
    /// [Python](https://plot.ly/python/reference/#funnel-meta) |
    /// [R](https://plot.ly/r/reference/#funnel-meta)
    public var meta: ArrayOrAnything?

    /// Array containing integer indices of selected points. 
    ///
    /// Has an effect only for traces that support selections. Note that an empty array means an empty
    /// selection where the `unselected` are turned on for all points, whereas, any other non-array
    /// values means no selection all where the `selected` and `unselected` styles have no effect.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnel-selectedpoints) |
    /// [Python](https://plot.ly/python/reference/#funnel-selectedpoints) |
    /// [R](https://plot.ly/r/reference/#funnel-selectedpoints)
    public var selectedPoints: Anything?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnel-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#funnel-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#funnel-hoverlabel)
    public var hoverLabel: Shared.HoverLabel?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnel-stream) |
    /// [Python](https://plot.ly/python/reference/#funnel-stream) |
    /// [R](https://plot.ly/r/reference/#funnel-stream)
    public var stream: Shared.Stream?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnel-transforms) |
    /// [Python](https://plot.ly/python/reference/#funnel-transforms) |
    /// [R](https://plot.ly/r/reference/#funnel-transforms)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#funnel-uirevision) |
    /// [Python](https://plot.ly/python/reference/#funnel-uirevision) |
    /// [R](https://plot.ly/r/reference/#funnel-uirevision)
    public var uiRevision: Anything?

    /// Sets the x coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnel-x) |
    /// [Python](https://plot.ly/python/reference/#funnel-x) |
    /// [R](https://plot.ly/r/reference/#funnel-x)
    public var x: XData?

    /// Alternate to `x`. 
    ///
    /// Builds a linear space of x coordinates. Use with `dx` where `x0` is the starting coordinate and
    /// `dx` the step.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnel-x0) |
    /// [Python](https://plot.ly/python/reference/#funnel-x0) |
    /// [R](https://plot.ly/r/reference/#funnel-x0)
    public var x0: Anything?

    /// Sets the x coordinate step. 
    ///
    /// See `x0` for more info.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnel-dx) |
    /// [Python](https://plot.ly/python/reference/#funnel-dx) |
    /// [R](https://plot.ly/r/reference/#funnel-dx)
    public var dx: Double?

    /// Sets the y coordinates.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnel-y) |
    /// [Python](https://plot.ly/python/reference/#funnel-y) |
    /// [R](https://plot.ly/r/reference/#funnel-y)
    public var y: YData?

    /// Alternate to `y`. 
    ///
    /// Builds a linear space of y coordinates. Use with `dy` where `y0` is the starting coordinate and
    /// `dy` the step.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnel-y0) |
    /// [Python](https://plot.ly/python/reference/#funnel-y0) |
    /// [R](https://plot.ly/r/reference/#funnel-y0)
    public var y0: Anything?

    /// Sets the y coordinate step. 
    ///
    /// See `y0` for more info.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnel-dy) |
    /// [Python](https://plot.ly/python/reference/#funnel-dy) |
    /// [R](https://plot.ly/r/reference/#funnel-dy)
    public var dy: Double?

    /// Sets hover text elements associated with each (x,y) pair. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to the this trace's (x,y) coordinates. To be seen, trace `hoverinfo`
    /// must contain a *text* flag.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnel-hovertext) |
    /// [Python](https://plot.ly/python/reference/#funnel-hovertext) |
    /// [R](https://plot.ly/r/reference/#funnel-hovertext)
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
    /// true`) are available. variables `percentInitial`, `percentPrevious` and `percentTotal`. Anything
    /// contained in tag `<extra>` is displayed in the secondary box, for example
    /// "<extra>{fullData.name}</extra>". To hide the secondary box completely, use an empty tag
    /// `<extra></extra>`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnel-hovertemplate) |
    /// [Python](https://plot.ly/python/reference/#funnel-hovertemplate) |
    /// [R](https://plot.ly/r/reference/#funnel-hovertemplate)
    public var hoverTemplate: ArrayOrString?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    ///
    /// # Used By
    /// `Funnel.hoverInfo` |
    public struct HoverInfo: OptionSet, Encodable {
        public let rawValue: Int
    
        public static var name: HoverInfo { HoverInfo(rawValue: 1 << 0) }
        public static var x: HoverInfo { HoverInfo(rawValue: 1 << 1) }
        public static var y: HoverInfo { HoverInfo(rawValue: 1 << 2) }
        public static var text: HoverInfo { HoverInfo(rawValue: 1 << 3) }
        public static var percentInitial: HoverInfo { HoverInfo(rawValue: 1 << 4) }
        public static var percentPrevious: HoverInfo { HoverInfo(rawValue: 1 << 5) }
        public static var percentTotal: HoverInfo { HoverInfo(rawValue: 1 << 6) }
        public static var all: HoverInfo { HoverInfo(rawValue: 1 << 7) }
        public static var none: HoverInfo { HoverInfo(rawValue: 1 << 8) }
        public static var skip: HoverInfo { HoverInfo(rawValue: 1 << 9) }
    
        public init(rawValue: Int) { self.rawValue = rawValue }
    
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["name"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["x"] }
            if (self.rawValue & 1 << 2) != 0 { options += ["y"] }
            if (self.rawValue & 1 << 3) != 0 { options += ["text"] }
            if (self.rawValue & 1 << 4) != 0 { options += ["percent initial"] }
            if (self.rawValue & 1 << 5) != 0 { options += ["percent previous"] }
            if (self.rawValue & 1 << 6) != 0 { options += ["percent total"] }
            if (self.rawValue & 1 << 7) != 0 { options += ["all"] }
            if (self.rawValue & 1 << 8) != 0 { options += ["none"] }
            if (self.rawValue & 1 << 9) != 0 { options += ["skip"] }
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
    /// [JavaScript](https://plot.ly/javascript/reference/#funnel-hoverinfo) |
    /// [Python](https://plot.ly/python/reference/#funnel-hoverinfo) |
    /// [R](https://plot.ly/r/reference/#funnel-hoverinfo)
    public var hoverInfo: HoverInfo?

    /// Determines which trace information appear on the graph. 
    ///
    /// In the case of having multiple funnels, percentages & totals are computed separately (per
    /// trace).
    ///
    /// # Used By
    /// `Funnel.textInfo` |
    public struct TextInfo: OptionSet, Encodable {
        public let rawValue: Int
    
        public static var label: TextInfo { TextInfo(rawValue: 1 << 0) }
        public static var text: TextInfo { TextInfo(rawValue: 1 << 1) }
        public static var percentInitial: TextInfo { TextInfo(rawValue: 1 << 2) }
        public static var percentPrevious: TextInfo { TextInfo(rawValue: 1 << 3) }
        public static var percentTotal: TextInfo { TextInfo(rawValue: 1 << 4) }
        public static var value: TextInfo { TextInfo(rawValue: 1 << 5) }
        public static var none: TextInfo { TextInfo(rawValue: 1 << 6) }
    
        public init(rawValue: Int) { self.rawValue = rawValue }
    
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["label"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["text"] }
            if (self.rawValue & 1 << 2) != 0 { options += ["percent initial"] }
            if (self.rawValue & 1 << 3) != 0 { options += ["percent previous"] }
            if (self.rawValue & 1 << 4) != 0 { options += ["percent total"] }
            if (self.rawValue & 1 << 5) != 0 { options += ["value"] }
            if (self.rawValue & 1 << 6) != 0 { options += ["none"] }
            var container = encoder.singleValueContainer()
            try container.encode(options.joined(separator: "+"))
        }
    }
    /// Determines which trace information appear on the graph. 
    ///
    /// In the case of having multiple funnels, percentages & totals are computed separately (per
    /// trace).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnel-textinfo) |
    /// [Python](https://plot.ly/python/reference/#funnel-textinfo) |
    /// [R](https://plot.ly/r/reference/#funnel-textinfo)
    public var textInfo: TextInfo?

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
    /// `arrayOk: true`) are available. variables `percentInitial`, `percentPrevious`, `percentTotal`,
    /// `label` and `value`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnel-texttemplate) |
    /// [Python](https://plot.ly/python/reference/#funnel-texttemplate) |
    /// [R](https://plot.ly/r/reference/#funnel-texttemplate)
    public var textTemplate: ArrayOrString?

    /// Sets text elements associated with each (x,y) pair. 
    ///
    /// If a single string, the same string appears over all the data points. If an array of string, the
    /// items are mapped in order to the this trace's (x,y) coordinates. If trace `hoverinfo` contains a
    /// *text* flag and *hovertext* is not set, these elements will be seen in the hover labels.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnel-text) |
    /// [Python](https://plot.ly/python/reference/#funnel-text) |
    /// [R](https://plot.ly/r/reference/#funnel-text)
    public var text: ArrayOrString?

    /// Specifies the location of the `text`. 
    ///
    /// *inside* positions `text` inside, next to the bar end (rotated and scaled if needed). *outside*
    /// positions `text` outside, next to the bar end (scaled if needed), unless there is another bar
    /// stacked on this one, then the text gets pushed inside. *auto* tries to position `text` inside
    /// the bar, but if the bar is too small and no bar is stacked on this one the text is moved
    /// outside.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnel-textposition) |
    /// [Python](https://plot.ly/python/reference/#funnel-textposition) |
    /// [R](https://plot.ly/r/reference/#funnel-textposition)
    public var textPosition: Shared.AdjacentPosition?

    /// Determines if texts are kept at center or start/end points in `textposition` *inside* mode.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnel-insidetextanchor) |
    /// [Python](https://plot.ly/python/reference/#funnel-insidetextanchor) |
    /// [R](https://plot.ly/r/reference/#funnel-insidetextanchor)
    public var insideTextAnchor: Shared.InsideTextAnchor?

    /// Sets the angle of the tick labels with respect to the bar. 
    ///
    /// For example, a `tickangle` of -90 draws the tick labels vertically. With *auto* the texts may
    /// automatically be rotated to fit with the maximum size in bars.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnel-textangle) |
    /// [Python](https://plot.ly/python/reference/#funnel-textangle) |
    /// [R](https://plot.ly/r/reference/#funnel-textangle)
    public var textAngle: Angle?

    /// Sets the font used for `text`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnel-textfont) |
    /// [Python](https://plot.ly/python/reference/#funnel-textfont) |
    /// [R](https://plot.ly/r/reference/#funnel-textfont)
    public var textFont: Shared.Font?

    /// Sets the font used for `text` lying inside the bar.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnel-insidetextfont) |
    /// [Python](https://plot.ly/python/reference/#funnel-insidetextfont) |
    /// [R](https://plot.ly/r/reference/#funnel-insidetextfont)
    public var insideTextFont: Shared.Font?

    /// Sets the font used for `text` lying outside the bar.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnel-outsidetextfont) |
    /// [Python](https://plot.ly/python/reference/#funnel-outsidetextfont) |
    /// [R](https://plot.ly/r/reference/#funnel-outsidetextfont)
    public var outSideTextFont: Shared.Font?

    /// Constrain the size of text inside or outside a bar to be no larger than the bar itself.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnel-constraintext) |
    /// [Python](https://plot.ly/python/reference/#funnel-constraintext) |
    /// [R](https://plot.ly/r/reference/#funnel-constraintext)
    public var constrainText: Shared.ConstrainText?

    /// Determines whether the text nodes are clipped about the subplot axes. 
    ///
    /// To show the text nodes above axis lines and tick labels, make sure to set `xaxis.layer` and
    /// `yaxis.layer` to *below traces*.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnel-cliponaxis) |
    /// [Python](https://plot.ly/python/reference/#funnel-cliponaxis) |
    /// [R](https://plot.ly/r/reference/#funnel-cliponaxis)
    public var clipOnAxis: Bool?

    /// Sets the orientation of the funnels. 
    ///
    /// With *v* (*h*), the value of the each bar spans along the vertical (horizontal). By default
    /// funnels are tend to be oriented horizontally; unless only *y* array is presented or orientation
    /// is set to *v*. Also regarding graphs including only 'horizontal' funnels, *autorange* on the
    /// *y-axis* are set to *reversed*.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnel-orientation) |
    /// [Python](https://plot.ly/python/reference/#funnel-orientation) |
    /// [R](https://plot.ly/r/reference/#funnel-orientation)
    public var orientation: Shared.Orientation?

    /// Shifts the position where the bar is drawn (in position axis units). 
    ///
    /// In *group* barmode, traces that set *offset* will be excluded and drawn in *overlay* mode
    /// instead.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnel-offset) |
    /// [Python](https://plot.ly/python/reference/#funnel-offset) |
    /// [R](https://plot.ly/r/reference/#funnel-offset)
    public var offset: Double?

    /// Sets the bar width (in position axis units).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnel-width) |
    /// [Python](https://plot.ly/python/reference/#funnel-width) |
    /// [R](https://plot.ly/r/reference/#funnel-width)
    public var width: Double?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnel-marker) |
    /// [Python](https://plot.ly/python/reference/#funnel-marker) |
    /// [R](https://plot.ly/r/reference/#funnel-marker)
    public var marker: Shared.Marker?

    /// # Used By
    /// `Funnel.connector` |
    public struct Connector: Encodable {
        /// Sets the fill color.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#funnel-connector-fillcolor) |
        /// [Python](https://plot.ly/python/reference/#funnel-connector-fillcolor) |
        /// [R](https://plot.ly/r/reference/#funnel-connector-fillcolor)
        public var fillColor: Color?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#funnel-connector-line) |
        /// [Python](https://plot.ly/python/reference/#funnel-connector-line) |
        /// [R](https://plot.ly/r/reference/#funnel-connector-line)
        public var line: Shared.DashedLine?
    
        /// Determines if connector regions and lines are drawn.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#funnel-connector-visible) |
        /// [Python](https://plot.ly/python/reference/#funnel-connector-visible) |
        /// [R](https://plot.ly/r/reference/#funnel-connector-visible)
        public var visible: Bool?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case fillColor = "fillcolor"
            case line
            case visible
        }
        
        public init(fillColor: Color? = nil, line: Shared.DashedLine? = nil, visible: Bool? = nil) {
            self.fillColor = fillColor
            self.line = line
            self.visible = visible
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnel-connector) |
    /// [Python](https://plot.ly/python/reference/#funnel-connector) |
    /// [R](https://plot.ly/r/reference/#funnel-connector)
    public var connector: Connector?

    /// Set several traces linked to the same position axis or matching axes to the same offsetgroup where bars of the same position coordinate will line up.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnel-offsetgroup) |
    /// [Python](https://plot.ly/python/reference/#funnel-offsetgroup) |
    /// [R](https://plot.ly/r/reference/#funnel-offsetgroup)
    public var offsetGroup: String?

    /// Set several traces linked to the same position axis or matching axes to the same alignmentgroup. 
    ///
    /// This controls whether bars compute their positional range dependently or independently.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnel-alignmentgroup) |
    /// [Python](https://plot.ly/python/reference/#funnel-alignmentgroup) |
    /// [R](https://plot.ly/r/reference/#funnel-alignmentgroup)
    public var alignmentGroup: String?

    /// Sets a reference between this trace's x coordinates and a 2D cartesian x axis. 
    ///
    /// If *x* (the default value), the x coordinates refer to `layout.xaxis`. If *x2*, the x
    /// coordinates refer to `layout.xaxis2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnel-xaxis) |
    /// [Python](https://plot.ly/python/reference/#funnel-xaxis) |
    /// [R](https://plot.ly/r/reference/#funnel-xaxis)
    public var xAxis: SubPlotID?

    /// Sets a reference between this trace's y coordinates and a 2D cartesian y axis. 
    ///
    /// If *y* (the default value), the y coordinates refer to `layout.yaxis`. If *y2*, the y
    /// coordinates refer to `layout.yaxis2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#funnel-yaxis) |
    /// [Python](https://plot.ly/python/reference/#funnel-yaxis) |
    /// [R](https://plot.ly/r/reference/#funnel-yaxis)
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
        case x
        case x0
        case dx
        case y
        case y0
        case dy
        case hoverText = "hovertext"
        case hoverTemplate = "hovertemplate"
        case hoverInfo = "hoverinfo"
        case textInfo = "textinfo"
        case textTemplate = "texttemplate"
        case text
        case textPosition = "textposition"
        case insideTextAnchor = "insidetextanchor"
        case textAngle = "textangle"
        case textFont = "textfont"
        case insideTextFont = "insidetextfont"
        case outSideTextFont = "outsidetextfont"
        case constrainText = "constraintext"
        case clipOnAxis = "cliponaxis"
        case orientation
        case offset
        case width
        case marker
        case connector
        case offsetGroup = "offsetgroup"
        case alignmentGroup = "alignmentgroup"
        case xAxis = "xaxis"
        case yAxis = "yaxis"
    }
    
    public init(visible: Shared.Visible? = nil, showLegend: Bool? = nil, legendGroup: String? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: ArrayOrAnything? = nil, selectedPoints: Anything? = nil, hoverLabel: Shared.HoverLabel? = nil, stream: Shared.Stream? = nil, transforms: [Shared.Transform]? = nil, uiRevision: Anything? = nil, x: XData? = nil, x0: Anything? = nil, dx: Double? = nil, y: YData? = nil, y0: Anything? = nil, dy: Double? = nil, hoverText: ArrayOrString? = nil, hoverTemplate: ArrayOrString? = nil, hoverInfo: HoverInfo? = nil, textInfo: TextInfo? = nil, textTemplate: ArrayOrString? = nil, text: ArrayOrString? = nil, textPosition: Shared.AdjacentPosition? = nil, insideTextAnchor: Shared.InsideTextAnchor? = nil, textAngle: Angle? = nil, textFont: Shared.Font? = nil, insideTextFont: Shared.Font? = nil, outSideTextFont: Shared.Font? = nil, constrainText: Shared.ConstrainText? = nil, clipOnAxis: Bool? = nil, orientation: Shared.Orientation? = nil, offset: Double? = nil, width: Double? = nil, marker: Shared.Marker? = nil, connector: Connector? = nil, offsetGroup: String? = nil, alignmentGroup: String? = nil, xAxis: SubPlotID? = nil, yAxis: SubPlotID? = nil) {
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
        self.x = x
        self.x0 = x0
        self.dx = dx
        self.y = y
        self.y0 = y0
        self.dy = dy
        self.hoverText = hoverText
        self.hoverTemplate = hoverTemplate
        self.hoverInfo = hoverInfo
        self.textInfo = textInfo
        self.textTemplate = textTemplate
        self.text = text
        self.textPosition = textPosition
        self.insideTextAnchor = insideTextAnchor
        self.textAngle = textAngle
        self.textFont = textFont
        self.insideTextFont = insideTextFont
        self.outSideTextFont = outSideTextFont
        self.constrainText = constrainText
        self.clipOnAxis = clipOnAxis
        self.orientation = orientation
        self.offset = offset
        self.width = width
        self.marker = marker
        self.connector = connector
        self.offsetGroup = offsetGroup
        self.alignmentGroup = alignmentGroup
        self.xAxis = xAxis
        self.yAxis = yAxis
    }
}