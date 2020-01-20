/// Draws volume trace between iso-min and iso-max values with coordinates given by four 1-dimensional arrays containing the `value`, `x`, `y` and `z` of every vertex of a uniform or non-uniform 3-D grid. 
///
/// Horizontal or vertical slices, caps as well as spaceframe between iso-min and iso-max values
/// could also be drawn using this trace.
public struct Volume: Trace {
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#type) |
    /// [Python](https://plot.ly/python/reference/#type) |
    /// [R](https://plot.ly/r/reference/#type)
    public let type: String = "volume"

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
    /// [JavaScript](https://plot.ly/javascript/reference/#volume-visible) |
    /// [Python](https://plot.ly/python/reference/#volume-visible) |
    /// [R](https://plot.ly/r/reference/#volume-visible)
    public var visible: Shared.Visible?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#volume-name) |
    /// [Python](https://plot.ly/python/reference/#volume-name) |
    /// [R](https://plot.ly/r/reference/#volume-name)
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#volume-uid) |
    /// [Python](https://plot.ly/python/reference/#volume-uid) |
    /// [R](https://plot.ly/r/reference/#volume-uid)
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#volume-ids) |
    /// [Python](https://plot.ly/python/reference/#volume-ids) |
    /// [R](https://plot.ly/r/reference/#volume-ids)
    public var ids: [Double]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#volume-customdata) |
    /// [Python](https://plot.ly/python/reference/#volume-customdata) |
    /// [R](https://plot.ly/r/reference/#volume-customdata)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#volume-meta) |
    /// [Python](https://plot.ly/python/reference/#volume-meta) |
    /// [R](https://plot.ly/r/reference/#volume-meta)
    public var meta: Anything?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#volume-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#volume-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#volume-hoverlabel)
    public var hoverLabel: Shared.HoverLabel?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#volume-stream) |
    /// [Python](https://plot.ly/python/reference/#volume-stream) |
    /// [R](https://plot.ly/r/reference/#volume-stream)
    public var stream: Shared.Stream?

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
    /// [JavaScript](https://plot.ly/javascript/reference/#volume-uirevision) |
    /// [Python](https://plot.ly/python/reference/#volume-uirevision) |
    /// [R](https://plot.ly/r/reference/#volume-uirevision)
    public var uiRevision: Anything?

    /// Sets the X coordinates of the vertices on X axis.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#volume-x) |
    /// [Python](https://plot.ly/python/reference/#volume-x) |
    /// [R](https://plot.ly/r/reference/#volume-x)
    public var x: [Double]?

    /// Sets the Y coordinates of the vertices on Y axis.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#volume-y) |
    /// [Python](https://plot.ly/python/reference/#volume-y) |
    /// [R](https://plot.ly/r/reference/#volume-y)
    public var y: [Double]?

    /// Sets the Z coordinates of the vertices on Z axis.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#volume-z) |
    /// [Python](https://plot.ly/python/reference/#volume-z) |
    /// [R](https://plot.ly/r/reference/#volume-z)
    public var z: [Double]?

    /// Sets the 4th dimension (value) of the vertices.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#volume-value) |
    /// [Python](https://plot.ly/python/reference/#volume-value) |
    /// [R](https://plot.ly/r/reference/#volume-value)
    public var value: [Double]?

    /// Sets the minimum boundary for iso-surface plot.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#volume-isomin) |
    /// [Python](https://plot.ly/python/reference/#volume-isomin) |
    /// [R](https://plot.ly/r/reference/#volume-isomin)
    public var isoMin: Double?

    /// Sets the maximum boundary for iso-surface plot.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#volume-isomax) |
    /// [Python](https://plot.ly/python/reference/#volume-isomax) |
    /// [R](https://plot.ly/r/reference/#volume-isomax)
    public var isoMax: Double?

    /// # Used By
    /// `Volume.surface` |
    public struct Surface: Encodable {
        /// Hides/displays surfaces between minimum and maximum iso-values.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#volume-surface-show) |
        /// [Python](https://plot.ly/python/reference/#volume-surface-show) |
        /// [R](https://plot.ly/r/reference/#volume-surface-show)
        public var show: Bool?
    
        /// Sets the number of iso-surfaces between minimum and maximum iso-values. 
        ///
        /// By default this value is 2 meaning that only minimum and maximum surfaces would be drawn.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#volume-surface-count) |
        /// [Python](https://plot.ly/python/reference/#volume-surface-count) |
        /// [R](https://plot.ly/r/reference/#volume-surface-count)
        public var count: Int?
    
