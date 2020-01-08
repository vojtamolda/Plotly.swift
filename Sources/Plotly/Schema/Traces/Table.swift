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
    public var visible: Visible0?

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
    public var hoverInfo: HoverInfo0?

    public var hoverLabel: HoverLabel0?

    public var stream: Stream0?

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

    public var domain: Domain0?

    /// The width of columns expressed as a ratio. 
    ///
    /// Columns fill the available width in proportion of their specified column widths.
    public var columnWidth: Double?

    /// Specifies the rendered order of the data columns; for example, a value `2` at position `0` means that column index `0` in the data will be rendered as the third column, as columns have an index base of zero.
    public var columnOrder: [Double]?

    /// - traces/table/attributes/header
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
        public var align: Align1?
    
        /// - traces/table/attributes/header/line
        public struct Line: Encodable {
            public var width: Double?
        
            public var color: Color?
        
            /// Sets the source reference on plot.ly for  width .
            public var widthSource: String?
        
            /// Sets the source reference on plot.ly for  color .
            public var colorSource: String?
        
            /// Plotly compatible property encoding
            enum CodingKeys: String, CodingKey {
                case width
                case color
                case widthSource = "widthsrc"
                case colorSource = "colorsrc"
            }
            
            public init(width: Double? = nil, color: Color? = nil, widthSource: String? = nil, colorSource: String? = nil) {
                self.width = width
                self.color = color
                self.widthSource = widthSource
                self.colorSource = colorSource
            }
        }
        public var line: Line?
    
        /// - traces/table/attributes/header/fill
        public struct Fill: Encodable {
            /// Sets the cell fill color. 
            ///
            /// It accepts either a specific color or an array of colors or a 2D array of colors.
            public var color: Color?
        
            /// Sets the source reference on plot.ly for  color .
            public var colorSource: String?
        
            /// Plotly compatible property encoding
            enum CodingKeys: String, CodingKey {
                case color
                case colorSource = "colorsrc"
            }
            
            public init(color: Color? = nil, colorSource: String? = nil) {
                self.color = color
                self.colorSource = colorSource
            }
        }
        public var fill: Fill?
    
        public var font: Font1?
    
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
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case values
            case format
            case prefix
            case suffix
            case height
            case align
            case line
            case fill
            case font
            case valuesSource = "valuessrc"
            case formatSource = "formatsrc"
            case prefixSource = "prefixsrc"
            case suffixSource = "suffixsrc"
            case alignSource = "alignsrc"
        }
        
        public init(values: [Double]? = nil, format: [Double]? = nil, prefix: String? = nil, suffix: String? = nil, height: Double? = nil, align: Align1? = nil, line: Line? = nil, fill: Fill? = nil, font: Font1? = nil, valuesSource: String? = nil, formatSource: String? = nil, prefixSource: String? = nil, suffixSource: String? = nil, alignSource: String? = nil) {
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

    /// - traces/table/attributes/cells
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
        public var align: Align1?
    
        /// - traces/table/attributes/cells/line
        public struct Line: Encodable {
            public var width: Double?
        
            public var color: Color?
        
            /// Sets the source reference on plot.ly for  width .
            public var widthSource: String?
        
            /// Sets the source reference on plot.ly for  color .
            public var colorSource: String?
        
            /// Plotly compatible property encoding
            enum CodingKeys: String, CodingKey {
                case width
                case color
                case widthSource = "widthsrc"
                case colorSource = "colorsrc"
            }
            
            public init(width: Double? = nil, color: Color? = nil, widthSource: String? = nil, colorSource: String? = nil) {
                self.width = width
                self.color = color
                self.widthSource = widthSource
                self.colorSource = colorSource
            }
        }
        public var line: Line?
    
        /// - traces/table/attributes/cells/fill
        public struct Fill: Encodable {
            /// Sets the cell fill color. 
            ///
            /// It accepts either a specific color or an array of colors or a 2D array of colors.
            public var color: Color?
        
            /// Sets the source reference on plot.ly for  color .
            public var colorSource: String?
        
            /// Plotly compatible property encoding
            enum CodingKeys: String, CodingKey {
                case color
                case colorSource = "colorsrc"
            }
            
            public init(color: Color? = nil, colorSource: String? = nil) {
                self.color = color
                self.colorSource = colorSource
            }
        }
        public var fill: Fill?
    
        public var font: Font1?
    
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
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case values
            case format
            case prefix
            case suffix
            case height
            case align
            case line
            case fill
            case font
            case valuesSource = "valuessrc"
            case formatSource = "formatsrc"
            case prefixSource = "prefixsrc"
            case suffixSource = "suffixsrc"
            case alignSource = "alignsrc"
        }
        
        public init(values: [Double]? = nil, format: [Double]? = nil, prefix: String? = nil, suffix: String? = nil, height: Double? = nil, align: Align1? = nil, line: Line? = nil, fill: Fill? = nil, font: Font1? = nil, valuesSource: String? = nil, formatSource: String? = nil, prefixSource: String? = nil, suffixSource: String? = nil, alignSource: String? = nil) {
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

    /// Plotly compatible property encoding
    enum CodingKeys: String, CodingKey {
        case type
        case animatable
        case visible
        case name
        case uid
        case ids
        case customData = "customdata"
        case meta
        case hoverInfo = "hoverinfo"
        case hoverLabel = "hoverlabel"
        case stream
        case uiRevision = "uirevision"
        case domain
        case columnWidth = "columnwidth"
        case columnOrder = "columnorder"
        case header
        case cells
        case idsSource = "idssrc"
        case customDataSource = "customdatasrc"
        case metaSource = "metasrc"
        case hoverInfoSource = "hoverinfosrc"
        case columnWidthSource = "columnwidthsrc"
        case columnOrderSource = "columnordersrc"
    }
    
    public init(visible: Visible0? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, hoverInfo: HoverInfo0? = nil, hoverLabel: HoverLabel0? = nil, stream: Stream0? = nil, uiRevision: Anything? = nil, domain: Domain0? = nil, columnWidth: Double? = nil, columnOrder: [Double]? = nil, header: Header? = nil, cells: Cells? = nil, idsSource: String? = nil, customDataSource: String? = nil, metaSource: String? = nil, hoverInfoSource: String? = nil, columnWidthSource: String? = nil, columnOrderSource: String? = nil) {
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