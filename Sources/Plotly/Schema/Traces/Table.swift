/// Table view for detailed data viewing. 
///
/// The data are arranged in a grid of rows and columns. Most styling can be specified for columns,
/// rows or individual cells. Table is using a column-major order, ie. the grid is represented as a
/// vector of column vectors.
public struct Table: Trace {
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#type) |
    /// [Python](https://plot.ly/python/reference/#type) |
    /// [R](https://plot.ly/r/reference/#type)
    public let type: String = "table"

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
    /// [JavaScript](https://plot.ly/javascript/reference/#table-visible) |
    /// [Python](https://plot.ly/python/reference/#table-visible) |
    /// [R](https://plot.ly/r/reference/#table-visible)
    public var visible: Visible0?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#table-name) |
    /// [Python](https://plot.ly/python/reference/#table-name) |
    /// [R](https://plot.ly/r/reference/#table-name)
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#table-uid) |
    /// [Python](https://plot.ly/python/reference/#table-uid) |
    /// [R](https://plot.ly/r/reference/#table-uid)
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#table-ids) |
    /// [Python](https://plot.ly/python/reference/#table-ids) |
    /// [R](https://plot.ly/r/reference/#table-ids)
    public var ids: [Double]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#table-customdata) |
    /// [Python](https://plot.ly/python/reference/#table-customdata) |
    /// [R](https://plot.ly/r/reference/#table-customdata)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#table-meta) |
    /// [Python](https://plot.ly/python/reference/#table-meta) |
    /// [R](https://plot.ly/r/reference/#table-meta)
    public var meta: Anything?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#table-hoverinfo) |
    /// [Python](https://plot.ly/python/reference/#table-hoverinfo) |
    /// [R](https://plot.ly/r/reference/#table-hoverinfo)
    public var hoverInfo: HoverInfo0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#table-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#table-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#table-hoverlabel)
    public var hoverLabel: HoverLabel0?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#table-stream) |
    /// [Python](https://plot.ly/python/reference/#table-stream) |
    /// [R](https://plot.ly/r/reference/#table-stream)
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#table-uirevision) |
    /// [Python](https://plot.ly/python/reference/#table-uirevision) |
    /// [R](https://plot.ly/r/reference/#table-uirevision)
    public var uiRevision: Anything?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#table-domain) |
    /// [Python](https://plot.ly/python/reference/#table-domain) |
    /// [R](https://plot.ly/r/reference/#table-domain)
    public var domain: Domain0?

    /// The width of columns expressed as a ratio. 
    ///
    /// Columns fill the available width in proportion of their specified column widths.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#table-columnwidth) |
    /// [Python](https://plot.ly/python/reference/#table-columnwidth) |
    /// [R](https://plot.ly/r/reference/#table-columnwidth)
    public var columnWidth: Double?

    /// Specifies the rendered order of the data columns; for example, a value `2` at position `0` means that column index `0` in the data will be rendered as the third column, as columns have an index base of zero.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#table-columnorder) |
    /// [Python](https://plot.ly/python/reference/#table-columnorder) |
    /// [R](https://plot.ly/r/reference/#table-columnorder)
    public var columnOrder: [Double]?

    ///
    /// # Used By
    /// `Table.header` |
    public struct Header: Encodable {
        /// Header cell values. 
        ///
        /// `values[m][n]` represents the value of the `n`th point in column `m`, therefore the `values[m]`
        /// vector length for all columns must be the same (longer vectors will be truncated). Each value
        /// must be a finite number or a string.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#table-header-values) |
        /// [Python](https://plot.ly/python/reference/#table-header-values) |
        /// [R](https://plot.ly/r/reference/#table-header-values)
        public var values: [Double]?
    
        /// Sets the cell value formatting rule using d3 formatting mini-language which is similar to those of Python. 
        ///
        /// See https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#table-header-format) |
        /// [Python](https://plot.ly/python/reference/#table-header-format) |
        /// [R](https://plot.ly/r/reference/#table-header-format)
        public var format: [Double]?
    
        /// Prefix for cell values.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#table-header-prefix) |
        /// [Python](https://plot.ly/python/reference/#table-header-prefix) |
        /// [R](https://plot.ly/r/reference/#table-header-prefix)
        public var prefix: String?
    
        /// Suffix for cell values.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#table-header-suffix) |
        /// [Python](https://plot.ly/python/reference/#table-header-suffix) |
        /// [R](https://plot.ly/r/reference/#table-header-suffix)
        public var suffix: String?
    
