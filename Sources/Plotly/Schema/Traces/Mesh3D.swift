/// Draws sets of triangles with coordinates given by three 1-dimensional arrays in `x`, `y`, `z` and (1) a sets of `i`, `j`, `k` indices (2) Delaunay triangulation or (3) the Alpha-shape algorithm or (4) the Convex-hull algorithm
public struct Mesh3D<XData, YData, ZData, IntensityData, VertexcolorData, FacecolorData>: Trace where XData: Plotable, YData: Plotable, ZData: Plotable, IntensityData: Plotable, VertexcolorData: Plotable, FacecolorData: Plotable {
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#type) |
    /// [Python](https://plot.ly/python/reference/#type) |
    /// [R](https://plot.ly/r/reference/#type)
    public let type: String = "mesh3d"

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
    /// [JavaScript](https://plot.ly/javascript/reference/#mesh3d-visible) |
    /// [Python](https://plot.ly/python/reference/#mesh3d-visible) |
    /// [R](https://plot.ly/r/reference/#mesh3d-visible)
    public var visible: Shared.Visible?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#mesh3d-name) |
    /// [Python](https://plot.ly/python/reference/#mesh3d-name) |
    /// [R](https://plot.ly/r/reference/#mesh3d-name)
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#mesh3d-uid) |
    /// [Python](https://plot.ly/python/reference/#mesh3d-uid) |
    /// [R](https://plot.ly/r/reference/#mesh3d-uid)
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#mesh3d-ids) |
    /// [Python](https://plot.ly/python/reference/#mesh3d-ids) |
    /// [R](https://plot.ly/r/reference/#mesh3d-ids)
    public var ids: [String]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#mesh3d-customdata) |
    /// [Python](https://plot.ly/python/reference/#mesh3d-customdata) |
    /// [R](https://plot.ly/r/reference/#mesh3d-customdata)
    public var customData: [String]?

    /// Assigns extra meta information associated with this trace that can be used in various text attributes. 
    ///
    /// Attributes such as trace `name`, graph, axis and colorbar `title.text`, annotation `text`
    /// `rangeselector`, `updatemenues` and `sliders` `label` text all support `meta`. To access the
    /// trace `meta` values in an attribute in the same trace, simply use `%{meta[i]}` where `i` is the
    /// index or key of the `meta` item in question. To access trace `meta` in layout attributes, use
    /// `%{data[n[.meta[i]}` where `i` is the index or key of the `meta` and `n` is the trace index.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#mesh3d-meta) |
    /// [Python](https://plot.ly/python/reference/#mesh3d-meta) |
    /// [R](https://plot.ly/r/reference/#mesh3d-meta)
    public var meta: ArrayOrAnything?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#mesh3d-hoverlabel) |
    /// [Python](https://plot.ly/python/reference/#mesh3d-hoverlabel) |
    /// [R](https://plot.ly/r/reference/#mesh3d-hoverlabel)
    public var hoverLabel: Shared.HoverLabel?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#mesh3d-stream) |
    /// [Python](https://plot.ly/python/reference/#mesh3d-stream) |
    /// [R](https://plot.ly/r/reference/#mesh3d-stream)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#mesh3d-uirevision) |
    /// [Python](https://plot.ly/python/reference/#mesh3d-uirevision) |
    /// [R](https://plot.ly/r/reference/#mesh3d-uirevision)
    public var uiRevision: Anything?

    /// Sets the X coordinates of the vertices. 
    ///
    /// The nth element of vectors `x`, `y` and `z` jointly represent the X, Y and Z coordinates of the
    /// nth vertex.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#mesh3d-x) |
    /// [Python](https://plot.ly/python/reference/#mesh3d-x) |
    /// [R](https://plot.ly/r/reference/#mesh3d-x)
    public var x: XData?

    /// Sets the Y coordinates of the vertices. 
    ///
    /// The nth element of vectors `x`, `y` and `z` jointly represent the X, Y and Z coordinates of the
    /// nth vertex.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#mesh3d-y) |
    /// [Python](https://plot.ly/python/reference/#mesh3d-y) |
    /// [R](https://plot.ly/r/reference/#mesh3d-y)
    public var y: YData?

    /// Sets the Z coordinates of the vertices. 
    ///
    /// The nth element of vectors `x`, `y` and `z` jointly represent the X, Y and Z coordinates of the
    /// nth vertex.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#mesh3d-z) |
    /// [Python](https://plot.ly/python/reference/#mesh3d-z) |
    /// [R](https://plot.ly/r/reference/#mesh3d-z)
    public var z: ZData?

