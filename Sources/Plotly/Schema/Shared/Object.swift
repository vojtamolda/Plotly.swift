/// Sets the global font. 
///
/// Note that fonts used in traces and other layout components inherit from the global font.
/// - layout/layoutAttributes/font
/// - layout/layoutAttributes/title/font
/// - layout/layoutAttributes/hoverlabel/font
/// - layout/layoutAttributes/xaxis/title/font
/// - layout/layoutAttributes/xaxis/tickfont
/// - layout/layoutAttributes/xaxis/rangeselector/font
/// - layout/layoutAttributes/yaxis/title/font
/// - layout/layoutAttributes/yaxis/tickfont
/// - layout/layoutAttributes/ternary/aaxis/title/font
/// - layout/layoutAttributes/ternary/aaxis/tickfont
/// - layout/layoutAttributes/ternary/baxis/title/font
/// - layout/layoutAttributes/ternary/baxis/tickfont
/// - layout/layoutAttributes/ternary/caxis/title/font
/// - layout/layoutAttributes/ternary/caxis/tickfont
/// - layout/layoutAttributes/scene/xaxis/title/font
/// - layout/layoutAttributes/scene/xaxis/tickfont
/// - layout/layoutAttributes/scene/yaxis/title/font
/// - layout/layoutAttributes/scene/yaxis/tickfont
/// - layout/layoutAttributes/scene/zaxis/title/font
/// - layout/layoutAttributes/scene/zaxis/tickfont
/// - layout/layoutAttributes/scene/annotations/items/annotation/font
/// - layout/layoutAttributes/scene/annotations/items/annotation/hoverlabel/font
/// - layout/layoutAttributes/mapbox/layers/items/layer/symbol/textfont
/// - layout/layoutAttributes/polar/radialaxis/title/font
/// - layout/layoutAttributes/polar/radialaxis/tickfont
/// - layout/layoutAttributes/polar/angularaxis/tickfont
/// - layout/layoutAttributes/legend/font
/// - layout/layoutAttributes/annotations/items/annotation/font
/// - layout/layoutAttributes/annotations/items/annotation/hoverlabel/font
/// - layout/layoutAttributes/updatemenus/items/updatemenu/font
/// - layout/layoutAttributes/sliders/items/slider/currentvalue/font
/// - layout/layoutAttributes/sliders/items/slider/font
/// - layout/layoutAttributes/coloraxis/colorbar/tickfont
/// - layout/layoutAttributes/coloraxis/colorbar/title/font
/// - traces/scatter/attributes/marker/colorbar/tickfont
/// - traces/scatter/attributes/marker/colorbar/title/font
/// - traces/bar/attributes/marker/colorbar/tickfont
/// - traces/bar/attributes/marker/colorbar/title/font
/// - traces/heatmap/attributes/colorbar/tickfont
/// - traces/heatmap/attributes/colorbar/title/font
/// - traces/histogram/attributes/marker/colorbar/tickfont
/// - traces/histogram/attributes/marker/colorbar/title/font
/// - traces/histogram2d/attributes/colorbar/tickfont
/// - traces/histogram2d/attributes/colorbar/title/font
/// - traces/histogram2dcontour/attributes/contours/labelfont
/// - traces/histogram2dcontour/attributes/colorbar/tickfont
/// - traces/histogram2dcontour/attributes/colorbar/title/font
/// - traces/contour/attributes/contours/labelfont
/// - traces/contour/attributes/colorbar/tickfont
/// - traces/contour/attributes/colorbar/title/font
/// - traces/scatterternary/attributes/marker/colorbar/tickfont
/// - traces/scatterternary/attributes/marker/colorbar/title/font
/// - traces/funnel/attributes/marker/colorbar/tickfont
/// - traces/funnel/attributes/marker/colorbar/title/font
/// - traces/sunburst/attributes/marker/colorbar/tickfont
/// - traces/sunburst/attributes/marker/colorbar/title/font
/// - traces/treemap/attributes/marker/colorbar/tickfont
/// - traces/treemap/attributes/marker/colorbar/title/font
/// - traces/scatter3d/attributes/line/colorbar/tickfont
/// - traces/scatter3d/attributes/line/colorbar/title/font
/// - traces/scatter3d/attributes/marker/colorbar/tickfont
/// - traces/scatter3d/attributes/marker/colorbar/title/font
/// - traces/surface/attributes/colorbar/tickfont
/// - traces/surface/attributes/colorbar/title/font
/// - traces/isosurface/attributes/colorbar/tickfont
/// - traces/isosurface/attributes/colorbar/title/font
/// - traces/volume/attributes/colorbar/tickfont
/// - traces/volume/attributes/colorbar/title/font
/// - traces/mesh3d/attributes/colorbar/tickfont
/// - traces/mesh3d/attributes/colorbar/title/font
/// - traces/cone/attributes/colorbar/tickfont
/// - traces/cone/attributes/colorbar/title/font
/// - traces/streamtube/attributes/colorbar/tickfont
/// - traces/streamtube/attributes/colorbar/title/font
/// - traces/scattergeo/attributes/marker/colorbar/tickfont
/// - traces/scattergeo/attributes/marker/colorbar/title/font
/// - traces/choropleth/attributes/colorbar/tickfont
/// - traces/choropleth/attributes/colorbar/title/font
/// - traces/scattergl/attributes/marker/colorbar/tickfont
/// - traces/scattergl/attributes/marker/colorbar/title/font
/// - traces/splom/attributes/marker/colorbar/tickfont
/// - traces/splom/attributes/marker/colorbar/title/font
/// - traces/heatmapgl/attributes/colorbar/tickfont
/// - traces/heatmapgl/attributes/colorbar/title/font
/// - traces/parcoords/attributes/labelfont
/// - traces/parcoords/attributes/tickfont
/// - traces/parcoords/attributes/rangefont
/// - traces/parcoords/attributes/line/colorbar/tickfont
/// - traces/parcoords/attributes/line/colorbar/title/font
/// - traces/parcats/attributes/labelfont
/// - traces/parcats/attributes/tickfont
/// - traces/parcats/attributes/line/colorbar/tickfont
/// - traces/parcats/attributes/line/colorbar/title/font
/// - traces/scattermapbox/attributes/marker/colorbar/tickfont
/// - traces/scattermapbox/attributes/marker/colorbar/title/font
/// - traces/scattermapbox/attributes/textfont
/// - traces/choroplethmapbox/attributes/colorbar/tickfont
/// - traces/choroplethmapbox/attributes/colorbar/title/font
/// - traces/densitymapbox/attributes/colorbar/tickfont
/// - traces/densitymapbox/attributes/colorbar/title/font
/// - traces/sankey/attributes/textfont
/// - traces/indicator/attributes/title/font
/// - traces/indicator/attributes/number/font
/// - traces/indicator/attributes/delta/font
/// - traces/indicator/attributes/gauge/axis/tickfont
/// - traces/carpet/attributes/aaxis/title/font
/// - traces/carpet/attributes/aaxis/tickfont
/// - traces/carpet/attributes/baxis/title/font
/// - traces/carpet/attributes/baxis/tickfont
/// - traces/carpet/attributes/font
/// - traces/scattercarpet/attributes/marker/colorbar/tickfont
/// - traces/scattercarpet/attributes/marker/colorbar/title/font
/// - traces/contourcarpet/attributes/contours/labelfont
/// - traces/contourcarpet/attributes/colorbar/tickfont
/// - traces/contourcarpet/attributes/colorbar/title/font
/// - traces/scatterpolar/attributes/marker/colorbar/tickfont
/// - traces/scatterpolar/attributes/marker/colorbar/title/font
/// - traces/scatterpolargl/attributes/marker/colorbar/tickfont
/// - traces/scatterpolargl/attributes/marker/colorbar/title/font
/// - traces/barpolar/attributes/marker/colorbar/tickfont
/// - traces/barpolar/attributes/marker/colorbar/title/font
public struct Font0: Encodable {
    /// HTML font family - the typeface that will be applied by the web browser. 
    ///
    /// The web browser will only be able to apply a font if it is available on the system which it
    /// operates. Provide multiple font families, separated by commas, to indicate the preference in
    /// which to apply fonts if they aren't available on the system. The plotly service (at
    /// https://plot.ly or on-premise) generates images on a server, where only a select number of fonts
    /// are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,,
    /// *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*,
    /// *PT Sans Narrow*, *Raleway*, *Times New Roman*.
    public var family: String?

    public var size: Double?

    public var color: Color?

    public init(family: String? = nil, size: Double? = nil, color: Color? = nil) {
        self.family = family
        self.size = size
        self.color = color
    }
}

