
// Warning: This file is automatically generated and your changes will be overwritten.
// See `Sources/Codegen/Readme.md` for more details.


/// The data the describes the coordinates of the surface is set in `z`.
/// 
/// Data in `z` should be a {2D array}. Coordinates in `x` and `y` can either be 1D {arrays} or {2D
/// arrays} (e.g. to graph parametric surfaces). If not provided in `x` and `y`, the x and y
/// coordinates are assumed to be linear starting at 0 with a unit step. The color scale corresponds
/// to the `z` values by default. For custom color scales, use `surfacecolor` which should be a {2D
/// array}, where its bounds can be controlled using `cmin` and `cmax`.
/// 
/// - SeeAlso:
///   Documentation for 
///   [Python](https://plot.ly/python/reference/#surface), 
///   [JavaScript](https://plot.ly/javascript/reference/#surface) or 
///   [R](https://plot.ly/r/reference/#surface)
public struct Surface<ZSurfaceData, XYData>: Trace, SceneSubplot where ZSurfaceData: Plotable, XYData: Plotable {
    /// Corresponding _Plotly_ trace type.
    public let type: String = "surface"

    /// Switch indicating whether the trace supports animation of its data.
    public static var animatable: Bool { false }

    /// Determines whether or not this trace is visible.
    /// 
    /// If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the
    /// legend itself is visible).
    public var visible: Visible? = nil

    /// Sets the legend group for this trace.
    /// 
    /// Traces part of the same legend group hide/show at the same time when toggling legend items.
    public var legendGroup: String? = nil

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

    public var hoverLabel: HoverLabel? = nil

    public var stream: Stream? = nil

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

    /// Sets the z coordinates.
    public var z: ZSurfaceData? = nil

    /// Sets the x coordinates.
    public var x: XYData? = nil

    /// Sets the y coordinates.
    public var y: XYData? = nil

    /// Sets the text elements associated with each z value.
    /// 
    /// If trace `hoverinfo` contains a *text* flag and *hovertext* is not set, these elements will be
    /// seen in the hover labels.
    public var text: Data<String>? = nil

    /// Same as `text`.
    public var hoverText: Data<String>? = nil

    /// Template string used for rendering the information that appear on hover box.
    /// 
    /// Note that this will override `hoverinfo`. Variables are inserted using %{variable}, for example
    /// "y: %{y}". Numbers are formatted using d3-format's syntax %{variable:d3-format}, for example
    /// "Price: %{y:$.2f}".
    /// https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format for details on
    /// the formatting syntax. Dates are formatted using d3-time-format's syntax
    /// %{variable|d3-time-format}, for example "Day: %{2019-01-01|%A}".
    /// https://github.com/d3/d3-time-format#locale_format for details on the date formatting syntax.
    /// The variables available in `hovertemplate` are the ones emitted as event data described at this
    /// link https://plotly.com/javascript/plotlyjs-events/#event-data. Additionally, every attributes
    /// that can be specified per-point (the ones that are `arrayOk: true`) are available. Anything
    /// contained in tag `<extra>` is displayed in the secondary box, for example
    /// "<extra>{fullData.name}</extra>". To hide the secondary box completely, use an empty tag
    /// `<extra></extra>`.
    public var hoverTemplate: Data<String>? = nil

    /// Determines whether or not gaps (i.e.
    /// 
    /// {nan} or missing values) in the `z` data are filled in.
    public var connectGaps: Bool? = nil

    /// Sets the surface color values, used for setting a color scale independent of `z`.
    public var surfaceColor: ZSurfaceData? = nil

    /// Determines whether or not the color domain is computed with respect to the input data (here z or
    /// surfacecolor) or the bounds set in `cmin` and `cmax` Defaults to `false` when `cmin` and `cmax`
    /// are set by the user.
    public var cAuto: Bool? = nil

    /// Sets the lower bound of the color domain.
    /// 
    /// Value should have the same units as z or surfacecolor and if set, `cmax` must be set as well.
    public var cMin: Double? = nil

    /// Sets the upper bound of the color domain.
    /// 
    /// Value should have the same units as z or surfacecolor and if set, `cmin` must be set as well.
    public var cMax: Double? = nil