    /// A vector of vertex indices, i.e. 
    ///
    /// integer values between 0 and the length of the vertex vectors, representing the *first* vertex
    /// of a triangle. For example, `{i[m], j[m], k[m]}` together represent face m (triangle m) in the
    /// mesh, where `i[m] = n` points to the triplet `{x[n], y[n], z[n]}` in the vertex arrays.
    /// Therefore, each element in `i` represents a point in space, which is the first vertex of a
    /// triangle.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#mesh3d-i) |
    /// [Python](https://plot.ly/python/reference/#mesh3d-i) |
    /// [R](https://plot.ly/r/reference/#mesh3d-i)
    public var i: [Int]?

    /// A vector of vertex indices, i.e. 
    ///
    /// integer values between 0 and the length of the vertex vectors, representing the *second* vertex
    /// of a triangle. For example, `{i[m], j[m], k[m]}` together represent face m (triangle m) in the
    /// mesh, where `j[m] = n` points to the triplet `{x[n], y[n], z[n]}` in the vertex arrays.
    /// Therefore, each element in `j` represents a point in space, which is the second vertex of a
    /// triangle.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#mesh3d-j) |
    /// [Python](https://plot.ly/python/reference/#mesh3d-j) |
    /// [R](https://plot.ly/r/reference/#mesh3d-j)
    public var j: [Int]?

    /// A vector of vertex indices, i.e. 
    ///
    /// integer values between 0 and the length of the vertex vectors, representing the *third* vertex
    /// of a triangle. For example, `{i[m], j[m], k[m]}` together represent face m (triangle m) in the
    /// mesh, where `k[m] = n` points to the triplet `{x[n], y[n], z[n]}` in the vertex arrays.
    /// Therefore, each element in `k` represents a point in space, which is the third vertex of a
    /// triangle.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#mesh3d-k) |
    /// [Python](https://plot.ly/python/reference/#mesh3d-k) |
    /// [R](https://plot.ly/r/reference/#mesh3d-k)
    public var k: [Int]?

    /// Sets the text elements associated with the vertices. 
    ///
    /// If trace `hoverinfo` contains a *text* flag and *hovertext* is not set, these elements will be
    /// seen in the hover labels.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#mesh3d-text) |
    /// [Python](https://plot.ly/python/reference/#mesh3d-text) |
    /// [R](https://plot.ly/r/reference/#mesh3d-text)
    public var text: ArrayOrString?

    /// Same as `text`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#mesh3d-hovertext) |
    /// [Python](https://plot.ly/python/reference/#mesh3d-hovertext) |
    /// [R](https://plot.ly/r/reference/#mesh3d-hovertext)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#mesh3d-hovertemplate) |
    /// [Python](https://plot.ly/python/reference/#mesh3d-hovertemplate) |
    /// [R](https://plot.ly/r/reference/#mesh3d-hovertemplate)
    public var hoverTemplate: ArrayOrString?

    /// Sets the Delaunay axis, which is the axis that is perpendicular to the surface of the Delaunay triangulation. 
    ///
    /// It has an effect if `i`, `j`, `k` are not provided and `alphahull` is set to indicate Delaunay
    /// triangulation.
    ///
    /// # Used By
    /// `Mesh3D.delaunayAxis` |
    public enum DelaunayAxis: String, Encodable {
        case x
        case y
        case z
    }
    /// Sets the Delaunay axis, which is the axis that is perpendicular to the surface of the Delaunay triangulation. 
    ///
    /// It has an effect if `i`, `j`, `k` are not provided and `alphahull` is set to indicate Delaunay
    /// triangulation.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#mesh3d-delaunayaxis) |
    /// [Python](https://plot.ly/python/reference/#mesh3d-delaunayaxis) |
    /// [R](https://plot.ly/r/reference/#mesh3d-delaunayaxis)
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
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#mesh3d-alphahull) |
    /// [Python](https://plot.ly/python/reference/#mesh3d-alphahull) |
    /// [R](https://plot.ly/r/reference/#mesh3d-alphahull)
    public var alphaHull: Double?

    /// Sets the vertex intensity values, used for plotting fields on meshes
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#mesh3d-intensity) |
    /// [Python](https://plot.ly/python/reference/#mesh3d-intensity) |
    /// [R](https://plot.ly/r/reference/#mesh3d-intensity)
    public var intensity: IntensityData?

    /// Sets the color of the whole mesh
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#mesh3d-color) |
    /// [Python](https://plot.ly/python/reference/#mesh3d-color) |
    /// [R](https://plot.ly/r/reference/#mesh3d-color)
    public var color: Color?