/// - layout/layoutAttributes/xaxis/tickformatstops
/// - layout/layoutAttributes/xaxis/rangeselector/buttons
/// - layout/layoutAttributes/yaxis/tickformatstops
/// - layout/layoutAttributes/ternary/aaxis/tickformatstops
/// - layout/layoutAttributes/ternary/baxis/tickformatstops
/// - layout/layoutAttributes/ternary/caxis/tickformatstops
/// - layout/layoutAttributes/scene/xaxis/tickformatstops
/// - layout/layoutAttributes/scene/yaxis/tickformatstops
/// - layout/layoutAttributes/scene/zaxis/tickformatstops
/// - layout/layoutAttributes/scene/annotations
/// - layout/layoutAttributes/mapbox/layers
/// - layout/layoutAttributes/polar/radialaxis/tickformatstops
/// - layout/layoutAttributes/polar/angularaxis/tickformatstops
/// - layout/layoutAttributes/annotations
/// - layout/layoutAttributes/shapes
/// - layout/layoutAttributes/images
/// - layout/layoutAttributes/updatemenus
/// - layout/layoutAttributes/updatemenus/items/updatemenu/buttons
/// - layout/layoutAttributes/sliders
/// - layout/layoutAttributes/sliders/items/slider/steps
/// - layout/layoutAttributes/coloraxis/colorbar/tickformatstops
/// - traces/scatter/attributes/transforms
/// - traces/scatter/attributes/marker/colorbar/tickformatstops
/// - traces/bar/attributes/transforms
/// - traces/bar/attributes/marker/colorbar/tickformatstops
/// - traces/box/attributes/transforms
/// - traces/heatmap/attributes/transforms
/// - traces/heatmap/attributes/colorbar/tickformatstops
/// - traces/histogram/attributes/transforms
/// - traces/histogram/attributes/marker/colorbar/tickformatstops
/// - traces/histogram2d/attributes/transforms
/// - traces/histogram2d/attributes/colorbar/tickformatstops
/// - traces/histogram2dcontour/attributes/transforms
/// - traces/histogram2dcontour/attributes/colorbar/tickformatstops
/// - traces/contour/attributes/transforms
/// - traces/contour/attributes/colorbar/tickformatstops
/// - traces/scatterternary/attributes/transforms
/// - traces/scatterternary/attributes/marker/colorbar/tickformatstops
/// - traces/violin/attributes/transforms
/// - traces/funnel/attributes/transforms
/// - traces/funnel/attributes/marker/colorbar/tickformatstops
/// - traces/waterfall/attributes/transforms
/// - traces/pie/attributes/transforms
/// - traces/sunburst/attributes/transforms
/// - traces/sunburst/attributes/marker/colorbar/tickformatstops
/// - traces/treemap/attributes/transforms
/// - traces/treemap/attributes/marker/colorbar/tickformatstops
/// - traces/funnelarea/attributes/transforms
/// - traces/scatter3d/attributes/transforms
/// - traces/scatter3d/attributes/line/colorbar/tickformatstops
/// - traces/scatter3d/attributes/marker/colorbar/tickformatstops
/// - traces/surface/attributes/colorbar/tickformatstops
/// - traces/isosurface/attributes/colorbar/tickformatstops
/// - traces/volume/attributes/colorbar/tickformatstops
/// - traces/mesh3d/attributes/colorbar/tickformatstops
/// - traces/cone/attributes/colorbar/tickformatstops
/// - traces/streamtube/attributes/colorbar/tickformatstops
/// - traces/scattergeo/attributes/transforms
/// - traces/scattergeo/attributes/marker/colorbar/tickformatstops
/// - traces/choropleth/attributes/transforms
/// - traces/choropleth/attributes/colorbar/tickformatstops
/// - traces/scattergl/attributes/transforms
/// - traces/scattergl/attributes/marker/colorbar/tickformatstops
/// - traces/splom/attributes/transforms
/// - traces/splom/attributes/dimensions
/// - traces/splom/attributes/marker/colorbar/tickformatstops
/// - traces/heatmapgl/attributes/transforms
/// - traces/heatmapgl/attributes/colorbar/tickformatstops
/// - traces/parcoords/attributes/transforms
/// - traces/parcoords/attributes/dimensions
/// - traces/parcoords/attributes/line/colorbar/tickformatstops
/// - traces/parcats/attributes/transforms
/// - traces/parcats/attributes/dimensions
/// - traces/parcats/attributes/line/colorbar/tickformatstops
/// - traces/scattermapbox/attributes/transforms
/// - traces/scattermapbox/attributes/marker/colorbar/tickformatstops
/// - traces/choroplethmapbox/attributes/transforms
/// - traces/choroplethmapbox/attributes/colorbar/tickformatstops
/// - traces/densitymapbox/attributes/transforms
/// - traces/densitymapbox/attributes/colorbar/tickformatstops
/// - traces/sankey/attributes/link/colorscales
/// - traces/indicator/attributes/transforms
/// - traces/indicator/attributes/gauge/axis/tickformatstops
/// - traces/indicator/attributes/gauge/steps
/// - traces/carpet/attributes/aaxis/tickformatstops
/// - traces/carpet/attributes/baxis/tickformatstops
/// - traces/scattercarpet/attributes/transforms
/// - traces/scattercarpet/attributes/marker/colorbar/tickformatstops
/// - traces/contourcarpet/attributes/colorbar/tickformatstops
/// - traces/ohlc/attributes/transforms
/// - traces/candlestick/attributes/transforms
/// - traces/scatterpolar/attributes/transforms
/// - traces/scatterpolar/attributes/marker/colorbar/tickformatstops
/// - traces/scatterpolargl/attributes/transforms
/// - traces/scatterpolargl/attributes/marker/colorbar/tickformatstops
/// - traces/barpolar/attributes/transforms
/// - traces/barpolar/attributes/marker/colorbar/tickformatstops
/// - traces/area/attributes/transforms
public struct TickFormatStops0: Encodable {
    public var items: Items?

    public init(items: Items? = nil) {
        self.items = items
    }
}

/// - layout/layoutAttributes/xaxis/tickformatstops/items
/// - layout/layoutAttributes/yaxis/tickformatstops/items
/// - layout/layoutAttributes/ternary/aaxis/tickformatstops/items
/// - layout/layoutAttributes/ternary/baxis/tickformatstops/items
/// - layout/layoutAttributes/ternary/caxis/tickformatstops/items
/// - layout/layoutAttributes/scene/xaxis/tickformatstops/items
/// - layout/layoutAttributes/scene/yaxis/tickformatstops/items
/// - layout/layoutAttributes/scene/zaxis/tickformatstops/items
/// - layout/layoutAttributes/polar/radialaxis/tickformatstops/items
/// - layout/layoutAttributes/polar/angularaxis/tickformatstops/items
/// - layout/layoutAttributes/coloraxis/colorbar/tickformatstops/items
/// - traces/scatter/attributes/marker/colorbar/tickformatstops/items
/// - traces/bar/attributes/marker/colorbar/tickformatstops/items
/// - traces/heatmap/attributes/colorbar/tickformatstops/items
/// - traces/histogram/attributes/marker/colorbar/tickformatstops/items
/// - traces/histogram2d/attributes/colorbar/tickformatstops/items
/// - traces/histogram2dcontour/attributes/colorbar/tickformatstops/items
/// - traces/contour/attributes/colorbar/tickformatstops/items
/// - traces/scatterternary/attributes/marker/colorbar/tickformatstops/items
/// - traces/funnel/attributes/marker/colorbar/tickformatstops/items
/// - traces/sunburst/attributes/marker/colorbar/tickformatstops/items
/// - traces/treemap/attributes/marker/colorbar/tickformatstops/items
/// - traces/scatter3d/attributes/line/colorbar/tickformatstops/items
/// - traces/scatter3d/attributes/marker/colorbar/tickformatstops/items
/// - traces/surface/attributes/colorbar/tickformatstops/items
/// - traces/isosurface/attributes/colorbar/tickformatstops/items
/// - traces/volume/attributes/colorbar/tickformatstops/items
/// - traces/mesh3d/attributes/colorbar/tickformatstops/items
/// - traces/cone/attributes/colorbar/tickformatstops/items
/// - traces/streamtube/attributes/colorbar/tickformatstops/items
/// - traces/scattergeo/attributes/marker/colorbar/tickformatstops/items
/// - traces/choropleth/attributes/colorbar/tickformatstops/items
/// - traces/scattergl/attributes/marker/colorbar/tickformatstops/items
/// - traces/splom/attributes/marker/colorbar/tickformatstops/items
/// - traces/heatmapgl/attributes/colorbar/tickformatstops/items
/// - traces/parcoords/attributes/line/colorbar/tickformatstops/items
/// - traces/parcats/attributes/line/colorbar/tickformatstops/items
/// - traces/scattermapbox/attributes/marker/colorbar/tickformatstops/items
/// - traces/choroplethmapbox/attributes/colorbar/tickformatstops/items
/// - traces/densitymapbox/attributes/colorbar/tickformatstops/items
/// - traces/indicator/attributes/gauge/axis/tickformatstops/items
/// - traces/carpet/attributes/aaxis/tickformatstops/items
/// - traces/carpet/attributes/baxis/tickformatstops/items
/// - traces/scattercarpet/attributes/marker/colorbar/tickformatstops/items
/// - traces/contourcarpet/attributes/colorbar/tickformatstops/items
/// - traces/scatterpolar/attributes/marker/colorbar/tickformatstops/items
/// - traces/scatterpolargl/attributes/marker/colorbar/tickformatstops/items
/// - traces/barpolar/attributes/marker/colorbar/tickformatstops/items
public struct Items0: Encodable {
    public var tickFormatStop: TickFormatStop?

    /// Plotly compatible property encoding
    enum CodingKeys: String, CodingKey {
        case tickFormatStop = "tickformatstop"
    }
    
    public init(tickFormatStop: TickFormatStop? = nil) {
        self.tickFormatStop = tickFormatStop
    }
}