    /// Sets the mid-point of the color domain by scaling `cmin` and/or `cmax` to be equidistant to this
    /// point.
    /// 
    /// Value should have the same units as z or surfacecolor. Has no effect when `cauto` is `false`.
    public var cMiddle: Double? = nil

    /// Sets the colorscale.
    /// 
    /// The colorscale must be an array containing arrays mapping a normalized value to an rgb, rgba,
    /// hex, hsl, hsv, or named color string. At minimum, a mapping for the lowest (0) and highest (1)
    /// values are required. For example, `[[0, 'rgb(0,0,255)'], [1, 'rgb(255,0,0)']]`. To control the
    /// bounds of the colorscale in color space, use`cmin` and `cmax`. Alternatively, `colorscale` may
    /// be a palette name string of the following list:
    /// Greys,YlGnBu,Greens,YlOrRd,Bluered,RdBu,Reds,Blues,Picnic,Rainbow,Portland,Jet,Hot,Blackbody,Earth,Electric,Viridis,Cividis.
    public var colorScale: ColorScale? = nil

    /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette
    /// determined by `colorscale`.
    /// 
    /// In case `colorscale` is unspecified or `autocolorscale` is true, the default palette will be
    /// chosen according to whether numbers in the `color` array are all positive, all negative or
    /// mixed.
    public var autoColorScale: Bool? = nil

    /// Reverses the color mapping if true.
    /// 
    /// If true, `cmin` will correspond to the last color in the array and `cmax` will correspond to the
    /// first color.
    public var reverseScale: Bool? = nil

    /// Determines whether or not a colorbar is displayed for this trace.
    public var showScale: Bool? = nil

    public var colorBar: ColorBar? = nil

    /// Sets a reference to a shared color axis.
    /// 
    /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
    /// for these shared color axes are set in the layout, under `layout.coloraxis`,
    /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
    public var colorAxis: ColorAxis = .preset

    public struct Contours: Encodable {
        public struct X: Encodable {
            /// Determines whether or not contour lines about the x dimension are drawn.
            public var show: Bool? = nil
        
            /// Sets the starting contour level value.
            /// 
            /// Must be less than `contours.end`
            public var start: Double? = nil
        
            /// Sets the end contour level value.
            /// 
            /// Must be more than `contours.start`
            public var end: Double? = nil
        
            /// Sets the step between each contour level.
            /// 
            /// Must be positive.
            public var size: Double? = nil
        
            public var project: Projection? = nil
        
            /// Sets the color of the contour lines.
            public var color: Color? = nil
        
            /// An alternate to *color*.
            /// 
            /// Determines whether or not the contour lines are colored using the trace *colorscale*.
            public var useColormap: Bool? = nil
        
            /// Sets the width of the contour lines.
            public var width: Double? = nil
        
            /// Determines whether or not contour lines about the x dimension are highlighted on hover.
            public var highlight: Bool? = nil
        
            /// Sets the color of the highlighted contour lines.
            public var highlightColor: Color? = nil
        
            /// Sets the width of the highlighted contour lines.
            public var highlightWidth: Double? = nil
        
            /// Decoding and encoding keys compatible with Plotly schema.
            enum CodingKeys: String, CodingKey {
                case show
                case start
                case end
                case size
                case project
                case color
                case useColormap = "usecolormap"
                case width
                case highlight
                case highlightColor = "highlightcolor"
                case highlightWidth = "highlightwidth"
            }
            
            /// Creates `X` object with specified properties.
            /// 
            /// - Parameters:
            ///   - show: Determines whether or not contour lines about the x dimension are drawn.
            ///   - start: Sets the starting contour level value.
            ///   - end: Sets the end contour level value.
            ///   - size: Sets the step between each contour level.
            ///   - project:
            ///   - color: Sets the color of the contour lines.
            ///   - useColormap: An alternate to *color*.
            ///   - width: Sets the width of the contour lines.
            ///   - highlight: Determines whether or not contour lines about the x dimension are highlighted on
            ///   hover.
            ///   - highlightColor: Sets the color of the highlighted contour lines.
            ///   - highlightWidth: Sets the width of the highlighted contour lines.
            public init(show: Bool? = nil, start: Double? = nil, end: Double? = nil, size: Double? = nil,
                    project: Projection? = nil, color: Color? = nil, useColormap: Bool? = nil, width: Double? = nil,
                    highlight: Bool? = nil, highlightColor: Color? = nil, highlightWidth: Double? = nil) {
                self.show = show
                self.start = start
                self.end = end
                self.size = size
                self.project = project
                self.color = color
                self.useColormap = useColormap
                self.width = width
                self.highlight = highlight
                self.highlightColor = highlightColor
                self.highlightWidth = highlightWidth
            }
            
        }
        public var x: X? = nil
    
