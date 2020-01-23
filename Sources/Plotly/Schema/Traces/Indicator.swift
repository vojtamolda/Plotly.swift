/// An indicator is used to visualize a single `value` along with some contextual information such as `steps` or a `threshold`, using a combination of three visual elements: a number, a delta, and/or a gauge. 
///
/// Deltas are taken with respect to a `reference`. Gauges can be either angular or bullet (aka
/// linear) gauges.
public struct Indicator: Trace {
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#type) |
    /// [Python](https://plot.ly/python/reference/#type) |
    /// [R](https://plot.ly/r/reference/#type)
    public let type: String = "indicator"

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#animatable) |
    /// [Python](https://plot.ly/python/reference/#animatable) |
    /// [R](https://plot.ly/r/reference/#animatable)
    public let animatable: Bool = true

    /// Determines whether or not this trace is visible. 
    ///
    /// If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the
    /// legend itself is visible).
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#indicator-visible) |
    /// [Python](https://plot.ly/python/reference/#indicator-visible) |
    /// [R](https://plot.ly/r/reference/#indicator-visible)
    public var visible: Shared.Visible?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#indicator-name) |
    /// [Python](https://plot.ly/python/reference/#indicator-name) |
    /// [R](https://plot.ly/r/reference/#indicator-name)
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#indicator-uid) |
    /// [Python](https://plot.ly/python/reference/#indicator-uid) |
    /// [R](https://plot.ly/r/reference/#indicator-uid)
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#indicator-ids) |
    /// [Python](https://plot.ly/python/reference/#indicator-ids) |
    /// [R](https://plot.ly/r/reference/#indicator-ids)
    public var ids: [Double]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#indicator-customdata) |
    /// [Python](https://plot.ly/python/reference/#indicator-customdata) |
    /// [R](https://plot.ly/r/reference/#indicator-customdata)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#indicator-meta) |
    /// [Python](https://plot.ly/python/reference/#indicator-meta) |
    /// [R](https://plot.ly/r/reference/#indicator-meta)
    public var meta: ArrayOrAnything?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#indicator-stream) |
    /// [Python](https://plot.ly/python/reference/#indicator-stream) |
    /// [R](https://plot.ly/r/reference/#indicator-stream)
    public var stream: Shared.Stream?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#indicator-transforms) |
    /// [Python](https://plot.ly/python/reference/#indicator-transforms) |
    /// [R](https://plot.ly/r/reference/#indicator-transforms)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#indicator-uirevision) |
    /// [Python](https://plot.ly/python/reference/#indicator-uirevision) |
    /// [R](https://plot.ly/r/reference/#indicator-uirevision)
    public var uiRevision: Anything?

    /// Determines how the value is displayed on the graph. 
    ///
    /// `number` displays the value numerically in text. `delta` displays the difference to a reference
    /// value in text. Finally, `gauge` displays the value graphically on an axis.
    ///
    /// # Used By
    /// `Indicator.mode` |
    public struct Mode: OptionSet, Encodable {
        public let rawValue: Int
    
        public static var number: Mode { Mode(rawValue: 1 << 0) }
        public static var delta: Mode { Mode(rawValue: 1 << 1) }
        public static var gauge: Mode { Mode(rawValue: 1 << 2) }
    
        public init(rawValue: Int) { self.rawValue = rawValue }
    
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#indicator-mode) |
    /// [Python](https://plot.ly/python/reference/#indicator-mode) |
    /// [R](https://plot.ly/r/reference/#indicator-mode)
    public var mode: Mode?

    /// Sets the number to be displayed.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#indicator-value) |
    /// [Python](https://plot.ly/python/reference/#indicator-value) |
    /// [R](https://plot.ly/r/reference/#indicator-value)
    public var value: Double?

