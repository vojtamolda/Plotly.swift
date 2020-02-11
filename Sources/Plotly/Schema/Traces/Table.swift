/// Table view for detailed data viewing.
/// 
/// The data are arranged in a grid of rows and columns. Most styling can be specified for columns,
/// rows or individual cells. Table is using a column-major order, ie. the grid is represented as a
/// vector of column vectors.
/// 
/// - SeeAlso:
///   Documentation for 
///   [Python](https://plot.ly/python/reference/#table), 
///   [JavaScript](https://plot.ly/javascript/reference/#table) or 
///   [R](https://plot.ly/r/reference/#table)
public struct Table: Trace {
    public let type: String = "table"

    public let animatable: Bool = false

    /// Determines whether or not this trace is visible.
    /// 
    /// If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the
    /// legend itself is visible).
    public var visible: Shared.Visible?

    /// Sets the trace name.
    /// 
    /// The trace name appear as the legend item and on hover.
    public var name: String?

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

    /// Determines which trace information appear on hover.
    /// 
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    public var hoverInfo: Shared.HoverInfo?

    public var hoverLabel: Shared.HoverLabel?

    public var stream: Shared.Stream?

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

    public var domain: Shared.Domain?

    /// The width of columns expressed as a ratio.
    /// 
    /// Columns fill the available width in proportion of their specified column widths.
    public var columnWidth: ArrayOrDouble?

    /// Specifies the rendered order of the data columns; for example, a value `2` at position `0` means
    /// that column index `0` in the data will be rendered as the third column, as columns have an index
    /// base of zero.
    public var columnOrder: [Int]?

    public struct Header: Encodable {
        /// Header cell values.
        /// 
        /// `values[m][n]` represents the value of the `n`th point in column `m`, therefore the `values[m]`
        /// vector length for all columns must be the same (longer vectors will be truncated). Each value
        /// must be a finite number or a string.
        public var values: [Double]?
    
        /// Sets the cell value formatting rule using d3 formatting mini-language which is similar to those
        /// of Python.
        /// 
        /// See https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
        public var format: [Double]?
    
        /// Prefix for cell values.
        public var prefix: ArrayOrString?
    
        /// Suffix for cell values.
        public var suffix: ArrayOrString?
    
        /// The height of cells.
        public var height: Double?
    
        /// Sets the horizontal alignment of the `text` within the box.
        /// 
        /// Has an effect only if `text` spans more two or more lines (i.e. `text` contains one or more <br>
        /// HTML tags) or if an explicit width is set to override the text width.
        public var align: Shared.HorizontalAlign?
    
        public var line: Shared.Line?
    
        public struct Fill: Encodable {
            /// Sets the cell fill color.
            /// 
            /// It accepts either a specific color or an array of colors or a 2D array of colors.
            public var color: ArrayOrColor?
        
            /// Creates `Fill` object with specified properties.
            /// 
            /// - Parameters:
            ///   - color: Sets the cell fill color.
            public init(color: ArrayOrColor? = nil) {
                self.color = color
            }
            
        }
        public var fill: Fill?
    
        public var font: Shared.Font?
    
