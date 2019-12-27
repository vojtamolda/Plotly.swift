/// Sets the global font. 
///
/// Note that fonts used in traces and other layout components inherit from the global font.
/// - layout/layoutAttributes/font
/// - layout/layoutAttributes/title/font
/// - layout/layoutAttributes/_deprecated/titlefont
/// - layout/layoutAttributes/hoverlabel/font
/// - layout/layoutAttributes/xaxis/title/font
/// - layout/layoutAttributes/xaxis/tickfont
/// - layout/layoutAttributes/xaxis/_deprecated/titlefont
/// - layout/layoutAttributes/xaxis/rangeselector/font
/// - layout/layoutAttributes/yaxis/title/font
/// - layout/layoutAttributes/yaxis/tickfont
/// - layout/layoutAttributes/yaxis/_deprecated/titlefont
/// - layout/layoutAttributes/ternary/aaxis/title/font
/// - layout/layoutAttributes/ternary/aaxis/tickfont
/// - layout/layoutAttributes/ternary/aaxis/_deprecated/titlefont
/// - layout/layoutAttributes/ternary/baxis/title/font
/// - layout/layoutAttributes/ternary/baxis/tickfont
/// - layout/layoutAttributes/ternary/baxis/_deprecated/titlefont
/// - layout/layoutAttributes/ternary/caxis/title/font
/// - layout/layoutAttributes/ternary/caxis/tickfont
/// - layout/layoutAttributes/ternary/caxis/_deprecated/titlefont
/// - layout/layoutAttributes/scene/xaxis/title/font
/// - layout/layoutAttributes/scene/xaxis/tickfont
/// - layout/layoutAttributes/scene/xaxis/_deprecated/titlefont
/// - layout/layoutAttributes/scene/yaxis/title/font
/// - layout/layoutAttributes/scene/yaxis/tickfont
/// - layout/layoutAttributes/scene/yaxis/_deprecated/titlefont
/// - layout/layoutAttributes/scene/zaxis/title/font
/// - layout/layoutAttributes/scene/zaxis/tickfont
/// - layout/layoutAttributes/scene/zaxis/_deprecated/titlefont
/// - layout/layoutAttributes/scene/annotations/items/annotation/font
/// - layout/layoutAttributes/scene/annotations/items/annotation/hoverlabel/font
/// - layout/layoutAttributes/mapbox/layers/items/layer/symbol/textfont
/// - layout/layoutAttributes/polar/radialaxis/title/font
/// - layout/layoutAttributes/polar/radialaxis/_deprecated/titlefont
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
/// - layout/layoutAttributes/coloraxis/colorbar/_deprecated/titlefont
/// - traces/scatter/attributes/marker/colorbar/tickfont
/// - traces/scatter/attributes/marker/colorbar/title/font
/// - traces/scatter/attributes/marker/colorbar/_deprecated/titlefont
/// - traces/bar/attributes/marker/colorbar/tickfont
/// - traces/bar/attributes/marker/colorbar/title/font
/// - traces/bar/attributes/marker/colorbar/_deprecated/titlefont
/// - traces/heatmap/attributes/colorbar/tickfont
/// - traces/heatmap/attributes/colorbar/title/font
/// - traces/heatmap/attributes/colorbar/_deprecated/titlefont
/// - traces/histogram/attributes/marker/colorbar/tickfont
/// - traces/histogram/attributes/marker/colorbar/title/font
/// - traces/histogram/attributes/marker/colorbar/_deprecated/titlefont
/// - traces/histogram2d/attributes/colorbar/tickfont
/// - traces/histogram2d/attributes/colorbar/title/font
/// - traces/histogram2d/attributes/colorbar/_deprecated/titlefont
/// - traces/histogram2dcontour/attributes/contours/labelfont
/// - traces/histogram2dcontour/attributes/colorbar/tickfont
/// - traces/histogram2dcontour/attributes/colorbar/title/font
/// - traces/histogram2dcontour/attributes/colorbar/_deprecated/titlefont
/// - traces/contour/attributes/contours/labelfont
/// - traces/contour/attributes/colorbar/tickfont
/// - traces/contour/attributes/colorbar/title/font
/// - traces/contour/attributes/colorbar/_deprecated/titlefont
/// - traces/scatterternary/attributes/marker/colorbar/tickfont
/// - traces/scatterternary/attributes/marker/colorbar/title/font
/// - traces/scatterternary/attributes/marker/colorbar/_deprecated/titlefont
/// - traces/funnel/attributes/marker/colorbar/tickfont
/// - traces/funnel/attributes/marker/colorbar/title/font
/// - traces/funnel/attributes/marker/colorbar/_deprecated/titlefont
/// - traces/pie/attributes/_deprecated/titlefont
/// - traces/sunburst/attributes/marker/colorbar/tickfont
/// - traces/sunburst/attributes/marker/colorbar/title/font
/// - traces/sunburst/attributes/marker/colorbar/_deprecated/titlefont
/// - traces/treemap/attributes/marker/colorbar/tickfont
/// - traces/treemap/attributes/marker/colorbar/title/font
/// - traces/treemap/attributes/marker/colorbar/_deprecated/titlefont
/// - traces/scatter3d/attributes/line/colorbar/tickfont
/// - traces/scatter3d/attributes/line/colorbar/title/font
/// - traces/scatter3d/attributes/line/colorbar/_deprecated/titlefont
/// - traces/scatter3d/attributes/marker/colorbar/tickfont
/// - traces/scatter3d/attributes/marker/colorbar/title/font
/// - traces/scatter3d/attributes/marker/colorbar/_deprecated/titlefont
/// - traces/surface/attributes/colorbar/tickfont
/// - traces/surface/attributes/colorbar/title/font
/// - traces/surface/attributes/colorbar/_deprecated/titlefont
/// - traces/isosurface/attributes/colorbar/tickfont
/// - traces/isosurface/attributes/colorbar/title/font
/// - traces/isosurface/attributes/colorbar/_deprecated/titlefont
/// - traces/volume/attributes/colorbar/tickfont
/// - traces/volume/attributes/colorbar/title/font
/// - traces/volume/attributes/colorbar/_deprecated/titlefont
/// - traces/mesh3d/attributes/colorbar/tickfont
/// - traces/mesh3d/attributes/colorbar/title/font
/// - traces/mesh3d/attributes/colorbar/_deprecated/titlefont
/// - traces/cone/attributes/colorbar/tickfont
/// - traces/cone/attributes/colorbar/title/font
/// - traces/cone/attributes/colorbar/_deprecated/titlefont
/// - traces/streamtube/attributes/colorbar/tickfont
/// - traces/streamtube/attributes/colorbar/title/font
/// - traces/streamtube/attributes/colorbar/_deprecated/titlefont
/// - traces/scattergeo/attributes/marker/colorbar/tickfont
/// - traces/scattergeo/attributes/marker/colorbar/title/font
/// - traces/scattergeo/attributes/marker/colorbar/_deprecated/titlefont
/// - traces/choropleth/attributes/colorbar/tickfont
/// - traces/choropleth/attributes/colorbar/title/font
/// - traces/choropleth/attributes/colorbar/_deprecated/titlefont
/// - traces/scattergl/attributes/marker/colorbar/tickfont
/// - traces/scattergl/attributes/marker/colorbar/title/font
/// - traces/scattergl/attributes/marker/colorbar/_deprecated/titlefont
/// - traces/splom/attributes/marker/colorbar/tickfont
/// - traces/splom/attributes/marker/colorbar/title/font
/// - traces/splom/attributes/marker/colorbar/_deprecated/titlefont
/// - traces/heatmapgl/attributes/colorbar/tickfont
/// - traces/heatmapgl/attributes/colorbar/title/font
/// - traces/heatmapgl/attributes/colorbar/_deprecated/titlefont
/// - traces/parcoords/attributes/labelfont
/// - traces/parcoords/attributes/tickfont
/// - traces/parcoords/attributes/rangefont
/// - traces/parcoords/attributes/line/colorbar/tickfont
/// - traces/parcoords/attributes/line/colorbar/title/font
/// - traces/parcoords/attributes/line/colorbar/_deprecated/titlefont
/// - traces/parcats/attributes/labelfont
/// - traces/parcats/attributes/tickfont
/// - traces/parcats/attributes/line/colorbar/tickfont
/// - traces/parcats/attributes/line/colorbar/title/font
/// - traces/parcats/attributes/line/colorbar/_deprecated/titlefont
/// - traces/scattermapbox/attributes/marker/colorbar/tickfont
/// - traces/scattermapbox/attributes/marker/colorbar/title/font
/// - traces/scattermapbox/attributes/marker/colorbar/_deprecated/titlefont
/// - traces/scattermapbox/attributes/textfont
/// - traces/choroplethmapbox/attributes/colorbar/tickfont
/// - traces/choroplethmapbox/attributes/colorbar/title/font
/// - traces/choroplethmapbox/attributes/colorbar/_deprecated/titlefont
/// - traces/densitymapbox/attributes/colorbar/tickfont
/// - traces/densitymapbox/attributes/colorbar/title/font
/// - traces/densitymapbox/attributes/colorbar/_deprecated/titlefont
/// - traces/sankey/attributes/textfont
/// - traces/indicator/attributes/title/font
/// - traces/indicator/attributes/number/font
/// - traces/indicator/attributes/delta/font
/// - traces/indicator/attributes/gauge/axis/tickfont
/// - traces/carpet/attributes/aaxis/title/font
/// - traces/carpet/attributes/aaxis/tickfont
/// - traces/carpet/attributes/aaxis/_deprecated/titlefont
/// - traces/carpet/attributes/baxis/title/font
/// - traces/carpet/attributes/baxis/tickfont
/// - traces/carpet/attributes/baxis/_deprecated/titlefont
/// - traces/carpet/attributes/font
/// - traces/scattercarpet/attributes/marker/colorbar/tickfont
/// - traces/scattercarpet/attributes/marker/colorbar/title/font
/// - traces/scattercarpet/attributes/marker/colorbar/_deprecated/titlefont
/// - traces/contourcarpet/attributes/contours/labelfont
/// - traces/contourcarpet/attributes/colorbar/tickfont
/// - traces/contourcarpet/attributes/colorbar/title/font
/// - traces/contourcarpet/attributes/colorbar/_deprecated/titlefont
/// - traces/scatterpolar/attributes/marker/colorbar/tickfont
/// - traces/scatterpolar/attributes/marker/colorbar/title/font
/// - traces/scatterpolar/attributes/marker/colorbar/_deprecated/titlefont
/// - traces/scatterpolargl/attributes/marker/colorbar/tickfont
/// - traces/scatterpolargl/attributes/marker/colorbar/title/font
/// - traces/scatterpolargl/attributes/marker/colorbar/_deprecated/titlefont
/// - traces/barpolar/attributes/marker/colorbar/tickfont
/// - traces/barpolar/attributes/marker/colorbar/title/font
/// - traces/barpolar/attributes/marker/colorbar/_deprecated/titlefont
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

/// Sets the padding of the title. 
///
/// Each padding value only applies when the corresponding `xanchor`/`yanchor` value is set
/// accordingly. E.g. for left padding to take effect, `xanchor` must be set to *left*. The same
/// rule applies if `xanchor`/`yanchor` is determined automatically. Padding is muted if the
/// respective anchor value is *middle*/*center*.
/// - layout/layoutAttributes/title/pad
/// - layout/layoutAttributes/updatemenus/items/updatemenu/pad
/// - layout/layoutAttributes/sliders/items/slider/pad
public struct Padding0: Encodable {
    /// The amount of padding (in px) along the top of the component.
    public var t: Double?

    /// The amount of padding (in px) on the right side of the component.
    public var r: Double?

    /// The amount of padding (in px) along the bottom of the component.
    public var b: Double?

    /// The amount of padding (in px) on the left side of the component.
    public var l: Double?

    public init(t: Double? = nil, r: Double? = nil, b: Double? = nil, l: Double? = nil) {
        self.t = t
        self.r = r
        self.b = b
        self.l = l
    }
}

/// - layout/layoutAttributes/_deprecated
/// - layout/layoutAttributes/ternary/aaxis/_deprecated
/// - layout/layoutAttributes/ternary/baxis/_deprecated
/// - layout/layoutAttributes/ternary/caxis/_deprecated
/// - layout/layoutAttributes/scene/xaxis/_deprecated
/// - layout/layoutAttributes/scene/yaxis/_deprecated
/// - layout/layoutAttributes/scene/zaxis/_deprecated
/// - layout/layoutAttributes/polar/radialaxis/_deprecated
public struct Deprecated0: Encodable {
    /// Value of `title` is no longer a simple *string* but a set of sub-attributes. 
    ///
    /// To set the contents of the title, please use `title.text` now.
    public var title: String?

    public var titleFont: Font0?

    public init(title: String? = nil, titleFont: Font0? = nil) {
        self.title = title
        self.titleFont = titleFont
    }
}

/// - layout/layoutAttributes/xaxis/title
/// - layout/layoutAttributes/yaxis/title
public struct Title0: Encodable {
    /// Sets the title of this axis. 
    ///
    /// Note that before the existence of `title.text`, the title's contents used to be defined as the
    /// `title` attribute itself. This behavior has been deprecated.
    public var text: String?