        public struct Y: Encodable {
            /// Determines whether or not contour lines about the y dimension are drawn.
            public var show: Bool? = nil
        
            /// Sets the starting contour level value.
            /// 
            /// Must be less than `contours.end`
            public var start: Double? = nil
        
            /// Sets the end contour level value.
            /// 
            /// Must be more than `contours.start`
            public var end: Double? = nil
        
            /// Sets the step between each contour level.
            /// 
            /// Must be positive.
            public var size: Double? = nil
        
            public var project: Projection? = nil
        
            /// Sets the color of the contour lines.
            public var color: Color? = nil
        
            /// An alternate to *color*.
            /// 
            /// Determines whether or not the contour lines are colored using the trace *colorscale*.
            public var useColormap: Bool? = nil
        
            /// Sets the width of the contour lines.
            public var width: Double? = nil
        
            /// Determines whether or not contour lines about the y dimension are highlighted on hover.
            public var highlight: Bool? = nil
        
            /// Sets the color of the highlighted contour lines.
            public var highlightColor: Color? = nil
        
            /// Sets the width of the highlighted contour lines.
            public var highlightWidth: Double? = nil
        
            /// Decoding and encoding keys compatible with Plotly schema.
            enum CodingKeys: String, CodingKey {
                case show
                case start
                case end
                case size
                case project
                case color
                case useColormap = "usecolormap"
                case width
                case highlight
                case highlightColor = "highlightcolor"
                case highlightWidth = "highlightwidth"
            }
            
            /// Creates `Y` object with specified properties.
            /// 
            /// - Parameters:
            ///   - show: Determines whether or not contour lines about the y dimension are drawn.
            ///   - start: Sets the starting contour level value.
            ///   - end: Sets the end contour level value.
            ///   - size: Sets the step between each contour level.
            ///   - project:
            ///   - color: Sets the color of the contour lines.
            ///   - useColormap: An alternate to *color*.
            ///   - width: Sets the width of the contour lines.
            ///   - highlight: Determines whether or not contour lines about the y dimension are highlighted on
            ///   hover.
            ///   - highlightColor: Sets the color of the highlighted contour lines.
            ///   - highlightWidth: Sets the width of the highlighted contour lines.
            public init(show: Bool? = nil, start: Double? = nil, end: Double? = nil, size: Double? = nil,
                    project: Projection? = nil, color: Color? = nil, useColormap: Bool? = nil, width: Double? = nil,
                    highlight: Bool? = nil, highlightColor: Color? = nil, highlightWidth: Double? = nil) {
                self.show = show
                self.start = start
                self.end = end
                self.size = size
                self.project = project
                self.color = color
                self.useColormap = useColormap
                self.width = width
                self.highlight = highlight
                self.highlightColor = highlightColor
                self.highlightWidth = highlightWidth
            }
            
        }
        public var y: Y? = nil
    
        public struct Z: Encodable {
            /// Determines whether or not contour lines about the z dimension are drawn.
            public var show: Bool? = nil
        
            /// Sets the starting contour level value.
            /// 
            /// Must be less than `contours.end`
            public var start: Double? = nil
        
            /// Sets the end contour level value.
            /// 
            /// Must be more than `contours.start`
            public var end: Double? = nil
        
            /// Sets the step between each contour level.
            /// 
            /// Must be positive.
            public var size: Double? = nil
        
            public var project: Projection? = nil
        
            /// Sets the color of the contour lines.
            public var color: Color? = nil
        