/// - layout/layoutAttributes/xaxis/tickformatstops/items/tickformatstop
/// - layout/layoutAttributes/yaxis/tickformatstops/items/tickformatstop
/// - layout/layoutAttributes/ternary/aaxis/tickformatstops/items/tickformatstop
/// - layout/layoutAttributes/ternary/baxis/tickformatstops/items/tickformatstop
/// - layout/layoutAttributes/ternary/caxis/tickformatstops/items/tickformatstop
/// - layout/layoutAttributes/scene/xaxis/tickformatstops/items/tickformatstop
/// - layout/layoutAttributes/scene/yaxis/tickformatstops/items/tickformatstop
/// - layout/layoutAttributes/scene/zaxis/tickformatstops/items/tickformatstop
/// - layout/layoutAttributes/polar/radialaxis/tickformatstops/items/tickformatstop
/// - layout/layoutAttributes/polar/angularaxis/tickformatstops/items/tickformatstop
/// - layout/layoutAttributes/coloraxis/colorbar/tickformatstops/items/tickformatstop
/// - traces/scatter/attributes/marker/colorbar/tickformatstops/items/tickformatstop
/// - traces/bar/attributes/marker/colorbar/tickformatstops/items/tickformatstop
/// - traces/heatmap/attributes/colorbar/tickformatstops/items/tickformatstop
/// - traces/histogram/attributes/marker/colorbar/tickformatstops/items/tickformatstop
/// - traces/histogram2d/attributes/colorbar/tickformatstops/items/tickformatstop
/// - traces/histogram2dcontour/attributes/colorbar/tickformatstops/items/tickformatstop
/// - traces/contour/attributes/colorbar/tickformatstops/items/tickformatstop
/// - traces/scatterternary/attributes/marker/colorbar/tickformatstops/items/tickformatstop
/// - traces/funnel/attributes/marker/colorbar/tickformatstops/items/tickformatstop
/// - traces/sunburst/attributes/marker/colorbar/tickformatstops/items/tickformatstop
/// - traces/treemap/attributes/marker/colorbar/tickformatstops/items/tickformatstop
/// - traces/scatter3d/attributes/line/colorbar/tickformatstops/items/tickformatstop
/// - traces/scatter3d/attributes/marker/colorbar/tickformatstops/items/tickformatstop
/// - traces/surface/attributes/colorbar/tickformatstops/items/tickformatstop
/// - traces/isosurface/attributes/colorbar/tickformatstops/items/tickformatstop
/// - traces/volume/attributes/colorbar/tickformatstops/items/tickformatstop
/// - traces/mesh3d/attributes/colorbar/tickformatstops/items/tickformatstop
/// - traces/cone/attributes/colorbar/tickformatstops/items/tickformatstop
/// - traces/streamtube/attributes/colorbar/tickformatstops/items/tickformatstop
/// - traces/scattergeo/attributes/marker/colorbar/tickformatstops/items/tickformatstop
/// - traces/choropleth/attributes/colorbar/tickformatstops/items/tickformatstop
/// - traces/scattergl/attributes/marker/colorbar/tickformatstops/items/tickformatstop
/// - traces/splom/attributes/marker/colorbar/tickformatstops/items/tickformatstop
/// - traces/heatmapgl/attributes/colorbar/tickformatstops/items/tickformatstop
/// - traces/parcoords/attributes/line/colorbar/tickformatstops/items/tickformatstop
/// - traces/parcats/attributes/line/colorbar/tickformatstops/items/tickformatstop
/// - traces/scattermapbox/attributes/marker/colorbar/tickformatstops/items/tickformatstop
/// - traces/choroplethmapbox/attributes/colorbar/tickformatstops/items/tickformatstop
/// - traces/densitymapbox/attributes/colorbar/tickformatstops/items/tickformatstop
/// - traces/indicator/attributes/gauge/axis/tickformatstops/items/tickformatstop
/// - traces/carpet/attributes/aaxis/tickformatstops/items/tickformatstop
/// - traces/carpet/attributes/baxis/tickformatstops/items/tickformatstop
/// - traces/scattercarpet/attributes/marker/colorbar/tickformatstops/items/tickformatstop
/// - traces/contourcarpet/attributes/colorbar/tickformatstops/items/tickformatstop
/// - traces/scatterpolar/attributes/marker/colorbar/tickformatstops/items/tickformatstop
/// - traces/scatterpolargl/attributes/marker/colorbar/tickformatstops/items/tickformatstop
/// - traces/barpolar/attributes/marker/colorbar/tickformatstops/items/tickformatstop
public struct TickFormatStop0: Encodable {
    /// Determines whether or not this stop is used. 
    ///
    /// If `false`, this stop is ignored even within its `dtickrange`.
    public var enabled: Bool?

    /// range [*min*, *max*], where *min*, *max* - dtick values which describe some zoom level, it is possible to omit *min* or *max* value by passing *null*
    public var dTickRange: InfoArray?

    /// string - dtickformat for described zoom level, the same as *tickformat*
    public var value: String?

    /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. 
    ///
    /// You can modify these items in the output figure by making your own item with `templateitemname`
    /// matching this `name` alongside your modifications (including `visible: false` or `enabled:
    /// false` to hide it). Has no effect outside of a template.
    public var name: String?

    /// Used to refer to a named item in this array in the template. 
    ///
    /// Named items from the template will be created even without a matching item in the input figure,
    /// but you can modify one by making an item with `templateitemname` matching its `name`, alongside
    /// your modifications (including `visible: false` or `enabled: false` to hide it). If there is no
    /// template or no matching item, this item will be hidden unless you explicitly show it with
    /// `visible: true`.
    public var templateItemName: String?

    /// Plotly compatible property encoding
    enum CodingKeys: String, CodingKey {
        case enabled
        case dTickRange = "dtickrange"
        case value
        case name
        case templateItemName = "templateitemname"
    }
    
    public init(enabled: Bool? = nil, dTickRange: InfoArray? = nil, value: String? = nil, name: String? = nil, templateItemName: String? = nil) {
        self.enabled = enabled
        self.dTickRange = dTickRange
        self.value = value
        self.name = name
        self.templateItemName = templateItemName
    }
}

/// - layout/layoutAttributes/ternary/domain
/// - layout/layoutAttributes/scene/domain
/// - layout/layoutAttributes/geo/domain
/// - layout/layoutAttributes/mapbox/domain
/// - layout/layoutAttributes/polar/domain
/// - traces/pie/attributes/domain
/// - traces/sunburst/attributes/domain
/// - traces/treemap/attributes/domain
/// - traces/funnelarea/attributes/domain
/// - traces/parcoords/attributes/domain
/// - traces/parcats/attributes/domain
/// - traces/sankey/attributes/domain
/// - traces/indicator/attributes/domain
/// - traces/table/attributes/domain
public struct Domain0: Encodable {
    /// Sets the horizontal domain of this ternary subplot (in plot fraction).
    public var x: InfoArray?

    /// Sets the vertical domain of this ternary subplot (in plot fraction).
    public var y: InfoArray?

    /// If there is a layout grid, use the domain for this row in the grid for this ternary subplot .
    public var row: Int?

    /// If there is a layout grid, use the domain for this column in the grid for this ternary subplot .
    public var column: Int?

    public init(x: InfoArray? = nil, y: InfoArray? = nil, row: Int? = nil, column: Int? = nil) {
        self.x = x
        self.y = y
        self.row = row
        self.column = column
    }
}

/// - layout/layoutAttributes/ternary/aaxis/title
/// - layout/layoutAttributes/ternary/baxis/title
/// - layout/layoutAttributes/ternary/caxis/title
/// - layout/layoutAttributes/scene/xaxis/title
/// - layout/layoutAttributes/scene/yaxis/title
/// - layout/layoutAttributes/scene/zaxis/title
/// - layout/layoutAttributes/polar/radialaxis/title
public struct Title0: Encodable {
    /// Sets the title of this axis. 
    ///
    /// Note that before the existence of `title.text`, the title's contents used to be defined as the
    /// `title` attribute itself. This behavior has been deprecated.
    public var text: String?

    /// Sets this axis' title font. 
    ///
    /// Note that the title's font used to be customized by the now deprecated `titlefont` attribute.
    public var font: Font0?

    public init(text: String? = nil, font: Font0? = nil) {
        self.text = text
        self.font = font
    }
}

/// Sets the (x,y,z) components of the 'up' camera vector. 
///
/// This vector determines the up direction of this scene with respect to the page. The default is
/// *{x: 0, y: 0, z: 1}* which means that the z axis points up.
/// - layout/layoutAttributes/scene/camera/up
/// - layout/layoutAttributes/scene/camera/center
/// - layout/layoutAttributes/scene/camera/eye
/// - traces/scatter3d/attributes/projection
/// - traces/surface/attributes/contours
/// - traces/surface/attributes/contours/x/project
/// - traces/surface/attributes/contours/y/project
/// - traces/surface/attributes/contours/z/project
/// - traces/surface/attributes/lightposition
/// - traces/isosurface/attributes/slices
/// - traces/isosurface/attributes/caps
/// - traces/isosurface/attributes/lightposition
/// - traces/volume/attributes/slices
/// - traces/volume/attributes/caps
/// - traces/volume/attributes/lightposition
/// - traces/mesh3d/attributes/lightposition
/// - traces/cone/attributes/lightposition
/// - traces/streamtube/attributes/lightposition
public struct Up0: Encodable {
    public var x: Double?

    public var y: Double?

    public var z: Double?

    public init(x: Double? = nil, y: Double? = nil, z: Double? = nil) {
        self.x = x
        self.y = y
        self.z = z
    }
}

/// - layout/layoutAttributes/scene/aspectratio/impliedEdits
/// - traces/scatter/attributes/transforms/items/transform
/// - traces/bar/attributes/transforms/items/transform
/// - traces/box/attributes/transforms/items/transform
/// - traces/heatmap/attributes/transforms/items/transform
/// - traces/histogram/attributes/transforms/items/transform
/// - traces/histogram2d/attributes/transforms/items/transform
/// - traces/histogram2dcontour/attributes/transforms/items/transform
/// - traces/histogram2dcontour/attributes/contours/impliedEdits
/// - traces/contour/attributes/transforms/items/transform
/// - traces/contour/attributes/contours/impliedEdits
/// - traces/scatterternary/attributes/transforms/items/transform
/// - traces/violin/attributes/transforms/items/transform
/// - traces/funnel/attributes/transforms/items/transform
/// - traces/waterfall/attributes/transforms/items/transform
/// - traces/pie/attributes/transforms/items/transform
/// - traces/sunburst/attributes/transforms/items/transform
/// - traces/treemap/attributes/transforms/items/transform
/// - traces/funnelarea/attributes/transforms/items/transform
/// - traces/scatter3d/attributes/transforms/items/transform
/// - traces/scattergeo/attributes/transforms/items/transform
/// - traces/choropleth/attributes/transforms/items/transform
/// - traces/scattergl/attributes/transforms/items/transform
/// - traces/splom/attributes/transforms/items/transform
/// - traces/heatmapgl/attributes/transforms/items/transform
/// - traces/parcoords/attributes/transforms/items/transform
/// - traces/parcats/attributes/transforms/items/transform
/// - traces/scattermapbox/attributes/transforms/items/transform
/// - traces/choroplethmapbox/attributes/transforms/items/transform
/// - traces/densitymapbox/attributes/transforms/items/transform
/// - traces/indicator/attributes/transforms/items/transform
/// - traces/scattercarpet/attributes/transforms/items/transform
/// - traces/contourcarpet/attributes/contours/impliedEdits
/// - traces/ohlc/attributes/transforms/items/transform
/// - traces/candlestick/attributes/transforms/items/transform
/// - traces/scatterpolar/attributes/transforms/items/transform
/// - traces/scatterpolargl/attributes/transforms/items/transform
/// - traces/barpolar/attributes/transforms/items/transform
/// - traces/area/attributes/transforms/items/transform
public struct ImpliedEdits0: Encodable {
    public init() {
    }
}