        /// Creates `Header` object with specified properties.
        /// 
        /// - Parameters:
        ///   - values: Header cell values.
        ///   - format: Sets the cell value formatting rule using d3 formatting mini-language which is similar
        ///   to those of Python.
        ///   - prefix: Prefix for cell values.
        ///   - suffix: Suffix for cell values.
        ///   - height: The height of cells.
        ///   - align: Sets the horizontal alignment of the `text` within the box.
        ///   - line:
        ///   - fill:
        ///   - font:
        public init(values: [Double]? = nil, format: [Double]? = nil, prefix: ArrayOrString? = nil,
                suffix: ArrayOrString? = nil, height: Double? = nil, align: Shared.HorizontalAlign? = nil, line:
                Shared.Line? = nil, fill: Fill? = nil, font: Shared.Font? = nil) {
            self.values = values
            self.format = format
            self.prefix = prefix
            self.suffix = suffix
            self.height = height
            self.align = align
            self.line = line
            self.fill = fill
            self.font = font
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
    
        /// Sets the cell value formatting rule using d3 formatting mini-language which is similar to those
        /// of Python.
        /// 
        /// See https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
        public var format: [Double]?
    
        /// Prefix for cell values.
        public var prefix: ArrayOrString?
    
        /// Suffix for cell values.
        public var suffix: ArrayOrString?
    
        /// The height of cells.
        public var height: Double?
    
        /// Sets the horizontal alignment of the `text` within the box.
        /// 
        /// Has an effect only if `text` spans more two or more lines (i.e. `text` contains one or more <br>
        /// HTML tags) or if an explicit width is set to override the text width.
        public var align: Shared.HorizontalAlign?
    
        public var line: Shared.Line?
    
        public struct Fill: Encodable {
            /// Sets the cell fill color.
            /// 
            /// It accepts either a specific color or an array of colors or a 2D array of colors.
            public var color: ArrayOrColor?
        
            /// Creates `Fill` object with specified properties.
            /// 
            /// - Parameters:
            ///   - color: Sets the cell fill color.
            public init(color: ArrayOrColor? = nil) {
                self.color = color
            }
            
        }
        public var fill: Fill?
    
        public var font: Shared.Font?
    
        /// Creates `Cells` object with specified properties.
        /// 
        /// - Parameters:
        ///   - values: Cell values.
        ///   - format: Sets the cell value formatting rule using d3 formatting mini-language which is similar
        ///   to those of Python.
        ///   - prefix: Prefix for cell values.
        ///   - suffix: Suffix for cell values.
        ///   - height: The height of cells.
        ///   - align: Sets the horizontal alignment of the `text` within the box.
        ///   - line:
        ///   - fill:
        ///   - font:
        public init(values: [Double]? = nil, format: [Double]? = nil, prefix: ArrayOrString? = nil,
                suffix: ArrayOrString? = nil, height: Double? = nil, align: Shared.HorizontalAlign? = nil, line:
                Shared.Line? = nil, fill: Fill? = nil, font: Shared.Font? = nil) {
            self.values = values
            self.format = format
            self.prefix = prefix
            self.suffix = suffix
            self.height = height
            self.align = align
            self.line = line
            self.fill = fill
            self.font = font
        }
        
    }
    public var cells: Cells?

    /// Decoding and encoding keys compatible with Plotly schema.
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
    }
    
    /// Creates `Table` object with specified properties.
    /// 
    /// - Parameters:
    ///   - visible: Determines whether or not this trace is visible.
    ///   - name: Sets the trace name.
    ///   - uid: Assign an id to this trace, Use this to provide object constancy between traces during
    ///   animations and transitions.
    ///   - ids: Assigns id labels to each datum.
    ///   - customData: Assigns extra data each datum.
    ///   - meta: Assigns extra meta information associated with this trace that can be used in various
    ///   text attributes.
    ///   - hoverInfo: Determines which trace information appear on hover.
    ///   - hoverLabel:
    ///   - stream:
    ///   - uiRevision: Controls persistence of some user-driven changes to the trace: `constraintrange`
    ///   in `parcoords` traces, as well as some `editable: true` modifications such as `name` and
    ///   `colorbar.title`.
    ///   - domain:
    ///   - columnWidth: The width of columns expressed as a ratio.
    ///   - columnOrder: Specifies the rendered order of the data columns; for example, a value `2` at
    ///   position `0` means that column index `0` in the data will be rendered as the third column, as
    ///   columns have an index base of zero.
    ///   - header:
    ///   - cells:
    public init(visible: Shared.Visible? = nil, name: String? = nil, uid: String? = nil, ids:
            [String]? = nil, customData: [String]? = nil, meta: ArrayOrAnything? = nil, hoverInfo:
            Shared.HoverInfo? = nil, hoverLabel: Shared.HoverLabel? = nil, stream: Shared.Stream? = nil,
            uiRevision: Anything? = nil, domain: Shared.Domain? = nil, columnWidth: ArrayOrDouble? = nil,
            columnOrder: [Int]? = nil, header: Header? = nil, cells: Cells? = nil) {
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
    }
    
}