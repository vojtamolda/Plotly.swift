/// The data the describes the coordinates of the surface is set in `z`. 
///
/// Data in `z` should be a {2D array}. Coordinates in `x` and `y` can either be 1D {arrays} or {2D
/// arrays} (e.g. to graph parametric surfaces). If not provided in `x` and `y`, the x and y
/// coordinates are assumed to be linear starting at 0 with a unit step. The color scale corresponds
/// to the `z` values by default. For custom color scales, use `surfacecolor` which should be a {2D
/// array}, where its bounds can be controlled using `cmin` and `cmax`.
public struct Surface: Trace {
    public let type: String = "surface"

    public let animatable: Bool = false

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

    public var hoverLabel: HoverLabel1?

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

    /// Sets the z coordinates.
    public var z: [Double]?

    /// Sets the x coordinates.
    public var x: [Double]?

    /// Sets the y coordinates.
    public var y: [Double]?

    /// Sets the text elements associated with each z value. 
    ///
    /// If trace `hoverinfo` contains a *text* flag and *hovertext* is not set, these elements will be
    /// seen in the hover labels.
    public var text: String?

    /// Same as `text`.
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
    public var hoverTemplate: String?

    /// Determines whether or not gaps (i.e. 
    ///
    /// {nan} or missing values) in the `z` data are filled in.
    public var connectGaps: Bool?

    /// Sets the surface color values, used for setting a color scale independent of `z`.
    public var surfaceColor: [Double]?

    /// Determines whether or not the color domain is computed with respect to the input data (here z or surfacecolor) or the bounds set in `cmin` and `cmax`  Defaults to `false` when `cmin` and `cmax` are set by the user.
    public var cAuto: Bool?

    /// Sets the lower bound of the color domain. 
    ///
    /// Value should have the same units as z or surfacecolor and if set, `cmax` must be set as well.
    public var cMin: Double?

    /// Sets the upper bound of the color domain. 
    ///
    /// Value should have the same units as z or surfacecolor and if set, `cmin` must be set as well.
    public var cMax: Double?

    /// Sets the mid-point of the color domain by scaling `cmin` and/or `cmax` to be equidistant to this point. 
    ///
    /// Value should have the same units as z or surfacecolor. Has no effect when `cauto` is `false`.
    public var cMiddle: Double?

    /// Sets the colorscale. 
    ///
    /// The colorscale must be an array containing arrays mapping a normalized value to an rgb, rgba,
    /// hex, hsl, hsv, or named color string. At minimum, a mapping for the lowest (0) and highest (1)
    /// values are required. For example, `[[0, 'rgb(0,0,255)'], [1, 'rgb(255,0,0)']]`. To control the
    /// bounds of the colorscale in color space, use`cmin` and `cmax`. Alternatively, `colorscale` may
    /// be a palette name string of the following list:
    /// Greys,YlGnBu,Greens,YlOrRd,Bluered,RdBu,Reds,Blues,Picnic,Rainbow,Portland,Jet,Hot,Blackbody,Earth,Electric,Viridis,Cividis.
    public var colorScale: ColorScale?

    /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `colorscale`. 
    ///
    /// In case `colorscale` is unspecified or `autocolorscale` is true, the default palette will be
    /// chosen according to whether numbers in the `color` array are all positive, all negative or
    /// mixed.
    public var autoColorScale: Bool?

    /// Reverses the color mapping if true. 
    ///
    /// If true, `cmin` will correspond to the last color in the array and `cmax` will correspond to the
    /// first color.
    public var reverseScale: Bool?

    /// Determines whether or not a colorbar is displayed for this trace.
    public var showScale: Bool?

    public var colorBar: ColorBar0?

    /// Sets a reference to a shared color axis. 
    ///
    /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
    /// for these shared color axes are set in the layout, under `layout.coloraxis`,
    /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
    public var colorAxis: SubPlotID?

    public var contours: Up0?

    /// Determines whether or not a surface is drawn. 
    ///
    /// For example, set `hidesurface` to *false* `contours.x.show` to *true* and `contours.y.show` to
    /// *true* to draw a wire frame plot.
    public var hideSurface: Bool?

    public var lightPosition: Up0?

    /// - traces/surface/attributes/lighting
    public struct Lighting: Encodable {
        /// Ambient light increases overall color visibility but can wash out the image.
        public var ambient: Double?
    
        /// Represents the extent that incident rays are reflected in a range of angles.
        public var diffuse: Double?
    
        /// Represents the level that incident rays are reflected in a single direction, causing shine.
        public var specular: Double?
    
        /// Alters specular reflection; the rougher the surface, the wider and less contrasty the shine.
        public var roughness: Double?
    
        /// Represents the reflectance as a dependency of the viewing angle; e.g. 
        ///
        /// paper is reflective when viewing it from the edge of the paper (almost 90 degrees), causing
        /// shine.
        public var fresnel: Double?
    
