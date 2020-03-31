/// An indicator is used to visualize a single `value` along with some contextual information such
/// as `steps` or a `threshold`, using a combination of three visual elements: a number, a delta,
/// and/or a gauge.
/// 
/// Deltas are taken with respect to a `reference`. Gauges can be either angular or bullet (aka
/// linear) gauges.
/// 
/// - SeeAlso:
///   Documentation for 
///   [Python](https://plot.ly/python/reference/#indicator), 
///   [JavaScript](https://plot.ly/javascript/reference/#indicator) or 
///   [R](https://plot.ly/r/reference/#indicator)
public struct Indicator: Trace, DomainSubplot {
    public let type: String = "indicator"

    public let animatable: Bool = true

    /// Determines whether or not this trace is visible.
    /// 
    /// If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the
    /// legend itself is visible).
    public var visible: Shared.Visible? = nil

    /// Sets the trace name.
    /// 
    /// The trace name appear as the legend item and on hover.
    public var name: String? = nil

    /// Assign an id to this trace, Use this to provide object constancy between traces during
    /// animations and transitions.
    public var uid: String? = nil

    /// Assigns id labels to each datum.
    /// 
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    public var ids: [String]? = nil

    /// Assigns extra data each datum.
    /// 
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    public var customData: [String]? = nil

    /// Assigns extra meta information associated with this trace that can be used in various text
    /// attributes.
    /// 
    /// Attributes such as trace `name`, graph, axis and colorbar `title.text`, annotation `text`
    /// `rangeselector`, `updatemenues` and `sliders` `label` text all support `meta`. To access the
    /// trace `meta` values in an attribute in the same trace, simply use `%{meta[i]}` where `i` is the
    /// index or key of the `meta` item in question. To access trace `meta` in layout attributes, use
    /// `%{data[n[.meta[i]}` where `i` is the index or key of the `meta` and `n` is the trace index.
    public var meta: Data<Anything>? = nil

    public var stream: Shared.Stream? = nil

    public var transforms: [Shared.Transform]? = nil

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
    public var uiRevision: Anything? = nil

    /// Determines how the value is displayed on the graph.
    /// 
    /// `number` displays the value numerically in text. `delta` displays the difference to a reference
    /// value in text. Finally, `gauge` displays the value graphically on an axis.
    public struct Mode: OptionSet, Encodable {
        public let rawValue: Int
        public static var number: Mode { Mode(rawValue: 1 << 0) }
        public static var delta: Mode { Mode(rawValue: 1 << 1) }
        public static var gauge: Mode { Mode(rawValue: 1 << 2) }
        