        /// Sets the fill ratio of the iso-surface. 
        ///
        /// The default fill value of the surface is 1 meaning that they are entirely shaded. On the other
        /// hand Applying a `fill` ratio less than one would allow the creation of openings parallel to the
        /// edges.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#volume-surface-fill) |
        /// [Python](https://plot.ly/python/reference/#volume-surface-fill) |
        /// [R](https://plot.ly/r/reference/#volume-surface-fill)
        public var fill: Double?
    
        /// Sets the surface pattern of the iso-surface 3-D sections. 
        ///
        /// The default pattern of the surface is `all` meaning that the rest of surface elements would be
        /// shaded. The check options (either 1 or 2) could be used to draw half of the squares on the
        /// surface. Using various combinations of capital `A`, `B`, `C`, `D` and `E` may also be used to
        /// reduce the number of triangles on the iso-surfaces and creating other patterns of interest.
        ///
        /// # Used By
        /// `Volume.Surface.pattern` |
        public struct Pattern: OptionSet, Encodable {
            public let rawValue: Int
        
            public static let a = Pattern(rawValue: 1 << 0)
            public static let b = Pattern(rawValue: 1 << 1)
            public static let c = Pattern(rawValue: 1 << 2)
            public static let d = Pattern(rawValue: 1 << 3)
            public static let e = Pattern(rawValue: 1 << 4)
            public static let all = Pattern(rawValue: 1 << 5)
            public static let odd = Pattern(rawValue: 1 << 6)
            public static let even = Pattern(rawValue: 1 << 7)
        
            public init(rawValue: Int) { self.rawValue = rawValue }
        
            public func encode(to encoder: Encoder) throws {
                var options = [String]()
                if (self.rawValue & 1 << 0) != 0 { options += ["A"] }
                if (self.rawValue & 1 << 1) != 0 { options += ["B"] }
                if (self.rawValue & 1 << 2) != 0 { options += ["C"] }
                if (self.rawValue & 1 << 3) != 0 { options += ["D"] }
                if (self.rawValue & 1 << 4) != 0 { options += ["E"] }
                if (self.rawValue & 1 << 5) != 0 { options += ["all"] }
                if (self.rawValue & 1 << 6) != 0 { options += ["odd"] }
                if (self.rawValue & 1 << 7) != 0 { options += ["even"] }
                var container = encoder.singleValueContainer()
                try container.encode(options.joined(separator: "+"))
            }
        }
        /// Sets the surface pattern of the iso-surface 3-D sections. 
        ///
        /// The default pattern of the surface is `all` meaning that the rest of surface elements would be
        /// shaded. The check options (either 1 or 2) could be used to draw half of the squares on the
        /// surface. Using various combinations of capital `A`, `B`, `C`, `D` and `E` may also be used to
        /// reduce the number of triangles on the iso-surfaces and creating other patterns of interest.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#volume-surface-pattern) |
        /// [Python](https://plot.ly/python/reference/#volume-surface-pattern) |
        /// [R](https://plot.ly/r/reference/#volume-surface-pattern)
        public var pattern: Pattern?
    