            /// An alternate to *color*.
            /// 
            /// Determines whether or not the contour lines are colored using the trace *colorscale*.
            public var useColormap: Bool? = nil
        
            /// Sets the width of the contour lines.
            public var width: Double? = nil
        
            /// Determines whether or not contour lines about the z dimension are highlighted on hover.
            public var highlight: Bool? = nil
        
            /// Sets the color of the highlighted contour lines.
            public var highlightColor: Color? = nil
        
            /// Sets the width of the highlighted contour lines.
            public var highlightWidth: Double? = nil
        
            /// Decoding and encoding keys compatible with Plotly schema.
            enum CodingKeys: String, CodingKey {
                case show
                case start
                case end
                case size
                case project
                case color
                case useColormap = "usecolormap"
                case width
                case highlight
                case highlightColor = "highlightcolor"
                case highlightWidth = "highlightwidth"
            }
            
            /// Creates `Z` object with specified properties.
            /// 
            /// - Parameters:
            ///   - show: Determines whether or not contour lines about the z dimension are drawn.
            ///   - start: Sets the starting contour level value.
            ///   - end: Sets the end contour level value.
            ///   - size: Sets the step between each contour level.
            ///   - project:
            ///   - color: Sets the color of the contour lines.
            ///   - useColormap: An alternate to *color*.
            ///   - width: Sets the width of the contour lines.
            ///   - highlight: Determines whether or not contour lines about the z dimension are highlighted on
            ///   hover.
            ///   - highlightColor: Sets the color of the highlighted contour lines.
            ///   - highlightWidth: Sets the width of the highlighted contour lines.
            public init(show: Bool? = nil, start: Double? = nil, end: Double? = nil, size: Double? = nil,
                    project: Projection? = nil, color: Color? = nil, useColormap: Bool? = nil, width: Double? = nil,
                    highlight: Bool? = nil, highlightColor: Color? = nil, highlightWidth: Double? = nil) {
                self.show = show
                self.start = start
                self.end = end
                self.size = size
                self.project = project
                self.color = color
                self.useColormap = useColormap
                self.width = width
                self.highlight = highlight
                self.highlightColor = highlightColor
                self.highlightWidth = highlightWidth
            }
            
        }
        public var z: Z? = nil
    
        /// Creates `Contours` object with specified properties.
        public init(x: X? = nil, y: Y? = nil, z: Z? = nil) {
            self.x = x
            self.y = y
            self.z = z
        }
        
    }
    public var contours: Contours? = nil

    /// Determines whether or not a surface is drawn.
    /// 
    /// For example, set `hidesurface` to *false* `contours.x.show` to *true* and `contours.y.show` to
    /// *true* to draw a wire frame plot.
    public var hideSurface: Bool? = nil

    public var lightPosition: LightPosition? = nil

    public struct Lighting: Encodable {
        /// Ambient light increases overall color visibility but can wash out the image.
        public var ambient: Double? = nil
    
        /// Represents the extent that incident rays are reflected in a range of angles.
        public var diffuse: Double? = nil
    
        /// Represents the level that incident rays are reflected in a single direction, causing shine.
        public var specular: Double? = nil
    
        /// Alters specular reflection; the rougher the surface, the wider and less contrasty the shine.
        public var roughness: Double? = nil
    
        /// Represents the reflectance as a dependency of the viewing angle; e.g.
        /// 
        /// paper is reflective when viewing it from the edge of the paper (almost 90 degrees), causing
        /// shine.
        public var fresnel: Double? = nil
    
        /// Creates `Lighting` object with specified properties.
        /// 
        /// - Parameters:
        ///   - ambient: Ambient light increases overall color visibility but can wash out the image.
        ///   - diffuse: Represents the extent that incident rays are reflected in a range of angles.
        ///   - specular: Represents the level that incident rays are reflected in a single direction, causing
        ///   shine.
        ///   - roughness: Alters specular reflection; the rougher the surface, the wider and less contrasty
        ///   the shine.
        ///   - fresnel: Represents the reflectance as a dependency of the viewing angle; e.g.
        public init(ambient: Double? = nil, diffuse: Double? = nil, specular: Double? = nil, roughness:
                Double? = nil, fresnel: Double? = nil) {
            self.ambient = ambient
            self.diffuse = diffuse
            self.specular = specular
            self.roughness = roughness
            self.fresnel = fresnel
        }
        
    }
    public var lighting: Lighting? = nil