        public init(rawValue: Int) {
            self.rawValue = rawValue
        }
        
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["number"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["delta"] }
            if (self.rawValue & 1 << 2) != 0 { options += ["gauge"] }
            var container = encoder.singleValueContainer()
            try container.encode(options.joined(separator: "+"))
        }
    }
    /// Determines how the value is displayed on the graph.
    /// 
    /// `number` displays the value numerically in text. `delta` displays the difference to a reference
    /// value in text. Finally, `gauge` displays the value graphically on an axis.
    public var mode: Mode? = nil

    /// Sets the number to be displayed.
    public var value: Double? = nil

    /// Sets the horizontal alignment of the `text` within the box.
    /// 
    /// Note that this attribute has no effect if an angular gauge is displayed: in this case, it is
    /// always centered
    public var align: Shared.HorizontalAlign? = nil

    public var domain: Shared.Domain? = nil

    public struct Title: Encodable {
        /// Sets the title of this indicator.
        public var text: String? = nil
    
        /// Sets the horizontal alignment of the title.
        /// 
        /// It defaults to `center` except for bullet charts for which it defaults to right.
        public var align: Shared.HorizontalAlign? = nil
    
        /// Set the font used to display the title
        public var font: Shared.Font? = nil
    
        /// Creates `Title` object with specified properties.
        /// 
        /// - Parameters:
        ///   - text: Sets the title of this indicator.
        ///   - align: Sets the horizontal alignment of the title.
        ///   - font: Set the font used to display the title
        public init(text: String? = nil, align: Shared.HorizontalAlign? = nil, font: Shared.Font? = nil)
                {
            self.text = text
            self.align = align
            self.font = font
        }
        
    }
    public var title: Title? = nil

    public struct Number: Encodable {
        /// Sets the value formatting rule using d3 formatting mini-language which is similar to those of
        /// Python.
        /// 
        /// See https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
        public var valueFormat: String? = nil
    
        /// Set the font used to display main number
        public var font: Shared.Font? = nil
    
        /// Sets a prefix appearing before the number.
        public var prefix: String? = nil
    
        /// Sets a suffix appearing next to the number.
        public var suffix: String? = nil
    
        /// Decoding and encoding keys compatible with Plotly schema.
        enum CodingKeys: String, CodingKey {
            case valueFormat = "valueformat"
            case font
            case prefix
            case suffix
        }
        
        /// Creates `Number` object with specified properties.
        /// 
        /// - Parameters:
        ///   - valueFormat: Sets the value formatting rule using d3 formatting mini-language which is similar
        ///   to those of Python.
        ///   - font: Set the font used to display main number
        ///   - prefix: Sets a prefix appearing before the number.
        ///   - suffix: Sets a suffix appearing next to the number.
        public init(valueFormat: String? = nil, font: Shared.Font? = nil, prefix: String? = nil, suffix:
                String? = nil) {
            self.valueFormat = valueFormat
            self.font = font
            self.prefix = prefix
            self.suffix = suffix
        }
        
    }
    public var number: Number? = nil

    public struct Delta: Encodable {
        /// Sets the reference value to compute the delta.
        /// 
        /// By default, it is set to the current value.
        public var reference: Double? = nil
    
        /// Sets the position of delta with respect to the number.
        public enum Position: String, Encodable {
            case top
            case bottom
            case left
            case right
        }
        /// Sets the position of delta with respect to the number.
        public var position: Position? = nil
    
        /// Show relative change
        public var relative: Bool? = nil
    
        /// Sets the value formatting rule using d3 formatting mini-language which is similar to those of
        /// Python.
        /// 
        /// See https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
        public var valueFormat: String? = nil
    
        public struct Increasing: Encodable {
            /// Sets the symbol to display for increasing value
            public var symbol: String? = nil
        
            /// Sets the color for increasing value.
            public var color: Color? = nil
        
            /// Creates `Increasing` object with specified properties.
            /// 
            /// - Parameters:
            ///   - symbol: Sets the symbol to display for increasing value
            ///   - color: Sets the color for increasing value.
            public init(symbol: String? = nil, color: Color? = nil) {
                self.symbol = symbol
                self.color = color
            }
            
        }
        public var increasing: Increasing? = nil
    
        public struct Decreasing: Encodable {
            /// Sets the symbol to display for increasing value
            public var symbol: String? = nil
        
            /// Sets the color for increasing value.
            public var color: Color? = nil
        
            /// Creates `Decreasing` object with specified properties.
            /// 
            /// - Parameters:
            ///   - symbol: Sets the symbol to display for increasing value
            ///   - color: Sets the color for increasing value.
            public init(symbol: String? = nil, color: Color? = nil) {
                self.symbol = symbol
                self.color = color
            }
            
        }
        public var decreasing: Decreasing? = nil
    
        /// Set the font used to display the delta
        public var font: Shared.Font? = nil
    
        /// Decoding and encoding keys compatible with Plotly schema.
        enum CodingKeys: String, CodingKey {
            case reference
            case position
            case relative
            case valueFormat = "valueformat"
            case increasing
            case decreasing
            case font
        }
        
        /// Creates `Delta` object with specified properties.
        /// 
        /// - Parameters:
        ///   - reference: Sets the reference value to compute the delta.
        ///   - position: Sets the position of delta with respect to the number.
        ///   - relative: Show relative change
        ///   - valueFormat: Sets the value formatting rule using d3 formatting mini-language which is similar
        ///   to those of Python.
        ///   - increasing:
        ///   - decreasing:
        ///   - font: Set the font used to display the delta
        public init(reference: Double? = nil, position: Position? = nil, relative: Bool? = nil,
                valueFormat: String? = nil, increasing: Increasing? = nil, decreasing: Decreasing? = nil, font:
                Shared.Font? = nil) {
            self.reference = reference
            self.position = position
            self.relative = relative
            self.valueFormat = valueFormat
            self.increasing = increasing
            self.decreasing = decreasing
            self.font = font
        }
        
    }
    public var delta: Delta? = nil

    /// The gauge of the Indicator plot.
    public struct Gauge: Encodable {
        /// Set the shape of the gauge
        public enum Shape: String, Encodable {
            case angular
            case bullet
        }
        /// Set the shape of the gauge
        public var shape: Shape? = nil
    
        /// Set the appearance of the gauge's value
        public struct Bar: Encodable {
            /// Sets the background color of the arc.
            public var color: Color? = nil
        
            public var line: Shared.Line? = nil
        
            /// Sets the thickness of the bar as a fraction of the total thickness of the gauge.
            public var thickness: Double? = nil
        
            /// Creates `Bar` object with specified properties.
            /// 
            /// - Parameters:
            ///   - color: Sets the background color of the arc.
            ///   - line:
            ///   - thickness: Sets the thickness of the bar as a fraction of the total thickness of the gauge.
            public init(color: Color? = nil, line: Shared.Line? = nil, thickness: Double? = nil) {
                self.color = color
                self.line = line
                self.thickness = thickness
            }
            
        }
        /// Set the appearance of the gauge's value
        public var bar: Bar? = nil
    
        /// Sets the gauge background color.
        public var backgroundColor: Color? = nil
    
        /// Sets the color of the border enclosing the gauge.
        public var borderColor: Color? = nil
    
        /// Sets the width (in px) of the border enclosing the gauge.
        public var borderWidth: Double? = nil
    
        public struct Axis: Encodable {
            /// Sets the range of this axis.
            public var range: InfoArray? = nil
        
            /// A single toggle to hide the axis while preserving interaction like dragging.
            /// 
            /// Default is true when a cheater plot is present on the axis, otherwise false
            public var visible: Bool? = nil
        
            /// Sets the tick mode for this axis.
            /// 
            /// If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is
            /// determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value
            /// if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via
            /// `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is
            /// provided).
            public var tickMode: Shared.TickMode? = nil
        
            /// Specifies the maximum number of ticks for the particular axis.
            /// 
            /// The actual number of ticks will be chosen automatically to be less than or equal to `nticks`.
            /// Has an effect only if `tickmode` is set to *auto*.
            public var numTicks: Int? = nil
        
            /// Sets the placement of the first tick on this axis.
            /// 
            /// Use with `dtick`. If the axis `type` is *log*, then you must take the log of your starting tick
            /// (e.g. to set the starting tick to 100, set the `tick0` to 2) except when `dtick`=*L<f>* (see
            /// `dtick` for more info). If the axis `type` is *date*, it should be a date string, like date
            /// data. If the axis `type` is *category*, it should be a number, using the scale where each
            /// category is assigned a serial number from zero in the order it appears.
            public var tick0: Anything? = nil
        
            /// Sets the step in-between ticks on this axis.
            /// 
            /// Use with `tick0`. Must be a positive number, or special strings available to *log* and *date*
            /// axes. If the axis `type` is *log*, then ticks are set every 10^(n*dtick) where n is the tick
            /// number. For example, to set a tick mark at 1, 10, 100, 1000, ... set dtick to 1. To set tick
            /// marks at 1, 100, 10000, ... set dtick to 2. To set tick marks at 1, 5, 25, 125, 625, 3125, ...
            /// set dtick to log_10(5), or 0.69897000433. *log* has several special values; *L<f>*, where `f` is
            /// a positive number, gives ticks linearly spaced in value (but not position). For example `tick0`
            /// = 0.1, `dtick` = *L0.5* will put ticks at 0.1, 0.6, 1.1, 1.6 etc. To show powers of 10 plus
            /// small digits between, use *D1* (all digits) or *D2* (only 2 and 5). `tick0` is ignored for *D1*
            /// and *D2*. If the axis `type` is *date*, then you must convert the time to milliseconds. For
            /// example, to set the interval between ticks to one day, set `dtick` to 86400000.0. *date* also
            /// has special values *M<n>* gives ticks spaced by a number of months. `n` must be a positive
            /// integer. To set ticks on the 15th of every third month, set `tick0` to *2000-01-15* and `dtick`
            /// to *M3*. To set ticks every 4 years, set `dtick` to *M48*
            public var dTick: Anything? = nil
        
            /// Sets the values at which ticks on this axis appear.
            /// 
            /// Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
            public var tickValues: [Double]? = nil
        
            /// Sets the text displayed at the ticks position via `tickvals`.
            /// 
            /// Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
            public var tickText: [Double]? = nil
        
            /// Determines whether ticks are drawn or not.
            /// 
            /// If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside
            /// (inside) the axis lines.
            public var ticks: Shared.Ticks? = nil
        
            /// Sets the tick length (in px).
            public var tickLength: Double? = nil
        
            /// Sets the tick width (in px).
            public var tickWidth: Double? = nil
        
            /// Sets the tick color.
            public var tickColor: Color? = nil
        
            /// Determines whether or not the tick labels are drawn.
            public var showTickLabels: Bool? = nil
        
            /// Sets the color bar's tick label font
            public var tickFont: Shared.Font? = nil
        
            /// Sets the angle of the tick labels with respect to the horizontal.
            /// 
            /// For example, a `tickangle` of -90 draws the tick labels vertically.
            public var tickAngle: Angle? = nil
        
            /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to
            /// those in Python.
            /// 
            /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
            /// And for dates see:
            /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
            /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
            /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            public var tickFormat: String? = nil
        
            public var tickFormatStops: [Shared.TickFormatStop]? = nil
        
            /// Sets a tick label prefix.
            public var tickPrefix: String? = nil
        
            /// If *all*, all tick labels are displayed with a prefix.
            /// 
            /// If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is
            /// displayed with a suffix. If *none*, tick prefixes are hidden.
            public var showTickPrefix: Shared.ShowTickPrefix? = nil
        
            /// Sets a tick label suffix.
            public var tickSuffix: String? = nil
        
            /// Same as `showtickprefix` but for tick suffixes.
            public var showTickSuffix: Shared.ShowTickSuffix? = nil
        
            /// If "true", even 4-digit integers are separated
            public var separateThousands: Bool? = nil
        
            /// Determines a formatting rule for the tick exponents.
            /// 
            /// For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*,
            /// 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
            public var exponentFormat: Shared.ExponentFormat? = nil
        
            /// If *all*, all exponents are shown besides their significands.
            /// 
            /// If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the
            /// last tick is shown. If *none*, no exponents appear.
            public var showExponent: Shared.ShowExponent? = nil
        
            /// Decoding and encoding keys compatible with Plotly schema.
            enum CodingKeys: String, CodingKey {
                case range
                case visible
                case tickMode = "tickmode"
                case numTicks = "nticks"
                case tick0
                case dTick = "dtick"
                case tickValues = "tickvals"
                case tickText = "ticktext"
                case ticks
                case tickLength = "ticklen"
                case tickWidth = "tickwidth"
                case tickColor = "tickcolor"
                case showTickLabels = "showticklabels"
                case tickFont = "tickfont"
                case tickAngle = "tickangle"
                case tickFormat = "tickformat"
                case tickFormatStops = "tickformatstops"
                case tickPrefix = "tickprefix"
                case showTickPrefix = "showtickprefix"
                case tickSuffix = "ticksuffix"
                case showTickSuffix = "showticksuffix"
                case separateThousands = "separatethousands"
                case exponentFormat = "exponentformat"
                case showExponent = "showexponent"
            }
            
            /// Creates `Axis` object with specified properties.
            /// 
            /// - Parameters:
            ///   - range: Sets the range of this axis.
            ///   - visible: A single toggle to hide the axis while preserving interaction like dragging.
            ///   - tickMode: Sets the tick mode for this axis.
            ///   - numTicks: Specifies the maximum number of ticks for the particular axis.
            ///   - tick0: Sets the placement of the first tick on this axis.
            ///   - dTick: Sets the step in-between ticks on this axis.
            ///   - tickValues: Sets the values at which ticks on this axis appear.
            ///   - tickText: Sets the text displayed at the ticks position via `tickvals`.
            ///   - ticks: Determines whether ticks are drawn or not.
            ///   - tickLength: Sets the tick length (in px).
            ///   - tickWidth: Sets the tick width (in px).
            ///   - tickColor: Sets the tick color.
            ///   - showTickLabels: Determines whether or not the tick labels are drawn.
            ///   - tickFont: Sets the color bar's tick label font
            ///   - tickAngle: Sets the angle of the tick labels with respect to the horizontal.
            ///   - tickFormat: Sets the tick label formatting rule using d3 formatting mini-languages which are
            ///   very similar to those in Python.
            ///   - tickFormatStops:
            ///   - tickPrefix: Sets a tick label prefix.
            ///   - showTickPrefix: If *all*, all tick labels are displayed with a prefix.
            ///   - tickSuffix: Sets a tick label suffix.
            ///   - showTickSuffix: Same as `showtickprefix` but for tick suffixes.
            ///   - separateThousands: If "true", even 4-digit integers are separated
            ///   - exponentFormat: Determines a formatting rule for the tick exponents.
            ///   - showExponent: If *all*, all exponents are shown besides their significands.
            public init(range: InfoArray? = nil, visible: Bool? = nil, tickMode: Shared.TickMode? = nil,
                    numTicks: Int? = nil, tick0: Anything? = nil, dTick: Anything? = nil, tickValues: [Double]? =
                    nil, tickText: [Double]? = nil, ticks: Shared.Ticks? = nil, tickLength: Double? = nil,
                    tickWidth: Double? = nil, tickColor: Color? = nil, showTickLabels: Bool? = nil, tickFont:
                    Shared.Font? = nil, tickAngle: Angle? = nil, tickFormat: String? = nil, tickFormatStops:
                    [Shared.TickFormatStop]? = nil, tickPrefix: String? = nil, showTickPrefix:
                    Shared.ShowTickPrefix? = nil, tickSuffix: String? = nil, showTickSuffix: Shared.ShowTickSuffix?
                    = nil, separateThousands: Bool? = nil, exponentFormat: Shared.ExponentFormat? = nil,
                    showExponent: Shared.ShowExponent? = nil) {
                self.range = range
                self.visible = visible
                self.tickMode = tickMode
                self.numTicks = numTicks
                self.tick0 = tick0
                self.dTick = dTick
                self.tickValues = tickValues
                self.tickText = tickText
                self.ticks = ticks
                self.tickLength = tickLength
                self.tickWidth = tickWidth
                self.tickColor = tickColor
                self.showTickLabels = showTickLabels
                self.tickFont = tickFont
                self.tickAngle = tickAngle
                self.tickFormat = tickFormat
                self.tickFormatStops = tickFormatStops
                self.tickPrefix = tickPrefix
                self.showTickPrefix = showTickPrefix
                self.tickSuffix = tickSuffix
                self.showTickSuffix = showTickSuffix
                self.separateThousands = separateThousands
                self.exponentFormat = exponentFormat
                self.showExponent = showExponent
            }
            
        }
        public var axis: Axis? = nil
    
        public struct Step: Encodable {
            /// Sets the background color of the arc.
            public var color: Color? = nil
        
            public var line: Shared.Line? = nil
        
            /// Sets the thickness of the bar as a fraction of the total thickness of the gauge.
            public var thickness: Double? = nil
        
            /// Sets the range of this axis.
            public var range: InfoArray? = nil
        
            /// When used in a template, named items are created in the output figure in addition to any items
            /// the figure already has in this array.
            /// 
            /// You can modify these items in the output figure by making your own item with `templateitemname`
            /// matching this `name` alongside your modifications (including `visible: false` or `enabled:
            /// false` to hide it). Has no effect outside of a template.
            public var name: String? = nil
        
            /// Used to refer to a named item in this array in the template.
            /// 
            /// Named items from the template will be created even without a matching item in the input figure,
            /// but you can modify one by making an item with `templateitemname` matching its `name`, alongside
            /// your modifications (including `visible: false` or `enabled: false` to hide it). If there is no
            /// template or no matching item, this item will be hidden unless you explicitly show it with
            /// `visible: true`.
            public var templateItemName: String? = nil
        
            /// Decoding and encoding keys compatible with Plotly schema.
            enum CodingKeys: String, CodingKey {
                case color
                case line
                case thickness
                case range
                case name
                case templateItemName = "templateitemname"
            }
            
            /// Creates `Step` object with specified properties.
            /// 
            /// - Parameters:
            ///   - color: Sets the background color of the arc.
            ///   - line:
            ///   - thickness: Sets the thickness of the bar as a fraction of the total thickness of the gauge.
            ///   - range: Sets the range of this axis.
            ///   - name: When used in a template, named items are created in the output figure in addition to any
            ///   items the figure already has in this array.
            ///   - templateItemName: Used to refer to a named item in this array in the template.
            public init(color: Color? = nil, line: Shared.Line? = nil, thickness: Double? = nil, range:
                    InfoArray? = nil, name: String? = nil, templateItemName: String? = nil) {
                self.color = color
                self.line = line
                self.thickness = thickness
                self.range = range
                self.name = name
                self.templateItemName = templateItemName
            }
            
        }
        public var steps: [Step]? = nil
    
        public struct Threshold: Encodable {
            public var line: Shared.Line? = nil
        
            /// Sets the thickness of the threshold line as a fraction of the thickness of the gauge.
            public var thickness: Double? = nil
        
            /// Sets a treshold value drawn as a line.
            public var value: Double? = nil
        
            /// Creates `Threshold` object with specified properties.
            /// 
            /// - Parameters:
            ///   - line:
            ///   - thickness: Sets the thickness of the threshold line as a fraction of the thickness of the
            ///   gauge.
            ///   - value: Sets a treshold value drawn as a line.
            public init(line: Shared.Line? = nil, thickness: Double? = nil, value: Double? = nil) {
                self.line = line
                self.thickness = thickness
                self.value = value
            }
            
        }
        public var threshold: Threshold? = nil
    
        /// Decoding and encoding keys compatible with Plotly schema.
        enum CodingKeys: String, CodingKey {
            case shape
            case bar
            case backgroundColor = "bgcolor"
            case borderColor = "bordercolor"
            case borderWidth = "borderwidth"
            case axis
            case steps
            case threshold
        }
        
        /// Creates `Gauge` object with specified properties.
        /// 
        /// - Parameters:
        ///   - shape: Set the shape of the gauge
        ///   - bar: Set the appearance of the gauge's value
        ///   - backgroundColor: Sets the gauge background color.
        ///   - borderColor: Sets the color of the border enclosing the gauge.
        ///   - borderWidth: Sets the width (in px) of the border enclosing the gauge.
        ///   - axis:
        ///   - steps:
        ///   - threshold:
        public init(shape: Shape? = nil, bar: Bar? = nil, backgroundColor: Color? = nil, borderColor:
                Color? = nil, borderWidth: Double? = nil, axis: Axis? = nil, steps: [Step]? = nil, threshold:
                Threshold? = nil) {
            self.shape = shape
            self.bar = bar
            self.backgroundColor = backgroundColor
            self.borderColor = borderColor
            self.borderWidth = borderWidth
            self.axis = axis
            self.steps = steps
            self.threshold = threshold
        }
        
    }
    /// The gauge of the Indicator plot.
    public var gauge: Gauge? = nil

    /// Decoding and encoding keys compatible with Plotly schema.
    enum CodingKeys: String, CodingKey {
        case type
        case visible
        case name
        case uid
        case ids
        case customData = "customdata"
        case meta
        case stream
        case transforms
        case uiRevision = "uirevision"
        case mode
        case value
        case align
        case domain
        case title
        case number
        case delta
        case gauge
    }
    
    /// Creates `Indicator` object from the most frequently used properties.
    /// 
    /// - Parameters:
    ///   - name: Sets the trace name.
    ///   - mode: Determines how the value is displayed on the graph.
    public init(name: String? = nil, mode: Mode? = nil) {
        self.name = name
        self.mode = mode
    }
    
    /// Creates `Indicator` object with specified properties.
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
    ///   - stream:
    ///   - transforms:
    ///   - uiRevision: Controls persistence of some user-driven changes to the trace: `constraintrange`
    ///   in `parcoords` traces, as well as some `editable: true` modifications such as `name` and
    ///   `colorbar.title`.
    ///   - mode: Determines how the value is displayed on the graph.
    ///   - value: Sets the number to be displayed.
    ///   - align: Sets the horizontal alignment of the `text` within the box.
    ///   - domain:
    ///   - title:
    ///   - number:
    ///   - delta:
    ///   - gauge: The gauge of the Indicator plot.
    public init(visible: Shared.Visible? = nil, name: String? = nil, uid: String? = nil, ids:
            [String]? = nil, customData: [String]? = nil, meta: Data<Anything>? = nil, stream:
            Shared.Stream? = nil, transforms: [Shared.Transform]? = nil, uiRevision: Anything? = nil, mode:
            Mode? = nil, value: Double? = nil, align: Shared.HorizontalAlign? = nil, domain: Shared.Domain?
            = nil, title: Title? = nil, number: Number? = nil, delta: Delta? = nil, gauge: Gauge? = nil) {
        self.visible = visible
        self.name = name
        self.uid = uid
        self.ids = ids
        self.customData = customData
        self.meta = meta
        self.stream = stream
        self.transforms = transforms
        self.uiRevision = uiRevision
        self.mode = mode
        self.value = value
        self.align = align
        self.domain = domain
        self.title = title
        self.number = number
        self.delta = delta
        self.gauge = gauge
    }
    
}