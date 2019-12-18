/// Table view for detailed data viewing. 
///
/// The data are arranged in a grid of rows and columns. Most styling can be specified for columns,
/// rows or individual cells. Table is using a column-major order, ie. the grid is represented as a
/// vector of column vectors.
public struct Table: Trace {
    public let type: String = "table"

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
    /// - traces/carpet/attributes/visible
    /// - traces/table/attributes/visible
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

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    /// - traces/heatmapgl/attributes/hoverinfo
    /// - traces/mesh3d/attributes/hoverinfo
    /// - traces/ohlc/attributes/hoverinfo
    /// - traces/scattergl/attributes/hoverinfo
    /// - traces/contour/attributes/hoverinfo
    /// - traces/splom/attributes/hoverinfo
    /// - traces/area/attributes/hoverinfo
    /// - traces/pointcloud/attributes/hoverinfo
    /// - traces/volume/attributes/hoverinfo
    /// - traces/surface/attributes/hoverinfo
    /// - traces/candlestick/attributes/hoverinfo
    /// - traces/heatmap/attributes/hoverinfo
    /// - traces/violin/attributes/hoverinfo
    /// - traces/box/attributes/hoverinfo
    /// - traces/histogram2dcontour/attributes/hoverinfo
    /// - traces/scatter3d/attributes/hoverinfo
    /// - traces/scatter/attributes/hoverinfo
    /// - traces/bar/attributes/hoverinfo
    /// - traces/histogram/attributes/hoverinfo
    /// - traces/histogram2d/attributes/hoverinfo
    /// - traces/table/attributes/hoverinfo
    public struct HoverInfo: OptionSet, Encodable {
        public let rawValue: Int
    
        public static let x = HoverInfo(rawValue: 1 << 0)
        public static let y = HoverInfo(rawValue: 1 << 1)
        public static let z = HoverInfo(rawValue: 1 << 2)
        public static let text = HoverInfo(rawValue: 1 << 3)
        public static let name = HoverInfo(rawValue: 1 << 4)
        public static let all = HoverInfo(rawValue: 1 << 5)
        public static let none = HoverInfo(rawValue: 1 << 6)
        public static let skip = HoverInfo(rawValue: 1 << 7)
    
        public init(rawValue: Int) { self.rawValue = rawValue }
    
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["x"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["y"] }
            if (self.rawValue & 1 << 2) != 0 { options += ["z"] }
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
        /// - traces/table/attributes/hoverlabel/align
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

    public struct Domain: Encodable {
        /// Sets the horizontal domain of this table trace (in plot fraction).
        public var x: InfoArray?
    
        /// Sets the vertical domain of this table trace (in plot fraction).
        public var y: InfoArray?
    
        /// If there is a layout grid, use the domain for this row in the grid for this table trace .
        public var row: Int?
    
        /// If there is a layout grid, use the domain for this column in the grid for this table trace .
        public var column: Int?
    
        public init(x: InfoArray? = nil, y: InfoArray? = nil, row: Int? = nil, column: Int? = nil) {
            self.x = x
            self.y = y
            self.row = row
            self.column = column
        }
    }
    public var domain: Domain?

    /// The width of columns expressed as a ratio. 
    ///
    /// Columns fill the available width in proportion of their specified column widths.
    public var columnWidth: Double?

    /// Specifies the rendered order of the data columns; for example, a value `2` at position `0` means that column index `0` in the data will be rendered as the third column, as columns have an index base of zero.
    public var columnOrder: [Double]?

    public struct Header: Encodable {
        /// Header cell values. 
        ///
        /// `values[m][n]` represents the value of the `n`th point in column `m`, therefore the `values[m]`
        /// vector length for all columns must be the same (longer vectors will be truncated). Each value
        /// must be a finite number or a string.
        public var values: [Double]?
    
        /// Sets the cell value formatting rule using d3 formatting mini-language which is similar to those of Python. 
        ///
        /// See https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
        public var format: [Double]?
    
        /// Prefix for cell values.
        public var prefix: String?
    
        /// Suffix for cell values.
        public var suffix: String?
    
        /// The height of cells.
        public var height: Double?
    