    /// Sets the color of each vertex Overrides *color*. 
    ///
    /// While Red, green and blue colors are in the range of 0 and 255; in the case of having vertex
    /// color data in RGBA format, the alpha color should be normalized to be between 0 and 1.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#mesh3d-vertexcolor) |
    /// [Python](https://plot.ly/python/reference/#mesh3d-vertexcolor) |
    /// [R](https://plot.ly/r/reference/#mesh3d-vertexcolor)
    public var vertexColor: VertexcolorData?

    /// Sets the color of each face Overrides *color* and *vertexcolor*.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#mesh3d-facecolor) |
    /// [Python](https://plot.ly/python/reference/#mesh3d-facecolor) |
    /// [R](https://plot.ly/r/reference/#mesh3d-facecolor)
    public var faceColor: FacecolorData?

    /// Determines whether or not the color domain is computed with respect to the input data (here `intensity`) or the bounds set in `cmin` and `cmax`  Defaults to `false` when `cmin` and `cmax` are set by the user.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#mesh3d-cauto) |
    /// [Python](https://plot.ly/python/reference/#mesh3d-cauto) |
    /// [R](https://plot.ly/r/reference/#mesh3d-cauto)
    public var cAuto: Bool?

    /// Sets the lower bound of the color domain. 
    ///
    /// Value should have the same units as `intensity` and if set, `cmax` must be set as well.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#mesh3d-cmin) |
    /// [Python](https://plot.ly/python/reference/#mesh3d-cmin) |
    /// [R](https://plot.ly/r/reference/#mesh3d-cmin)
    public var cMin: Double?

    /// Sets the upper bound of the color domain. 
    ///
    /// Value should have the same units as `intensity` and if set, `cmin` must be set as well.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#mesh3d-cmax) |
    /// [Python](https://plot.ly/python/reference/#mesh3d-cmax) |
    /// [R](https://plot.ly/r/reference/#mesh3d-cmax)
    public var cMax: Double?

    /// Sets the mid-point of the color domain by scaling `cmin` and/or `cmax` to be equidistant to this point. 
    ///
    /// Value should have the same units as `intensity`. Has no effect when `cauto` is `false`.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#mesh3d-cmid) |
    /// [Python](https://plot.ly/python/reference/#mesh3d-cmid) |
    /// [R](https://plot.ly/r/reference/#mesh3d-cmid)
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
    /// [JavaScript](https://plot.ly/javascript/reference/#mesh3d-colorscale) |
    /// [Python](https://plot.ly/python/reference/#mesh3d-colorscale) |
    /// [R](https://plot.ly/r/reference/#mesh3d-colorscale)
    public var colorScale: ColorScale?

    /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `colorscale`. 
    ///
    /// In case `colorscale` is unspecified or `autocolorscale` is true, the default palette will be
    /// chosen according to whether numbers in the `color` array are all positive, all negative or
    /// mixed.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#mesh3d-autocolorscale) |
    /// [Python](https://plot.ly/python/reference/#mesh3d-autocolorscale) |
    /// [R](https://plot.ly/r/reference/#mesh3d-autocolorscale)
    public var autoColorScale: Bool?

    /// Reverses the color mapping if true. 
    ///
    /// If true, `cmin` will correspond to the last color in the array and `cmax` will correspond to the
    /// first color.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#mesh3d-reversescale) |
    /// [Python](https://plot.ly/python/reference/#mesh3d-reversescale) |
    /// [R](https://plot.ly/r/reference/#mesh3d-reversescale)
    public var reverseScale: Bool?

    /// Determines whether or not a colorbar is displayed for this trace.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#mesh3d-showscale) |
    /// [Python](https://plot.ly/python/reference/#mesh3d-showscale) |
    /// [R](https://plot.ly/r/reference/#mesh3d-showscale)
    public var showScale: Bool?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#mesh3d-colorbar) |
    /// [Python](https://plot.ly/python/reference/#mesh3d-colorbar) |
    /// [R](https://plot.ly/r/reference/#mesh3d-colorbar)
    public var colorBar: Shared.ColorBar?

    /// Sets a reference to a shared color axis. 
    ///
    /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
    /// for these shared color axes are set in the layout, under `layout.coloraxis`,
    /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#mesh3d-coloraxis) |
    /// [Python](https://plot.ly/python/reference/#mesh3d-coloraxis) |
    /// [R](https://plot.ly/r/reference/#mesh3d-coloraxis)
    public var colorAxis: SubPlotID?

