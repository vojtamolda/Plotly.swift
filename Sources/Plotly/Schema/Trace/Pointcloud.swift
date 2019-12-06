/// The data visualized as a point cloud set in `x` and `y` using the WebGl plotting engine.
public struct Pointcloud: Trace {
    public let type: String = "pointcloud"

    public let animatable: Bool = false

    /// Determines whether or not this trace is visible. If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the legend itself is visible).
    public enum Visible: String, Encodable {
        case yes
        case no
        case legendonly
    }
    /// Determines whether or not this trace is visible. If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the legend itself is visible).
    public var visible: Visible?

    /// Determines whether or not an item corresponding to this trace is shown in the legend.
    public var showlegend: Bool?

    /// Sets the legend group for this trace. Traces part of the same legend group hide/show at the same time when toggling legend items.
    public var legendgroup: String?

    /// Sets the opacity of the trace.
    public var opacity: Double?

    /// Sets the trace name. The trace name appear as the legend item and on hover.
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    public var uid: String?

    /// Assigns id labels to each datum. These ids for object constancy of data points during animation. Should be an array of strings, not numbers or any other type.
    public var ids: [Double]?

    /// Assigns extra data each datum. This may be useful when listening to hover, click and selection events. Note that, *scatter* traces also appends customdata items in the markers DOM elements
    public var customdata: [Double]?

    /// Assigns extra meta information associated with this trace that can be used in various text attributes. Attributes such as trace `name`, graph, axis and colorbar `title.text`, annotation `text` `rangeselector`, `updatemenues` and `sliders` `label` text all support `meta`. To access the trace `meta` values in an attribute in the same trace, simply use `%{meta[i]}` where `i` is the index or key of the `meta` item in question. To access trace `meta` in layout attributes, use `%{data[n[.meta[i]}` where `i` is the index or key of the `meta` and `n` is the trace index.
    public var meta: Anything?

    /// Determines which trace information appear on hover. If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set, click and hover events are still fired.
    public struct Hoverinfo: OptionSet, Encodable {
        public let rawValue: Int
    
        public static let x = Hoverinfo(rawValue: 1 << 0)
        public static let y = Hoverinfo(rawValue: 1 << 1)
        public static let z = Hoverinfo(rawValue: 1 << 2)
        public static let text = Hoverinfo(rawValue: 1 << 3)
        public static let name = Hoverinfo(rawValue: 1 << 4)
    