/// - layout/layoutAttributes/shapes/items/shape/line
/// - traces/funnel/attributes/connector/line
/// - traces/waterfall/attributes/connector/line
/// - traces/scattergeo/attributes/line
/// - traces/ohlc/attributes/increasing/line
/// - traces/ohlc/attributes/decreasing/line
public struct Line0: Encodable {
    /// Sets the line color.
    public var color: Color?

    /// Sets the line width (in px).
    public var width: Double?

    /// Sets the dash style of lines. 
    ///
    /// Set to a dash type string (*solid*, *dot*, *dash*, *longdash*, *dashdot*, or *longdashdot*) or a
    /// dash length list in px (eg *5px,10px,2px,2px*).
    public var dash: String?

    public init(color: Color? = nil, width: Double? = nil, dash: String? = nil) {
        self.color = color
        self.width = width
        self.dash = dash
    }
}

/// - layout/layoutAttributes/coloraxis/colorbar
/// - traces/scatter/attributes/marker/colorbar
/// - traces/bar/attributes/marker/colorbar
/// - traces/heatmap/attributes/colorbar
/// - traces/histogram/attributes/marker/colorbar
/// - traces/histogram2d/attributes/colorbar
/// - traces/histogram2dcontour/attributes/colorbar
/// - traces/contour/attributes/colorbar
/// - traces/scatterternary/attributes/marker/colorbar
/// - traces/funnel/attributes/marker/colorbar
/// - traces/sunburst/attributes/marker/colorbar
/// - traces/treemap/attributes/marker/colorbar
/// - traces/scatter3d/attributes/line/colorbar
/// - traces/scatter3d/attributes/marker/colorbar
/// - traces/surface/attributes/colorbar
/// - traces/isosurface/attributes/colorbar
/// - traces/volume/attributes/colorbar
/// - traces/mesh3d/attributes/colorbar
/// - traces/cone/attributes/colorbar
/// - traces/streamtube/attributes/colorbar
/// - traces/scattergeo/attributes/marker/colorbar
/// - traces/choropleth/attributes/colorbar
/// - traces/scattergl/attributes/marker/colorbar
/// - traces/splom/attributes/marker/colorbar
/// - traces/heatmapgl/attributes/colorbar
/// - traces/parcoords/attributes/line/colorbar
/// - traces/parcats/attributes/line/colorbar
/// - traces/scattermapbox/attributes/marker/colorbar
/// - traces/choroplethmapbox/attributes/colorbar
/// - traces/densitymapbox/attributes/colorbar
/// - traces/scattercarpet/attributes/marker/colorbar
/// - traces/contourcarpet/attributes/colorbar
/// - traces/scatterpolar/attributes/marker/colorbar
/// - traces/scatterpolargl/attributes/marker/colorbar
/// - traces/barpolar/attributes/marker/colorbar
public struct ColorBar0: Encodable {
    /// Determines whether this color bar's thickness (i.e. 
    ///
    /// the measure in the constant color direction) is set in units of plot *fraction* or in *pixels*.
    /// Use `thickness` to set the value.
    public var thicknessMode: ThicknessMode0?

    /// Sets the thickness of the color bar This measure excludes the size of the padding, ticks and labels.
    public var thickness: Double?

    /// Determines whether this color bar's length (i.e. 
    ///
    /// the measure in the color variation direction) is set in units of plot *fraction* or in *pixels.
    /// Use `len` to set the value.
    public var lengthMode: LengthMode0?

    /// Sets the length of the color bar This measure excludes the padding of both ends. 
    ///
    /// That is, the color bar length is this length minus the padding on both ends.
    public var length: Double?

    /// Sets the x position of the color bar (in plot fraction).
    public var x: Double?

    /// Sets this color bar's horizontal position anchor. 
    ///
    /// This anchor binds the `x` position to the *left*, *center* or *right* of the color bar.
    public var xAnchor: XAnchor1?

    /// Sets the amount of padding (in px) along the x direction.
    public var xPadding: Double?

    /// Sets the y position of the color bar (in plot fraction).
    public var y: Double?

    /// Sets this color bar's vertical position anchor This anchor binds the `y` position to the *top*, *middle* or *bottom* of the color bar.
    public var yAnchor: YAnchor1?

    /// Sets the amount of padding (in px) along the y direction.
    public var yPading: Double?

    /// Sets the axis line color.
    public var outLineColor: Color?

    /// Sets the width (in px) of the axis line.
    public var outLineWidth: Double?

    /// Sets the axis line color.
    public var borderColor: Color?

    /// Sets the width (in px) or the border enclosing this color bar.
    public var borderWidth: Double?

    /// Sets the color of padded area.
    public var backgroundColor: Color?

    /// Sets the tick mode for this axis. 
    ///
    /// If *auto*, the number of ticks is set via `nticks`. If *linear*, the placement of the ticks is
    /// determined by a starting position `tick0` and a tick step `dtick` (*linear* is the default value
    /// if `tick0` and `dtick` are provided). If *array*, the placement of the ticks is set via
    /// `tickvals` and the tick text is `ticktext`. (*array* is the default value if `tickvals` is
    /// provided).
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

    /// Determines whether ticks are drawn or not. 
    ///
    /// If **, this axis' ticks are not drawn. If *outside* (*inside*), this axis' are drawn outside
    /// (inside) the axis lines.
    public var ticks: Ticks0?

    /// Sets the tick length (in px).
    public var tickLength: Double?

    /// Sets the tick width (in px).
    public var tickWidth: Double?

    /// Sets the tick color.
    public var tickColor: Color?

    /// Determines whether or not the tick labels are drawn.
    public var showTickLabels: Bool?

    /// Sets the color bar's tick label font
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

    /// If *all*, all tick labels are displayed with a prefix. 
    ///
    /// If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is
    /// displayed with a suffix. If *none*, tick prefixes are hidden.
    public var showTickPrefix: ShowTickPrefix0?

    /// Sets a tick label suffix.
    public var tickSuffix: String?

    /// Same as `showtickprefix` but for tick suffixes.
    public var showTickSuffix: ShowTickSuffix0?

    /// If "true", even 4-digit integers are separated
    public var separatethousands: Bool?

    /// Determines a formatting rule for the tick exponents. 
    ///
    /// For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*,
    /// 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
    public var exponentFormat: ExponentFormat0?

    /// If *all*, all exponents are shown besides their significands. 
    ///
    /// If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the
    /// last tick is shown. If *none*, no exponents appear.
    public var showExponent: ShowExponent0?

    public var title: Title?

    /// Sets the source reference on plot.ly for  tickvals .
    public var tickValuesSource: String?

    /// Sets the source reference on plot.ly for  ticktext .
    public var tickTextSource: String?

    /// Plotly compatible property encoding
    enum CodingKeys: String, CodingKey {
        case thicknessMode = "thicknessmode"
        case thickness
        case lengthMode = "lenmode"
        case length = "len"
        case x
        case xAnchor = "xanchor"
        case xPadding = "xpad"
        case y
        case yAnchor = "yanchor"
        case yPading = "ypad"
        case outLineColor = "outlinecolor"
        case outLineWidth = "outlinewidth"
        case borderColor = "bordercolor"
        case borderWidth = "borderwidth"
        case backgroundColor = "bgcolor"
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
        case title
        case tickValuesSource = "tickvalssrc"
        case tickTextSource = "ticktextsrc"
    }
    
    public init(thicknessMode: ThicknessMode0? = nil, thickness: Double? = nil, lengthMode: LengthMode0? = nil, length: Double? = nil, x: Double? = nil, xAnchor: XAnchor1? = nil, xPadding: Double? = nil, y: Double? = nil, yAnchor: YAnchor1? = nil, yPading: Double? = nil, outLineColor: Color? = nil, outLineWidth: Double? = nil, borderColor: Color? = nil, borderWidth: Double? = nil, backgroundColor: Color? = nil, tickMode: TickMode0? = nil, numTicks: Int? = nil, tick0: Anything? = nil, dTick: Anything? = nil, tickValues: [Double]? = nil, tickText: [Double]? = nil, ticks: Ticks0? = nil, tickLength: Double? = nil, tickWidth: Double? = nil, tickColor: Color? = nil, showTickLabels: Bool? = nil, tickFont: Font0? = nil, tickAngle: Angle? = nil, tickFormat: String? = nil, tickFormatStops: TickFormatStops0? = nil, tickPrefix: String? = nil, showTickPrefix: ShowTickPrefix0? = nil, tickSuffix: String? = nil, showTickSuffix: ShowTickSuffix0? = nil, separatethousands: Bool? = nil, exponentFormat: ExponentFormat0? = nil, showExponent: ShowExponent0? = nil, title: Title? = nil, tickValuesSource: String? = nil, tickTextSource: String? = nil) {
        self.thicknessMode = thicknessMode
        self.thickness = thickness
        self.lengthMode = lengthMode
        self.length = length
        self.x = x
        self.xAnchor = xAnchor
        self.xPadding = xPadding
        self.y = y
        self.yAnchor = yAnchor
        self.yPading = yPading
        self.outLineColor = outLineColor
        self.outLineWidth = outLineWidth
        self.borderColor = borderColor
        self.borderWidth = borderWidth
        self.backgroundColor = backgroundColor
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
        self.title = title
        self.tickValuesSource = tickValuesSource
        self.tickTextSource = tickTextSource
    }
}