    /// Sets the horizontal alignment of the `text` within the box. 
    ///
    /// Note that this attribute has no effect if an angular gauge is displayed: in this case, it is
    /// always centered
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#indicator-align) |
    /// [Python](https://plot.ly/python/reference/#indicator-align) |
    /// [R](https://plot.ly/r/reference/#indicator-align)
    public var align: Shared.HorizontalAlign?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#indicator-domain) |
    /// [Python](https://plot.ly/python/reference/#indicator-domain) |
    /// [R](https://plot.ly/r/reference/#indicator-domain)
    public var domain: Shared.Domain?

    /// # Used By
    /// `Indicator.title` |
    public struct Title: Encodable {
        /// Sets the title of this indicator.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#indicator-title-text) |
        /// [Python](https://plot.ly/python/reference/#indicator-title-text) |
        /// [R](https://plot.ly/r/reference/#indicator-title-text)
        public var text: String?
    
        /// Sets the horizontal alignment of the title. 
        ///
        /// It defaults to `center` except for bullet charts for which it defaults to right.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#indicator-title-align) |
        /// [Python](https://plot.ly/python/reference/#indicator-title-align) |
        /// [R](https://plot.ly/r/reference/#indicator-title-align)
        public var align: Shared.HorizontalAlign?
    
        /// Set the font used to display the title
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#indicator-title-font) |
        /// [Python](https://plot.ly/python/reference/#indicator-title-font) |
        /// [R](https://plot.ly/r/reference/#indicator-title-font)
        public var font: Shared.Font?
    