    public var font: Font0?

    /// Sets the standoff distance (in px) between the axis labels and the title text The default value is a function of the axis tick labels, the title `font.size` and the axis `linewidth`. 
    ///
    /// Note that the axis title position is always constrained within the margins, so the actual
    /// standoff distance is always less than the set or default value. By setting `standoff` and
    /// turning on `automargin`, plotly.js will push the margins to fit the axis title at given standoff
    /// distance.
    public var standoff: Double?

    public init(text: String? = nil, font: Font0? = nil, standoff: Double? = nil) {
        self.text = text
        self.font = font
        self.standoff = standoff
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

    public init(enabled: Bool? = nil, dTickRange: InfoArray? = nil, value: String? = nil, name: String? = nil, templateItemName: String? = nil) {
        self.enabled = enabled
        self.dTickRange = dTickRange
        self.value = value
        self.name = name
        self.templateItemName = templateItemName
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
    public var tickFormatStop: TickFormatStop0?

    public init(tickFormatStop: TickFormatStop0? = nil) {
        self.tickFormatStop = tickFormatStop
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
/// - layout/layoutAttributes/updatemenus/items/updatemenu/buttons
/// - layout/layoutAttributes/updatemenus
/// - layout/layoutAttributes/sliders/items/slider/steps
/// - layout/layoutAttributes/sliders
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
    public var items: Items0?

    public init(items: Items0? = nil) {
        self.items = items
    }
}

/// - layout/layoutAttributes/xaxis/_deprecated
/// - layout/layoutAttributes/yaxis/_deprecated
public struct Deprecated1: Encodable {
    /// Obsolete. 
    ///
    /// Set `tickmode` to *auto* for old `autotick` *true* behavior. Set `tickmode` to *linear* for
    /// `autotick` *false*.
    public var autoTick: Bool?

    /// Value of `title` is no longer a simple *string* but a set of sub-attributes. 
    ///
    /// To set the axis' title, please use `title.text` now.
    public var title: String?

    public var titleFont: Font0?

    public init(autoTick: Bool? = nil, title: String? = nil, titleFont: Font0? = nil) {
        self.autoTick = autoTick
        self.title = title
        self.titleFont = titleFont
    }
}

/// - layout/layoutAttributes/xaxis/rangeselector/buttons/items
/// - layout/layoutAttributes/updatemenus/items/updatemenu/buttons/items
public struct Items1: Encodable {
    /// Sets the specifications for each buttons. 
    ///
    /// By default, a range selector comes with no buttons.
    /// - layout/layoutAttributes/xaxis/rangeselector/buttons/items/button
    public struct Button: Encodable {
        /// Determines whether or not this button is visible.
        public var visible: Bool?
    
        /// The unit of measurement that the `count` value will set the range by.
        /// - layout/layoutAttributes/xaxis/rangeselector/buttons/items/button/step
        public enum Step: String, Encodable {
            case month
            case year
            case day
            case hour
            case minute
            case second
            case all
        }
        public var step: Step?
    
        /// Sets the range update mode. 
        ///
        /// If *backward*, the range update shifts the start of range back *count* times *step*
        /// milliseconds. If *todate*, the range update shifts the start of range back to the first
        /// timestamp from *count* times *step* milliseconds back. For example, with `step` set to *year*
        /// and `count` set to *1* the range update shifts the start of the range back to January 01 of the
        /// current year. Month and year *todate* are currently available only for the built-in (Gregorian)
        /// calendar.
        /// - layout/layoutAttributes/xaxis/rangeselector/buttons/items/button/stepmode
        public enum StepMode: String, Encodable {
            case backward
            case todate
        }
        public var stepMode: StepMode?
    
        /// Sets the number of steps to take to update the range. 
        ///
        /// Use with `step` to specify the update interval.
        public var count: Double?
    
        /// Sets the text label to appear on the button.
        public var label: String?
    
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
    
        public init(visible: Bool? = nil, step: Step? = nil, stepMode: StepMode? = nil, count: Double? = nil, label: String? = nil, name: String? = nil, templateItemName: String? = nil) {
            self.visible = visible
            self.step = step
            self.stepMode = stepMode
            self.count = count
            self.label = label
            self.name = name
            self.templateItemName = templateItemName
        }
    }
    public var button: Button?

    public init(button: Button? = nil) {
        self.button = button
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
public struct Title1: Encodable {
    /// Sets the title of this axis. 
    ///
    /// Note that before the existence of `title.text`, the title's contents used to be defined as the
    /// `title` attribute itself. This behavior has been deprecated.
    public var text: String?

    public var font: Font0?

    public init(text: String? = nil, font: Font0? = nil) {
        self.text = text
        self.font = font
    }
}

/// - layout/layoutAttributes/ternary/aaxis
/// - layout/layoutAttributes/ternary/baxis
/// - layout/layoutAttributes/ternary/caxis
public struct AAxis0: Encodable {
    public var title: Title1?

    /// Sets default for all colors associated with this axis all at once: line, font, tick, and grid colors. 
    ///
    /// Grid color is lightened by blending this with the plot background Individual pieces can override
    /// this.
    public var color: Color?

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

    public var showTickPrefix: ShowTickPrefix0?

    /// Sets a tick label prefix.
    public var tickPrefix: String?

    public var showTickSuffix: ShowTickPrefix0?

    /// Sets a tick label suffix.
    public var tickSuffix: String?

    public var showExponent: ShowTickPrefix0?

    public var exponentFormat: ExponentFormat0?

    /// If "true", even 4-digit integers are separated
    public var separatethousands: Bool?

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

    /// Sets the hover text formatting rule using d3 formatting mini-languages which are very similar to those in Python. 
    ///
    /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
    /// And for dates see:
    /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
    /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
    /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
    public var hoverFormat: String?

    /// Determines whether or not a line bounding this axis is drawn.
    public var showLine: Bool?

    /// Sets the axis line color.
    public var lineColor: Color?

    /// Sets the width (in px) of the axis line.
    public var lineWidth: Double?

    /// Determines whether or not grid lines are drawn. 
    ///
    /// If *true*, the grid lines are drawn at every tick mark.
    public var showGrid: Bool?

    /// Sets the color of the grid lines.
    public var gridColor: Color?

    /// Sets the width (in px) of the grid lines.
    public var gridWidth: Double?

    public var layer: Layer0?

    /// The minimum value visible on this axis. 
    ///
    /// The maximum is determined by the sum minus the minimum values of the other two axes. The full
    /// view corresponds to all the minima set to zero.
    public var min: Double?

    public var deprecated: Deprecated0?

    /// Controls persistence of user-driven changes in axis `min`, and `title` if in `editable: true` configuration. 
    ///
    /// Defaults to `ternary<N>.uirevision`.
    public var uiRevision: Anything?

    /// Sets the source reference on plot.ly for  tickvals .
    public var tickValuesSource: String?

    /// Sets the source reference on plot.ly for  ticktext .
    public var tickTextSource: String?

    public init(title: Title1? = nil, color: Color? = nil, tickMode: TickMode0? = nil, numTicks: Int? = nil, tick0: Anything? = nil, dTick: Anything? = nil, tickValues: [Double]? = nil, tickText: [Double]? = nil, ticks: Ticks0? = nil, tickLength: Double? = nil, tickWidth: Double? = nil, tickColor: Color? = nil, showTickLabels: Bool? = nil, showTickPrefix: ShowTickPrefix0? = nil, tickPrefix: String? = nil, showTickSuffix: ShowTickPrefix0? = nil, tickSuffix: String? = nil, showExponent: ShowTickPrefix0? = nil, exponentFormat: ExponentFormat0? = nil, separatethousands: Bool? = nil, tickFont: Font0? = nil, tickAngle: Angle? = nil, tickFormat: String? = nil, tickFormatStops: TickFormatStops0? = nil, hoverFormat: String? = nil, showLine: Bool? = nil, lineColor: Color? = nil, lineWidth: Double? = nil, showGrid: Bool? = nil, gridColor: Color? = nil, gridWidth: Double? = nil, layer: Layer0? = nil, min: Double? = nil, deprecated: Deprecated0? = nil, uiRevision: Anything? = nil, tickValuesSource: String? = nil, tickTextSource: String? = nil) {
        self.title = title
        self.color = color
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
        self.showTickPrefix = showTickPrefix
        self.tickPrefix = tickPrefix
        self.showTickSuffix = showTickSuffix
        self.tickSuffix = tickSuffix
        self.showExponent = showExponent
        self.exponentFormat = exponentFormat
        self.separatethousands = separatethousands
        self.tickFont = tickFont
        self.tickAngle = tickAngle
        self.tickFormat = tickFormat
        self.tickFormatStops = tickFormatStops
        self.hoverFormat = hoverFormat
        self.showLine = showLine
        self.lineColor = lineColor
        self.lineWidth = lineWidth
        self.showGrid = showGrid
        self.gridColor = gridColor
        self.gridWidth = gridWidth
        self.layer = layer
        self.min = min
        self.deprecated = deprecated
        self.uiRevision = uiRevision
        self.tickValuesSource = tickValuesSource
        self.tickTextSource = tickTextSource
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
/// - traces/surface/attributes/contours/x/project
/// - traces/surface/attributes/contours/y/project
/// - traces/surface/attributes/contours/z/project
/// - traces/surface/attributes/contours
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
/// - traces/surface/attributes/_deprecated/zauto
/// - traces/surface/attributes/_deprecated/zmin
/// - traces/surface/attributes/_deprecated/zmax
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

/// - layout/layoutAttributes/scene/xaxis
/// - layout/layoutAttributes/scene/yaxis
/// - layout/layoutAttributes/scene/zaxis
public struct XAxis0: Encodable {
    /// A single toggle to hide the axis while preserving interaction like dragging. 
    ///
    /// Default is true when a cheater plot is present on the axis, otherwise false
    public var visible: Bool?

    /// Sets whether or not spikes starting from data points to this axis' wall are shown on hover.
    public var showSpikes: Bool?

    /// Sets whether or not spikes extending from the projection data points to this axis' wall boundaries are shown on hover.
    public var spikeSides: Bool?

    /// Sets the thickness (in px) of the spikes.
    public var spikeThickness: Double?

    /// Sets the color of the spikes.
    public var spikeColor: Color?

    /// Sets whether or not this axis' wall has a background color.
    public var showBackground: Bool?

    /// Sets the background color of this axis' wall.
    public var backgroundColor: Color?

    /// Sets whether or not this axis is labeled
    public var showAxesLabels: Bool?

    /// Sets default for all colors associated with this axis all at once: line, font, tick, and grid colors. 
    ///
    /// Grid color is lightened by blending this with the plot background Individual pieces can override
    /// this.
    public var color: Color?

    public var categoryOrder: CategoryOrder0?

    /// Sets the order in which categories on this axis appear. 
    ///
    /// Only has an effect if `categoryorder` is set to *array*. Used with `categoryorder`.
    public var categoryArray: [Double]?

    public var title: Title1?

    public var type: Rule1?

    public var autoRange: AutoRange0?

    public var rangeMode: RangeMode0?

    /// Sets the range of this axis. 
    ///
    /// If the axis `type` is *log*, then you must take the log of your desired range (e.g. to set the
    /// range from 1 to 100, set the range from 0 to 2). If the axis `type` is *date*, it should be date
    /// strings, like date data, though Date objects and unix milliseconds will be accepted and
    /// converted to strings. If the axis `type` is *category*, it should be numbers, using the scale
    /// where each category is assigned a serial number from zero in the order it appears.
    public var range: InfoArray?

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

    public var mirror: Mirror0?

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

    /// Sets a tick label prefix.
    public var tickPrefix: String?

    public var showTickPrefix: ShowTickPrefix0?

    /// Sets a tick label suffix.
    public var tickSuffix: String?

    public var showTickSuffix: ShowTickPrefix0?

    public var showExponent: ShowTickPrefix0?

    public var exponentFormat: ExponentFormat0?

    /// If "true", even 4-digit integers are separated
    public var separatethousands: Bool?

    /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to those in Python. 
    ///
    /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
    /// And for dates see:
    /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
    /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
    /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
    public var tickFormat: String?

    public var tickFormatStops: TickFormatStops0?

    /// Sets the hover text formatting rule using d3 formatting mini-languages which are very similar to those in Python. 
    ///
    /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
    /// And for dates see:
    /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format We add one item
    /// to d3's date formatter: *%{n}f* for fractional seconds with n digits. For example, *2016-10-13
    /// 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display *09~15~23.46*
    public var hoverFormat: String?

    /// Determines whether or not a line bounding this axis is drawn.
    public var showLine: Bool?

    /// Sets the axis line color.
    public var lineColor: Color?

    /// Sets the width (in px) of the axis line.
    public var lineWidth: Double?

    /// Determines whether or not grid lines are drawn. 
    ///
    /// If *true*, the grid lines are drawn at every tick mark.
    public var showGrid: Bool?

    /// Sets the color of the grid lines.
    public var gridColor: Color?

    /// Sets the width (in px) of the grid lines.
    public var gridWidth: Double?

    /// Determines whether or not a line is drawn at along the 0 value of this axis. 
    ///
    /// If *true*, the zero line is drawn on top of the grid lines.
    public var zeroLine: Bool?

    /// Sets the line color of the zero line.
    public var zeroLineColor: Color?

    /// Sets the width (in px) of the zero line.
    public var zeroLineWidth: Double?

    public var deprecated: Deprecated0?

    public var calendar: Calendar0?

    /// Sets the source reference on plot.ly for  categoryarray .
    public var categoryArraySource: String?

    /// Sets the source reference on plot.ly for  tickvals .
    public var tickValuesSource: String?

    /// Sets the source reference on plot.ly for  ticktext .
    public var tickTextSource: String?

    public init(visible: Bool? = nil, showSpikes: Bool? = nil, spikeSides: Bool? = nil, spikeThickness: Double? = nil, spikeColor: Color? = nil, showBackground: Bool? = nil, backgroundColor: Color? = nil, showAxesLabels: Bool? = nil, color: Color? = nil, categoryOrder: CategoryOrder0? = nil, categoryArray: [Double]? = nil, title: Title1? = nil, type: Rule1? = nil, autoRange: AutoRange0? = nil, rangeMode: RangeMode0? = nil, range: InfoArray? = nil, tickMode: TickMode0? = nil, numTicks: Int? = nil, tick0: Anything? = nil, dTick: Anything? = nil, tickValues: [Double]? = nil, tickText: [Double]? = nil, ticks: Ticks0? = nil, mirror: Mirror0? = nil, tickLength: Double? = nil, tickWidth: Double? = nil, tickColor: Color? = nil, showTickLabels: Bool? = nil, tickFont: Font0? = nil, tickAngle: Angle? = nil, tickPrefix: String? = nil, showTickPrefix: ShowTickPrefix0? = nil, tickSuffix: String? = nil, showTickSuffix: ShowTickPrefix0? = nil, showExponent: ShowTickPrefix0? = nil, exponentFormat: ExponentFormat0? = nil, separatethousands: Bool? = nil, tickFormat: String? = nil, tickFormatStops: TickFormatStops0? = nil, hoverFormat: String? = nil, showLine: Bool? = nil, lineColor: Color? = nil, lineWidth: Double? = nil, showGrid: Bool? = nil, gridColor: Color? = nil, gridWidth: Double? = nil, zeroLine: Bool? = nil, zeroLineColor: Color? = nil, zeroLineWidth: Double? = nil, deprecated: Deprecated0? = nil, calendar: Calendar0? = nil, categoryArraySource: String? = nil, tickValuesSource: String? = nil, tickTextSource: String? = nil) {
        self.visible = visible
        self.showSpikes = showSpikes
        self.spikeSides = spikeSides
        self.spikeThickness = spikeThickness
        self.spikeColor = spikeColor
        self.showBackground = showBackground
        self.backgroundColor = backgroundColor
        self.showAxesLabels = showAxesLabels
        self.color = color
        self.categoryOrder = categoryOrder
        self.categoryArray = categoryArray
        self.title = title
        self.type = type
        self.autoRange = autoRange
        self.rangeMode = rangeMode
        self.range = range
        self.tickMode = tickMode
        self.numTicks = numTicks
        self.tick0 = tick0
        self.dTick = dTick
        self.tickValues = tickValues
        self.tickText = tickText
        self.ticks = ticks
        self.mirror = mirror
        self.tickLength = tickLength
        self.tickWidth = tickWidth
        self.tickColor = tickColor
        self.showTickLabels = showTickLabels
        self.tickFont = tickFont
        self.tickAngle = tickAngle
        self.tickPrefix = tickPrefix
        self.showTickPrefix = showTickPrefix
        self.tickSuffix = tickSuffix
        self.showTickSuffix = showTickSuffix
        self.showExponent = showExponent
        self.exponentFormat = exponentFormat
        self.separatethousands = separatethousands
        self.tickFormat = tickFormat
        self.tickFormatStops = tickFormatStops
        self.hoverFormat = hoverFormat
        self.showLine = showLine
        self.lineColor = lineColor
        self.lineWidth = lineWidth
        self.showGrid = showGrid
        self.gridColor = gridColor
        self.gridWidth = gridWidth
        self.zeroLine = zeroLine
        self.zeroLineColor = zeroLineColor
        self.zeroLineWidth = zeroLineWidth
        self.deprecated = deprecated
        self.calendar = calendar
        self.categoryArraySource = categoryArraySource
        self.tickValuesSource = tickValuesSource
        self.tickTextSource = tickTextSource
    }
}

/// - layout/layoutAttributes/scene/annotations/items/annotation/hoverlabel
/// - layout/layoutAttributes/annotations/items/annotation/hoverlabel
public struct HoverLabel0: Encodable {
    /// Sets the background color of the hover label. 
    ///
    /// By default uses the annotation's `bgcolor` made opaque, or white if it was transparent.
    public var backgroundColor: Color?

    /// Sets the border color of the hover label. 
    ///
    /// By default uses either dark grey or white, for maximum contrast with `hoverlabel.bgcolor`.
    public var borderColor: Color?

    public var font: Font0?

    public init(backgroundColor: Color? = nil, borderColor: Color? = nil, font: Font0? = nil) {
        self.backgroundColor = backgroundColor
        self.borderColor = borderColor
        self.font = font
    }
}

/// - layout/layoutAttributes/scene/annotations/items
/// - layout/layoutAttributes/annotations/items
public struct Items2: Encodable {
    /// - layout/layoutAttributes/scene/annotations/items/annotation
    public struct Annotation: Encodable {
        /// Determines whether or not this annotation is visible.
        public var visible: Bool?
    
        /// Sets the annotation's x position.
        public var x: Anything?
    
        /// Sets the annotation's y position.
        public var y: Anything?
    
        /// Sets the annotation's z position.
        public var z: Anything?
    
        /// Sets the x component of the arrow tail about the arrow head (in pixels).
        public var ax: Double?
    
        /// Sets the y component of the arrow tail about the arrow head (in pixels).
        public var ay: Double?
    
        public var xAnchor: XAnchor0?
    
        /// Shifts the position of the whole annotation and arrow to the right (positive) or left (negative) by this many pixels.
        public var xShift: Double?
    
        public var yAnchor: YAnchor0?
    
        /// Shifts the position of the whole annotation and arrow up (positive) or down (negative) by this many pixels.
        public var yShift: Double?
    
        /// Sets the text associated with this annotation. 
        ///
        /// Plotly uses a subset of HTML tags to do things like newline (<br>), bold (<b></b>), italics
        /// (<i></i>), hyperlinks (<a href='...'></a>). Tags <em>, <sup>, <sub> <span> are also supported.
        public var text: String?
    
        /// Sets the angle at which the `text` is drawn with respect to the horizontal.
        public var textAngle: Angle?
    
        public var font: Font0?
    
        /// Sets an explicit width for the text box. 
        ///
        /// null (default) lets the text set the box width. Wider text will be clipped. There is no
        /// automatic wrapping; use <br> to start a new line.
        public var width: Double?
    
        /// Sets an explicit height for the text box. 
        ///
        /// null (default) lets the text set the box height. Taller text will be clipped.
        public var height: Double?
    
        /// Sets the opacity of the annotation (text + arrow).
        public var opacity: Double?
    
        public var align: Align1?
    
        public var verticalAlign: VerticalAlign0?
    
        /// Sets the background color of the annotation.
        public var backgroundColor: Color?
    
        /// Sets the color of the border enclosing the annotation `text`.
        public var borderColor: Color?
    
        /// Sets the padding (in px) between the `text` and the enclosing border.
        public var borderPadding: Double?
    
        /// Sets the width (in px) of the border enclosing the annotation `text`.
        public var borderWidth: Double?
    
        /// Determines whether or not the annotation is drawn with an arrow. 
        ///
        /// If *true*, `text` is placed near the arrow's tail. If *false*, `text` lines up with the `x` and
        /// `y` provided.
        public var showArrow: Bool?
    
        /// Sets the color of the annotation arrow.
        public var arrowColor: Color?
    
        /// Sets the end annotation arrow head style.
        public var arrowHead: Int?
    
        /// Sets the start annotation arrow head style.
        public var startArrowHead: Int?
    
        public var arrowSide: ArrowSide0?
    
        /// Sets the size of the end annotation arrow head, relative to `arrowwidth`. 
        ///
        /// A value of 1 (default) gives a head about 3x as wide as the line.
        public var arrowSize: Double?
    
        /// Sets the size of the start annotation arrow head, relative to `arrowwidth`. 
        ///
        /// A value of 1 (default) gives a head about 3x as wide as the line.
        public var startArrowSize: Double?
    
        /// Sets the width (in px) of annotation arrow line.
        public var arrowWidth: Double?
    
        /// Sets a distance, in pixels, to move the end arrowhead away from the position it is pointing at, for example to point at the edge of a marker independent of zoom. 
        ///
        /// Note that this shortens the arrow from the `ax` / `ay` vector, in contrast to `xshift` /
        /// `yshift` which moves everything by this amount.
        public var standoff: Double?
    
        /// Sets a distance, in pixels, to move the start arrowhead away from the position it is pointing at, for example to point at the edge of a marker independent of zoom. 
        ///
        /// Note that this shortens the arrow from the `ax` / `ay` vector, in contrast to `xshift` /
        /// `yshift` which moves everything by this amount.
        public var startStandoff: Double?
    
        /// Sets text to appear when hovering over this annotation. 
        ///
        /// If omitted or blank, no hover label will appear.
        public var hoverText: String?
    
        public var hoverLabel: HoverLabel0?
    
        /// Determines whether the annotation text box captures mouse move and click events, or allows those events to pass through to data points in the plot that may be behind the annotation. 
        ///
        /// By default `captureevents` is *false* unless `hovertext` is provided. If you use the event
        /// `plotly_clickannotation` without `hovertext` you must explicitly enable `captureevents`.
        public var captureEvents: Bool?
    
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
    
        public init(visible: Bool? = nil, x: Anything? = nil, y: Anything? = nil, z: Anything? = nil, ax: Double? = nil, ay: Double? = nil, xAnchor: XAnchor0? = nil, xShift: Double? = nil, yAnchor: YAnchor0? = nil, yShift: Double? = nil, text: String? = nil, textAngle: Angle? = nil, font: Font0? = nil, width: Double? = nil, height: Double? = nil, opacity: Double? = nil, align: Align1? = nil, verticalAlign: VerticalAlign0? = nil, backgroundColor: Color? = nil, borderColor: Color? = nil, borderPadding: Double? = nil, borderWidth: Double? = nil, showArrow: Bool? = nil, arrowColor: Color? = nil, arrowHead: Int? = nil, startArrowHead: Int? = nil, arrowSide: ArrowSide0? = nil, arrowSize: Double? = nil, startArrowSize: Double? = nil, arrowWidth: Double? = nil, standoff: Double? = nil, startStandoff: Double? = nil, hoverText: String? = nil, hoverLabel: HoverLabel0? = nil, captureEvents: Bool? = nil, name: String? = nil, templateItemName: String? = nil) {
            self.visible = visible
            self.x = x
            self.y = y
            self.z = z
            self.ax = ax
            self.ay = ay
            self.xAnchor = xAnchor
            self.xShift = xShift
            self.yAnchor = yAnchor
            self.yShift = yShift
            self.text = text
            self.textAngle = textAngle
            self.font = font
            self.width = width
            self.height = height
            self.opacity = opacity
            self.align = align
            self.verticalAlign = verticalAlign
            self.backgroundColor = backgroundColor
            self.borderColor = borderColor
            self.borderPadding = borderPadding
            self.borderWidth = borderWidth
            self.showArrow = showArrow
            self.arrowColor = arrowColor
            self.arrowHead = arrowHead
            self.startArrowHead = startArrowHead
            self.arrowSide = arrowSide
            self.arrowSize = arrowSize
            self.startArrowSize = startArrowSize
            self.arrowWidth = arrowWidth
            self.standoff = standoff
            self.startStandoff = startStandoff
            self.hoverText = hoverText
            self.hoverLabel = hoverLabel
            self.captureEvents = captureEvents
            self.name = name
            self.templateItemName = templateItemName
        }
    }
    public var annotation: Annotation?

    public init(annotation: Annotation? = nil) {
        self.annotation = annotation
    }
}

/// - layout/layoutAttributes/geo/center
/// - layout/layoutAttributes/mapbox/center
public struct Center0: Encodable {
    /// Sets the longitude of the map's center. 
    ///
    /// By default, the map's longitude center lies at the middle of the longitude range for scoped
    /// projection and above `projection.rotation.lon` otherwise.
    public var longitude: Double?

    /// Sets the latitude of the map's center. 
    ///
    /// For all projection types, the map's latitude center lies at the middle of the latitude range by
    /// default.
    public var latitude: Double?

    public init(longitude: Double? = nil, latitude: Double? = nil) {
        self.longitude = longitude
        self.latitude = latitude
    }
}

/// - layout/layoutAttributes/geo/lonaxis
/// - layout/layoutAttributes/geo/lataxis
public struct LongitudeAxis0: Encodable {
    /// Sets the range of this axis (in degrees), sets the map's clipped coordinates.
    public var range: InfoArray?

    /// Sets whether or not graticule are shown on the map.
    public var showGrid: Bool?

    /// Sets the graticule's starting tick longitude/latitude.
    public var tick0: Double?

    /// Sets the graticule's longitude/latitude tick step.
    public var dTick: Double?

    /// Sets the graticule's stroke color.
    public var gridColor: Color?

    /// Sets the graticule's stroke width (in px).
    public var gridWidth: Double?

    public init(range: InfoArray? = nil, showGrid: Bool? = nil, tick0: Double? = nil, dTick: Double? = nil, gridColor: Color? = nil, gridWidth: Double? = nil) {
        self.range = range
        self.showGrid = showGrid
        self.tick0 = tick0
        self.dTick = dTick
        self.gridColor = gridColor
        self.gridWidth = gridWidth
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

/// - layout/layoutAttributes/sliders/items/slider/steps/items
/// - traces/indicator/attributes/gauge/steps/items
public struct Items3: Encodable {
    /// - layout/layoutAttributes/sliders/items/slider/steps/items/step
    public struct Step: Encodable {
        /// Determines whether or not this step is included in the slider.
        public var visible: Bool?
    
        public var method: Method0?
    
        /// Sets the arguments values to be passed to the Plotly method set in `method` on slide.
        public var args: InfoArray?
    
        /// Sets the text label to appear on the slider
        public var label: String?
    
        /// Sets the value of the slider step, used to refer to the step programatically. 
        ///
        /// Defaults to the slider label if not provided.
        public var value: String?
    
        /// When true, the API method is executed. 
        ///
        /// When false, all other behaviors are the same and command execution is skipped. This may be
        /// useful when hooking into, for example, the `plotly_sliderchange` method and executing the API
        /// command manually without losing the benefit of the slider automatically binding to the state of
        /// the plot through the specification of `method` and `args`.
        public var execute: Bool?
    
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
    
        public init(visible: Bool? = nil, method: Method0? = nil, args: InfoArray? = nil, label: String? = nil, value: String? = nil, execute: Bool? = nil, name: String? = nil, templateItemName: String? = nil) {
            self.visible = visible
            self.method = method
            self.args = args
            self.label = label
            self.value = value
            self.execute = execute
            self.name = name
            self.templateItemName = templateItemName
        }
    }
    public var step: Step?

    public init(step: Step? = nil) {
        self.step = step
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
public struct Title2: Encodable {
    /// Sets the title of the color bar. 
    ///
    /// Note that before the existence of `title.text`, the title's contents used to be defined as the
    /// `title` attribute itself. This behavior has been deprecated.
    public var text: String?

    public var font: Font0?

    public var side: Side2?

    public init(text: String? = nil, font: Font0? = nil, side: Side2? = nil) {
        self.text = text
        self.font = font
        self.side = side
    }
}

/// - layout/layoutAttributes/coloraxis/colorbar/_deprecated
/// - traces/scatter/attributes/marker/colorbar/_deprecated
/// - traces/bar/attributes/marker/colorbar/_deprecated
/// - traces/heatmap/attributes/colorbar/_deprecated
/// - traces/histogram/attributes/marker/colorbar/_deprecated
/// - traces/histogram2d/attributes/colorbar/_deprecated
/// - traces/histogram2dcontour/attributes/colorbar/_deprecated
/// - traces/contour/attributes/colorbar/_deprecated
/// - traces/scatterternary/attributes/marker/colorbar/_deprecated
/// - traces/funnel/attributes/marker/colorbar/_deprecated
/// - traces/sunburst/attributes/marker/colorbar/_deprecated
/// - traces/treemap/attributes/marker/colorbar/_deprecated
/// - traces/scatter3d/attributes/line/colorbar/_deprecated
/// - traces/scatter3d/attributes/marker/colorbar/_deprecated
/// - traces/surface/attributes/colorbar/_deprecated
/// - traces/isosurface/attributes/colorbar/_deprecated
/// - traces/volume/attributes/colorbar/_deprecated
/// - traces/mesh3d/attributes/colorbar/_deprecated
/// - traces/cone/attributes/colorbar/_deprecated
/// - traces/streamtube/attributes/colorbar/_deprecated
/// - traces/scattergeo/attributes/marker/colorbar/_deprecated
/// - traces/choropleth/attributes/colorbar/_deprecated
/// - traces/scattergl/attributes/marker/colorbar/_deprecated
/// - traces/splom/attributes/marker/colorbar/_deprecated
/// - traces/heatmapgl/attributes/colorbar/_deprecated
/// - traces/parcoords/attributes/line/colorbar/_deprecated
/// - traces/parcats/attributes/line/colorbar/_deprecated
/// - traces/scattermapbox/attributes/marker/colorbar/_deprecated
/// - traces/choroplethmapbox/attributes/colorbar/_deprecated
/// - traces/densitymapbox/attributes/colorbar/_deprecated
/// - traces/scattercarpet/attributes/marker/colorbar/_deprecated
/// - traces/contourcarpet/attributes/colorbar/_deprecated
/// - traces/scatterpolar/attributes/marker/colorbar/_deprecated
/// - traces/scatterpolargl/attributes/marker/colorbar/_deprecated
/// - traces/barpolar/attributes/marker/colorbar/_deprecated
public struct Deprecated2: Encodable {
    /// Deprecated in favor of color bar's `title.text`. 
    ///
    /// Note that value of color bar's `title` is no longer a simple *string* but a set of
    /// sub-attributes.
    public var title: String?

    public var titleFont: Font0?

    public var titleSide: Side2?

    public init(title: String? = nil, titleFont: Font0? = nil, titleSide: Side2? = nil) {
        self.title = title
        self.titleFont = titleFont
        self.titleSide = titleSide
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
    public var thicknessMode: LengthMode0?

    /// Sets the thickness of the color bar This measure excludes the size of the padding, ticks and labels.
    public var thickness: Double?

    public var lengthMode: LengthMode0?

    /// Sets the length of the color bar This measure excludes the padding of both ends. 
    ///
    /// That is, the color bar length is this length minus the padding on both ends.
    public var length: Double?

    /// Sets the x position of the color bar (in plot fraction).
    public var x: Double?

    public var xAnchor: Align1?

    /// Sets the amount of padding (in px) along the x direction.
    public var xPadding: Double?

    /// Sets the y position of the color bar (in plot fraction).
    public var y: Double?

    public var yAnchor: VerticalAlign0?

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

    public var title: Title2?

    public var deprecated: Deprecated2?

    /// Sets the source reference on plot.ly for  tickvals .
    public var tickValuesSource: String?

    /// Sets the source reference on plot.ly for  ticktext .
    public var tickTextSource: String?

    public init(thicknessMode: LengthMode0? = nil, thickness: Double? = nil, lengthMode: LengthMode0? = nil, length: Double? = nil, x: Double? = nil, xAnchor: Align1? = nil, xPadding: Double? = nil, y: Double? = nil, yAnchor: VerticalAlign0? = nil, yPading: Double? = nil, outLineColor: Color? = nil, outLineWidth: Double? = nil, borderColor: Color? = nil, borderWidth: Double? = nil, backgroundColor: Color? = nil, tickMode: TickMode0? = nil, numTicks: Int? = nil, tick0: Anything? = nil, dTick: Anything? = nil, tickValues: [Double]? = nil, tickText: [Double]? = nil, ticks: Ticks0? = nil, tickLength: Double? = nil, tickWidth: Double? = nil, tickColor: Color? = nil, showTickLabels: Bool? = nil, tickFont: Font0? = nil, tickAngle: Angle? = nil, tickFormat: String? = nil, tickFormatStops: TickFormatStops0? = nil, tickPrefix: String? = nil, showTickPrefix: ShowTickPrefix0? = nil, tickSuffix: String? = nil, showTickSuffix: ShowTickPrefix0? = nil, separatethousands: Bool? = nil, exponentFormat: ExponentFormat0? = nil, showExponent: ShowTickPrefix0? = nil, title: Title2? = nil, deprecated: Deprecated2? = nil, tickValuesSource: String? = nil, tickTextSource: String? = nil) {
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
        self.deprecated = deprecated
        self.tickValuesSource = tickValuesSource
        self.tickTextSource = tickTextSource
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

    public init(family: String? = nil, size: Double? = nil, color: Color? = nil, familySource: String? = nil, sizeSource: String? = nil, colorSource: String? = nil) {
        self.family = family
        self.size = size
        self.color = color
        self.familySource = familySource
        self.sizeSource = sizeSource
        self.colorSource = colorSource
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
public struct HoverLabel1: Encodable {
    /// Sets the background color of the hover labels for this trace
    public var backgroundColor: Color?

    /// Sets the border color of the hover labels for this trace.
    public var borderColor: Color?

    public var font: Font1?

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

    public init(backgroundColor: Color? = nil, borderColor: Color? = nil, font: Font1? = nil, align: Align0? = nil, nameLength: Int? = nil, backgroundColorSource: String? = nil, borderColorSource: String? = nil, alignSource: String? = nil, nameLengthSource: String? = nil) {
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
public struct Items4: Encodable {
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
    public var type: Rule2?

    /// Sets the final color of the gradient fill: the center color for radial, the right for horizontal, or the bottom for vertical.
    public var color: Color?

    /// Sets the source reference on plot.ly for  type .
    public var typeSource: String?

    /// Sets the source reference on plot.ly for  color .
    public var colorSource: String?

    public init(type: Rule2? = nil, color: Color? = nil, typeSource: String? = nil, colorSource: String? = nil) {
        self.type = type
        self.color = color
        self.typeSource = typeSource
        self.colorSource = colorSource
    }
}

/// - traces/scatter/attributes/marker
/// - traces/scatterpolar/attributes/marker
public struct Marker0: Encodable {
    public var symbol: Symbol0?

    /// Sets the marker opacity.
    public var opacity: Double?

    /// Sets the marker size (in px).
    public var size: Double?

    /// Sets a maximum number of points to be drawn on the graph. 
    ///
    /// *0* corresponds to no limit.
    public var maxDisplayed: Double?

    /// Has an effect only if `marker.size` is set to a numerical array. 
    ///
    /// Sets the scale factor used to determine the rendered size of marker points. Use with `sizemin`
    /// and `sizemode`.
    public var sizeReference: Double?

    /// Has an effect only if `marker.size` is set to a numerical array. 
    ///
    /// Sets the minimum size (in px) of the rendered marker points.
    public var sizeMin: Double?

    public var sizeMode: SizeMode0?

    public var line: Line1?

    public var gradient: Gradient0?

    /// Sets themarkercolor. 
    ///
    /// It accepts either a specific color or an array of numbers that are mapped to the colorscale
    /// relative to the max and min values of the array or relative to `marker.cmin` and `marker.cmax`
    /// if set.
    public var color: Color?

    /// Determines whether or not the color domain is computed with respect to the input data (here in `marker.color`) or the bounds set in `marker.cmin` and `marker.cmax`  Has an effect only if in `marker.color`is set to a numerical array. 
    ///
    /// Defaults to `false` when `marker.cmin` and `marker.cmax` are set by the user.
    public var cAuto: Bool?

    /// Sets the lower bound of the color domain. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
    /// units as in `marker.color` and if set, `marker.cmax` must be set as well.
    public var cMin: Double?

    /// Sets the upper bound of the color domain. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
    /// units as in `marker.color` and if set, `marker.cmin` must be set as well.
    public var cMax: Double?

    /// Sets the mid-point of the color domain by scaling `marker.cmin` and/or `marker.cmax` to be equidistant to this point. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
    /// units as in `marker.color`. Has no effect when `marker.cauto` is `false`.
    public var cMiddle: Double?

    /// Sets the colorscale. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array. The colorscale must be an
    /// array containing arrays mapping a normalized value to an rgb, rgba, hex, hsl, hsv, or named
    /// color string. At minimum, a mapping for the lowest (0) and highest (1) values are required. For
    /// example, `[[0, 'rgb(0,0,255)'], [1, 'rgb(255,0,0)']]`. To control the bounds of the colorscale
    /// in color space, use`marker.cmin` and `marker.cmax`. Alternatively, `colorscale` may be a palette
    /// name string of the following list:
    /// Greys,YlGnBu,Greens,YlOrRd,Bluered,RdBu,Reds,Blues,Picnic,Rainbow,Portland,Jet,Hot,Blackbody,Earth,Electric,Viridis,Cividis.
    public var colorScale: ColorScale?

    /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `marker.colorscale`. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array. In case `colorscale` is
    /// unspecified or `autocolorscale` is true, the default palette will be chosen according to whether
    /// numbers in the `color` array are all positive, all negative or mixed.
    public var autoColorScale: Bool?

    /// Reverses the color mapping if true. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array. If true, `marker.cmin` will
    /// correspond to the last color in the array and `marker.cmax` will correspond to the first color.
    public var reverseScale: Bool?

    /// Determines whether or not a colorbar is displayed for this trace. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array.
    public var showScale: Bool?

    public var colorBar: ColorBar0?

    /// Sets a reference to a shared color axis. 
    ///
    /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
    /// for these shared color axes are set in the layout, under `layout.coloraxis`,
    /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
    public var colorAxis: SubPlotID?

    /// Sets the source reference on plot.ly for  symbol .
    public var symbolSource: String?

    /// Sets the source reference on plot.ly for  opacity .
    public var opacitySource: String?

    /// Sets the source reference on plot.ly for  size .
    public var sizeSource: String?

    /// Sets the source reference on plot.ly for  color .
    public var colorSource: String?

    public init(symbol: Symbol0? = nil, opacity: Double? = nil, size: Double? = nil, maxDisplayed: Double? = nil, sizeReference: Double? = nil, sizeMin: Double? = nil, sizeMode: SizeMode0? = nil, line: Line1? = nil, gradient: Gradient0? = nil, color: Color? = nil, cAuto: Bool? = nil, cMin: Double? = nil, cMax: Double? = nil, cMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: ColorBar0? = nil, colorAxis: SubPlotID? = nil, symbolSource: String? = nil, opacitySource: String? = nil, sizeSource: String? = nil, colorSource: String? = nil) {
        self.symbol = symbol
        self.opacity = opacity
        self.size = size
        self.maxDisplayed = maxDisplayed
        self.sizeReference = sizeReference
        self.sizeMin = sizeMin
        self.sizeMode = sizeMode
        self.line = line
        self.gradient = gradient
        self.color = color
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
        self.symbolSource = symbolSource
        self.opacitySource = opacitySource
        self.sizeSource = sizeSource
        self.colorSource = colorSource
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
public struct Marker1: Encodable {
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
    public var marker: Marker1?

    public var textFont: TextFont0?

    public init(marker: Marker1? = nil, textFont: TextFont0? = nil) {
        self.marker = marker
        self.textFont = textFont
    }
}

/// - traces/scatter/attributes/error_x/_deprecated
/// - traces/scatter/attributes/error_y/_deprecated
/// - traces/bar/attributes/error_x/_deprecated
/// - traces/bar/attributes/error_y/_deprecated
/// - traces/histogram/attributes/error_x/_deprecated
/// - traces/histogram/attributes/error_y/_deprecated
/// - traces/sunburst/attributes/leaf
/// - traces/scatter3d/attributes/error_x/_deprecated
/// - traces/scatter3d/attributes/error_y/_deprecated
/// - traces/scatter3d/attributes/error_z/_deprecated
/// - traces/choropleth/attributes/selected/marker
/// - traces/choropleth/attributes/unselected/marker
/// - traces/scattergl/attributes/error_x/_deprecated
/// - traces/scattergl/attributes/error_y/_deprecated
/// - traces/choroplethmapbox/attributes/selected/marker
/// - traces/choroplethmapbox/attributes/unselected/marker
public struct Deprecated3: Encodable {
    /// Obsolete. 
    ///
    /// Use the alpha channel in error bar `color` to set the opacity.
    public var opacity: Double?

    public init(opacity: Double? = nil) {
        self.opacity = opacity
    }
}

/// - traces/scatter/attributes/error_x
/// - traces/bar/attributes/error_x
/// - traces/histogram/attributes/error_x
/// - traces/scattergl/attributes/error_x
public struct XError0: Encodable {
    /// Determines whether or not this set of error bars is visible.
    public var visible: Bool?

    public var type: Rule3?

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

    public var yCopyStyle: Bool?

    /// Sets the stoke color of the error bars.
    public var color: Color?

    /// Sets the thickness (in px) of the error bars.
    public var thickness: Double?

    /// Sets the width (in px) of the cross-bar at both ends of the error bars.
    public var width: Double?

    public var deprecated: Deprecated3?

    /// Sets the source reference on plot.ly for  array .
    public var arraySource: String?

    /// Sets the source reference on plot.ly for  arrayminus .
    public var arrayMinusSource: String?

    public init(visible: Bool? = nil, type: Rule3? = nil, symmetric: Bool? = nil, array: [Double]? = nil, arrayMinus: [Double]? = nil, value: Double? = nil, valueMinus: Double? = nil, traceReference: Int? = nil, traceReferenceMinus: Int? = nil, yCopyStyle: Bool? = nil, color: Color? = nil, thickness: Double? = nil, width: Double? = nil, deprecated: Deprecated3? = nil, arraySource: String? = nil, arrayMinusSource: String? = nil) {
        self.visible = visible
        self.type = type
        self.symmetric = symmetric
        self.array = array
        self.arrayMinus = arrayMinus
        self.value = value
        self.valueMinus = valueMinus
        self.traceReference = traceReference
        self.traceReferenceMinus = traceReferenceMinus
        self.yCopyStyle = yCopyStyle
        self.color = color
        self.thickness = thickness
        self.width = width
        self.deprecated = deprecated
        self.arraySource = arraySource
        self.arrayMinusSource = arrayMinusSource
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

    public var type: Rule3?

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

    public var deprecated: Deprecated3?

    /// Sets the source reference on plot.ly for  array .
    public var arraySource: String?

    /// Sets the source reference on plot.ly for  arrayminus .
    public var arrayMinusSource: String?

    public init(visible: Bool? = nil, type: Rule3? = nil, symmetric: Bool? = nil, array: [Double]? = nil, arrayMinus: [Double]? = nil, value: Double? = nil, valueMinus: Double? = nil, traceReference: Int? = nil, traceReferenceMinus: Int? = nil, color: Color? = nil, thickness: Double? = nil, width: Double? = nil, deprecated: Deprecated3? = nil, arraySource: String? = nil, arrayMinusSource: String? = nil) {
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
        self.deprecated = deprecated
        self.arraySource = arraySource
        self.arrayMinusSource = arrayMinusSource
    }
}

/// - traces/bar/attributes/marker
/// - traces/histogram/attributes/marker
/// - traces/funnel/attributes/marker
/// - traces/barpolar/attributes/marker
public struct Marker2: Encodable {
    public var line: Line1?

    /// Sets themarkercolor. 
    ///
    /// It accepts either a specific color or an array of numbers that are mapped to the colorscale
    /// relative to the max and min values of the array or relative to `marker.cmin` and `marker.cmax`
    /// if set.
    public var color: Color?

    /// Determines whether or not the color domain is computed with respect to the input data (here in `marker.color`) or the bounds set in `marker.cmin` and `marker.cmax`  Has an effect only if in `marker.color`is set to a numerical array. 
    ///
    /// Defaults to `false` when `marker.cmin` and `marker.cmax` are set by the user.
    public var cAuto: Bool?

    /// Sets the lower bound of the color domain. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
    /// units as in `marker.color` and if set, `marker.cmax` must be set as well.
    public var cMin: Double?

    /// Sets the upper bound of the color domain. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
    /// units as in `marker.color` and if set, `marker.cmin` must be set as well.
    public var cMax: Double?

    /// Sets the mid-point of the color domain by scaling `marker.cmin` and/or `marker.cmax` to be equidistant to this point. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
    /// units as in `marker.color`. Has no effect when `marker.cauto` is `false`.
    public var cMiddle: Double?

    /// Sets the colorscale. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array. The colorscale must be an
    /// array containing arrays mapping a normalized value to an rgb, rgba, hex, hsl, hsv, or named
    /// color string. At minimum, a mapping for the lowest (0) and highest (1) values are required. For
    /// example, `[[0, 'rgb(0,0,255)'], [1, 'rgb(255,0,0)']]`. To control the bounds of the colorscale
    /// in color space, use`marker.cmin` and `marker.cmax`. Alternatively, `colorscale` may be a palette
    /// name string of the following list:
    /// Greys,YlGnBu,Greens,YlOrRd,Bluered,RdBu,Reds,Blues,Picnic,Rainbow,Portland,Jet,Hot,Blackbody,Earth,Electric,Viridis,Cividis.
    public var colorScale: ColorScale?

    /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `marker.colorscale`. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array. In case `colorscale` is
    /// unspecified or `autocolorscale` is true, the default palette will be chosen according to whether
    /// numbers in the `color` array are all positive, all negative or mixed.
    public var autoColorScale: Bool?

    /// Reverses the color mapping if true. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array. If true, `marker.cmin` will
    /// correspond to the last color in the array and `marker.cmax` will correspond to the first color.
    public var reverseScale: Bool?

    /// Determines whether or not a colorbar is displayed for this trace. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array.
    public var showScale: Bool?

    public var colorBar: ColorBar0?

    /// Sets a reference to a shared color axis. 
    ///
    /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
    /// for these shared color axes are set in the layout, under `layout.coloraxis`,
    /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
    public var colorAxis: SubPlotID?

    /// Sets the opacity of the bars.
    public var opacity: Double?

    /// Sets the source reference on plot.ly for  color .
    public var colorSource: String?

    /// Sets the source reference on plot.ly for  opacity .
    public var opacitySource: String?

    public init(line: Line1? = nil, color: Color? = nil, cAuto: Bool? = nil, cMin: Double? = nil, cMax: Double? = nil, cMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: ColorBar0? = nil, colorAxis: SubPlotID? = nil, opacity: Double? = nil, colorSource: String? = nil, opacitySource: String? = nil) {
        self.line = line
        self.color = color
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
        self.colorSource = colorSource
        self.opacitySource = opacitySource
    }
}

/// - traces/bar/attributes/selected/marker
/// - traces/bar/attributes/unselected/marker
/// - traces/histogram/attributes/selected/marker
/// - traces/histogram/attributes/unselected/marker
/// - traces/barpolar/attributes/selected/marker
/// - traces/barpolar/attributes/unselected/marker
public struct Marker3: Encodable {
    /// Sets the marker opacity of selected points.
    public var opacity: Double?

    /// Sets the marker color of selected points.
    public var color: Color?

    public init(opacity: Double? = nil, color: Color? = nil) {
        self.opacity = opacity
        self.color = color
    }
}

/// - traces/bar/attributes/_deprecated
/// - traces/histogram/attributes/_deprecated
public struct Deprecated4: Encodable {
    public var bardir: Orientation0?

    public init(bardir: Orientation0? = nil) {
        self.bardir = bardir
    }
}

/// - traces/box/attributes/marker/line
/// - traces/violin/attributes/marker/line
public struct Line2: Encodable {
    /// Sets themarker.linecolor. 
    ///
    /// It accepts either a specific color or an array of numbers that are mapped to the colorscale
    /// relative to the max and min values of the array or relative to `marker.line.cmin` and
    /// `marker.line.cmax` if set.
    public var color: Color?

    /// Sets the width (in px) of the lines bounding the marker points.
    public var width: Double?

    /// Sets the border line color of the outlier sample points. 
    ///
    /// Defaults to marker.color
    public var outlierColor: Color?

    /// Sets the border line width (in px) of the outlier sample points.
    public var outlierWidth: Double?

    public init(color: Color? = nil, width: Double? = nil, outlierColor: Color? = nil, outlierWidth: Double? = nil) {
        self.color = color
        self.width = width
        self.outlierColor = outlierColor
        self.outlierWidth = outlierWidth
    }
}

/// - traces/box/attributes/marker
/// - traces/violin/attributes/marker
public struct Marker4: Encodable {
    /// Sets the color of the outlier sample points.
    public var outlierColor: Color?

    public var symbol: Symbol0?

    /// Sets the marker opacity.
    public var opacity: Double?

    /// Sets the marker size (in px).
    public var size: Double?

    /// Sets themarkercolor. 
    ///
    /// It accepts either a specific color or an array of numbers that are mapped to the colorscale
    /// relative to the max and min values of the array or relative to `marker.cmin` and `marker.cmax`
    /// if set.
    public var color: Color?

    public var line: Line2?

    public init(outlierColor: Color? = nil, symbol: Symbol0? = nil, opacity: Double? = nil, size: Double? = nil, color: Color? = nil, line: Line2? = nil) {
        self.outlierColor = outlierColor
        self.symbol = symbol
        self.opacity = opacity
        self.size = size
        self.color = color
        self.line = line
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
public struct Line3: Encodable {
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
    public var marker: Marker1?

    public init(marker: Marker1? = nil) {
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

/// - traces/histogram2d/attributes/marker
/// - traces/histogram2dcontour/attributes/marker
/// - traces/table/attributes/header/fill
/// - traces/table/attributes/cells/fill
public struct Marker5: Encodable {
    /// Sets the aggregation data.
    public var color: [Double]?

    /// Sets the source reference on plot.ly for  color .
    public var colorSource: String?

    public init(color: [Double]? = nil, colorSource: String? = nil) {
        self.color = color
        self.colorSource = colorSource
    }
}

/// - traces/histogram2dcontour/attributes/contours
/// - traces/contour/attributes/contours
/// - traces/contourcarpet/attributes/contours
public struct Contours0: Encodable {
    public var type: Rule4?

    /// Sets the starting contour level value. 
    ///
    /// Must be less than `contours.end`
    public var start: Double?

    /// Sets the end contour level value. 
    ///
    /// Must be more than `contours.start`
    public var end: Double?

    /// Sets the step between each contour level. 
    ///
    /// Must be positive.
    public var size: Double?

    public var coloring: Coloring0?

    /// Determines whether or not the contour lines are drawn. 
    ///
    /// Has an effect only if `contours.coloring` is set to *fill*.
    public var showLines: Bool?

    /// Determines whether to label the contour lines with their values.
    public var showLabels: Bool?

    public var labelFont: Font0?

    /// Sets the contour label formatting rule using d3 formatting mini-language which is very similar to Python, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
    public var labelFormat: String?

    public var operation: Operation0?

    /// Sets the value or values of the constraint boundary. 
    ///
    /// When `operation` is set to one of the comparison values (=,<,>=,>,<=) *value* is expected to be
    /// a number. When `operation` is set to one of the interval values ([],(),[),(],][,)(,](,)[)
    /// *value* is expected to be an array of two numbers where the first is the lower bound and the
    /// second is the upper bound.
    public var value: Anything?

    public var impliedEdits: ImpliedEdits0?

    public init(type: Rule4? = nil, start: Double? = nil, end: Double? = nil, size: Double? = nil, coloring: Coloring0? = nil, showLines: Bool? = nil, showLabels: Bool? = nil, labelFont: Font0? = nil, labelFormat: String? = nil, operation: Operation0? = nil, value: Anything? = nil, impliedEdits: ImpliedEdits0? = nil) {
        self.type = type
        self.start = start
        self.end = end
        self.size = size
        self.coloring = coloring
        self.showLines = showLines
        self.showLabels = showLabels
        self.labelFont = labelFont
        self.labelFormat = labelFormat
        self.operation = operation
        self.value = value
        self.impliedEdits = impliedEdits
    }
}

/// - traces/histogram2dcontour/attributes/line
/// - traces/contour/attributes/line
/// - traces/contourcarpet/attributes/line
public struct Line4: Encodable {
    /// Sets the color of the contour level. 
    ///
    /// Has no effect if `contours.coloring` is set to *lines*.
    public var color: Color?

    /// Sets the contour line width in (in px)
    public var width: Double?

    /// Sets the dash style of lines. 
    ///
    /// Set to a dash type string (*solid*, *dot*, *dash*, *longdash*, *dashdot*, or *longdashdot*) or a
    /// dash length list in px (eg *5px,10px,2px,2px*).
    public var dash: String?

    /// Sets the amount of smoothing for the contour lines, where *0* corresponds to no smoothing.
    public var smoothing: Double?

    public init(color: Color? = nil, width: Double? = nil, dash: String? = nil, smoothing: Double? = nil) {
        self.color = color
        self.width = width
        self.dash = dash
        self.smoothing = smoothing
    }
}

/// - traces/scatterternary/attributes/line
/// - traces/scattercarpet/attributes/line
/// - traces/scatterpolar/attributes/line
public struct Line5: Encodable {
    /// Sets the line color.
    public var color: Color?

    /// Sets the line width (in px).
    public var width: Double?

    /// Sets the dash style of lines. 
    ///
    /// Set to a dash type string (*solid*, *dot*, *dash*, *longdash*, *dashdot*, or *longdashdot*) or a
    /// dash length list in px (eg *5px,10px,2px,2px*).
    public var dash: String?

    public var shape: Shape0?

    /// Has an effect only if `shape` is set to *spline* Sets the amount of smoothing. 
    ///
    /// *0* corresponds to no smoothing (equivalent to a *linear* shape).
    public var smoothing: Double?

    public init(color: Color? = nil, width: Double? = nil, dash: String? = nil, shape: Shape0? = nil, smoothing: Double? = nil) {
        self.color = color
        self.width = width
        self.dash = dash
        self.shape = shape
        self.smoothing = smoothing
    }
}

/// - traces/scatterternary/attributes/marker
/// - traces/scattercarpet/attributes/marker
public struct Marker6: Encodable {
    public var symbol: Symbol0?

    /// Sets the marker opacity.
    public var opacity: Double?

    /// Sets a maximum number of points to be drawn on the graph. 
    ///
    /// *0* corresponds to no limit.
    public var maxDisplayed: Double?

    /// Sets the marker size (in px).
    public var size: Double?

    /// Has an effect only if `marker.size` is set to a numerical array. 
    ///
    /// Sets the scale factor used to determine the rendered size of marker points. Use with `sizemin`
    /// and `sizemode`.
    public var sizeReference: Double?

    /// Has an effect only if `marker.size` is set to a numerical array. 
    ///
    /// Sets the minimum size (in px) of the rendered marker points.
    public var sizeMin: Double?

    public var sizeMode: SizeMode0?

    public var line: Line1?

    public var gradient: Gradient0?

    /// Sets themarkercolor. 
    ///
    /// It accepts either a specific color or an array of numbers that are mapped to the colorscale
    /// relative to the max and min values of the array or relative to `marker.cmin` and `marker.cmax`
    /// if set.
    public var color: Color?

    /// Determines whether or not the color domain is computed with respect to the input data (here in `marker.color`) or the bounds set in `marker.cmin` and `marker.cmax`  Has an effect only if in `marker.color`is set to a numerical array. 
    ///
    /// Defaults to `false` when `marker.cmin` and `marker.cmax` are set by the user.
    public var cAuto: Bool?

    /// Sets the lower bound of the color domain. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
    /// units as in `marker.color` and if set, `marker.cmax` must be set as well.
    public var cMin: Double?

    /// Sets the upper bound of the color domain. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
    /// units as in `marker.color` and if set, `marker.cmin` must be set as well.
    public var cMax: Double?

    /// Sets the mid-point of the color domain by scaling `marker.cmin` and/or `marker.cmax` to be equidistant to this point. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
    /// units as in `marker.color`. Has no effect when `marker.cauto` is `false`.
    public var cMiddle: Double?

    /// Sets the colorscale. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array. The colorscale must be an
    /// array containing arrays mapping a normalized value to an rgb, rgba, hex, hsl, hsv, or named
    /// color string. At minimum, a mapping for the lowest (0) and highest (1) values are required. For
    /// example, `[[0, 'rgb(0,0,255)'], [1, 'rgb(255,0,0)']]`. To control the bounds of the colorscale
    /// in color space, use`marker.cmin` and `marker.cmax`. Alternatively, `colorscale` may be a palette
    /// name string of the following list:
    /// Greys,YlGnBu,Greens,YlOrRd,Bluered,RdBu,Reds,Blues,Picnic,Rainbow,Portland,Jet,Hot,Blackbody,Earth,Electric,Viridis,Cividis.
    public var colorScale: ColorScale?

    /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `marker.colorscale`. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array. In case `colorscale` is
    /// unspecified or `autocolorscale` is true, the default palette will be chosen according to whether
    /// numbers in the `color` array are all positive, all negative or mixed.
    public var autoColorScale: Bool?

    /// Reverses the color mapping if true. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array. If true, `marker.cmin` will
    /// correspond to the last color in the array and `marker.cmax` will correspond to the first color.
    public var reverseScale: Bool?

    /// Determines whether or not a colorbar is displayed for this trace. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array.
    public var showScale: Bool?

    public var colorBar: ColorBar0?

    /// Sets a reference to a shared color axis. 
    ///
    /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
    /// for these shared color axes are set in the layout, under `layout.coloraxis`,
    /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
    public var colorAxis: SubPlotID?

    /// Sets the source reference on plot.ly for  symbol .
    public var symbolSource: String?

    /// Sets the source reference on plot.ly for  opacity .
    public var opacitySource: String?

    /// Sets the source reference on plot.ly for  size .
    public var sizeSource: String?

    /// Sets the source reference on plot.ly for  color .
    public var colorSource: String?

    public init(symbol: Symbol0? = nil, opacity: Double? = nil, maxDisplayed: Double? = nil, size: Double? = nil, sizeReference: Double? = nil, sizeMin: Double? = nil, sizeMode: SizeMode0? = nil, line: Line1? = nil, gradient: Gradient0? = nil, color: Color? = nil, cAuto: Bool? = nil, cMin: Double? = nil, cMax: Double? = nil, cMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: ColorBar0? = nil, colorAxis: SubPlotID? = nil, symbolSource: String? = nil, opacitySource: String? = nil, sizeSource: String? = nil, colorSource: String? = nil) {
        self.symbol = symbol
        self.opacity = opacity
        self.maxDisplayed = maxDisplayed
        self.size = size
        self.sizeReference = sizeReference
        self.sizeMin = sizeMin
        self.sizeMode = sizeMode
        self.line = line
        self.gradient = gradient
        self.color = color
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
        self.symbolSource = symbolSource
        self.opacitySource = opacitySource
        self.sizeSource = sizeSource
        self.colorSource = colorSource
    }
}

/// - traces/waterfall/attributes/increasing/marker
/// - traces/waterfall/attributes/decreasing/marker
/// - traces/waterfall/attributes/totals/marker
public struct Marker7: Encodable {
    /// Sets the marker color of all increasing values.
    public var color: Color?

    public var line: Line3?

    public init(color: Color? = nil, line: Line3? = nil) {
        self.color = color
        self.line = line
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
public struct Line6: Encodable {
    /// Sets the color of the line enclosing each sector.
    public var color: Color?

    /// Sets the width (in px) of the line enclosing each sector.
    public var width: Double?

    /// Sets the source reference on plot.ly for  color .
    public var colorSource: String?

    /// Sets the source reference on plot.ly for  width .
    public var widthSource: String?

    public init(color: Color? = nil, width: Double? = nil, colorSource: String? = nil, widthSource: String? = nil) {
        self.color = color
        self.width = width
        self.colorSource = colorSource
        self.widthSource = widthSource
    }
}

/// - traces/pie/attributes/marker
/// - traces/funnelarea/attributes/marker
public struct Marker8: Encodable {
    /// Sets the color of each sector. 
    ///
    /// If not specified, the default trace color set is used to pick the sector colors.
    public var colors: [Double]?

    public var line: Line6?

    /// Sets the source reference on plot.ly for  colors .
    public var colorsSource: String?

    public init(colors: [Double]? = nil, line: Line6? = nil, colorsSource: String? = nil) {
        self.colors = colors
        self.line = line
        self.colorsSource = colorsSource
    }
}

/// - traces/pie/attributes/title
/// - traces/funnelarea/attributes/title
public struct Title3: Encodable {
    /// Sets the title of the chart. 
    ///
    /// If it is empty, no title is displayed. Note that before the existence of `title.text`, the
    /// title's contents used to be defined as the `title` attribute itself. This behavior has been
    /// deprecated.
    public var text: String?

    public var font: Font1?

    public var position: Position0?

    public init(text: String? = nil, font: Font1? = nil, position: Position0? = nil) {
        self.text = text
        self.font = font
        self.position = position
    }
}

/// - traces/scatter3d/attributes/projection/x
/// - traces/scatter3d/attributes/projection/y
/// - traces/scatter3d/attributes/projection/z
public struct X0: Encodable {
    /// Sets whether or not projections are shown along the x axis.
    public var show: Bool?

    /// Sets the projection color.
    public var opacity: Double?

    /// Sets the scale factor determining the size of the projection marker points.
    public var scale: Double?

    public init(show: Bool? = nil, opacity: Double? = nil, scale: Double? = nil) {
        self.show = show
        self.opacity = opacity
        self.scale = scale
    }
}

/// - traces/scatter3d/attributes/error_x
/// - traces/scatter3d/attributes/error_y
public struct XError1: Encodable {
    /// Determines whether or not this set of error bars is visible.
    public var visible: Bool?

    public var type: Rule3?

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

    public var zCopyStyle: Bool?

    /// Sets the stoke color of the error bars.
    public var color: Color?

    /// Sets the thickness (in px) of the error bars.
    public var thickness: Double?

    /// Sets the width (in px) of the cross-bar at both ends of the error bars.
    public var width: Double?

    public var deprecated: Deprecated3?

    /// Sets the source reference on plot.ly for  array .
    public var arraySource: String?

    /// Sets the source reference on plot.ly for  arrayminus .
    public var arrayMinusSource: String?

    public init(visible: Bool? = nil, type: Rule3? = nil, symmetric: Bool? = nil, array: [Double]? = nil, arrayMinus: [Double]? = nil, value: Double? = nil, valueMinus: Double? = nil, traceReference: Int? = nil, traceReferenceMinus: Int? = nil, zCopyStyle: Bool? = nil, color: Color? = nil, thickness: Double? = nil, width: Double? = nil, deprecated: Deprecated3? = nil, arraySource: String? = nil, arrayMinusSource: String? = nil) {
        self.visible = visible
        self.type = type
        self.symmetric = symmetric
        self.array = array
        self.arrayMinus = arrayMinus
        self.value = value
        self.valueMinus = valueMinus
        self.traceReference = traceReference
        self.traceReferenceMinus = traceReferenceMinus
        self.zCopyStyle = zCopyStyle
        self.color = color
        self.thickness = thickness
        self.width = width
        self.deprecated = deprecated
        self.arraySource = arraySource
        self.arrayMinusSource = arrayMinusSource
    }
}

/// - traces/surface/attributes/contours/x
/// - traces/surface/attributes/contours/y
/// - traces/surface/attributes/contours/z
public struct X1: Encodable {
    /// Determines whether or not contour lines about the x dimension are drawn.
    public var show: Bool?

    /// Sets the starting contour level value. 
    ///
    /// Must be less than `contours.end`
    public var start: Double?

    /// Sets the end contour level value. 
    ///
    /// Must be more than `contours.start`
    public var end: Double?

    /// Sets the step between each contour level. 
    ///
    /// Must be positive.
    public var size: Double?

    public var project: Up0?

    /// Sets the color of the contour lines.
    public var color: Color?

    /// An alternate to *color*. 
    ///
    /// Determines whether or not the contour lines are colored using the trace *colorscale*.
    public var useColormap: Bool?

    /// Sets the width of the contour lines.
    public var width: Double?

    /// Determines whether or not contour lines about the x dimension are highlighted on hover.
    public var highlight: Bool?

    /// Sets the color of the highlighted contour lines.
    public var highlightColor: Color?

    /// Sets the width of the highlighted contour lines.
    public var highlightWidth: Double?

    public init(show: Bool? = nil, start: Double? = nil, end: Double? = nil, size: Double? = nil, project: Up0? = nil, color: Color? = nil, useColormap: Bool? = nil, width: Double? = nil, highlight: Bool? = nil, highlightColor: Color? = nil, highlightWidth: Double? = nil) {
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

/// - traces/isosurface/attributes/surface
/// - traces/volume/attributes/surface
public struct Surface0: Encodable {
    /// Hides/displays surfaces between minimum and maximum iso-values.
    public var show: Bool?

    /// Sets the number of iso-surfaces between minimum and maximum iso-values. 
    ///
    /// By default this value is 2 meaning that only minimum and maximum surfaces would be drawn.
    public var count: Int?

    /// Sets the fill ratio of the iso-surface. 
    ///
    /// The default fill value of the surface is 1 meaning that they are entirely shaded. On the other
    /// hand Applying a `fill` ratio less than one would allow the creation of openings parallel to the
    /// edges.
    public var fill: Double?

    public var pattern: Pattern0?

    public init(show: Bool? = nil, count: Int? = nil, fill: Double? = nil, pattern: Pattern0? = nil) {
        self.show = show
        self.count = count
        self.fill = fill
        self.pattern = pattern
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
public struct X2: Encodable {
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

/// - traces/isosurface/attributes/contour
/// - traces/volume/attributes/contour
/// - traces/mesh3d/attributes/contour
public struct Contour0: Encodable {
    /// Sets whether or not dynamic contours are shown on hover
    public var show: Bool?

    /// Sets the color of the contour lines.
    public var color: Color?

    /// Sets the width of the contour lines.
    public var width: Double?

    public init(show: Bool? = nil, color: Color? = nil, width: Double? = nil) {
        self.show = show
        self.color = color
        self.width = width
    }
}

/// - traces/choropleth/attributes/marker
/// - traces/choroplethmapbox/attributes/marker
public struct Marker9: Encodable {
    public var line: Line6?

    /// Sets the opacity of the locations.
    public var opacity: Double?

    /// Sets the source reference on plot.ly for  opacity .
    public var opacitySource: String?

    public init(line: Line6? = nil, opacity: Double? = nil, opacitySource: String? = nil) {
        self.line = line
        self.opacity = opacity
        self.opacitySource = opacitySource
    }
}

/// - traces/scattergl/attributes/line
/// - traces/scatterpolargl/attributes/line
public struct Line7: Encodable {
    /// Sets the line color.
    public var color: Color?

    /// Sets the line width (in px).
    public var width: Double?

    public var shape: Shape1?

    public var dash: Dash0?

    public init(color: Color? = nil, width: Double? = nil, shape: Shape1? = nil, dash: Dash0? = nil) {
        self.color = color
        self.width = width
        self.shape = shape
        self.dash = dash
    }
}

/// - traces/scattergl/attributes/marker/line
/// - traces/splom/attributes/marker/line
/// - traces/scatterpolargl/attributes/marker/line
public struct Line8: Encodable {
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

    /// Sets the width (in px) of the lines bounding the marker points.
    public var width: Double?

    /// Sets the source reference on plot.ly for  color .
    public var colorSource: String?

    /// Sets the source reference on plot.ly for  width .
    public var widthSource: String?

    public init(color: Color? = nil, cAuto: Bool? = nil, cMin: Double? = nil, cMax: Double? = nil, cMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, colorAxis: SubPlotID? = nil, width: Double? = nil, colorSource: String? = nil, widthSource: String? = nil) {
        self.color = color
        self.cAuto = cAuto
        self.cMin = cMin
        self.cMax = cMax
        self.cMiddle = cMiddle
        self.colorScale = colorScale
        self.autoColorScale = autoColorScale
        self.reverseScale = reverseScale
        self.colorAxis = colorAxis
        self.width = width
        self.colorSource = colorSource
        self.widthSource = widthSource
    }
}

/// - traces/scattergl/attributes/marker
/// - traces/splom/attributes/marker
/// - traces/scatterpolargl/attributes/marker
public struct Marker10: Encodable {
    /// Sets themarkercolor. 
    ///
    /// It accepts either a specific color or an array of numbers that are mapped to the colorscale
    /// relative to the max and min values of the array or relative to `marker.cmin` and `marker.cmax`
    /// if set.
    public var color: Color?

    /// Determines whether or not the color domain is computed with respect to the input data (here in `marker.color`) or the bounds set in `marker.cmin` and `marker.cmax`  Has an effect only if in `marker.color`is set to a numerical array. 
    ///
    /// Defaults to `false` when `marker.cmin` and `marker.cmax` are set by the user.
    public var cAuto: Bool?

    /// Sets the lower bound of the color domain. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
    /// units as in `marker.color` and if set, `marker.cmax` must be set as well.
    public var cMin: Double?

    /// Sets the upper bound of the color domain. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
    /// units as in `marker.color` and if set, `marker.cmin` must be set as well.
    public var cMax: Double?

    /// Sets the mid-point of the color domain by scaling `marker.cmin` and/or `marker.cmax` to be equidistant to this point. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
    /// units as in `marker.color`. Has no effect when `marker.cauto` is `false`.
    public var cMiddle: Double?

    /// Sets the colorscale. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array. The colorscale must be an
    /// array containing arrays mapping a normalized value to an rgb, rgba, hex, hsl, hsv, or named
    /// color string. At minimum, a mapping for the lowest (0) and highest (1) values are required. For
    /// example, `[[0, 'rgb(0,0,255)'], [1, 'rgb(255,0,0)']]`. To control the bounds of the colorscale
    /// in color space, use`marker.cmin` and `marker.cmax`. Alternatively, `colorscale` may be a palette
    /// name string of the following list:
    /// Greys,YlGnBu,Greens,YlOrRd,Bluered,RdBu,Reds,Blues,Picnic,Rainbow,Portland,Jet,Hot,Blackbody,Earth,Electric,Viridis,Cividis.
    public var colorScale: ColorScale?

    /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette determined by `marker.colorscale`. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array. In case `colorscale` is
    /// unspecified or `autocolorscale` is true, the default palette will be chosen according to whether
    /// numbers in the `color` array are all positive, all negative or mixed.
    public var autoColorScale: Bool?

    /// Reverses the color mapping if true. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array. If true, `marker.cmin` will
    /// correspond to the last color in the array and `marker.cmax` will correspond to the first color.
    public var reverseScale: Bool?

    /// Determines whether or not a colorbar is displayed for this trace. 
    ///
    /// Has an effect only if in `marker.color`is set to a numerical array.
    public var showScale: Bool?

    public var colorBar: ColorBar0?

    /// Sets a reference to a shared color axis. 
    ///
    /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
    /// for these shared color axes are set in the layout, under `layout.coloraxis`,
    /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
    public var colorAxis: SubPlotID?

    public var symbol: Symbol0?

    /// Sets the marker size (in px).
    public var size: Double?

    /// Has an effect only if `marker.size` is set to a numerical array. 
    ///
    /// Sets the scale factor used to determine the rendered size of marker points. Use with `sizemin`
    /// and `sizemode`.
    public var sizeReference: Double?

    /// Has an effect only if `marker.size` is set to a numerical array. 
    ///
    /// Sets the minimum size (in px) of the rendered marker points.
    public var sizeMin: Double?

    public var sizeMode: SizeMode0?

    /// Sets the marker opacity.
    public var opacity: Double?

    public var line: Line8?

    /// Sets the source reference on plot.ly for  color .
    public var colorSource: String?

    /// Sets the source reference on plot.ly for  symbol .
    public var symbolSource: String?

    /// Sets the source reference on plot.ly for  size .
    public var sizeSource: String?

    /// Sets the source reference on plot.ly for  opacity .
    public var opacitySource: String?

    public init(color: Color? = nil, cAuto: Bool? = nil, cMin: Double? = nil, cMax: Double? = nil, cMiddle: Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? = nil, showScale: Bool? = nil, colorBar: ColorBar0? = nil, colorAxis: SubPlotID? = nil, symbol: Symbol0? = nil, size: Double? = nil, sizeReference: Double? = nil, sizeMin: Double? = nil, sizeMode: SizeMode0? = nil, opacity: Double? = nil, line: Line8? = nil, colorSource: String? = nil, symbolSource: String? = nil, sizeSource: String? = nil, opacitySource: String? = nil) {
        self.color = color
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
        self.symbol = symbol
        self.size = size
        self.sizeReference = sizeReference
        self.sizeMin = sizeMin
        self.sizeMode = sizeMode
        self.opacity = opacity
        self.line = line
        self.colorSource = colorSource
        self.symbolSource = symbolSource
        self.sizeSource = sizeSource
        self.opacitySource = opacitySource
    }
}

/// - traces/splom/attributes/dimensions/items
/// - traces/parcoords/attributes/dimensions/items
/// - traces/parcats/attributes/dimensions/items
public struct Items5: Encodable {
    /// - traces/splom/attributes/dimensions/items/dimension
    public struct Dimension: Encodable {
        /// Determines whether or not this dimension is shown on the graph. 
        ///
        /// Note that even visible false dimension contribute to the default grid generate by this splom
        /// trace.
        public var visible: Bool?
    
        /// Sets the label corresponding to this splom dimension.
        public var label: String?
    
        /// Sets the dimension values to be plotted.
        public var values: [Double]?
    
        /// - traces/splom/attributes/dimensions/items/dimension/axis
        public struct Axis: Encodable {
            /// Sets the axis type for this dimension's generated x and y axes. 
            ///
            /// Note that the axis `type` values set in layout take precedence over this attribute.
            /// - traces/splom/attributes/dimensions/items/dimension/axis/type
            public enum Rule: String, Encodable {
                case linear
                case log
                case date
                case category
            }
            public var type: Rule?
        
            /// Determines whether or not the x & y axes generated by this dimension match. 
            ///
            /// Equivalent to setting the `matches` axis attribute in the layout with the correct axis id.
            public var matches: Bool?
        
            public init(type: Rule? = nil, matches: Bool? = nil) {
                self.type = type
                self.matches = matches
            }
        }
        public var axis: Axis?
    
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
    
        /// Sets the source reference on plot.ly for  values .
        public var valuesSource: String?
    
        public init(visible: Bool? = nil, label: String? = nil, values: [Double]? = nil, axis: Axis? = nil, name: String? = nil, templateItemName: String? = nil, valuesSource: String? = nil) {
            self.visible = visible
            self.label = label
            self.values = values
            self.axis = axis
            self.name = name
            self.templateItemName = templateItemName
            self.valuesSource = valuesSource
        }
    }
    public var dimension: Dimension?

    public init(dimension: Dimension? = nil) {
        self.dimension = dimension
    }
}

/// - traces/indicator/attributes/delta/increasing
/// - traces/indicator/attributes/delta/decreasing
public struct Increasing0: Encodable {
    /// Sets the symbol to display for increasing value
    public var symbol: String?

    /// Sets the color for increasing value.
    public var color: Color?

    public init(symbol: String? = nil, color: Color? = nil) {
        self.symbol = symbol
        self.color = color
    }
}

/// - traces/table/attributes/header/line
/// - traces/table/attributes/cells/line
public struct Line9: Encodable {
    public var width: Double?

    public var color: Color?

    /// Sets the source reference on plot.ly for  width .
    public var widthSource: String?

    /// Sets the source reference on plot.ly for  color .
    public var colorSource: String?

    public init(width: Double? = nil, color: Color? = nil, widthSource: String? = nil, colorSource: String? = nil) {
        self.width = width
        self.color = color
        self.widthSource = widthSource
        self.colorSource = colorSource
    }
}

/// - traces/table/attributes/header
/// - traces/table/attributes/cells
public struct Header0: Encodable {
    /// Header cell values. 
    ///
    /// `values[m][n]` represents the value of the `n`th point in column `m`, therefore the `values[m]`
    /// vector length for all columns must be the same (longer vectors will be truncated). Each value
    /// must be a finite number or a string.
    public var values: [Double]?

    /// Sets the cell value formatting rule using d3 formatting mini-language which is similar to those of Python. 
    ///
    /// See https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
    public var format: [Double]?

    /// Prefix for cell values.
    public var prefix: String?

    /// Suffix for cell values.
    public var suffix: String?

    /// The height of cells.
    public var height: Double?

    public var align: Align1?

    public var line: Line9?

    public var fill: Marker5?

    public var font: Font1?

    /// Sets the source reference on plot.ly for  values .
    public var valuesSource: String?

    /// Sets the source reference on plot.ly for  format .
    public var formatSource: String?

    /// Sets the source reference on plot.ly for  prefix .
    public var prefixSource: String?

    /// Sets the source reference on plot.ly for  suffix .
    public var suffixSource: String?

    /// Sets the source reference on plot.ly for  align .
    public var alignSource: String?

    public init(values: [Double]? = nil, format: [Double]? = nil, prefix: String? = nil, suffix: String? = nil, height: Double? = nil, align: Align1? = nil, line: Line9? = nil, fill: Marker5? = nil, font: Font1? = nil, valuesSource: String? = nil, formatSource: String? = nil, prefixSource: String? = nil, suffixSource: String? = nil, alignSource: String? = nil) {
        self.values = values
        self.format = format
        self.prefix = prefix
        self.suffix = suffix
        self.height = height
        self.align = align
        self.line = line
        self.fill = fill
        self.font = font
        self.valuesSource = valuesSource
        self.formatSource = formatSource
        self.prefixSource = prefixSource
        self.suffixSource = suffixSource
        self.alignSource = alignSource
    }
}

/// - traces/carpet/attributes/aaxis/title
/// - traces/carpet/attributes/baxis/title
public struct Title4: Encodable {
    /// Sets the title of this axis. 
    ///
    /// Note that before the existence of `title.text`, the title's contents used to be defined as the
    /// `title` attribute itself. This behavior has been deprecated.
    public var text: String?

    public var font: Font0?

    /// An additional amount by which to offset the title from the tick labels, given in pixels. 
    ///
    /// Note that this used to be set by the now deprecated `titleoffset` attribute.
    public var offset: Double?

    public init(text: String? = nil, font: Font0? = nil, offset: Double? = nil) {
        self.text = text
        self.font = font
        self.offset = offset
    }
}

/// - traces/carpet/attributes/aaxis/_deprecated
/// - traces/carpet/attributes/baxis/_deprecated
public struct Deprecated5: Encodable {
    /// Deprecated in favor of `title.text`. 
    ///
    /// Note that value of `title` is no longer a simple *string* but a set of sub-attributes.
    public var title: String?

    public var titleFont: Font0?

    /// Deprecated in favor of `title.offset`.
    public var titleOffset: Double?

    public init(title: String? = nil, titleFont: Font0? = nil, titleOffset: Double? = nil) {
        self.title = title
        self.titleFont = titleFont
        self.titleOffset = titleOffset
    }
}

/// - traces/carpet/attributes/aaxis
/// - traces/carpet/attributes/baxis
public struct AAxis1: Encodable {
    /// Sets default for all colors associated with this axis all at once: line, font, tick, and grid colors. 
    ///
    /// Grid color is lightened by blending this with the plot background Individual pieces can override
    /// this.
    public var color: Color?

    public var smoothing: Double?

    public var title: Title4?

    public var type: Rule5?

    public var autoRange: AutoRange0?

    public var rangeMode: RangeMode0?

    /// Sets the range of this axis. 
    ///
    /// If the axis `type` is *log*, then you must take the log of your desired range (e.g. to set the
    /// range from 1 to 100, set the range from 0 to 2). If the axis `type` is *date*, it should be date
    /// strings, like date data, though Date objects and unix milliseconds will be accepted and
    /// converted to strings. If the axis `type` is *category*, it should be numbers, using the scale
    /// where each category is assigned a serial number from zero in the order it appears.
    public var range: InfoArray?

    /// Determines whether or not this axis is zoom-able. 
    ///
    /// If true, then zoom is disabled.
    public var fixedRange: Bool?

    public var cheaterType: CheaterType0?

    public var tickMode: TickMode1?

    /// Specifies the maximum number of ticks for the particular axis. 
    ///
    /// The actual number of ticks will be chosen automatically to be less than or equal to `nticks`.
    /// Has an effect only if `tickmode` is set to *auto*.
    public var numTicks: Int?

    /// Sets the values at which ticks on this axis appear. 
    ///
    /// Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
    public var tickValues: [Double]?

    /// Sets the text displayed at the ticks position via `tickvals`. 
    ///
    /// Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
    public var tickText: [Double]?

    public var showTickLabels: ShowTickLabels0?

    public var tickFont: Font0?

    /// Sets the angle of the tick labels with respect to the horizontal. 
    ///
    /// For example, a `tickangle` of -90 draws the tick labels vertically.
    public var tickAngle: Angle?

    /// Sets a tick label prefix.
    public var tickPrefix: String?

    public var showTickPrefix: ShowTickPrefix0?

    /// Sets a tick label suffix.
    public var tickSuffix: String?

    public var showTickSuffix: ShowTickPrefix0?

    public var showExponent: ShowTickPrefix0?

    public var exponentFormat: ExponentFormat0?

    /// If "true", even 4-digit integers are separated
    public var separatethousands: Bool?

    /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to those in Python. 
    ///
    /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
    /// And for dates see: We add one item to d3's date formatter: *%{n}f* for fractional seconds with n
    /// digits. For example, *2016-10-13 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display
    /// *09~15~23.46*
    public var tickFormat: String?

    public var tickFormatStops: TickFormatStops0?

    public var categoryOrder: CategoryOrder1?

    /// Sets the order in which categories on this axis appear. 
    ///
    /// Only has an effect if `categoryorder` is set to *array*. Used with `categoryorder`.
    public var categoryArray: [Double]?

    /// Extra padding between label and the axis
    public var labelPadding: Int?

    /// Sets a axis label prefix.
    public var labelPrefix: String?

    /// Sets a axis label suffix.
    public var labelSuffix: String?

    /// Determines whether or not a line bounding this axis is drawn.
    public var showLine: Bool?

    /// Sets the axis line color.
    public var lineColor: Color?

    /// Sets the width (in px) of the axis line.
    public var lineWidth: Double?

    /// Sets the axis line color.
    public var gridColor: Color?

    /// Sets the width (in px) of the axis line.
    public var gridWidth: Double?

    /// Determines whether or not grid lines are drawn. 
    ///
    /// If *true*, the grid lines are drawn at every tick mark.
    public var showGrid: Bool?

    /// Sets the number of minor grid ticks per major grid tick
    public var minorGridCount: Int?

    /// Sets the width (in px) of the grid lines.
    public var minorGridWidth: Double?

    /// Sets the color of the grid lines.
    public var minorGridColor: Color?

    /// Determines whether or not a line is drawn at along the starting value of this axis. 
    ///
    /// If *true*, the start line is drawn on top of the grid lines.
    public var startLine: Bool?

    /// Sets the line color of the start line.
    public var startLineColor: Color?

    /// Sets the width (in px) of the start line.
    public var startLineWidth: Double?

    /// Determines whether or not a line is drawn at along the final value of this axis. 
    ///
    /// If *true*, the end line is drawn on top of the grid lines.
    public var endLine: Bool?

    /// Sets the width (in px) of the end line.
    public var endLineWidth: Double?

    /// Sets the line color of the end line.
    public var endLineColor: Color?

    /// The starting index of grid lines along the axis
    public var tick0: Double?

    /// The stride between grid lines along the axis
    public var dTick: Double?

    /// The starting index of grid lines along the axis
    public var arrayTick0: Int?

    /// The stride between grid lines along the axis
    public var arraydTick: Int?

    public var deprecated: Deprecated5?

    /// Sets the source reference on plot.ly for  tickvals .
    public var tickValuesSource: String?

    /// Sets the source reference on plot.ly for  ticktext .
    public var tickTextSource: String?

    /// Sets the source reference on plot.ly for  categoryarray .
    public var categoryArraySource: String?

    public init(color: Color? = nil, smoothing: Double? = nil, title: Title4? = nil, type: Rule5? = nil, autoRange: AutoRange0? = nil, rangeMode: RangeMode0? = nil, range: InfoArray? = nil, fixedRange: Bool? = nil, cheaterType: CheaterType0? = nil, tickMode: TickMode1? = nil, numTicks: Int? = nil, tickValues: [Double]? = nil, tickText: [Double]? = nil, showTickLabels: ShowTickLabels0? = nil, tickFont: Font0? = nil, tickAngle: Angle? = nil, tickPrefix: String? = nil, showTickPrefix: ShowTickPrefix0? = nil, tickSuffix: String? = nil, showTickSuffix: ShowTickPrefix0? = nil, showExponent: ShowTickPrefix0? = nil, exponentFormat: ExponentFormat0? = nil, separatethousands: Bool? = nil, tickFormat: String? = nil, tickFormatStops: TickFormatStops0? = nil, categoryOrder: CategoryOrder1? = nil, categoryArray: [Double]? = nil, labelPadding: Int? = nil, labelPrefix: String? = nil, labelSuffix: String? = nil, showLine: Bool? = nil, lineColor: Color? = nil, lineWidth: Double? = nil, gridColor: Color? = nil, gridWidth: Double? = nil, showGrid: Bool? = nil, minorGridCount: Int? = nil, minorGridWidth: Double? = nil, minorGridColor: Color? = nil, startLine: Bool? = nil, startLineColor: Color? = nil, startLineWidth: Double? = nil, endLine: Bool? = nil, endLineWidth: Double? = nil, endLineColor: Color? = nil, tick0: Double? = nil, dTick: Double? = nil, arrayTick0: Int? = nil, arraydTick: Int? = nil, deprecated: Deprecated5? = nil, tickValuesSource: String? = nil, tickTextSource: String? = nil, categoryArraySource: String? = nil) {
        self.color = color
        self.smoothing = smoothing
        self.title = title
        self.type = type
        self.autoRange = autoRange
        self.rangeMode = rangeMode
        self.range = range
        self.fixedRange = fixedRange
        self.cheaterType = cheaterType
        self.tickMode = tickMode
        self.numTicks = numTicks
        self.tickValues = tickValues
        self.tickText = tickText
        self.showTickLabels = showTickLabels
        self.tickFont = tickFont
        self.tickAngle = tickAngle
        self.tickPrefix = tickPrefix
        self.showTickPrefix = showTickPrefix
        self.tickSuffix = tickSuffix
        self.showTickSuffix = showTickSuffix
        self.showExponent = showExponent
        self.exponentFormat = exponentFormat
        self.separatethousands = separatethousands
        self.tickFormat = tickFormat
        self.tickFormatStops = tickFormatStops
        self.categoryOrder = categoryOrder
        self.categoryArray = categoryArray
        self.labelPadding = labelPadding
        self.labelPrefix = labelPrefix
        self.labelSuffix = labelSuffix
        self.showLine = showLine
        self.lineColor = lineColor
        self.lineWidth = lineWidth
        self.gridColor = gridColor
        self.gridWidth = gridWidth
        self.showGrid = showGrid
        self.minorGridCount = minorGridCount
        self.minorGridWidth = minorGridWidth
        self.minorGridColor = minorGridColor
        self.startLine = startLine
        self.startLineColor = startLineColor
        self.startLineWidth = startLineWidth
        self.endLine = endLine
        self.endLineWidth = endLineWidth
        self.endLineColor = endLineColor
        self.tick0 = tick0
        self.dTick = dTick
        self.arrayTick0 = arrayTick0
        self.arraydTick = arraydTick
        self.deprecated = deprecated
        self.tickValuesSource = tickValuesSource
        self.tickTextSource = tickTextSource
        self.categoryArraySource = categoryArraySource
    }
}

/// - traces/ohlc/attributes/increasing
/// - traces/ohlc/attributes/decreasing
public struct Increasing1: Encodable {
    public var line: Line0?

    public init(line: Line0? = nil) {
        self.line = line
    }
}

/// - traces/ohlc/attributes/hoverlabel
/// - traces/candlestick/attributes/hoverlabel
public struct HoverLabel2: Encodable {
    /// Sets the background color of the hover labels for this trace
    public var backgroundColor: Color?

    /// Sets the border color of the hover labels for this trace.
    public var borderColor: Color?

    public var font: Font1?

    public var align: Align0?

    /// Sets the default length (in number of characters) of the trace name in the hover labels for all traces. 
    ///
    /// -1 shows the whole name regardless of length. 0-3 shows the first 0-3 characters, and an integer
    /// >3 will show the whole name if it is less than that many characters, but if it is longer, will
    /// truncate to `namelength - 3` characters and add an ellipsis.
    public var nameLength: Int?

    /// Show hover information (open, close, high, low) in separate labels.
    public var split: Bool?

    /// Sets the source reference on plot.ly for  bgcolor .
    public var backgroundColorSource: String?

    /// Sets the source reference on plot.ly for  bordercolor .
    public var borderColorSource: String?

    /// Sets the source reference on plot.ly for  align .
    public var alignSource: String?

    /// Sets the source reference on plot.ly for  namelength .
    public var nameLengthSource: String?

    public init(backgroundColor: Color? = nil, borderColor: Color? = nil, font: Font1? = nil, align: Align0? = nil, nameLength: Int? = nil, split: Bool? = nil, backgroundColorSource: String? = nil, borderColorSource: String? = nil, alignSource: String? = nil, nameLengthSource: String? = nil) {
        self.backgroundColor = backgroundColor
        self.borderColor = borderColor
        self.font = font
        self.align = align
        self.nameLength = nameLength
        self.split = split
        self.backgroundColorSource = backgroundColorSource
        self.borderColorSource = borderColorSource
        self.alignSource = alignSource
        self.nameLengthSource = nameLengthSource
    }
}

/// - traces/candlestick/attributes/increasing
/// - traces/candlestick/attributes/decreasing
public struct Increasing2: Encodable {
    public var line: Line3?

    /// Sets the fill color. 
    ///
    /// Defaults to a half-transparent variant of the line color, marker color, or marker line color,
    /// whichever is available.
    public var fillColor: Color?

    public init(line: Line3? = nil, fillColor: Color? = nil) {
        self.line = line
        self.fillColor = fillColor
    }
}