/// - layout/layoutAttributes/coloraxis/colorbar/title
/// - traces/scatter/attributes/marker/colorbar/title
/// - traces/bar/attributes/marker/colorbar/title
/// - traces/heatmap/attributes/colorbar/title
/// - traces/histogram/attributes/marker/colorbar/title
/// - traces/histogram2d/attributes/colorbar/title
/// - traces/histogram2dcontour/attributes/colorbar/title
/// - traces/contour/attributes/colorbar/title
/// - traces/scatterternary/attributes/marker/colorbar/title
/// - traces/funnel/attributes/marker/colorbar/title
/// - traces/sunburst/attributes/marker/colorbar/title
/// - traces/treemap/attributes/marker/colorbar/title
/// - traces/scatter3d/attributes/line/colorbar/title
/// - traces/scatter3d/attributes/marker/colorbar/title
/// - traces/surface/attributes/colorbar/title
/// - traces/isosurface/attributes/colorbar/title
/// - traces/volume/attributes/colorbar/title
/// - traces/mesh3d/attributes/colorbar/title
/// - traces/cone/attributes/colorbar/title
/// - traces/streamtube/attributes/colorbar/title
/// - traces/scattergeo/attributes/marker/colorbar/title
/// - traces/choropleth/attributes/colorbar/title
/// - traces/scattergl/attributes/marker/colorbar/title
/// - traces/splom/attributes/marker/colorbar/title
/// - traces/heatmapgl/attributes/colorbar/title
/// - traces/parcoords/attributes/line/colorbar/title
/// - traces/parcats/attributes/line/colorbar/title
/// - traces/scattermapbox/attributes/marker/colorbar/title
/// - traces/choroplethmapbox/attributes/colorbar/title
/// - traces/densitymapbox/attributes/colorbar/title
/// - traces/scattercarpet/attributes/marker/colorbar/title
/// - traces/contourcarpet/attributes/colorbar/title
/// - traces/scatterpolar/attributes/marker/colorbar/title
/// - traces/scatterpolargl/attributes/marker/colorbar/title
/// - traces/barpolar/attributes/marker/colorbar/title
public struct Title1: Encodable {
    /// Sets the title of the color bar. 
    ///
    /// Note that before the existence of `title.text`, the title's contents used to be defined as the
    /// `title` attribute itself. This behavior has been deprecated.
    public var text: String?

    /// Sets this color bar's title font. 
    ///
    /// Note that the title's font used to be set by the now deprecated `titlefont` attribute.
    public var font: Font0?

    /// Determines the location of color bar's title with respect to the color bar. 
    ///
    /// Note that the title's location used to be set by the now deprecated `titleside` attribute.
    public var side: Side0?

    public init(text: String? = nil, font: Font0? = nil, side: Side0? = nil) {
        self.text = text
        self.font = font
        self.side = side
    }
}

/// - traces/scatter/attributes/hoverlabel
/// - traces/bar/attributes/hoverlabel
/// - traces/box/attributes/hoverlabel
/// - traces/heatmap/attributes/hoverlabel
/// - traces/histogram/attributes/hoverlabel
/// - traces/histogram2d/attributes/hoverlabel
/// - traces/histogram2dcontour/attributes/hoverlabel
/// - traces/contour/attributes/hoverlabel
/// - traces/scatterternary/attributes/hoverlabel
/// - traces/violin/attributes/hoverlabel
/// - traces/funnel/attributes/hoverlabel
/// - traces/waterfall/attributes/hoverlabel
/// - traces/image/attributes/hoverlabel
/// - traces/pie/attributes/hoverlabel
/// - traces/sunburst/attributes/hoverlabel
/// - traces/treemap/attributes/hoverlabel
/// - traces/funnelarea/attributes/hoverlabel
/// - traces/scatter3d/attributes/hoverlabel
/// - traces/surface/attributes/hoverlabel
/// - traces/isosurface/attributes/hoverlabel
/// - traces/volume/attributes/hoverlabel
/// - traces/mesh3d/attributes/hoverlabel
/// - traces/cone/attributes/hoverlabel
/// - traces/streamtube/attributes/hoverlabel
/// - traces/scattergeo/attributes/hoverlabel
/// - traces/choropleth/attributes/hoverlabel
/// - traces/scattergl/attributes/hoverlabel
/// - traces/splom/attributes/hoverlabel
/// - traces/pointcloud/attributes/hoverlabel
/// - traces/heatmapgl/attributes/hoverlabel
/// - traces/scattermapbox/attributes/hoverlabel
/// - traces/choroplethmapbox/attributes/hoverlabel
/// - traces/densitymapbox/attributes/hoverlabel
/// - traces/sankey/attributes/hoverlabel
/// - traces/sankey/attributes/node/hoverlabel
/// - traces/sankey/attributes/link/hoverlabel
/// - traces/table/attributes/hoverlabel
/// - traces/scattercarpet/attributes/hoverlabel
/// - traces/scatterpolar/attributes/hoverlabel
/// - traces/scatterpolargl/attributes/hoverlabel
/// - traces/barpolar/attributes/hoverlabel
/// - traces/area/attributes/hoverlabel
public struct HoverLabel0: Encodable {
    /// Sets the background color of the hover labels for this trace
    public var backgroundColor: Color?

    /// Sets the border color of the hover labels for this trace.
    public var borderColor: Color?

    /// Sets the font used in hover labels.
    public var font: Font?

    /// Sets the horizontal alignment of the text content within hover label box. 
    ///
    /// Has an effect only if the hover label text spans more two or more lines
    public var align: Align0?

    /// Sets the default length (in number of characters) of the trace name in the hover labels for all traces. 
    ///
    /// -1 shows the whole name regardless of length. 0-3 shows the first 0-3 characters, and an integer
    /// >3 will show the whole name if it is less than that many characters, but if it is longer, will
    /// truncate to `namelength - 3` characters and add an ellipsis.
    public var nameLength: Int?

    /// Sets the source reference on plot.ly for  bgcolor .
    public var backgroundColorSource: String?

    /// Sets the source reference on plot.ly for  bordercolor .
    public var borderColorSource: String?

    /// Sets the source reference on plot.ly for  align .
    public var alignSource: String?

    /// Sets the source reference on plot.ly for  namelength .
    public var nameLengthSource: String?

    /// Plotly compatible property encoding
    enum CodingKeys: String, CodingKey {
        case backgroundColor = "bgcolor"
        case borderColor = "bordercolor"
        case font
        case align
        case nameLength = "namelength"
        case backgroundColorSource = "bgcolorsrc"
        case borderColorSource = "bordercolorsrc"
        case alignSource = "alignsrc"
        case nameLengthSource = "namelengthsrc"
    }
    
    public init(backgroundColor: Color? = nil, borderColor: Color? = nil, font: Font? = nil, align: Align0? = nil, nameLength: Int? = nil, backgroundColorSource: String? = nil, borderColorSource: String? = nil, alignSource: String? = nil, nameLengthSource: String? = nil) {
        self.backgroundColor = backgroundColor
        self.borderColor = borderColor
        self.font = font
        self.align = align
        self.nameLength = nameLength
        self.backgroundColorSource = backgroundColorSource
        self.borderColorSource = borderColorSource
        self.alignSource = alignSource
        self.nameLengthSource = nameLengthSource
    }
}

/// Sets the font used in hover labels.
/// - traces/scatter/attributes/hoverlabel/font
/// - traces/scatter/attributes/textfont
/// - traces/bar/attributes/hoverlabel/font
/// - traces/bar/attributes/textfont
/// - traces/bar/attributes/insidetextfont
/// - traces/bar/attributes/outsidetextfont
/// - traces/box/attributes/hoverlabel/font
/// - traces/heatmap/attributes/hoverlabel/font
/// - traces/histogram/attributes/hoverlabel/font
/// - traces/histogram2d/attributes/hoverlabel/font
/// - traces/histogram2dcontour/attributes/hoverlabel/font
/// - traces/contour/attributes/hoverlabel/font
/// - traces/scatterternary/attributes/hoverlabel/font
/// - traces/scatterternary/attributes/textfont
/// - traces/violin/attributes/hoverlabel/font
/// - traces/funnel/attributes/hoverlabel/font
/// - traces/funnel/attributes/textfont
/// - traces/funnel/attributes/insidetextfont
/// - traces/funnel/attributes/outsidetextfont
/// - traces/waterfall/attributes/hoverlabel/font
/// - traces/waterfall/attributes/textfont
/// - traces/waterfall/attributes/insidetextfont
/// - traces/waterfall/attributes/outsidetextfont
/// - traces/image/attributes/hoverlabel/font
/// - traces/pie/attributes/hoverlabel/font
/// - traces/pie/attributes/textfont
/// - traces/pie/attributes/insidetextfont
/// - traces/pie/attributes/outsidetextfont
/// - traces/pie/attributes/title/font
/// - traces/sunburst/attributes/hoverlabel/font
/// - traces/sunburst/attributes/textfont
/// - traces/sunburst/attributes/insidetextfont
/// - traces/sunburst/attributes/outsidetextfont
/// - traces/treemap/attributes/hoverlabel/font
/// - traces/treemap/attributes/pathbar/textfont
/// - traces/treemap/attributes/textfont
/// - traces/treemap/attributes/insidetextfont
/// - traces/treemap/attributes/outsidetextfont
/// - traces/funnelarea/attributes/hoverlabel/font
/// - traces/funnelarea/attributes/textfont
/// - traces/funnelarea/attributes/insidetextfont
/// - traces/funnelarea/attributes/title/font
/// - traces/scatter3d/attributes/hoverlabel/font
/// - traces/surface/attributes/hoverlabel/font
/// - traces/isosurface/attributes/hoverlabel/font
/// - traces/volume/attributes/hoverlabel/font
/// - traces/mesh3d/attributes/hoverlabel/font
/// - traces/cone/attributes/hoverlabel/font
/// - traces/streamtube/attributes/hoverlabel/font
/// - traces/scattergeo/attributes/hoverlabel/font
/// - traces/scattergeo/attributes/textfont
/// - traces/choropleth/attributes/hoverlabel/font
/// - traces/scattergl/attributes/hoverlabel/font
/// - traces/scattergl/attributes/textfont
/// - traces/splom/attributes/hoverlabel/font
/// - traces/pointcloud/attributes/hoverlabel/font
/// - traces/heatmapgl/attributes/hoverlabel/font
/// - traces/scattermapbox/attributes/hoverlabel/font
/// - traces/choroplethmapbox/attributes/hoverlabel/font
/// - traces/densitymapbox/attributes/hoverlabel/font
/// - traces/sankey/attributes/hoverlabel/font
/// - traces/sankey/attributes/node/hoverlabel/font
/// - traces/sankey/attributes/link/hoverlabel/font
/// - traces/table/attributes/hoverlabel/font
/// - traces/table/attributes/header/font
/// - traces/table/attributes/cells/font
/// - traces/scattercarpet/attributes/hoverlabel/font
/// - traces/scattercarpet/attributes/textfont
/// - traces/ohlc/attributes/hoverlabel/font
/// - traces/candlestick/attributes/hoverlabel/font
/// - traces/scatterpolar/attributes/hoverlabel/font
/// - traces/scatterpolar/attributes/textfont
/// - traces/scatterpolargl/attributes/hoverlabel/font
/// - traces/scatterpolargl/attributes/textfont
/// - traces/barpolar/attributes/hoverlabel/font
/// - traces/area/attributes/hoverlabel/font
public struct Font1: Encodable {
    /// HTML font family - the typeface that will be applied by the web browser. 
    ///
    /// The web browser will only be able to apply a font if it is available on the system which it
    /// operates. Provide multiple font families, separated by commas, to indicate the preference in
    /// which to apply fonts if they aren't available on the system. The plotly service (at
    /// https://plot.ly or on-premise) generates images on a server, where only a select number of fonts
    /// are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,,
    /// *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*,
    /// *PT Sans Narrow*, *Raleway*, *Times New Roman*.
    public var family: String?

