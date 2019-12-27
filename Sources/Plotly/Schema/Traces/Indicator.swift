/// An indicator is used to visualize a single `value` along with some contextual information such as `steps` or a `threshold`, using a combination of three visual elements: a number, a delta, and/or a gauge. 
///
/// Deltas are taken with respect to a `reference`. Gauges can be either angular or bullet (aka
/// linear) gauges.
public struct Indicator: Trace {
    public let type: String = "indicator"

    public let animatable: Bool = true

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

    public var stream: Stream0?

    public var transforms: TickFormatStops0?

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

    /// Determines how the value is displayed on the graph. 
    ///
    /// `number` displays the value numerically in text. `delta` displays the difference to a reference
    /// value in text. Finally, `gauge` displays the value graphically on an axis.
    /// - traces/indicator/attributes/mode
    public struct Mode: OptionSet, Encodable {
        public let rawValue: Int
    
        public static let number = Mode(rawValue: 1 << 0)
        public static let delta = Mode(rawValue: 1 << 1)
        public static let gauge = Mode(rawValue: 1 << 2)
    
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
    public var mode: Mode?

    /// Sets the number to be displayed.
    public var value: Double?

    public var align: Align1?

    public var domain: Domain0?

    /// - traces/indicator/attributes/title
    public struct Title: Encodable {
        /// Sets the title of this indicator.
        public var text: String?
    
        public var align: Align1?
    
        public var font: Font0?
    
        public init(text: String? = nil, align: Align1? = nil, font: Font0? = nil) {
            self.text = text
            self.align = align
            self.font = font
        }
    }
    public var title: Title?

    /// - traces/indicator/attributes/number
    public struct Number: Encodable {
        /// Sets the value formatting rule using d3 formatting mini-language which is similar to those of Python. 
        ///
        /// See https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
        public var valueFormat: String?
    
        public var font: Font0?
    
        /// Sets a prefix appearing before the number.
        public var prefix: String?
    
        /// Sets a suffix appearing next to the number.
        public var suffix: String?
    
        public init(valueFormat: String? = nil, font: Font0? = nil, prefix: String? = nil, suffix: String? = nil) {
            self.valueFormat = valueFormat
            self.font = font
            self.prefix = prefix
            self.suffix = suffix
        }
    }
    public var number: Number?

    /// - traces/indicator/attributes/delta
    public struct Delta: Encodable {
        /// Sets the reference value to compute the delta. 
        ///
        /// By default, it is set to the current value.
        public var reference: Double?
    
        public var position: Side0?
    
        /// Show relative change
        public var relative: Bool?
    
        /// Sets the value formatting rule using d3 formatting mini-language which is similar to those of Python. 
        ///
        /// See https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
        public var valueFormat: String?
    
        public var increasing: Increasing0?
    
        public var decreasing: Increasing0?
    
        public var font: Font0?
    
        public init(reference: Double? = nil, position: Side0? = nil, relative: Bool? = nil, valueFormat: String? = nil, increasing: Increasing0? = nil, decreasing: Increasing0? = nil, font: Font0? = nil) {
            self.reference = reference
            self.position = position
            self.relative = relative
            self.valueFormat = valueFormat
            self.increasing = increasing
            self.decreasing = decreasing
            self.font = font
        }
    }
    public var delta: Delta?

    /// The gauge of the Indicator plot.
    /// - traces/indicator/attributes/gauge
    public struct Gauge: Encodable {
        /// Set the shape of the gauge
        /// - traces/indicator/attributes/gauge/shape
        public enum Shape: String, Encodable {
            case angular
            case bullet
        }
        public var shape: Shape?
    
        /// Set the appearance of the gauge's value
        /// - traces/indicator/attributes/gauge/bar
        public struct Bar: Encodable {
            /// Sets the background color of the arc.
            public var color: Color?
        
            public var line: Line3?
        
            /// Sets the thickness of the bar as a fraction of the total thickness of the gauge.
            public var thickness: Double?
        
            public init(color: Color? = nil, line: Line3? = nil, thickness: Double? = nil) {
                self.color = color
                self.line = line
                self.thickness = thickness
            }
        }
        public var bar: Bar?
    
        /// Sets the gauge background color.
        public var backgroundColor: Color?
    
        /// Sets the color of the border enclosing the gauge.
        public var borderColor: Color?
    
        /// Sets the width (in px) of the border enclosing the gauge.
        public var borderWidth: Double?
    
        /// - traces/indicator/attributes/gauge/axis
        public struct Axis: Encodable {
            /// Sets the range of this axis.
            public var range: InfoArray?
        
            /// A single toggle to hide the axis while preserving interaction like dragging. 
            ///
            /// Default is true when a cheater plot is present on the axis, otherwise false
            public var visible: Bool?
        
            public var tickMode: TickMode0?
        
            /// Specifies the maximum number of ticks for the particular axis. 
            ///
            /// The actual number of ticks will be chosen automatically to be less than or equal to `nticks`.
            /// Has an effect only if `tickmode` is set to *auto*.
            public var numTicks: Int?
        