    /// Sets the opacity of the surface.
    /// 
    /// Please note that in the case of using high `opacity` values for example a value greater than or
    /// equal to 0.5 on two surfaces (and 0.25 with four surfaces), an overlay of multiple transparent
    /// surfaces may not perfectly be sorted in depth by the webgl API. This behavior may be improved in
    /// the near future and is subject to change.
    public var opacity: Double? = nil

    /// Sets the opacityscale.
    /// 
    /// The opacityscale must be an array containing arrays mapping a normalized value to an opacity
    /// value. At minimum, a mapping for the lowest (0) and highest (1) values are required. For
    /// example, `[[0, 1], [0.5, 0.2], [1, 1]]` means that higher/lower values would have higher opacity
    /// values and those in the middle would be more transparent Alternatively, `opacityscale` may be a
    /// palette name string of the following list: 'min', 'max', 'extremes' and 'uniform'. The default
    /// is 'uniform'.
    public var opacityScale: Anything? = nil

    /// Determines which trace information appear on hover.
    /// 
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    public var hoverInfo: HoverInfo? = nil

    /// Determines whether or not an item corresponding to this trace is shown in the legend.
    public var showLegend: Bool? = nil

    /// Sets the calendar system to use with `x` date data.
    public var xCalendar: Calendar? = nil

    /// Sets the calendar system to use with `y` date data.
    public var yCalendar: Calendar? = nil

    /// Sets the calendar system to use with `z` date data.
    public var zCalendar: Calendar? = nil

    /// Sets a reference between this trace's 3D coordinate system and a 3D scene.
    /// 
    /// If *scene* (the default value), the (x,y,z) coordinates refer to `layout.scene`. If *scene2*,
    /// the (x,y,z) coordinates refer to `layout.scene2`, and so on.
    public var scene: Scene = .preset

    /// Decoding and encoding keys compatible with Plotly schema.
    enum CodingKeys: String, CodingKey {
        case type
        case visible
        case legendGroup = "legendgroup"
        case name
        case uid
        case ids
        case customData = "customdata"
        case meta
        case hoverLabel = "hoverlabel"
        case stream
        case uiRevision = "uirevision"
        case z
        case x
        case y
        case text
        case hoverText = "hovertext"
        case hoverTemplate = "hovertemplate"
        case connectGaps = "connectgaps"
        case surfaceColor = "surfacecolor"
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
        case contours
        case hideSurface = "hidesurface"
        case lightPosition = "lightposition"
        case lighting
        case opacity
        case opacityScale = "opacityscale"
        case hoverInfo = "hoverinfo"
        case showLegend = "showlegend"
        case xCalendar = "xcalendar"
        case yCalendar = "ycalendar"
        case zCalendar = "zcalendar"
        case scene
    }
    
    /// Creates `Surface` object from the most frequently used properties.
    /// 
    /// - Parameters:
    ///   - name: Sets the trace name.
    ///   - z: Sets the z coordinates.
    ///   - x: Sets the x coordinates.
    ///   - y: Sets the y coordinates.
    ///   - text: Sets the text elements associated with each z value.
    ///   - hoverText: Same as `text`.
    ///   - surfaceColor: Sets the surface color values, used for setting a color scale independent of
    ///   `z`.
    ///   - colorScale: Sets the colorscale.
    ///   - reverseScale: Reverses the color mapping if true.
    public init(name: String? = nil, z: ZSurfaceData? = nil, x: XYData? = nil, y: XYData? = nil,
            text: Data<String>? = nil, hoverText: Data<String>? = nil, surfaceColor: ZSurfaceData? = nil,
            colorScale: ColorScale? = nil, reverseScale: Bool? = nil) {
        self.name = name
        self.z = z
        self.x = x
        self.y = y
        self.text = text
        self.hoverText = hoverText
        self.surfaceColor = surfaceColor
        self.colorScale = colorScale
        self.reverseScale = reverseScale
    }
    