    public var size: Double?

    public var color: Color?

    /// Sets the source reference on plot.ly for  family .
    public var familySource: String?

    /// Sets the source reference on plot.ly for  size .
    public var sizeSource: String?

    /// Sets the source reference on plot.ly for  color .
    public var colorSource: String?

    /// Plotly compatible property encoding
    enum CodingKeys: String, CodingKey {
        case family
        case size
        case color
        case familySource = "familysrc"
        case sizeSource = "sizesrc"
        case colorSource = "colorsrc"
    }
    
    public init(family: String? = nil, size: Double? = nil, color: Color? = nil, familySource: String? = nil, sizeSource: String? = nil, colorSource: String? = nil) {
        self.family = family
        self.size = size
        self.color = color
        self.familySource = familySource
        self.sizeSource = sizeSource
        self.colorSource = colorSource
    }
}

/// - traces/scatter/attributes/stream
/// - traces/bar/attributes/stream
/// - traces/box/attributes/stream
/// - traces/heatmap/attributes/stream
/// - traces/histogram/attributes/stream
/// - traces/histogram2d/attributes/stream
/// - traces/histogram2dcontour/attributes/stream
/// - traces/contour/attributes/stream
/// - traces/scatterternary/attributes/stream
/// - traces/violin/attributes/stream
/// - traces/funnel/attributes/stream
/// - traces/waterfall/attributes/stream
/// - traces/image/attributes/stream
/// - traces/pie/attributes/stream
/// - traces/sunburst/attributes/stream
/// - traces/treemap/attributes/stream
/// - traces/funnelarea/attributes/stream
/// - traces/scatter3d/attributes/stream
/// - traces/surface/attributes/stream
/// - traces/isosurface/attributes/stream
/// - traces/volume/attributes/stream
/// - traces/mesh3d/attributes/stream
/// - traces/cone/attributes/stream
/// - traces/streamtube/attributes/stream
/// - traces/scattergeo/attributes/stream
/// - traces/choropleth/attributes/stream
/// - traces/scattergl/attributes/stream
/// - traces/splom/attributes/stream
/// - traces/pointcloud/attributes/stream
/// - traces/heatmapgl/attributes/stream
/// - traces/parcoords/attributes/stream
/// - traces/parcats/attributes/stream
/// - traces/scattermapbox/attributes/stream
/// - traces/choroplethmapbox/attributes/stream
/// - traces/densitymapbox/attributes/stream
/// - traces/sankey/attributes/stream
/// - traces/indicator/attributes/stream
/// - traces/table/attributes/stream
/// - traces/carpet/attributes/stream
/// - traces/scattercarpet/attributes/stream
/// - traces/contourcarpet/attributes/stream
/// - traces/ohlc/attributes/stream
/// - traces/candlestick/attributes/stream
/// - traces/scatterpolar/attributes/stream
/// - traces/scatterpolargl/attributes/stream
/// - traces/barpolar/attributes/stream
/// - traces/area/attributes/stream
public struct Stream0: Encodable {
    /// The stream id number links a data trace on a plot with a stream. 
    ///
    /// See https://plot.ly/settings for more details.
    public var token: String?

    /// Sets the maximum number of points to keep on the plots from an incoming stream. 
    ///
    /// If `maxpoints` is set to *50*, only the newest 50 points will be displayed on the plot.
    public var maxPoints: Double?

    /// Plotly compatible property encoding
    enum CodingKeys: String, CodingKey {
        case token
        case maxPoints = "maxpoints"
    }
    
    public init(token: String? = nil, maxPoints: Double? = nil) {
        self.token = token
        self.maxPoints = maxPoints
    }
}

/// - traces/scatter/attributes/transforms/items
/// - traces/bar/attributes/transforms/items
/// - traces/box/attributes/transforms/items
/// - traces/heatmap/attributes/transforms/items
/// - traces/histogram/attributes/transforms/items
/// - traces/histogram2d/attributes/transforms/items
/// - traces/histogram2dcontour/attributes/transforms/items
/// - traces/contour/attributes/transforms/items
/// - traces/scatterternary/attributes/transforms/items
/// - traces/violin/attributes/transforms/items
/// - traces/funnel/attributes/transforms/items
/// - traces/waterfall/attributes/transforms/items
/// - traces/pie/attributes/transforms/items
/// - traces/sunburst/attributes/transforms/items
/// - traces/treemap/attributes/transforms/items
/// - traces/funnelarea/attributes/transforms/items
/// - traces/scatter3d/attributes/transforms/items
/// - traces/scattergeo/attributes/transforms/items
/// - traces/choropleth/attributes/transforms/items
/// - traces/scattergl/attributes/transforms/items
/// - traces/splom/attributes/transforms/items
/// - traces/heatmapgl/attributes/transforms/items
/// - traces/parcoords/attributes/transforms/items
/// - traces/parcats/attributes/transforms/items
/// - traces/scattermapbox/attributes/transforms/items
/// - traces/choroplethmapbox/attributes/transforms/items
/// - traces/densitymapbox/attributes/transforms/items
/// - traces/indicator/attributes/transforms/items
/// - traces/scattercarpet/attributes/transforms/items
/// - traces/ohlc/attributes/transforms/items
/// - traces/candlestick/attributes/transforms/items
/// - traces/scatterpolar/attributes/transforms/items
/// - traces/scatterpolargl/attributes/transforms/items
/// - traces/barpolar/attributes/transforms/items
/// - traces/area/attributes/transforms/items
public struct Items1: Encodable {
    /// An array of operations that manipulate the trace data, for example filtering or sorting the data arrays.
    public var transform: ImpliedEdits0?

    public init(transform: ImpliedEdits0? = nil) {
        self.transform = transform
    }
}

/// - traces/scatter/attributes/marker/line
/// - traces/bar/attributes/marker/line
/// - traces/histogram/attributes/marker/line
/// - traces/scatterternary/attributes/marker/line
/// - traces/funnel/attributes/marker/line
/// - traces/scattergeo/attributes/marker/line
/// - traces/scattercarpet/attributes/marker/line
/// - traces/scatterpolar/attributes/marker/line
/// - traces/barpolar/attributes/marker/line
public struct Line1: Encodable {
    /// Sets the width (in px) of the lines bounding the marker points.
    public var width: Double?

    /// Sets themarker.linecolor. 
    ///
    /// It accepts either a specific color or an array of numbers that are mapped to the colorscale
    /// relative to the max and min values of the array or relative to `marker.line.cmin` and
    /// `marker.line.cmax` if set.
    public var color: Color?

    /// Determines whether or not the color domain is computed with respect to the input data (here in `marker.line.color`) or the bounds set in `marker.line.cmin` and `marker.line.cmax`  Has an effect only if in `marker.line.color`is set to a numerical array. 
    ///
    /// Defaults to `false` when `marker.line.cmin` and `marker.line.cmax` are set by the user.
    public var cAuto: Bool?

    /// Sets the lower bound of the color domain. 
    ///
    /// Has an effect only if in `marker.line.color`is set to a numerical array. Value should have the
    /// same units as in `marker.line.color` and if set, `marker.line.cmax` must be set as well.
    public var cMin: Double?

    /// Sets the upper bound of the color domain. 
    ///
    /// Has an effect only if in `marker.line.color`is set to a numerical array. Value should have the
    /// same units as in `marker.line.color` and if set, `marker.line.cmin` must be set as well.
    public var cMax: Double?

    /// Sets the mid-point of the color domain by scaling `marker.line.cmin` and/or `marker.line.cmax` to be equidistant to this point. 
    ///
    /// Has an effect only if in `marker.line.color`is set to a numerical array. Value should have the
    /// same units as in `marker.line.color`. Has no effect when `marker.line.cauto` is `false`.
    public var cMiddle: Double?

    /// Sets the colorscale. 
    ///
    /// Has an effect only if in `marker.line.color`is set to a numerical array. The colorscale must be
    /// an array containing arrays mapping a normalized value to an rgb, rgba, hex, hsl, hsv, or named
    /// color string. At minimum, a mapping for the lowest (0) and highest (1) values are required. For
    /// example, `[[0, 'rgb(0,0,255)'], [1, 'rgb(255,0,0)']]`. To control the bounds of the colorscale
    /// in color space, use`marker.line.cmin` and `marker.line.cmax`. Alternatively, `colorscale` may be
    /// a palette name string of the following list:
    /// Greys,YlGnBu,Greens,YlOrRd,Bluered,RdBu,Reds,Blues,Picnic,Rainbow,Portland,Jet,Hot,Blackbody,Earth,Electric,Viridis,Cividis.
    public var colorScale: ColorScale?

    /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `marker.line.colorscale`. 
    ///
    /// Has an effect only if in `marker.line.color`is set to a numerical array. In case `colorscale` is
    /// unspecified or `autocolorscale` is true, the default palette will be chosen according to whether
    /// numbers in the `color` array are all positive, all negative or mixed.
    public var autoColorScale: Bool?

    /// Reverses the color mapping if true. 
    ///
    /// Has an effect only if in `marker.line.color`is set to a numerical array. If true,
    /// `marker.line.cmin` will correspond to the last color in the array and `marker.line.cmax` will
    /// correspond to the first color.
    public var reverseScale: Bool?