    /// Sets the opacity of the surface. 
    ///
    /// Please note that in the case of using high `opacity` values for example a value greater than or
    /// equal to 0.5 on two surfaces (and 0.25 with four surfaces), an overlay of multiple transparent
    /// surfaces may not perfectly be sorted in depth by the webgl API. This behavior may be improved in
    /// the near future and is subject to change.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#mesh3d-opacity) |
    /// [Python](https://plot.ly/python/reference/#mesh3d-opacity) |
    /// [R](https://plot.ly/r/reference/#mesh3d-opacity)
    public var opacity: Double?

    /// Determines whether or not normal smoothing is applied to the meshes, creating meshes with an angular, low-poly look via flat reflections.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#mesh3d-flatshading) |
    /// [Python](https://plot.ly/python/reference/#mesh3d-flatshading) |
    /// [R](https://plot.ly/r/reference/#mesh3d-flatshading)
    public var flatShading: Bool?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#mesh3d-contour) |
    /// [Python](https://plot.ly/python/reference/#mesh3d-contour) |
    /// [R](https://plot.ly/r/reference/#mesh3d-contour)
    public var contour: Shared.ContourHover?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#mesh3d-lightposition) |
    /// [Python](https://plot.ly/python/reference/#mesh3d-lightposition) |
    /// [R](https://plot.ly/r/reference/#mesh3d-lightposition)
    public var lightPosition: Shared.LightPosition?

    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#mesh3d-lighting) |
    /// [Python](https://plot.ly/python/reference/#mesh3d-lighting) |
    /// [R](https://plot.ly/r/reference/#mesh3d-lighting)
    public var lighting: Shared.Lighting?

    /// Determines which trace information appear on hover. 
    ///
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#mesh3d-hoverinfo) |
    /// [Python](https://plot.ly/python/reference/#mesh3d-hoverinfo) |
    /// [R](https://plot.ly/r/reference/#mesh3d-hoverinfo)
    public var hoverInfo: Shared.HoverInfo?

    /// Sets the calendar system to use with `x` date data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#mesh3d-xcalendar) |
    /// [Python](https://plot.ly/python/reference/#mesh3d-xcalendar) |
    /// [R](https://plot.ly/r/reference/#mesh3d-xcalendar)
    public var xCalendar: Shared.Calendar?

    /// Sets the calendar system to use with `y` date data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#mesh3d-ycalendar) |
    /// [Python](https://plot.ly/python/reference/#mesh3d-ycalendar) |
    /// [R](https://plot.ly/r/reference/#mesh3d-ycalendar)
    public var yCalendar: Shared.Calendar?

    /// Sets the calendar system to use with `z` date data.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#mesh3d-zcalendar) |
    /// [Python](https://plot.ly/python/reference/#mesh3d-zcalendar) |
    /// [R](https://plot.ly/r/reference/#mesh3d-zcalendar)
    public var zCalendar: Shared.Calendar?