        public init(ambient: Double? = nil, diffuse: Double? = nil, specular: Double? = nil, roughness: Double? = nil, fresnel: Double? = nil) {
            self.ambient = ambient
            self.diffuse = diffuse
            self.specular = specular
            self.roughness = roughness
            self.fresnel = fresnel
        }
    }
    public var lighting: Lighting?

    /// Sets the opacity of the surface. 
    ///
    /// Please note that in the case of using high `opacity` values for example a value greater than or
    /// equal to 0.5 on two surfaces (and 0.25 with four surfaces), an overlay of multiple transparent
    /// surfaces may not perfectly be sorted in depth by the webgl API. This behavior may be improved in
    /// the near future and is subject to change.
    public var opacity: Double?

    /// - traces/surface/attributes/_deprecated
    public struct Deprecated: Encodable {
        public var zAuto: ImpliedEdits0?
    
        public var zMin: ImpliedEdits0?
    
        public var zMax: ImpliedEdits0?
    
        public init(zAuto: ImpliedEdits0? = nil, zMin: ImpliedEdits0? = nil, zMax: ImpliedEdits0? = nil) {
            self.zAuto = zAuto
            self.zMin = zMin
            self.zMax = zMax
        }
    }
    public var deprecated: Deprecated?

    public var hoverInfo: HoverInfo1?

    public var xCalendar: Calendar0?

    public var yCalendar: Calendar0?

    public var zCalendar: Calendar0?

    /// Sets a reference between this trace's 3D coordinate system and a 3D scene. 
    ///
    /// If *scene* (the default value), the (x,y,z) coordinates refer to `layout.scene`. If *scene2*,
    /// the (x,y,z) coordinates refer to `layout.scene2`, and so on.
    public var scene: SubPlotID?

    /// Sets the source reference on plot.ly for  ids .
    public var idsSource: String?

    /// Sets the source reference on plot.ly for  customdata .
    public var customDataSource: String?

    /// Sets the source reference on plot.ly for  meta .
    public var metaSource: String?

    /// Sets the source reference on plot.ly for  z .
    public var zSource: String?

    /// Sets the source reference on plot.ly for  x .
    public var xSource: String?

    /// Sets the source reference on plot.ly for  y .
    public var ySource: String?

    /// Sets the source reference on plot.ly for  text .
    public var textSource: String?

    /// Sets the source reference on plot.ly for  hovertext .
    public var hoverTextSource: String?

    /// Sets the source reference on plot.ly for  hovertemplate .
    public var hoverTemplateSource: String?

    /// Sets the source reference on plot.ly for  surfacecolor .
    public var surfaceColorSource: String?

    /// Sets the source reference on plot.ly for  hoverinfo .
    public var hoverInfoSource: String?

    public init(visible: Visible0? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, hoverLabel: HoverLabel1? = nil, stream: Stream0? = nil, uiRevision: Anything? = nil, z: [Double]? = nil, x: [Double]? = nil, y: [Double]? = nil, text: String? = nil, hoverText: String? = nil, hoverTemplate: String? = nil, connectGaps: Bool? = nil, surfaceColor: [Double]? = nil, cAuto: Bool? = nil, cMin: Double? = nil, cMax: Double? = nil, cMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: ColorBar0? = nil, colorAxis: SubPlotID? = nil, contours: Up0? = nil, hideSurface: Bool? = nil, lightPosition: Up0? = nil, lighting: Lighting? = nil, opacity: Double? = nil, deprecated: Deprecated? = nil, hoverInfo: HoverInfo1? = nil, xCalendar: Calendar0? = nil, yCalendar: Calendar0? = nil, zCalendar: Calendar0? = nil, scene: SubPlotID? = nil, idsSource: String? = nil, customDataSource: String? = nil, metaSource: String? = nil, zSource: String? = nil, xSource: String? = nil, ySource: String? = nil, textSource: String? = nil, hoverTextSource: String? = nil, hoverTemplateSource: String? = nil, surfaceColorSource: String? = nil, hoverInfoSource: String? = nil) {
        self.visible = visible
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
        self.deprecated = deprecated
        self.hoverInfo = hoverInfo
        self.xCalendar = xCalendar
        self.yCalendar = yCalendar
        self.zCalendar = zCalendar
        self.scene = scene
        self.idsSource = idsSource
        self.customDataSource = customDataSource
        self.metaSource = metaSource
        self.zSource = zSource
        self.xSource = xSource
        self.ySource = ySource
        self.textSource = textSource
        self.hoverTextSource = hoverTextSource
        self.hoverTemplateSource = hoverTemplateSource
        self.surfaceColorSource = surfaceColorSource
        self.hoverInfoSource = hoverInfoSource
    }
}