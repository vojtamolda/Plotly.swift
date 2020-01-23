/// Draws isosurfaces between iso-min and iso-max values with coordinates given by four 1-dimensional arrays containing the `value`, `x`, `y` and `z` of every vertex of a uniform or non-uniform 3-D grid. 
///
/// Horizontal or vertical slices, caps as well as spaceframe between iso-min and iso-max values
/// could also be drawn using this trace.
public struct Isosurface<XData, YData, ZData>: Trace where XData: Encodable, YData: Encodable, ZData: Encodable {
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#type) |
    /// [Python](https://plot.ly/python/reference/#type) |
    /// [R](https://plot.ly/r/reference/#type)
    public let type: String = "isosurface"

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
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-visible) |
    /// [Python](https://plot.ly/python/reference/#isosurface-visible) |
    /// [R](https://plot.ly/r/reference/#isosurface-visible)
    public var visible: Shared.Visible?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-name) |
    /// [Python](https://plot.ly/python/reference/#isosurface-name) |
    /// [R](https://plot.ly/r/reference/#isosurface-name)
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-uid) |
    /// [Python](https://plot.ly/python/reference/#isosurface-uid) |
    /// [R](https://plot.ly/r/reference/#isosurface-uid)
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-ids) |
    /// [Python](https://plot.ly/python/reference/#isosurface-ids) |
    /// [R](https://plot.ly/r/reference/#isosurface-ids)
    public var ids: [Double]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-customdata) |
    /// [Python](https://plot.ly/python/reference/#isosurface-customdata) |
    /// [R](https://plot.ly/r/reference/#isosurface-customdata)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-meta) |
    /// [Python](https://plot.ly/python/reference/#isosurface-meta) |
    /// [R](https://plot.ly/r/reference/#isosurface-meta)
    public var meta: ArrayOrAnything?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#isosurface-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#isosurface-hoverlabel)
    public var hoverLabel: Shared.HoverLabel?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-stream) |
    /// [Python](https://plot.ly/python/reference/#isosurface-stream) |
    /// [R](https://plot.ly/r/reference/#isosurface-stream)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-uirevision) |
    /// [Python](https://plot.ly/python/reference/#isosurface-uirevision) |
    /// [R](https://plot.ly/r/reference/#isosurface-uirevision)
    public var uiRevision: Anything?

    /// Sets the X coordinates of the vertices on X axis.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-x) |
    /// [Python](https://plot.ly/python/reference/#isosurface-x) |
    /// [R](https://plot.ly/r/reference/#isosurface-x)
    public var x: XData?

    /// Sets the Y coordinates of the vertices on Y axis.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-y) |
    /// [Python](https://plot.ly/python/reference/#isosurface-y) |
    /// [R](https://plot.ly/r/reference/#isosurface-y)
    public var y: YData?

    /// Sets the Z coordinates of the vertices on Z axis.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-z) |
    /// [Python](https://plot.ly/python/reference/#isosurface-z) |
    /// [R](https://plot.ly/r/reference/#isosurface-z)
    public var z: ZData?

    /// Sets the 4th dimension (value) of the vertices.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-value) |
    /// [Python](https://plot.ly/python/reference/#isosurface-value) |
    /// [R](https://plot.ly/r/reference/#isosurface-value)
    public var value: [Double]?

    /// Sets the minimum boundary for iso-surface plot.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-isomin) |
    /// [Python](https://plot.ly/python/reference/#isosurface-isomin) |
    /// [R](https://plot.ly/r/reference/#isosurface-isomin)
    public var isoMin: Double?

    /// Sets the maximum boundary for iso-surface plot.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-isomax) |
    /// [Python](https://plot.ly/python/reference/#isosurface-isomax) |
    /// [R](https://plot.ly/r/reference/#isosurface-isomax)
    public var isoMax: Double?

    /// # Used By
    /// `Isosurface.surface` |
    public struct Surface: Encodable {
        /// Hides/displays surfaces between minimum and maximum iso-values.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-surface-show) |
        /// [Python](https://plot.ly/python/reference/#isosurface-surface-show) |
        /// [R](https://plot.ly/r/reference/#isosurface-surface-show)
        public var show: Bool?
    
        /// Sets the number of iso-surfaces between minimum and maximum iso-values. 
        ///
        /// By default this value is 2 meaning that only minimum and maximum surfaces would be drawn.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-surface-count) |
        /// [Python](https://plot.ly/python/reference/#isosurface-surface-count) |
        /// [R](https://plot.ly/r/reference/#isosurface-surface-count)
        public var count: Int?
    
        /// Sets the fill ratio of the iso-surface. 
        ///
        /// The default fill value of the surface is 1 meaning that they are entirely shaded. On the other
        /// hand Applying a `fill` ratio less than one would allow the creation of openings parallel to the
        /// edges.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-surface-fill) |
        /// [Python](https://plot.ly/python/reference/#isosurface-surface-fill) |
        /// [R](https://plot.ly/r/reference/#isosurface-surface-fill)
        public var fill: Double?
    
        /// Sets the surface pattern of the iso-surface 3-D sections. 
        ///
        /// The default pattern of the surface is `all` meaning that the rest of surface elements would be
        /// shaded. The check options (either 1 or 2) could be used to draw half of the squares on the
        /// surface. Using various combinations of capital `A`, `B`, `C`, `D` and `E` may also be used to
        /// reduce the number of triangles on the iso-surfaces and creating other patterns of interest.
        ///
        /// # Used By
        /// `Isosurface.Surface.pattern` |
        public struct Pattern: OptionSet, Encodable {
            public let rawValue: Int
        
            public static var a: Pattern { Pattern(rawValue: 1 << 0) }
            public static var b: Pattern { Pattern(rawValue: 1 << 1) }
            public static var c: Pattern { Pattern(rawValue: 1 << 2) }
            public static var d: Pattern { Pattern(rawValue: 1 << 3) }
            public static var e: Pattern { Pattern(rawValue: 1 << 4) }
            public static var all: Pattern { Pattern(rawValue: 1 << 5) }
            public static var odd: Pattern { Pattern(rawValue: 1 << 6) }
            public static var even: Pattern { Pattern(rawValue: 1 << 7) }
        
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
        /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-surface-pattern) |
        /// [Python](https://plot.ly/python/reference/#isosurface-surface-pattern) |
        /// [R](https://plot.ly/r/reference/#isosurface-surface-pattern)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-surface) |
    /// [Python](https://plot.ly/python/reference/#isosurface-surface) |
    /// [R](https://plot.ly/r/reference/#isosurface-surface)
    public var surface: Surface?

    /// # Used By
    /// `Isosurface.spaceFrame` |
    public struct SpaceFrame: Encodable {
        /// Displays/hides tetrahedron shapes between minimum and maximum iso-values. 
        ///
        /// Often useful when either caps or surfaces are disabled or filled with values less than 1.
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-spaceframe-show) |
        /// [Python](https://plot.ly/python/reference/#isosurface-spaceframe-show) |
        /// [R](https://plot.ly/r/reference/#isosurface-spaceframe-show)
        public var show: Bool?
    
        /// Sets the fill ratio of the `spaceframe` elements. 
        ///
        /// The default fill value is 0.15 meaning that only 15% of the area of every faces of tetras would
        /// be shaded. Applying a greater `fill` ratio would allow the creation of stronger elements or
        /// could be sued to have entirely closed areas (in case of using 1).
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-spaceframe-fill) |
        /// [Python](https://plot.ly/python/reference/#isosurface-spaceframe-fill) |
        /// [R](https://plot.ly/r/reference/#isosurface-spaceframe-fill)
        public var fill: Double?
    
        public init(show: Bool? = nil, fill: Double? = nil) {
            self.show = show
            self.fill = fill
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-spaceframe) |
    /// [Python](https://plot.ly/python/reference/#isosurface-spaceframe) |
    /// [R](https://plot.ly/r/reference/#isosurface-spaceframe)
    public var spaceFrame: SpaceFrame?

    /// # Used By
    /// `Isosurface.slices` |
    public struct Slices: Encodable {
        /// # Used By
        /// `Isosurface.Slices.x` |
        public struct X: Encodable {
            /// Determines whether or not slice planes about the x dimension are drawn.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-slices-x-show) |
            /// [Python](https://plot.ly/python/reference/#isosurface-slices-x-show) |
            /// [R](https://plot.ly/r/reference/#isosurface-slices-x-show)
            public var show: Bool?
        
            /// Specifies the location(s) of slices on the axis. 
            ///
            /// When not specified slices would be created for all points of the axis x except start and end.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-slices-x-locations) |
            /// [Python](https://plot.ly/python/reference/#isosurface-slices-x-locations) |
            /// [R](https://plot.ly/r/reference/#isosurface-slices-x-locations)
            public var locations: [Double]?
        
            /// Sets the fill ratio of the `slices`. 
            ///
            /// The default fill value of the `slices` is 1 meaning that they are entirely shaded. On the other
            /// hand Applying a `fill` ratio less than one would allow the creation of openings parallel to the
            /// edges.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-slices-x-fill) |
            /// [Python](https://plot.ly/python/reference/#isosurface-slices-x-fill) |
            /// [R](https://plot.ly/r/reference/#isosurface-slices-x-fill)
            public var fill: Double?
        
            public init(show: Bool? = nil, locations: [Double]? = nil, fill: Double? = nil) {
                self.show = show
                self.locations = locations
                self.fill = fill
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-slices-x) |
        /// [Python](https://plot.ly/python/reference/#isosurface-slices-x) |
        /// [R](https://plot.ly/r/reference/#isosurface-slices-x)
        public var x: X?
    
        /// # Used By
        /// `Isosurface.Slices.y` |
        public struct Y: Encodable {
            /// Determines whether or not slice planes about the y dimension are drawn.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-slices-y-show) |
            /// [Python](https://plot.ly/python/reference/#isosurface-slices-y-show) |
            /// [R](https://plot.ly/r/reference/#isosurface-slices-y-show)
            public var show: Bool?
        
            /// Specifies the location(s) of slices on the axis. 
            ///
            /// When not specified slices would be created for all points of the axis y except start and end.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-slices-y-locations) |
            /// [Python](https://plot.ly/python/reference/#isosurface-slices-y-locations) |
            /// [R](https://plot.ly/r/reference/#isosurface-slices-y-locations)
            public var locations: [Double]?
        
            /// Sets the fill ratio of the `slices`. 
            ///
            /// The default fill value of the `slices` is 1 meaning that they are entirely shaded. On the other
            /// hand Applying a `fill` ratio less than one would allow the creation of openings parallel to the
            /// edges.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-slices-y-fill) |
            /// [Python](https://plot.ly/python/reference/#isosurface-slices-y-fill) |
            /// [R](https://plot.ly/r/reference/#isosurface-slices-y-fill)
            public var fill: Double?
        
            public init(show: Bool? = nil, locations: [Double]? = nil, fill: Double? = nil) {
                self.show = show
                self.locations = locations
                self.fill = fill
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-slices-y) |
        /// [Python](https://plot.ly/python/reference/#isosurface-slices-y) |
        /// [R](https://plot.ly/r/reference/#isosurface-slices-y)
        public var y: Y?
    
        /// # Used By
        /// `Isosurface.Slices.z` |
        public struct Z: Encodable {
            /// Determines whether or not slice planes about the z dimension are drawn.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-slices-z-show) |
            /// [Python](https://plot.ly/python/reference/#isosurface-slices-z-show) |
            /// [R](https://plot.ly/r/reference/#isosurface-slices-z-show)
            public var show: Bool?
        
            /// Specifies the location(s) of slices on the axis. 
            ///
            /// When not specified slices would be created for all points of the axis z except start and end.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-slices-z-locations) |
            /// [Python](https://plot.ly/python/reference/#isosurface-slices-z-locations) |
            /// [R](https://plot.ly/r/reference/#isosurface-slices-z-locations)
            public var locations: [Double]?
        
            /// Sets the fill ratio of the `slices`. 
            ///
            /// The default fill value of the `slices` is 1 meaning that they are entirely shaded. On the other
            /// hand Applying a `fill` ratio less than one would allow the creation of openings parallel to the
            /// edges.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-slices-z-fill) |
            /// [Python](https://plot.ly/python/reference/#isosurface-slices-z-fill) |
            /// [R](https://plot.ly/r/reference/#isosurface-slices-z-fill)
            public var fill: Double?
        
            public init(show: Bool? = nil, locations: [Double]? = nil, fill: Double? = nil) {
                self.show = show
                self.locations = locations
                self.fill = fill
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-slices-z) |
        /// [Python](https://plot.ly/python/reference/#isosurface-slices-z) |
        /// [R](https://plot.ly/r/reference/#isosurface-slices-z)
        public var z: Z?
    
        public init(x: X? = nil, y: Y? = nil, z: Z? = nil) {
            self.x = x
            self.y = y
            self.z = z
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-slices) |
    /// [Python](https://plot.ly/python/reference/#isosurface-slices) |
    /// [R](https://plot.ly/r/reference/#isosurface-slices)
    public var slices: Slices?

    /// # Used By
    /// `Isosurface.caps` |
    public struct Caps: Encodable {
        /// # Used By
        /// `Isosurface.Caps.x` |
        public struct X: Encodable {
            /// Sets the fill ratio of the `slices`. 
            ///
            /// The default fill value of the x `slices` is 1 meaning that they are entirely shaded. On the
            /// other hand Applying a `fill` ratio less than one would allow the creation of openings parallel
            /// to the edges.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-caps-x-show) |
            /// [Python](https://plot.ly/python/reference/#isosurface-caps-x-show) |
            /// [R](https://plot.ly/r/reference/#isosurface-caps-x-show)
            public var show: Bool?
        
            /// Sets the fill ratio of the `caps`. 
            ///
            /// The default fill value of the `caps` is 1 meaning that they are entirely shaded. On the other
            /// hand Applying a `fill` ratio less than one would allow the creation of openings parallel to the
            /// edges.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-caps-x-fill) |
            /// [Python](https://plot.ly/python/reference/#isosurface-caps-x-fill) |
            /// [R](https://plot.ly/r/reference/#isosurface-caps-x-fill)
            public var fill: Double?
        
            public init(show: Bool? = nil, fill: Double? = nil) {
                self.show = show
                self.fill = fill
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-caps-x) |
        /// [Python](https://plot.ly/python/reference/#isosurface-caps-x) |
        /// [R](https://plot.ly/r/reference/#isosurface-caps-x)
        public var x: X?
    
        /// # Used By
        /// `Isosurface.Caps.y` |
        public struct Y: Encodable {
            /// Sets the fill ratio of the `slices`. 
            ///
            /// The default fill value of the y `slices` is 1 meaning that they are entirely shaded. On the
            /// other hand Applying a `fill` ratio less than one would allow the creation of openings parallel
            /// to the edges.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-caps-y-show) |
            /// [Python](https://plot.ly/python/reference/#isosurface-caps-y-show) |
            /// [R](https://plot.ly/r/reference/#isosurface-caps-y-show)
            public var show: Bool?
        
            /// Sets the fill ratio of the `caps`. 
            ///
            /// The default fill value of the `caps` is 1 meaning that they are entirely shaded. On the other
            /// hand Applying a `fill` ratio less than one would allow the creation of openings parallel to the
            /// edges.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-caps-y-fill) |
            /// [Python](https://plot.ly/python/reference/#isosurface-caps-y-fill) |
            /// [R](https://plot.ly/r/reference/#isosurface-caps-y-fill)
            public var fill: Double?
        
            public init(show: Bool? = nil, fill: Double? = nil) {
                self.show = show
                self.fill = fill
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-caps-y) |
        /// [Python](https://plot.ly/python/reference/#isosurface-caps-y) |
        /// [R](https://plot.ly/r/reference/#isosurface-caps-y)
        public var y: Y?
    
        /// # Used By
        /// `Isosurface.Caps.z` |
        public struct Z: Encodable {
            /// Sets the fill ratio of the `slices`. 
            ///
            /// The default fill value of the z `slices` is 1 meaning that they are entirely shaded. On the
            /// other hand Applying a `fill` ratio less than one would allow the creation of openings parallel
            /// to the edges.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-caps-z-show) |
            /// [Python](https://plot.ly/python/reference/#isosurface-caps-z-show) |
            /// [R](https://plot.ly/r/reference/#isosurface-caps-z-show)
            public var show: Bool?
        
            /// Sets the fill ratio of the `caps`. 
            ///
            /// The default fill value of the `caps` is 1 meaning that they are entirely shaded. On the other
            /// hand Applying a `fill` ratio less than one would allow the creation of openings parallel to the
            /// edges.
            ///
            /// # Plotly Reference
            /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-caps-z-fill) |
            /// [Python](https://plot.ly/python/reference/#isosurface-caps-z-fill) |
            /// [R](https://plot.ly/r/reference/#isosurface-caps-z-fill)
            public var fill: Double?
        
            public init(show: Bool? = nil, fill: Double? = nil) {
                self.show = show
                self.fill = fill
            }
        }
        ///
        /// # Plotly Reference
        /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-caps-z) |
        /// [Python](https://plot.ly/python/reference/#isosurface-caps-z) |
        /// [R](https://plot.ly/r/reference/#isosurface-caps-z)
        public var z: Z?
    
        public init(x: X? = nil, y: Y? = nil, z: Z? = nil) {
            self.x = x
            self.y = y
            self.z = z
        }
    }
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-caps) |
    /// [Python](https://plot.ly/python/reference/#isosurface-caps) |
    /// [R](https://plot.ly/r/reference/#isosurface-caps)
    public var caps: Caps?

    /// Sets the text elements associated with the vertices. 
    ///
    /// If trace `hoverinfo` contains a *text* flag and *hovertext* is not set, these elements will be
    /// seen in the hover labels.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-text) |
    /// [Python](https://plot.ly/python/reference/#isosurface-text) |
    /// [R](https://plot.ly/r/reference/#isosurface-text)
    public var text: ArrayOrString?

    /// Same as `text`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-hovertext) |
    /// [Python](https://plot.ly/python/reference/#isosurface-hovertext) |
    /// [R](https://plot.ly/r/reference/#isosurface-hovertext)
    public var hoverText: ArrayOrString?

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
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-hovertemplate) |
    /// [Python](https://plot.ly/python/reference/#isosurface-hovertemplate) |
    /// [R](https://plot.ly/r/reference/#isosurface-hovertemplate)
    public var hoverTemplate: ArrayOrString?

    /// Determines whether or not the color domain is computed with respect to the input data (here `value`) or the bounds set in `cmin` and `cmax`  Defaults to `false` when `cmin` and `cmax` are set by the user.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-cauto) |
    /// [Python](https://plot.ly/python/reference/#isosurface-cauto) |
    /// [R](https://plot.ly/r/reference/#isosurface-cauto)
    public var cAuto: Bool?

    /// Sets the lower bound of the color domain. 
    ///
    /// Value should have the same units as `value` and if set, `cmax` must be set as well.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-cmin) |
    /// [Python](https://plot.ly/python/reference/#isosurface-cmin) |
    /// [R](https://plot.ly/r/reference/#isosurface-cmin)
    public var cMin: Double?

    /// Sets the upper bound of the color domain. 
    ///
    /// Value should have the same units as `value` and if set, `cmin` must be set as well.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-cmax) |
    /// [Python](https://plot.ly/python/reference/#isosurface-cmax) |
    /// [R](https://plot.ly/r/reference/#isosurface-cmax)
    public var cMax: Double?

    /// Sets the mid-point of the color domain by scaling `cmin` and/or `cmax` to be equidistant to this point. 
    ///
    /// Value should have the same units as `value`. Has no effect when `cauto` is `false`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-cmid) |
    /// [Python](https://plot.ly/python/reference/#isosurface-cmid) |
    /// [R](https://plot.ly/r/reference/#isosurface-cmid)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-colorscale) |
    /// [Python](https://plot.ly/python/reference/#isosurface-colorscale) |
    /// [R](https://plot.ly/r/reference/#isosurface-colorscale)
    public var colorScale: ColorScale?

    /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `colorscale`. 
    ///
    /// In case `colorscale` is unspecified or `autocolorscale` is true, the default palette will be
    /// chosen according to whether numbers in the `color` array are all positive, all negative or
    /// mixed.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-autocolorscale) |
    /// [Python](https://plot.ly/python/reference/#isosurface-autocolorscale) |
    /// [R](https://plot.ly/r/reference/#isosurface-autocolorscale)
    public var autoColorScale: Bool?

    /// Reverses the color mapping if true. 
    ///
    /// If true, `cmin` will correspond to the last color in the array and `cmax` will correspond to the
    /// first color.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-reversescale) |
    /// [Python](https://plot.ly/python/reference/#isosurface-reversescale) |
    /// [R](https://plot.ly/r/reference/#isosurface-reversescale)
    public var reverseScale: Bool?

    /// Determines whether or not a colorbar is displayed for this trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-showscale) |
    /// [Python](https://plot.ly/python/reference/#isosurface-showscale) |
    /// [R](https://plot.ly/r/reference/#isosurface-showscale)
    public var showScale: Bool?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-colorbar) |
    /// [Python](https://plot.ly/python/reference/#isosurface-colorbar) |
    /// [R](https://plot.ly/r/reference/#isosurface-colorbar)
    public var colorBar: Shared.ColorBar?

    /// Sets a reference to a shared color axis. 
    ///
    /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
    /// for these shared color axes are set in the layout, under `layout.coloraxis`,
    /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-coloraxis) |
    /// [Python](https://plot.ly/python/reference/#isosurface-coloraxis) |
    /// [R](https://plot.ly/r/reference/#isosurface-coloraxis)
    public var colorAxis: SubPlotID?

    /// Sets the opacity of the surface. 
    ///
    /// Please note that in the case of using high `opacity` values for example a value greater than or
    /// equal to 0.5 on two surfaces (and 0.25 with four surfaces), an overlay of multiple transparent
    /// surfaces may not perfectly be sorted in depth by the webgl API. This behavior may be improved in
    /// the near future and is subject to change.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-opacity) |
    /// [Python](https://plot.ly/python/reference/#isosurface-opacity) |
    /// [R](https://plot.ly/r/reference/#isosurface-opacity)
    public var opacity: Double?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-lightposition) |
    /// [Python](https://plot.ly/python/reference/#isosurface-lightposition) |
    /// [R](https://plot.ly/r/reference/#isosurface-lightposition)
    public var lightPosition: Shared.LightPosition?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-lighting) |
    /// [Python](https://plot.ly/python/reference/#isosurface-lighting) |
    /// [R](https://plot.ly/r/reference/#isosurface-lighting)
    public var lighting: Shared.Lighting?

    /// Determines whether or not normal smoothing is applied to the meshes, creating meshes with an angular, low-poly look via flat reflections.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-flatshading) |
    /// [Python](https://plot.ly/python/reference/#isosurface-flatshading) |
    /// [R](https://plot.ly/r/reference/#isosurface-flatshading)
    public var flatShading: Bool?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-contour) |
    /// [Python](https://plot.ly/python/reference/#isosurface-contour) |
    /// [R](https://plot.ly/r/reference/#isosurface-contour)
    public var contour: Shared.ContourHover?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-hoverinfo) |
    /// [Python](https://plot.ly/python/reference/#isosurface-hoverinfo) |
    /// [R](https://plot.ly/r/reference/#isosurface-hoverinfo)
    public var hoverInfo: Shared.HoverInfo?

    /// Sets a reference between this trace's 3D coordinate system and a 3D scene. 
    ///
    /// If *scene* (the default value), the (x,y,z) coordinates refer to `layout.scene`. If *scene2*,
    /// the (x,y,z) coordinates refer to `layout.scene2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#isosurface-scene) |
    /// [Python](https://plot.ly/python/reference/#isosurface-scene) |
    /// [R](https://plot.ly/r/reference/#isosurface-scene)
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
        case lightPosition = "lightposition"
        case lighting
        case flatShading = "flatshading"
        case contour
        case hoverInfo = "hoverinfo"
        case scene
    }
    
    public init(visible: Shared.Visible? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: ArrayOrAnything? = nil, hoverLabel: Shared.HoverLabel? = nil, stream: Shared.Stream? = nil, uiRevision: Anything? = nil, x: XData? = nil, y: YData? = nil, z: ZData? = nil, value: [Double]? = nil, isoMin: Double? = nil, isoMax: Double? = nil, surface: Surface? = nil, spaceFrame: SpaceFrame? = nil, slices: Slices? = nil, caps: Caps? = nil, text: ArrayOrString? = nil, hoverText: ArrayOrString? = nil, hoverTemplate: ArrayOrString? = nil, cAuto: Bool? = nil, cMin: Double? = nil, cMax: Double? = nil, cMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: Shared.ColorBar? = nil, colorAxis: SubPlotID? = nil, opacity: Double? = nil, lightPosition: Shared.LightPosition? = nil, lighting: Shared.Lighting? = nil, flatShading: Bool? = nil, contour: Shared.ContourHover? = nil, hoverInfo: Shared.HoverInfo? = nil, scene: SubPlotID? = nil) {
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
        self.lightPosition = lightPosition
        self.lighting = lighting
        self.flatShading = flatShading
        self.contour = contour
        self.hoverInfo = hoverInfo
        self.scene = scene
    }
}