    /// Sets a reference between this trace's 3D coordinate system and a 3D scene. 
    ///
    /// If *scene* (the default value), the (x,y,z) coordinates refer to `layout.scene`. If *scene2*,
    /// the (x,y,z) coordinates refer to `layout.scene2`, and so on.
    ///
    /// # Plotly Reference
    /// [JavaScript](https://plot.ly/javascript/reference/#mesh3d-scene) |
    /// [Python](https://plot.ly/python/reference/#mesh3d-scene) |
    /// [R](https://plot.ly/r/reference/#mesh3d-scene)
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
        case i
        case j
        case k
        case text
        case hoverText = "hovertext"
        case hoverTemplate = "hovertemplate"
        case delaunayAxis = "delaunayaxis"
        case alphaHull = "alphahull"
        case intensity
        case color
        case vertexColor = "vertexcolor"
        case faceColor = "facecolor"
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
        case flatShading = "flatshading"
        case contour
        case lightPosition = "lightposition"
        case lighting
        case hoverInfo = "hoverinfo"
        case xCalendar = "xcalendar"
        case yCalendar = "ycalendar"
        case zCalendar = "zcalendar"
        case scene
    }
    
    public init(visible: Shared.Visible? = nil, name: String? = nil, uid: String? = nil, ids: [String]? = nil, customData: [String]? = nil, meta: ArrayOrAnything? = nil, hoverLabel: Shared.HoverLabel? = nil, stream: Shared.Stream? = nil, uiRevision: Anything? = nil, x: XData? = nil, y: YData? = nil, z: ZData? = nil, i: [Int]? = nil, j: [Int]? = nil, k: [Int]? = nil, text: ArrayOrString? = nil, hoverText: ArrayOrString? = nil, hoverTemplate: ArrayOrString? = nil, delaunayAxis: DelaunayAxis? = nil, alphaHull: Double? = nil, intensity: IntensityData? = nil, color: Color? = nil, vertexColor: VertexcolorData? = nil, faceColor: FacecolorData? = nil, cAuto: Bool? = nil, cMin: Double? = nil, cMax: Double? = nil, cMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: Shared.ColorBar? = nil, colorAxis: SubPlotID? = nil, opacity: Double? = nil, flatShading: Bool? = nil, contour: Shared.ContourHover? = nil, lightPosition: Shared.LightPosition? = nil, lighting: Shared.Lighting? = nil, hoverInfo: Shared.HoverInfo? = nil, xCalendar: Shared.Calendar? = nil, yCalendar: Shared.Calendar? = nil, zCalendar: Shared.Calendar? = nil, scene: SubPlotID? = nil) {
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
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(animatable, forKey: .animatable)
        try container.encodeIfPresent(visible, forKey: .visible)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(uid, forKey: .uid)
        try container.encodeIfPresent(ids, forKey: .ids)
        try container.encodeIfPresent(customData, forKey: .customData)
        try container.encodeIfPresent(meta, forKey: .meta)
        try container.encodeIfPresent(hoverLabel, forKey: .hoverLabel)
        try container.encodeIfPresent(stream, forKey: .stream)
        try container.encodeIfPresent(uiRevision, forKey: .uiRevision)
        try container.encodeIfPresent(i, forKey: .i)
        try container.encodeIfPresent(j, forKey: .j)
        try container.encodeIfPresent(k, forKey: .k)
        try container.encodeIfPresent(text, forKey: .text)
        try container.encodeIfPresent(hoverText, forKey: .hoverText)
        try container.encodeIfPresent(hoverTemplate, forKey: .hoverTemplate)
        try container.encodeIfPresent(delaunayAxis, forKey: .delaunayAxis)
        try container.encodeIfPresent(alphaHull, forKey: .alphaHull)
        try container.encodeIfPresent(color, forKey: .color)
        try container.encodeIfPresent(cAuto, forKey: .cAuto)
        try container.encodeIfPresent(cMin, forKey: .cMin)
        try container.encodeIfPresent(cMax, forKey: .cMax)
        try container.encodeIfPresent(cMiddle, forKey: .cMiddle)
        try container.encodeIfPresent(colorScale, forKey: .colorScale)
        try container.encodeIfPresent(autoColorScale, forKey: .autoColorScale)
        try container.encodeIfPresent(reverseScale, forKey: .reverseScale)
        try container.encodeIfPresent(showScale, forKey: .showScale)
        try container.encodeIfPresent(colorBar, forKey: .colorBar)
        try container.encodeIfPresent(colorAxis, forKey: .colorAxis)
        try container.encodeIfPresent(opacity, forKey: .opacity)
        try container.encodeIfPresent(flatShading, forKey: .flatShading)
        try container.encodeIfPresent(contour, forKey: .contour)
        try container.encodeIfPresent(lightPosition, forKey: .lightPosition)
        try container.encodeIfPresent(lighting, forKey: .lighting)
        try container.encodeIfPresent(hoverInfo, forKey: .hoverInfo)
        try container.encodeIfPresent(xCalendar, forKey: .xCalendar)
        try container.encodeIfPresent(yCalendar, forKey: .yCalendar)
        try container.encodeIfPresent(zCalendar, forKey: .zCalendar)
        try container.encodeIfPresent(scene, forKey: .scene)
    
        if let x = self.x {
            let xEncoder = container.superEncoder(forKey: .x)
            try x.encode(toPlotly: xEncoder)
        }
    
        if let y = self.y {
            let yEncoder = container.superEncoder(forKey: .y)
            try y.encode(toPlotly: yEncoder)
        }
    
        if let z = self.z {
            let zEncoder = container.superEncoder(forKey: .z)
            try z.encode(toPlotly: zEncoder)
        }
    
        if let intensity = self.intensity {
            let intensityEncoder = container.superEncoder(forKey: .intensity)
            try intensity.encode(toPlotly: intensityEncoder)
        }
    
        if let vertexColor = self.vertexColor {
            let vertexColorEncoder = container.superEncoder(forKey: .vertexColor)
            try vertexColor.encode(toPlotly: vertexColorEncoder)
        }
    
        if let faceColor = self.faceColor {
            let faceColorEncoder = container.superEncoder(forKey: .faceColor)
            try faceColor.encode(toPlotly: faceColorEncoder)
        }
    }
    
}