        public init(rawValue: Int) { self.rawValue = rawValue }
    
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["x"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["y"] }
            if (self.rawValue & 1 << 2) != 0 { options += ["z"] }
            if (self.rawValue & 1 << 3) != 0 { options += ["text"] }
            if (self.rawValue & 1 << 4) != 0 { options += ["name"] }
            var container = encoder.singleValueContainer()
            try container.encode(options.joined(separator: "+"))
        }
    }
    /// Determines which trace information appear on hover. If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set, click and hover events are still fired.
    public var hoverinfo: Hoverinfo?

    public struct Hoverlabel: Encodable {
        /// Sets the background color of the hover labels for this trace
        public var bgcolor: Color?
    
        /// Sets the border color of the hover labels for this trace.
        public var bordercolor: Color?
    
        /// Sets the font used in hover labels.
        public struct Font: Encodable {
            /// HTML font family - the typeface that will be applied by the web browser. The web browser will only be able to apply a font if it is available on the system which it operates. Provide multiple font families, separated by commas, to indicate the preference in which to apply fonts if they aren't available on the system. The plotly service (at https://plot.ly or on-premise) generates images on a server, where only a select number of fonts are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,, *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*, *PT Sans Narrow*, *Raleway*, *Times New Roman*.
            public var family: String?
        
            public var size: Double?
        
            public var color: Color?
        
            /// Sets the source reference on plot.ly for  family .
            public var familysrc: String?
        
            /// Sets the source reference on plot.ly for  size .
            public var sizesrc: String?
        
            /// Sets the source reference on plot.ly for  color .
            public var colorsrc: String?
        
            public init(family: String? = nil, size: Double? = nil, color: Color? = nil, familysrc: String? = nil, sizesrc: String? = nil, colorsrc: String? = nil) {
                self.family = family
                self.size = size
                self.color = color
                self.familysrc = familysrc
                self.sizesrc = sizesrc
                self.colorsrc = colorsrc
            }
        }
        /// Sets the font used in hover labels.
        public var font: Font?
    
        /// Sets the horizontal alignment of the text content within hover label box. Has an effect only if the hover label text spans more two or more lines
        public enum Align: String, Encodable {
            case left
            case right
            case auto
        }
        /// Sets the horizontal alignment of the text content within hover label box. Has an effect only if the hover label text spans more two or more lines
        public var align: Align?
    
        /// Sets the default length (in number of characters) of the trace name in the hover labels for all traces. -1 shows the whole name regardless of length. 0-3 shows the first 0-3 characters, and an integer >3 will show the whole name if it is less than that many characters, but if it is longer, will truncate to `namelength - 3` characters and add an ellipsis.
        public var namelength: Int?
    
        /// Sets the source reference on plot.ly for  bgcolor .
        public var bgcolorsrc: String?
    
        /// Sets the source reference on plot.ly for  bordercolor .
        public var bordercolorsrc: String?
    
        /// Sets the source reference on plot.ly for  align .
        public var alignsrc: String?
    
        /// Sets the source reference on plot.ly for  namelength .
        public var namelengthsrc: String?
    
        public init(bgcolor: Color? = nil, bordercolor: Color? = nil, font: Font? = nil, align: Align? = nil, namelength: Int? = nil, bgcolorsrc: String? = nil, bordercolorsrc: String? = nil, alignsrc: String? = nil, namelengthsrc: String? = nil) {
            self.bgcolor = bgcolor
            self.bordercolor = bordercolor
            self.font = font
            self.align = align
            self.namelength = namelength
            self.bgcolorsrc = bgcolorsrc
            self.bordercolorsrc = bordercolorsrc
            self.alignsrc = alignsrc
            self.namelengthsrc = namelengthsrc
        }
    }
    public var hoverlabel: Hoverlabel?

    public struct Stream: Encodable {
        /// The stream id number links a data trace on a plot with a stream. See https://plot.ly/settings for more details.
        public var token: String?
    
        /// Sets the maximum number of points to keep on the plots from an incoming stream. If `maxpoints` is set to *50*, only the newest 50 points will be displayed on the plot.
        public var maxpoints: Double?
    
        public init(token: String? = nil, maxpoints: Double? = nil) {
            self.token = token
            self.maxpoints = maxpoints
        }
    }
    public var stream: Stream?

    /// Controls persistence of some user-driven changes to the trace: `constraintrange` in `parcoords` traces, as well as some `editable: true` modifications such as `name` and `colorbar.title`. Defaults to `layout.uirevision`. Note that other user-driven trace attribute changes are controlled by `layout` attributes: `trace.visible` is controlled by `layout.legend.uirevision`, `selectedpoints` is controlled by `layout.selectionrevision`, and `colorbar.(x|y)` (accessible with `config: {editable: true}`) is controlled by `layout.editrevision`. Trace changes are tracked by `uid`, which only falls back on trace index if no `uid` is provided. So if your app can add/remove traces before the end of the `data` array, such that the same trace has a different index, you can still preserve user-driven changes if you give each trace a `uid` that stays with it as it moves.
    public var uirevision: Anything?

    /// Sets the x coordinates.
    public var x: [Double]?

    /// Sets the y coordinates.
    public var y: [Double]?

    /// Faster alternative to specifying `x` and `y` separately. If supplied, it must be a typed `Float32Array` array that represents points such that `xy[i * 2] = x[i]` and `xy[i * 2 + 1] = y[i]`
    public var xy: [Double]?

    /// A sequential value, 0..n, supply it to avoid creating this array inside plotting. If specified, it must be a typed `Int32Array` array. Its length must be equal to or greater than the number of points. For the best performance and memory use, create one large `indices` typed array that is guaranteed to be at least as long as the largest number of points during use, and reuse it on each `Plotly.restyle()` call.
    public var indices: [Double]?

    /// Specify `xbounds` in the shape of `[xMin, xMax] to avoid looping through the `xy` typed array. Use it in conjunction with `xy` and `ybounds` for the performance benefits.
    public var xbounds: [Double]?

    /// Specify `ybounds` in the shape of `[yMin, yMax] to avoid looping through the `xy` typed array. Use it in conjunction with `xy` and `xbounds` for the performance benefits.
    public var ybounds: [Double]?

    /// Sets text elements associated with each (x,y) pair. If a single string, the same string appears over all the data points. If an array of string, the items are mapped in order to the this trace's (x,y) coordinates. If trace `hoverinfo` contains a *text* flag and *hovertext* is not set, these elements will be seen in the hover labels.
    public var text: String?

    public struct Marker: Encodable {
        /// Sets the marker fill color. It accepts a specific color.If the color is not fully opaque and there are hundreds of thousandsof points, it may cause slower zooming and panning.
        public var color: Color?
    
        /// Sets the marker opacity. The default value is `1` (fully opaque). If the markers are not fully opaque and there are hundreds of thousands of points, it may cause slower zooming and panning. Opacity fades the color even if `blend` is left on `false` even if there is no translucency effect in that case.
        public var opacity: Double?
    
        /// Determines if colors are blended together for a translucency effect in case `opacity` is specified as a value less then `1`. Setting `blend` to `true` reduces zoom/pan speed if used with large numbers of points.
        public var blend: Bool?
    
        /// Sets the minimum size (in px) of the rendered marker points, effective when the `pointcloud` shows a million or more points.
        public var sizemin: Double?
    
        /// Sets the maximum size (in px) of the rendered marker points. Effective when the `pointcloud` shows only few points.
        public var sizemax: Double?
    
        public struct Border: Encodable {
            /// Sets the stroke color. It accepts a specific color. If the color is not fully opaque and there are hundreds of thousands of points, it may cause slower zooming and panning.
            public var color: Color?
        
            /// Specifies what fraction of the marker area is covered with the border.
            public var arearatio: Double?
        
            public init(color: Color? = nil, arearatio: Double? = nil) {
                self.color = color
                self.arearatio = arearatio
            }
        }
        public var border: Border?
    
        public init(color: Color? = nil, opacity: Double? = nil, blend: Bool? = nil, sizemin: Double? = nil, sizemax: Double? = nil, border: Border? = nil) {
            self.color = color
            self.opacity = opacity
            self.blend = blend
            self.sizemin = sizemin
            self.sizemax = sizemax
            self.border = border
        }
    }
    public var marker: Marker?

    /// Sets a reference between this trace's x coordinates and a 2D cartesian x axis. If *x* (the default value), the x coordinates refer to `layout.xaxis`. If *x2*, the x coordinates refer to `layout.xaxis2`, and so on.
    public var xaxis: SubplotID?

    /// Sets a reference between this trace's y coordinates and a 2D cartesian y axis. If *y* (the default value), the y coordinates refer to `layout.yaxis`. If *y2*, the y coordinates refer to `layout.yaxis2`, and so on.
    public var yaxis: SubplotID?

    /// Sets the source reference on plot.ly for  ids .
    public var idssrc: String?

    /// Sets the source reference on plot.ly for  customdata .
    public var customdatasrc: String?

    /// Sets the source reference on plot.ly for  meta .
    public var metasrc: String?

    /// Sets the source reference on plot.ly for  hoverinfo .
    public var hoverinfosrc: String?

    /// Sets the source reference on plot.ly for  x .
    public var xsrc: String?

    /// Sets the source reference on plot.ly for  y .
    public var ysrc: String?

    /// Sets the source reference on plot.ly for  xy .
    public var xysrc: String?

    /// Sets the source reference on plot.ly for  indices .
    public var indicessrc: String?

    /// Sets the source reference on plot.ly for  xbounds .
    public var xboundssrc: String?

    /// Sets the source reference on plot.ly for  ybounds .
    public var yboundssrc: String?

    /// Sets the source reference on plot.ly for  text .
    public var textsrc: String?

    public init(visible: Visible? = nil, showlegend: Bool? = nil, legendgroup: String? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customdata: [Double]? = nil, meta: Anything? = nil, hoverinfo: Hoverinfo? = nil, hoverlabel: Hoverlabel? = nil, stream: Stream? = nil, uirevision: Anything? = nil, x: [Double]? = nil, y: [Double]? = nil, xy: [Double]? = nil, indices: [Double]? = nil, xbounds: [Double]? = nil, ybounds: [Double]? = nil, text: String? = nil, marker: Marker? = nil, xaxis: SubplotID? = nil, yaxis: SubplotID? = nil, idssrc: String? = nil, customdatasrc: String? = nil, metasrc: String? = nil, hoverinfosrc: String? = nil, xsrc: String? = nil, ysrc: String? = nil, xysrc: String? = nil, indicessrc: String? = nil, xboundssrc: String? = nil, yboundssrc: String? = nil, textsrc: String? = nil) {
        self.visible = visible
        self.showlegend = showlegend
        self.legendgroup = legendgroup
        self.opacity = opacity
        self.name = name
        self.uid = uid
        self.ids = ids
        self.customdata = customdata
        self.meta = meta
        self.hoverinfo = hoverinfo
        self.hoverlabel = hoverlabel
        self.stream = stream
        self.uirevision = uirevision
        self.x = x
        self.y = y
        self.xy = xy
        self.indices = indices
        self.xbounds = xbounds
        self.ybounds = ybounds
        self.text = text
        self.marker = marker
        self.xaxis = xaxis
        self.yaxis = yaxis
        self.idssrc = idssrc
        self.customdatasrc = customdatasrc
        self.metasrc = metasrc
        self.hoverinfosrc = hoverinfosrc
        self.xsrc = xsrc
        self.ysrc = ysrc
        self.xysrc = xysrc
        self.indicessrc = indicessrc
        self.xboundssrc = xboundssrc
        self.yboundssrc = yboundssrc
        self.textsrc = textsrc
    }
}