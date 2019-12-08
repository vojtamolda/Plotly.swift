/// Table view for detailed data viewing. The data are arranged in a grid of rows and columns. Most styling can be specified for columns, rows or individual cells. Table is using a column-major order, ie. the grid is represented as a vector of column vectors.
public struct Table: Trace {
    public let type: String = "table"

    public let animatable: Bool = false

    /// Determines whether or not this trace is visible. If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the legend itself is visible).
    public enum Visible: String, Encodable {
        case yes
        case no
        case legendonly
    }
    /// Determines whether or not this trace is visible. If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the legend itself is visible).
    public var visible: Visible?

    /// Sets the trace name. The trace name appear as the legend item and on hover.
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    public var uid: String?

    /// Assigns id labels to each datum. These ids for object constancy of data points during animation. Should be an array of strings, not numbers or any other type.
    public var ids: [Double]?

    /// Assigns extra data each datum. This may be useful when listening to hover, click and selection events. Note that, *scatter* traces also appends customdata items in the markers DOM elements
    public var customdata: [Double]?

    /// Assigns extra meta information associated with this trace that can be used in various text attributes. Attributes such as trace `name`, graph, axis and colorbar `title.text`, annotation `text` `rangeselector`, `updatemenues` and `sliders` `label` text all support `meta`. To access the trace `meta` values in an attribute in the same trace, simply use `%{meta[i]}` where `i` is the index or key of the `meta` item in question. To access trace `meta` in layout attributes, use `%{data[n[.meta[i]}` where `i` is the index or key of the `meta` and `n` is the trace index.
    public var meta: Anything?

    /// Determines which trace information appear on hover. If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set, click and hover events are still fired.
    public struct Hoverinfo: OptionSet, Encodable {
        public let rawValue: Int
    
        public static let x = Hoverinfo(rawValue: 1 << 0)
        public static let y = Hoverinfo(rawValue: 1 << 1)
        public static let z = Hoverinfo(rawValue: 1 << 2)
        public static let text = Hoverinfo(rawValue: 1 << 3)
        public static let name = Hoverinfo(rawValue: 1 << 4)
    
