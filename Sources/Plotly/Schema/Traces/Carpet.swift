/// The data describing carpet axis layout is set in `y` and (optionally) also `x`. 
///
/// If only `y` is present, `x` the plot is interpreted as a cheater plot and is filled in using the
/// `y` values. `x` and `y` may either be 2D arrays matching with each dimension matching that of
/// `a` and `b`, or they may be 1D arrays with total length equal to that of `a` and `b`.
public struct Carpet: Trace {
    public let type: String = "carpet"

    public let animatable: Bool = true

    public var visible: Visible0?

    /// Sets the opacity of the trace.
    public var opacity: Double?

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

    /// An identifier for this carpet, so that `scattercarpet` and `contourcarpet` traces can specify a carpet plot on which they lie
    public var carpet: String?

    /// A two dimensional array of x coordinates at each carpet point. 
    ///
    /// If ommitted, the plot is a cheater plot and the xaxis is hidden by default.
    public var x: [Double]?

    /// A two dimensional array of y coordinates at each carpet point.
    public var y: [Double]?

    /// An array containing values of the first parameter value
    public var a: [Double]?

    /// Alternate to `a`. 
    ///
    /// Builds a linear space of a coordinates. Use with `da` where `a0` is the starting coordinate and
    /// `da` the step.
    public var a0: Double?

    /// Sets the a coordinate step. 
    ///
    /// See `a0` for more info.
    public var da: Double?

    /// A two dimensional array of y coordinates at each carpet point.
    public var b: [Double]?

    /// Alternate to `b`. 
    ///
    /// Builds a linear space of a coordinates. Use with `db` where `b0` is the starting coordinate and
    /// `db` the step.
    public var b0: Double?

    /// Sets the b coordinate step. 
    ///
    /// See `b0` for more info.
    public var db: Double?

    /// The shift applied to each successive row of data in creating a cheater plot. 
    ///
    /// Only used if `x` is been ommitted.
    public var cheaterSlope: Double?

    public var aAxis: AAxis1?

    public var bAxis: AAxis1?

    public var font: Font0?

    /// Sets default for all colors associated with this axis all at once: line, font, tick, and grid colors. 
    ///
    /// Grid color is lightened by blending this with the plot background Individual pieces can override
    /// this.
    public var color: Color?

    /// Sets a reference between this trace's x coordinates and a 2D cartesian x axis. 
    ///
    /// If *x* (the default value), the x coordinates refer to `layout.xaxis`. If *x2*, the x
    /// coordinates refer to `layout.xaxis2`, and so on.
    public var xAxis: SubPlotID?

    /// Sets a reference between this trace's y coordinates and a 2D cartesian y axis. 
    ///
    /// If *y* (the default value), the y coordinates refer to `layout.yaxis`. If *y2*, the y
    /// coordinates refer to `layout.yaxis2`, and so on.
    public var yAxis: SubPlotID?

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

    /// Sets the source reference on plot.ly for  a .
    public var aSource: String?

    /// Sets the source reference on plot.ly for  b .
    public var bSource: String?

    /// Plotly compatible property encoding
    enum CodingKeys: String, CodingKey {
        case type
        case animatable
        case visible
        case opacity
        case name
        case uid
        case ids
        case customData = "customdata"
        case meta
        case stream
        case uiRevision = "uirevision"
        case carpet
        case x
        case y
        case a
        case a0
        case da
        case b
        case b0
        case db
        case cheaterSlope = "cheaterslope"
        case aAxis = "aaxis"
        case bAxis = "baxis"
        case font
        case color
        case xAxis = "xaxis"
        case yAxis = "yaxis"
        case idsSource = "idssrc"
        case customDataSource = "customdatasrc"
        case metaSource = "metasrc"
        case xSource = "xsrc"
        case ySource = "ysrc"
        case aSource = "asrc"
        case bSource = "bsrc"
    }
    
    public init(visible: Visible0? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, stream: Stream0? = nil, uiRevision: Anything? = nil, carpet: String? = nil, x: [Double]? = nil, y: [Double]? = nil, a: [Double]? = nil, a0: Double? = nil, da: Double? = nil, b: [Double]? = nil, b0: Double? = nil, db: Double? = nil, cheaterSlope: Double? = nil, aAxis: AAxis1? = nil, bAxis: AAxis1? = nil, font: Font0? = nil, color: Color? = nil, xAxis: SubPlotID? = nil, yAxis: SubPlotID? = nil, idsSource: String? = nil, customDataSource: String? = nil, metaSource: String? = nil, xSource: String? = nil, ySource: String? = nil, aSource: String? = nil, bSource: String? = nil) {
        self.visible = visible
        self.opacity = opacity
        self.name = name
        self.uid = uid
        self.ids = ids
        self.customData = customData
        self.meta = meta
        self.stream = stream
        self.uiRevision = uiRevision
        self.carpet = carpet
        self.x = x
        self.y = y
        self.a = a
        self.a0 = a0
        self.da = da
        self.b = b
        self.b0 = b0
        self.db = db
        self.cheaterSlope = cheaterSlope
        self.aAxis = aAxis
        self.bAxis = bAxis
        self.font = font
        self.color = color
        self.xAxis = xAxis
        self.yAxis = yAxis
        self.idsSource = idsSource
        self.customDataSource = customDataSource
        self.metaSource = metaSource
        self.xSource = xSource
        self.ySource = ySource
        self.aSource = aSource
        self.bSource = bSource
    }
}