    /// Sets a reference to a shared color axis. 
    ///
    /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
    /// for these shared color axes are set in the layout, under `layout.coloraxis`,
    /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
    public var colorAxis: SubPlotID?

    /// Sets the source reference on plot.ly for  width .
    public var widthSource: String?

    /// Sets the source reference on plot.ly for  color .
    public var colorSource: String?

    /// Plotly compatible property encoding
    enum CodingKeys: String, CodingKey {
        case width
        case color
        case cAuto = "cauto"
        case cMin = "cmin"
        case cMax = "cmax"
        case cMiddle = "cmid"
        case colorScale = "colorscale"
        case autoColorScale = "autocolorscale"
        case reverseScale = "reversescale"
        case colorAxis = "coloraxis"
        case widthSource = "widthsrc"
        case colorSource = "colorsrc"
    }
    
    public init(width: Double? = nil, color: Color? = nil, cAuto: Bool? = nil, cMin: Double? = nil, cMax: Double? = nil, cMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, colorAxis: SubPlotID? = nil, widthSource: String? = nil, colorSource: String? = nil) {
        self.width = width
        self.color = color
        self.cAuto = cAuto
        self.cMin = cMin
        self.cMax = cMax
        self.cMiddle = cMiddle
        self.colorScale = colorScale
        self.autoColorScale = autoColorScale
        self.reverseScale = reverseScale
        self.colorAxis = colorAxis
        self.widthSource = widthSource
        self.colorSource = colorSource
    }
}

/// - traces/scatter/attributes/marker/gradient
/// - traces/scatterternary/attributes/marker/gradient
/// - traces/scattergeo/attributes/marker/gradient
/// - traces/scattercarpet/attributes/marker/gradient
/// - traces/scatterpolar/attributes/marker/gradient
public struct Gradient0: Encodable {
    /// Sets the type of gradient used to fill the markers
    public var type: Rule0?

    /// Sets the final color of the gradient fill: the center color for radial, the right for horizontal, or the bottom for vertical.
    public var color: Color?

    /// Sets the source reference on plot.ly for  type .
    public var typeSource: String?

    /// Sets the source reference on plot.ly for  color .
    public var colorSource: String?

    /// Plotly compatible property encoding
    enum CodingKeys: String, CodingKey {
        case type
        case color
        case typeSource = "typesrc"
        case colorSource = "colorsrc"
    }
    
    public init(type: Rule0? = nil, color: Color? = nil, typeSource: String? = nil, colorSource: String? = nil) {
        self.type = type
        self.color = color
        self.typeSource = typeSource
        self.colorSource = colorSource
    }
}

/// - traces/scatter/attributes/selected
/// - traces/scatter/attributes/unselected
/// - traces/bar/attributes/selected
/// - traces/bar/attributes/unselected
/// - traces/histogram/attributes/selected
/// - traces/histogram/attributes/unselected
/// - traces/scatterternary/attributes/selected
/// - traces/scatterternary/attributes/unselected
/// - traces/scattergeo/attributes/selected
/// - traces/scattergeo/attributes/unselected
/// - traces/scattergl/attributes/selected
/// - traces/scattergl/attributes/unselected
/// - traces/scattercarpet/attributes/selected
/// - traces/scattercarpet/attributes/unselected
/// - traces/scatterpolar/attributes/selected
/// - traces/scatterpolar/attributes/unselected
/// - traces/scatterpolargl/attributes/selected
/// - traces/scatterpolargl/attributes/unselected
/// - traces/barpolar/attributes/selected
/// - traces/barpolar/attributes/unselected
public struct Selected0: Encodable {
    public var marker: Marker?

    public var textFont: TextFont?

    /// Plotly compatible property encoding
    enum CodingKeys: String, CodingKey {
        case marker
        case textFont = "textfont"
    }
    
    public init(marker: Marker? = nil, textFont: TextFont? = nil) {
        self.marker = marker
        self.textFont = textFont
    }
}

/// - traces/scatter/attributes/selected/marker
/// - traces/scatter/attributes/unselected/marker
/// - traces/box/attributes/selected/marker
/// - traces/box/attributes/unselected/marker
/// - traces/scatterternary/attributes/selected/marker
/// - traces/scatterternary/attributes/unselected/marker
/// - traces/violin/attributes/selected/marker
/// - traces/violin/attributes/unselected/marker
/// - traces/scattergeo/attributes/selected/marker
/// - traces/scattergeo/attributes/unselected/marker
/// - traces/scattergl/attributes/selected/marker
/// - traces/scattergl/attributes/unselected/marker
/// - traces/splom/attributes/selected/marker
/// - traces/splom/attributes/unselected/marker
/// - traces/scattermapbox/attributes/selected/marker
/// - traces/scattermapbox/attributes/unselected/marker
/// - traces/scattercarpet/attributes/selected/marker
/// - traces/scattercarpet/attributes/unselected/marker
/// - traces/scatterpolar/attributes/selected/marker
/// - traces/scatterpolar/attributes/unselected/marker
/// - traces/scatterpolargl/attributes/selected/marker
/// - traces/scatterpolargl/attributes/unselected/marker
public struct Marker0: Encodable {
    /// Sets the marker opacity of selected points.
    public var opacity: Double?

    /// Sets the marker color of selected points.
    public var color: Color?

    /// Sets the marker size of selected points.
    public var size: Double?

    public init(opacity: Double? = nil, color: Color? = nil, size: Double? = nil) {
        self.opacity = opacity
        self.color = color
        self.size = size
    }
}

/// - traces/scatter/attributes/selected/textfont
/// - traces/scatter/attributes/unselected/textfont
/// - traces/bar/attributes/selected/textfont
/// - traces/bar/attributes/unselected/textfont
/// - traces/histogram/attributes/selected/textfont
/// - traces/histogram/attributes/unselected/textfont
/// - traces/scatterternary/attributes/selected/textfont
/// - traces/scatterternary/attributes/unselected/textfont
/// - traces/scattergeo/attributes/selected/textfont
/// - traces/scattergeo/attributes/unselected/textfont
/// - traces/scattergl/attributes/selected/textfont
/// - traces/scattergl/attributes/unselected/textfont
/// - traces/scattercarpet/attributes/selected/textfont
/// - traces/scattercarpet/attributes/unselected/textfont
/// - traces/scatterpolar/attributes/selected/textfont
/// - traces/scatterpolar/attributes/unselected/textfont
/// - traces/scatterpolargl/attributes/selected/textfont
/// - traces/scatterpolargl/attributes/unselected/textfont
/// - traces/barpolar/attributes/selected/textfont
/// - traces/barpolar/attributes/unselected/textfont
public struct TextFont0: Encodable {
    /// Sets the text font color of selected points.
    public var color: Color?

    public init(color: Color? = nil) {
        self.color = color
    }
}

/// - traces/scatter/attributes/error_y
/// - traces/bar/attributes/error_y
/// - traces/histogram/attributes/error_y
/// - traces/scatter3d/attributes/error_z
/// - traces/scattergl/attributes/error_y
public struct YError0: Encodable {
    /// Determines whether or not this set of error bars is visible.
    public var visible: Bool?

    /// Determines the rule used to generate the error bars. 
    ///
    /// If *constant`, the bar lengths are of a constant value. Set this constant in `value`. If
    /// *percent*, the bar lengths correspond to a percentage of underlying data. Set this percentage in
    /// `value`. If *sqrt*, the bar lengths correspond to the sqaure of the underlying data. If *data*,
    /// the bar lengths are set with data set `array`.
    public var type: Rule1?

    /// Determines whether or not the error bars have the same length in both direction (top/bottom for vertical bars, left/right for horizontal bars.
    public var symmetric: Bool?

    /// Sets the data corresponding the length of each error bar. 
    ///
    /// Values are plotted relative to the underlying data.
    public var array: [Double]?

    /// Sets the data corresponding the length of each error bar in the bottom (left) direction for vertical (horizontal) bars Values are plotted relative to the underlying data.
    public var arrayMinus: [Double]?

    /// Sets the value of either the percentage (if `type` is set to *percent*) or the constant (if `type` is set to *constant*) corresponding to the lengths of the error bars.
    public var value: Double?

    /// Sets the value of either the percentage (if `type` is set to *percent*) or the constant (if `type` is set to *constant*) corresponding to the lengths of the error bars in the bottom (left) direction for vertical (horizontal) bars
    public var valueMinus: Double?

    public var traceReference: Int?

    public var traceReferenceMinus: Int?

    /// Sets the stoke color of the error bars.
    public var color: Color?

    /// Sets the thickness (in px) of the error bars.
    public var thickness: Double?

    /// Sets the width (in px) of the cross-bar at both ends of the error bars.
    public var width: Double?

    /// Sets the source reference on plot.ly for  array .
    public var arraySource: String?

    /// Sets the source reference on plot.ly for  arrayminus .
    public var arrayMinusSource: String?

    /// Plotly compatible property encoding
    enum CodingKeys: String, CodingKey {
        case visible
        case type
        case symmetric
        case array
        case arrayMinus = "arrayminus"
        case value
        case valueMinus = "valueminus"
        case traceReference = "traceref"
        case traceReferenceMinus = "tracerefminus"
        case color
        case thickness
        case width
        case arraySource = "arraysrc"
        case arrayMinusSource = "arrayminussrc"
    }
    
    public init(visible: Bool? = nil, type: Rule1? = nil, symmetric: Bool? = nil, array: [Double]? = nil, arrayMinus: [Double]? = nil, value: Double? = nil, valueMinus: Double? = nil, traceReference: Int? = nil, traceReferenceMinus: Int? = nil, color: Color? = nil, thickness: Double? = nil, width: Double? = nil, arraySource: String? = nil, arrayMinusSource: String? = nil) {
        self.visible = visible
        self.type = type
        self.symmetric = symmetric
        self.array = array
        self.arrayMinus = arrayMinus
        self.value = value
        self.valueMinus = valueMinus
        self.traceReference = traceReference
        self.traceReferenceMinus = traceReferenceMinus
        self.color = color
        self.thickness = thickness
        self.width = width
        self.arraySource = arraySource
        self.arrayMinusSource = arrayMinusSource
    }
}