    /// Creates `Surface` object with specified properties.
    /// 
    /// - Parameters:
    ///   - visible: Determines whether or not this trace is visible.
    ///   - legendGroup: Sets the legend group for this trace.
    ///   - name: Sets the trace name.
    ///   - uid: Assign an id to this trace, Use this to provide object constancy between traces during
    ///   animations and transitions.
    ///   - ids: Assigns id labels to each datum.
    ///   - customData: Assigns extra data each datum.
    ///   - meta: Assigns extra meta information associated with this trace that can be used in various
    ///   text attributes.
    ///   - hoverLabel:
    ///   - stream:
    ///   - uiRevision: Controls persistence of some user-driven changes to the trace: `constraintrange`
    ///   in `parcoords` traces, as well as some `editable: true` modifications such as `name` and
    ///   `colorbar.title`.
    ///   - z: Sets the z coordinates.
    ///   - x: Sets the x coordinates.
    ///   - y: Sets the y coordinates.
    ///   - text: Sets the text elements associated with each z value.
    ///   - hoverText: Same as `text`.
    ///   - hoverTemplate: Template string used for rendering the information that appear on hover box.
    ///   - connectGaps: Determines whether or not gaps (i.e.
    ///   - surfaceColor: Sets the surface color values, used for setting a color scale independent of
    ///   `z`.
    ///   - cAuto: Determines whether or not the color domain is computed with respect to the input data
    ///   (here z or surfacecolor) or the bounds set in `cmin` and `cmax` Defaults to `false` when `cmin`
    ///   and `cmax` are set by the user.
    ///   - cMin: Sets the lower bound of the color domain.
    ///   - cMax: Sets the upper bound of the color domain.
    ///   - cMiddle: Sets the mid-point of the color domain by scaling `cmin` and/or `cmax` to be
    ///   equidistant to this point.
    ///   - colorScale: Sets the colorscale.
    ///   - autoColorScale: Determines whether the colorscale is a default palette (`autocolorscale:
    ///   true`) or the palette determined by `colorscale`.
    ///   - reverseScale: Reverses the color mapping if true.
    ///   - showScale: Determines whether or not a colorbar is displayed for this trace.
    ///   - colorBar:
    ///   - colorAxis: Sets a reference to a shared color axis.
    ///   - contours:
    ///   - hideSurface: Determines whether or not a surface is drawn.
    ///   - lightPosition:
    ///   - lighting:
    ///   - opacity: Sets the opacity of the surface.
    ///   - opacityScale: Sets the opacityscale.
    ///   - hoverInfo: Determines which trace information appear on hover.
    ///   - showLegend: Determines whether or not an item corresponding to this trace is shown in the
    ///   legend.
    ///   - xCalendar: Sets the calendar system to use with `x` date data.
    ///   - yCalendar: Sets the calendar system to use with `y` date data.
    ///   - zCalendar: Sets the calendar system to use with `z` date data.
    ///   - scene: Sets a reference between this trace's 3D coordinate system and a 3D scene.
    public init(visible: Visible? = nil, legendGroup: String? = nil, name: String? = nil, uid:
            String? = nil, ids: [String]? = nil, customData: [String]? = nil, meta: Data<Anything>? = nil,
            hoverLabel: HoverLabel? = nil, stream: Stream? = nil, uiRevision: Anything? = nil, z:
            ZSurfaceData? = nil, x: XYData? = nil, y: XYData? = nil, text: Data<String>? = nil, hoverText:
            Data<String>? = nil, hoverTemplate: Data<String>? = nil, connectGaps: Bool? = nil, surfaceColor:
            ZSurfaceData? = nil, cAuto: Bool? = nil, cMin: Double? = nil, cMax: Double? = nil, cMiddle:
            Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? =
            nil, showScale: Bool? = nil, colorBar: ColorBar? = nil, colorAxis: ColorAxis = .preset,
            contours: Contours? = nil, hideSurface: Bool? = nil, lightPosition: LightPosition? = nil,
            lighting: Lighting? = nil, opacity: Double? = nil, opacityScale: Anything? = nil, hoverInfo:
            HoverInfo? = nil, showLegend: Bool? = nil, xCalendar: Calendar? = nil, yCalendar: Calendar? =
            nil, zCalendar: Calendar? = nil, scene: Scene = .preset) {
        self.visible = visible
        self.legendGroup = legendGroup
        self.name = name
        self.uid = uid
        self.ids = ids
        self.customData = customData
        self.meta = meta
        self.hoverLabel = hoverLabel
        self.stream = stream
        self.uiRevision = uiRevision
        self.z = z
        self.x = x
        self.y = y
        self.text = text
        self.hoverText = hoverText
        self.hoverTemplate = hoverTemplate
        self.connectGaps = connectGaps
        self.surfaceColor = surfaceColor
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
        self.contours = contours
        self.hideSurface = hideSurface
        self.lightPosition = lightPosition
        self.lighting = lighting
        self.opacity = opacity
        self.opacityScale = opacityScale
        self.hoverInfo = hoverInfo
        self.showLegend = showLegend
        self.xCalendar = xCalendar
        self.yCalendar = yCalendar
        self.zCalendar = zCalendar
        self.scene = scene
    }
    
