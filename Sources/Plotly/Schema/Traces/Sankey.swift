/// Sankey plots for network flow data analysis. 
///
/// The nodes are specified in `nodes` and the links between sources and targets in `links`. The
/// colors are set in `nodes[i].color` and `links[i].color`, otherwise defaults are used.
public struct Sankey: Trace {
    public let type: String = "sankey"

    public let animatable: Bool = false

    /// Determines whether or not this trace is visible. 
    ///
    /// If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the
    /// legend itself is visible).
    /// - traces/heatmapgl/attributes/visible
    /// - traces/mesh3d/attributes/visible
    /// - traces/ohlc/attributes/visible
    /// - traces/waterfall/attributes/visible
    /// - traces/scattergl/attributes/visible
    /// - traces/parcoords/attributes/visible
    /// - traces/scatterternary/attributes/visible
    /// - traces/contour/attributes/visible
    /// - traces/contourcarpet/attributes/visible
    /// - traces/parcats/attributes/visible
    /// - traces/splom/attributes/visible
    /// - traces/area/attributes/visible
    /// - traces/pointcloud/attributes/visible
    /// - traces/choropleth/attributes/visible
    /// - traces/treemap/attributes/visible
    /// - traces/volume/attributes/visible
    /// - traces/surface/attributes/visible
    /// - traces/funnelarea/attributes/visible
    /// - traces/scattermapbox/attributes/visible
    /// - traces/candlestick/attributes/visible
    /// - traces/heatmap/attributes/visible
    /// - traces/barpolar/attributes/visible
    /// - traces/densitymapbox/attributes/visible
    /// - traces/image/attributes/visible
    /// - traces/pie/attributes/visible
    /// - traces/cone/attributes/visible
    /// - traces/sunburst/attributes/visible
    /// - traces/violin/attributes/visible
    /// - traces/indicator/attributes/visible
    /// - traces/scattergeo/attributes/visible
    /// - traces/box/attributes/visible
    /// - traces/histogram2dcontour/attributes/visible
    /// - traces/scatter3d/attributes/visible
    /// - traces/scatter/attributes/visible
    /// - traces/bar/attributes/visible
    /// - traces/streamtube/attributes/visible
    /// - traces/histogram/attributes/visible
    /// - traces/funnel/attributes/visible
    /// - traces/scatterpolargl/attributes/visible
    /// - traces/histogram2d/attributes/visible
    /// - traces/scatterpolar/attributes/visible
    /// - traces/sankey/attributes/visible
    public enum Visible: String, Encodable {
        case `true` = "true"
        case `false` = "false"
        case legendOnly = "legendonly"
    }
    /// Determines whether or not this trace is visible. 
    ///
    /// If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the
    /// legend itself is visible).
    public var visible: Visible?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    public var name: String?

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

    public struct Stream: Encodable {
        /// The stream id number links a data trace on a plot with a stream. 
        ///
        /// See https://plot.ly/settings for more details.
        public var token: String?
    
        /// Sets the maximum number of points to keep on the plots from an incoming stream. 
        ///
        /// If `maxpoints` is set to *50*, only the newest 50 points will be displayed on the plot.
        public var maxPoints: Double?
    
        public init(token: String? = nil, maxPoints: Double? = nil) {
            self.token = token
            self.maxPoints = maxPoints
        }
    }
    public var stream: Stream?

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

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired. Note that this attribute is superseded by
    /// `node.hoverinfo` and `node.hoverinfo` for nodes and links respectively.
    /// - traces/sankey/attributes/hoverinfo
    public struct HoverInfo: OptionSet, Encodable {
        public let rawValue: Int
    
        public static let all = HoverInfo(rawValue: 1 << 0)
        public static let none = HoverInfo(rawValue: 1 << 1)
        public static let skip = HoverInfo(rawValue: 1 << 2)
    