        public init(rawValue: Int) { self.rawValue = rawValue }
    
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["x"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["y"] }
            if (self.rawValue & 1 << 2) != 0 { options += ["z"] }
            if (self.rawValue & 1 << 3) != 0 { options += ["text"] }
            if (self.rawValue & 1 << 4) != 0 { options += ["name"] }
            var container = encoder.singleValueContainer()
            try container.encode(options.joined(separator: "+"))
        }
    }
    /// Determines which trace information appear on hover. If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set, click and hover events are still fired.
    public var hoverinfo: Hoverinfo?

    public struct Hoverlabel: Encodable {
        /// Sets the background color of the hover labels for this trace
        public var bgcolor: Color?
    
        /// Sets the border color of the hover labels for this trace.
        public var bordercolor: Color?
    
        /// Sets the font used in hover labels.
        public struct Font: Encodable {
            /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
            public var family: String?
        
            public var size: Double?
        
            public var color: Color?
        
            /// Sets the source reference on plot.ly for  family .
            public var familysrc: String?
        
            /// Sets the source reference on plot.ly for  size .
            public var sizesrc: String?
        
            /// Sets the source reference on plot.ly for  color .
            public var colorsrc: String?
        
            public init(family: String? = nil, size: Double? = nil, color: Color? = nil, familysrc: String? = nil, sizesrc: String? = nil, colorsrc: String? = nil) {
                self.family = family
                self.size = size
                self.color = color
                self.familysrc = familysrc
                self.sizesrc = sizesrc
                self.colorsrc = colorsrc
            }
        }
        /// Sets the font used in hover labels.
        public var font: Font?
    
        /// Sets the horizontal alignment of the text content within hover label box. Has an effect only if the hover label text spans more two or more lines
        public enum Align: String, Encodable {
            case left
            case right
            case auto
        }
        /// Sets the horizontal alignment of the text content within hover label box. Has an effect only if the hover label text spans more two or more lines
        public var align: Align?
    
        /// Sets the default length (in number of characters) of the trace name in the hover labels for all traces. -1 shows the whole name regardless of length. 0-3 shows the first 0-3 characters, and an integer >3 will show the whole name if it is less than that many characters, but if it is longer, will truncate to `namelength - 3` characters and add an ellipsis.
        public var namelength: Int?
    
        /// Sets the source reference on plot.ly for  bgcolor .
        public var bgcolorsrc: String?
    
        /// Sets the source reference on plot.ly for  bordercolor .
        public var bordercolorsrc: String?
    
        /// Sets the source reference on plot.ly for  align .
        public var alignsrc: String?
    
        /// Sets the source reference on plot.ly for  namelength .
        public var namelengthsrc: String?
    
        public init(bgcolor: Color? = nil, bordercolor: Color? = nil, font: Font? = nil, align: Align? = nil, namelength: Int? = nil, bgcolorsrc: String? = nil, bordercolorsrc: String? = nil, alignsrc: String? = nil, namelengthsrc: String? = nil) {
            self.bgcolor = bgcolor
            self.bordercolor = bordercolor
            self.font = font
            self.align = align
            self.namelength = namelength
            self.bgcolorsrc = bgcolorsrc
            self.bordercolorsrc = bordercolorsrc
            self.alignsrc = alignsrc
            self.namelengthsrc = namelengthsrc
        }
    }
    public var hoverlabel: Hoverlabel?

    public struct Stream: Encodable {
        /// The stream id number links a data trace on a plot with a stream. See https://plot.ly/settings for more details.
        public var token: String?
    
        /// Sets the maximum number of points to keep on the plots from an incoming stream. If `maxpoints` is set to *50*, only the newest 50 points will be displayed on the plot.
        public var maxpoints: Double?
    
        public init(token: String? = nil, maxpoints: Double? = nil) {
            self.token = token
            self.maxpoints = maxpoints
        }
    }
    public var stream: Stream?

    /// Controls persistence of some user-driven changes to the trace: `constraintrange` in `parcoords` traces, as well as some `editable: true` modifications such as `name` and `colorbar.title`. Defaults to `layout.uirevision`. Note that other user-driven trace attribute changes are controlled by `layout` attributes: `trace.visible` is controlled by `layout.legend.uirevision`, `selectedpoints` is controlled by `layout.selectionrevision`, and `colorbar.(x|y)` (accessible with `config: {editable: true}`) is controlled by `layout.editrevision`. Trace changes are tracked by `uid`, which only falls back on trace index if no `uid` is provided. So if your app can add/remove traces before the end of the `data` array, such that the same trace has a different index, you can still preserve user-driven changes if you give each trace a `uid` that stays with it as it moves.
    public var uirevision: Anything?

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

    /// The width of columns expressed as a ratio. Columns fill the available width in proportion of their specified column widths.
    public var columnwidth: Double?

    /// Specifies the rendered order of the data columns; for example, a value `2` at position `0` means that column index `0` in the data will be rendered as the third column, as columns have an index base of zero.
    public var columnorder: [Double]?

    public struct Header: Encodable {
        /// Header cell values. `values[m][n]` represents the value of the `n`th point in column `m`, therefore the `values[m]` vector length for all columns must be the same (longer vectors will be truncated). Each value must be a finite number or a string.
        public var values: [Double]?
    
        /// Sets the cell value formatting rule using d3 formatting mini-language which is similar to those of Python. See https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
        public var format: [Double]?
    
        /// Prefix for cell values.
        public var prefix: String?
    
        /// Suffix for cell values.
        public var suffix: String?
    
        /// The height of cells.
        public var height: Double?
    
        /// Sets the horizontal alignment of the `text` within the box. Has an effect only if `text` spans more two or more lines (i.e. `text` contains one or more <br> HTML tags) or if an explicit width is set to override the text width.
        public enum Align: String, Encodable {
            case left
            case center
            case right
        }
        /// Sets the horizontal alignment of the `text` within the box. Has an effect only if `text` spans more two or more lines (i.e. `text` contains one or more <br> HTML tags) or if an explicit width is set to override the text width.
        public var align: Align?
    
        public struct Line: Encodable {
            public var width: Double?
        
            public var color: Color?
        
            /// Sets the source reference on plot.ly for  width .
            public var widthsrc: String?
        
            /// Sets the source reference on plot.ly for  color .
            public var colorsrc: String?
        
            public init(width: Double? = nil, color: Color? = nil, widthsrc: String? = nil, colorsrc: String? = nil) {
                self.width = width
                self.color = color
                self.widthsrc = widthsrc
                self.colorsrc = colorsrc
            }
        }
        public var line: Line?
    
        public struct Fill: Encodable {
            /// Sets the cell fill color. It accepts either a specific color or an array of colors or a 2D array of colors.
            public var color: Color?
        
            /// Sets the source reference on plot.ly for  color .
            public var colorsrc: String?
        
            public init(color: Color? = nil, colorsrc: String? = nil) {
                self.color = color
                self.colorsrc = colorsrc
            }
        }
        public var fill: Fill?
    
        public struct Font: Encodable {
            /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
            public var family: String?
        
            public var size: Double?
        
            public var color: Color?
        
            /// Sets the source reference on plot.ly for  family .
            public var familysrc: String?
        
            /// Sets the source reference on plot.ly for  size .
            public var sizesrc: String?
        
            /// Sets the source reference on plot.ly for  color .
            public var colorsrc: String?
        
            public init(family: String? = nil, size: Double? = nil, color: Color? = nil, familysrc: String? = nil, sizesrc: String? = nil, colorsrc: String? = nil) {
                self.family = family
                self.size = size
                self.color = color
                self.familysrc = familysrc
                self.sizesrc = sizesrc
                self.colorsrc = colorsrc
            }
        }
        public var font: Font?
    
        /// Sets the source reference on plot.ly for  values .
        public var valuessrc: String?
    
        /// Sets the source reference on plot.ly for  format .
        public var formatsrc: String?
    
        /// Sets the source reference on plot.ly for  prefix .
        public var prefixsrc: String?
    
        /// Sets the source reference on plot.ly for  suffix .
        public var suffixsrc: String?
    
        /// Sets the source reference on plot.ly for  align .
        public var alignsrc: String?
    
        public init(values: [Double]? = nil, format: [Double]? = nil, prefix: String? = nil, suffix: String? = nil, height: Double? = nil, align: Align? = nil, line: Line? = nil, fill: Fill? = nil, font: Font? = nil, valuessrc: String? = nil, formatsrc: String? = nil, prefixsrc: String? = nil, suffixsrc: String? = nil, alignsrc: String? = nil) {
            self.values = values
            self.format = format
            self.prefix = prefix
            self.suffix = suffix
            self.height = height
            self.align = align
            self.line = line
            self.fill = fill
            self.font = font
            self.valuessrc = valuessrc
            self.formatsrc = formatsrc
            self.prefixsrc = prefixsrc
            self.suffixsrc = suffixsrc
            self.alignsrc = alignsrc
        }
    }
    public var header: Header?

    public struct Cells: Encodable {
        /// Cell values. `values[m][n]` represents the value of the `n`th point in column `m`, therefore the `values[m]` vector length for all columns must be the same (longer vectors will be truncated). Each value must be a finite number or a string.
        public var values: [Double]?
    
        /// Sets the cell value formatting rule using d3 formatting mini-language which is similar to those of Python. See https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
        public var format: [Double]?
    
        /// Prefix for cell values.
        public var prefix: String?
    
        /// Suffix for cell values.
        public var suffix: String?
    
        /// The height of cells.
        public var height: Double?
    
        /// Sets the horizontal alignment of the `text` within the box. Has an effect only if `text` spans more two or more lines (i.e. `text` contains one or more <br> HTML tags) or if an explicit width is set to override the text width.
        public enum Align: String, Encodable {
            case left
            case center
            case right
        }
        /// Sets the horizontal alignment of the `text` within the box. Has an effect only if `text` spans more two or more lines (i.e. `text` contains one or more <br> HTML tags) or if an explicit width is set to override the text width.
        public var align: Align?
    
        public struct Line: Encodable {
            public var width: Double?
        
            public var color: Color?
        
            /// Sets the source reference on plot.ly for  width .
            public var widthsrc: String?
        
            /// Sets the source reference on plot.ly for  color .
            public var colorsrc: String?
        
            public init(width: Double? = nil, color: Color? = nil, widthsrc: String? = nil, colorsrc: String? = nil) {
                self.width = width
                self.color = color
                self.widthsrc = widthsrc
                self.colorsrc = colorsrc
            }
        }
        public var line: Line?
    
        public struct Fill: Encodable {
            /// Sets the cell fill color. It accepts either a specific color or an array of colors or a 2D array of colors.
            public var color: Color?
        
            /// Sets the source reference on plot.ly for  color .
            public var colorsrc: String?
        
            public init(color: Color? = nil, colorsrc: String? = nil) {
                self.color = color
                self.colorsrc = colorsrc
            }
        }
        public var fill: Fill?
    
        public struct Font: Encodable {
            /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
            public var family: String?
        
            public var size: Double?
        
            public var color: Color?
        
            /// Sets the source reference on plot.ly for  family .
            public var familysrc: String?
        
            /// Sets the source reference on plot.ly for  size .
            public var sizesrc: String?
        
            /// Sets the source reference on plot.ly for  color .
            public var colorsrc: String?
        
            public init(family: String? = nil, size: Double? = nil, color: Color? = nil, familysrc: String? = nil, sizesrc: String? = nil, colorsrc: String? = nil) {
                self.family = family
                self.size = size
                self.color = color
                self.familysrc = familysrc
                self.sizesrc = sizesrc
                self.colorsrc = colorsrc
            }
        }
        public var font: Font?
    
        /// Sets the source reference on plot.ly for  values .
        public var valuessrc: String?
    
        /// Sets the source reference on plot.ly for  format .
        public var formatsrc: String?
    
        /// Sets the source reference on plot.ly for  prefix .
        public var prefixsrc: String?
    
        /// Sets the source reference on plot.ly for  suffix .
        public var suffixsrc: String?
    
        /// Sets the source reference on plot.ly for  align .
        public var alignsrc: String?
    
        public init(values: [Double]? = nil, format: [Double]? = nil, prefix: String? = nil, suffix: String? = nil, height: Double? = nil, align: Align? = nil, line: Line? = nil, fill: Fill? = nil, font: Font? = nil, valuessrc: String? = nil, formatsrc: String? = nil, prefixsrc: String? = nil, suffixsrc: String? = nil, alignsrc: String? = nil) {
            self.values = values
            self.format = format
            self.prefix = prefix
            self.suffix = suffix
            self.height = height
            self.align = align
            self.line = line
            self.fill = fill
            self.font = font
            self.valuessrc = valuessrc
            self.formatsrc = formatsrc
            self.prefixsrc = prefixsrc
            self.suffixsrc = suffixsrc
            self.alignsrc = alignsrc
        }
    }
    public var cells: Cells?

    /// Sets the source reference on plot.ly for  ids .
    public var idssrc: String?

    /// Sets the source reference on plot.ly for  customdata .
    public var customdatasrc: String?

    /// Sets the source reference on plot.ly for  meta .
    public var metasrc: String?

    /// Sets the source reference on plot.ly for  hoverinfo .
    public var hoverinfosrc: String?

    /// Sets the source reference on plot.ly for  columnwidth .
    public var columnwidthsrc: String?

    /// Sets the source reference on plot.ly for  columnorder .
    public var columnordersrc: String?

    public init(visible: Visible? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customdata: [Double]? = nil, meta: Anything? = nil, hoverinfo: Hoverinfo? = nil, hoverlabel: Hoverlabel? = nil, stream: Stream? = nil, uirevision: Anything? = nil, domain: Domain? = nil, columnwidth: Double? = nil, columnorder: [Double]? = nil, header: Header? = nil, cells: Cells? = nil, idssrc: String? = nil, customdatasrc: String? = nil, metasrc: String? = nil, hoverinfosrc: String? = nil, columnwidthsrc: String? = nil, columnordersrc: String? = nil) {
        self.visible = visible
        self.name = name
        self.uid = uid
        self.ids = ids
        self.customdata = customdata
        self.meta = meta
        self.hoverinfo = hoverinfo
        self.hoverlabel = hoverlabel
        self.stream = stream
        self.uirevision = uirevision
        self.domain = domain
        self.columnwidth = columnwidth
        self.columnorder = columnorder
        self.header = header
        self.cells = cells
        self.idssrc = idssrc
        self.customdatasrc = customdatasrc
        self.metasrc = metasrc
        self.hoverinfosrc = hoverinfosrc
        self.columnwidthsrc = columnwidthsrc
        self.columnordersrc = columnordersrc
    }
}