            /// Sets the placement of the first tick on this axis. 
            ///
            /// Use with `dtick`. If the axis `type` is *log*, then you must take the log of your starting tick
            /// (e.g. to set the starting tick to 100, set the `tick0` to 2) except when `dtick`=*L<f>* (see
            /// `dtick` for more info). If the axis `type` is *date*, it should be a date string, like date
            /// data. If the axis `type` is *category*, it should be a number, using the scale where each
            /// category is assigned a serial number from zero in the order it appears.
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
            public var dTick: Anything?
        
            /// Sets the values at which ticks on this axis appear. 
            ///
            /// Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
            public var tickValues: [Double]?
        
            /// Sets the text displayed at the ticks position via `tickvals`. 
            ///
            /// Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
            public var tickText: [Double]?
        
            public var ticks: Ticks0?
        
            /// Sets the tick length (in px).
            public var tickLength: Double?
        
            /// Sets the tick width (in px).
            public var tickWidth: Double?
        
            /// Sets the tick color.
            public var tickColor: Color?
        
            /// Determines whether or not the tick labels are drawn.
            public var showTickLabels: Bool?
        
            public var tickFont: Font0?
        
            /// Sets the angle of the tick labels with respect to the horizontal. 
            ///
            /// For example, a `tickangle` of -90 draws the tick labels vertically.
            public var tickAngle: Angle?
        
            /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to those in Python. 
            ///
            /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
            /// And for dates see:
            /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
            /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
            /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
            public var tickFormat: String?
        
            public var tickFormatStops: TickFormatStops0?
        
            /// Sets a tick label prefix.
            public var tickPrefix: String?
        
            public var showTickPrefix: ShowTickPrefix0?
        
            /// Sets a tick label suffix.
            public var tickSuffix: String?
        
            public var showTickSuffix: ShowTickPrefix0?
        
            /// If "true", even 4-digit integers are separated
            public var separatethousands: Bool?
        
            public var exponentFormat: ExponentFormat0?
        
            public var showExponent: ShowTickPrefix0?
        
            /// Sets the source reference on plot.ly for  tickvals .
            public var tickValuesSource: String?
        
            /// Sets the source reference on plot.ly for  ticktext .
            public var tickTextSource: String?
        
            public init(range: InfoArray? = nil, visible: Bool? = nil, tickMode: TickMode0? = nil, numTicks: Int? = nil, tick0: Anything? = nil, dTick: Anything? = nil, tickValues: [Double]? = nil, tickText: [Double]? = nil, ticks: Ticks0? = nil, tickLength: Double? = nil, tickWidth: Double? = nil, tickColor: Color? = nil, showTickLabels: Bool? = nil, tickFont: Font0? = nil, tickAngle: Angle? = nil, tickFormat: String? = nil, tickFormatStops: TickFormatStops0? = nil, tickPrefix: String? = nil, showTickPrefix: ShowTickPrefix0? = nil, tickSuffix: String? = nil, showTickSuffix: ShowTickPrefix0? = nil, separatethousands: Bool? = nil, exponentFormat: ExponentFormat0? = nil, showExponent: ShowTickPrefix0? = nil, tickValuesSource: String? = nil, tickTextSource: String? = nil) {
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
                self.tickValuesSource = tickValuesSource
                self.tickTextSource = tickTextSource
            }
        }
        public var axis: Axis?
    
        public var steps: TickFormatStops0?
    
        /// - traces/indicator/attributes/gauge/threshold
        public struct Threshold: Encodable {
            public var line: Line3?
        
            /// Sets the thickness of the threshold line as a fraction of the thickness of the gauge.
            public var thickness: Double?
        
            /// Sets a treshold value drawn as a line.
            public var value: Double?
        
            public init(line: Line3? = nil, thickness: Double? = nil, value: Double? = nil) {
                self.line = line
                self.thickness = thickness
                self.value = value
            }
        }
        public var threshold: Threshold?
    
        public init(shape: Shape? = nil, bar: Bar? = nil, backgroundColor: Color? = nil, borderColor: Color? = nil, borderWidth: Double? = nil, axis: Axis? = nil, steps: TickFormatStops0? = nil, threshold: Threshold? = nil) {
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
    public var gauge: Gauge?

    /// Sets the source reference on plot.ly for  ids .
    public var idsSource: String?

    /// Sets the source reference on plot.ly for  customdata .
    public var customDataSource: String?

    /// Sets the source reference on plot.ly for  meta .
    public var metaSource: String?

    public init(visible: Visible0? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, stream: Stream0? = nil, transforms: TickFormatStops0? = nil, uiRevision: Anything? = nil, mode: Mode? = nil, value: Double? = nil, align: Align1? = nil, domain: Domain0? = nil, title: Title? = nil, number: Number? = nil, delta: Delta? = nil, gauge: Gauge? = nil, idsSource: String? = nil, customDataSource: String? = nil, metaSource: String? = nil) {
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
        self.idsSource = idsSource
        self.customDataSource = customDataSource
        self.metaSource = metaSource
    }
}