/// Draws sets of triangles with coordinates given by three 1-dimensional arrays in `x`, `y`, `z` and (1) a sets of `i`, `j`, `k` indices (2) Delaunay triangulation or (3) the Alpha-shape algorithm or (4) the Convex-hull algorithm
public struct Mesh3D: Trace {
    public let type: String = "mesh3d"

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

    /// Sets the X coordinates of the vertices. 
    ///
    /// The nth element of vectors `x`, `y` and `z` jointly represent the X, Y and Z coordinates of the
    /// nth vertex.
    public var x: [Double]?

    /// Sets the Y coordinates of the vertices. 
    ///
    /// The nth element of vectors `x`, `y` and `z` jointly represent the X, Y and Z coordinates of the
    /// nth vertex.
    public var y: [Double]?

    /// Sets the Z coordinates of the vertices. 
    ///
    /// The nth element of vectors `x`, `y` and `z` jointly represent the X, Y and Z coordinates of the
    /// nth vertex.
    public var z: [Double]?

    /// A vector of vertex indices, i.e. 
    ///
    /// integer values between 0 and the length of the vertex vectors, representing the *first* vertex
    /// of a triangle. For example, `{i[m], j[m], k[m]}` together represent face m (triangle m) in the
    /// mesh, where `i[m] = n` points to the triplet `{x[n], y[n], z[n]}` in the vertex arrays.
    /// Therefore, each element in `i` represents a point in space, which is the first vertex of a
    /// triangle.
    public var i: [Double]?

    /// A vector of vertex indices, i.e. 
    ///
    /// integer values between 0 and the length of the vertex vectors, representing the *second* vertex
    /// of a triangle. For example, `{i[m], j[m], k[m]}` together represent face m (triangle m) in the
    /// mesh, where `j[m] = n` points to the triplet `{x[n], y[n], z[n]}` in the vertex arrays.
    /// Therefore, each element in `j` represents a point in space, which is the second vertex of a
    /// triangle.
    public var j: [Double]?

    /// A vector of vertex indices, i.e. 
    ///
    /// integer values between 0 and the length of the vertex vectors, representing the *third* vertex
    /// of a triangle. For example, `{i[m], j[m], k[m]}` together represent face m (triangle m) in the
    /// mesh, where `k[m] = n` points to the triplet `{x[n], y[n], z[n]}` in the vertex arrays.
    /// Therefore, each element in `k` represents a point in space, which is the third vertex of a
    /// triangle.
    public var k: [Double]?

    /// Sets the text elements associated with the vertices. 
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

    /// Sets the Delaunay axis, which is the axis that is perpendicular to the surface of the Delaunay triangulation. 
    ///
    /// It has an effect if `i`, `j`, `k` are not provided and `alphahull` is set to indicate Delaunay
    /// triangulation.
    /// - traces/mesh3d/attributes/delaunayaxis
    public enum DelaunayAxis: String, Encodable {
        case x
        case y
        case z
    }
    public var delaunayAxis: DelaunayAxis?

    /// Determines how the mesh surface triangles are derived from the set of vertices (points) represented by the `x`, `y` and `z` arrays, if the `i`, `j`, `k` arrays are not supplied. 
    ///
    /// For general use of `mesh3d` it is preferred that `i`, `j`, `k` are supplied. If *-1*, Delaunay
    /// triangulation is used, which is mainly suitable if the mesh is a single, more or less layer
    /// surface that is perpendicular to `delaunayaxis`. In case the `delaunayaxis` intersects the mesh
    /// surface at more than one point it will result triangles that are very long in the dimension of
    /// `delaunayaxis`. If *>0*, the alpha-shape algorithm is used. In this case, the positive
    /// `alphahull` value signals the use of the alpha-shape algorithm, _and_ its value acts as the
    /// parameter for the mesh fitting. If *0*, the convex-hull algorithm is used. It is suitable for
    /// convex bodies or if the intention is to enclose the `x`, `y` and `z` point set into a convex
    /// hull.
    public var alphaHull: Double?

    /// Sets the vertex intensity values, used for plotting fields on meshes
    public var intensity: [Double]?

    /// Sets the color of the whole mesh
    public var color: Color?

    /// Sets the color of each vertex Overrides *color*. 
    ///
    /// While Red, green and blue colors are in the range of 0 and 255; in the case of having vertex
    /// color data in RGBA format, the alpha color should be normalized to be between 0 and 1.
    public var vertexColor: [Double]?

    /// Sets the color of each face Overrides *color* and *vertexcolor*.
    public var faceColor: [Double]?

    /// Determines whether or not the color domain is computed with respect to the input data (here `intensity`) or the bounds set in `cmin` and `cmax`  Defaults to `false` when `cmin` and `cmax` are set by the user.
    public var cAuto: Bool?

    /// Sets the lower bound of the color domain. 
    ///
    /// Value should have the same units as `intensity` and if set, `cmax` must be set as well.
    public var cMin: Double?