    /// Encodes the object in a format compatible with Plotly.
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encodeIfPresent(visible, forKey: .visible)
        try container.encodeIfPresent(legendGroup, forKey: .legendGroup)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(uid, forKey: .uid)
        try container.encodeIfPresent(ids, forKey: .ids)
        try container.encodeIfPresent(customData, forKey: .customData)
        try container.encodeIfPresent(meta, forKey: .meta)
        try container.encodeIfPresent(hoverLabel, forKey: .hoverLabel)
        try container.encodeIfPresent(stream, forKey: .stream)
        try container.encodeIfPresent(uiRevision, forKey: .uiRevision)
        if let z = self.z {
            try z.encode(toPlotly: container.superEncoder(forKey: .z))
        }
        if let x = self.x {
            try x.encode(toPlotly: container.superEncoder(forKey: .x))
        }
        if let y = self.y {
            try y.encode(toPlotly: container.superEncoder(forKey: .y))
        }
        try container.encodeIfPresent(text, forKey: .text)
        try container.encodeIfPresent(hoverText, forKey: .hoverText)
        try container.encodeIfPresent(hoverTemplate, forKey: .hoverTemplate)
        try container.encodeIfPresent(connectGaps, forKey: .connectGaps)
        if let surfaceColor = self.surfaceColor {
            try surfaceColor.encode(toPlotly: container.superEncoder(forKey: .surfaceColor))
        }
        try container.encodeIfPresent(cAuto, forKey: .cAuto)
        try container.encodeIfPresent(cMin, forKey: .cMin)
        try container.encodeIfPresent(cMax, forKey: .cMax)
        try container.encodeIfPresent(cMiddle, forKey: .cMiddle)
        try container.encodeIfPresent(colorScale, forKey: .colorScale)
        try container.encodeIfPresent(autoColorScale, forKey: .autoColorScale)
        try container.encodeIfPresent(reverseScale, forKey: .reverseScale)
        try container.encodeIfPresent(showScale, forKey: .showScale)
        try container.encodeIfPresent(colorBar, forKey: .colorBar)
        try container.encode("coloraxis\(colorAxis.uid)", forKey: .colorAxis)
        try container.encodeIfPresent(contours, forKey: .contours)
        try container.encodeIfPresent(hideSurface, forKey: .hideSurface)
        try container.encodeIfPresent(lightPosition, forKey: .lightPosition)
        try container.encodeIfPresent(lighting, forKey: .lighting)
        try container.encodeIfPresent(opacity, forKey: .opacity)
        try container.encodeIfPresent(opacityScale, forKey: .opacityScale)
        try container.encodeIfPresent(hoverInfo, forKey: .hoverInfo)
        try container.encodeIfPresent(showLegend, forKey: .showLegend)
        try container.encodeIfPresent(xCalendar, forKey: .xCalendar)
        try container.encodeIfPresent(yCalendar, forKey: .yCalendar)
        try container.encodeIfPresent(zCalendar, forKey: .zCalendar)
        try container.encode("scene\(scene.uid)", forKey: .scene)
    }
}