        /// Sets the horizontal alignment of the `text` within the box. 
        ///
        /// Has an effect only if `text` spans more two or more lines (i.e. `text` contains one or more <br>
        /// HTML tags) or if an explicit width is set to override the text width.
        /// - layout/layoutAttributes/scene/annotations/items/annotation/align
        /// - layout/layoutAttributes/annotations/items/annotation/align
        /// - traces/indicator/attributes/align
        /// - traces/indicator/attributes/title/align
        /// - traces/table/attributes/header/align
        public enum Align: String, Encodable {
            case left
            case center
            case right
        }
        /// Sets the horizontal alignment of the `text` within the box. 
        ///
        /// Has an effect only if `text` spans more two or more lines (i.e. `text` contains one or more <br>
        /// HTML tags) or if an explicit width is set to override the text width.
        public var align: Align?
    
        public struct Line: Encodable {
            public var width: Double?
        
            public var color: Color?
        
            /// Sets the source reference on plot.ly for  width .
            public var widthSource: String?
        
            /// Sets the source reference on plot.ly for  color .
            public var colorSource: String?
        
            public init(width: Double? = nil, color: Color? = nil, widthSource: String? = nil, colorSource: String? = nil) {
                self.width = width
                self.color = color
                self.widthSource = widthSource
                self.colorSource = colorSource
            }
        }
        public var line: Line?
    
        public struct Fill: Encodable {
            /// Sets the cell fill color. 
            ///
            /// It accepts either a specific color or an array of colors or a 2D array of colors.
            public var color: Color?
        
            /// Sets the source reference on plot.ly for  color .
            public var colorSource: String?
        
            public init(color: Color? = nil, colorSource: String? = nil) {
                self.color = color
                self.colorSource = colorSource
            }
        }
        public var fill: Fill?
    
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
        public var font: Font?
    
        /// Sets the source reference on plot.ly for  values .
        public var valuesSource: String?
    
        /// Sets the source reference on plot.ly for  format .
        public var formatSource: String?
    
        /// Sets the source reference on plot.ly for  prefix .
        public var prefixSource: String?
    
        /// Sets the source reference on plot.ly for  suffix .
        public var suffixSource: String?
    
        /// Sets the source reference on plot.ly for  align .
        public var alignSource: String?
    
        public init(values: [Double]? = nil, format: [Double]? = nil, prefix: String? = nil, suffix: String? = nil, height: Double? = nil, align: Align? = nil, line: Line? = nil, fill: Fill? = nil, font: Font? = nil, valuesSource: String? = nil, formatSource: String? = nil, prefixSource: String? = nil, suffixSource: String? = nil, alignSource: String? = nil) {
            self.values = values
            self.format = format
            self.prefix = prefix
            self.suffix = suffix
            self.height = height
            self.align = align
            self.line = line
            self.fill = fill
            self.font = font
            self.valuesSource = valuesSource
            self.formatSource = formatSource
            self.prefixSource = prefixSource
            self.suffixSource = suffixSource
            self.alignSource = alignSource
        }
    }
    public var header: Header?

    public struct Cells: Encodable {
        /// Cell values. 
        ///
        /// `values[m][n]` represents the value of the `n`th point in column `m`, therefore the `values[m]`
        /// vector length for all columns must be the same (longer vectors will be truncated). Each value
        /// must be a finite number or a string.
        public var values: [Double]?
    
        /// Sets the cell value formatting rule using d3 formatting mini-language which is similar to those of Python. 
        ///
        /// See https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
        public var format: [Double]?
    
        /// Prefix for cell values.
        public var prefix: String?
    
        /// Suffix for cell values.
        public var suffix: String?
    
        /// The height of cells.
        public var height: Double?
    
        /// Sets the horizontal alignment of the `text` within the box. 
        ///
        /// Has an effect only if `text` spans more two or more lines (i.e. `text` contains one or more <br>
        /// HTML tags) or if an explicit width is set to override the text width.
        /// - layout/layoutAttributes/scene/annotations/items/annotation/align
        /// - layout/layoutAttributes/annotations/items/annotation/align
        /// - traces/indicator/attributes/align
        /// - traces/indicator/attributes/title/align
        /// - traces/table/attributes/header/align
        /// - traces/table/attributes/cells/align
        public enum Align: String, Encodable {
            case left
            case center
            case right
        }
        /// Sets the horizontal alignment of the `text` within the box. 
        ///
        /// Has an effect only if `text` spans more two or more lines (i.e. `text` contains one or more <br>
        /// HTML tags) or if an explicit width is set to override the text width.
        public var align: Align?
    