        /// The height of cells.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#table-header-height) |
        /// [Python](https://plot.ly/python/reference/#table-header-height) |
        /// [R](https://plot.ly/r/reference/#table-header-height)
        public var height: Double?
    
        /// Sets the horizontal alignment of the `text` within the box. 
        ///
        /// Has an effect only if `text` spans more two or more lines (i.e. `text` contains one or more <br>
        /// HTML tags) or if an explicit width is set to override the text width.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#table-header-align) |
        /// [Python](https://plot.ly/python/reference/#table-header-align) |
        /// [R](https://plot.ly/r/reference/#table-header-align)
        public var align: Align1?
    
        ///
        /// # Used By
        /// `Table.Header.line` |
        public struct Line: Encodable {
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#table-header-line-width) |
            /// [Python](https://plot.ly/python/reference/#table-header-line-width) |
            /// [R](https://plot.ly/r/reference/#table-header-line-width)
            public var width: Double?
        
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#table-header-line-color) |
            /// [Python](https://plot.ly/python/reference/#table-header-line-color) |
            /// [R](https://plot.ly/r/reference/#table-header-line-color)
            public var color: Color?
        
            /// Sets the source reference on plot.ly for  width .
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#table-header-line-widthsrc) |
            /// [Python](https://plot.ly/python/reference/#table-header-line-widthsrc) |
            /// [R](https://plot.ly/r/reference/#table-header-line-widthsrc)
            public var widthSource: String?
        
            /// Sets the source reference on plot.ly for  color .
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#table-header-line-colorsrc) |
            /// [Python](https://plot.ly/python/reference/#table-header-line-colorsrc) |
            /// [R](https://plot.ly/r/reference/#table-header-line-colorsrc)
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
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#table-header-line) |
        /// [Python](https://plot.ly/python/reference/#table-header-line) |
        /// [R](https://plot.ly/r/reference/#table-header-line)
        public var line: Line?
    
        ///
        /// # Used By
        /// `Table.Header.fill` |
        public struct Fill: Encodable {
            /// Sets the cell fill color. 
            ///
            /// It accepts either a specific color or an array of colors or a 2D array of colors.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#table-header-fill-color) |
            /// [Python](https://plot.ly/python/reference/#table-header-fill-color) |
            /// [R](https://plot.ly/r/reference/#table-header-fill-color)
            public var color: Color?
        
            /// Sets the source reference on plot.ly for  color .
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#table-header-fill-colorsrc) |
            /// [Python](https://plot.ly/python/reference/#table-header-fill-colorsrc) |
            /// [R](https://plot.ly/r/reference/#table-header-fill-colorsrc)
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
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#table-header-fill) |
        /// [Python](https://plot.ly/python/reference/#table-header-fill) |
        /// [R](https://plot.ly/r/reference/#table-header-fill)
        public var fill: Fill?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#table-header-font) |
        /// [Python](https://plot.ly/python/reference/#table-header-font) |
        /// [R](https://plot.ly/r/reference/#table-header-font)
        public var font: Font0?
    
        /// Sets the source reference on plot.ly for  values .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#table-header-valuessrc) |
        /// [Python](https://plot.ly/python/reference/#table-header-valuessrc) |
        /// [R](https://plot.ly/r/reference/#table-header-valuessrc)
        public var valuesSource: String?
    
        /// Sets the source reference on plot.ly for  format .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#table-header-formatsrc) |
        /// [Python](https://plot.ly/python/reference/#table-header-formatsrc) |
        /// [R](https://plot.ly/r/reference/#table-header-formatsrc)
        public var formatSource: String?
    
        /// Sets the source reference on plot.ly for  prefix .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#table-header-prefixsrc) |
        /// [Python](https://plot.ly/python/reference/#table-header-prefixsrc) |
        /// [R](https://plot.ly/r/reference/#table-header-prefixsrc)
        public var prefixSource: String?
    
        /// Sets the source reference on plot.ly for  suffix .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#table-header-suffixsrc) |
        /// [Python](https://plot.ly/python/reference/#table-header-suffixsrc) |
        /// [R](https://plot.ly/r/reference/#table-header-suffixsrc)
        public var suffixSource: String?
    
        /// Sets the source reference on plot.ly for  align .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#table-header-alignsrc) |
        /// [Python](https://plot.ly/python/reference/#table-header-alignsrc) |
        /// [R](https://plot.ly/r/reference/#table-header-alignsrc)
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
        