/// - traces/bar/attributes/selected/marker
/// - traces/bar/attributes/unselected/marker
/// - traces/histogram/attributes/selected/marker
/// - traces/histogram/attributes/unselected/marker
/// - traces/barpolar/attributes/selected/marker
/// - traces/barpolar/attributes/unselected/marker
public struct Marker1: Encodable {
    /// Sets the marker opacity of selected points.
    public var opacity: Double?

    /// Sets the marker color of selected points.
    public var color: Color?

    public init(opacity: Double? = nil, color: Color? = nil) {
        self.opacity = opacity
        self.color = color
    }
}

/// - traces/box/attributes/line
/// - traces/violin/attributes/line
/// - traces/violin/attributes/box/line
/// - traces/waterfall/attributes/increasing/marker/line
/// - traces/waterfall/attributes/decreasing/marker/line
/// - traces/waterfall/attributes/totals/marker/line
/// - traces/scattermapbox/attributes/line
/// - traces/indicator/attributes/gauge/bar/line
/// - traces/indicator/attributes/gauge/steps/items/step/line
/// - traces/indicator/attributes/gauge/threshold/line
/// - traces/candlestick/attributes/increasing/line
/// - traces/candlestick/attributes/decreasing/line
public struct Line2: Encodable {
    /// Sets the color of line bounding the box(es).
    public var color: Color?

    /// Sets the width (in px) of line bounding the box(es).
    public var width: Double?

    public init(color: Color? = nil, width: Double? = nil) {
        self.color = color
        self.width = width
    }
}

/// - traces/box/attributes/selected
/// - traces/box/attributes/unselected
/// - traces/violin/attributes/selected
/// - traces/violin/attributes/unselected
/// - traces/waterfall/attributes/increasing
/// - traces/waterfall/attributes/decreasing
/// - traces/waterfall/attributes/totals
/// - traces/choropleth/attributes/selected
/// - traces/choropleth/attributes/unselected
/// - traces/splom/attributes/selected
/// - traces/splom/attributes/unselected
/// - traces/scattermapbox/attributes/selected
/// - traces/scattermapbox/attributes/unselected
/// - traces/choroplethmapbox/attributes/selected
/// - traces/choroplethmapbox/attributes/unselected
public struct Selected1: Encodable {
    public var marker: Marker0?

    public init(marker: Marker0? = nil) {
        self.marker = marker
    }
}

/// - traces/histogram/attributes/xbins
/// - traces/histogram/attributes/ybins
/// - traces/histogram2d/attributes/xbins
/// - traces/histogram2d/attributes/ybins
/// - traces/histogram2dcontour/attributes/xbins
/// - traces/histogram2dcontour/attributes/ybins
public struct XBins0: Encodable {
    /// Sets the starting value for the x axis bins. 
    ///
    /// Defaults to the minimum data value, shifted down if necessary to make nice round values and to
    /// remove ambiguous bin edges. For example, if most of the data is integers we shift the bin edges
    /// 0.5 down, so a `size` of 5 would have a default `start` of -0.5, so it is clear that 0-4 are in
    /// the first bin, 5-9 in the second, but continuous data gets a start of 0 and bins [0,5), [5,10)
    /// etc. Dates behave similarly, and `start` should be a date string. For category data, `start` is
    /// based on the category serial numbers, and defaults to -0.5. If multiple non-overlaying
    /// histograms share a subplot, the first explicit `start` is used exactly and all others are
    /// shifted down (if necessary) to differ from that one by an integer number of bins.
    public var start: Anything?

    /// Sets the end value for the x axis bins. 
    ///
    /// The last bin may not end exactly at this value, we increment the bin edge by `size` from `start`
    /// until we reach or exceed `end`. Defaults to the maximum data value. Like `start`, for dates use
    /// a date string, and for category data `end` is based on the category serial numbers.
    public var end: Anything?

    /// Sets the size of each x axis bin. 
    ///
    /// Default behavior: If `nbinsx` is 0 or omitted, we choose a nice round bin size such that the
    /// number of bins is about the same as the typical number of samples in each bin. If `nbinsx` is
    /// provided, we choose a nice round bin size giving no more than that many bins. For date data, use
    /// milliseconds or *M<n>* for months, as in `axis.dtick`. For category data, the number of
    /// categories to bin together (always defaults to 1). If multiple non-overlaying histograms share a
    /// subplot, the first explicit `size` is used and all others discarded. If no `size` is
    /// provided,the sample data from all traces is combined to determine `size` as described above.
    public var size: Anything?

    public init(start: Anything? = nil, end: Anything? = nil, size: Anything? = nil) {
        self.start = start
        self.end = end
        self.size = size
    }
}

/// - traces/pie/attributes/marker/line
/// - traces/sunburst/attributes/marker/line
/// - traces/treemap/attributes/marker/line
/// - traces/funnelarea/attributes/marker/line
/// - traces/choropleth/attributes/marker/line
/// - traces/choroplethmapbox/attributes/marker/line
/// - traces/sankey/attributes/node/line
/// - traces/sankey/attributes/link/line
public struct Line3: Encodable {
    /// Sets the color of the line enclosing each sector.
    public var color: Color?

    /// Sets the width (in px) of the line enclosing each sector.
    public var width: Double?

    /// Sets the source reference on plot.ly for  color .
    public var colorSource: String?

    /// Sets the source reference on plot.ly for  width .
    public var widthSource: String?

    /// Plotly compatible property encoding
    enum CodingKeys: String, CodingKey {
        case color
        case width
        case colorSource = "colorsrc"
        case widthSource = "widthsrc"
    }
    
    public init(color: Color? = nil, width: Double? = nil, colorSource: String? = nil, widthSource: String? = nil) {
        self.color = color
        self.width = width
        self.colorSource = colorSource
        self.widthSource = widthSource
    }
}

/// - traces/sunburst/attributes/leaf
/// - traces/choropleth/attributes/selected/marker
/// - traces/choropleth/attributes/unselected/marker
/// - traces/choroplethmapbox/attributes/selected/marker
/// - traces/choroplethmapbox/attributes/unselected/marker
public struct Leaf0: Encodable {
    /// Sets the opacity of the leaves. 
    ///
    /// With colorscale it is defaulted to 1; otherwise it is defaulted to 0.7
    public var opacity: Double?

    public init(opacity: Double? = nil) {
        self.opacity = opacity
    }
}

/// - traces/isosurface/attributes/spaceframe
/// - traces/isosurface/attributes/caps/x
/// - traces/isosurface/attributes/caps/y
/// - traces/isosurface/attributes/caps/z
/// - traces/volume/attributes/spaceframe
/// - traces/volume/attributes/caps/x
/// - traces/volume/attributes/caps/y
/// - traces/volume/attributes/caps/z
public struct SpaceFrame0: Encodable {
    /// Displays/hides tetrahedron shapes between minimum and maximum iso-values. 
    ///
    /// Often useful when either caps or surfaces are disabled or filled with values less than 1.
    public var show: Bool?

    /// Sets the fill ratio of the `spaceframe` elements. 
    ///
    /// The default fill value is 0.15 meaning that only 15% of the area of every faces of tetras would
    /// be shaded. Applying a greater `fill` ratio would allow the creation of stronger elements or
    /// could be sued to have entirely closed areas (in case of using 1).
    public var fill: Double?

    public init(show: Bool? = nil, fill: Double? = nil) {
        self.show = show
        self.fill = fill
    }
}

/// - traces/isosurface/attributes/slices/x
/// - traces/isosurface/attributes/slices/y
/// - traces/isosurface/attributes/slices/z
/// - traces/volume/attributes/slices/x
/// - traces/volume/attributes/slices/y
/// - traces/volume/attributes/slices/z
public struct X0: Encodable {
    /// Determines whether or not slice planes about the x dimension are drawn.
    public var show: Bool?

    /// Specifies the location(s) of slices on the axis. 
    ///
    /// When not specified slices would be created for all points of the axis x except start and end.
    public var locations: [Double]?

    /// Sets the fill ratio of the `slices`. 
    ///
    /// The default fill value of the `slices` is 1 meaning that they are entirely shaded. On the other
    /// hand Applying a `fill` ratio less than one would allow the creation of openings parallel to the
    /// edges.
    public var fill: Double?

    /// Sets the source reference on plot.ly for  locations .
    public var locationsSource: String?

    /// Plotly compatible property encoding
    enum CodingKeys: String, CodingKey {
        case show
        case locations
        case fill
        case locationsSource = "locationssrc"
    }
    
    public init(show: Bool? = nil, locations: [Double]? = nil, fill: Double? = nil, locationsSource: String? = nil) {
        self.show = show
        self.locations = locations
        self.fill = fill
        self.locationsSource = locationsSource
    }
}

/// - traces/isosurface/attributes/lighting
/// - traces/volume/attributes/lighting
/// - traces/mesh3d/attributes/lighting
/// - traces/cone/attributes/lighting
/// - traces/streamtube/attributes/lighting
public struct Lighting0: Encodable {
    /// Epsilon for vertex normals calculation avoids math issues arising from degenerate geometry.
    public var vertexNormalsEpsilon: Double?

    /// Epsilon for face normals calculation avoids math issues arising from degenerate geometry.
    public var faceNormalsEpsilon: Double?

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

    /// Plotly compatible property encoding
    enum CodingKeys: String, CodingKey {
        case vertexNormalsEpsilon = "vertexnormalsepsilon"
        case faceNormalsEpsilon = "facenormalsepsilon"
        case ambient
        case diffuse
        case specular
        case roughness
        case fresnel
    }
    
    public init(vertexNormalsEpsilon: Double? = nil, faceNormalsEpsilon: Double? = nil, ambient: Double? = nil, diffuse: Double? = nil, specular: Double? = nil, roughness: Double? = nil, fresnel: Double? = nil) {
        self.vertexNormalsEpsilon = vertexNormalsEpsilon
        self.faceNormalsEpsilon = faceNormalsEpsilon
        self.ambient = ambient
        self.diffuse = diffuse
        self.specular = specular
        self.roughness = roughness
        self.fresnel = fresnel
    }
}