        public struct Line: Encodable {
            public var width: Double?
        
            public var color: Color?
        
            /// Sets the source reference on plot.ly for  width .
            public var widthSource: String?
        
            /// Sets the source reference on plot.ly for  color .
            public var colorSource: String?
        
            public init(width: Double? = nil, color: Color? = nil, widthSource: String? = nil, colorSource: String? = nil) {
                self.width = width
                self.color = color
                self.widthSource = widthSource
                self.colorSource = colorSource
            }
        }
        public var line: Line?
    
        public struct Fill: Encodable {
            /// Sets the cell fill color. 
            ///
            /// It accepts either a specific color or an array of colors or a 2D array of colors.
            public var color: Color?
        
            /// Sets the source reference on plot.ly for  color .
            public var colorSource: String?
        
            public init(color: Color? = nil, colorSource: String? = nil) {
                self.color = color
                self.colorSource = colorSource
            }
        }
        public var fill: Fill?
    
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
        public var font: Font?
    
        /// Sets the source reference on plot.ly for  values .
        public var valuesSource: String?
    
        /// Sets the source reference on plot.ly for  format .
        public var formatSource: String?
    
        /// Sets the source reference on plot.ly for  prefix .
        public var prefixSource: String?
    
        /// Sets the source reference on plot.ly for  suffix .
        public var suffixSource: String?
    
        /// Sets the source reference on plot.ly for  align .
        public var alignSource: String?
    
        public init(values: [Double]? = nil, format: [Double]? = nil, prefix: String? = nil, suffix: String? = nil, height: Double? = nil, align: Align? = nil, line: Line? = nil, fill: Fill? = nil, font: Font? = nil, valuesSource: String? = nil, formatSource: String? = nil, prefixSource: String? = nil, suffixSource: String? = nil, alignSource: String? = nil) {
            self.values = values
            self.format = format
            self.prefix = prefix
            self.suffix = suffix
            self.height = height
            self.align = align
            self.line = line
            self.fill = fill
            self.font = font
            self.valuesSource = valuesSource
            self.formatSource = formatSource
            self.prefixSource = prefixSource
            self.suffixSource = suffixSource
            self.alignSource = alignSource
        }
    }
    public var cells: Cells?

    /// Sets the source reference on plot.ly for  ids .
    public var idsSource: String?

    /// Sets the source reference on plot.ly for  customdata .
    public var customDataSource: String?

    /// Sets the source reference on plot.ly for  meta .
    public var metaSource: String?

    /// Sets the source reference on plot.ly for  hoverinfo .
    public var hoverInfoSource: String?

    /// Sets the source reference on plot.ly for  columnwidth .
    public var columnWidthSource: String?

    /// Sets the source reference on plot.ly for  columnorder .
    public var columnOrderSource: String?

    public init(visible: Visible? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, hoverInfo: HoverInfo? = nil, hoverLabel: HoverLabel? = nil, stream: Stream? = nil, uiRevision: Anything? = nil, domain: Domain? = nil, columnWidth: Double? = nil, columnOrder: [Double]? = nil, header: Header? = nil, cells: Cells? = nil, idsSource: String? = nil, customDataSource: String? = nil, metaSource: String? = nil, hoverInfoSource: String? = nil, columnWidthSource: String? = nil, columnOrderSource: String? = nil) {
        self.visible = visible
        self.name = name
        self.uid = uid
        self.ids = ids
        self.customData = customData
        self.meta = meta
        self.hoverInfo = hoverInfo
        self.hoverLabel = hoverLabel
        self.stream = stream
        self.uiRevision = uiRevision
        self.domain = domain
        self.columnWidth = columnWidth
        self.columnOrder = columnOrder
        self.header = header
        self.cells = cells
        self.idsSource = idsSource
        self.customDataSource = customDataSource
        self.metaSource = metaSource
        self.hoverInfoSource = hoverInfoSource
        self.columnWidthSource = columnWidthSource
        self.columnOrderSource = columnOrderSource
    }
}