        public init(values: [Double]? = nil, format: [Double]? = nil, prefix: String? = nil, suffix: String? = nil, height: Double? = nil, align: Align1? = nil, line: Line? = nil, fill: Fill? = nil, font: Font0? = nil, valuesSource: String? = nil, formatSource: String? = nil, prefixSource: String? = nil, suffixSource: String? = nil, alignSource: String? = nil) {
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#table-header) |
    /// [Python](https://plot.ly/python/reference/#table-header) |
    /// [R](https://plot.ly/r/reference/#table-header)
    public var header: Header?

    ///
    /// # Used By
    /// `Table.cells` |
    public struct Cells: Encodable {
        /// Cell values. 
        ///
        /// `values[m][n]` represents the value of the `n`th point in column `m`, therefore the `values[m]`
        /// vector length for all columns must be the same (longer vectors will be truncated). Each value
        /// must be a finite number or a string.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#table-cells-values) |
        /// [Python](https://plot.ly/python/reference/#table-cells-values) |
        /// [R](https://plot.ly/r/reference/#table-cells-values)
        public var values: [Double]?
    
        /// Sets the cell value formatting rule using d3 formatting mini-language which is similar to those of Python. 
        ///
        /// See https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#table-cells-format) |
        /// [Python](https://plot.ly/python/reference/#table-cells-format) |
        /// [R](https://plot.ly/r/reference/#table-cells-format)
        public var format: [Double]?
    
        /// Prefix for cell values.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#table-cells-prefix) |
        /// [Python](https://plot.ly/python/reference/#table-cells-prefix) |
        /// [R](https://plot.ly/r/reference/#table-cells-prefix)
        public var prefix: String?
    
        /// Suffix for cell values.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#table-cells-suffix) |
        /// [Python](https://plot.ly/python/reference/#table-cells-suffix) |
        /// [R](https://plot.ly/r/reference/#table-cells-suffix)
        public var suffix: String?
    
        /// The height of cells.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#table-cells-height) |
        /// [Python](https://plot.ly/python/reference/#table-cells-height) |
        /// [R](https://plot.ly/r/reference/#table-cells-height)
        public var height: Double?
    
        /// Sets the horizontal alignment of the `text` within the box. 
        ///
        /// Has an effect only if `text` spans more two or more lines (i.e. `text` contains one or more <br>
        /// HTML tags) or if an explicit width is set to override the text width.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#table-cells-align) |
        /// [Python](https://plot.ly/python/reference/#table-cells-align) |
        /// [R](https://plot.ly/r/reference/#table-cells-align)
        public var align: Align1?
    
        ///
        /// # Used By
        /// `Table.Cells.line` |
        public struct Line: Encodable {
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#table-cells-line-width) |
            /// [Python](https://plot.ly/python/reference/#table-cells-line-width) |
            /// [R](https://plot.ly/r/reference/#table-cells-line-width)
            public var width: Double?
        
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#table-cells-line-color) |
            /// [Python](https://plot.ly/python/reference/#table-cells-line-color) |
            /// [R](https://plot.ly/r/reference/#table-cells-line-color)
            public var color: Color?
        
            /// Sets the source reference on plot.ly for  width .
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#table-cells-line-widthsrc) |
            /// [Python](https://plot.ly/python/reference/#table-cells-line-widthsrc) |
            /// [R](https://plot.ly/r/reference/#table-cells-line-widthsrc)
            public var widthSource: String?
        
            /// Sets the source reference on plot.ly for  color .
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#table-cells-line-colorsrc) |
            /// [Python](https://plot.ly/python/reference/#table-cells-line-colorsrc) |
            /// [R](https://plot.ly/r/reference/#table-cells-line-colorsrc)
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
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#table-cells-line) |
        /// [Python](https://plot.ly/python/reference/#table-cells-line) |
        /// [R](https://plot.ly/r/reference/#table-cells-line)
        public var line: Line?
    
        ///
        /// # Used By
        /// `Table.Cells.fill` |
        public struct Fill: Encodable {
            /// Sets the cell fill color. 
            ///
            /// It accepts either a specific color or an array of colors or a 2D array of colors.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#table-cells-fill-color) |
            /// [Python](https://plot.ly/python/reference/#table-cells-fill-color) |
            /// [R](https://plot.ly/r/reference/#table-cells-fill-color)
            public var color: Color?
        
            /// Sets the source reference on plot.ly for  color .
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#table-cells-fill-colorsrc) |
            /// [Python](https://plot.ly/python/reference/#table-cells-fill-colorsrc) |
            /// [R](https://plot.ly/r/reference/#table-cells-fill-colorsrc)
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
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#table-cells-fill) |
        /// [Python](https://plot.ly/python/reference/#table-cells-fill) |
        /// [R](https://plot.ly/r/reference/#table-cells-fill)
        public var fill: Fill?
    
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#table-cells-font) |
        /// [Python](https://plot.ly/python/reference/#table-cells-font) |
        /// [R](https://plot.ly/r/reference/#table-cells-font)
        public var font: Font0?
    
        /// Sets the source reference on plot.ly for  values .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#table-cells-valuessrc) |
        /// [Python](https://plot.ly/python/reference/#table-cells-valuessrc) |
        /// [R](https://plot.ly/r/reference/#table-cells-valuessrc)
        public var valuesSource: String?
    
        /// Sets the source reference on plot.ly for  format .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#table-cells-formatsrc) |
        /// [Python](https://plot.ly/python/reference/#table-cells-formatsrc) |
        /// [R](https://plot.ly/r/reference/#table-cells-formatsrc)
        public var formatSource: String?
    
        /// Sets the source reference on plot.ly for  prefix .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#table-cells-prefixsrc) |
        /// [Python](https://plot.ly/python/reference/#table-cells-prefixsrc) |
        /// [R](https://plot.ly/r/reference/#table-cells-prefixsrc)
        public var prefixSource: String?
    
        /// Sets the source reference on plot.ly for  suffix .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#table-cells-suffixsrc) |
        /// [Python](https://plot.ly/python/reference/#table-cells-suffixsrc) |
        /// [R](https://plot.ly/r/reference/#table-cells-suffixsrc)
        public var suffixSource: String?
    
        /// Sets the source reference on plot.ly for  align .
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#table-cells-alignsrc) |
        /// [Python](https://plot.ly/python/reference/#table-cells-alignsrc) |
        /// [R](https://plot.ly/r/reference/#table-cells-alignsrc)
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
        
        public init(values: [Double]? = nil, format: [Double]? = nil, prefix: String? = nil, suffix: String? = nil, height: Double? = nil, align: Align1? = nil, line: Line? = nil, fill: Fill? = nil, font: Font0? = nil, valuesSource: String? = nil, formatSource: String? = nil, prefixSource: String? = nil, suffixSource: String? = nil, alignSource: String? = nil) {
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#table-cells) |
    /// [Python](https://plot.ly/python/reference/#table-cells) |
    /// [R](https://plot.ly/r/reference/#table-cells)
    public var cells: Cells?

    /// Sets the source reference on plot.ly for  ids .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#table-idssrc) |
    /// [Python](https://plot.ly/python/reference/#table-idssrc) |
    /// [R](https://plot.ly/r/reference/#table-idssrc)
    public var idsSource: String?

    /// Sets the source reference on plot.ly for  customdata .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#table-customdatasrc) |
    /// [Python](https://plot.ly/python/reference/#table-customdatasrc) |
    /// [R](https://plot.ly/r/reference/#table-customdatasrc)
    public var customDataSource: String?

    /// Sets the source reference on plot.ly for  meta .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#table-metasrc) |
    /// [Python](https://plot.ly/python/reference/#table-metasrc) |
    /// [R](https://plot.ly/r/reference/#table-metasrc)
    public var metaSource: String?

    /// Sets the source reference on plot.ly for  hoverinfo .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#table-hoverinfosrc) |
    /// [Python](https://plot.ly/python/reference/#table-hoverinfosrc) |
    /// [R](https://plot.ly/r/reference/#table-hoverinfosrc)
    public var hoverInfoSource: String?

    /// Sets the source reference on plot.ly for  columnwidth .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#table-columnwidthsrc) |
    /// [Python](https://plot.ly/python/reference/#table-columnwidthsrc) |
    /// [R](https://plot.ly/r/reference/#table-columnwidthsrc)
    public var columnWidthSource: String?

    /// Sets the source reference on plot.ly for  columnorder .
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#table-columnordersrc) |
    /// [Python](https://plot.ly/python/reference/#table-columnordersrc) |
    /// [R](https://plot.ly/r/reference/#table-columnordersrc)
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