    /// Sets the upper bound of the color domain. 
    ///
    /// Value should have the same units as `intensity` and if set, `cmin` must be set as well.
    public var cMax: Double?

    /// Sets the mid-point of the color domain by scaling `cmin` and/or `cmax` to be equidistant to this point. 
    ///
    /// Value should have the same units as `intensity`. Has no effect when `cauto` is `false`.
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

    /// Sets the opacity of the surface. 
    ///
    /// Please note that in the case of using high `opacity` values for example a value greater than or
    /// equal to 0.5 on two surfaces (and 0.25 with four surfaces), an overlay of multiple transparent
    /// surfaces may not perfectly be sorted in depth by the webgl API. This behavior may be improved in
    /// the near future and is subject to change.
    public var opacity: Double?

    /// Determines whether or not normal smoothing is applied to the meshes, creating meshes with an angular, low-poly look via flat reflections.
    public var flatShading: Bool?

    public var contour: Contour0?

    public var lightPosition: Up0?

    public var lighting: Lighting0?

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

    /// Sets the source reference on plot.ly for  x .
    public var xSource: String?

    /// Sets the source reference on plot.ly for  y .
    public var ySource: String?

    /// Sets the source reference on plot.ly for  z .
    public var zSource: String?

    /// Sets the source reference on plot.ly for  i .
    public var iSource: String?

    /// Sets the source reference on plot.ly for  j .
    public var jSource: String?

    /// Sets the source reference on plot.ly for  k .
    public var kSource: String?

    /// Sets the source reference on plot.ly for  text .
    public var textSource: String?

    /// Sets the source reference on plot.ly for  hovertext .
    public var hoverTextSource: String?

    /// Sets the source reference on plot.ly for  hovertemplate .
    public var hoverTemplateSource: String?

    /// Sets the source reference on plot.ly for  intensity .
    public var intensitySource: String?

    /// Sets the source reference on plot.ly for  vertexcolor .
    public var vertexColorSource: String?

    /// Sets the source reference on plot.ly for  facecolor .
    public var faceColorSource: String?

    /// Sets the source reference on plot.ly for  hoverinfo .
    public var hoverInfoSource: String?

    public init(visible: Visible0? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, hoverLabel: HoverLabel1? = nil, stream: Stream0? = nil, uiRevision: Anything? = nil, x: [Double]? = nil, y: [Double]? = nil, z: [Double]? = nil, i: [Double]? = nil, j: [Double]? = nil, k: [Double]? = nil, text: String? = nil, hoverText: String? = nil, hoverTemplate: String? = nil, delaunayAxis: DelaunayAxis? = nil, alphaHull: Double? = nil, intensity: [Double]? = nil, color: Color? = nil, vertexColor: [Double]? = nil, faceColor: [Double]? = nil, cAuto: Bool? = nil, cMin: Double? = nil, cMax: Double? = nil, cMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: ColorBar0? = nil, colorAxis: SubPlotID? = nil, opacity: Double? = nil, flatShading: Bool? = nil, contour: Contour0? = nil, lightPosition: Up0? = nil, lighting: Lighting0? = nil, hoverInfo: HoverInfo1? = nil, xCalendar: Calendar0? = nil, yCalendar: Calendar0? = nil, zCalendar: Calendar0? = nil, scene: SubPlotID? = nil, idsSource: String? = nil, customDataSource: String? = nil, metaSource: String? = nil, xSource: String? = nil, ySource: String? = nil, zSource: String? = nil, iSource: String? = nil, jSource: String? = nil, kSource: String? = nil, textSource: String? = nil, hoverTextSource: String? = nil, hoverTemplateSource: String? = nil, intensitySource: String? = nil, vertexColorSource: String? = nil, faceColorSource: String? = nil, hoverInfoSource: String? = nil) {
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
        self.i = i
        self.j = j
        self.k = k
        self.text = text
        self.hoverText = hoverText
        self.hoverTemplate = hoverTemplate
        self.delaunayAxis = delaunayAxis
        self.alphaHull = alphaHull
        self.intensity = intensity
        self.color = color
        self.vertexColor = vertexColor
        self.faceColor = faceColor
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
        self.flatShading = flatShading
        self.contour = contour
        self.lightPosition = lightPosition
        self.lighting = lighting
        self.hoverInfo = hoverInfo
        self.xCalendar = xCalendar
        self.yCalendar = yCalendar
        self.zCalendar = zCalendar
        self.scene = scene
        self.idsSource = idsSource
        self.customDataSource = customDataSource
        self.metaSource = metaSource
        self.xSource = xSource
        self.ySource = ySource
        self.zSource = zSource
        self.iSource = iSource
        self.jSource = jSource
        self.kSource = kSource
        self.textSource = textSource
        self.hoverTextSource = hoverTextSource
        self.hoverTemplateSource = hoverTemplateSource
        self.intensitySource = intensitySource
        self.vertexColorSource = vertexColorSource
        self.faceColorSource = faceColorSource
        self.hoverInfoSource = hoverInfoSource
    }
}