        public init(text: String? = nil, align: Shared.HorizontalAlign? = nil, font: Shared.Font? = nil) {
            self.text = text
            self.align = align
            self.font = font
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#indicator-title) |
    /// [Python](https://plot.ly/python/reference/#indicator-title) |
    /// [R](https://plot.ly/r/reference/#indicator-title)
    public var title: Title?

    /// # Used By
    /// `Indicator.number` |
    public struct Number: Encodable {
        /// Sets the value formatting rule using d3 formatting mini-language which is similar to those of Python. 
        ///
        /// See https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#indicator-number-valueformat) |
        /// [Python](https://plot.ly/python/reference/#indicator-number-valueformat) |
        /// [R](https://plot.ly/r/reference/#indicator-number-valueformat)
        public var valueFormat: String?
    
        /// Set the font used to display main number
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#indicator-number-font) |
        /// [Python](https://plot.ly/python/reference/#indicator-number-font) |
        /// [R](https://plot.ly/r/reference/#indicator-number-font)
        public var font: Shared.Font?
    
        /// Sets a prefix appearing before the number.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#indicator-number-prefix) |
        /// [Python](https://plot.ly/python/reference/#indicator-number-prefix) |
        /// [R](https://plot.ly/r/reference/#indicator-number-prefix)
        public var prefix: String?
    
        /// Sets a suffix appearing next to the number.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#indicator-number-suffix) |
        /// [Python](https://plot.ly/python/reference/#indicator-number-suffix) |
        /// [R](https://plot.ly/r/reference/#indicator-number-suffix)
        public var suffix: String?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case valueFormat = "valueformat"
            case font
            case prefix
            case suffix
        }
        
        public init(valueFormat: String? = nil, font: Shared.Font? = nil, prefix: String? = nil, suffix: String? = nil) {
            self.valueFormat = valueFormat
            self.font = font
            self.prefix = prefix
            self.suffix = suffix
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#indicator-number) |
    /// [Python](https://plot.ly/python/reference/#indicator-number) |
    /// [R](https://plot.ly/r/reference/#indicator-number)
    public var number: Number?

    /// # Used By
    /// `Indicator.delta` |
    public struct Delta: Encodable {
        /// Sets the reference value to compute the delta. 
        ///
        /// By default, it is set to the current value.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#indicator-delta-reference) |
        /// [Python](https://plot.ly/python/reference/#indicator-delta-reference) |
        /// [R](https://plot.ly/r/reference/#indicator-delta-reference)
        public var reference: Double?
    
        /// Sets the position of delta with respect to the number.
        ///
        /// # Used By
        /// `Indicator.Delta.position` |
        public enum Position: String, Encodable {
            case top
            case bottom
            case left
            case right
        }
        /// Sets the position of delta with respect to the number.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#indicator-delta-position) |
        /// [Python](https://plot.ly/python/reference/#indicator-delta-position) |
        /// [R](https://plot.ly/r/reference/#indicator-delta-position)
        public var position: Position?
    
        /// Show relative change
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#indicator-delta-relative) |
        /// [Python](https://plot.ly/python/reference/#indicator-delta-relative) |
        /// [R](https://plot.ly/r/reference/#indicator-delta-relative)
        public var relative: Bool?
    
        /// Sets the value formatting rule using d3 formatting mini-language which is similar to those of Python. 
        ///
        /// See https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#indicator-delta-valueformat) |
        /// [Python](https://plot.ly/python/reference/#indicator-delta-valueformat) |
        /// [R](https://plot.ly/r/reference/#indicator-delta-valueformat)
        public var valueFormat: String?
    
        /// # Used By
        /// `Indicator.Delta.increasing` |
        public struct Increasing: Encodable {
            /// Sets the symbol to display for increasing value
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#indicator-delta-increasing-symbol) |
            /// [Python](https://plot.ly/python/reference/#indicator-delta-increasing-symbol) |
            /// [R](https://plot.ly/r/reference/#indicator-delta-increasing-symbol)
            public var symbol: String?
        
            /// Sets the color for increasing value.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#indicator-delta-increasing-color) |
            /// [Python](https://plot.ly/python/reference/#indicator-delta-increasing-color) |
            /// [R](https://plot.ly/r/reference/#indicator-delta-increasing-color)
            public var color: Color?
        
            public init(symbol: String? = nil, color: Color? = nil) {
                self.symbol = symbol
                self.color = color
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#indicator-delta-increasing) |
        /// [Python](https://plot.ly/python/reference/#indicator-delta-increasing) |
        /// [R](https://plot.ly/r/reference/#indicator-delta-increasing)
        public var increasing: Increasing?
    
        /// # Used By
        /// `Indicator.Delta.decreasing` |
        public struct Decreasing: Encodable {
            /// Sets the symbol to display for increasing value
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#indicator-delta-decreasing-symbol) |
            /// [Python](https://plot.ly/python/reference/#indicator-delta-decreasing-symbol) |
            /// [R](https://plot.ly/r/reference/#indicator-delta-decreasing-symbol)
            public var symbol: String?
        
            /// Sets the color for increasing value.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#indicator-delta-decreasing-color) |
            /// [Python](https://plot.ly/python/reference/#indicator-delta-decreasing-color) |
            /// [R](https://plot.ly/r/reference/#indicator-delta-decreasing-color)
            public var color: Color?
        
            public init(symbol: String? = nil, color: Color? = nil) {
                self.symbol = symbol
                self.color = color
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#indicator-delta-decreasing) |
        /// [Python](https://plot.ly/python/reference/#indicator-delta-decreasing) |
        /// [R](https://plot.ly/r/reference/#indicator-delta-decreasing)
        public var decreasing: Decreasing?
    
        /// Set the font used to display the delta
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#indicator-delta-font) |
        /// [Python](https://plot.ly/python/reference/#indicator-delta-font) |
        /// [R](https://plot.ly/r/reference/#indicator-delta-font)
        public var font: Shared.Font?
    
        /// Plotly compatible property encoding
        enum CodingKeys: String, CodingKey {
            case reference
            case position
            case relative
            case valueFormat = "valueformat"
            case increasing
            case decreasing
            case font
        }
        
        public init(reference: Double? = nil, position: Position? = nil, relative: Bool? = nil, valueFormat: String? = nil, increasing: Increasing? = nil, decreasing: Decreasing? = nil, font: Shared.Font? = nil) {
            self.reference = reference
            self.position = position
            self.relative = relative
            self.valueFormat = valueFormat
            self.increasing = increasing
            self.decreasing = decreasing
            self.font = font
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#indicator-delta) |
    /// [Python](https://plot.ly/python/reference/#indicator-delta) |
    /// [R](https://plot.ly/r/reference/#indicator-delta)
    public var delta: Delta?

    /// The gauge of the Indicator plot.
    ///
    /// # Used By
    /// `Indicator.gauge` |
    public struct Gauge: Encodable {
        /// Set the shape of the gauge
        ///
        /// # Used By
        /// `Indicator.Gauge.shape` |
        public enum Shape: String, Encodable {
            case angular
            case bullet
        }
        /// Set the shape of the gauge
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#indicator-gauge-shape) |
        /// [Python](https://plot.ly/python/reference/#indicator-gauge-shape) |
        /// [R](https://plot.ly/r/reference/#indicator-gauge-shape)
        public var shape: Shape?
    
        /// Set the appearance of the gauge's value
        ///
        /// # Used By
        /// `Indicator.Gauge.bar` |
        public struct Bar: Encodable {
            /// Sets the background color of the arc.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#indicator-gauge-bar-color) |
            /// [Python](https://plot.ly/python/reference/#indicator-gauge-bar-color) |
            /// [R](https://plot.ly/r/reference/#indicator-gauge-bar-color)
            public var color: Color?
        
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#indicator-gauge-bar-line) |
            /// [Python](https://plot.ly/python/reference/#indicator-gauge-bar-line) |
            /// [R](https://plot.ly/r/reference/#indicator-gauge-bar-line)
            public var line: Shared.Line?
        
            /// Sets the thickness of the bar as a fraction of the total thickness of the gauge.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#indicator-gauge-bar-thickness) |
            /// [Python](https://plot.ly/python/reference/#indicator-gauge-bar-thickness) |
            /// [R](https://plot.ly/r/reference/#indicator-gauge-bar-thickness)
            public var thickness: Double?
        
            public init(color: Color? = nil, line: Shared.Line? = nil, thickness: Double? = nil) {
                self.color = color
                self.line = line
                self.thickness = thickness
            }
        }
        /// Set the appearance of the gauge's value
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#indicator-gauge-bar) |
        /// [Python](https://plot.ly/python/reference/#indicator-gauge-bar) |
        /// [R](https://plot.ly/r/reference/#indicator-gauge-bar)
        public var bar: Bar?
    
        /// Sets the gauge background color.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#indicator-gauge-bgcolor) |
        /// [Python](https://plot.ly/python/reference/#indicator-gauge-bgcolor) |
        /// [R](https://plot.ly/r/reference/#indicator-gauge-bgcolor)
        public var backgroundColor: Color?
    
        /// Sets the color of the border enclosing the gauge.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#indicator-gauge-bordercolor) |
        /// [Python](https://plot.ly/python/reference/#indicator-gauge-bordercolor) |
        /// [R](https://plot.ly/r/reference/#indicator-gauge-bordercolor)
        public var borderColor: Color?
    
        /// Sets the width (in px) of the border enclosing the gauge.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#indicator-gauge-borderwidth) |
        /// [Python](https://plot.ly/python/reference/#indicator-gauge-borderwidth) |
        /// [R](https://plot.ly/r/reference/#indicator-gauge-borderwidth)
        public var borderWidth: Double?
    
        /// # Used By
        /// `Indicator.Gauge.axis` |
        public struct Axis: Encodable {
            /// Sets the range of this axis.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#indicator-gauge-axis-range) |
            /// [Python](https://plot.ly/python/reference/#indicator-gauge-axis-range) |
            /// [R](https://plot.ly/r/reference/#indicator-gauge-axis-range)
            public var range: InfoArray?
        
            /// A single toggle to hide the axis while preserving interaction like dragging. 
            ///
            /// Default is true when a cheater plot is present on the axis, otherwise false
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#indicator-gauge-axis-visible) |
            /// [Python](https://plot.ly/python/reference/#indicator-gauge-axis-visible) |
            /// [R](https://plot.ly/r/reference/#indicator-gauge-axis-visible)
            public var visible: Bool?
        
            /// Sets the tick mode for this axis. 
            ///
            /// If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is
            /// determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value
            /// if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via
            /// `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is
            /// provided).
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#indicator-gauge-axis-tickmode) |
            /// [Python](https://plot.ly/python/reference/#indicator-gauge-axis-tickmode) |
            /// [R](https://plot.ly/r/reference/#indicator-gauge-axis-tickmode)
            public var tickMode: Shared.TickMode?
        
            /// Specifies the maximum number of ticks for the particular axis. 
            ///
            /// The actual number of ticks will be chosen automatically to be less than or equal to `nticks`.
            /// Has an effect only if `tickmode` is set to *auto*.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#indicator-gauge-axis-nticks) |
            /// [Python](https://plot.ly/python/reference/#indicator-gauge-axis-nticks) |
            /// [R](https://plot.ly/r/reference/#indicator-gauge-axis-nticks)
            public var numTicks: Int?
        
            /// Sets the placement of the first tick on this axis. 
            ///
            /// Use with `dtick`. If the axis `type` is *log*, then you must take the log of your starting tick
            /// (e.g. to set the starting tick to 100, set the `tick0` to 2) except when `dtick`=*L<f>* (see
            /// `dtick` for more info). If the axis `type` is *date*, it should be a date string, like date
            /// data. If the axis `type` is *category*, it should be a number, using the scale where each
            /// category is assigned a serial number from zero in the order it appears.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#indicator-gauge-axis-tick0) |
            /// [Python](https://plot.ly/python/reference/#indicator-gauge-axis-tick0) |
            /// [R](https://plot.ly/r/reference/#indicator-gauge-axis-tick0)
            public var tick0: Anything?
        
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
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#indicator-gauge-axis-dtick) |
            /// [Python](https://plot.ly/python/reference/#indicator-gauge-axis-dtick) |
            /// [R](https://plot.ly/r/reference/#indicator-gauge-axis-dtick)
            public var dTick: Anything?
        
            /// Sets the values at which ticks on this axis appear. 
            ///
            /// Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#indicator-gauge-axis-tickvals) |
            /// [Python](https://plot.ly/python/reference/#indicator-gauge-axis-tickvals) |
            /// [R](https://plot.ly/r/reference/#indicator-gauge-axis-tickvals)
            public var tickValues: [Double]?
        
            /// Sets the text displayed at the ticks position via `tickvals`. 
            ///
            /// Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#indicator-gauge-axis-ticktext) |
            /// [Python](https://plot.ly/python/reference/#indicator-gauge-axis-ticktext) |
            /// [R](https://plot.ly/r/reference/#indicator-gauge-axis-ticktext)
            public var tickText: [Double]?
        
            /// Determines whether ticks are drawn or not. 
            ///
            /// If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside
            /// (inside) the axis lines.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#indicator-gauge-axis-ticks) |
            /// [Python](https://plot.ly/python/reference/#indicator-gauge-axis-ticks) |
            /// [R](https://plot.ly/r/reference/#indicator-gauge-axis-ticks)
            public var ticks: Shared.Ticks?
        
            /// Sets the tick length (in px).
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#indicator-gauge-axis-ticklen) |
            /// [Python](https://plot.ly/python/reference/#indicator-gauge-axis-ticklen) |
            /// [R](https://plot.ly/r/reference/#indicator-gauge-axis-ticklen)
            public var tickLength: Double?
        
            /// Sets the tick width (in px).
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#indicator-gauge-axis-tickwidth) |
            /// [Python](https://plot.ly/python/reference/#indicator-gauge-axis-tickwidth) |
            /// [R](https://plot.ly/r/reference/#indicator-gauge-axis-tickwidth)
            public var tickWidth: Double?
        
            /// Sets the tick color.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#indicator-gauge-axis-tickcolor) |
            /// [Python](https://plot.ly/python/reference/#indicator-gauge-axis-tickcolor) |
            /// [R](https://plot.ly/r/reference/#indicator-gauge-axis-tickcolor)
            public var tickColor: Color?
        
            /// Determines whether or not the tick labels are drawn.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#indicator-gauge-axis-showticklabels) |
            /// [Python](https://plot.ly/python/reference/#indicator-gauge-axis-showticklabels) |
            /// [R](https://plot.ly/r/reference/#indicator-gauge-axis-showticklabels)
            public var showTickLabels: Bool?
        
            /// Sets the color bar's tick label font
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#indicator-gauge-axis-tickfont) |
            /// [Python](https://plot.ly/python/reference/#indicator-gauge-axis-tickfont) |
            /// [R](https://plot.ly/r/reference/#indicator-gauge-axis-tickfont)
            public var tickFont: Shared.Font?
        
            /// Sets the angle of the tick labels with respect to the horizontal. 
            ///
            /// For example, a `tickangle` of -90 draws the tick labels vertically.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#indicator-gauge-axis-tickangle) |
            /// [Python](https://plot.ly/python/reference/#indicator-gauge-axis-tickangle) |
            /// [R](https://plot.ly/r/reference/#indicator-gauge-axis-tickangle)
            public var tickAngle: Angle?
        
            /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to those in Python. 
            ///
            /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
            /// And for dates see:
            /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
            /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
            /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#indicator-gauge-axis-tickformat) |
            /// [Python](https://plot.ly/python/reference/#indicator-gauge-axis-tickformat) |
            /// [R](https://plot.ly/r/reference/#indicator-gauge-axis-tickformat)
            public var tickFormat: String?
        
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#indicator-gauge-axis-tickformatstops) |
            /// [Python](https://plot.ly/python/reference/#indicator-gauge-axis-tickformatstops) |
            /// [R](https://plot.ly/r/reference/#indicator-gauge-axis-tickformatstops)
            public var tickFormatStops: [Shared.TickFormatStop]?
        
            /// Sets a tick label prefix.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#indicator-gauge-axis-tickprefix) |
            /// [Python](https://plot.ly/python/reference/#indicator-gauge-axis-tickprefix) |
            /// [R](https://plot.ly/r/reference/#indicator-gauge-axis-tickprefix)
            public var tickPrefix: String?
        
            /// If *all*, all tick labels are displayed with a prefix. 
            ///
            /// If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is
            /// displayed with a suffix. If *none*, tick prefixes are hidden.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#indicator-gauge-axis-showtickprefix) |
            /// [Python](https://plot.ly/python/reference/#indicator-gauge-axis-showtickprefix) |
            /// [R](https://plot.ly/r/reference/#indicator-gauge-axis-showtickprefix)
            public var showTickPrefix: Shared.ShowTickPrefix?
        
            /// Sets a tick label suffix.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#indicator-gauge-axis-ticksuffix) |
            /// [Python](https://plot.ly/python/reference/#indicator-gauge-axis-ticksuffix) |
            /// [R](https://plot.ly/r/reference/#indicator-gauge-axis-ticksuffix)
            public var tickSuffix: String?
        
            /// Same as `showtickprefix` but for tick suffixes.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#indicator-gauge-axis-showticksuffix) |
            /// [Python](https://plot.ly/python/reference/#indicator-gauge-axis-showticksuffix) |
            /// [R](https://plot.ly/r/reference/#indicator-gauge-axis-showticksuffix)
            public var showTickSuffix: Shared.ShowTickSuffix?
        
            /// If "true", even 4-digit integers are separated
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#indicator-gauge-axis-separatethousands) |
            /// [Python](https://plot.ly/python/reference/#indicator-gauge-axis-separatethousands) |
            /// [R](https://plot.ly/r/reference/#indicator-gauge-axis-separatethousands)
            public var separatethousands: Bool?
        
            /// Determines a formatting rule for the tick exponents. 
            ///
            /// For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*,
            /// 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#indicator-gauge-axis-exponentformat) |
            /// [Python](https://plot.ly/python/reference/#indicator-gauge-axis-exponentformat) |
            /// [R](https://plot.ly/r/reference/#indicator-gauge-axis-exponentformat)
            public var exponentFormat: Shared.ExponentFormat?
        
            /// If *all*, all exponents are shown besides their significands. 
            ///
            /// If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the
            /// last tick is shown. If *none*, no exponents appear.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#indicator-gauge-axis-showexponent) |
            /// [Python](https://plot.ly/python/reference/#indicator-gauge-axis-showexponent) |
            /// [R](https://plot.ly/r/reference/#indicator-gauge-axis-showexponent)
            public var showExponent: Shared.ShowExponent?
        
            /// Plotly compatible property encoding
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
                case separatethousands
                case exponentFormat = "exponentformat"
                case showExponent = "showexponent"
            }
            
            public init(range: InfoArray? = nil, visible: Bool? = nil, tickMode: Shared.TickMode? = nil, numTicks: Int? = nil, tick0: Anything? = nil, dTick: Anything? = nil, tickValues: [Double]? = nil, tickText: [Double]? = nil, ticks: Shared.Ticks? = nil, tickLength: Double? = nil, tickWidth: Double? = nil, tickColor: Color? = nil, showTickLabels: Bool? = nil, tickFont: Shared.Font? = nil, tickAngle: Angle? = nil, tickFormat: String? = nil, tickFormatStops: [Shared.TickFormatStop]? = nil, tickPrefix: String? = nil, showTickPrefix: Shared.ShowTickPrefix? = nil, tickSuffix: String? = nil, showTickSuffix: Shared.ShowTickSuffix? = nil, separatethousands: Bool? = nil, exponentFormat: Shared.ExponentFormat? = nil, showExponent: Shared.ShowExponent? = nil) {
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
                self.separatethousands = separatethousands
                self.exponentFormat = exponentFormat
                self.showExponent = showExponent
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#indicator-gauge-axis) |
        /// [Python](https://plot.ly/python/reference/#indicator-gauge-axis) |
        /// [R](https://plot.ly/r/reference/#indicator-gauge-axis)
        public var axis: Axis?
    
        /// # Used By
        /// `Indicator.Gauge.steps` |
        public struct Step: Encodable {
            /// Sets the background color of the arc.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#indicator-gauge-steps-items-step-color) |
            /// [Python](https://plot.ly/python/reference/#indicator-gauge-steps-items-step-color) |
            /// [R](https://plot.ly/r/reference/#indicator-gauge-steps-items-step-color)
            public var color: Color?
        
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#indicator-gauge-steps-items-step-line) |
            /// [Python](https://plot.ly/python/reference/#indicator-gauge-steps-items-step-line) |
            /// [R](https://plot.ly/r/reference/#indicator-gauge-steps-items-step-line)
            public var line: Shared.Line?
        
            /// Sets the thickness of the bar as a fraction of the total thickness of the gauge.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#indicator-gauge-steps-items-step-thickness) |
            /// [Python](https://plot.ly/python/reference/#indicator-gauge-steps-items-step-thickness) |
            /// [R](https://plot.ly/r/reference/#indicator-gauge-steps-items-step-thickness)
            public var thickness: Double?
        
            /// Sets the range of this axis.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#indicator-gauge-steps-items-step-range) |
            /// [Python](https://plot.ly/python/reference/#indicator-gauge-steps-items-step-range) |
            /// [R](https://plot.ly/r/reference/#indicator-gauge-steps-items-step-range)
            public var range: InfoArray?
        
            /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. 
            ///
            /// You can modify these items in the output figure by making your own item with `templateitemname`
            /// matching this `name` alongside your modifications (including `visible: false` or `enabled:
            /// false` to hide it). Has no effect outside of a template.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#indicator-gauge-steps-items-step-name) |
            /// [Python](https://plot.ly/python/reference/#indicator-gauge-steps-items-step-name) |
            /// [R](https://plot.ly/r/reference/#indicator-gauge-steps-items-step-name)
            public var name: String?
        
            /// Used to refer to a named item in this array in the template. 
            ///
            /// Named items from the template will be created even without a matching item in the input figure,
            /// but you can modify one by making an item with `templateitemname` matching its `name`, alongside
            /// your modifications (including `visible: false` or `enabled: false` to hide it). If there is no
            /// template or no matching item, this item will be hidden unless you explicitly show it with
            /// `visible: true`.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#indicator-gauge-steps-items-step-templateitemname) |
            /// [Python](https://plot.ly/python/reference/#indicator-gauge-steps-items-step-templateitemname) |
            /// [R](https://plot.ly/r/reference/#indicator-gauge-steps-items-step-templateitemname)
            public var templateItemName: String?
        
            /// Plotly compatible property encoding
            enum CodingKeys: String, CodingKey {
                case color
                case line
                case thickness
                case range
                case name
                case templateItemName = "templateitemname"
            }
            
            public init(color: Color? = nil, line: Shared.Line? = nil, thickness: Double? = nil, range: InfoArray? = nil, name: String? = nil, templateItemName: String? = nil) {
                self.color = color
                self.line = line
                self.thickness = thickness
                self.range = range
                self.name = name
                self.templateItemName = templateItemName
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#indicator-gauge-steps) |
        /// [Python](https://plot.ly/python/reference/#indicator-gauge-steps) |
        /// [R](https://plot.ly/r/reference/#indicator-gauge-steps)
        public var steps: [Step]?
    
        /// # Used By
        /// `Indicator.Gauge.threshold` |
        public struct Threshold: Encodable {
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#indicator-gauge-threshold-line) |
            /// [Python](https://plot.ly/python/reference/#indicator-gauge-threshold-line) |
            /// [R](https://plot.ly/r/reference/#indicator-gauge-threshold-line)
            public var line: Shared.Line?
        
            /// Sets the thickness of the threshold line as a fraction of the thickness of the gauge.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#indicator-gauge-threshold-thickness) |
            /// [Python](https://plot.ly/python/reference/#indicator-gauge-threshold-thickness) |
            /// [R](https://plot.ly/r/reference/#indicator-gauge-threshold-thickness)
            public var thickness: Double?
        
            /// Sets a treshold value drawn as a line.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#indicator-gauge-threshold-value) |
            /// [Python](https://plot.ly/python/reference/#indicator-gauge-threshold-value) |
            /// [R](https://plot.ly/r/reference/#indicator-gauge-threshold-value)
            public var value: Double?
        
            public init(line: Shared.Line? = nil, thickness: Double? = nil, value: Double? = nil) {
                self.line = line
                self.thickness = thickness
                self.value = value
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#indicator-gauge-threshold) |
        /// [Python](https://plot.ly/python/reference/#indicator-gauge-threshold) |
        /// [R](https://plot.ly/r/reference/#indicator-gauge-threshold)
        public var threshold: Threshold?
    
        /// Plotly compatible property encoding
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
        
        public init(shape: Shape? = nil, bar: Bar? = nil, backgroundColor: Color? = nil, borderColor: Color? = nil, borderWidth: Double? = nil, axis: Axis? = nil, steps: [Step]? = nil, threshold: Threshold? = nil) {
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#indicator-gauge) |
    /// [Python](https://plot.ly/python/reference/#indicator-gauge) |
    /// [R](https://plot.ly/r/reference/#indicator-gauge)
    public var gauge: Gauge?

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
    
    public init(visible: Shared.Visible? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: ArrayOrAnything? = nil, stream: Shared.Stream? = nil, transforms: [Shared.Transform]? = nil, uiRevision: Anything? = nil, mode: Mode? = nil, value: Double? = nil, align: Shared.HorizontalAlign? = nil, domain: Shared.Domain? = nil, title: Title? = nil, number: Number? = nil, delta: Delta? = nil, gauge: Gauge? = nil) {
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