        public init(show: Bool? = nil, count: Int? = nil, fill: Double? = nil, pattern: Pattern? = nil) {
            self.show = show
            self.count = count
            self.fill = fill
            self.pattern = pattern
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#volume-surface) |
    /// [Python](https://plot.ly/python/reference/#volume-surface) |
    /// [R](https://plot.ly/r/reference/#volume-surface)
    public var surface: Surface?

    /// # Used By
    /// `Volume.spaceFrame` |
    public struct SpaceFrame: Encodable {
        /// Displays/hides tetrahedron shapes between minimum and maximum iso-values. 
        ///
        /// Often useful when either caps or surfaces are disabled or filled with values less than 1.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#volume-spaceframe-show) |
        /// [Python](https://plot.ly/python/reference/#volume-spaceframe-show) |
        /// [R](https://plot.ly/r/reference/#volume-spaceframe-show)
        public var show: Bool?
    
        /// Sets the fill ratio of the `spaceframe` elements. 
        ///
        /// The default fill value is 1 meaning that they are entirely shaded. Applying a `fill` ratio less
        /// than one would allow the creation of openings parallel to the edges.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#volume-spaceframe-fill) |
        /// [Python](https://plot.ly/python/reference/#volume-spaceframe-fill) |
        /// [R](https://plot.ly/r/reference/#volume-spaceframe-fill)
        public var fill: Double?
    
        public init(show: Bool? = nil, fill: Double? = nil) {
            self.show = show
            self.fill = fill
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#volume-spaceframe) |
    /// [Python](https://plot.ly/python/reference/#volume-spaceframe) |
    /// [R](https://plot.ly/r/reference/#volume-spaceframe)
    public var spaceFrame: SpaceFrame?

    /// # Used By
    /// `Volume.slices` |
    public struct Slices: Encodable {
        /// # Used By
        /// `Volume.Slices.x` |
        public struct X: Encodable {
            /// Determines whether or not slice planes about the x dimension are drawn.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#volume-slices-x-show) |
            /// [Python](https://plot.ly/python/reference/#volume-slices-x-show) |
            /// [R](https://plot.ly/r/reference/#volume-slices-x-show)
            public var show: Bool?
        
            /// Specifies the location(s) of slices on the axis. 
            ///
            /// When not specified slices would be created for all points of the axis x except start and end.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#volume-slices-x-locations) |
            /// [Python](https://plot.ly/python/reference/#volume-slices-x-locations) |
            /// [R](https://plot.ly/r/reference/#volume-slices-x-locations)
            public var locations: [Double]?
        
            /// Sets the fill ratio of the `slices`. 
            ///
            /// The default fill value of the `slices` is 1 meaning that they are entirely shaded. On the other
            /// hand Applying a `fill` ratio less than one would allow the creation of openings parallel to the
            /// edges.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#volume-slices-x-fill) |
            /// [Python](https://plot.ly/python/reference/#volume-slices-x-fill) |
            /// [R](https://plot.ly/r/reference/#volume-slices-x-fill)
            public var fill: Double?
        
            public init(show: Bool? = nil, locations: [Double]? = nil, fill: Double? = nil) {
                self.show = show
                self.locations = locations
                self.fill = fill
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#volume-slices-x) |
        /// [Python](https://plot.ly/python/reference/#volume-slices-x) |
        /// [R](https://plot.ly/r/reference/#volume-slices-x)
        public var x: X?
    
        /// # Used By
        /// `Volume.Slices.y` |
        public struct Y: Encodable {
            /// Determines whether or not slice planes about the y dimension are drawn.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#volume-slices-y-show) |
            /// [Python](https://plot.ly/python/reference/#volume-slices-y-show) |
            /// [R](https://plot.ly/r/reference/#volume-slices-y-show)
            public var show: Bool?
        
            /// Specifies the location(s) of slices on the axis. 
            ///
            /// When not specified slices would be created for all points of the axis y except start and end.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#volume-slices-y-locations) |
            /// [Python](https://plot.ly/python/reference/#volume-slices-y-locations) |
            /// [R](https://plot.ly/r/reference/#volume-slices-y-locations)
            public var locations: [Double]?
        
            /// Sets the fill ratio of the `slices`. 
            ///
            /// The default fill value of the `slices` is 1 meaning that they are entirely shaded. On the other
            /// hand Applying a `fill` ratio less than one would allow the creation of openings parallel to the
            /// edges.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#volume-slices-y-fill) |
            /// [Python](https://plot.ly/python/reference/#volume-slices-y-fill) |
            /// [R](https://plot.ly/r/reference/#volume-slices-y-fill)
            public var fill: Double?
        
            public init(show: Bool? = nil, locations: [Double]? = nil, fill: Double? = nil) {
                self.show = show
                self.locations = locations
                self.fill = fill
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#volume-slices-y) |
        /// [Python](https://plot.ly/python/reference/#volume-slices-y) |
        /// [R](https://plot.ly/r/reference/#volume-slices-y)
        public var y: Y?
    
        /// # Used By
        /// `Volume.Slices.z` |
        public struct Z: Encodable {
            /// Determines whether or not slice planes about the z dimension are drawn.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#volume-slices-z-show) |
            /// [Python](https://plot.ly/python/reference/#volume-slices-z-show) |
            /// [R](https://plot.ly/r/reference/#volume-slices-z-show)
            public var show: Bool?
        
            /// Specifies the location(s) of slices on the axis. 
            ///
            /// When not specified slices would be created for all points of the axis z except start and end.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#volume-slices-z-locations) |
            /// [Python](https://plot.ly/python/reference/#volume-slices-z-locations) |
            /// [R](https://plot.ly/r/reference/#volume-slices-z-locations)
            public var locations: [Double]?
        
            /// Sets the fill ratio of the `slices`. 
            ///
            /// The default fill value of the `slices` is 1 meaning that they are entirely shaded. On the other
            /// hand Applying a `fill` ratio less than one would allow the creation of openings parallel to the
            /// edges.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#volume-slices-z-fill) |
            /// [Python](https://plot.ly/python/reference/#volume-slices-z-fill) |
            /// [R](https://plot.ly/r/reference/#volume-slices-z-fill)
            public var fill: Double?
        
            public init(show: Bool? = nil, locations: [Double]? = nil, fill: Double? = nil) {
                self.show = show
                self.locations = locations
                self.fill = fill
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#volume-slices-z) |
        /// [Python](https://plot.ly/python/reference/#volume-slices-z) |
        /// [R](https://plot.ly/r/reference/#volume-slices-z)
        public var z: Z?
    
        public init(x: X? = nil, y: Y? = nil, z: Z? = nil) {
            self.x = x
            self.y = y
            self.z = z
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#volume-slices) |
    /// [Python](https://plot.ly/python/reference/#volume-slices) |
    /// [R](https://plot.ly/r/reference/#volume-slices)
    public var slices: Slices?

    /// # Used By
    /// `Volume.caps` |
    public struct Caps: Encodable {
        /// # Used By
        /// `Volume.Caps.x` |
        public struct X: Encodable {
            /// Sets the fill ratio of the `slices`. 
            ///
            /// The default fill value of the x `slices` is 1 meaning that they are entirely shaded. On the
            /// other hand Applying a `fill` ratio less than one would allow the creation of openings parallel
            /// to the edges.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#volume-caps-x-show) |
            /// [Python](https://plot.ly/python/reference/#volume-caps-x-show) |
            /// [R](https://plot.ly/r/reference/#volume-caps-x-show)
            public var show: Bool?
        
            /// Sets the fill ratio of the `caps`. 
            ///
            /// The default fill value of the `caps` is 1 meaning that they are entirely shaded. On the other
            /// hand Applying a `fill` ratio less than one would allow the creation of openings parallel to the
            /// edges.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#volume-caps-x-fill) |
            /// [Python](https://plot.ly/python/reference/#volume-caps-x-fill) |
            /// [R](https://plot.ly/r/reference/#volume-caps-x-fill)
            public var fill: Double?
        
            public init(show: Bool? = nil, fill: Double? = nil) {
                self.show = show
                self.fill = fill
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#volume-caps-x) |
        /// [Python](https://plot.ly/python/reference/#volume-caps-x) |
        /// [R](https://plot.ly/r/reference/#volume-caps-x)
        public var x: X?
    
        /// # Used By
        /// `Volume.Caps.y` |
        public struct Y: Encodable {
            /// Sets the fill ratio of the `slices`. 
            ///
            /// The default fill value of the y `slices` is 1 meaning that they are entirely shaded. On the
            /// other hand Applying a `fill` ratio less than one would allow the creation of openings parallel
            /// to the edges.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#volume-caps-y-show) |
            /// [Python](https://plot.ly/python/reference/#volume-caps-y-show) |
            /// [R](https://plot.ly/r/reference/#volume-caps-y-show)
            public var show: Bool?
        
            /// Sets the fill ratio of the `caps`. 
            ///
            /// The default fill value of the `caps` is 1 meaning that they are entirely shaded. On the other
            /// hand Applying a `fill` ratio less than one would allow the creation of openings parallel to the
            /// edges.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#volume-caps-y-fill) |
            /// [Python](https://plot.ly/python/reference/#volume-caps-y-fill) |
            /// [R](https://plot.ly/r/reference/#volume-caps-y-fill)
            public var fill: Double?
        
            public init(show: Bool? = nil, fill: Double? = nil) {
                self.show = show
                self.fill = fill
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#volume-caps-y) |
        /// [Python](https://plot.ly/python/reference/#volume-caps-y) |
        /// [R](https://plot.ly/r/reference/#volume-caps-y)
        public var y: Y?
    
        /// # Used By
        /// `Volume.Caps.z` |
        public struct Z: Encodable {
            /// Sets the fill ratio of the `slices`. 
            ///
            /// The default fill value of the z `slices` is 1 meaning that they are entirely shaded. On the
            /// other hand Applying a `fill` ratio less than one would allow the creation of openings parallel
            /// to the edges.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#volume-caps-z-show) |
            /// [Python](https://plot.ly/python/reference/#volume-caps-z-show) |
            /// [R](https://plot.ly/r/reference/#volume-caps-z-show)
            public var show: Bool?
        
            /// Sets the fill ratio of the `caps`. 
            ///
            /// The default fill value of the `caps` is 1 meaning that they are entirely shaded. On the other
            /// hand Applying a `fill` ratio less than one would allow the creation of openings parallel to the
            /// edges.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#volume-caps-z-fill) |
            /// [Python](https://plot.ly/python/reference/#volume-caps-z-fill) |
            /// [R](https://plot.ly/r/reference/#volume-caps-z-fill)
            public var fill: Double?
        
            public init(show: Bool? = nil, fill: Double? = nil) {
                self.show = show
                self.fill = fill
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#volume-caps-z) |
        /// [Python](https://plot.ly/python/reference/#volume-caps-z) |
        /// [R](https://plot.ly/r/reference/#volume-caps-z)
        public var z: Z?
    
        public init(x: X? = nil, y: Y? = nil, z: Z? = nil) {
            self.x = x
            self.y = y
            self.z = z
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#volume-caps) |
    /// [Python](https://plot.ly/python/reference/#volume-caps) |
    /// [R](https://plot.ly/r/reference/#volume-caps)
    public var caps: Caps?

    /// Sets the text elements associated with the vertices. 
    ///
    /// If trace `hoverinfo` contains a *text* flag and *hovertext* is not set, these elements will be
    /// seen in the hover labels.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#volume-text) |
    /// [Python](https://plot.ly/python/reference/#volume-text) |
    /// [R](https://plot.ly/r/reference/#volume-text)
    public var text: String?

    /// Same as `text`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#volume-hovertext) |
    /// [Python](https://plot.ly/python/reference/#volume-hovertext) |
    /// [R](https://plot.ly/r/reference/#volume-hovertext)
    public var hoverText: String?

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
    /// true`) are available. Anything contained in tag `<extra>` is displayed in the secondary box, for
    /// example "<extra>{fullData.name}</extra>". To hide the secondary box completely, use an empty tag
    /// `<extra></extra>`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#volume-hovertemplate) |
    /// [Python](https://plot.ly/python/reference/#volume-hovertemplate) |
    /// [R](https://plot.ly/r/reference/#volume-hovertemplate)
    public var hoverTemplate: String?

    /// Determines whether or not the color domain is computed with respect to the input data (here `value`) or the bounds set in `cmin` and `cmax`  Defaults to `false` when `cmin` and `cmax` are set by the user.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#volume-cauto) |
    /// [Python](https://plot.ly/python/reference/#volume-cauto) |
    /// [R](https://plot.ly/r/reference/#volume-cauto)
    public var cAuto: Bool?

    /// Sets the lower bound of the color domain. 
    ///
    /// Value should have the same units as `value` and if set, `cmax` must be set as well.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#volume-cmin) |
    /// [Python](https://plot.ly/python/reference/#volume-cmin) |
    /// [R](https://plot.ly/r/reference/#volume-cmin)
    public var cMin: Double?

    /// Sets the upper bound of the color domain. 
    ///
    /// Value should have the same units as `value` and if set, `cmin` must be set as well.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#volume-cmax) |
    /// [Python](https://plot.ly/python/reference/#volume-cmax) |
    /// [R](https://plot.ly/r/reference/#volume-cmax)
    public var cMax: Double?

    /// Sets the mid-point of the color domain by scaling `cmin` and/or `cmax` to be equidistant to this point. 
    ///
    /// Value should have the same units as `value`. Has no effect when `cauto` is `false`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#volume-cmid) |
    /// [Python](https://plot.ly/python/reference/#volume-cmid) |
    /// [R](https://plot.ly/r/reference/#volume-cmid)
    public var cMiddle: Double?

    /// Sets the colorscale. 
    ///
    /// The colorscale must be an array containing arrays mapping a normalized value to an rgb, rgba,
    /// hex, hsl, hsv, or named color string. At minimum, a mapping for the lowest (0) and highest (1)
    /// values are required. For example, `[[0, 'rgb(0,0,255)'], [1, 'rgb(255,0,0)']]`. To control the
    /// bounds of the colorscale in color space, use`cmin` and `cmax`. Alternatively, `colorscale` may
    /// be a palette name string of the following list:
    /// Greys,YlGnBu,Greens,YlOrRd,Bluered,RdBu,Reds,Blues,Picnic,Rainbow,Portland,Jet,Hot,Blackbody,Earth,Electric,Viridis,Cividis.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#volume-colorscale) |
    /// [Python](https://plot.ly/python/reference/#volume-colorscale) |
    /// [R](https://plot.ly/r/reference/#volume-colorscale)
    public var colorScale: ColorScale?

    /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `colorscale`. 
    ///
    /// In case `colorscale` is unspecified or `autocolorscale` is true, the default palette will be
    /// chosen according to whether numbers in the `color` array are all positive, all negative or
    /// mixed.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#volume-autocolorscale) |
    /// [Python](https://plot.ly/python/reference/#volume-autocolorscale) |
    /// [R](https://plot.ly/r/reference/#volume-autocolorscale)
    public var autoColorScale: Bool?

    /// Reverses the color mapping if true. 
    ///
    /// If true, `cmin` will correspond to the last color in the array and `cmax` will correspond to the
    /// first color.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#volume-reversescale) |
    /// [Python](https://plot.ly/python/reference/#volume-reversescale) |
    /// [R](https://plot.ly/r/reference/#volume-reversescale)
    public var reverseScale: Bool?

    /// Determines whether or not a colorbar is displayed for this trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#volume-showscale) |
    /// [Python](https://plot.ly/python/reference/#volume-showscale) |
    /// [R](https://plot.ly/r/reference/#volume-showscale)
    public var showScale: Bool?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#volume-colorbar) |
    /// [Python](https://plot.ly/python/reference/#volume-colorbar) |
    /// [R](https://plot.ly/r/reference/#volume-colorbar)
    public var colorBar: Shared.ColorBar?

    /// Sets a reference to a shared color axis. 
    ///
    /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
    /// for these shared color axes are set in the layout, under `layout.coloraxis`,
    /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#volume-coloraxis) |
    /// [Python](https://plot.ly/python/reference/#volume-coloraxis) |
    /// [R](https://plot.ly/r/reference/#volume-coloraxis)
    public var colorAxis: SubPlotID?

    /// Sets the opacity of the surface. 
    ///
    /// Please note that in the case of using high `opacity` values for example a value greater than or
    /// equal to 0.5 on two surfaces (and 0.25 with four surfaces), an overlay of multiple transparent
    /// surfaces may not perfectly be sorted in depth by the webgl API. This behavior may be improved in
    /// the near future and is subject to change.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#volume-opacity) |
    /// [Python](https://plot.ly/python/reference/#volume-opacity) |
    /// [R](https://plot.ly/r/reference/#volume-opacity)
    public var opacity: Double?

    /// Sets the opacityscale. 
    ///
    /// The opacityscale must be an array containing arrays mapping a normalized value to an opacity
    /// value. At minimum, a mapping for the lowest (0) and highest (1) values are required. For
    /// example, `[[0, 1], [0.5, 0.2], [1, 1]]` means that higher/lower values would have higher opacity
    /// values and those in the middle would be more transparent Alternatively, `opacityscale` may be a
    /// palette name string of the following list: 'min', 'max', 'extremes' and 'uniform'. The default
    /// is 'uniform'.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#volume-opacityscale) |
    /// [Python](https://plot.ly/python/reference/#volume-opacityscale) |
    /// [R](https://plot.ly/r/reference/#volume-opacityscale)
    public var opacityScale: Anything?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#volume-lightposition) |
    /// [Python](https://plot.ly/python/reference/#volume-lightposition) |
    /// [R](https://plot.ly/r/reference/#volume-lightposition)
    public var lightPosition: Shared.LightPosition?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#volume-lighting) |
    /// [Python](https://plot.ly/python/reference/#volume-lighting) |
    /// [R](https://plot.ly/r/reference/#volume-lighting)
    public var lighting: Shared.Lighting?

    /// Determines whether or not normal smoothing is applied to the meshes, creating meshes with an angular, low-poly look via flat reflections.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#volume-flatshading) |
    /// [Python](https://plot.ly/python/reference/#volume-flatshading) |
    /// [R](https://plot.ly/r/reference/#volume-flatshading)
    public var flatShading: Bool?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#volume-contour) |
    /// [Python](https://plot.ly/python/reference/#volume-contour) |
    /// [R](https://plot.ly/r/reference/#volume-contour)
    public var contour: Shared.ContourHover?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#volume-hoverinfo) |
    /// [Python](https://plot.ly/python/reference/#volume-hoverinfo) |
    /// [R](https://plot.ly/r/reference/#volume-hoverinfo)
    public var hoverInfo: Shared.HoverInfo?

    /// Sets a reference between this trace's 3D coordinate system and a 3D scene. 
    ///
    /// If *scene* (the default value), the (x,y,z) coordinates refer to `layout.scene`. If *scene2*,
    /// the (x,y,z) coordinates refer to `layout.scene2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#volume-scene) |
    /// [Python](https://plot.ly/python/reference/#volume-scene) |
    /// [R](https://plot.ly/r/reference/#volume-scene)
    public var scene: SubPlotID?

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
        case hoverLabel = "hoverlabel"
        case stream
        case uiRevision = "uirevision"
        case x
        case y
        case z
        case value
        case isoMin = "isomin"
        case isoMax = "isomax"
        case surface
        case spaceFrame = "spaceframe"
        case slices
        case caps
        case text
        case hoverText = "hovertext"
        case hoverTemplate = "hovertemplate"
        case cAuto = "cauto"
        case cMin = "cmin"
        case cMax = "cmax"
        case cMiddle = "cmid"
        case colorScale = "colorscale"
        case autoColorScale = "autocolorscale"
        case reverseScale = "reversescale"
        case showScale = "showscale"
        case colorBar = "colorbar"
        case colorAxis = "coloraxis"
        case opacity
        case opacityScale = "opacityscale"
        case lightPosition = "lightposition"
        case lighting
        case flatShading = "flatshading"
        case contour
        case hoverInfo = "hoverinfo"
        case scene
    }
    
    public init(visible: Shared.Visible? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, hoverLabel: Shared.HoverLabel? = nil, stream: Shared.Stream? = nil, uiRevision: Anything? = nil, x: [Double]? = nil, y: [Double]? = nil, z: [Double]? = nil, value: [Double]? = nil, isoMin: Double? = nil, isoMax: Double? = nil, surface: Surface? = nil, spaceFrame: SpaceFrame? = nil, slices: Slices? = nil, caps: Caps? = nil, text: String? = nil, hoverText: String? = nil, hoverTemplate: String? = nil, cAuto: Bool? = nil, cMin: Double? = nil, cMax: Double? = nil, cMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: Shared.ColorBar? = nil, colorAxis: SubPlotID? = nil, opacity: Double? = nil, opacityScale: Anything? = nil, lightPosition: Shared.LightPosition? = nil, lighting: Shared.Lighting? = nil, flatShading: Bool? = nil, contour: Shared.ContourHover? = nil, hoverInfo: Shared.HoverInfo? = nil, scene: SubPlotID? = nil) {
        self.visible = visible
        self.name = name
        self.uid = uid
        self.ids = ids
        self.customData = customData
        self.meta = meta
        self.hoverLabel = hoverLabel
        self.stream = stream
        self.uiRevision = uiRevision
        self.x = x
        self.y = y
        self.z = z
        self.value = value
        self.isoMin = isoMin
        self.isoMax = isoMax
        self.surface = surface
        self.spaceFrame = spaceFrame
        self.slices = slices
        self.caps = caps
        self.text = text
        self.hoverText = hoverText
        self.hoverTemplate = hoverTemplate
        self.cAuto = cAuto
        self.cMin = cMin
        self.cMax = cMax
        self.cMiddle = cMiddle
        self.colorScale = colorScale
        self.autoColorScale = autoColorScale
        self.reverseScale = reverseScale
        self.showScale = showScale
        self.colorBar = colorBar
        self.colorAxis = colorAxis
        self.opacity = opacity
        self.opacityScale = opacityScale
        self.lightPosition = lightPosition
        self.lighting = lighting
        self.flatShading = flatShading
        self.contour = contour
        self.hoverInfo = hoverInfo
        self.scene = scene
    }
}