        public init(rawValue: Int) { self.rawValue = rawValue }
    
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["all"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["none"] }
            if (self.rawValue & 1 << 2) != 0 { options += ["skip"] }
            var container = encoder.singleValueContainer()
            try container.encode(options.joined(separator: "+"))
        }
    }
    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired. Note that this attribute is superseded by
    /// `node.hoverinfo` and `node.hoverinfo` for nodes and links respectively.
    public var hoverInfo: HoverInfo?

    public struct HoverLabel: Encodable {
        /// Sets the background color of the hover labels for this trace
        public var backgroundColor: Color?
    
        /// Sets the border color of the hover labels for this trace.
        public var borderColor: Color?
    
        /// Sets the font used in hover labels.
        public struct Font: Encodable {
            /// HTML font family - the typeface that will be applied by the web browser. 
            ///
            /// The web browser will only be able to apply a font if it is available on the system which it
            /// operates. Provide multiple font families, separated by commas, to indicate the preference in
            /// which to apply fonts if they aren't available on the system. The plotly service (at
            /// https://plot.ly or on-premise) generates images on a server, where only a select number of fonts
            /// are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,,
            /// *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*,
            /// *PT Sans Narrow*, *Raleway*, *Times New Roman*.
            public var family: String?
        
            public var size: Double?
        
            public var color: Color?
        
            /// Sets the source reference on plot.ly for  family .
            public var familySource: String?
        
            /// Sets the source reference on plot.ly for  size .
            public var sizeSource: String?
        
            /// Sets the source reference on plot.ly for  color .
            public var colorSource: String?
        
            public init(family: String? = nil, size: Double? = nil, color: Color? = nil, familySource: String? = nil, sizeSource: String? = nil, colorSource: String? = nil) {
                self.family = family
                self.size = size
                self.color = color
                self.familySource = familySource
                self.sizeSource = sizeSource
                self.colorSource = colorSource
            }
        }
        /// Sets the font used in hover labels.
        public var font: Font?
    
        /// Sets the horizontal alignment of the text content within hover label box. 
        ///
        /// Has an effect only if the hover label text spans more two or more lines
        /// - layout/layoutAttributes/hoverlabel/align
        /// - traces/heatmapgl/attributes/hoverlabel/align
        /// - traces/mesh3d/attributes/hoverlabel/align
        /// - traces/ohlc/attributes/hoverlabel/align
        /// - traces/waterfall/attributes/hoverlabel/align
        /// - traces/scattergl/attributes/hoverlabel/align
        /// - traces/scatterternary/attributes/hoverlabel/align
        /// - traces/contour/attributes/hoverlabel/align
        /// - traces/splom/attributes/hoverlabel/align
        /// - traces/area/attributes/hoverlabel/align
        /// - traces/pointcloud/attributes/hoverlabel/align
        /// - traces/choropleth/attributes/hoverlabel/align
        /// - traces/treemap/attributes/hoverlabel/align
        /// - traces/volume/attributes/hoverlabel/align
        /// - traces/surface/attributes/hoverlabel/align
        /// - traces/funnelarea/attributes/hoverlabel/align
        /// - traces/scattermapbox/attributes/hoverlabel/align
        /// - traces/candlestick/attributes/hoverlabel/align
        /// - traces/heatmap/attributes/hoverlabel/align
        /// - traces/barpolar/attributes/hoverlabel/align
        /// - traces/densitymapbox/attributes/hoverlabel/align
        /// - traces/image/attributes/hoverlabel/align
        /// - traces/pie/attributes/hoverlabel/align
        /// - traces/cone/attributes/hoverlabel/align
        /// - traces/sunburst/attributes/hoverlabel/align
        /// - traces/violin/attributes/hoverlabel/align
        /// - traces/scattergeo/attributes/hoverlabel/align
        /// - traces/box/attributes/hoverlabel/align
        /// - traces/histogram2dcontour/attributes/hoverlabel/align
        /// - traces/scatter3d/attributes/hoverlabel/align
        /// - traces/scatter/attributes/hoverlabel/align
        /// - traces/bar/attributes/hoverlabel/align
        /// - traces/streamtube/attributes/hoverlabel/align
        /// - traces/histogram/attributes/hoverlabel/align
        /// - traces/funnel/attributes/hoverlabel/align
        /// - traces/scatterpolargl/attributes/hoverlabel/align
        /// - traces/histogram2d/attributes/hoverlabel/align
        /// - traces/scatterpolar/attributes/hoverlabel/align
        /// - traces/sankey/attributes/hoverlabel/align
        public enum Align: String, Encodable {
            case left
            case right
            case auto
        }
        /// Sets the horizontal alignment of the text content within hover label box. 
        ///
        /// Has an effect only if the hover label text spans more two or more lines
        public var align: Align?
    
        /// Sets the default length (in number of characters) of the trace name in the hover labels for all traces. 
        ///
        /// -1 shows the whole name regardless of length. 0-3 shows the first 0-3 characters, and an integer
        /// >3 will show the whole name if it is less than that many characters, but if it is longer, will
        /// truncate to `namelength - 3` characters and add an ellipsis.
        public var nameLength: Int?
    
        /// Sets the source reference on plot.ly for  bgcolor .
        public var backgroundColorSource: String?
    
        /// Sets the source reference on plot.ly for  bordercolor .
        public var borderColorSource: String?
    
        /// Sets the source reference on plot.ly for  align .
        public var alignSource: String?
    
        /// Sets the source reference on plot.ly for  namelength .
        public var nameLengthSource: String?
    
        public init(backgroundColor: Color? = nil, borderColor: Color? = nil, font: Font? = nil, align: Align? = nil, nameLength: Int? = nil, backgroundColorSource: String? = nil, borderColorSource: String? = nil, alignSource: String? = nil, nameLengthSource: String? = nil) {
            self.backgroundColor = backgroundColor
            self.borderColor = borderColor
            self.font = font
            self.align = align
            self.nameLength = nameLength
            self.backgroundColorSource = backgroundColorSource
            self.borderColorSource = borderColorSource
            self.alignSource = alignSource
            self.nameLengthSource = nameLengthSource
        }
    }
    public var hoverLabel: HoverLabel?

    public struct Domain: Encodable {
        /// Sets the horizontal domain of this sankey trace (in plot fraction).
        public var x: InfoArray?
    
        /// Sets the vertical domain of this sankey trace (in plot fraction).
        public var y: InfoArray?
    
        /// If there is a layout grid, use the domain for this row in the grid for this sankey trace .
        public var row: Int?
    
        /// If there is a layout grid, use the domain for this column in the grid for this sankey trace .
        public var column: Int?
    
        public init(x: InfoArray? = nil, y: InfoArray? = nil, row: Int? = nil, column: Int? = nil) {
            self.x = x
            self.y = y
            self.row = row
            self.column = column
        }
    }
    public var domain: Domain?

    /// Sets the orientation of the modebar.
    /// - layout/layoutAttributes/modebar/orientation
    /// - layout/layoutAttributes/legend/orientation
    /// - traces/waterfall/attributes/orientation
    /// - traces/violin/attributes/orientation
    /// - traces/box/attributes/orientation
    /// - traces/scatter/attributes/orientation
    /// - traces/bar/attributes/orientation
    /// - traces/histogram/attributes/orientation
    /// - traces/funnel/attributes/orientation
    /// - traces/sankey/attributes/orientation
    public enum Orientation: String, Encodable {
        case v
        case h
    }
    /// Sets the orientation of the modebar.
    public var orientation: Orientation?

    /// Sets the value formatting rule using d3 formatting mini-language which is similar to those of Python. 
    ///
    /// See https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
    public var valueFormat: String?

    /// Adds a unit to follow the value in the hover tooltip. 
    ///
    /// Add a space if a separation is necessary from the value.
    public var valueSuffix: String?

    /// If value is `snap` (the default), the node arrangement is assisted by automatic snapping of elements to preserve space between nodes specified via `nodepad`. 
    ///
    /// If value is `perpendicular`, the nodes can only move along a line perpendicular to the flow. If
    /// value is `freeform`, the nodes can freely move on the plane. If value is `fixed`, the nodes are
    /// stationary.
    /// - traces/sankey/attributes/arrangement
    public enum Arrangement: String, Encodable {
        case snap
        case perpendicular
        case freeform
        case fixed
    }
    /// If value is `snap` (the default), the node arrangement is assisted by automatic snapping of elements to preserve space between nodes specified via `nodepad`. 
    ///
    /// If value is `perpendicular`, the nodes can only move along a line perpendicular to the flow. If
    /// value is `freeform`, the nodes can freely move on the plane. If value is `fixed`, the nodes are
    /// stationary.
    public var arrangement: Arrangement?

    /// Sets the font for node labels
    public struct TextFont: Encodable {
        /// HTML font family - the typeface that will be applied by the web browser. 
        ///
        /// The web browser will only be able to apply a font if it is available on the system which it
        /// operates. Provide multiple font families, separated by commas, to indicate the preference in
        /// which to apply fonts if they aren't available on the system. The plotly service (at
        /// https://plot.ly or on-premise) generates images on a server, where only a select number of fonts
        /// are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,,
        /// *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*,
        /// *PT Sans Narrow*, *Raleway*, *Times New Roman*.
        public var family: String?
    
        public var size: Double?
    
        public var color: Color?
    
        public init(family: String? = nil, size: Double? = nil, color: Color? = nil) {
            self.family = family
            self.size = size
            self.color = color
        }
    }
    /// Sets the font for node labels
    public var textFont: TextFont?

    /// The nodes of the Sankey plot.
    public struct Node: Encodable {
        /// The shown name of the node.
        public var label: [Double]?
    
        /// Groups of nodes. 
        ///
        /// Each group is defined by an array with the indices of the nodes it contains. Multiple groups can
        /// be specified.
        public var groups: InfoArray?
    
        /// The normalized horizontal position of the node.
        public var x: [Double]?
    
        /// The normalized vertical position of the node.
        public var y: [Double]?
    
        /// Sets the `node` color. 
        ///
        /// It can be a single value, or an array for specifying color for each `node`. If `node.color` is
        /// omitted, then the default `Plotly` color palette will be cycled through to have a variety of
        /// colors. These defaults are not fully opaque, to allow some visibility of what is beneath the
        /// node.
        public var color: Color?
    
        public struct Line: Encodable {
            /// Sets the color of the `line` around each `node`.
            public var color: Color?
        
            /// Sets the width (in px) of the `line` around each `node`.
            public var width: Double?
        
            /// Sets the source reference on plot.ly for  color .
            public var colorSource: String?
        
            /// Sets the source reference on plot.ly for  width .
            public var widthSource: String?
        
            public init(color: Color? = nil, width: Double? = nil, colorSource: String? = nil, widthSource: String? = nil) {
                self.color = color
                self.width = width
                self.colorSource = colorSource
                self.widthSource = widthSource
            }
        }
        public var line: Line?
    
        /// Sets the padding (in px) between the `nodes`.
        public var padding: Double?
    
        /// Sets the thickness (in px) of the `nodes`.
        public var thickness: Double?
    
        /// Determines which trace information appear when hovering nodes. 
        ///
        /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
        /// click and hover events are still fired.
        /// - traces/sankey/attributes/node/hoverinfo
        public enum HoverInfo: String, Encodable {
            case all
            case none
            case skip
        }
        /// Determines which trace information appear when hovering nodes. 
        ///
        /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
        /// click and hover events are still fired.
        public var hoverInfo: HoverInfo?
    
        public struct HoverLabel: Encodable {
            /// Sets the background color of the hover labels for this trace
            public var backgroundColor: Color?
        
            /// Sets the border color of the hover labels for this trace.
            public var borderColor: Color?
        
            /// Sets the font used in hover labels.
            public struct Font: Encodable {
                /// HTML font family - the typeface that will be applied by the web browser. 
                ///
                /// The web browser will only be able to apply a font if it is available on the system which it
                /// operates. Provide multiple font families, separated by commas, to indicate the preference in
                /// which to apply fonts if they aren't available on the system. The plotly service (at
                /// https://plot.ly or on-premise) generates images on a server, where only a select number of fonts
                /// are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,,
                /// *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*,
                /// *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                public var family: String?
            
                public var size: Double?
            
                public var color: Color?
            
                /// Sets the source reference on plot.ly for  family .
                public var familySource: String?
            
                /// Sets the source reference on plot.ly for  size .
                public var sizeSource: String?
            
                /// Sets the source reference on plot.ly for  color .
                public var colorSource: String?
            
                public init(family: String? = nil, size: Double? = nil, color: Color? = nil, familySource: String? = nil, sizeSource: String? = nil, colorSource: String? = nil) {
                    self.family = family
                    self.size = size
                    self.color = color
                    self.familySource = familySource
                    self.sizeSource = sizeSource
                    self.colorSource = colorSource
                }
            }
            /// Sets the font used in hover labels.
            public var font: Font?
        
            /// Sets the horizontal alignment of the text content within hover label box. 
            ///
            /// Has an effect only if the hover label text spans more two or more lines
            /// - layout/layoutAttributes/hoverlabel/align
            /// - traces/heatmapgl/attributes/hoverlabel/align
            /// - traces/mesh3d/attributes/hoverlabel/align
            /// - traces/ohlc/attributes/hoverlabel/align
            /// - traces/waterfall/attributes/hoverlabel/align
            /// - traces/scattergl/attributes/hoverlabel/align
            /// - traces/scatterternary/attributes/hoverlabel/align
            /// - traces/contour/attributes/hoverlabel/align
            /// - traces/splom/attributes/hoverlabel/align
            /// - traces/area/attributes/hoverlabel/align
            /// - traces/pointcloud/attributes/hoverlabel/align
            /// - traces/choropleth/attributes/hoverlabel/align
            /// - traces/treemap/attributes/hoverlabel/align
            /// - traces/volume/attributes/hoverlabel/align
            /// - traces/surface/attributes/hoverlabel/align
            /// - traces/funnelarea/attributes/hoverlabel/align
            /// - traces/scattermapbox/attributes/hoverlabel/align
            /// - traces/candlestick/attributes/hoverlabel/align
            /// - traces/heatmap/attributes/hoverlabel/align
            /// - traces/barpolar/attributes/hoverlabel/align
            /// - traces/densitymapbox/attributes/hoverlabel/align
            /// - traces/image/attributes/hoverlabel/align
            /// - traces/pie/attributes/hoverlabel/align
            /// - traces/cone/attributes/hoverlabel/align
            /// - traces/sunburst/attributes/hoverlabel/align
            /// - traces/violin/attributes/hoverlabel/align
            /// - traces/scattergeo/attributes/hoverlabel/align
            /// - traces/box/attributes/hoverlabel/align
            /// - traces/histogram2dcontour/attributes/hoverlabel/align
            /// - traces/scatter3d/attributes/hoverlabel/align
            /// - traces/scatter/attributes/hoverlabel/align
            /// - traces/bar/attributes/hoverlabel/align
            /// - traces/streamtube/attributes/hoverlabel/align
            /// - traces/histogram/attributes/hoverlabel/align
            /// - traces/funnel/attributes/hoverlabel/align
            /// - traces/scatterpolargl/attributes/hoverlabel/align
            /// - traces/histogram2d/attributes/hoverlabel/align
            /// - traces/scatterpolar/attributes/hoverlabel/align
            /// - traces/sankey/attributes/hoverlabel/align
            /// - traces/sankey/attributes/node/hoverlabel/align
            public enum Align: String, Encodable {
                case left
                case right
                case auto
            }
            /// Sets the horizontal alignment of the text content within hover label box. 
            ///
            /// Has an effect only if the hover label text spans more two or more lines
            public var align: Align?
        
            /// Sets the default length (in number of characters) of the trace name in the hover labels for all traces. 
            ///
            /// -1 shows the whole name regardless of length. 0-3 shows the first 0-3 characters, and an integer
            /// >3 will show the whole name if it is less than that many characters, but if it is longer, will
            /// truncate to `namelength - 3` characters and add an ellipsis.
            public var nameLength: Int?
        
            /// Sets the source reference on plot.ly for  bgcolor .
            public var backgroundColorSource: String?
        
            /// Sets the source reference on plot.ly for  bordercolor .
            public var borderColorSource: String?
        
            /// Sets the source reference on plot.ly for  align .
            public var alignSource: String?
        
            /// Sets the source reference on plot.ly for  namelength .
            public var nameLengthSource: String?
        
            public init(backgroundColor: Color? = nil, borderColor: Color? = nil, font: Font? = nil, align: Align? = nil, nameLength: Int? = nil, backgroundColorSource: String? = nil, borderColorSource: String? = nil, alignSource: String? = nil, nameLengthSource: String? = nil) {
                self.backgroundColor = backgroundColor
                self.borderColor = borderColor
                self.font = font
                self.align = align
                self.nameLength = nameLength
                self.backgroundColorSource = backgroundColorSource
                self.borderColorSource = borderColorSource
                self.alignSource = alignSource
                self.nameLengthSource = nameLengthSource
            }
        }
        public var hoverLabel: HoverLabel?
    
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
        /// true`) are available. variables `value` and `label`. Anything contained in tag `<extra>` is
        /// displayed in the secondary box, for example "<extra>{fullData.name}</extra>". To hide the
        /// secondary box completely, use an empty tag `<extra></extra>`.
        public var hoverTemplate: String?
    
        /// Sets the source reference on plot.ly for  label .
        public var labelSource: String?
    
        /// Sets the source reference on plot.ly for  x .
        public var xSource: String?
    
        /// Sets the source reference on plot.ly for  y .
        public var ySource: String?
    
        /// Sets the source reference on plot.ly for  color .
        public var colorSource: String?
    
        /// Sets the source reference on plot.ly for  hovertemplate .
        public var hoverTemplateSource: String?
    
        public init(label: [Double]? = nil, groups: InfoArray? = nil, x: [Double]? = nil, y: [Double]? = nil, color: Color? = nil, line: Line? = nil, padding: Double? = nil, thickness: Double? = nil, hoverInfo: HoverInfo? = nil, hoverLabel: HoverLabel? = nil, hoverTemplate: String? = nil, labelSource: String? = nil, xSource: String? = nil, ySource: String? = nil, colorSource: String? = nil, hoverTemplateSource: String? = nil) {
            self.label = label
            self.groups = groups
            self.x = x
            self.y = y
            self.color = color
            self.line = line
            self.padding = padding
            self.thickness = thickness
            self.hoverInfo = hoverInfo
            self.hoverLabel = hoverLabel
            self.hoverTemplate = hoverTemplate
            self.labelSource = labelSource
            self.xSource = xSource
            self.ySource = ySource
            self.colorSource = colorSource
            self.hoverTemplateSource = hoverTemplateSource
        }
    }
    /// The nodes of the Sankey plot.
    public var node: Node?

    /// The links of the Sankey plot.
    public struct Link: Encodable {
        /// The shown name of the link.
        public var label: [Double]?
    
        /// Sets the `link` color. 
        ///
        /// It can be a single value, or an array for specifying color for each `link`. If `link.color` is
        /// omitted, then by default, a translucent grey link will be used.
        public var color: Color?
    
        public struct Line: Encodable {
            /// Sets the color of the `line` around each `link`.
            public var color: Color?
        
            /// Sets the width (in px) of the `line` around each `link`.
            public var width: Double?
        
            /// Sets the source reference on plot.ly for  color .
            public var colorSource: String?
        
            /// Sets the source reference on plot.ly for  width .
            public var widthSource: String?
        
            public init(color: Color? = nil, width: Double? = nil, colorSource: String? = nil, widthSource: String? = nil) {
                self.color = color
                self.width = width
                self.colorSource = colorSource
                self.widthSource = widthSource
            }
        }
        public var line: Line?
    
        /// An integer number `[0..nodes.length - 1]` that represents the source node.
        public var source: [Double]?
    
        /// An integer number `[0..nodes.length - 1]` that represents the target node.
        public var target: [Double]?
    
        /// A numeric value representing the flow volume value.
        public var value: [Double]?
    
        /// Determines which trace information appear when hovering nodes. 
        ///
        /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
        /// click and hover events are still fired.
        /// - traces/sankey/attributes/node/hoverinfo
        /// - traces/sankey/attributes/link/hoverinfo
        public enum HoverInfo: String, Encodable {
            case all
            case none
            case skip
        }
        /// Determines which trace information appear when hovering nodes. 
        ///
        /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
        /// click and hover events are still fired.
        public var hoverInfo: HoverInfo?
    
        public struct HoverLabel: Encodable {
            /// Sets the background color of the hover labels for this trace
            public var backgroundColor: Color?
        
            /// Sets the border color of the hover labels for this trace.
            public var borderColor: Color?
        
            /// Sets the font used in hover labels.
            public struct Font: Encodable {
                /// HTML font family - the typeface that will be applied by the web browser. 
                ///
                /// The web browser will only be able to apply a font if it is available on the system which it
                /// operates. Provide multiple font families, separated by commas, to indicate the preference in
                /// which to apply fonts if they aren't available on the system. The plotly service (at
                /// https://plot.ly or on-premise) generates images on a server, where only a select number of fonts
                /// are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,,
                /// *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*,
                /// *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                public var family: String?
            
                public var size: Double?
            
                public var color: Color?
            
                /// Sets the source reference on plot.ly for  family .
                public var familySource: String?
            
                /// Sets the source reference on plot.ly for  size .
                public var sizeSource: String?
            
                /// Sets the source reference on plot.ly for  color .
                public var colorSource: String?
            
                public init(family: String? = nil, size: Double? = nil, color: Color? = nil, familySource: String? = nil, sizeSource: String? = nil, colorSource: String? = nil) {
                    self.family = family
                    self.size = size
                    self.color = color
                    self.familySource = familySource
                    self.sizeSource = sizeSource
                    self.colorSource = colorSource
                }
            }
            /// Sets the font used in hover labels.
            public var font: Font?
        
            /// Sets the horizontal alignment of the text content within hover label box. 
            ///
            /// Has an effect only if the hover label text spans more two or more lines
            /// - layout/layoutAttributes/hoverlabel/align
            /// - traces/heatmapgl/attributes/hoverlabel/align
            /// - traces/mesh3d/attributes/hoverlabel/align
            /// - traces/ohlc/attributes/hoverlabel/align
            /// - traces/waterfall/attributes/hoverlabel/align
            /// - traces/scattergl/attributes/hoverlabel/align
            /// - traces/scatterternary/attributes/hoverlabel/align
            /// - traces/contour/attributes/hoverlabel/align
            /// - traces/splom/attributes/hoverlabel/align
            /// - traces/area/attributes/hoverlabel/align
            /// - traces/pointcloud/attributes/hoverlabel/align
            /// - traces/choropleth/attributes/hoverlabel/align
            /// - traces/treemap/attributes/hoverlabel/align
            /// - traces/volume/attributes/hoverlabel/align
            /// - traces/surface/attributes/hoverlabel/align
            /// - traces/funnelarea/attributes/hoverlabel/align
            /// - traces/scattermapbox/attributes/hoverlabel/align
            /// - traces/candlestick/attributes/hoverlabel/align
            /// - traces/heatmap/attributes/hoverlabel/align
            /// - traces/barpolar/attributes/hoverlabel/align
            /// - traces/densitymapbox/attributes/hoverlabel/align
            /// - traces/image/attributes/hoverlabel/align
            /// - traces/pie/attributes/hoverlabel/align
            /// - traces/cone/attributes/hoverlabel/align
            /// - traces/sunburst/attributes/hoverlabel/align
            /// - traces/violin/attributes/hoverlabel/align
            /// - traces/scattergeo/attributes/hoverlabel/align
            /// - traces/box/attributes/hoverlabel/align
            /// - traces/histogram2dcontour/attributes/hoverlabel/align
            /// - traces/scatter3d/attributes/hoverlabel/align
            /// - traces/scatter/attributes/hoverlabel/align
            /// - traces/bar/attributes/hoverlabel/align
            /// - traces/streamtube/attributes/hoverlabel/align
            /// - traces/histogram/attributes/hoverlabel/align
            /// - traces/funnel/attributes/hoverlabel/align
            /// - traces/scatterpolargl/attributes/hoverlabel/align
            /// - traces/histogram2d/attributes/hoverlabel/align
            /// - traces/scatterpolar/attributes/hoverlabel/align
            /// - traces/sankey/attributes/hoverlabel/align
            /// - traces/sankey/attributes/node/hoverlabel/align
            /// - traces/sankey/attributes/link/hoverlabel/align
            public enum Align: String, Encodable {
                case left
                case right
                case auto
            }
            /// Sets the horizontal alignment of the text content within hover label box. 
            ///
            /// Has an effect only if the hover label text spans more two or more lines
            public var align: Align?
        
            /// Sets the default length (in number of characters) of the trace name in the hover labels for all traces. 
            ///
            /// -1 shows the whole name regardless of length. 0-3 shows the first 0-3 characters, and an integer
            /// >3 will show the whole name if it is less than that many characters, but if it is longer, will
            /// truncate to `namelength - 3` characters and add an ellipsis.
            public var nameLength: Int?
        
            /// Sets the source reference on plot.ly for  bgcolor .
            public var backgroundColorSource: String?
        
            /// Sets the source reference on plot.ly for  bordercolor .
            public var borderColorSource: String?
        
            /// Sets the source reference on plot.ly for  align .
            public var alignSource: String?
        
            /// Sets the source reference on plot.ly for  namelength .
            public var nameLengthSource: String?
        
            public init(backgroundColor: Color? = nil, borderColor: Color? = nil, font: Font? = nil, align: Align? = nil, nameLength: Int? = nil, backgroundColorSource: String? = nil, borderColorSource: String? = nil, alignSource: String? = nil, nameLengthSource: String? = nil) {
                self.backgroundColor = backgroundColor
                self.borderColor = borderColor
                self.font = font
                self.align = align
                self.nameLength = nameLength
                self.backgroundColorSource = backgroundColorSource
                self.borderColorSource = borderColorSource
                self.alignSource = alignSource
                self.nameLengthSource = nameLengthSource
            }
        }
        public var hoverLabel: HoverLabel?
    
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
        /// true`) are available. variables `value` and `label`. Anything contained in tag `<extra>` is
        /// displayed in the secondary box, for example "<extra>{fullData.name}</extra>". To hide the
        /// secondary box completely, use an empty tag `<extra></extra>`.
        public var hoverTemplate: String?
    
        public struct ColorScales: Encodable {
            public struct Items: Encodable {
                public struct ConcentrationScales: Encodable {
                    /// The label of the links to color based on their concentration within a flow.
                    public var label: String?
                
                    /// Sets the upper bound of the color domain.
                    public var cMax: Double?
                
                    /// Sets the lower bound of the color domain.
                    public var cMin: Double?
                
                    /// Sets the colorscale. 
                    ///
                    /// The colorscale must be an array containing arrays mapping a normalized value to an rgb, rgba,
                    /// hex, hsl, hsv, or named color string. At minimum, a mapping for the lowest (0) and highest (1)
                    /// values are required. For example, `[[0, 'rgb(0,0,255)'], [1, 'rgb(255,0,0)']]`. To control the
                    /// bounds of the colorscale in color space, use`cmin` and `cmax`. Alternatively, `colorscale` may
                    /// be a palette name string of the following list:
                    /// Greys,YlGnBu,Greens,YlOrRd,Bluered,RdBu,Reds,Blues,Picnic,Rainbow,Portland,Jet,Hot,Blackbody,Earth,Electric,Viridis,Cividis.
                    public var colorScale: ColorScale?
                
                    /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. 
                    ///
                    /// You can modify these items in the output figure by making your own item with `templateitemname`
                    /// matching this `name` alongside your modifications (including `visible: false` or `enabled:
                    /// false` to hide it). Has no effect outside of a template.
                    public var name: String?
                
                    /// Used to refer to a named item in this array in the template. 
                    ///
                    /// Named items from the template will be created even without a matching item in the input figure,
                    /// but you can modify one by making an item with `templateitemname` matching its `name`, alongside
                    /// your modifications (including `visible: false` or `enabled: false` to hide it). If there is no
                    /// template or no matching item, this item will be hidden unless you explicitly show it with
                    /// `visible: true`.
                    public var templateItemName: String?
                
                    public init(label: String? = nil, cMax: Double? = nil, cMin: Double? = nil, colorScale: ColorScale? = nil, name: String? = nil, templateItemName: String? = nil) {
                        self.label = label
                        self.cMax = cMax
                        self.cMin = cMin
                        self.colorScale = colorScale
                        self.name = name
                        self.templateItemName = templateItemName
                    }
                }
                public var concentrationScales: ConcentrationScales?
            
                public init(concentrationScales: ConcentrationScales? = nil) {
                    self.concentrationScales = concentrationScales
                }
            }
            public var items: Items?
        
            public init(items: Items? = nil) {
                self.items = items
            }
        }
        public var colorScales: ColorScales?
    
        /// Sets the source reference on plot.ly for  label .
        public var labelSource: String?
    
        /// Sets the source reference on plot.ly for  color .
        public var colorSource: String?
    
        /// Sets the source reference on plot.ly for  source .
        public var sourceSource: String?
    
        /// Sets the source reference on plot.ly for  target .
        public var targetSource: String?
    
        /// Sets the source reference on plot.ly for  value .
        public var valueSource: String?
    
        /// Sets the source reference on plot.ly for  hovertemplate .
        public var hoverTemplateSource: String?
    
        public init(label: [Double]? = nil, color: Color? = nil, line: Line? = nil, source: [Double]? = nil, target: [Double]? = nil, value: [Double]? = nil, hoverInfo: HoverInfo? = nil, hoverLabel: HoverLabel? = nil, hoverTemplate: String? = nil, colorScales: ColorScales? = nil, labelSource: String? = nil, colorSource: String? = nil, sourceSource: String? = nil, targetSource: String? = nil, valueSource: String? = nil, hoverTemplateSource: String? = nil) {
            self.label = label
            self.color = color
            self.line = line
            self.source = source
            self.target = target
            self.value = value
            self.hoverInfo = hoverInfo
            self.hoverLabel = hoverLabel
            self.hoverTemplate = hoverTemplate
            self.colorScales = colorScales
            self.labelSource = labelSource
            self.colorSource = colorSource
            self.sourceSource = sourceSource
            self.targetSource = targetSource
            self.valueSource = valueSource
            self.hoverTemplateSource = hoverTemplateSource
        }
    }
    /// The links of the Sankey plot.
    public var link: Link?

    /// Sets the source reference on plot.ly for  ids .
    public var idsSource: String?

    /// Sets the source reference on plot.ly for  customdata .
    public var customDataSource: String?

    /// Sets the source reference on plot.ly for  meta .
    public var metaSource: String?

    public init(visible: Visible? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, selectedPoints: Anything? = nil, stream: Stream? = nil, uiRevision: Anything? = nil, hoverInfo: HoverInfo? = nil, hoverLabel: HoverLabel? = nil, domain: Domain? = nil, orientation: Orientation? = nil, valueFormat: String? = nil, valueSuffix: String? = nil, arrangement: Arrangement? = nil, textFont: TextFont? = nil, node: Node? = nil, link: Link? = nil, idsSource: String? = nil, customDataSource: String? = nil, metaSource: String? = nil) {
        self.visible = visible
        self.name = name
        self.uid = uid
        self.ids = ids
        self.customData = customData
        self.meta = meta
        self.selectedPoints = selectedPoints
        self.stream = stream
        self.uiRevision = uiRevision
        self.hoverInfo = hoverInfo
        self.hoverLabel = hoverLabel
        self.domain = domain
        self.orientation = orientation
        self.valueFormat = valueFormat
        self.valueSuffix = valueSuffix
        self.arrangement = arrangement
        self.textFont = textFont
        self.node = node
        self.link = link
        self.idsSource = idsSource
        self.customDataSource = customDataSource
        self.metaSource = metaSource
    }
}